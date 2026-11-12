package android.media;
import java.util.*;import java.util.concurrent.*;import java.util.concurrent.atomic.*;
public class MediaCodec{
 public static class CodecException extends IllegalStateException {final String diagnostic; public CodecException(String d){diagnostic=d;} public String getDiagnosticInfo(){return diagnostic;}}
 public String name="OMX.MTK.VIDEO.DECODER.AVC";public int boolReleases,timedReleases,dequeues,falseReleases,inputCalls;public long target;
 public volatile int stops,releases;public volatile boolean queued;public volatile long inputTimeout,lastTimeout;public int nextInput=0;public RuntimeException inputFailure,outputFailure,queueFailure;
 public final java.util.List<Long> inputPts=new java.util.ArrayList<Long>();
 public final java.util.List<long[]> outputReleases=Collections.synchronizedList(new java.util.ArrayList<long[]>());
 public Runnable outputHook;
 public CountDownLatch inputEntered,inputResume,outputEntered,outputResume,releaseEntered,releaseResume;
 public final AtomicInteger inFlight=new AtomicInteger();public final Set<Thread> readers=Collections.synchronizedSet(new HashSet<Thread>());
 final BlockingQueue<long[]> queue=new LinkedBlockingQueue<>();
 public void add(int i,long pts,int flags){queue.add(new long[]{i,pts,flags});}
 static void block(CountDownLatch entered,CountDownLatch resume){if(entered!=null){entered.countDown();try{if(!resume.await(5,TimeUnit.SECONDS))throw new AssertionError("fake native call timed out");}catch(InterruptedException e){throw new IllegalStateException(e);}}}
 public int dequeueInputBuffer(long timeout){inputCalls++;inputTimeout=timeout;block(inputEntered,inputResume);if(inputFailure!=null)throw inputFailure;return nextInput;}
 public void queueInputBuffer(int index,int offset,int size,long pts,int flags){if(queueFailure!=null)throw queueFailure;inputPts.add(pts);}
 public String getName(){return name;}public static class BufferInfo{public long presentationTimeUs;public int offset,size,flags;public void set(int o,int s,long p,int f){offset=o;size=s;presentationTimeUs=p;flags=f;}}
 public int dequeueOutputBuffer(BufferInfo info,long t){dequeues++;lastTimeout=t;if(!queued)return 4;
  if(inFlight.incrementAndGet()!=1)throw new AssertionError("concurrent output native calls");readers.add(Thread.currentThread());
  try{if(releases>0)throw new AssertionError("read after release");block(outputEntered,outputResume);if(outputFailure!=null)throw outputFailure;
   long[] x=t==0?queue.poll():queue.poll(t,TimeUnit.MICROSECONDS);if(x==null)return -1;info.set(0,8,x[1],(int)x[2]);if(outputHook!=null)outputHook.run();return(int)x[0];
  }catch(InterruptedException e){throw new IllegalStateException(e);}finally{inFlight.decrementAndGet();}}
 public MediaFormat getOutputFormat(){return new MediaFormat();}
 public void releaseOutputBuffer(int i,boolean r){inFlight.incrementAndGet();try{block(releaseEntered,releaseResume);boolReleases++;if(!r)falseReleases++;outputReleases.add(new long[]{i,r?1:0,0});}finally{inFlight.decrementAndGet();}}
 public void releaseOutputBuffer(int i,long t){inFlight.incrementAndGet();try{block(releaseEntered,releaseResume);timedReleases++;target=t;outputReleases.add(new long[]{i,1,t});}finally{inFlight.decrementAndGet();}}
 public void stop(){if(inFlight.get()!=0)throw new AssertionError("stop overlaps native call");stops++;}
 public void release(){if(inFlight.get()!=0)throw new AssertionError("release overlaps native call");releases++;}
}
