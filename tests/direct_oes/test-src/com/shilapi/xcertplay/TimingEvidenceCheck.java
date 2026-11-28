package com.shilapi.xcertplay;
import android.app.Activity;
import android.media.MediaCodec;

/** Production dequeue/release hooks, not a duplicate timing implementation. */
public final class TimingEvidenceCheck {
 static void ok(boolean value,String label){if(!value)throw new AssertionError(label);}
 static E01SmoothVideo.Entry frame(long senderMs,long arrivalMs,long inputMs,long decodedMs){
  E01SmoothVideo.Stamp stamp=new E01SmoothVideo.Stamp(senderMs*1000000L,arrivalMs*1000000L);
  E01SmoothVideo.Entry entry=new E01SmoothVideo.Entry(0,inputMs*1000000L,0,stamp);
  entry.decodedAt=decodedMs*1000000L;
  return entry;
 }
 static void matchedPair(){
  E01SmoothVideo.SlowPair pairs=new E01SmoothVideo.SlowPair();
  E01SmoothVideo.Entry a=frame(100,110,112,130), b=frame(116,155,160,195);
  a.stamp.enqueued=110000000L; a.stamp.taken=111000000L; a.stamp.slot=111500000L; a.stamp.capWait=0;
  b.stamp.enqueued=155000000L; b.stamp.taken=158000000L; b.stamp.slot=159800000L; b.stamp.capWait=200000L;
  pairs.released(a,135000000L);
  ok(pairs.take()==null,"first output has no previous frame");
  pairs.released(b,205000000L);
  pairs.released(frame(132,176,180,250),261000000L);
  // A long pause at the phone must not replace the slower of the two animated pairs.
  pairs.released(frame(2132,2176,2180,2250),2261000000L);
  ok(pairs.take().format().equals("pairUs sender=16000 arrival=45000 input=48000 decoded=65000 released=70000 nextInput=-1 afterNext=-1 longestPoll=0 pollMisses=0 queueUs=1000/3000 takeToSlotUs=500/1800 capUs=0/200"),
     "all deltas refer to the same two frames even when stage maxima differ");
  ok(pairs.take()==null,"no duplicate on an empty reporting window");
  pairs.released(frame(2148,2240,2250,2320),2330000000L);
  ok(pairs.take()!=null,"a pair can straddle a report boundary");
  pairs.released(null,2340000000L);
  pairs.released(frame(2164,2360,2370,2390),2450000000L);
  ok(pairs.take()==null,"a missing timestamp cannot connect unrelated pictures");
 }
 static void decoderStages() {
  MediaCodec codec=new MediaCodec();
  E01SmoothVideo.State state=new E01SmoothVideo.State(new E01SmoothVideo.Output(new Activity(),60,true));
  state.directCap4=true;
  E01SmoothVideo.STATES.put(codec,state);
  byte[] source={1,2}, converted={0,1,2};
  E01SmoothVideo.Stamp stamp=new E01SmoothVideo.Stamp(1,System.nanoTime());
  E01SmoothVideo.STAMPS.put(source,stamp);
  ok(E01SmoothVideo.frameEnqueued(source)==stamp,"the job carries its original packet identity");
  E01SmoothVideo.frameTaken(stamp);
  E01SmoothVideo.converted(source,converted);
  ok(E01SmoothVideo.STAMPS.get(converted)==stamp,"Annex-B conversion preserves queue-stage evidence");
  state.capWaitNs=5000000L;
  E01SmoothVideo.inputStart(codec);
  state.capWaitNs+=1000L;
  E01SmoothVideo.inputEnd(codec,-1,stamp);
  ok(state.inputStart==0,"a failed acquisition closes the input-wait interval");
  ok(stamp.slot==0 && stamp.capWait==-1,"failed input cannot invent an acquired slot");
  E01SmoothVideo.inputStart(codec);
  state.capWaitNs+=2000L;
  E01SmoothVideo.inputEnd(codec,0,stamp);
  ok(stamp.enqueued>0 && stamp.taken>=stamp.enqueued && stamp.slot>=stamp.taken,"ordered monotonic stages");
  ok(state.inputStart==0,"a successful acquisition also closes the input-wait interval");
  ok(stamp.capWait==2000L,"only waits in the successful acquire, regardless of buffer index");
  MediaCodec fallback=new MediaCodec();
  E01SmoothVideo.inputEnd(fallback,1,stamp);
  ok(stamp.capWait==-1,"a codec without cap evidence is unavailable rather than zero");
  ok(E01SmoothVideo.frameEnqueued(new byte[1])==null,"untracked pictures do not create evidence");
  E01SmoothVideo.STATES.remove(codec);
 }
 static void followingInput(){
  MediaCodec codec=new MediaCodec();codec.queued=true;
  DirectCapCheck.Decoder owner=new DirectCapCheck.Decoder(codec);
  E01SmoothVideo.State state=new E01SmoothVideo.State(new E01SmoothVideo.Output(new Activity(),60,true));
  E01SmoothVideo.STATES.put(codec,state);
  long a=E01SmoothVideo.presentation(owner,new byte[4]);
  long b=E01SmoothVideo.presentation(owner,new byte[4]);
  E01SmoothVideo.Entry first=state.entries.get(a), second=state.entries.get(b);
  ok(first.nextInputAt==second.queued,"link the immediately following prepared input");
  MediaCodec.BufferInfo info=new MediaCodec.BufferInfo();
  ok(E01SmoothVideo.take(codec,info)==-1,"native poll returns no picture");
  codec.add(1,a,0);ok(E01SmoothVideo.take(codec,info)==1,"delayed picture returned");
  ok(first.nextInputAt<=first.decodedAt&&first.pollMisses==1&&first.longestPollNs>0,"poll evidence belongs to delayed picture");
  codec.add(2,b,0);ok(E01SmoothVideo.take(codec,info)==2,"next picture returned");
  E01SmoothVideo.presentation(owner,new byte[4]);
  ok(second.nextInputAt==0&&second.pollMisses==0,"input after output cannot explain the earlier wait");
  E01SmoothVideo.forget(codec);
 }
 public static void main(String[] args)throws Exception{
  followingInput();
  decoderStages();
  matchedPair();
  E01VideoEvidence.begin(new LongEvidenceCheck.Host(true),60);
  E01SmoothVideo.State s=new E01SmoothVideo.State(new E01SmoothVideo.Output(new Activity(),60,true));
  s.directCap4=s.boundedRender=true;
  MediaCodec codec=new MediaCodec();codec.queued=true;E01SmoothVideo.STATES.put(codec,s);
  MediaCodec.BufferInfo info=new MediaCodec.BufferInfo();codec.add(1,1,0);
  long received=System.nanoTime();
  E01SmoothVideo.Entry prior=new E01SmoothVideo.Entry(0,received-80000000L,0,
      new E01SmoothVideo.Stamp(1000000000L,received-85000000L));
  prior.decodedAt=received-71000000L;
  s.slowPair.released(prior,received-70000000L);
  E01SmoothVideo.Entry first=new E01SmoothVideo.Entry(0,received,0,
      new E01SmoothVideo.Stamp(1016000000L,received));
  first.nextInputAt=received+1L;
  s.entries.put(1L,first);
  s.longestPollNs=200000000L;s.pollMisses=19;
  ok(E01SmoothVideo.take(codec,info)==1,"first picture dequeued");
  ok(first.decodedAt>0,"decoder output is matched by its own presentation timestamp");
  ok(first.nextInputAt>0&&first.longestPollNs==200000000L&&first.pollMisses==19,
     "later input and native wait recorded on the same decoded output");
  ok(s.longestPollNs==0&&s.pollMisses==0,"each decoded picture starts a fresh poll window");
  E01SmoothVideo.release(codec,1,true,info);
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
  s.residences.snapshotAndReset();
  E01SmoothVideo.Entry old=new E01SmoothVideo.Entry(0,System.nanoTime()-255000000L);old.ignore=true;s.entries.put(100L,old);
  info.set(0,8,100,0);E01SmoothVideo.release(codec,100,false,info);
  ok(s.residences.snapshotAndReset().over100==1,"sender discontinuity cannot hide real monotonic residence tail");
  s.reportAt=1000000000L;s.reports=3;s.queueAges.add(255000000L);
  for(int i=0;i<3600;i++){s.queueAges.add(1000000L);s.decodeGaps.add(16666667L);s.releaseGaps.add(16666667L);}
  s.inputWaits.add(40000000L);s.residences.add(85000000L);s.capWaitNs=20000000L;E01LogPolicy.messages.clear();
  E01SmoothVideo.report(s,60999999999L);ok(E01LogPolicy.messages.isEmpty(),"existing minute boundary retained");
  E01SmoothVideo.report(s,61000000000L);ok(E01LogPolicy.messages.size()==4,"existing summaries and one matched slow pair");
  String pair=E01LogPolicy.messages.get(3);
  ok(pair.contains("codec="+s.codecIdentity) && pair.contains("pairUs sender=16000 arrival=85000 input=80000 decoded="),
     "dequeue/release hooks preserve the matched stages into the persistent report");
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
