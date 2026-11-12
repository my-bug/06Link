package com.shilapi.xcertplay;
import android.content.Context;import android.opengl.*;import android.view.*;import android.os.Handler;
import java.lang.reflect.*;import java.util.concurrent.*;import java.util.function.BooleanSupplier;
/** Scheduler-only delta tests. Executes actual final production timer code, no device FPS claim. */
public final class TimerSchedulingCheck {
 static int checks;static long pts;
 static void ok(boolean p,String m){checks++;if(!p)throw new AssertionError(m);}
 static Field f(String n)throws Exception{Field f=E01GlOutput.class.getDeclaredField(n);f.setAccessible(true);return f;}
 static long value(E01GlOutput o,String n)throws Exception{return ((Number)f(n).get(o)).longValue();}
 static void await(BooleanSupplier p,String m)throws Exception{long end=System.nanoTime()+3000000000L;while(!p.getAsBoolean()&&System.nanoTime()<end)Thread.sleep(1);if(!p.getAsBoolean())throw new AssertionError("timeout "+m);}
 static FutureTask<Void> post(Handler h,Runnable r){FutureTask<Void> t=new FutureTask<>(r,null);h.post(t);return t;}
 static void on(Handler h,Runnable r)throws Exception{post(h,r).get(3,TimeUnit.SECONDS);}
 static final class Run implements E01GlOutput.Callback,AutoCloseable {
  final E01GlOutput out;final Handler display,consumer;volatile Surface input;volatile Throwable failure;
  Run(int rate)throws Exception{FakeGpu.reset();Handler.manualDisplayTimers=true;out=new E01GlOutput(new Context(),new Surface(),this);out.setFormat(1920,720,rate);await(()->input!=null||failure!=null,"ready");if(failure!=null)throw new AssertionError(failure);display=(Handler)f("display").get(out);consumer=(Handler)f("consumer").get(out);on(display,()->{});ok(display.pendingDisplayTimers()==1,"one initial delayed timer");}
  public void ready(Surface s){input=s;}public void failed(Throwable t){failure=t;}
  void emit()throws Exception{int n=FakeGpu.consumed.get();input.texture.emit(++pts);await(()->FakeGpu.consumed.get()>n,"consume");on(consumer,()->{});}
  void tick()throws Exception{on(display,display::runNextDisplayTimer);if(failure!=null)throw new AssertionError(failure);}
  public void close()throws Exception{FakeGpu.releaseSwap();FakeGpu.releaseFences();out.close();await(()->FakeGpu.activeContexts.get()==0,"close");ok(display.pendingDisplayTimers()==0,"close cancels delayed callback");ok(FakeGpu.fenceCount()==0,"timer close no fence leak");Handler.manualDisplayTimers=false;}
 }
 public static void main(String[]args)throws Exception {
  try(Run r=new Run(60)){
   long before=value(r.out,"callbacks");f("nextDisplayTickNs").setLong(r.out,System.nanoTime()-500000000L);r.tick();
   ok(value(r.out,"callbacks")==before+1,"500ms late timer executes once, no catch-up burst");
   ok(r.display.pendingDisplayTimers()==1,"overdue tick leaves only one future callback");
   long due=value(r.out,"nextDisplayTickNs"),now=System.nanoTime();
   ok(due>now-2000000L&&due-now<20000000L,"overdue absolute deadline advances near next60Hz period");
   ok(r.display.lastDisplayDelayMs()>0&&r.display.lastDisplayDelayMs()<=17,"next delayed message is bounded future interval");
  }
  try(Run r=new Run(60)){
   r.emit();FakeGpu.blockSwap=true;FutureTask<Void> running=post(r.display,r.display::runNextDisplayTimer);await(()->FakeGpu.blockedSwaps.get()>0,"swap blocked");
   ok(r.display.pendingDisplayTimers()==0,"running timer cannot accumulate extra catch-up jobs while swap blocked");
   r.out.close();FakeGpu.releaseSwap();running.get(3,TimeUnit.SECONDS);await(()->FakeGpu.activeContexts.get()==0,"close racing swap");
   ok(r.display.pendingDisplayTimers()==0,"close during draw does not rearm timer");
  }
  for(int rate:new int[]{30,60})try(Run r=new Run(rate)){
   // Execute scheduled ticks explicitly. Deadlines advance by actual production arithmetic;
   // artificial immediate execution tests cadence selection, not Handler real-time accuracy.
   f("nextDisplayTickNs").setLong(r.out,System.nanoTime()+1000000000L);
   boolean onePending=true;for(int n=0;n<60;n++){r.emit();r.tick();onePending&=r.display.pendingDisplayTimers()==1;}
   ok(onePending,"every steady tick has one next callback");
   ok(FakeGpu.swapped.get()==rate,"absolute60Hz deadlines respect "+rate+"fps selection");
  }
  try(Run r=new Run(60)){
   r.emit();FakeGpu.failSwap=true;on(r.display,r.display::runNextDisplayTimer);await(()->r.failure!=null,"swap failure callback");
   await(()->FakeGpu.activeContexts.get()==0,"swap failure cleanup");ok(r.display.pendingDisplayTimers()==0,"failed timer never rearms display job");
  }
  System.out.println("PASS "+checks+" absolute-timer scheduling/close/rate checks (controlled delayed messages, not physical FPS)");
 }
}
