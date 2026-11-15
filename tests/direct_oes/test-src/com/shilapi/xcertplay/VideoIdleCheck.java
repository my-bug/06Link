package com.shilapi.xcertplay;
import android.media.MediaCodec;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicReference;
public final class VideoIdleCheck {
 static int checks;
 static void ok(boolean value,String message){checks++;if(!value)throw new AssertionError(message);}
 static void until(java.util.function.BooleanSupplier value,String message)throws Exception{
  long end=System.nanoTime()+2000000000L;while(!value.getAsBoolean()&&System.nanoTime()<end)Thread.sleep(1);ok(value.getAsBoolean(),message);
 }
 public static void main(String[] args)throws Exception{
  ConcurrencyCheck.Owner owner=new ConcurrencyCheck.Owner();MediaCodec c=ConcurrencyCheck.codec(owner,60);
  ok(E01VideoOutput.inputWaitMillis(owner,null,false)==5,"unconfigured input keeps original cadence");
  ok(E01VideoOutput.inputWaitMillis(owner,c,false)==5,"configured codec without output owner keeps original cadence");
  c.outputEntered=new CountDownLatch(1);c.outputResume=new CountDownLatch(1);
  E01VideoOutput.intercept(owner,c);ok(c.outputEntered.await(2,TimeUnit.SECONDS),"real output owner entered native wait");
  ok(E01VideoOutput.inputWaitMillis(owner,c,false)==20,"healthy dedicated output reduces only input idle polling");
  ok(E01VideoOutput.inputWaitMillis(owner,c,true)==5,"keyframe recovery retains original cadence");
  ok(E01VideoOutput.inputWaitMillis(new Object(),c,false)==5,"old/foreign decoder owner cannot use live session");
  E01SmoothVideo.State s=E01SmoothVideo.STATES.get(c);s.retired=true;
  ok(E01VideoOutput.inputWaitMillis(owner,c,false)==5,"retiring surface does not extend input wait");s.retired=false;
  s.boundedRender=false;ok(E01VideoOutput.inputWaitMillis(owner,c,false)==5,"legacy/secondary output unchanged");s.boundedRender=true;
  LinkedBlockingQueue<Integer> input=new LinkedBlockingQueue<Integer>();AtomicReference<Integer> received=new AtomicReference<Integer>();
  Thread consumer=new Thread(()->{try{while(received.get()==null)received.set(input.poll(E01VideoOutput.inputWaitMillis(owner,c,false),TimeUnit.MILLISECONDS));}catch(InterruptedException error){throw new AssertionError(error);}});
  consumer.start();until(()->consumer.getState()==Thread.State.TIMED_WAITING,"empty input uses blocking queue wait");
  input.offer(42);consumer.join(2000);ok(!consumer.isAlive()&&Integer.valueOf(42).equals(received.get()),"new access unit wakes waiting input and is retained");
  AtomicReference<Boolean> interrupted=new AtomicReference<Boolean>(false);
  Thread closing=new Thread(()->{try{for(;;)input.poll(E01VideoOutput.inputWaitMillis(owner,c,false),TimeUnit.MILLISECONDS);}catch(InterruptedException expected){interrupted.set(true);}});
  closing.start();until(()->closing.getState()==Thread.State.TIMED_WAITING,"shutdown starts from empty queue");closing.interrupt();closing.join(2000);
  ok(!closing.isAlive()&&interrupted.get(),"decoder close interrupt remains immediate and cancellable");
  RuntimeException failure=new IllegalStateException("output failed");c.outputFailure=failure;c.outputResume.countDown();
  until(()->E01VideoOutput.inputWaitMillis(owner,c,false)==0,"published native output failure bypasses idle wait");
  try{E01VideoOutput.intercept(owner,c);throw new AssertionError("lost output failure");}catch(RuntimeException expected){ok(expected==failure,"original failure reaches existing input recovery unchanged");}
  E01VideoOutput.release(c);ok(E01VideoOutput.inputWaitMillis(owner,c,false)==5,"released output session cannot affect later input");
  System.out.println("PASS "+checks+" dedicated input idle/wakeup/cancel/failure/ownership checks (fake codec; not physical performance)");
 }
}
