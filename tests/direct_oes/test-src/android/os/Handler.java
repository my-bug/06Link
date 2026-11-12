package android.os;
import java.util.*;
public class Handler {
 final Looper looper;
 public static volatile boolean manualDisplayTimers;
 private final ArrayList<Runnable> held=new ArrayList<>();
 private long lastDelay;
 public Handler(){this(Looper.myLooper());}public Handler(Looper l){looper=l;}public Looper getLooper(){return looper;}
 public boolean post(Runnable r){return enqueue(r,0);}
 public boolean postDelayed(Runnable r,long ms){
  if(manualDisplayTimers&&looper!=null&&looper.owner.getName().equals("06Link-direct-oes")){
   synchronized(held){if(held.contains(r))throw new AssertionError("duplicate pending display timer");held.add(r);lastDelay=ms;}return true;
  }
  return enqueue(r,ms);
 }
 private boolean enqueue(Runnable r,long ms){if(looper==null){r.run();return true;}if(looper.quit)return false;looper.jobs.add(new Looper.Job(r,ms));return true;}
 public int pendingDisplayTimers(){synchronized(held){return held.size();}}
 public long lastDisplayDelayMs(){synchronized(held){return lastDelay;}}
 public void runNextDisplayTimer(){Runnable r;synchronized(held){if(held.size()!=1)throw new AssertionError("expected one display timer, found "+held.size());r=held.remove(0);}r.run();}
 public void removeCallbacks(Runnable r){synchronized(held){held.removeIf(x->x==r);}if(looper!=null)for(Looper.Job j:looper.jobs)if(j.run==r)j.cancel=true;}
 public void removeCallbacksAndMessages(Object o){synchronized(held){held.clear();}if(looper!=null)looper.jobs.clear();}
}
