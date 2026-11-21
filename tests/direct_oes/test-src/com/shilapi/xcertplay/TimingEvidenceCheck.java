package com.shilapi.xcertplay;
import android.app.Activity;
import android.media.MediaCodec;

/** Production dequeue/release hooks, not a duplicate timing implementation. */
public final class TimingEvidenceCheck {
 static void ok(boolean value,String label){if(!value)throw new AssertionError(label);}
 public static void main(String[] args)throws Exception{
  E01VideoEvidence.begin(new LongEvidenceCheck.Host(true),60);
  E01SmoothVideo.State s=new E01SmoothVideo.State(new E01SmoothVideo.Output(new Activity(),60,true));
  s.directCap4=s.boundedRender=true;
  MediaCodec codec=new MediaCodec();codec.queued=true;E01SmoothVideo.STATES.put(codec,s);
  MediaCodec.BufferInfo info=new MediaCodec.BufferInfo();codec.add(1,1,0);
  ok(E01SmoothVideo.take(codec,info)==1,"first picture dequeued");E01SmoothVideo.release(codec,1,true,info);
  ok(s.decodeGaps.snapshotAndReset().count==0&&s.releaseGaps.snapshotAndReset().count==0,"no invented startup interval");
  s.lastDecodeNs=System.nanoTime()-255000000L;s.lastReleaseNs=System.nanoTime()-255000000L;
  codec.add(2,2,0);E01SmoothVideo.take(codec,info);E01SmoothVideo.release(codec,2,true,info);
  E01FrameTiming.Snapshot decoded=s.decodeGaps.snapshotAndReset(),released=s.releaseGaps.snapshotAndReset();
  ok(decoded.count==1&&released.count==1&&decoded.over100==1&&released.over100==1,"actual hooks retain long intervals");
  long oldDecode=s.lastDecodeNs,oldRelease=s.lastReleaseNs;
  for(int flag:new int[]{2,4}){codec.add(10+flag,10+flag,flag);E01SmoothVideo.take(codec,info);E01SmoothVideo.release(codec,10+flag,false,info);}
  ok(s.lastDecodeNs==oldDecode&&s.lastReleaseNs==oldRelease,"config/EOS are not picture gaps");
  s.heldIndex=99;s.heldInfo.set(0,8,99,0);
  ok(E01SmoothVideo.take(codec,info)==99&&s.decodeGaps.snapshotAndReset().count==0,"held output not counted twice");
  E01SmoothVideo.release(codec,99,false,info);ok(s.releaseGaps.snapshotAndReset().count==0,"discard is not render submission");
  E01SmoothVideo.Entry old=new E01SmoothVideo.Entry(0,System.nanoTime()-255000000L);old.ignore=true;s.entries.put(100L,old);
  info.set(0,8,100,0);E01SmoothVideo.release(codec,100,false,info);
  ok(s.residences.snapshotAndReset().over100==1,"sender discontinuity cannot hide real monotonic residence tail");
  s.reportAt=1000000000L;s.reports=3;s.queueAges.add(255000000L);
  for(int i=0;i<3600;i++){s.queueAges.add(1000000L);s.decodeGaps.add(16666667L);s.releaseGaps.add(16666667L);}
  s.inputWaits.add(40000000L);s.residences.add(85000000L);s.capWaitNs=20000000L;E01LogPolicy.messages.clear();
  E01SmoothVideo.report(s,60999999999L);ok(E01LogPolicy.messages.isEmpty(),"existing minute boundary retained");
  E01SmoothVideo.report(s,61000000000L);ok(E01LogPolicy.messages.size()==3,"legacy plus two timing summaries");
  String cadence=E01LogPolicy.messages.get(1),stages=E01LogPolicy.messages.get(2);
  ok(cadence.contains("route=direct-hwc")&&cadence.contains("screen=110")&&cadence.contains("capWaitMs=20"),"codec route and wait delta");
  ok(stages.contains("queueAge=3601/1000/1000/255000/1/1"),"early spike retained across whole minute");
  ok(stages.contains("inputWait=1/40000/40000/40000/0/0")&&stages.contains("residence=1/85000/85000/85000/1/0"),"whole-window durations");
  for(String line:E01LogPolicy.messages)if(line.startsWith("VIDEO timing"))ok(line.length()<=512&&!line.contains("presented"),"line budget and presentation distinction");
  s.capWaitNs+=1000000L;E01SmoothVideo.TimingReport next=new E01SmoothVideo.TimingReport(s,121000000000L);
  ok(next.cadence().contains("decodeGap=0/0/0/0/0/0")&&next.cadence().contains("capWaitMs=1"),"reset and incremental wait");
  final String[] formatted=new String[1];synchronized(s){Thread t=new Thread(()->formatted[0]=next.stages());t.start();t.join(2000);ok(!t.isAlive(),"formatting outside codec lock");}
  ok(formatted[0].contains("histUs=n/p95u/p99u/max/gt50/gt100"),"explicit bucket upper-bound schema");
  E01SmoothVideo.State replacement=new E01SmoothVideo.State(s.output);
  ok(replacement.lastDecodeNs==0&&replacement.lastReleaseNs==0&&!replacement.codecIdentity.equals(s.codecIdentity),"independent replacement identity and baselines");
  E01SmoothVideo.STATES.remove(codec);
  System.out.println("PASS production timing hooks, complete windows, flags, reset, identity and line-budget checks");
 }
}
