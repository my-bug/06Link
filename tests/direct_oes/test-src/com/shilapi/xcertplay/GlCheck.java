package com.shilapi.xcertplay;
import android.content.Context;import android.opengl.*;import android.view.Surface;import android.os.Handler;
import java.lang.reflect.*;import java.util.concurrent.*;import java.util.function.BooleanSupplier;
public final class GlCheck{
 static int checks;
 static void ok(boolean p,String m){checks++;if(!p)throw new AssertionError(m);}
 static Object field(Object o,String n)throws Exception{Field f=o.getClass().getDeclaredField(n);f.setAccessible(true);return f.get(o);}
 static long number(Object o,String n)throws Exception{return ((Number)field(o,n)).longValue();}
 static void await(BooleanSupplier p,String m)throws Exception{long end=System.nanoTime()+3000000000L;while(!p.getAsBoolean()&&System.nanoTime()<end)Thread.sleep(1);if(!p.getAsBoolean())throw new AssertionError("timeout "+m);}
 static void on(Handler h,Runnable r)throws Exception{FutureTask<Void> t=new FutureTask<>(r,null);h.post(t);t.get(3,TimeUnit.SECONDS);}
 static final class Callback implements E01GlOutput.Callback{
  volatile Surface input;volatile Throwable error;volatile int ready,failed;volatile boolean failedWhileWindowConnected,abandonedBeforeFailure;
  public void ready(Surface s){input=s;ready++;}
  public void failed(Throwable e){error=e;failed++;failedWhileWindowConnected=FakeGpu.activeWindows.get()!=0;abandonedBeforeFailure=input!=null&&input.texture.released;}
 }
 static final class Run implements AutoCloseable{
  final Callback callback=new Callback();final Surface window=new Surface();final E01GlOutput out;final Handler worker;final java.util.Map<Long,Long> timestamps=new java.util.HashMap<>();
  Run()throws Exception{this(false);}
  Run(boolean manual)throws Exception{Handler.manualDisplayTimers=manual;out=new E01GlOutput(new Context(),window,callback);out.setFormat(1920,720,60);await(()->callback.ready>0||callback.failed>0,"ready");if(callback.error!=null)throw new AssertionError(callback.error);worker=(Handler)field(out,"worker");on(worker,()->{});if(manual)ok(worker.pendingDisplayTimers()==0,"idle startup has no polling timer");}
  long stamp(long marker){Long value=timestamps.get(marker);if(value==null){value=System.nanoTime();timestamps.put(marker,value);}return value;}
  void emit(long pts)throws Exception{callback.input.texture.emit(stamp(pts));on(worker,()->{});}
  void tick()throws Exception{on(worker,()->{if(worker.pendingDisplayTimers()!=0)worker.runNextDisplayTimer();});}
  public void close()throws Exception{out.close();await(()->FakeGpu.activeContexts.get()==0,"cleanup");onQuit();ok(worker.pendingDisplayTimers()==0,"cleanup cancels timer");ok(FakeGpu.activeWindows.get()==0&&FakeGpu.activePbuffers.get()==0,"both EGL surfaces cleaned");ok(FakeGpu.textures.isEmpty(),"OES texture cleaned");ok(window.released==0,"holder window stays owner-owned");Handler.manualDisplayTimers=false;}
  void onQuit()throws Exception{Thread t=(Thread)field(out,"workerThread");t.join(1000);ok(!t.isAlive(),"worker exits after cleanup");}
 }
 public static void main(String[]args)throws Exception{
  FakeGpu.reset();try(Run r=new Run(true)){
   r.emit(1);r.tick();ok(number(r.out,"updated")==1&&number(r.out,"swapped")==1,"unique frame displayed once");
   for(int i=0;i<5;i++)r.tick();ok(number(r.out,"swapped")==1,"no-frame ticks never swap same image again");
   r.emit(1);r.tick();ok(number(r.out,"swapped")==1&&number(r.out,"duplicateStamps")==1,"duplicate timestamp never inflates swaps");
   r.emit(2);r.emit(3);r.emit(4);r.tick();ok(number(r.out,"swapped")==2&&r.callback.input.texture.getTimestamp()==r.timestamps.get(4L),"merged callbacks consume latest timestamp once");
   ok(number(r.out,"copied")==0&&number(r.out,"copyDone")==0,"no intermediate RGBA copies");
   ok(FakeGpu.textures.size()==1&&FakeGpu.fenceCount()==0&&FakeGpu.activeContexts.get()==1,"one OES texture, single context, no explicit fences");
   ok(FakeGpu.finishes.get()==0,"frame path has no glFinish");ok(r.worker.pendingDisplayTimers()==0,"consumed event leaves no polling timer");
   Thread.sleep(120);long before=number(r.out,"callbacks");r.tick();ok(number(r.out,"callbacks")==before,"idle stream creates no callbacks");r.emit(5);ok(r.worker.pendingDisplayTimers()==1&&r.worker.lastDisplayDelayMs()==0,"late new frame wakes immediately once");r.tick();ok(number(r.out,"callbacks")==before+1&&r.worker.pendingDisplayTimers()==0,"late wake never replays missed deadlines");
   r.out.setFormat(1920,720,30);r.emit(6);r.tick();long thirty=number(r.out,"nextTickNs")-number(r.out,"lastCallbackNs");ok(thirty==1000000000L/30,"30fps period selected");
   r.out.setFormat(1920,720,60);r.emit(7);r.tick();long sixty=number(r.out,"nextTickNs")-number(r.out,"lastCallbackNs");ok(sixty==1000000000L/60,"60fps period selected");
   r.out.setFormat(1920,720,60);ok(number(r.out,"reports")==0&&number(r.out,"reportAt")==0,"same-format configure resets bounded report windows");
  }
  FakeGpu.reset();try(Run r=new Run(true)){
   r.out.retainCodec();r.emit(1);r.tick();int swaps=FakeGpu.swapped.get();r.out.close();on(r.worker,()->{});
   ok(FakeGpu.activeWindows.get()==0&&FakeGpu.activePbuffers.get()==1,"close disconnects window and keeps pbuffer");
   ok(!r.callback.input.texture.released&&FakeGpu.activeContexts.get()==1,"close retains input and context while codec owns it");
   try{r.out.retainCodec();throw new AssertionError("retain retiring");}catch(IllegalStateException expected){ok(true,"retired bridge rejects new codec");}
   for(int n=2;n<7;n++){r.emit(n);r.tick();}
   ok(number(r.out,"updated")==6&&FakeGpu.swapped.get()==swaps,"close drains input without rendering");ok(FakeGpu.pbufferUpdates.get()==5,"retired input drains with same context current on pbuffer");
   r.out.close();on(r.worker,()->{});ok(r.worker.pendingDisplayTimers()==0,"idle retired input does not poll; incoming frames still drain");
   r.out.abort(new IllegalStateException("late"));on(r.worker,()->{});ok(r.callback.failed==0,"late abort cannot convert normal close to fallback");
   r.out.releaseCodec();await(()->r.callback.input.texture.released,"last ref releases input");await(()->FakeGpu.activeContexts.get()==0,"last ref cleanup");ok(r.callback.input.released==1,"input Surface released exactly once");
  }
  FakeGpu.reset();try(Run r=new Run(true)){
   r.out.retainCodec();FakeGpu.failUpdate=true;r.emit(1);r.tick();on(r.worker,()->{});
   ok(r.callback.failed==1&&!r.callback.failedWhileWindowConnected,"fatal failed callback follows window disconnect");
   ok(r.callback.abandonedBeforeFailure&&r.callback.input.texture.released,"fatal input abandoned before owner is asked to release codec");
   ok(FakeGpu.activeContexts.get()==1&&FakeGpu.activePbuffers.get()==1,"fatal cleanup keeps context until codec unrefs");ok(r.worker.pendingDisplayTimers()==0,"broken path never rearms");
   Thread nativeRelease=new Thread(()->{if(!r.callback.input.texture.released)throw new AssertionError("stop would block");r.out.releaseCodec();});nativeRelease.start();nativeRelease.join(1000);ok(!nativeRelease.isAlive(),"native stop simulation cannot deadlock awaiting ST abandon");await(()->FakeGpu.activeContexts.get()==0,"fatal cleanup");
  }
  FakeGpu.reset();try(Run r=new Run(true)){
   r.out.retainCodec();r.out.abort(new IllegalStateException("synthetic"));on(r.worker,()->{});ok(r.callback.failed==1&&!r.callback.failedWhileWindowConnected,"explicit abort disconnects before failure");
   ok(!r.callback.input.texture.released,"nonconsumer abort preserves owned input");r.emit(1);r.tick();ok(FakeGpu.pbufferUpdates.get()==1&&FakeGpu.swapped.get()==0,"aborted input drains safely until codec release");
   r.out.abort(new IllegalStateException("second"));on(r.worker,()->{});ok(r.callback.failed==1,"failure delivered once");r.out.releaseCodec();
  }
  FakeGpu.reset();try(Run r=new Run(true)){
   r.emit(1);r.out.setFormat(1920,720,60);r.tick();ok(FakeGpu.swapped.get()==0&&number(r.out,"staleStamps")==1,"already-pending previous codec frame cannot flash after same-format reconfigure");
   r.emit(2);r.tick();ok(FakeGpu.swapped.get()==1,"post-configure timestamp renders");
   CountDownLatch blocked=new CountDownLatch(1),release=new CountDownLatch(1);r.worker.post(()->{blocked.countDown();try{release.await();}catch(InterruptedException e){throw new AssertionError(e);}});if(!blocked.await(1,TimeUnit.SECONDS))throw new AssertionError("worker barrier");
   r.callback.input.texture.emit(r.stamp(3));r.out.setFormat(1280,480,30);release.countDown();on(r.worker,()->{});r.tick();ok(FakeGpu.swapped.get()==1&&number(r.out,"staleStamps")==2,"old listener delivered after configure cannot re-enable stale image");
   r.emit(4);r.tick();ok(FakeGpu.swapped.get()==2,"new listener resumes after delayed stale event");
  }
  for(boolean same:new boolean[]{false,true}){
   FakeGpu.reset();try(Run r=new Run(true)){
    FakeGpu.blockUpdate=true;r.emit(1);r.worker.post(r.worker::runNextDisplayTimer);await(()->FakeGpu.blockedUpdates.get()==1,"update in flight");
    Surface owned=r.callback.input;long start=System.nanoTime();r.out.setFormat(same?1920:1280,same?720:480,same?60:30);ok(System.nanoTime()-start<100000000L,"format change does not wait on update");
    FakeGpu.releaseUpdate();on(r.worker,()->{});ok(FakeGpu.swapped.get()==0,"old generation consumed image not drawn after format change same="+same);ok(owned==r.callback.input&&!owned.texture.released,"format change preserves codec Surface ownership");
    r.emit(2);r.tick();ok(FakeGpu.swapped.get()==1,"new generation renders same="+same);
   }
  }
  FakeGpu.reset();try(Run r=new Run(true)){
   r.out.retainCodec();FakeGpu.blockSwap=true;r.emit(1);r.worker.post(r.worker::runNextDisplayTimer);await(()->FakeGpu.blockedSwaps.get()==1,"swap blocked");long start=System.nanoTime();r.out.close();ok(System.nanoTime()-start<100000000L,"close caller not blocked by driver");ok(!r.callback.input.texture.released,"blocked worker cannot release live codec input");ok(E01DisplayClock.leases.containsKey(r.out),"clock stays acquired until blocked old window has retired");
   FakeGpu.releaseSwap();on(r.worker,()->{});ok(FakeGpu.activeWindows.get()==0&&!r.callback.input.texture.released,"retirement follows existing swap, retains input");ok(!E01DisplayClock.leases.containsKey(r.out),"retired window releases clock");ok("06Link-direct-oes".equals(E01DisplayClock.releaseThreads.get(r.out)),"clock restore scheduled by GL owner, not UI caller");r.out.releaseCodec();
  }
  FakeGpu.reset();try(Run r=new Run(true)){
   r.out.retainCodec();CountDownLatch blocked=new CountDownLatch(1),release=new CountDownLatch(1);
   r.worker.post(()->{blocked.countDown();try{release.await();}catch(InterruptedException e){throw new AssertionError(e);}});if(!blocked.await(1,TimeUnit.SECONDS))throw new AssertionError("codec release worker barrier");
   r.out.releaseCodec();ok(E01DisplayClock.leases.containsKey(r.out),"last codec release does not race pending GL commands");
   r.out.retainCodec();r.out.setFormat(1920,720,60);release.countDown();on(r.worker,()->{});
   ok(E01DisplayClock.leases.containsKey(r.out),"reconfigured live codec cancels stale clock release");
   r.out.releaseCodec();on(r.worker,()->{});ok(!E01DisplayClock.leases.containsKey(r.out),"idle nonclosing window releases clock after queue drain");
  }
  FakeGpu.reset();try(Run old=new Run(true)){
   old.out.retainCodec();old.out.close();on(old.worker,()->{});ok(FakeGpu.activeWindows.get()==0,"old held generation disconnects window");
   try(Run fresh=new Run(true)){
    ok(FakeGpu.activeContexts.get()==2&&FakeGpu.activeWindows.get()==1,"new window may start while old codec keeps drain context");
    old.out.releaseCodec();await(()->old.callback.input.texture.released,"old ref releases input while new bridge runs");await(()->FakeGpu.activeContexts.get()==1,"old context removed");ok(FakeGpu.activeContexts.get()==1&&FakeGpu.activeWindows.get()==1,"old teardown preserves new context/window");
    fresh.emit(1);fresh.tick();ok(FakeGpu.swapped.get()==1&&!fresh.callback.input.texture.released,"new generation still renders after old cleanup");
   }
  }
  FakeGpu.reset();FakeGpu.es3=false;try(Run r=new Run(true)){r.emit(1);r.tick();ok(FakeGpu.swapped.get()==1&&FakeGpu.finishes.get()==0,"single ES2 context needs no per-frame finish");}
  FakeGpu.reset();FakeGpu.failInit=true;Callback cb=new Callback();E01GlOutput invalid=new E01GlOutput(new Context(),new Surface(),cb);await(()->cb.failed==1,"startup failure");await(()->FakeGpu.activeContexts.get()==0,"startup cleanup");ok(cb.ready==0&&!cb.failedWhileWindowConnected,"failed startup never publishes input or connected fallback");invalid.close();
  FakeGpu.reset();FakeGpu.failInitialize=true;Callback initFail=new Callback();E01GlOutput uninitialized=new E01GlOutput(new Context(),new Surface(),initFail);await(()->initFail.failed==1,"initialize false failure");Thread initWorker=(Thread)field(uninitialized,"workerThread");initWorker.join(1000);ok(!initWorker.isAlive()&&FakeGpu.activeContexts.get()==0,"failed eglInitialize exits without context");ok(FakeGpu.terminateCalls.get()==0,"failed initialize does not decrement another display owner reference");
  FakeGpu.reset();Handler.manualDisplayTimers=true;for(int n=0;n<20;n++){E01GlOutput x=new E01GlOutput(new Context(),new Surface(),new Callback());x.close();}
  await(()->FakeGpu.activeContexts.get()==0&&FakeGpu.activeWindows.get()==0&&FakeGpu.activePbuffers.get()==0,"rapid init-close cleanup");Thread.sleep(80);long live=Thread.getAllStackTraces().keySet().stream().filter(t->t.isAlive()&&t.getName().equals("06Link-direct-oes")).count();ok(live==0,"rapid creation leaves no workers");Handler.manualDisplayTimers=false;
  System.out.println("PASS "+checks+" OES production lifecycle/format/unique-frame/event-scheduling checks (actual source, fake EGL; not device FPS)");
 }
}
