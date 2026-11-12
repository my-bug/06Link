package com.shilapi.xcertplay;
import android.app.Activity;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.opengl.FakeGpu;
import android.os.Build;
import android.view.Surface;
import android.view.SurfaceView;
import android.widget.FrameLayout;

/** Actual bridge input/output hooks. The fake codec never decodes pixels. */
public final class DirectCapCheck {
 static int checks;
 static void ok(boolean value,String label){checks++;if(!value)throw new AssertionError(label);}
 static class Decoder { MediaCodec decoder;boolean running=true;long e01ReceivedNs=System.nanoTime();Decoder(MediaCodec c){decoder=c;} }
 static MediaFormat format(){MediaFormat f=new MediaFormat();f.setInteger("width",1920);f.setInteger("height",720);f.setString("mime","video/avc");return f;}
 static final class Run implements AutoCloseable {
  final IntegrationCheck.Owner owner=new IntegrationCheck.Owner();final MediaCodec codec=new MediaCodec();final Decoder decoder=new Decoder(codec);FrameLayout frame;SurfaceView view;E01SmoothVideo.State state;
  Run()throws Exception{
   owner.getSharedPreferences(E01SmoothVideo.PREF,0).values.put("smooth",true);IntegrationCheck.prefs(owner,60);E01SmoothVideo.negotiatedFps(owner,60);codec.queued=true;
   GlBindingCheck.ui(()->{frame=(FrameLayout)E01SmoothVideo.create(owner);owner.videoView=frame;view=(SurfaceView)frame.child;view.holder.callback.surfaceCreated(view.holder);});
   E01SmoothVideo.configure(codec,format(),owner.currentSurface,true);state=E01SmoothVideo.STATES.get(codec);
  }
  long feed(byte[] bytes){int index=E01SmoothVideo.dequeueInput(codec);if(index<0)throw new AssertionError("no input credit");long pts=E01SmoothVideo.presentation(decoder,bytes);E01SmoothVideo.queueInput(codec,index,0,bytes.length,pts,0);return pts;}
  void fill(){for(int i=0;i<4;i++)feed(DirectInFlightCheck.DELTA);}
  public void close()throws Exception{decoder.running=false;decoder.decoder=null;if(codec.releases==0)E01VideoOutput.release(codec);GlBindingCheck.ui(()->view.holder.callback.surfaceDestroyed(view.holder));E01SmoothVideo.releaseSurface(view.holder.surface);}
 }
 public static void main(String[] args)throws Exception {
  Build.MODEL="E01";Build.DEVICE="BX11QJ";Build.VERSION.SDK_INT=22;FakeGpu.reset();
  try(Run r=new Run()){
   ok(r.owner.currentSurface==r.view.holder.surface&&r.state.directCap4&&r.state.output.gl==null,"eligible E01/AVC/60 session binds decoder directly to holder");
   ok(FakeGpu.activeContexts.get()==0&&E01SmoothVideo.dedicated(r.codec),"direct path creates no GL conversion context and retains output worker");
   long config=r.feed(DirectInFlightCheck.CONFIG);ok(r.state.inFlight.pending()==0,"submitted codec config consumes no picture credit");
   long[] pts=new long[4];for(int i=0;i<4;i++)pts[i]=r.feed(DirectInFlightCheck.DELTA);
   ok(r.state.inFlight.pending()==4&&r.state.capMax==4&&r.codec.inputPts.size()==5,"four picture inputs admitted after configuration");
   int nativeCalls=r.codec.inputCalls;long before=System.nanoTime();int blocked=E01SmoothVideo.dequeueInput(r.codec);long elapsed=System.nanoTime()-before;
   ok(blocked==-1&&r.codec.inputCalls==nativeCalls&&r.state.inFlight.pending()==4,"fifth picture yields retry without native input or compressed-frame discard");
   ok(elapsed>=1000000L&&elapsed<250000000L&&r.state.capPolls==1,"full-cap retry yields briefly rather than spinning or blocking output owner");
   MediaCodec.BufferInfo info=new MediaCodec.BufferInfo();
   r.codec.add(-2,0,0);ok(E01SmoothVideo.take(r.codec,info)==-2&&r.state.inFlight.pending()==4,"format event preserved without fake credit");
   r.codec.add(90,config,2);ok(E01SmoothVideo.take(r.codec,info)==90&&r.state.inFlight.pending()==4,"configuration output creates no picture credit");E01SmoothVideo.release(r.codec,90,false,info);
   r.codec.add(91,999,0);E01SmoothVideo.take(r.codec,info);ok(r.state.inFlight.pending()==4,"unknown output PTS cannot bypass cap");E01SmoothVideo.release(r.codec,91,false,info);
   long past=System.nanoTime()-1000000000L;for(long p:pts)r.state.entries.put(p,new E01SmoothVideo.Entry(past,past));
   r.codec.add(1,pts[0],0);r.codec.add(2,pts[1],0);int index=E01SmoothVideo.take(r.codec,info);
   ok(index==1&&info.presentationTimeUs==pts[0]&&r.state.inFlight.pending()==3&&r.state.skipped==0,"missing received timestamp cannot authorize direct decoded-frame discard");
   before=System.nanoTime();E01SmoothVideo.release(r.codec,index,true,info);long after=System.nanoTime();
   ok(r.codec.target>=before&&r.codec.target<=after&&r.state.immediateTargets==1,"direct output uses explicit monotonic now without future pacing delay");
   ok(r.codec.falseReleases==2,"only explicit config/unknown releases discarded, picture was kept");
   long fifth=r.feed(DirectInFlightCheck.IDR);ok(r.state.inFlight.pending()==4&&r.codec.inputPts.contains(fifth),"decoded credit lets the same pending feed proceed");
   index=E01SmoothVideo.take(r.codec,info);E01SmoothVideo.release(r.codec,index,true,info);
   long failed=E01SmoothVideo.presentation(r.decoder,DirectInFlightCheck.DELTA);RuntimeException queueFailure=new IllegalStateException("synthetic queue failure");r.codec.queueFailure=queueFailure;
   try{E01SmoothVideo.queueInput(r.codec,0,0,6,failed,0);throw new AssertionError("queue error swallowed");}catch(RuntimeException error){ok(error==queueFailure,"queue error identity reaches original recovery owner");}
   r.codec.queueFailure=null;ok(r.state.inFlight.pending()==3&&!r.state.entries.containsKey(failed),"failed queue rolls back only its own reserved input PTS");
   RuntimeException inputFailure=new IllegalStateException("synthetic dequeue failure");r.codec.inputFailure=inputFailure;
   try{E01SmoothVideo.dequeueInput(r.codec);throw new AssertionError("input error swallowed");}catch(RuntimeException error){ok(error==inputFailure,"native input error remains visible when below cap");}r.codec.inputFailure=null;
   RuntimeException outputFailure=new IllegalStateException("synthetic output failure");r.codec.outputFailure=outputFailure;
   try{E01SmoothVideo.take(r.codec,info);throw new AssertionError("output error swallowed");}catch(RuntimeException error){ok(error==outputFailure,"native output error remains visible with cap bookkeeping");}r.codec.outputFailure=null;
   E01SmoothVideo.State old=r.state;E01SmoothVideo.configure(r.codec,format(),r.owner.currentSurface,true);r.state=E01SmoothVideo.STATES.get(r.codec);
   ok(old.retired&&old.inFlight.pending()==0&&r.state!=old&&r.state.inFlight.pending()==0,"reconfigure retires old credits and starts independent empty state");
   ok(!E01DisplayClock.leases.containsKey(old.directClock)&&E01DisplayClock.leases.containsKey(r.state.directClock),"reconfigure transfers clock ownership without leaving old lease");
   r.fill();Thread.currentThread().interrupt();ok(E01SmoothVideo.dequeueInput(r.codec)==-1&&Thread.interrupted(),"cap retry retains cancellation interrupt for existing pump");
   r.decoder.running=false;r.state.capBlockedSince=System.nanoTime()-500000000L;E01SmoothVideo.inputEnd(r.codec);
   ok(!r.state.retired,"stopped decoder cannot request route change from old input timeout");
   r.decoder.running=true;r.decoder.decoder=new MediaCodec();E01SmoothVideo.inputEnd(r.codec);
   ok(!r.state.retired,"replaced decoder cannot request fallback on behalf of current session");r.decoder.decoder=r.codec;
  }
  ok(E01DisplayClock.leases.isEmpty(),"direct codec teardown leaves no display-clock owner");
  // Eligibility is tied to an actual native candidate, not merely an MTK name or cap contents.
  Activity tablet=new Activity();Surface legacy=new Surface();Build.MODEL="tablet";Build.DEVICE="tablet";
  E01SmoothVideo.OUTPUTS.put(legacy,new E01SmoothVideo.Output(tablet,60,true));MediaCodec other=new MediaCodec();E01SmoothVideo.configure(other,format(),legacy,true);E01SmoothVideo.State unbounded=E01SmoothVideo.STATES.get(other);
  for(int i=0;i<4;i++)unbounded.inFlight.queued(i,DirectInFlightCheck.IDR);
  ok(!unbounded.directCap4&&E01SmoothVideo.dequeueInput(other)==0&&other.inputTimeout==10000,"non-E01 codec remains on original input path regardless of credit contents");E01SmoothVideo.forget(other);
  Build.MODEL="E01";Build.DEVICE="BX11QJ";MediaCodec secondary=new MediaCodec();E01SmoothVideo.configure(secondary,format(),new Surface(),true);
  ok(!E01SmoothVideo.STATES.containsKey(secondary)&&E01SmoothVideo.dequeueInput(secondary)==0&&secondary.inputTimeout==10000,"unregistered cluster/secondary stream is unchanged");
  System.out.println("PASS "+checks+" direct cap4 input/output/PTS/reconfigure/error/cancel/eligibility checks (fake codec; not physical FPS)");
 }
}
