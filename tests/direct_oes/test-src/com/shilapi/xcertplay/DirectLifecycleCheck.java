package com.shilapi.xcertplay;
import android.app.Activity;
import android.media.MediaCodec;
import android.opengl.FakeGpu;
import android.os.Build;
import android.view.Surface;
import android.view.SurfaceView;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/** Real direct route switches and output worker shutdown; no media hardware. */
public final class DirectLifecycleCheck {
 static int checks;
 static void ok(boolean value,String label){checks++;if(!value)throw new AssertionError(label);}
 static class Drain {
  volatile boolean running=true;MediaCodec decoder;
  Drain(MediaCodec c){decoder=c;}
  private void drainOutput(MediaCodec c){
   if(E01VideoOutput.intercept(this,c))return;
   MediaCodec.BufferInfo info=E01VideoOutput.info(c);
   while(running&&E01VideoOutput.active(c)){
    int i=E01SmoothVideo.take(c,info);if(i<0)return;
    if(!E01VideoOutput.active(c)){c.releaseOutputBuffer(i,false);return;}
    E01SmoothVideo.release(c,i,true,info);
   }
  }
 }
 static void await(CountDownLatch latch,String label)throws Exception{ok(latch.await(2,TimeUnit.SECONDS),label);}
 static SurfaceView currentView(DirectCapCheck.Run r)throws Exception{GlBindingCheck.ui(()->{});return (SurfaceView)r.frame.child;}
 static void create(SurfaceView view)throws Exception{GlBindingCheck.ui(()->view.holder.callback.surfaceCreated(view.holder));}
 static void destroy(SurfaceView view)throws Exception{GlBindingCheck.ui(()->view.holder.callback.surfaceDestroyed(view.holder));}
 public static void main(String[] args)throws Exception {
  Build.MODEL="E01";Build.DEVICE="BX11QJ";Build.VERSION.SDK_INT=22;FakeGpu.reset();
  // A 30/60 transition changes native windows, never double-connects EGL and codec producers.
  try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   Surface original=r.owner.currentSurface;
   E01SmoothVideo.negotiatedFps(r.owner,30);SurfaceView thirty=currentView(r);
   ok(thirty!=r.view&&r.owner.currentSurface==null,"60 to 30 replaces holder after detaching old decoder target");
   E01SmoothVideo.releaseSurface(original);ok(original.released==0,"late Activity release cannot manually release retired holder-owned Surface");
   try{E01SmoothVideo.configure(new MediaCodec(),DirectCapCheck.format(),original,true);throw new AssertionError("retired direct window accepted");}catch(IllegalStateException expected){checks++;}
   create(thirty);GlCheck.await(()->r.owner.currentSurface!=null,"30fps GL target attaches");Surface glInput=r.owner.currentSurface;
   ok(glInput!=thirty.holder.surface&&E01SmoothVideo.OUTPUTS.get(glInput).gl!=null,"30fps replacement uses existing GL path");
   MediaCodec glCodec=new MediaCodec();E01SmoothVideo.configure(glCodec,DirectCapCheck.format(),glInput,true);
   ok(!E01SmoothVideo.STATES.get(glCodec).directCap4&&E01SmoothVideo.STATES.get(glCodec).output.fps==30,"30fps GL is not subject to cap4 policy");
   destroy(r.view);ok(r.owner.currentSurface==glInput,"late old holder destroy cannot detach replacement");
   E01SmoothVideo.negotiatedFps(r.owner,60);SurfaceView sixty=currentView(r);create(sixty);
   ok(sixty!=thirty&&r.owner.currentSurface==sixty.holder.surface,"30 to 60 creates a fresh native output window");
   MediaCodec direct=new MediaCodec();E01SmoothVideo.configure(direct,DirectCapCheck.format(),r.owner.currentSurface,true);
   E01VideoOutput.release(glCodec);GlCheck.await(()->glInput.texture.released,"old GL input released after old codec");
   ok(E01SmoothVideo.STATES.get(direct).directCap4&&E01DisplayClock.leases.containsKey(E01SmoothVideo.STATES.get(direct).directClock),"new 60 direct owner survives old GL teardown");
   destroy(thirty);ok(r.owner.currentSurface==sixty.holder.surface,"old GL holder destroy preserves new direct target");
   E01VideoOutput.release(direct);destroy(sixty);
  }
  GlCheck.await(()->FakeGpu.activeContexts.get()==0,"transition GL resources reclaimed");
  // A live display60 option change needs a route refresh even when smooth mode did not change.
  try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   ok(!E01SmoothVideo.recreateIfNeeded(r.owner)&&currentView(r)==r.view,"return with unchanged settings keeps current holder");
   E01DisplayClock.enabled=false;
   ok(!E01SmoothVideo.recreateIfNeeded(r.owner)&&r.owner.recreates==0,"display clock toggle does not recreate the whole Activity");
   SurfaceView disabled=currentView(r);ok(disabled!=r.view,"disabling display60 then returning replaces native direct holder");
   create(disabled);GlCheck.await(()->r.owner.currentSurface!=null,"display60-off GL target attaches");Surface input=r.owner.currentSurface;
   ok(E01SmoothVideo.OUTPUTS.get(input).gl!=null,"display60-off returns to GL rather than leaving direct output at system 30Hz");
   MediaCodec glCodec=new MediaCodec();E01SmoothVideo.configure(glCodec,DirectCapCheck.format(),input,true);
   E01SmoothVideo.recreateIfNeeded(r.owner);ok(currentView(r)==disabled,"repeat return while option is off does not rebuild the GL holder");
   E01DisplayClock.enabled=true;E01SmoothVideo.recreateIfNeeded(r.owner);SurfaceView enabled=currentView(r);
   ok(enabled!=disabled,"reenabling display60 then returning creates native candidate holder");create(enabled);
   MediaCodec direct=new MediaCodec();E01SmoothVideo.configure(direct,DirectCapCheck.format(),r.owner.currentSurface,true);
   ok(r.owner.currentSurface==enabled.holder.surface&&E01SmoothVideo.STATES.get(direct).directCap4,"reenabled setting selects direct cap4 without reconnecting or changing selected FPS");
   E01SmoothVideo.recreateIfNeeded(r.owner);ok(currentView(r)==enabled&&r.owner.recreates==0,"repeat return while enabled keeps holder and Activity");
   E01VideoOutput.release(glCodec);GlCheck.await(()->input.texture.released,"settings-route old GL producer cleanup");
   E01VideoOutput.release(direct);destroy(enabled);destroy(disabled);
  }
  GlCheck.await(()->FakeGpu.activeContexts.get()==0,"settings-route GL resources reclaimed");
  // Returning to settings must not turn a transient full input cap into permanent GL fallback.
  try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   r.fill();r.state.capBlockedSince=System.nanoTime()-500000000L;E01VideoVisibility.paused.add(r.owner);E01DirectOutputClock.refresh(r.owner);
   E01SmoothVideo.inputEnd(r.codec);ok(!r.state.retired&&!Boolean.TRUE.equals(E01SmoothVideo.GL_FALLBACK.get(r.owner)),"background cap timeout cannot switch rendering route");
   E01VideoVisibility.paused.remove(r.owner);E01DirectOutputClock.refresh(r.owner);E01SmoothVideo.inputEnd(r.codec);
   SurfaceView fallback=currentView(r);ok(r.state.retired&&r.state.inFlight.pending()==0&&fallback!=r.view,"real foreground stall releases credits and replaces direct window");
   create(fallback);GlCheck.await(()->r.owner.currentSurface!=null,"timeout GL fallback attaches");Surface input=r.owner.currentSurface;
   ok(E01SmoothVideo.OUTPUTS.get(input).gl!=null&&input!=fallback.holder.surface,"fallback uses fresh GL input, not the old decoder native window");destroy(fallback);
  }
  GlCheck.await(()->FakeGpu.activeContexts.get()==0,"timeout fallback cleanup");
  // Shutdown drops the direct display lease immediately, but native codec calls still own cleanup.
  try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   r.fill();Drain owner=new Drain(r.codec);r.codec.releaseEntered=new CountDownLatch(1);r.codec.releaseResume=new CountDownLatch(1);r.codec.add(0,r.codec.inputPts.get(0),0);owner.drainOutput(r.codec);
   await(r.codec.releaseEntered,"native direct release entered");E01VideoOutput.release(r.codec);
   ok(r.state.retired&&r.state.inFlight.pending()==0&&E01DisplayClock.leases.isEmpty(),"slow native shutdown immediately withdraws direct credits and clock owner");
   ok(r.codec.releases==0&&r.codec.stops==0,"native codec lifetime retained while releaseOutput is still in flight");
   r.codec.releaseResume.countDown();GlCheck.await(()->r.codec.releases==1,"deferred direct cleanup");
   ok(r.codec.stops==1&&!E01SmoothVideo.STATES.containsKey(r.codec),"native cleanup finishes exactly once after native return");
  }
  // Output error selects a new GL surface while preserving the exception for the original recovery owner.
  try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   Drain owner=new Drain(r.codec);RuntimeException failure=new IllegalStateException("synthetic direct native failure");r.codec.outputFailure=failure;owner.drainOutput(r.codec);
   GlCheck.await(()->r.state.retired,"output error retires direct route");
   // Retirement precedes posting the replacement to the UI queue. Wait for that
   // separately; observing retired does not mean the worker has posted it yet.
   long replacementDeadline=System.nanoTime()+TimeUnit.SECONDS.toNanos(3);
   SurfaceView fallback=currentView(r);
   while(fallback==r.view&&System.nanoTime()<replacementDeadline){Thread.sleep(1);fallback=currentView(r);}
   ok(fallback!=r.view,"native output failure creates replacement surface generation");
   try{owner.drainOutput(r.codec);throw new AssertionError("output error swallowed");}catch(RuntimeException error){ok(error==failure,"original native error still reaches existing recovery owner");}
   create(fallback);GlCheck.await(()->r.owner.currentSurface!=null,"error GL fallback attaches");destroy(fallback);
  }
  GlCheck.await(()->FakeGpu.activeContexts.get()==0,"error fallback cleanup");
  // stopping() is direct-only: GL input must survive until the native producer finishes.
  try(GlCheck.Run gl=new GlCheck.Run()){
   Activity activity=new Activity();Surface input=gl.callback.input;E01SmoothVideo.OWNED_INPUTS.put(input,Boolean.TRUE);E01SmoothVideo.OUTPUTS.put(input,new E01SmoothVideo.Output(activity,60,true,gl.out));E01SmoothVideo.negotiatedFps(activity,60);
   MediaCodec codec=new MediaCodec();codec.queued=true;E01SmoothVideo.configure(codec,GlIntegrationCheck.format(),input,true);Drain owner=new Drain(codec);codec.releaseEntered=new CountDownLatch(1);codec.releaseResume=new CountDownLatch(1);codec.add(0,1,0);owner.drainOutput(codec);await(codec.releaseEntered,"GL native release entered");
   gl.out.close();E01VideoOutput.release(codec);ok(!input.texture.released&&codec.releases==0,"direct stopping hook does not prematurely drop GL codec ownership");
   codec.releaseResume.countDown();GlCheck.await(()->codec.releases==1&&input.texture.released,"GL codec producer and input cleanup remain ordered");
   ok(codec.stops==1&&FakeGpu.hazards.get()==0,"no GL lifetime regression from new direct stop hook");
  }
  ok(E01DisplayClock.leases.isEmpty(),"route/error/slow-stop cases leave no clock lease");
  System.out.println("PASS "+checks+" direct route/timeout/foreground/error/deferred-native-stop/GL-ownership checks (fake Android/EGL)");
 }
}
