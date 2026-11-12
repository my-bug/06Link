package android.media;
import java.util.*;import java.util.concurrent.*;import java.util.concurrent.atomic.*;
public class MediaCodec{
 public static class CodecException extends IllegalStateException {final String diagnostic; public CodecException(String d){diagnostic=d;} public String getDiagnosticInfo(){return diagnostic;}}
 public String name="OMX.MTK.VIDEO.DECODER.AVC";public int boolReleases,timedReleases,dequeues,falseReleases;public long target;
 public volatile int stops,releases;public volatile boolean queued;public volatile long inputTimeout,lastTimeout;public int nextInput=0;public RuntimeException inputFailure,outputFailure;
 public CountDownLatch inputEntered,inputResume,outputEntered,outputResume,releaseEntered,releaseResume;
 public final AtomicInteger inFlight=new AtomicInteger();public final Set<Thread> readers=Collections.synchronizedSet(new HashSet<Thread>());
 final BlockingQueue<long[]> queue=new LinkedBlockingQueue<>();
 public void add(int i,long pts,int flags){queue.add(new long[]{i,pts,flags});}
 static void block(CountDownLatch entered,CountDownLatch resume){if(entered!=null){entered.countDown();try{if(!resume.await(5,TimeUnit.SECONDS))throw new AssertionError("fake native call timed out");}catch(InterruptedException e){throw new IllegalStateException(e);}}}
 public int dequeueInputBuffer(long timeout){inputTimeout=timeout;block(inputEntered,inputResume);if(inputFailure!=null)throw inputFailure;return nextInput;}
 public String getName(){return name;}public static class BufferInfo{public long presentationTimeUs;public int offset,size,flags;public void set(int o,int s,long p,int f){offset=o;size=s;presentationTimeUs=p;flags=f;}}
 public int dequeueOutputBuffer(BufferInfo info,long t){dequeues++;lastTimeout=t;if(!queued)return 4;
  if(inFlight.incrementAndGet()!=1)throw new AssertionError("concurrent output native calls");readers.add(Thread.currentThread());
  try{if(releases>0)throw new AssertionError("read after release");block(outputEntered,outputResume);if(outputFailure!=null)throw outputFailure;
   long[] x=t==0?queue.poll():queue.poll(t,TimeUnit.MICROSECONDS);if(x==null)return -1;info.set(0,8,x[1],(int)x[2]);return(int)x[0];
  }catch(InterruptedException e){throw new IllegalStateException(e);}finally{inFlight.decrementAndGet();}}
 public MediaFormat getOutputFormat(){return new MediaFormat();}
 public void releaseOutputBuffer(int i,boolean r){inFlight.incrementAndGet();try{block(releaseEntered,releaseResume);boolReleases++;if(!r)falseReleases++;}finally{inFlight.decrementAndGet();}}
 public void releaseOutputBuffer(int i,long t){inFlight.incrementAndGet();try{block(releaseEntered,releaseResume);timedReleases++;target=t;}finally{inFlight.decrementAndGet();}}
 public void stop(){if(inFlight.get()!=0)throw new AssertionError("stop overlaps native call");stops++;}
 public void release(){if(inFlight.get()!=0)throw new AssertionError("release overlaps native call");releases++;}
}