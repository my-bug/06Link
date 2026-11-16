package com.shilapi.xcertplay;

import android.app.Presentation;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.SurfaceView;
import android.view.TextureView;
import android.widget.TextView;
import android.widget.FrameLayout;
import com.shilapi.xcertplay.airplay.AirPlayInsets;
import kotlin.Pair;

/** E01-only static material backdrop. No navigation, connection or vehicle-data ownership. */
public final class E01MapCard {
    private E01MapCard() {}

    static boolean target(int id) {
        return id == 1 && Build.VERSION.SDK_INT == 22 && "E01".equals(Build.MODEL)
            && "BX11QJ".equals(Build.DEVICE);
    }

    static double scaleFor(String style) { return E01InstrumentStyle.theme(style).layout.scale; }

    static Pair<Integer,Integer> streamSize(int width, int height) {
        return streamSizeFor(width,height,E01InstrumentStyle.selected());
    }
    static Pair<Integer,Integer> streamSizeFor(int width,int height,String style) {
        if(width<=0||height<=0||E01InstrumentStyle.fullscreen(style))return new Pair<Integer,Integer>(width,height);
        int h=Math.max(24,(int)Math.round(height*scaleFor(style)/24.0)*24);
        int w=Math.max(8,(int)Math.round(h*(double)width/height/8.0)*8);
        return new Pair<Integer,Integer>(w,h);
    }

    static int[] bounds(int width,int height){return boundsFor(width,height,E01InstrumentStyle.selected());}
    /** Single layout source for real video, preview and transition. Reference panel is 1920x720. */
    public static int[] boundsFor(int width,int height,String style) {
        if(E01InstrumentStyle.fullscreen(style))return new int[]{0,0,width,height};
        int w=Math.max(1,(int)Math.round(width*scaleFor(style)));
        int h=Math.max(1,(int)Math.round(height*scaleFor(style)));
        return new int[]{(width-w)/2,E01InstrumentStyle.isImmersive(style)?Math.round(height*174f/720f):(height-h)/2,w,h};
    }

    static AirPlayInsets safe(int width,int height){return safeFor(width,height,E01InstrumentStyle.selected());}
    /** Keep the proven whole-panel x32%..68% corridor after scaling the complete video rectangle.
     *  Full: whole-panel margins; night: 67/350; card: 5/22 of the final video.
     *  Insets are computed from the final encoded video size, never a surface translation/crop.
     */
    static AirPlayInsets safeFor(int width,int height,String style) {
        if(E01InstrumentStyle.fullscreen(style))return new AirPlayInsets((height*22+99)/100,(height*22+99)/100,(width*32+99)/100,(width*32+99)/100);
        int x=E01InstrumentStyle.isImmersive(style)?(int)((width*67L+349)/350):(int)((width*5L+21)/22);
        return new AirPlayInsets((height*20+99)/100,(height*8+99)/100,x,x);
    }

    public static void install(Presentation p, FrameLayout root, Point size) {
        if (p == null || root == null) return;
        if (!target(p.getDisplay().getDisplayId())) {
            report(p,"skipped: unsupported device="+Build.MODEL+"/"+Build.DEVICE+" api="+Build.VERSION.SDK_INT);
            return;
        }
        if (size == null || size.x <= 0 || size.y <= 0) {
            report(p,"skipped: invalid display size");
            return;
        }
        // Both Presentation implementations call here. Do not assume the generic
        // AspectFitFrame/SurfaceView pair or a particular number of sibling views.
        View content = null, renderer = null, waiting = null;
        int originalChildren = root.getChildCount();
        for (int i = 0; i < originalChildren; i++) {
            View child = root.getChildAt(i);
            if (child instanceof Bezel) return; // Exactly one backdrop/music listener per root.
            View candidate = findRenderer(child);
            if (candidate != null && content == null) { content = child; renderer = candidate; }
            if (child instanceof TextView) waiting = child;
        }
        if (content == null) {
            report(p,"skipped: video view missing children="+originalChildren);
            return;
        }
        if (renderer instanceof SurfaceView) {
            SurfaceView surface = (SurfaceView) renderer;
            // A top-most SurfaceView bypasses ordinary View draw order and hides the bezel.
            surface.setZOrderOnTop(false);
            surface.setZOrderMediaOverlay(false);
        }
        String style=E01InstrumentStyle.selected(p.getContext());
        // Explicit UI window precision; does not alter decoder surfaces or panel hardware.
        if(E01InstrumentStyle.isImmersive(style)&&p.getWindow()!=null)p.getWindow().setFormat(android.graphics.PixelFormat.RGBA_8888);
        if(!E01InstrumentStyle.fullscreen(style)){place(content,size.x,size.y,style);place(waiting,size.x,size.y,style);}
        E01MusicCard music = new E01MusicCard(p.getContext());
        music.place(size.x,size.y);
        music.setVisibility(musicEnabled(p.getContext())?View.VISIBLE:View.GONE);
        // Append above all existing video/contrast children. The map opening stays
        // transparent, so the waiting label remains visible inside the same bounds.
        root.addView(new Bezel(p.getContext(), content, waiting, music),
            new FrameLayout.LayoutParams(-1, -1));
        root.addView(music, music.getLayoutParams());
        report(p,"installed style="+style+" size="+size.x+"x"+size.y+" music="+musicEnabled(p.getContext())
            +" renderer="+renderer.getClass().getSimpleName()+" container="+content.getClass().getSimpleName()+" children="+originalChildren);
    }

