package com.shilapi.xcertplay;
import android.media.MediaCodec;
import android.os.Build;
import android.opengl.FakeGpu;
import java.util.*;

/** Production direct-cap4 bridge with deterministic age boundaries and a fake codec, not physical FPS. */
public final class DirectLateCheck {
 static int checks;
 static void ok(boolean v,String label){checks++;if(!v)throw new AssertionError(label);}
 static MediaCodec.BufferInfo info(long pts,int flags){MediaCodec.BufferInfo i=new MediaCodec.BufferInfo();i.set(0,8,pts,flags);return i;}
 static long feed(DirectCapCheck.Run r,long age){
  r.decoder.e01ReceivedNs=System.nanoTime()-age;
  return r.feed(DirectInFlightCheck.DELTA.clone());
 }
 static void age(DirectCapCheck.Run r,long pts,long age){
  long now=System.nanoTime();r.state.entries.put(pts,new E01SmoothVideo.Entry(now-1000000L,now,now-age));
 }
 static void releases(MediaCodec c,int... indexes){
  ok(c.outputReleases.size()==indexes.length,"exact number of released buffers");
  for(int i:indexes){int n=0;synchronized(c.outputReleases){for(long[] v:c.outputReleases)if(v[0]==i)n++;}ok(n==1,"buffer "+i+" released exactly once");}
 }
 static void threshold()throws Exception{
  try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   ok(E01SmoothVideo.diagnostic(r.decoder).contains("pacingMs=0"),"direct diagnostic reports actual immediate output, not unused legacy pacing delay");
   long now=10000000000L;MediaCodec.BufferInfo i=info(7,0);
   for(long elapsed:new long[]{0,80000000L,149999999L,150000000L,150000001L,500000000L}){
    r.state.entries.put(7L,new E01SmoothVideo.Entry(1,now,now-elapsed));
    ok(E01SmoothVideo.directLate(r.state,i,now)==(elapsed>=150000000L),"150ms boundary age="+elapsed);
   }
   r.state.entries.put(7L,new E01SmoothVideo.Entry(1,now));ok(!E01SmoothVideo.directLate(r.state,i,now),"legacy/no received stamp never authorizes discard");
   for(long received:new long[]{-1,0,now+1}){
    r.state.entries.put(7L,new E01SmoothVideo.Entry(1,now,received));ok(!E01SmoothVideo.directLate(r.state,i,now),"invalid received time "+received);
   }
   r.state.entries.put(7L,new E01SmoothVideo.Entry(1,now-400000000L,now-300000000L));ok(!E01SmoothVideo.directLate(r.state,i,now),"received after queued is rejected");
   r.state.entries.put(7L,new E01SmoothVideo.Entry(0,now,now-300000000L));ok(E01SmoothVideo.directLate(r.state,i,now),"valid receive age does not depend on mapped sender clock");
   for(int flags:new int[]{2,4,6}){i.flags=flags;ok(!E01SmoothVideo.directLate(r.state,i,now),"special output flag "+flags+" retained");}
   i.flags=1;ok(E01SmoothVideo.directLate(r.state,i,now),"decoded keyframe can be obsolete; compressed keyframe was already consumed");i.flags=0;
   r.state.retired=true;ok(!E01SmoothVideo.directLate(r.state,i,now),"retired state cannot discard outputs");r.state.retired=false;
   r.state.directCap4=false;ok(!E01SmoothVideo.directLate(r.state,i,now),"non-direct route excluded");r.state.directCap4=true;
   r.state.entries.remove(7L);ok(!E01SmoothVideo.directLate(r.state,i,now),"unmatched output timestamp retained");
   long received=System.nanoTime()-300000000L;r.decoder.e01ReceivedNs=received;long pts=r.feed(DirectInFlightCheck.DELTA.clone());
   ok(r.state.entries.get(pts).received==received,"actual presentation hook retains decoder receive time unchanged");
  }
 }
 static void ordinary()throws Exception{
  try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   long p=feed(r,80000000L),q=feed(r,50000000L);r.codec.add(1,p,0);r.codec.add(2,q,0);MediaCodec.BufferInfo i=new MediaCodec.BufferInfo();
   int idx=E01SmoothVideo.take(r.codec,i);ok(idx==1&&r.codec.dequeues==1&&r.state.skipped==0,"normal 80ms path renders first frame without lookahead");
   ok(r.state.inFlight.pending()==1,"normal output retires one cap credit");E01SmoothVideo.release(r.codec,idx,true,i);
   idx=E01SmoothVideo.take(r.codec,i);E01SmoothVideo.release(r.codec,idx,true,i);releases(r.codec,1,2);
   ok(r.codec.falseReleases==0&&r.codec.inputPts.size()==2,"normal path drops neither pictures nor compressed inputs");
  }
  try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   long p=feed(r,500000000L),q=feed(r,10000000L);r.codec.add(11,p,0);r.codec.add(12,q,0);MediaCodec.BufferInfo i=new MediaCodec.BufferInfo();
   int idx=E01SmoothVideo.take(r.codec,i);
   ok(idx==12&&i.presentationTimeUs==q&&r.state.skipped==1&&r.state.decoded==2,"old queued data coalesces only after newer decoded picture exists");
   ok(r.state.inFlight.pending()==0&&r.codec.inputPts.size()==2,"both decoded credits retired once; all compressed inputs remain queued");
   ok(!r.state.entries.containsKey(p)&&r.state.entries.containsKey(q),"only skipped picture metadata removed before render");
   long before=System.nanoTime();E01SmoothVideo.release(r.codec,idx,true,i);long after=System.nanoTime();
   ok(r.codec.target>=before&&r.codec.target<=after,"selected current picture retains verified immediate HWC timestamp");
   ok(r.codec.falseReleases==1&&r.codec.timedReleases==1,"old picture discarded once and newer picture displayed once");releases(r.codec,11,12);
  }
  try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   long p=feed(r,500000000L);r.codec.add(21,p,0);MediaCodec.BufferInfo i=new MediaCodec.BufferInfo();int idx=E01SmoothVideo.take(r.codec,i);
   ok(idx==21&&r.state.skipped==0&&r.codec.falseReleases==0,"last available old picture is retained when lookahead empty");
   E01SmoothVideo.release(r.codec,idx,true,i);ok(r.codec.timedReleases==1,"idle/static screen still renders its last picture");releases(r.codec,21);
  }
 }
 static void boundaries()throws Exception{
  for(int flags:new int[]{2,4,6})try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   long p=feed(r,500000000L),q=feed(r,500000000L);r.codec.add(31,p,0);r.codec.add(32,q,flags);MediaCodec.BufferInfo i=new MediaCodec.BufferInfo();
   int idx=E01SmoothVideo.take(r.codec,i);ok(idx==31&&r.state.skipped==0,"old image preserved before special flag "+flags);int decoded=(int)r.state.decoded,pending=r.state.inFlight.pending();
   E01SmoothVideo.release(r.codec,idx,true,i);idx=E01SmoothVideo.take(r.codec,i);
   ok(idx==32&&i.flags==flags&&r.state.decoded==decoded&&r.state.inFlight.pending()==pending,"held special output delivered once without second dequeue or cap credit");
   E01SmoothVideo.release(r.codec,idx,false,i);releases(r.codec,31,32);
  }
  for(boolean same:new boolean[]{true,false})try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   long p=feed(r,500000000L),q=same?p:p-1;r.codec.add(41,p,0);r.codec.add(42,q,0);MediaCodec.BufferInfo i=new MediaCodec.BufferInfo();
   int idx=E01SmoothVideo.take(r.codec,i);ok(idx==41&&r.state.skipped==0,"duplicate/older decoded timestamp cannot replace image");
   int decoded=(int)r.state.decoded;E01SmoothVideo.release(r.codec,idx,true,i);idx=E01SmoothVideo.take(r.codec,i);
   ok(idx==42&&r.state.decoded==decoded&&r.state.inFlight.pending()==0,"held duplicate/older output does not retire unrelated credit");E01SmoothVideo.release(r.codec,idx,false,i);releases(r.codec,41,42);
  }
  for(int signal:new int[]{-2,-3})try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   long p=feed(r,500000000L);r.codec.add(51,p,0);r.codec.add(signal,0,0);MediaCodec.BufferInfo i=new MediaCodec.BufferInfo();int idx=E01SmoothVideo.take(r.codec,i);
   ok(idx==51&&r.state.skipped==0,"image retained before format/buffers signal");E01SmoothVideo.release(r.codec,idx,true,i);int calls=r.codec.dequeues;
   ok(E01SmoothVideo.take(r.codec,i)==signal&&r.codec.dequeues==calls,"intervening signal returned without re-dequeue");releases(r.codec,51);
  }
 }
 static void boundedBatch()throws Exception{
  try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   long[] p=new long[4];for(int n=0;n<4;n++){p[n]=feed(r,500000000L);r.codec.add(61+n,p[n],0);}
   // A fifth native output is a sentinel: the four-slot cycle must not poll it while merging three frames.
   r.codec.add(65,p[3]+1,0);MediaCodec.BufferInfo i=new MediaCodec.BufferInfo();int idx=E01SmoothVideo.take(r.codec,i);
   ok(idx==64&&r.state.skipped==3&&r.codec.dequeues==4,"one take merges at most three expired decoded pictures");
   ok(r.state.inFlight.pending()==0&&r.state.capMax==4&&r.codec.inputPts.size()==4,"cap remains four and input reference chain intact");
   E01SmoothVideo.release(r.codec,idx,true,i);ok(r.codec.falseReleases==3&&r.codec.timedReleases==1,"bounded batch has exactly three discarded plus one display");releases(r.codec,61,62,63,64);
   int decoded=(int)r.state.decoded;idx=E01SmoothVideo.take(r.codec,i);ok(idx==65&&r.state.decoded==decoded+1,"fifth output remains for next drain iteration");E01SmoothVideo.release(r.codec,idx,false,i);
   ok(r.state.directLateSkipped==3&&r.state.directLateBatches==1&&r.state.directLateBatchMax==3,"direct late counters reflect one bounded three-frame merge");
   ok(r.state.directLateAgeMaxNs>=150000000L,"late-age metric records receive-to-discard age");
   E01LogPolicy.messages.clear();r.state.reportAt=0;r.state.reports=0;
   for(int n=1;n<=20;n++)E01SmoothVideo.report(r.state,n*10000000000L);
   ok(E01LogPolicy.messages.size()==3,"new counters retain three summaries per codec and no per-frame records");
   String summary=E01LogPolicy.messages.get(0);
   ok(summary.contains("directLateSkipped=3")&&summary.contains("directLateBatches=1")&&summary.contains("directLateBatchMax=3")&&summary.contains("directLateAgeMaxMs="),"summary includes exact direct-coalescing diagnostics");
   ok(summary.length()<=512,"representative summary fits existing per-line log budget");
  }
 }
 static void stop()throws Exception{
  try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   long p=feed(r,500000000L),q=feed(r,500000000L);r.codec.add(71,p,0);r.codec.add(72,q,0);
   r.codec.outputHook=()->{if(r.codec.dequeues==2)E01SmoothVideo.stopping(r.codec);};MediaCodec.BufferInfo i=new MediaCodec.BufferInfo();int idx=E01SmoothVideo.take(r.codec,i);
   ok(r.state.retired&&idx==71&&r.codec.falseReleases==0&&r.state.skipped==0,"stop during lookahead cannot discard from retired session");
   ok(!E01DisplayClock.leases.containsKey(r.state.directClock),"clock released before delayed native cleanup");
   int decoded=(int)r.state.decoded;E01SmoothVideo.release(r.codec,idx,false,i);idx=E01SmoothVideo.take(r.codec,i);
   ok(idx==72&&r.state.decoded==decoded,"lookahead buffer remains owned exactly once after stop");E01SmoothVideo.release(r.codec,idx,false,i);releases(r.codec,71,72);
  }
  try(DirectCapCheck.Run r=new DirectCapCheck.Run()){
   long p=feed(r,500000000L),q=feed(r,500000000L);r.codec.add(81,p,0);r.codec.add(82,q,0);E01VideoVisibility.paused.add(r.owner);
   // No new route/visibility policy: late-frame selection itself must not change the active codec or view.
   MediaCodec.BufferInfo i=new MediaCodec.BufferInfo();int idx=E01SmoothVideo.take(r.codec,i);
   ok(!r.state.retired&&r.owner.currentSurface==r.state.surface,"paused-page output selection does not rebuild the display route");
   E01SmoothVideo.release(r.codec,idx,false,i);E01VideoVisibility.paused.remove(r.owner);
  }
 }
 public static void main(String[] args)throws Exception{
  Build.MODEL="E01";Build.DEVICE="BX11QJ";Build.VERSION.SDK_INT=22;FakeGpu.reset();
  threshold();ordinary();boundaries();boundedBatch();stop();
  ok(E01DisplayClock.leases.isEmpty(),"all direct display-clock leases close");
  System.out.println("PASS "+checks+" direct decoded-late boundary/input integrity/one-release/signal/cap4/limit3/stop checks (fake codec; not physical FPS)");
 }
}
