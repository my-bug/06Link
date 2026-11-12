package com.shilapi.xcertplay;
import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

/** Bounded main-screen rebind on real UI return; never sends a synthetic touch. */
public final class E01VideoResume {
    private static final Handler MAIN=new Handler(Looper.getMainLooper());
    private static final WeakHashMap<Activity,Job> jobs=new WeakHashMap<Activity,Job>();
    private static Object field(Object owner,String name)throws Exception{Field f=owner.getClass().getDeclaredField(name);f.setAccessible(true);return f.get(owner);}
    public static void resume(Activity activity){
        if(activity==null)return;
        synchronized(jobs){
            if(jobs.containsKey(activity))return;
            Job job=new Job(activity);jobs.put(activity,job);MAIN.postDelayed(job,100);
        }
    }
    public static void paused(Activity activity){synchronized(jobs){Job old=jobs.remove(activity);if(old!=null)MAIN.removeCallbacks(old);}}
    private static final class Job implements Runnable {
        final WeakReference<Activity> owner;int attempts;
        Job(Activity activity){owner=new WeakReference<Activity>(activity);}
        public void run(){
            Activity a=owner.get();if(a==null)return;
            synchronized(jobs){if(jobs.get(a)!=this)return;}
            try{
                if(a.isFinishing()||!Boolean.TRUE.equals(field(a,"inFront"))||Boolean.TRUE.equals(field(a,"menuOpen"))||!E01HotspotControl.allowed()){finish(a);return;}
                Object controller=field(a,"controller"),sink=field(a,"sink"),surface=field(a,"currentSurface");
                if(controller!=null&&sink!=null&&surface instanceof Surface&&((Surface)surface).isValid()){
                    // This enqueues work; the decoder owns the surface and keyframe request.
                    sink.getClass().getMethod("setSurface",Integer.TYPE,Surface.class).invoke(sink,110,surface);
                    Object view=field(a,"videoView");if(view instanceof android.view.View)((android.view.View)view).invalidate();
                    a.getWindow().getDecorView().invalidate();
                    finish(a);return;
                }
                if(++attempts<4){MAIN.postDelayed(this,150);return;}
            }catch(Exception unavailable){}
            finish(a);
        }
        private void finish(Activity a){synchronized(jobs){if(jobs.get(a)==this)jobs.remove(a);}}
    }
    private E01VideoResume(){}
}
