package android.opengl;
import java.util.*;import java.util.concurrent.*;import java.util.concurrent.atomic.*;
public final class FakeGpu {
 public static volatile long drawDelayNs;
 public static final AtomicInteger ids=new AtomicInteger(1),consumed=new AtomicInteger(),copied=new AtomicInteger(),swapped=new AtomicInteger(),hazards=new AtomicInteger(),activeWindows=new AtomicInteger(),activeContexts=new AtomicInteger(),finishes=new AtomicInteger();
 public static final AtomicInteger activePbuffers=new AtomicInteger(),pbufferUpdates=new AtomicInteger(),windowUpdates=new AtomicInteger(),blockedUpdates=new AtomicInteger();
 public static final AtomicInteger terminateCalls=new AtomicInteger();public static volatile boolean failInitialize;
 public static volatile boolean blockUpdate;public static final Object updateLock=new Object();
 public static void releaseUpdate(){blockUpdate=false;synchronized(updateLock){updateLock.notifyAll();}}
 public static volatile boolean holdProducerFences,blockProducerPoll,failProducerPoll;
 public static final AtomicInteger blockedSwaps=new AtomicInteger(),producerCommands=new AtomicInteger(),waitIncomplete=new AtomicInteger(),producerPollBlocked=new AtomicInteger(),producerPolls=new AtomicInteger();
 public static final Object producerPollLock=new Object();
 public static volatile boolean es3=true,blockSwap,blockCopy,holdReadFences,failInit,failSwap,failUpdate,failCopyFence;
 public static volatile android.graphics.SurfaceTexture latestTexture;
 public static final ThreadLocal<Integer> nextError=ThreadLocal.withInitial(()->0);public static int fenceCount(){return fences.size();}
 public static final Object swapLock=new Object(),copyLock=new Object();public static final AtomicInteger blockedCopies=new AtomicInteger();
 public static final ThreadLocal<EGLContext> context=new ThreadLocal<>();public static final ThreadLocal<EGLSurface> surface=new ThreadLocal<>();
 static final ThreadLocal<State> state=ThreadLocal.withInitial(State::new);
 static class State {int texture2d,fbo,lastWrite,lastRead;final Map<Integer,Integer> attachments=new HashMap<>();}
 static class Fence{final EGLContext owner;final int reading;volatile boolean complete;Fence(EGLContext c,int r,boolean ready){owner=c;reading=r;complete=ready;}}
 public static final Map<Integer,Integer> reading=new ConcurrentHashMap<>();static final Map<Long,Fence> fences=new ConcurrentHashMap<>();public static final Set<Integer> textures=ConcurrentHashMap.newKeySet();
 public static void current(){if(context.get()==null||context.get()==EGL14.EGL_NO_CONTEXT)throw new AssertionError("GL with no current EGL context on "+Thread.currentThread().getName());}
 static void draw(){long until=System.nanoTime()+drawDelayNs;while(drawDelayNs>0&&System.nanoTime()<until)java.util.concurrent.locks.LockSupport.parkNanos(until-System.nanoTime());current();State s=state.get();if(s.fbo!=0){int target=s.attachments.get(s.fbo);synchronized(copyLock){if(blockCopy)blockedCopies.incrementAndGet();while(blockCopy)try{copyLock.wait();}catch(InterruptedException e){Thread.currentThread().interrupt();break;}}if(reading.getOrDefault(target,0)>0){hazards.incrementAndGet();throw new AssertionError("overwriting GPU-owned texture "+target);}s.lastWrite=target;copied.incrementAndGet();producerCommands.incrementAndGet();}else{int target=s.texture2d;s.lastRead=target;reading.merge(target,1,Integer::sum);}}
 static long fence(){current();State s=state.get();long id=ids.getAndIncrement();Fence f=new Fence(context.get(),s.lastRead,s.lastRead==0?!holdProducerFences:!holdReadFences);fences.put(id,f);if(failCopyFence&&Thread.currentThread().getName().contains("consume")){failCopyFence=false;nextError.set(1282);}if(f.complete&&f.reading!=0)reading.compute(f.reading,(k,v)->v==null||v<=1?null:v-1);s.lastRead=0;return id;}
 static void finish(){current();finishes.incrementAndGet();State s=state.get();if(s.lastRead!=0){reading.compute(s.lastRead,(k,v)->v==null||v<=1?null:v-1);s.lastRead=0;}for(Fence f:fences.values())if(f.owner==context.get())complete(f);}
 static void complete(Fence f){if(!f.complete){f.complete=true;if(f.reading!=0)reading.compute(f.reading,(k,v)->v==null||v<=1?null:v-1);}}
 public static boolean signaled(long id){Fence f=fences.get(id);return f!=null&&f.complete;}
 public static void signal(long id){Fence f=fences.get(id);if(f==null)throw new AssertionError("signal deleted fence");complete(f);}
 public static void serverWait(long id){current();Fence f=fences.get(id);if(f==null)throw new AssertionError("missing fence");if(!f.complete)waitIncomplete.incrementAndGet();}
 public static int poll(long id){
  current();Fence f=fences.get(id);if(f==null)return GLES30.GL_WAIT_FAILED;
  boolean producer=f.reading==0;
  if(producer){producerPolls.incrementAndGet();synchronized(producerPollLock){
   if(blockProducerPoll&&Thread.currentThread().getName().contains("display")){
    producerPollBlocked.incrementAndGet();while(blockProducerPoll)try{producerPollLock.wait();}catch(InterruptedException e){throw new AssertionError(e);}
    if(fences.get(id)!=f){hazards.incrementAndGet();throw new AssertionError("SELECTING producer fence deleted during poll");}
   }
  }if(failProducerPoll){failProducerPoll=false;return GLES30.GL_WAIT_FAILED;}}
  return f.complete?GLES30.GL_ALREADY_SIGNALED:GLES30.GL_TIMEOUT_EXPIRED;
 }
 public static void releaseProducerPoll(){blockProducerPoll=false;synchronized(producerPollLock){producerPollLock.notifyAll();}}
 public static void releaseFences(){for(Fence f:fences.values())complete(f);}
 public static void releaseCopy(){blockCopy=false;synchronized(copyLock){copyLock.notifyAll();}}public static void releaseSwap(){blockSwap=false;synchronized(swapLock){swapLock.notifyAll();}}
 public static void reset(){drawDelayNs=0;failInitialize=false;terminateCalls.set(0);blockUpdate=false;activePbuffers.set(0);pbufferUpdates.set(0);windowUpdates.set(0);blockedUpdates.set(0);holdProducerFences=blockProducerPoll=failProducerPoll=false;blockedSwaps.set(0);producerCommands.set(0);waitIncomplete.set(0);producerPollBlocked.set(0);producerPolls.set(0);es3=true;blockCopy=blockSwap=holdReadFences=failInit=failSwap=failUpdate=failCopyFence=false;blockedCopies.set(0);consumed.set(0);copied.set(0);swapped.set(0);hazards.set(0);activeWindows.set(0);activeContexts.set(0);finishes.set(0);reading.clear();fences.clear();textures.clear();latestTexture=null;}
}
