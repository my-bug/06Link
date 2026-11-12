package com.shilapi.xcertplay;
import android.os.Build;import android.media.*;import android.app.*;import android.view.*;import java.util.*;
public class HorizonCheck{
 static int checks;static void ok(boolean v,String m){checks++;if(!v)throw new AssertionError(m);}
 static E01SmoothVideo.State state(int fps){E01SmoothVideo.State s=new E01SmoothVideo.State(new E01SmoothVideo.Output(new Activity(),fps,true));s.boundedRender=true;return s;}
 public static void main(String[] args){
  Build.MODEL="E01";Build.DEVICE="BX11QJ";
  ok(E01SmoothVideo.boundedDevice("OMX.MTK.VIDEO.DECODER.AVC",true),"E01 selection");
  ok(!E01SmoothVideo.boundedDevice("OMX.qcom.avc",true),"qcom");
  ok(!E01SmoothVideo.boundedDevice("OMX.MTK.avc",false),"switch off");
  ok(E01SmoothVideo.boundedDevice("OMX.MTK.avc",true),"independent of native fallback");
  Build.VERSION.SDK_INT=23;ok(!E01SmoothVideo.boundedDevice("OMX.MTK.avc",true),"other API");Build.VERSION.SDK_INT=22;
  Build.MODEL="tablet";ok(!E01SmoothVideo.boundedDevice("OMX.MTK.avc",true),"other device");Build.MODEL="E01";
  long now=1000000000L;
  for(int fps:new int[]{30,60}){
   E01SmoothVideo.State s=state(fps);
   for(long ahead:new long[]{1,10000000,16666667,16666668,90000000,140000000,200000000,500000000}){
    long out=E01SmoothVideo.limitTarget(s,now+ahead,now);ok(out==now+Math.min(ahead,16666667L),"future bound "+fps+"/"+ahead);
   }
   ok(E01SmoothVideo.limitTarget(s,now-1,now)==now-1,"late");ok(E01SmoothVideo.limitTarget(s,0,now)==0,"missing timestamp");
   ok(E01SmoothVideo.limitTarget(s,now+500000001,now)==now+500000001,"implausible timestamp still immediate at release");
   s.boundedRender=false;ok(E01SmoothVideo.limitTarget(s,now+90000000,now)==now+90000000,"other path unchanged");
  }
  Activity a=new Activity();Surface surface=new Surface();E01SmoothVideo.OUTPUTS.put(surface,new E01SmoothVideo.Output(a,60,true));
  MediaCodec codec=new MediaCodec();E01SmoothVideo.configure(codec,new MediaFormat(),surface,true);E01SmoothVideo.State s=E01SmoothVideo.STATES.get(codec);ok(s!=null&&s.boundedRender,"configured bound");
  MediaCodec.BufferInfo info=new MediaCodec.BufferInfo();info.presentationTimeUs=42;
  long before=System.nanoTime();s.entries.put(42L,new E01SmoothVideo.Entry(before,before));E01SmoothVideo.release(codec,0,true,info);long after=System.nanoTime();
  ok(codec.timedReleases==1,"future timed release");ok(codec.target<=after+16666667L,"actual codec target bounded");ok(s.cappedTargets==1,"cap recorded");
  E01SmoothVideo.release(codec,1,false,info);ok(codec.boolReleases==1,"false render unchanged");
  E01SmoothVideo.release(codec,2,true,info);ok(codec.boolReleases==1&&codec.timedReleases==2,"missing entry explicit immediate");
  MediaCodec cluster=new MediaCodec();E01SmoothVideo.configure(cluster,new MediaFormat(),new Surface(),true);ok(!E01SmoothVideo.STATES.containsKey(cluster),"cluster excluded");
  codec.nextInput=0;ok(E01SmoothVideo.dequeueInput(codec)==0&&codec.inputTimeout==2000L,"E01 short wait with index zero");
  codec.nextInput=-1;ok(E01SmoothVideo.dequeueInput(codec)==-1,"negative result returned to existing pump");ok(s.inputPollTimeouts==1&&s.inputPollCalls==2,"poll accounting");
  codec.nextInput=9;ok(E01SmoothVideo.dequeueInput(codec)==9,"valid input retained");
  E01SmoothVideo.dequeueInput(cluster);ok(cluster.inputTimeout==10000L,"cluster timeout unchanged");
  s.boundedRender=false;E01SmoothVideo.dequeueInput(codec);ok(codec.inputTimeout==10000L,"disabled path unchanged");s.boundedRender=true;
  RuntimeException failure=new IllegalStateException("codec stopped");codec.inputFailure=failure;
  try{E01SmoothVideo.dequeueInput(codec);throw new AssertionError("codec exception swallowed");}catch(RuntimeException e){ok(e==failure,"error propagation");}codec.inputFailure=null;
  E01SmoothVideo.forget(codec);E01SmoothVideo.dequeueInput(codec);ok(codec.inputTimeout==10000L,"stale state removed");
  E01LogPolicy.messages.clear();s.reportAt=0;s.reports=0;s.reportOutput=s.outputCount;s.reportSubmitted=s.submitted;
  for(int i=1;i<=100;i++){s.submitted+=600;s.outputCount+=590;E01SmoothVideo.report(s,i*10000000000L);}
  ok(E01LogPolicy.messages.size()==3,"bounded summary count");ok(E01LogPolicy.messages.get(0).contains("submittedFps=60.0"),"submit rate");ok(E01LogPolicy.messages.get(0).contains("releasedFps=59.0"),"release rate");
  System.out.println("PASS "+checks+" horizon/routing/actual release/summary checks; fake codec, not physical FPS");
 }
}
