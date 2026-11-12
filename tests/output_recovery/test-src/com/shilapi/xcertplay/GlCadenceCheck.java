package com.shilapi.xcertplay;
import android.content.Context;import android.opengl.*;import android.view.*;import android.os.Handler;
import java.lang.reflect.*;import java.util.concurrent.*;import java.util.function.BooleanSupplier;
/** Actual production class, explicit one-shot VSync and controllable producer GPU completion. */
public final class GlCadenceCheck {
 static int checks;static long pts;static final long START=1000000000L,PERIOD=16666667L;
 static void ok(boolean b,String m){checks++;if(!b)throw new AssertionError(m);}
 static Object field(Object o,String n)throws Exception{Field f=o.getClass().getDeclaredField(n);f.setAccessible(true);return f.get(o);}
 static long number(E01GlOutput o,String n)throws Exception{synchronized(o.lock){return ((Number)field(o,n)).longValue();}}
 static void await(BooleanSupplier p,String m)throws Exception{long end=System.nanoTime()+3000000000L;while(!p.getAsBoolean()&&System.nanoTime()<end)Thread.sleep(1);if(!p.getAsBoolean())throw new AssertionError("timeout "+m);}
 static FutureTask<Void> post(Handler h,Runnable r){FutureTask<Void> t=new FutureTask<>(r,null);h.post(t);return t;}
 static void on(Handler h,Runnable r)throws Exception{post(h,r).get(3,TimeUnit.SECONDS);}
 static final class Run implements E01GlOutput.Callback,AutoCloseable {
  volatile Surface input;volatile Throwable fail;final E01GlOutput out;final Handler display,consumer;final Choreographer choreographer;
  Run(int rate)throws Exception{FakeGpu.reset();Choreographer.manual=true;out=new E01GlOutput(new Context(),new Surface(),this);out.setFormat(1920,720,rate);await(()->input!=null||fail!=null,"start");if(fail!=null)throw new AssertionError(fail);display=(Handler)field(out,"display");consumer=(Handler)field(out,"consumer");on(display,()->{});choreographer=(Choreographer)field(out,"choreographer");}
  public void ready(Surface s){input=s;}public void failed(Throwable t){fail=t;}
  void emit()throws Exception{int n=FakeGpu.consumed.get();input.texture.emit(++pts);await(()->FakeGpu.consumed.get()>n,"consume input");on(consumer,()->{});if(fail!=null)throw new AssertionError(fail);}
  FutureTask<Void> pulseAsync(long t){return post(display,()->choreographer.pulse(t));}
  void pulse(long t)throws Exception{pulseAsync(t).get(3,TimeUnit.SECONDS);if(fail!=null)throw new AssertionError(fail);}
  public void close()throws Exception{FakeGpu.releaseProducerPoll();FakeGpu.releaseSwap();FakeGpu.releaseFences();out.close();await(()->FakeGpu.activeContexts.get()==0,"close");ok(FakeGpu.hazards.get()==0,"no GPU/fence ownership violation");}
 }
 static E01GlOutput.Slot oldest(E01GlOutput o){E01GlOutput.Slot target=null;synchronized(o.lock){for(E01GlOutput.Slot s:o.slots)if(s.sequence>0&&(target==null||s.sequence<target.sequence))target=s;}return target;}
 static E01GlOutput.Slot newest(E01GlOutput o){E01GlOutput.Slot target=null;synchronized(o.lock){for(E01GlOutput.Slot s:o.slots)if(s.sequence>0&&(target==null||s.sequence>target.sequence))target=s;}return target;}
 static void generationDuringSelection(boolean same)throws Exception{
  try(Run r=new Run(60)){
   r.emit();E01GlOutput.Slot protectedSlot=newest(r.out);long protectedFence=protectedSlot.producedFence;
   FakeGpu.blockProducerPoll=true;FutureTask<Void> pulse=r.pulseAsync(START);await(()->FakeGpu.producerPollBlocked.get()>0,"display pauses in zero-time probe");
   ok(protectedSlot.state==E01GlOutput.SELECTING,"SELECTING reserves candidate during outside-lock probe");
   FakeGpu.holdProducerFences=true;for(int i=0;i<8;i++)r.emit();
   ok(protectedSlot.producedFence==protectedFence,"consumer cannot overwrite/delete SELECTING producer fence");
   ok(FakeGpu.consumed.get()==9,"consumer keeps draining while display is preempted selecting");
   r.out.setFormat(same?1920:1280,same?720:480,same?60:30);FakeGpu.releaseProducerPoll();pulse.get(3,TimeUnit.SECONDS);
   ok(FakeGpu.swapped.get()==0,(same?"same":"changed")+" format invalidates selected generation before draw");
   for(E01GlOutput.Slot s:r.out.slots)ok(s.state!=E01GlOutput.SELECTING,"selection reservations released after invalidation");
   FakeGpu.holdProducerFences=false;FakeGpu.releaseFences();r.emit();r.pulse(START+4*PERIOD);
   ok(FakeGpu.swapped.get()==1,"new-generation output works after invalidated selection");
  }
 }
 public static void main(String[]args)throws Exception{
  try(Run r=new Run(60)){
   r.emit();E01GlOutput.Slot completed=newest(r.out);long doneSeq=completed.sequence;
   FakeGpu.holdProducerFences=true;r.emit();E01GlOutput.Slot pending=newest(r.out);long pendingSeq=pending.sequence,pendingFence=pending.producedFence;
   r.pulse(START);ok(number(r.out,"lastPresentedSequence")==doneSeq,"selects older GPU-complete frame while newer remains pending");
   ok(FakeGpu.waitIncomplete.get()==0,"does not enqueue display dependency on unfinished producer");
   ok(pending.producedFence==pendingFence,"newer pending candidate keeps fence ownership");
   r.pulse(START+PERIOD);ok(FakeGpu.swapped.get()==1,"all remaining copies pending: no duplicate/no blocking swap");
   FakeGpu.signal(pendingFence);r.pulse(START+2*PERIOD);ok(number(r.out,"lastPresentedSequence")==pendingSeq,"newest is displayed after producer completes");
   r.pulse(START+3*PERIOD);ok(FakeGpu.swapped.get()==2,"no old completed frame replay after newer output");
  }
  try(Run r=new Run(60)){
   FakeGpu.holdProducerFences=true;for(int i=0;i<120;i++)r.emit();
   ok(FakeGpu.consumed.get()==120,"GPU stall never stops SurfaceTexture consumption");
   ok(FakeGpu.producerCommands.get()<=3,"three unfinished producer slots bound GPU copy submissions");
   ok(FakeGpu.fenceCount()<=3,"unfinished producer fences retained, no fence replacement queue");
   E01GlOutput.Slot onlyComplete=oldest(r.out);long sequence=onlyComplete.sequence,fence=onlyComplete.producedFence;FakeGpu.signal(fence);
   int copies=FakeGpu.copied.get();r.emit();ok(onlyComplete.sequence==sequence&&onlyComplete.producedFence==0&&onlyComplete.state==E01GlOutput.READY,"retains sole completed fallback instead of replacing with unfinished copy");
   ok(FakeGpu.copied.get()==copies,"no extra copy while preserving sole complete slot plus two pending");
   r.pulse(START);ok(number(r.out,"lastPresentedSequence")==sequence,"preserved complete fallback reaches display");
   r.emit();ok(FakeGpu.copied.get()==copies+1,"returned display slot permits producer progress");
   ok(FakeGpu.waitIncomplete.get()==0,"bounded producer never forces display waiting on incomplete copy");
  }
  try(Run r=new Run(60)){
   r.emit();r.emit();long newest=newest(r.out).sequence;r.pulse(START);
   ok(number(r.out,"lastPresentedSequence")==newest,"multiple completed candidates select newest");
   r.pulse(START+PERIOD);ok(FakeGpu.swapped.get()==1,"older completed candidate never replayed");
  }
  try(Run r=new Run(60)){
   FakeGpu.holdProducerFences=true;r.emit();r.emit();r.emit();int initial=FakeGpu.copied.get();
   for(int n=0;n<8;n++){
    r.out.setFormat(n%2==0?1280:1920,n%2==0?480:720,60);
    for(E01GlOutput.Slot slot:r.out.slots)ok(slot.state==E01GlOutput.STALE&&slot.producedFence!=0,"old unfinished copy remains STALE across configure");
    r.emit();
   }
   ok(FakeGpu.copied.get()==initial,"repeated format changes cannot bypass unfinished GPU copy bound");
   r.pulse(START);ok(FakeGpu.swapped.get()==0,"old STALE generation is never displayed");
   E01GlOutput.Slot reusable=oldest(r.out);FakeGpu.signal(reusable.producedFence);r.emit();
   ok(FakeGpu.copied.get()==initial+1,"signaled STALE is reclaimed for new generation");
   ok(reusable.state==E01GlOutput.READY,"reclaimed STALE produces current READY");
   r.out.setFormat(1920,720,60);r.emit();ok(FakeGpu.copied.get()==initial+1,"same-format reset cannot recycle replacement before completion");
   ok(FakeGpu.fenceCount()==3,"generation changes retain only three current producer fences");
  }
  ok(FakeGpu.fenceCount()==0,"close after no-frame repeated configure releases stale fences");
  generationDuringSelection(false);generationDuringSelection(true);
  try(Run r=new Run(60)){
   r.emit();FakeGpu.blockProducerPoll=true;FutureTask<Void> pulse=r.pulseAsync(START);await(()->FakeGpu.producerPollBlocked.get()>0,"close race selection active");
   long start=System.nanoTime();r.out.close();ok(System.nanoTime()-start<100000000L,"close returns without waiting for SELECTING probe");
   FakeGpu.releaseProducerPoll();pulse.get(3,TimeUnit.SECONDS);await(()->FakeGpu.activeContexts.get()==0,"selection close resource cleanup");
   ok(FakeGpu.swapped.get()==0,"closing bridge does not draw reserved candidate");ok(FakeGpu.fenceCount()==0,"close during selection deletes every fence");
  }
  try(Run r=new Run(60)){
   r.emit();FakeGpu.failProducerPoll=true;r.pulseAsync(START).get(3,TimeUnit.SECONDS);await(()->r.fail!=null,"producer poll failure callback");await(()->FakeGpu.activeContexts.get()==0,"failed poll cleanup");
   ok(FakeGpu.swapped.get()==0,"GL_WAIT_FAILED never renders uncertain texture");ok(FakeGpu.fenceCount()==0,"failed selection releases producer fences");ok(FakeGpu.textures.isEmpty(),"failed selection releases textures");
  }
  try(Run r=new Run(60)){
   r.emit();FakeGpu.blockSwap=true;FutureTask<Void> pulse=r.pulseAsync(START);await(()->FakeGpu.blockedSwaps.get()>0,"swap blocked");
   ok(r.choreographer.pending(),"next one-shot VSync requested before blocking swap");
   FakeGpu.releaseSwap();pulse.get(3,TimeUnit.SECONDS);ok(r.choreographer.pending(),"exactly one following callback remains registered");
  }
  for(int rate:new int[]{30,60})try(Run r=new Run(rate)){
   for(int i=0;i<60;i++){r.emit();r.pulse(START+i*PERIOD);}
   ok(FakeGpu.swapped.get()==rate,"steady completion on60Hz obeys selected "+rate+"fps");
  }
  System.out.println("PASS "+checks+" GL completion/cadence/SELECTING checks (production class, manual one-shot pulses; not physical FPS)");
 }
}
