package com.shilapi.xcertplay;
import android.app.Activity;
import android.media.*;
import android.view.Surface;
import java.util.*;
import com.shilapi.xcertplay.media.VideoJob;

/** Production helpers with fake Android APIs: lifecycle, timestamp, queue and logging checks. */
public final class RecoveryCheck {
 static int checks;
 static void ok(boolean value,String message){checks++;if(!value)throw new AssertionError(message);}
 static class Owner{MediaCodec decoder;Surface outputSurface;long e01ReceivedNs;Owner(MediaCodec c,Surface s){decoder=c;outputSurface=s;}}
 static void entry(E01SmoothVideo.State s,long pts,long age){long now=System.nanoTime();s.entries.put(pts,new E01SmoothVideo.Entry(now-age,now-age));}
 public static void main(String[] args){
  android.os.Build.MODEL="E01";android.os.Build.DEVICE="BX11QJ";
  Activity context=new Activity();Surface surface=new Surface();
  for(int fps:new int[]{30,60}){
   E01SmoothVideo.OUTPUTS.put(surface,new E01SmoothVideo.Output(context,fps,true));
   E01SmoothVideo.negotiatedFps(context,fps);
   MediaCodec c=new MediaCodec();Owner owner=new Owner(c,surface);MediaFormat initial=new MediaFormat();
   E01SmoothVideo.configure(c,initial,surface,E01MtkRuntime.allow(owner,true));
   ok(E01SmoothVideo.dedicated(c),"initial dedicated "+fps);
   ok(initial.values.containsKey("vdec-lowlatency"),"initial native key");
   E01MtkRuntime.onFailure(owner,surface,c,new IllegalStateException("synthetic failure"));
   ok(!E01MtkRuntime.allow(owner,true),"native mode retired");
   MediaCodec next=new MediaCodec();MediaFormat safe=new MediaFormat();
   E01SmoothVideo.configure(next,safe,surface,E01MtkRuntime.allow(owner,true));
   E01SmoothVideo.State state=E01SmoothVideo.STATES.get(next);
   ok(!safe.values.containsKey("vdec-lowlatency"),"native parameter stays retired");
   ok(E01SmoothVideo.dedicated(next),"dedicated output survives native failure");
   ok(state.output.fps==fps,"30/60 selection survives rebuild");
   E01SmoothVideo.dequeueInput(next);ok(next.inputTimeout==2000,"short input polling retained");
   long now=System.nanoTime();ok(E01SmoothVideo.limitTarget(state,now+140000000L,now)==now+16666667L,"future horizon retained");
   MediaCodec.BufferInfo info=new MediaCodec.BufferInfo();info.presentationTimeUs=42;
   entry(state,42,300000000L);long before=System.nanoTime();E01SmoothVideo.release(next,0,true,info);long after=System.nanoTime();
   ok(next.boolReleases==0&&next.timedReleases==1,"late output uses defined timestamp");
   ok(next.target>=before&&next.target<=after,"late timestamp is monotonic now");
   ok(state.immediateTargets==1,"late counter");
   E01SmoothVideo.release(next,1,true,info);ok(next.boolReleases==0&&next.timedReleases==2,"missing stamp uses explicit now");
   E01SmoothVideo.release(next,2,false,info);ok(next.falseReleases==1&&next.timedReleases==2,"discard never renders");
   long caps=state.cappedTargets;entry(state,43,0);info.presentationTimeUs=43;before=System.nanoTime();E01SmoothVideo.release(next,3,true,info);after=System.nanoTime();
   ok(next.target>=before&&next.target<=after+16666667L,"future target within horizon");
   ok(next.timedReleases==3&&state.cappedTargets==caps+1,"normal paced rendering retained timed="+next.timedReleases+" capped="+state.cappedTargets+" fps="+fps+" delay="+state.clock.delay());
  }
  E01SmoothVideo.OUTPUTS.put(surface,new E01SmoothVideo.Output(context,60,true));
  MediaCodec burst=new MediaCodec();burst.queued=true;E01SmoothVideo.configure(burst,new MediaFormat(),surface,true);
  E01SmoothVideo.State state=E01SmoothVideo.STATES.get(burst);entry(state,100,400000000L);entry(state,101,380000000L);
  burst.add(1,100,0);burst.add(2,101,0);MediaCodec.BufferInfo info=new MediaCodec.BufferInfo();
  int index=E01SmoothVideo.take(burst,info);ok(index==2&&state.decoded==2&&state.skipped==1,"late outputs counted before merge");
  E01SmoothVideo.release(burst,index,true,info);ok(state.outputCount==1&&burst.falseReleases==1,"render and skip stay distinct");
  entry(state,102,400000000L);burst.add(3,102,0);burst.add(4,103,4);
  index=E01SmoothVideo.take(burst,info);ok(index==3&&state.decoded==4,"EOS held while counted once");
  E01SmoothVideo.release(burst,index,true,info);index=E01SmoothVideo.take(burst,info);
  ok(index==4&&info.flags==4&&state.decoded==4,"held output does not double count");
  E01SmoothVideo.release(burst,index,false,info);
  burst.add(-2,0,0);ok(E01SmoothVideo.take(burst,info)==-2&&state.decoded==4,"format change not a decoded frame");
  context.getSharedPreferences(E01SmoothVideo.PREF,0).values.put("mtk",false);
  MediaCodec off=new MediaCodec();E01SmoothVideo.configure(off,new MediaFormat(),surface,true);
  ok(!E01SmoothVideo.dedicated(off),"disabled setting still honored");
  E01SmoothVideo.release(off,0,true,new MediaCodec.BufferInfo());ok(off.boolReleases==1,"disabled path unchanged");
  context.getSharedPreferences(E01SmoothVideo.PREF,0).values.put("mtk",true);
  MediaCodec qcom=new MediaCodec();qcom.name="OMX.qcom.video.decoder.avc";E01SmoothVideo.configure(qcom,new MediaFormat(),surface,true);
  ok(!E01SmoothVideo.dedicated(qcom),"non MTK excluded");
  MediaCodec cluster=new MediaCodec();E01SmoothVideo.configure(cluster,new MediaFormat(),new Surface(),true);
  ok(!E01SmoothVideo.STATES.containsKey(cluster),"cluster path not changed");
  E01SmoothVideo.release(cluster,0,true,new MediaCodec.BufferInfo());ok(cluster.boolReleases==1,"cluster release unchanged");

  // Production queue helper must discard only the obsolete chain, preserving the next config.
  List<Object> jobs=new ArrayList<Object>();Object config=new Object();
  jobs.add(new VideoJob.Frame(1));jobs.add(new VideoJob.Resync());jobs.add(new VideoJob.Frame(2));jobs.add(config);jobs.add(new VideoJob.Frame(3));
  E01BacklogRecovery.discardChain(new Object(),jobs);
  ok(jobs.size()==2&&jobs.get(0)==config,"recovery preserves config boundary and later frames");

  Owner owner=new Owner(burst,surface);E01VideoEvidence.begin(context,60);E01LogPolicy.messages.clear();
  IllegalStateException failure=new IllegalStateException("sensitive payload must not be logged");
  failure.setStackTrace(new StackTraceElement[]{new StackTraceElement("android.media.MediaCodec","dequeueOutputBuffer","MediaCodec.java",22)});
  for(int n=0;n<8;n++)E01VideoEvidence.failure(owner,failure);
  ok(E01LogPolicy.messages.size()==3,"failure records bounded to three per connection");
  String log=E01LogPolicy.messages.get(0);
  ok(log.contains("IllegalStateException")&&log.contains("dequeueOutputBuffer:22"),"API and type recorded");
  ok(!log.contains("sensitive payload"),"arbitrary exception messages excluded");
  E01VideoEvidence.begin(context,30);E01LogPolicy.messages.clear();E01VideoEvidence.failure(owner,failure);
  ok(E01LogPolicy.messages.size()==1,"new connection resets error quota");
  MediaCodec.CodecException codecError=new MediaCodec.CodecException("android.media.MediaCodec.error_neg_1010");
  String detail=E01VideoEvidence.failureSummary(codecError);ok(detail.contains("diagnostic=android.media.MediaCodec.error_neg_1010"),"vendor error code retained");
  Throwable chain=failure;for(int i=0;i<20;i++)chain=new IllegalStateException("private",chain);
  ok(E01VideoEvidence.failureSummary(chain).length()<=480,"bounded causes and length");
  E01LogPolicy.messages.clear();state.reportAt=System.nanoTime()-11000000000L;E01SmoothVideo.report(state,System.nanoTime());
  ok(E01LogPolicy.messages.size()==1&&E01LogPolicy.messages.get(0).contains("decodedFps=")&&E01LogPolicy.messages.get(0).contains("immediate="),"one compact rate summary");
  System.out.println("PASS "+checks+" recovery/timestamp/queue/logging checks (fake Android APIs, not physical FPS)");
 }
}
