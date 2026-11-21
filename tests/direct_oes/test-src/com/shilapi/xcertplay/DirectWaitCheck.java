package com.shilapi.xcertplay;

import android.app.Activity;
import android.media.MediaCodec;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/** Real cap condition/notifications with a fake codec; no Android device or display timing claim. */
public final class DirectWaitCheck {
 static int checks;
 static void ok(boolean value,String message){checks++;if(!value)throw new AssertionError(message);}
 static void await(CountDownLatch latch,String message)throws Exception{ok(latch.await(2,TimeUnit.SECONDS),message);}
 static final class Codec extends MediaCodec {
  E01SmoothVideo.State state;
  CountDownLatch queueEntered,queueResume;
  void unlocked(){if(state!=null&&Thread.holdsLock(state))throw new AssertionError("native call holds pacing monitor");}
  @Override public int dequeueInputBuffer(long timeout){unlocked();return super.dequeueInputBuffer(timeout);}
  @Override public int dequeueOutputBuffer(BufferInfo info,long timeout){unlocked();return super.dequeueOutputBuffer(info,timeout);}
  @Override public void queueInputBuffer(int index,int offset,int size,long pts,int flags){
   unlocked();if(queueEntered!=null){queueEntered.countDown();try{if(!queueResume.await(2,TimeUnit.SECONDS))throw new AssertionError("queue blocked");}catch(InterruptedException e){throw new AssertionError(e);}}
   super.queueInputBuffer(index,offset,size,pts,flags);
  }
 }
 static E01SmoothVideo.State state(Codec codec){
  E01SmoothVideo.State s=new E01SmoothVideo.State(new E01SmoothVideo.Output(new Activity(),60,true));
  s.boundedRender=true;s.directCap4=true;codec.queued=true;codec.state=s;E01SmoothVideo.STATES.put(codec,s);return s;
 }
 static void fill(E01SmoothVideo.State state){for(long pts=1;pts<=4;pts++)state.inFlight.queued(pts,DirectInFlightCheck.DELTA);}
 static final class Waiter extends Thread {
  final Codec codec;volatile int result=-99;volatile boolean interrupted;volatile Throwable failure;long elapsed;
  Waiter(Codec codec){this.codec=codec;setDaemon(true);}
  public void run(){long start=System.nanoTime();try{result=E01SmoothVideo.dequeueInput(codec);interrupted=isInterrupted();}catch(Throwable e){failure=e;}finally{elapsed=System.nanoTime()-start;}}
  void waiting()throws Exception{
   long deadline=System.nanoTime()+2000000000L;
   while(isAlive()&&getState()!=Thread.State.TIMED_WAITING&&System.nanoTime()<deadline)Thread.yield();
   ok(isAlive()&&getState()==Thread.State.TIMED_WAITING,"input waits for credit on state monitor");
  }
  void done()throws Exception{join(2000);ok(!isAlive()&&failure==null,"input wait finishes without failure: "+failure);}
 }
 static void timeoutAndSpurious()throws Exception{
  Codec codec=new Codec();E01SmoothVideo.State s=state(codec);fill(s);
  Waiter w=new Waiter(codec);w.start();w.waiting();
  // Notifications without a picture credit cannot bypass the predicate or renew its deadline.
  long until=System.nanoTime()+100000000L;
  while(w.isAlive()&&System.nanoTime()<until){synchronized(s){s.notifyAll();}Thread.sleep(1);}
  w.done();ok(w.result==-1&&codec.inputCalls==0&&s.inFlight.pending()==4,"spurious notifications grant no native input or cap credit");
  ok(w.elapsed>=10000000L&&w.elapsed<250000000L&&s.capPolls==1,"one bounded condition wait replaces repeated 2ms polls");
  synchronized(s){s.inputStart=System.nanoTime()-600000000L;}
  long before=System.nanoTime();ok(E01SmoothVideo.dequeueInput(codec)==-1,"expired pump attempt cannot start another cap wait");
  ok(System.nanoTime()-before<15000000L,"existing 500ms input budget is not extended");E01SmoothVideo.forget(codec);
 }
 static void decodedWake()throws Exception{
  Codec codec=new Codec();E01SmoothVideo.State s=state(codec);fill(s);
  codec.inputEntered=new CountDownLatch(1);codec.inputResume=new CountDownLatch(1);
  Waiter w=new Waiter(codec);w.start();w.waiting();
  codec.add(1,1,0);MediaCodec.BufferInfo info=new MediaCodec.BufferInfo();
  ok(E01SmoothVideo.take(codec,info)==1,"independent output owner can dequeue while input waits");
  await(codec.inputEntered,"decoded credit wakes the same input attempt into native dequeue");
  synchronized(s){ok(s.inFlight.pending()==3&&s.capBlockedSince==0,"one output retires one credit and clears stall age");}
  codec.inputResume.countDown();w.done();ok(w.result==0&&codec.inputCalls==1,"woken attempt succeeds without a polling return");
  E01SmoothVideo.forget(codec);
 }
 static void cancelledReservationWake()throws Exception{
  Codec codec=new Codec();E01SmoothVideo.State s=state(codec);fill(s);
  Waiter w=new Waiter(codec);w.start();w.waiting();RuntimeException failure=new IllegalStateException("queue failed");codec.queueFailure=failure;
  try{E01SmoothVideo.queueInput(codec,0,0,6,1,0);throw new AssertionError("queue failure lost");}catch(RuntimeException e){ok(e==failure,"queue failure preserved");}
  w.done();ok(w.result==0&&s.inFlight.pending()==3,"cancelled reservation wakes input and returns exactly its credit");E01SmoothVideo.forget(codec);
 }
 static void interrupted()throws Exception{
  Codec codec=new Codec();E01SmoothVideo.State s=state(codec);fill(s);
  Waiter w=new Waiter(codec);w.start();w.waiting();w.interrupt();w.done();
  ok(w.result==-1&&w.interrupted&&codec.inputCalls==0&&s.inFlight.pending()==4,"interrupt exits wait with flag and credits intact");
  Thread.currentThread().interrupt();try{ok(E01SmoothVideo.dequeueInput(codec)==-1&&Thread.currentThread().isInterrupted(),"already-interrupted wait preserves cancellation");}finally{Thread.interrupted();}
  E01SmoothVideo.forget(codec);
 }
 static void retiring()throws Exception{
  for(int action=0;action<4;action++){
   Codec codec=new Codec();E01SmoothVideo.State old=state(codec);fill(old);Waiter w=new Waiter(codec);w.start();w.waiting();
   if(action==0)E01SmoothVideo.stopping(codec);
   else if(action==1)E01SmoothVideo.configureFailed(codec);
   else if(action==2)E01SmoothVideo.forget(codec);
   else {E01SmoothVideo.State next=state(codec);fill(next);E01SmoothVideo.retire(old);}
   w.done();ok(w.result==-1&&old.retired&&old.inFlight.pending()==0&&codec.inputCalls==0,"lifecycle retirement wakes old input without native access: "+action);
   if(action==3)ok(E01SmoothVideo.STATES.get(codec).inFlight.pending()==4,"old waiter cannot consume replacement credits");
   E01SmoothVideo.forget(codec);
  }
 }
 static void oldQueueFailure()throws Exception{
  Codec codec=new Codec();E01SmoothVideo.State old=state(codec);fill(old);
  codec.queueEntered=new CountDownLatch(1);codec.queueResume=new CountDownLatch(1);RuntimeException failure=new IllegalStateException("old queue failed");codec.queueFailure=failure;
  Throwable[] observed=new Throwable[1];Thread queue=new Thread(()->{try{E01SmoothVideo.queueInput(codec,0,0,6,1,0);}catch(Throwable e){observed[0]=e;}});queue.start();await(codec.queueEntered,"old native input is in flight");
  E01SmoothVideo.State next=state(codec);fill(next);E01SmoothVideo.retire(old);codec.queueResume.countDown();queue.join(2000);
  ok(!queue.isAlive()&&observed[0]==failure,"old queue error keeps original exception");
  ok(next.inFlight.pending()==4,"old failure cannot cancel matching PTS in replacement state");E01SmoothVideo.forget(codec);
 }
 public static void main(String[] args)throws Exception{
  timeoutAndSpurious();decodedWake();cancelledReservationWake();interrupted();retiring();oldQueueFailure();
  System.out.println("PASS "+checks+" cap condition/decode wake/cancel/spurious/timeout/interrupt/retirement/replacement checks (fake codec; not physical FPS)");
 }
}