    // Installation-only summary: never runs on frame delivery or navigation updates.
    private static void report(Presentation p,String result) {
        E01ClusterMode.displayConfigured("instrument layout "+p.getClass().getSimpleName()
            +" display="+p.getDisplay().getDisplayId()+" "+result);
    }

    private static View findRenderer(View view) {
        if (view instanceof SurfaceView || view instanceof TextureView) return view;
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i=0;i<group.getChildCount();i++) {
                View found=findRenderer(group.getChildAt(i));
                if(found!=null)return found;
            }
        }
        return null;
    }

    private static boolean musicEnabled(Context c){return E01InstrumentStyle.musicEnabled(c);}

    private static void place(View view, int width, int height, String style) {
        if(view==null)return;
        int[] b = boundsFor(width, height, style);
        ViewGroup.LayoutParams old = view.getLayoutParams();
        if (old instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams f = (FrameLayout.LayoutParams) old;
            if (f.width == b[2] && f.height == b[3] && f.leftMargin == b[0]
                && f.topMargin == b[1] && f.gravity == 51) return;
        }
        FrameLayout.LayoutParams f = new FrameLayout.LayoutParams(b[2], b[3], 51);
        f.leftMargin = b[0]; f.topMargin = b[1]; view.setLayoutParams(f);
    }

    /** Static chrome is redrawn only on resize or a user preference change. */
    private static final class Bezel extends View {
        private final View content,waiting;
        private final E01MusicCard music;
        private final String style;
        private final E01InstrumentRenderer renderer;
        private boolean showMusic;
        private final Runnable refreshMusic=new Runnable(){public void run(){
            showMusic=musicEnabled(getContext());music.setVisibility(showMusic?VISIBLE:GONE);invalidate();
        }};
        private final android.content.SharedPreferences.OnSharedPreferenceChangeListener preferences=new android.content.SharedPreferences.OnSharedPreferenceChangeListener(){
            public void onSharedPreferenceChanged(android.content.SharedPreferences prefs,String key){if("music_enabled".equals(key))post(refreshMusic);}
        };
        Bezel(Context context,View content,View waiting,E01MusicCard music){
            super(context);this.content=content;this.waiting=waiting;this.music=music;
            style=E01InstrumentStyle.selected(context);renderer=new E01InstrumentRenderer(style);
            showMusic=musicEnabled(context);setFocusable(false);
        }
        @Override protected void onAttachedToWindow(){super.onAttachedToWindow();getContext().getSharedPreferences(E01InstrumentStyle.PREFERENCES,0).registerOnSharedPreferenceChangeListener(preferences);refreshMusic.run();}
        @Override protected void onDetachedFromWindow(){getContext().getSharedPreferences(E01InstrumentStyle.PREFERENCES,0).unregisterOnSharedPreferenceChangeListener(preferences);removeCallbacks(refreshMusic);super.onDetachedFromWindow();}
        @Override protected void onSizeChanged(int width,int height,int oldWidth,int oldHeight){
            super.onSizeChanged(width,height,oldWidth,oldHeight);if(width<=0||height<=0)return;
            if(!E01InstrumentStyle.fullscreen(style)){place(content,width,height,style);place(waiting,width,height,style);}
            music.place(width,height);renderer.resize(width,height);music.setBackdrop(renderer.backdrop());
        }
        @Override protected void onDraw(Canvas canvas){super.onDraw(canvas);renderer.draw(canvas,showMusic);}
    }
}
