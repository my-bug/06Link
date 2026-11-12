package android.view;
import android.os.*;
/** Auto mode is lifecycle scaffolding only. Manual mode delivers explicit one-shot pulses. */
public class Choreographer {
 public interface FrameCallback{void doFrame(long ns);}
 public static volatile boolean manual;
 private final Handler h=new Handler();
 private final java.util.Map<FrameCallback,Runnable> pending=new java.util.concurrent.ConcurrentHashMap<>();
 public static Choreographer getInstance(){return new Choreographer();}
 public void postFrameCallback(final FrameCallback f){
  Runnable r=()->{pending.remove(f);f.doFrame(System.nanoTime());};
  if(pending.putIfAbsent(f,r)!=null)throw new AssertionError("double frame subscription");
  if(!manual)h.postDelayed(r,16);
 }
 public void removeFrameCallback(FrameCallback f){Runnable r=pending.remove(f);if(r!=null)h.removeCallbacks(r);}
 public boolean pending(){return !pending.isEmpty();}
 public void pulse(long t){if(!manual)throw new AssertionError("pulse requires manual mode");for(FrameCallback f:pending.keySet().toArray(new FrameCallback[0]))if(pending.remove(f)!=null)f.doFrame(t);}
}
