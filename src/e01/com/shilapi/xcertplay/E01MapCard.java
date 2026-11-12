package com.shilapi.xcertplay;

import android.app.Presentation;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Shader;
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

    static double scaleFor(String style) { return "full".equals(style)?1.0:"mist".equals(style)?7.0/12.0:0.66; }

    static Pair<Integer,Integer> streamSize(int width, int height) {
        return streamSizeFor(width,height,E01InstrumentStyle.selected());
    }
    static Pair<Integer,Integer> streamSizeFor(int width,int height,String style) {
        if(width<=0||height<=0||"full".equals(style))return new Pair<Integer,Integer>(width,height);
        int h=Math.max(24,(int)Math.round(height*scaleFor(style)/24.0)*24);
        int w=Math.max(8,(int)Math.round(h*(double)width/height/8.0)*8);
        return new Pair<Integer,Integer>(w,h);
    }

    static int[] bounds(int width,int height){return boundsFor(width,height,E01InstrumentStyle.selected());}
    /** Single layout source for real video, preview and transition. Reference panel is 1920x720. */
    public static int[] boundsFor(int width,int height,String style) {
        if("full".equals(style))return new int[]{0,0,width,height};
        int w=Math.max(1,(int)Math.round(width*scaleFor(style)));
        int h=Math.max(1,(int)Math.round(height*scaleFor(style)));
        return new int[]{(width-w)/2,"mist".equals(style)?Math.round(height*174f/720f):(height-h)/2,w,h};
    }

    static AirPlayInsets safe(int width,int height){return safeFor(width,height,E01InstrumentStyle.selected());}
    /** Keep the proven whole-panel x32%..68% corridor after scaling the complete video rectangle.
     *  mist: (0.32 - 400/1920) / (1120/1920) = 67/350; card: 5/22.
     *  Insets are computed from the final encoded video size, never a surface translation/crop.
     */
    static AirPlayInsets safeFor(int width,int height,String style) {
        if("full".equals(style))return new AirPlayInsets((height*22+99)/100,(height*22+99)/100,(width*32+99)/100,(width*32+99)/100);
        int x="mist".equals(style)?(int)((width*67L+349)/350):(int)((width*5L+21)/22);
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
        if(!"full".equals(style)){place(content,size.x,size.y,style);place(waiting,size.x,size.y,style);}
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

    private static boolean musicEnabled(Context c){return c.getSharedPreferences("06link_instrument",0).getBoolean("music_enabled",true);}

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

    /** Geometry and shaders are cached until resize. Video frames never invalidate this view. */
    private static final class Bezel extends View {
        private final View content, waiting;
        private final E01MusicCard music;
        private final Path hole = new Path(), outside = new Path();
        private final Path waveA = new Path(), waveB = new Path(), glint = new Path();
        private final Path[] panels = new Path[5], shadows = new Path[5];
        private final Paint base = new Paint(3), wavePaintA = new Paint(3), wavePaintB = new Paint(3);
        private final Paint glintPaint = new Paint(3), mapEdge = new Paint(3), tint = new Paint(3), shadow = new Paint(3);
        private final Paint[] highlights = new Paint[5], edges = new Paint[5];
        private int panelWidth, panelHeight;
        private final String style;
        private final boolean full;
        private final E01MistInstrument mist;
        private boolean showMusic;
        private final Runnable refreshMusic=new Runnable(){public void run(){
            showMusic=musicEnabled(getContext());music.setVisibility(showMusic?VISIBLE:GONE);invalidate();
        }};
        private final android.content.SharedPreferences.OnSharedPreferenceChangeListener preferences=new android.content.SharedPreferences.OnSharedPreferenceChangeListener(){
            public void onSharedPreferenceChanged(android.content.SharedPreferences prefs,String key){if("music_enabled".equals(key))post(refreshMusic);}
        };

        Bezel(Context context, View content, View waiting, E01MusicCard music) {
            super(context);style=E01InstrumentStyle.selected(context);full="full".equals(style);mist="mist".equals(style)?new E01MistInstrument():null; this.content = content; this.waiting = waiting; this.music = music;showMusic=musicEnabled(context);
            setFocusable(false);
            wavePaintA.setColor(0x47b3e8da); wavePaintB.setColor(0x545b41a8);
            glintPaint.setStyle(Paint.Style.STROKE); glintPaint.setColor(0x40e0f6df);
            mapEdge.setStyle(Paint.Style.STROKE); mapEdge.setColor(0x99f1f6fb);
            tint.setColor(0x68133153); shadow.setColor(0x22103153);
            for (int i = 0; i < panels.length; i++) {
                panels[i] = new Path(); shadows[i] = new Path();
                highlights[i] = new Paint(3); edges[i] = new Paint(3);
                edges[i].setStyle(Paint.Style.STROKE);
            }
        }

        @Override protected void onAttachedToWindow(){super.onAttachedToWindow();getContext().getSharedPreferences("06link_instrument",0).registerOnSharedPreferenceChangeListener(preferences);refreshMusic.run();}
        @Override protected void onDetachedFromWindow(){getContext().getSharedPreferences("06link_instrument",0).unregisterOnSharedPreferenceChangeListener(preferences);removeCallbacks(refreshMusic);super.onDetachedFromWindow();}

        private void panel(int index, float x, float y, float w, float h, float radius, float sx, float sy) {
            float l=x*sx, t=y*sy, r=(x+w)*sx, b=(y+h)*sy;
            float rad=radius*Math.min(sx,sy), offset=5*sy;
            panels[index].reset(); panels[index].addRoundRect(l,t,r,b,rad,rad,Path.Direction.CW);
            shadows[index].reset(); shadows[index].addRoundRect(l,t+offset,r,b+offset,rad,rad,Path.Direction.CW);
            highlights[index].setShader(new LinearGradient(l,t,l+(r-l)*0.65f,b,
                new int[]{0x52ffffff,0x14ffffff,0x24ffffff},new float[]{0f,0.44f,1f},Shader.TileMode.CLAMP));
            edges[index].setShader(new LinearGradient(l,t,l+(r-l)*0.4f,b,
                new int[]{0xabffffff,0x1fffffff,0x42ffffff},new float[]{0f,0.42f,1f},Shader.TileMode.CLAMP));
            edges[index].setStrokeWidth(Math.max(1f,1.5f*sy));
        }

        @Override protected void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
            super.onSizeChanged(width,height,oldWidth,oldHeight);
            if (width <= 0 || height <= 0) return;
            panelWidth=width; panelHeight=height;
            if(!full){place(content,width,height,style);place(waiting,width,height,style);}music.place(width,height);
            if(mist!=null){mist.resize(width,height);return;}
            int[] b=boundsFor(width,height,style); float radius=40f*height/720f;
            hole.reset(); hole.addRoundRect(b[0],b[1],b[0]+b[2],b[1]+b[3],radius,radius,Path.Direction.CW);
            outside.reset(); outside.setFillType(Path.FillType.EVEN_ODD);
            outside.addRect(0,0,width,height,Path.Direction.CW); outside.addPath(hole);
            base.setShader(new LinearGradient(0,0,width*0.5f,height,
                new int[]{0xff319fbb,0xff3c83bb,0xff626ab1},new float[]{0f,0.5f,1f},Shader.TileMode.CLAMP));
            float sx=width/1920f, sy=height/720f;
            waveA.reset(); waveA.moveTo(-80*sx,530*sy);
            waveA.cubicTo(480*sx,-80*sy,1030*sx,-60*sy,1980*sx,160*sy);
            waveA.lineTo(1980*sx,335*sy);
            waveA.cubicTo(1320*sx,70*sy,700*sx,130*sy,-80*sx,710*sy); waveA.close();
            waveB.reset(); waveB.moveTo(-120*sx,710*sy);
            waveB.cubicTo(550*sx,340*sy,1170*sx,690*sy,2010*sx,290*sy);
            waveB.lineTo(2010*sx,490*sy);
            waveB.cubicTo(1220*sx,900*sy,680*sx,600*sy,-120*sx,820*sy); waveB.close();
            glint.reset(); glint.moveTo(-70*sx,534*sy);
            glint.cubicTo(540*sx,-40*sy,1100*sx,23*sy,1980*sx,189*sy);
            glintPaint.setStrokeWidth(Math.max(1f,4*sy)); mapEdge.setStrokeWidth(Math.max(1f,2*sy));
            panel(0,35,185,370,340,42,sx,sy);  // Photo-calibrated speed group center: 220,355.
            panel(1,555,20,810,64,24,sx,sy);   // Screen-centered top status: 960,52.
            panel(2,1408,64,455,96,26,sx,sy);  // Photo-calibrated tachometer center: 1635.5,112.
            // Extend the footer up to the map edge; 4 reference pixels of overlap hide a gap.
            float footerTop = (b[1] + b[3]) / sy - 4f;
            panel(3,205,footerTop,1510,718f-footerTop,27,sx,sy);
            panel(4,1515,185,370,340,42,sx,sy); // Mirror of the speed panel.
            // The native route card is intentionally absent from this panel list.
        }

        private void backdrop(Canvas canvas) {
            canvas.drawRect(0,0,panelWidth,panelHeight,base);
            canvas.drawPath(waveA,wavePaintA); canvas.drawPath(waveB,wavePaintB);
            canvas.drawPath(glint,glintPaint);
        }

        @Override protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (panelWidth <= 0 || panelHeight <= 0) return;
            if(mist!=null){mist.draw(canvas,showMusic);return;}
            if(!full){canvas.save(); canvas.clipPath(outside); backdrop(canvas); canvas.restore();
            canvas.drawPath(hole,mapEdge);}
            for (int i=full?4:0; i<panels.length; i++) {
                if(i==4&&!showMusic)continue;
                canvas.drawPath(shadows[i],shadow);
                canvas.save(); canvas.clipPath(panels[i]);
                // Sample our static backdrop, so moving map lines never run under OEM white text.
                backdrop(canvas);
                canvas.drawPath(panels[i],tint); canvas.drawPath(panels[i],highlights[i]);
                canvas.restore(); canvas.drawPath(panels[i],edges[i]);
            }
        }
    }
}
