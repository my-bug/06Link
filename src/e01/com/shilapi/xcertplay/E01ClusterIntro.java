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
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;

/** Visual-only overlay over the real instrument video. Owns no stream or vehicle data. */
public final class E01ClusterIntro {
    private static final Object LOCK=new Object();
    static final long DURATION_MS=E01InstrumentStyle.INTRO_DURATION_MS, DEADLINE_MS=E01InstrumentStyle.INTRO_DEADLINE_MS;
    private static final Handler MAIN=new Handler(Looper.getMainLooper());
    private static final WeakHashMap<Presentation,WeakReference<Overlay>> views=new WeakHashMap<Presentation,WeakReference<Overlay>>();
    private static long epoch;
    private static boolean active,played;
    private static boolean supported(){return Build.VERSION.SDK_INT==22&&"E01".equals(Build.MODEL)&&"BX11QJ".equals(Build.DEVICE);}
    private static boolean enabled(Context c){return E01InstrumentStyle.introEnabled(c);}
    private static boolean allowed(Context c){return E01ClusterMode.projectionAllowed(c)&&enabled(c);}
    public static void install(Presentation owner,FrameLayout root,Point size){
        if(!supported()||root==null||owner==null||owner.getDisplay().getDisplayId()!=1||size==null||size.x<=0||size.y<=0)return;
        synchronized(LOCK){if(views.containsKey(owner))return;}
        Overlay overlay=new Overlay(owner);
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
    private static final class Overlay extends View implements ValueAnimator.AnimatorUpdateListener,Animator.AnimatorListener {
        final WeakReference<Presentation> owner;
        final E01RacingIntroRenderer renderer;
        ValueAnimator animator;float progress;long token,expiresAt;
        Runnable deadline;
        final android.content.SharedPreferences.OnSharedPreferenceChangeListener preferences = new android.content.SharedPreferences.OnSharedPreferenceChangeListener(){
            public void onSharedPreferenceChanged(android.content.SharedPreferences prefs,String key){
                if("transition_enabled".equals(key)&&!enabled(getContext()))MAIN.post(new Runnable(){public void run(){if(!enabled(getContext()))finish();}});
            }
        };
        Overlay(Presentation owner){
            super(owner.getContext());this.owner=new WeakReference<Presentation>(owner);
            renderer=new E01RacingIntroRenderer(E01InstrumentStyle.theme(E01InstrumentStyle.selected(getContext())));
            setFocusable(false);setClickable(false);setImportantForAccessibility(2);setVisibility(GONE);
        }
        void play(long token){
            Presentation window=owner.get();
            synchronized(LOCK){if(token!=epoch||!active)return;}
            if(window==null||!window.isShowing()||!allowed(getContext())){finish();return;}
            finish();this.token=token;expiresAt=android.os.SystemClock.elapsedRealtime()+DEADLINE_MS;
            try{animator=ValueAnimator.ofFloat(0,1);animator.setDuration(DURATION_MS);animator.setInterpolator(new android.view.animation.LinearInterpolator());animator.addUpdateListener(this);animator.addListener(this);
                final ValueAnimator running=animator;final long session=token;
                deadline=new Runnable(){public void run(){if(animator==running&&Overlay.this.token==session)finish();}};
                // Do not expose a covering view unless its independent deadline is queued.
                if(!MAIN.postDelayed(deadline,DEADLINE_MS)){finish();return;}
                progress=0;setVisibility(VISIBLE);invalidate();animator.start();}
            catch(RuntimeException unavailable){finish();}
        }
        void finish(){
            ValueAnimator old=animator;animator=null;
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
            progress=((Float)a.getAnimatedValue()).floatValue();invalidate();
        }
        public void onAnimationStart(Animator a){}
        public void onAnimationRepeat(Animator a){}
        public void onAnimationCancel(Animator a){if(animator==a)finish();}
        public void onAnimationEnd(Animator a){if(animator==a){animator=null;finish();}}
        @Override protected void onAttachedToWindow(){super.onAttachedToWindow();getContext().getSharedPreferences(E01InstrumentStyle.PREFERENCES,0).registerOnSharedPreferenceChangeListener(preferences);}
        @Override protected void onDetachedFromWindow(){getContext().getSharedPreferences(E01InstrumentStyle.PREFERENCES,0).unregisterOnSharedPreferenceChangeListener(preferences);finish();super.onDetachedFromWindow();}
        @Override protected void onDraw(Canvas c){
            super.onDraw(c);if(!live()){finish();return;}
            try{renderer.draw(c,getWidth(),getHeight(),progress*DURATION_MS);}
            catch(RuntimeException unavailable){finish();}
        }

    }
    private E01ClusterIntro(){}
}
