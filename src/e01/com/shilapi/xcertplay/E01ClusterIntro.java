package com.shilapi.xcertplay;

import android.app.Presentation;
import android.content.Context;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.*;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.*;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;

/** Visual-only overlay over the real instrument video. Owns no stream or vehicle data. */
public final class E01ClusterIntro {
    private static final Object LOCK=new Object();
    private static final Handler MAIN=new Handler(Looper.getMainLooper());
    private static final WeakHashMap<Presentation,WeakReference<Overlay>> views=new WeakHashMap<Presentation,WeakReference<Overlay>>();
    private static long epoch;
    private static boolean active,played;
    private static boolean supported(){return Build.VERSION.SDK_INT==22&&"E01".equals(Build.MODEL)&&"BX11QJ".equals(Build.DEVICE);}
    private static boolean enabled(Context c){try{return !Boolean.FALSE.equals(c.getSharedPreferences("06link_instrument",0).getAll().get("transition_enabled"));}catch(RuntimeException unavailable){return false;}}
    private static boolean allowed(Context c){return E01ClusterMode.projectionAllowed(c)&&enabled(c);}
    public static void install(Presentation owner,FrameLayout root,Point size){
        if(!supported()||root==null||owner==null||owner.getDisplay().getDisplayId()!=1||size==null||size.x<=0||size.y<=0)return;
        synchronized(LOCK){if(views.containsKey(owner))return;}
        Overlay overlay=new Overlay(owner,size);
        root.addView(overlay,new FrameLayout.LayoutParams(-1,-1));
        synchronized(LOCK){views.put(owner,new WeakReference<Overlay>(overlay));}
    }
    public static void connected(){
        synchronized(LOCK){if(active)return;active=true;played=false;epoch++;MAIN.post(new Dispatch(0,epoch,null));}
    }
    /** Called only after the existing guarded map-open RPC has returned acceptance. */
    public static void opened(){
        synchronized(LOCK){if(!active||played)return;played=true;MAIN.post(new Dispatch(1,epoch,null));}
    }
    public static void ended(){
        synchronized(LOCK){active=false;played=false;epoch++;MAIN.post(new Dispatch(2,epoch,null));}
    }
    public static void stopped(Presentation owner){
        synchronized(LOCK){WeakReference<Overlay> ref=views.get(owner);if(ref!=null)MAIN.post(new Dispatch(3,epoch,ref));}
    }
    private static ArrayList<Overlay> snapshot(){
        ArrayList<Overlay> out=new ArrayList<Overlay>();
        synchronized(LOCK){for(WeakReference<Overlay> ref:views.values()){Overlay v=ref.get();if(v!=null)out.add(v);}}
        return out;
    }
    private static final class Dispatch implements Runnable {
        final int action;final long token;final WeakReference<Overlay> only;
        Dispatch(int action,long token,WeakReference<Overlay> only){this.action=action;this.token=token;this.only=only;}
        public void run(){
            synchronized(LOCK){if(token!=epoch)return;}
            if(only!=null){Overlay v=only.get();if(v!=null)v.finish();return;}
            for(Overlay v:snapshot()){
                try{if(action==2||action==0||!allowed(v.getContext()))v.finish();else v.play(token);}
                catch(RuntimeException unavailable){v.finish();}
            }
        }
    }
    public static void addSettings(Context c,LinearLayout parent){new Setting(c,parent);}
    private static final class Setting implements CompoundButton.OnCheckedChangeListener,View.OnClickListener {
        final Context context;final Switch toggle;final TextView state;boolean restoring;
        Setting(Context c,LinearLayout parent){
            context=c;LinearLayout row=new LinearLayout(c);row.setOrientation(0);row.setGravity(16);row.setPadding(dp(12),0,dp(8),0);
            LegacyViewsKt.setBackgroundCompat(row,Glass.INSTANCE.panel(c,Glass.Kind.CONTROL,12f,Glass.INSTANCE.getCurrent()));
            TextView label=new TextView(c);label.setText("过场动画 · 5秒");label.setTextSize(17);label.setTextColor(Glass.INSTANCE.getTEXT());
            row.addView(label,new LinearLayout.LayoutParams(0,dp(64),1));label.setGravity(16);
            state=new TextView(c);state.setTextSize(15);state.setTextColor(Glass.INSTANCE.getACCENT());state.setGravity(16);
            row.addView(state,new LinearLayout.LayoutParams(dp(44),dp(64)));
            toggle=new Switch(c);toggle.setTextOn("");toggle.setTextOff("");toggle.setShowText(false);toggle.setChecked(enabled(c));
            LegacyViewsKt.setButtonTintCompat(toggle,android.content.res.ColorStateList.valueOf(Glass.INSTANCE.getACCENT()));
            toggle.setContentDescription("仪表过场动画");row.addView(toggle,new LinearLayout.LayoutParams(dp(56),dp(56)));
            state.setText(toggle.isChecked()?"开启":"关闭");toggle.setOnCheckedChangeListener(this);row.setOnClickListener(this);
            parent.addView(row,new LinearLayout.LayoutParams(-1,dp(64)));
        }
        int dp(int v){return Math.round(v*context.getResources().getDisplayMetrics().density);}
        public void onClick(View v){toggle.setChecked(!toggle.isChecked());}
        public void onCheckedChanged(CompoundButton b,boolean checked){
            if(restoring)return;
            if(!context.getSharedPreferences("06link_instrument",0).edit().putBoolean("transition_enabled",checked).commit()){
                restoring=true;toggle.setChecked(!checked);restoring=false;Toast.makeText(context,"保存失败，请重试",Toast.LENGTH_SHORT).show();return;
            }
            state.setText(checked?"开启":"关闭");
            // Turning off cancels immediately; turning on applies to the next connection.
            if(!checked)for(Overlay v:snapshot())v.finish();
        }
    }
    private static final class Overlay extends View implements ValueAnimator.AnimatorUpdateListener,Animator.AnimatorListener {
        final WeakReference<Presentation> owner;
        final Paint p=new Paint(3),text=new Paint(3),brand=new Paint(3),edge=new Paint(3);
        final Path mapPath=new Path(),outside=new Path(),covered=new Path(),wave=new Path();
        final RectF map=new RectF(),hole=new RectF();
        final Shader backdrop=new LinearGradient(0,0,1920,720,new int[]{0xff319fbb,0xff3c83bb,0xff626ab1},null,Shader.TileMode.CLAMP);
        final Shader scan=new LinearGradient(0,0,0,54,new int[]{0x554bcfff,0x004bcfff},null,Shader.TileMode.CLAMP);
        final String style;
        final boolean full,mist;
        final float mapRadius;
        ValueAnimator animator;float progress;long token,expiresAt;boolean cancelled;
        Runnable deadline;
        final android.content.SharedPreferences.OnSharedPreferenceChangeListener preferences = new android.content.SharedPreferences.OnSharedPreferenceChangeListener(){
            public void onSharedPreferenceChanged(android.content.SharedPreferences prefs,String key){
                if("transition_enabled".equals(key)&&!enabled(getContext()))MAIN.post(new Runnable(){public void run(){if(!enabled(getContext()))finish();}});
            }
        };
        Overlay(Presentation owner,Point size){
            super(owner.getContext());this.owner=new WeakReference<Presentation>(owner);
            style=E01InstrumentStyle.selected(getContext());
            full="full".equals(style);mist="mist".equals(style);mapRadius=full?0:mist?28:40;
            setFocusable(false);setClickable(false);setImportantForAccessibility(2);setVisibility(GONE);
            text.setTypeface(Typeface.create("sans-serif",0));text.setTextAlign(Paint.Align.CENTER);
            brand.setTypeface(Typeface.create("sans-serif-medium",0));brand.setTextAlign(Paint.Align.CENTER);
            edge.setStyle(Paint.Style.STROKE);edge.setStrokeCap(Paint.Cap.ROUND);
            geometry(size.x,size.y);
            wave.moveTo(-80,530);wave.cubicTo(480,-80,1030,-60,1980,160);wave.lineTo(1980,310);wave.cubicTo(1320,70,700,130,-80,710);wave.close();
        }
        private void geometry(int width,int height){
            if(width<=0||height<=0)return;
            int[] bounds=E01MapCard.boundsFor(width,height,style);
            int x=bounds[0],y=bounds[1],w=bounds[2],h=bounds[3];
            map.set(x*1920f/width,y*720f/height,(x+w)*1920f/width,(y+h)*720f/height);
            mapPath.reset();mapPath.addRoundRect(map,mapRadius,mapRadius,Path.Direction.CW);
            outside.reset();outside.setFillType(Path.FillType.EVEN_ODD);outside.addRect(0,0,1920,720,Path.Direction.CW);outside.addPath(mapPath);
        }
        @Override protected void onSizeChanged(int w,int h,int oldW,int oldH){super.onSizeChanged(w,h,oldW,oldH);geometry(w,h);}
        void play(long token){
            Presentation window=owner.get();
            synchronized(LOCK){if(token!=epoch||!active)return;}
            if(window==null||!window.isShowing()||!allowed(getContext())){finish();return;}
            finish();this.token=token;expiresAt=android.os.SystemClock.elapsedRealtime()+5500;cancelled=false;
            try{animator=ValueAnimator.ofFloat(0,1);animator.setDuration(5000);animator.setInterpolator(new android.view.animation.LinearInterpolator());animator.addUpdateListener(this);animator.addListener(this);
                final ValueAnimator running=animator;final long session=token;
                deadline=new Runnable(){public void run(){if(animator==running&&Overlay.this.token==session)finish();}};
                // Do not expose a covering view unless its independent deadline is queued.
                if(!MAIN.postDelayed(deadline,5500)){finish();return;}
                progress=0;setVisibility(VISIBLE);invalidate();animator.start();}
            catch(RuntimeException unavailable){finish();}
        }
        void finish(){
            ValueAnimator old=animator;animator=null;cancelled=true;
            if(deadline!=null){MAIN.removeCallbacks(deadline);deadline=null;}
            progress=1;setVisibility(GONE);
            if(old!=null)old.cancel();
        }
        private boolean live(){
            Presentation window=owner.get();
            synchronized(LOCK){return active&&token==epoch&&window!=null&&window.isShowing()&&android.os.SystemClock.elapsedRealtime()<expiresAt&&allowed(getContext());}
        }
        public void onAnimationUpdate(ValueAnimator a){
            if(a!=animator)return;
            if(!live()){finish();return;}
            progress=timeline(((Float)a.getAnimatedValue()).floatValue());invalidate();
        }
        public void onAnimationStart(Animator a){}
        public void onAnimationRepeat(Animator a){}
        public void onAnimationCancel(Animator a){if(animator==a)finish();}
        public void onAnimationEnd(Animator a){if(animator==a){animator=null;finish();}}
        @Override protected void onAttachedToWindow(){super.onAttachedToWindow();getContext().getSharedPreferences("06link_instrument",0).registerOnSharedPreferenceChangeListener(preferences);}
        @Override protected void onDetachedFromWindow(){getContext().getSharedPreferences("06link_instrument",0).unregisterOnSharedPreferenceChangeListener(preferences);finish();super.onDetachedFromWindow();}
        // Preserve the first 2.82s and final .24s; shorten only map unfolding by 1s.
        static float timeline(float progress){
            float ms=Math.max(0,Math.min(1,progress))*5000;
            float original=ms<=2820?ms:ms<4760?2820+(ms-2820)*(2940f/1940f):ms+1000;
            return original/6000;
        }
        static float segment(float t,float a,float b){return Math.max(0,Math.min(1,(t-a)/(b-a)));}
        static float ease(float x){return 1-(float)Math.pow(1-Math.max(0,Math.min(1,x)),3);}
        void background(Canvas c){
            p.setStyle(Paint.Style.FILL);p.setAlpha(255);
            if(mist){p.setShader(null);p.setColor(0xff63879c);c.drawRect(map,p);return;}
            p.setShader(backdrop);c.drawRect(0,0,1920,720,p);p.setShader(null);p.setColor(0x255fffe1);c.drawPath(wave,p);
        }
        @Override protected void onDraw(Canvas c){
            super.onDraw(c);if(!live()){finish();return;}if(getWidth()<=0||getHeight()<=0)return;
            int outer=c.save();c.scale(getWidth()/1920f,getHeight()/720f);
            // The mist intro owns only the map: OEM status, route card and warnings stay visible.
            if(mist)c.clipPath(mapPath);
            float t=progress,opening=ease(segment(t,.47f,.96f)),cards=ease(segment(t,.57f,.94f));
            float half=(map.bottom-map.top)*.5f,center=(map.top+map.bottom)*.5f,roof=center-half*opening,floor=center+half*opening,left=map.left,right=map.right;
            // Clear portions are simply not painted: they expose real decoded video.
            if(!mist){int out=c.saveLayerAlpha(0,0,1920,720,Math.round(255*(1-cards)),31);c.clipPath(outside);background(c);c.restoreToCount(out);}
            covered.reset();covered.setFillType(Path.FillType.EVEN_ODD);covered.addPath(mapPath);
            if(opening>0){hole.set(left,roof,right,floor);covered.addRoundRect(hole,Math.min(mapRadius,half*opening),Math.min(mapRadius,half*opening),Path.Direction.CW);}
            int cover=c.save();c.clipPath(covered);background(c);c.restoreToCount(cover);
            float width=ease(segment(t,0,.17f)),front=1-ease(segment(t,.91f,1));
            if(front>0&&width>0){int clip=c.save();c.clipPath(mapPath);
                if(opening>0){int trail=c.save();c.translate(0,roof);p.setAlpha(Math.round(255*front));p.setShader(scan);hole.set(left,0,right,54);c.drawRect(hole,p);p.setShader(null);c.restoreToCount(trail);}
                for(int i=3;i>=0;i--){edge.setStrokeWidth(i==0?3:4+i*7);edge.setColor((Math.round((i==0?240:17)*front)<<24)|0x7bdfff);c.drawLine(960-(right-left)*.5f*width,roof,960+(right-left)*.5f*width,roof,edge);}
                if(opening>0){edge.setStrokeWidth(1.4f);edge.setColor((Math.round(75*front)<<24)|0x7bdfff);c.drawLine(left,floor,right,floor,edge);}
                c.restoreToCount(clip);
            }
            float alpha=ease(segment(t,.08f,.20f))*(1-ease(segment(t,.43f,.68f)));
            if(alpha>0){int save=c.saveLayerAlpha(0,0,1920,720,Math.round(alpha*255),31);c.translate(0,-24*ease(segment(t,.43f,.68f)));
                p.setShader(null);p.setColor(0x1055cfff);c.drawCircle(960,345,146,p);
                brand.setColor(0xfff4faff);brand.setTextSize(94);brand.setTextScaleX(1.12f);c.drawText("LYNK & CO",960,302,brand);
                text.setColor(0xff86ddff);text.setTextSize(36);c.drawText("×",960,352,text);
                brand.setTextSize(80);brand.setTextScaleX(1);c.drawText("CarPlay",960,430,brand);
                text.setColor(0xffa4cce5);text.setTextSize(21);c.drawText("CONNECTED BY 06Link",960,478,text);c.restoreToCount(save);
            }
            c.restoreToCount(outer);
        }
    }
    private E01ClusterIntro(){}
}
