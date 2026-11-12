package com.shilapi.xcertplay;
import android.media.*;import android.app.Activity;import java.util.concurrent.*;import java.util.concurrent.atomic.*;import java.lang.reflect.*;
public class ConcurrencyCheck {
 static int checks;
 static void ok(boolean b,String m){checks++;if(!b)throw new AssertionError(m);}
 static void await(CountDownLatch x,String m)throws Exception{ok(x.await(2,TimeUnit.SECONDS),m);}
 static void until(java.util.function.BooleanSupplier p,String m)throws Exception{long end=System.nanoTime()+2000000000L;while(!p.getAsBoolean()&&System.nanoTime()<end)Thread.sleep(2);ok(p.getAsBoolean(),m);}
 static class Owner {
  volatile boolean running=true;volatile MediaCodec decoder;volatile long e01ReceivedNs;
  final AtomicInteger frames=new AtomicInteger(),formats=new AtomicInteger();volatile MediaCodec.BufferInfo lastInfo;MediaCodec.BufferInfo legacy;
  // Behavioral harness for the patched original drain body; APK method integrity is audited separately.
  private void drainOutput(MediaCodec codec){
   if(E01VideoOutput.intercept(this,codec))return;
   MediaCodec.BufferInfo info=E01VideoOutput.info(codec);
   if(info==null){if(legacy==null)legacy=new MediaCodec.BufferInfo();info=legacy;}
   while(running&&E01VideoOutput.active(codec)){
    int i=E01SmoothVideo.take(codec,info);
    if(!E01VideoOutput.active(codec)){if(i>=0)codec.releaseOutputBuffer(i,false);return;}
    if(i==-1)return;
    if(i==-2){codec.getOutputFormat();if(E01VideoOutput.active(codec))formats.incrementAndGet();continue;}
    if(i<0)return;
    E01SmoothVideo.release(codec,i,true,info);
    if(!E01VideoOutput.active(codec))return;
    lastInfo=info;frames.incrementAndGet();if((info.flags&4)!=0)return;
   }
  }
 }
 static MediaCodec codec(Owner owner,int fps){MediaCodec c=new MediaCodec();c.queued=true;E01SmoothVideo.State s=new E01SmoothVideo.State(new E01SmoothVideo.Output(new Activity(),fps,true));s.boundedRender=true;E01SmoothVideo.STATES.put(c,s);owner.decoder=c;return c;}
 static int sessions()throws Exception{Field f=E01VideoOutput.class.getDeclaredField("SESSIONS");f.setAccessible(true);java.util.Map m=(java.util.Map)f.get(null);synchronized(m){return m.size();}}
 static void close(Owner o,MediaCodec c)throws Exception{o.decoder=null;E01VideoOutput.release(c);until(()->c.releases==1,"cleanup once");ok(c.stops==1&&c.inFlight.get()==0,"no stop/release overlapping native call");ok(!E01SmoothVideo.STATES.containsKey(c),"state retired");ok(c.readers.size()<=1,"single output owner");}
 public static void main(String[] args)throws Exception{
  // Native input can stall while the output worker continues returning every available buffer.
  Owner o=new Owner();MediaCodec c=codec(o,60);c.inputEntered=new CountDownLatch(1);c.inputResume=new CountDownLatch(1);o.drainOutput(c);
  Thread input=new Thread(()->E01SmoothVideo.dequeueInput(c));input.start();await(c.inputEntered,"input entered");
  c.add(-2,0,0);for(int i=0;i<120;i++)c.add(i,i+1000,0);
  until(()->o.frames.get()==120,"output continued while input blocked");ok(input.isAlive(),"input still blocked");ok(c.lastTimeout==10000,"dedicated wait 10ms");ok(o.formats.get()==1,"format signal preserved");
  c.inputResume.countDown();input.join(2000);close(o,c);ok(sessions()==0,"normal session removed");
  // Native output wait cannot hold the timestamp/input metadata lock.
  Owner p=new Owner();MediaCodec d=codec(p,30);d.outputEntered=new CountDownLatch(1);d.outputResume=new CountDownLatch(1);p.drainOutput(d);await(d.outputEntered,"output entered");
  CountDownLatch stamped=new CountDownLatch(1);Thread stamp=new Thread(()->{E01SmoothVideo.presentation(p,new byte[4]);stamped.countDown();});stamp.start();await(stamped,"input timestamp not blocked by output");
  d.outputResume.countDown();close(p,d);
  // Failure crosses back to the original input/recovery worker, with original exception identity.
  Owner f=new Owner();MediaCodec bad=codec(f,60);RuntimeException failure=new IllegalStateException("native output failure");bad.outputFailure=failure;f.drainOutput(bad);
  until(()->{try{f.drainOutput(bad);return false;}catch(RuntimeException e){if(e!=failure)throw e;return true;}},"failure propagated to recovery owner");close(f,bad);
  // Delayed old native call: do not stop a live codec or let old buffer/callback corrupt the next codec.
  Owner r=new Owner();MediaCodec old=codec(r,60);old.outputEntered=new CountDownLatch(1);old.outputResume=new CountDownLatch(1);old.add(0,10,0);r.drainOutput(old);await(old.outputEntered,"old native entered");
  r.decoder=null;long begin=System.nanoTime();E01VideoOutput.release(old);ok(System.nanoTime()-begin<1500000000L,"bounded shutdown");ok(old.releases==0&&old.stops==0,"deferred until native exit");
  MediaCodec next=codec(r,30);next.add(0,20,0);r.drainOutput(next);until(()->r.frames.get()==1,"replacement renders before old returns");MediaCodec.BufferInfo newInfo=r.lastInfo;
  old.outputResume.countDown();until(()->old.releases==1,"old deferred cleanup completed");ok(r.frames.get()==1&&newInfo.presentationTimeUs==20,"no stale render callback or BufferInfo corruption");ok(old.falseReleases==1,"old returned frame discarded once");close(r,next);ok(sessions()==0,"no stale sessions");
  // Stop while releaseOutputBuffer itself is blocked also keeps codec lifetime ordered.
  Owner q=new Owner();MediaCodec slow=codec(q,60);slow.releaseEntered=new CountDownLatch(1);slow.releaseResume=new CountDownLatch(1);slow.add(0,1,0);q.drainOutput(slow);await(slow.releaseEntered,"render release entered");E01VideoOutput.release(slow);ok(slow.releases==0,"cannot release codec under blocked releaseOutput");slow.releaseResume.countDown();until(()->slow.releases==1,"blocked render cleaned up");ok(q.frames.get()==0,"stopped render callback suppressed");
  // Repeated 30/60 session replacements and interrupted close leave no output thread/codec ownership.
  for(int i=0;i<40;i++){Owner z=new Owner();MediaCodec fresh=codec(z,i%2==0?30:60);fresh.add(0,i,0);z.drainOutput(fresh);until(()->z.frames.get()==1,"cycle renders");z.running=false;if(i==3)Thread.currentThread().interrupt();close(z,fresh);if(i==3)ok(Thread.interrupted(),"interrupt restored after orderly release");}
  ok(sessions()==0,"all replacement sessions retired");
  Owner legacy=new Owner();MediaCodec standard=new MediaCodec();ok(!E01VideoOutput.intercept(legacy,standard),"unregistered secondary/legacy excluded");MediaCodec disabled=codec(legacy,60);E01SmoothVideo.STATES.get(disabled).boundedRender=false;ok(!E01VideoOutput.intercept(legacy,disabled),"low latency off excluded");E01VideoOutput.release(disabled);
  // Late-output coalescing keeps newer image, preserves intervening format and EOS.
  MediaCodec late=codec(new Owner(),60);E01SmoothVideo.State state=E01SmoothVideo.STATES.get(late);long past=System.nanoTime()-1000000000L;
  state.entries.put(1L,new E01SmoothVideo.Entry(past,past));state.entries.put(2L,new E01SmoothVideo.Entry(past+1,past));late.add(0,1,0);late.add(1,2,0);late.add(-2,0,0);MediaCodec.BufferInfo bi=new MediaCodec.BufferInfo();ok(E01SmoothVideo.take(late,bi)==1&&bi.presentationTimeUs==2,"late older frame coalesced");ok(late.falseReleases==1,"one skipped buffer returned");E01SmoothVideo.release(late,1,true,bi);ok(E01SmoothVideo.take(late,bi)==-2,"pending format preserved");
  state.entries.put(3L,new E01SmoothVideo.Entry(past,past));late.add(2,3,0);late.add(3,4,4);ok(E01SmoothVideo.take(late,bi)==2,"EOS not used to replace image");E01SmoothVideo.release(late,2,true,bi);ok(E01SmoothVideo.take(late,bi)==3&&bi.flags==4,"held EOS preserved");E01SmoothVideo.release(late,3,false,bi);E01VideoOutput.release(late);
  System.out.println("PASS "+checks+" independent input/output, error handoff, deferred cleanup, repeated restart and format/EOS checks (fake codec; not physical FPS)");
 }
}
