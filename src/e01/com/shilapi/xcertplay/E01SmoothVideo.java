package com.shilapi.xcertplay;
import android.app.Activity;import android.content.Context;import android.media.MediaCodec;import android.media.MediaFormat;import android.view.*;import android.widget.FrameLayout;
import java.lang.reflect.*;import java.util.*;
/** Main-screen only timestamp bridge. Other streams retain their existing renderer. */
public final class E01SmoothVideo {
 static final String PREF="06link-video";
 static final Map<Surface,Output> OUTPUTS=Collections.synchronizedMap(new WeakHashMap<Surface,Output>());
 static final Map<Surface,Boolean> OWNED_INPUTS=Collections.synchronizedMap(new WeakHashMap<Surface,Boolean>());
 static final Map<byte[],Stamp> STAMPS=Collections.synchronizedMap(new WeakHashMap<byte[],Stamp>());
 static final Map<MediaCodec,State> STATES=Collections.synchronizedMap(new WeakHashMap<MediaCodec,State>());
 static final Map<Activity,Integer> NEGOTIATED=Collections.synchronizedMap(new WeakHashMap<Activity,Integer>());
 static final Map<Activity,java.lang.ref.WeakReference<Binding>> BINDINGS=Collections.synchronizedMap(new WeakHashMap<Activity,java.lang.ref.WeakReference<Binding>>());
 static final Map<Activity,Boolean> GL_FALLBACK=Collections.synchronizedMap(new WeakHashMap<Activity,Boolean>());
 static final Map<Surface,Boolean> RETIRED_INPUTS=Collections.synchronizedMap(new WeakHashMap<Surface,Boolean>());
 private static volatile Field decoderField,receivedField;
 static final ThreadLocal<Stamp> PACKET=new ThreadLocal<Stamp>();
 static final class Stamp {
  final long sender, arrival;
  // Written before queue publication, then by the frame's single decoder-input owner.
  long enqueued, taken, slot, capWait = -1;
  Stamp(long s,long a){sender=s;arrival=a;}
  void reportStages() {
   if(E01SwipeTiming.collecting()) E01SwipeTiming.decoderStages(this,enqueued,taken,slot,capWait);
  }
 }
 static final class Output{final Context context;final java.lang.ref.WeakReference<Activity> owner;final int fps;final boolean smooth;final E01GlOutput gl;final java.lang.ref.WeakReference<Binding> binding;final boolean nativeCandidate;volatile boolean retired;
 Output(Context c,int f,boolean s){this(c,f,s,null);}Output(Context c,int f,boolean s,E01GlOutput g){this(c,f,s,g,null,false);}
 Output(Context c,int f,boolean s,E01GlOutput g,Binding b,boolean n){context=c.getApplicationContext();owner=new java.lang.ref.WeakReference<Activity>(c instanceof Activity?(Activity)c:null);fps=f;smooth=s;gl=g;binding=new java.lang.ref.WeakReference<Binding>(b);nativeCandidate=n;}
 Output(Output o,int f){context=o.context;owner=o.owner;fps=f;smooth=o.smooth;gl=o.gl;binding=o.binding;nativeCandidate=o.nativeCandidate;}}
 static final class Entry{final long local,queued,received;final Stamp stamp;long decodedAt,nextInputAt,longestPollNs,pollMisses;boolean ignore;
 Entry(long l,long q){this(l,q,0);}Entry(long l,long q,long r){this(l,q,r,null);}
 Entry(long l,long q,long r,Stamp stamp){local=l;queued=q;received=r;this.stamp=stamp;}}
 // Keep the same two pictures at every stage. Only metadata survives release.
 static final class SlowPair {
  private Entry previous, first, second;
  private long previousEnd, longestGap;
  void released(Entry frame, long end) {
   if(previous!=null && frame!=null && previous.stamp!=null && frame.stamp!=null
      && previous.decodedAt>0 && frame.decodedAt>=previous.decodedAt){
    long senderGap=frame.stamp.sender-previous.stamp.sender;
    long outputGap=end-previousEnd;
    if(senderGap>0 && senderGap<=50000000L && outputGap>50000000L && outputGap>longestGap
       && frame.stamp.arrival>=previous.stamp.arrival && frame.queued>=previous.queued){
     first=previous; second=frame; longestGap=outputGap;
    }
   }
   previous=frame;
   previousEnd=end;
  }
  PairSample take() {
   if(second==null)return null;
   PairSample sample=new PairSample(first,second,longestGap);
   first=null; second=null; longestGap=0;
   return sample;
  }
 }
 static final class PairSample {
  final Entry first,second;
  final long releaseGap;
  PairSample(Entry first,Entry second,long releaseGap){
   this.first=first;this.second=second;this.releaseGap=releaseGap;
  }
  String format(){
   return "pairUs sender="+(second.stamp.sender-first.stamp.sender)/1000
       +" arrival="+(second.stamp.arrival-first.stamp.arrival)/1000
       +" input="+(second.queued-first.queued)/1000
       +" decoded="+(second.decodedAt-first.decodedAt)/1000
       +" released="+releaseGap/1000
       +" nextInput="+(second.nextInputAt>0?(second.nextInputAt-second.queued)/1000:-1)
       +" afterNext="+(second.nextInputAt>0?(second.decodedAt-second.nextInputAt)/1000:-1)
       +" longestPoll="+second.longestPollNs/1000+" pollMisses="+second.pollMisses
       +" queueUs="+elapsedUs(first.stamp.enqueued,first.stamp.taken)+"/"+elapsedUs(second.stamp.enqueued,second.stamp.taken)
       +" takeToSlotUs="+elapsedUs(first.stamp.taken,first.stamp.slot)+"/"+elapsedUs(second.stamp.taken,second.stamp.slot)
       +" capUs="+waitUs(first.stamp.capWait)+"/"+waitUs(second.stamp.capWait);
  }
  private static long elapsedUs(long begin,long end) {
   return begin>0 && end>=begin ? (end-begin)/1000 : -1;
  }
  private static long waitUs(long duration) {
   return duration>=0 ? duration/1000 : -1;
  }
 }
 static final class State{final Output output;final E01PacingClock clock;final LinkedHashMap<Long,Entry> entries=new LinkedHashMap<Long,Entry>();long lastSender,lastQueued,lastPts;int samples;int pendingSignal=Integer.MIN_VALUE;
 final String evidenceIdentity=E01VideoEvidence.identity();
 final String codecIdentity=Long.toHexString(System.nanoTime());
 final E01FrameTiming decodeGaps=new E01FrameTiming(),releaseGaps=new E01FrameTiming(),queueAges=new E01FrameTiming(),inputWaits=new E01FrameTiming(),residences=new E01FrameTiming();
 final SlowPair slowPair=new SlowPair();
 final E01SwipePacing swipePacing=new E01SwipePacing();
 volatile long firstSwipeMoveNs;
 Entry lastPrepared;
 long longestPollNs,pollMisses;
 long lastDecodeNs,lastReleaseNs,reportCapWaitNs;
 final MediaCodec.BufferInfo scratch=new MediaCodec.BufferInfo(),heldInfo=new MediaCodec.BufferInfo();int heldIndex=-1;
 long inputStart,inputWaitMax,releaseMax,dequeueMax,residenceMax,queueAgeMax,submitted,outputCount,skipped,missing,decoded,immediateTargets;
 final long[] recentWait=new long[120],recentRelease=new long[120],recentResidence=new long[120],recentQueueAge=new long[120];int waitSlot,releaseSlot,residenceSlot,queueAgeSlot;
 boolean boundedRender,modernOutput,directCap4;volatile boolean retired;Surface surface;E01DirectOutputClock.Lease directClock;
 final E01DirectInFlight inFlight=new E01DirectInFlight(4);java.lang.ref.WeakReference<Object> inputOwner;
 long capPolls,capWaitNs,capBlockedSince,inputCapBaseline;int capMax;
 long directLateSkipped,directLateAgeMaxNs,directLateBatches;int directLateBatchMax;
 long inputPollMaxNs,inputPollTimeouts,inputPollCalls,reportPollTimeouts;
 long cappedTargets,maxAheadNs,reportAt=System.nanoTime(),reportSubmitted,reportOutput,reportSkipped,reportDecoded;int reports;
 final long[] steps=new long[30];boolean logged;State(Output o){output=o;clock=new E01PacingClock(o.fps);}}
 // Input and visibility callbacks run on the UI thread. Output reads the gesture
 // time only for the matching main screen and retains its own submission history.
 static void swipe(Activity owner,long firstMoveNs){
  if(owner==null)return;
  Surface surface=E01VideoVisibility.currentSurface(owner);
  if(surface==null||(firstMoveNs>0&&!E01VideoVisibility.visible(owner,surface)))return;
  synchronized(STATES){
   for(State state:STATES.values()){
    if(!state.retired&&state.surface==surface&&state.output.owner.get()==owner)
     state.firstSwipeMoveNs=firstMoveNs;
   }
  }
 }
 public static boolean smooth(Context c){return c.getSharedPreferences(PREF,0).getBoolean("smooth",true);}
 public static void negotiatedFps(Activity a,int value){NEGOTIATED.put(a,value>=60?60:30);Binding b=binding(a);if(b!=null)b.refreshRoute(false);E01SurfaceFrameRate.refresh(a);}
 static Binding binding(Activity a){java.lang.ref.WeakReference<Binding> ref=BINDINGS.get(a);return ref==null?null:ref.get();}
 static int selectedFps(Activity a){Integer negotiated=NEGOTIATED.get(a);return negotiated==null?fps(a):negotiated;}
 static boolean wantsDirect(Activity a){return glDevice()&&selectedFps(a)>=60&&E01DisplayClock.enabled(a)&&!Boolean.TRUE.equals(GL_FALLBACK.get(a));}
 static int fps(Activity a){return E01FrameRatePolicy.selectedFps(a);}
 static Field field(Object o,String n)throws Exception{Field f=o.getClass().getDeclaredField(n);f.setAccessible(true);return f;}
 static Object get(Object o,String n)throws Exception{return field(o,n).get(o);}
 static void call(Object o,String n,Class<?>[] types,Object...args)throws Exception{Method m=o.getClass().getDeclaredMethod(n,types);m.setAccessible(true);m.invoke(o,args);}
 public static View create(final Activity a){
  if(!smooth(a)){
   android.view.TextureView t=new android.view.TextureView(a);t.setTag(Boolean.FALSE);t.setOpaque(false);
   try{t.setSurfaceTextureListener((android.view.TextureView.SurfaceTextureListener)get(a,"textureListener"));}catch(Exception e){throw new IllegalStateException(e);}return t;
  }
  final FrameLayout frame=new FrameLayout(a);frame.setTag(Boolean.TRUE);installSurface(a,frame);return frame;
 }
 static void installSurface(Activity a,FrameLayout frame){final SurfaceView view=new SurfaceView(a);final Binding b=new Binding(a,frame);
  BINDINGS.put(a,new java.lang.ref.WeakReference<Binding>(b));view.setZOrderOnTop(false);view.getHolder().addCallback(b);
  frame.removeAllViews();frame.addView(view,new FrameLayout.LayoutParams(-1,-1));}
 static boolean glDevice(){return android.os.Build.VERSION.SDK_INT==22&&"E01".equals(android.os.Build.MODEL)&&"BX11QJ".equals(android.os.Build.DEVICE);}
 /** UI-owned Surface generation. A stale GL callback can never attach to a replacement window. */
 static final class Binding implements SurfaceHolder.Callback {
  final Activity activity;final FrameLayout frame;final android.os.Handler ui=new android.os.Handler(android.os.Looper.getMainLooper());long generation;Surface window,current;E01GlOutput bridge;boolean nativeRoute,replacing;
  Binding(Activity a,FrameLayout f){activity=a;frame=f;}
  public void surfaceCreated(SurfaceHolder holder){
   final long token=++generation;window=holder.getSurface();nativeRoute=wantsDirect(activity);
   if(!glDevice()){direct();return;}
   if(nativeRoute){try{direct();}catch(RuntimeException error){E01VideoEvidence.decision(activity,"Direct output attach failed; switching to GL");refreshRoute(true);}return;}
   final E01GlOutput[] candidate=new E01GlOutput[1];
   try{
    candidate[0]=new E01GlOutput(activity.getApplicationContext(),window,new E01GlOutput.Callback(){
     public void ready(final Surface input){ui.post(new Runnable(){public void run(){
      E01GlOutput output=candidate[0];
      if(token!=generation||window==null||!window.isValid()||activity.isFinishing()||activity.isDestroyed()||bridge!=output){if(output!=null)output.close();return;}
      try{attach(input,output);}catch(Exception error){output.abort(error);}
     }});}
     public void failed(final Throwable error){ui.post(new Runnable(){public void run(){
      E01GlOutput output=candidate[0];
      if(token!=generation||window==null||!window.isValid()||activity.isFinishing()||activity.isDestroyed()||bridge!=output){if(output!=null)output.close();return;}
      // The bridge reports errors only after its EGL window has disconnected.
      detach();bridge=null;if(output!=null)output.close();
      E01VideoEvidence.decision(activity,"GL output fallback "+E01VideoEvidence.failureSummary(error));direct();
     }});}
    });bridge=candidate[0];
   }catch(RuntimeException error){E01VideoEvidence.decision(activity,"GL output initialization failed "+E01VideoEvidence.failureSummary(error));direct();}
  }
  void refreshRoute(final boolean forceGl){ui.post(new Runnable(){public void run(){
   if(binding(activity)!=Binding.this||activity.isFinishing()||activity.isDestroyed())return;
   if(forceGl)GL_FALLBACK.put(activity,Boolean.TRUE);
   if(window==null||replacing||nativeRoute==wantsDirect(activity))return;
   // Never connect EGL and MediaCodec producers to the same native window.
   replacing=true;++generation;detach();E01GlOutput old=bridge;bridge=null;window=null;if(old!=null)old.close();
   installSurface(activity,frame);
  }});}
  void attach(Surface input,E01GlOutput output)throws Exception{
   current=input;RETIRED_INPUTS.remove(input);if(output!=null)OWNED_INPUTS.put(input,Boolean.TRUE);OUTPUTS.put(input,new Output(activity,selectedFps(activity),true,output,this,nativeRoute&&output==null));
   field(activity,"currentSurface").set(activity,input);field(activity,"currentSurfaceTexture").set(activity,null);
   call(activity,"attachSurface",new Class[]{Surface.class},input);
   E01VideoVisibility.surfaceReady(activity,input);
  }
  void direct(){if(window==null)return;try{attach(window,null);}catch(Exception e){throw new IllegalStateException(e);}}
  void detach(){Surface old=current;current=null;if(old==null)return;
   E01VideoVisibility.surfaceLost(activity,old);
   Output registered=OUTPUTS.remove(old);RETIRED_INPUTS.put(old,Boolean.TRUE);if(registered!=null)registered.retired=true;
   try{Object sink=get(activity,"sink");if(sink!=null){Method clear=sink.getClass().getMethod("clearSurface",int.class,Surface.class);clear.invoke(sink,110,old);clear.invoke(sink,111,old);}
    if(get(activity,"currentSurface")==old){field(activity,"currentSurface").set(activity,null);field(activity,"currentSurfaceTexture").set(activity,null);}
   }catch(Exception e){android.util.Log.w("06Link-video","Surface detach failed",e);}
  }
  public void surfaceChanged(SurfaceHolder h,int format,int width,int height){
   if(bridge!=null)bridge.resizeWindow(width,height);
   try{call(activity,"scheduleDisplaySize",new Class[]{int.class,int.class},frame.getWidth(),frame.getHeight());}catch(Exception e){throw new IllegalStateException(e);}
  }
  public void surfaceDestroyed(SurfaceHolder h){++generation;detach();E01GlOutput old=bridge;bridge=null;window=null;if(old!=null)old.close();}
 }
 public static boolean recreateIfNeeded(Activity a){try{Object view=get(a,"videoView");if(view instanceof View&&smooth(a)!=Boolean.TRUE.equals(((View)view).getTag())){a.recreate();return true;}Binding b=binding(a);if(b!=null)b.refreshRoute(false);}catch(Exception e){android.util.Log.w("06Link-video","View mode check failed",e);}return false;}
 public static void releaseSurface(Surface s){if(s!=null){Output o=OUTPUTS.get(s);if(o!=null){Activity a=o.owner.get();if(a!=null)E01VideoVisibility.surfaceLost(a,s);}if(o!=null&&o.gl!=null){OUTPUTS.remove(s);o.gl.close();}else if(!OWNED_INPUTS.containsKey(s)&&!RETIRED_INPUTS.containsKey(s)&&(o==null||!o.smooth))s.release();}}
 public static void packet(byte[] header){PACKET.set(new Stamp(E01PacingClock.senderNanos(header),System.nanoTime()));}
 // Called only for a complete main-screen frame in an active gesture sample.
 static void swipeReceived(Object reader,long preceding,long previousSender){
  swipeReceived(reader, preceding, previousSender, 0, 0);
 }
 static void swipeReceived(Object reader, long preceding, long previousSender, long headerFirst, long headerComplete) {
  Stamp stamp = PACKET.get();
  if (stamp != null) E01SwipeTiming.received(reader, stamp, stamp.arrival, preceding, previousSender,
      stamp.sender, headerFirst, headerComplete);
 }
 public static void stamp(byte[] bytes){Stamp s=PACKET.get();PACKET.remove();if(s!=null&&s.sender>0)STAMPS.put(bytes,s);}
 public static void converted(byte[] original,byte[] converted){
  if(original==converted)return;Stamp stamp=STAMPS.get(original);if(stamp!=null)STAMPS.put(converted,stamp);
 }
 // Called immediately before a main picture is published to the decode queue.
 // Holding the identity on the job also covers early discard and byte-array conversion.
 public static Object frameEnqueued(byte[] bytes) {
  Stamp stamp=STAMPS.get(bytes);
  if(stamp!=null) {
   stamp.enqueued=System.nanoTime();
   stamp.reportStages();
  }
  return stamp;
 }
 public static void frameTaken(Object marker) {
  if(marker==null)return;
  Stamp stamp=(Stamp)marker;
  stamp.taken=System.nanoTime();
  stamp.reportStages();
 }
 public static void inputStart(MediaCodec codec) {
  State s=STATES.get(codec);
  if(s!=null) synchronized(s) {
   s.inputStart=System.nanoTime();
   s.inputCapBaseline=s.capWaitNs;
  }
 }
 // A full direct cap waits for decoded credit. wait() releases the state monitor;
 // native codec calls stay outside it, and periodic returns preserve pump cancellation.
 public static int dequeueInput(MediaCodec codec){
  State s=STATES.get(codec);
  if(s==null||!s.boundedRender)return codec.dequeueInputBuffer(10000L);
  long start=System.nanoTime();
  try{
   synchronized(s){
    if(s.retired)return -1;
    if(s.directCap4&&s.inFlight.full()){
     s.capPolls++;if(s.capBlockedSince==0)s.capBlockedSince=start;
     long deadline=start+20000000L;
     // VideoInputPump owns the unchanged 500ms deadline. A cap wait must not
     // add another full slice when that input attempt is already about to expire.
     if(s.inputStart>0)deadline=Math.min(deadline,s.inputStart+500000000L);
     boolean interrupted=false;
     try{
      while(!s.retired&&s.inFlight.full()){
       long remaining=deadline-System.nanoTime();if(remaining<=0)break;
       s.wait(remaining/1000000L,(int)(remaining%1000000L));
      }
     }catch(InterruptedException e){interrupted=true;Thread.currentThread().interrupt();}
     finally{s.capWaitNs+=System.nanoTime()-start;}
     if(s.retired||s.inFlight.full()||interrupted){s.inputPollCalls++;s.inputPollTimeouts++;return -1;}
    }
    s.capBlockedSince=0;
   }
   int index=codec.dequeueInputBuffer(2000L);synchronized(s){s.inputPollCalls++;if(index<0)s.inputPollTimeouts++;}return index;
  }
  finally{synchronized(s){s.inputPollMaxNs=Math.max(s.inputPollMaxNs,System.nanoTime()-start);}}
 }
 public static void inputEnd(MediaCodec codec){inputEnd(codec,-1,null);}
 public static void inputEnd(MediaCodec codec,int index,Object marker) {
  final long slotAt=marker!=null && index>=0 ? System.nanoTime() : 0;
  State s=STATES.get(codec);
  long capWait=-1;
  boolean stalled=false;
  if(s!=null) synchronized(s) {
   long now=System.nanoTime();
   if(s.inputStart>0) {
    long n=now-s.inputStart;
    s.inputWaitMax=Math.max(s.inputWaitMax,n);
    s.recentWait[s.waitSlot++%120]=n;
    s.inputWaits.add(n);
    if(s.directCap4) capWait=s.capWaitNs-s.inputCapBaseline;
    s.inputStart=0;
   }
   stalled=s.directCap4&&!s.retired&&s.inFlight.full()&&s.capBlockedSince>0&&now-s.capBlockedSince>=400000000L;
  }
  // An unsuccessful acquire is not a slot. Never transfer its wait to a later frame.
  if(slotAt!=0) {
   Stamp stamp=(Stamp)marker;
   stamp.slot=slotAt;
   stamp.capWait=capWait;
   stamp.reportStages();
  }
  if(stalled) {
   Activity activity=s.output.owner.get();
   if(activity!=null&&E01VideoVisibility.visible(activity,s.surface)&&inputOwnerActive(s,codec)) {
    E01VideoEvidence.decision(s.output.context,"Direct output input stalled; switching to GL");
    configureFailed(codec);
   }
  }
 }
 static boolean inputOwnerActive(State s,MediaCodec codec){Object owner=s.inputOwner==null?null:s.inputOwner.get();if(owner==null)return false;
  try{return Boolean.TRUE.equals(get(owner,"running"))&&get(owner,"decoder")==codec;}catch(Exception ignored){return false;}}
 public static String diagnostic(Object decoder){try{MediaCodec c=(MediaCodec)get(decoder,"decoder");State s=STATES.get(c);if(s==null)return " paced=false";
  synchronized(s){long waiting=s.inputStart==0?0:System.nanoTime()-s.inputStart;
  long received=((Number)get(decoder,"e01ReceivedNs")).longValue();long age=received>0?Math.max(0,System.nanoTime()-received):0;
  String backlog="";try{Object queue=get(decoder,"queue");Object snap=queue.getClass().getMethod("e01BacklogAfterCurrent").invoke(queue);int pending=snap.getClass().getField("pending").getInt(snap);long newest=snap.getClass().getField("newest").getLong(snap);backlog=" pending="+pending+" queueSpanMs="+(newest>0&&received>0?Math.max(0,newest-received)/1000000:0);}catch(Exception ignored){}
  return backlog+" paced=true submitted="+s.submitted+" output="+s.outputCount+" decoded="+s.decoded+" skippedLate="+s.skipped+" missingStamp="+s.missing
   +" queueAgeMs="+age/1000000+" queueAgeP90Ms="+p90(s.recentQueueAge,s.queueAgeSlot)/1000000+" queueAgeMaxMs="+s.queueAgeMax/1000000+" inputPumpMaxMs="+Math.max(waiting,s.inputWaitMax)/1000000
   +" inputPumpP90Ms="+p90(s.recentWait,s.waitSlot)/1000000+" codecResidenceP90Ms="+p90(s.recentResidence,s.residenceSlot)/1000000
   +" codecResidenceMaxMs="+s.residenceMax/1000000+" releaseMaxMs="+s.releaseMax/1000000+" releaseP90Ms="+p90(s.recentRelease,s.releaseSlot)/1000000
   +" dequeueMaxMs="+s.dequeueMax/1000000+" pacingMs="+((s.directCap4||s.output.gl!=null)?0:s.clock.delay()/1000000)+" renderAheadMaxMs="+s.maxAheadNs/1000000+" renderCapped="+s.cappedTargets+" immediate="+s.immediateTargets+" inputPollMaxMs="+s.inputPollMaxNs/1000000+" inputPollTimeouts="+s.inputPollTimeouts
   +" directCap4="+s.directCap4+" capPending="+s.inFlight.pending()+" capPendingMax="+s.capMax+" capWaitMs="+s.capWaitNs/1000000;}
 }catch(Exception ignored){return " stageEvidence=unavailable";}}
 private static long p90(long[] values,int count){int n=Math.min(count,values.length);if(n<=0)return 0;long[] copy=Arrays.copyOf(values,n);Arrays.sort(copy);return copy[(n-1)*90/100];}
 public static boolean dedicated(MediaCodec codec){State s=STATES.get(codec);return s!=null&&(s.boundedRender||s.modernOutput);}
 static void retire(State old){if(old==null)return;E01SurfaceFrameRate.stopped(old);synchronized(old){old.retired=true;old.inFlight.reset();old.notifyAll();}
  E01DirectOutputClock.release(old.directClock);if(old.output.gl!=null)old.output.gl.releaseCodec();}
 public static void forget(MediaCodec codec){retire(STATES.remove(codec));}
 /** Stop display ownership immediately; native codec cleanup may finish later. */
 public static void stopping(MediaCodec codec){State s=STATES.get(codec);E01SurfaceFrameRate.stopped(s);if(s==null||!s.directCap4)return;
  synchronized(s){s.retired=true;s.inFlight.reset();s.notifyAll();}E01DirectOutputClock.release(s.directClock);
 }
 /** Invoked before failed configure is released; GL receives a fresh native window. */
 public static void configureFailed(MediaCodec codec){State s=STATES.get(codec);E01SurfaceFrameRate.stopped(s);if(s==null||!s.directCap4)return;
  synchronized(s){if(s.retired)return;s.retired=true;s.inFlight.reset();s.notifyAll();}
  E01DirectOutputClock.release(s.directClock);Output registered=OUTPUTS.get(s.surface);if(registered!=null)registered.retired=true;
  Binding b=s.output.binding.get();if(b!=null)b.refreshRoute(true);
 }
 /** queueInput can fail after presentation reserved its PTS; retire only that reservation. */
 public static void queueInput(MediaCodec codec,int index,int offset,int size,long pts,int flags){
  State s=STATES.get(codec);
  try{codec.queueInputBuffer(index,offset,size,pts,flags);}
  catch(RuntimeException error){if(s!=null)synchronized(s){if(s.inFlight.cancel(pts))s.notifyAll();s.entries.remove(pts);}throw error;}
 }
 public static void configure(MediaCodec codec,MediaFormat format,Surface surface,boolean tuned){
  Output output=OUTPUTS.get(surface);
  // Non-smooth TextureView main output is configured separately by its own surface owner.
  if(output==null){if(OWNED_INPUTS.containsKey(surface)||RETIRED_INPUTS.containsKey(surface))throw new IllegalStateException("Output surface retired");return;}
  if(output.retired)throw new IllegalStateException("Output surface retired");
  Activity owner=output.owner.get();
  int selected=owner==null?output.fps:selectedFps(owner);
  // Pair the realtime configuration with the negotiated picture rate. Plain retry
  // formats omit priority and keep the decoder's original unspecified rate.
  if(format.containsKey("priority")&&format.getInteger("priority")==0)
   format.setInteger("frame-rate",selected);
  if(output.smooth){
   if(output.nativeCandidate&&selected<60){output.retired=true;Binding b=output.binding.get();if(b!=null)b.refreshRoute(false);throw new IllegalStateException("Waiting for 30fps GL surface");}
   if(output.gl!=null){output.gl.retainCodec();try{output.gl.setFormat(format.getInteger("width"),format.getInteger("height"),selected);}catch(RuntimeException e){output.gl.releaseCodec();throw e;}}
   State fresh=new State(new Output(output,selected));fresh.surface=surface;
   fresh.directCap4=output.nativeCandidate&&output.gl==null&&glDevice()&&selected>=60&&"video/avc".equals(format.getString("mime"))&&"OMX.MTK.VIDEO.DECODER.AVC".equals(codec.getName());
   retire(STATES.put(codec,fresh));
   if(fresh.directCap4){E01DirectOutputClock.Lease lease=E01DirectOutputClock.acquire(owner,surface,selected);synchronized(fresh){if(fresh.retired)E01DirectOutputClock.release(lease);else fresh.directClock=lease;}}
   else if(output.nativeCandidate){output.retired=true;Binding b=output.binding.get();if(b!=null)b.refreshRoute(true);throw new IllegalStateException("Native direct requires MTK AVC");}
  }
  boolean mtk=output.context.getSharedPreferences(PREF,0).getBoolean("mtk",true);
  State renderState=STATES.get(codec);
  if(renderState!=null){renderState.modernOutput=android.os.Build.VERSION.SDK_INT>=30&&output.smooth&&output.gl==null&&!output.nativeCandidate;
   renderState.boundedRender=renderState.directCap4||output.gl!=null||boundedDevice(codec.getName(),mtk);
   if(renderState.modernOutput)E01SurfaceFrameRate.started(renderState,output.owner.get(),surface);
   if(renderState.directCap4)E01VideoEvidence.decision(output.context,"render pipeline=direct-hwc cap=4 capWait=signal/20ms inputPoll=2ms outputThread=dedicated outputWait=10ms timestamps=immediate maxFPS="+renderState.output.fps);
   else if(output.gl!=null)E01VideoEvidence.decision(output.context,"render pipeline=gl-oes inputPoll=2ms outputThread=dedicated outputWait=10ms timestamps=immediate maxFPS="+renderState.output.fps);
   else if(renderState.modernOutput)E01VideoEvidence.decision(output.context,"render pipeline=modern-surface outputThread=dedicated outputWait=10ms timestamps=paced maxFPS="+renderState.output.fps);
   else if(renderState.boundedRender)E01VideoEvidence.decision(output.context,"render horizon=17ms inputPoll=2ms outputThread=dedicated outputWait=10ms timestamps=explicit E01 MTK SurfaceView maxFPS="+renderState.output.fps);
  }
  if(tuned&&mtk){String name=codec.getName();if(E01MtkTuning.requested(name,mtk,tuned)){
   E01MtkCompat.configure(format,output.context);
   android.util.Log.i("06Link-video","Requested legacy MTK low latency; configure fallback retained");}}
 }
 public static void registerTexture(Activity a,Surface s){if(s!=null){OUTPUTS.put(s,new Output(a,fps(a),false));E01VideoVisibility.surfaceReady(a,s);}}
 public static long presentation(Object decoder,byte[] bytes){
  long now=System.nanoTime();Stamp stamp=STAMPS.remove(bytes);
  try{Field f=decoderField;if(f==null){f=field(decoder,"decoder");decoderField=f;}MediaCodec codec=(MediaCodec)f.get(decoder);State state=STATES.get(codec);
   if(state==null){
    if(E01SwipeTiming.collecting())E01SwipeTiming.prepared(stamp,codec,now/1000,now);
    return now/1000;
   }
   final long pts;final boolean reportSource;
   synchronized(state){state.submitted++;if(stamp==null)state.missing++;
   if(state.directCap4&&(state.inputOwner==null||state.inputOwner.get()!=decoder))state.inputOwner=new java.lang.ref.WeakReference<Object>(decoder);
   long received=0;
   try{Field rf=receivedField;if(rf==null){rf=field(decoder,"e01ReceivedNs");receivedField=rf;}received=rf.getLong(decoder);if(received>0){long age=Math.max(0,now-received);state.queueAgeMax=Math.max(state.queueAgeMax,age);state.recentQueueAge[state.queueAgeSlot++%120]=age;state.queueAges.add(age);}}catch(Exception ignored){}
   long local=stamp==null?0:state.clock.local(stamp.sender,stamp.arrival);
   if(stamp!=null&&state.lastSender>0){long step=stamp.sender-state.lastSender;
    if(step>120000000L||now-state.lastQueued>500000000L)for(Entry e:state.entries.values())e.ignore=true;
    if(step>0&&step<=120000000L&&state.samples<30)state.steps[state.samples++]=step;
   }
   if(stamp!=null)state.lastSender=stamp.sender;state.lastQueued=now;
   pts=Math.max(state.lastPts+1,(local>0?local:now)/1000);state.lastPts=pts;
   Entry prepared=new Entry(local,now,received,stamp);
   if(state.lastPrepared!=null&&state.lastPrepared.decodedAt==0)state.lastPrepared.nextInputAt=now;
   state.lastPrepared=prepared;
   state.entries.put(pts,prepared);while(state.entries.size()>256)state.entries.remove(state.entries.keySet().iterator().next());
   if(state.directCap4){state.inFlight.queued(pts,bytes);state.capMax=Math.max(state.capMax,state.inFlight.pending());}
   reportSource=state.samples==state.steps.length&&!state.logged;
   if(reportSource)state.logged=true;
   }
   if(E01SwipeTiming.collecting())E01SwipeTiming.prepared(stamp,codec,pts,now);
   if(reportSource)logSourceRate(state);
   return pts;
  }catch(Exception e){return now/1000;}
 }
 // The first thirty steps are immutable once collected. Keep the one-time Logcat
 // summary outside the monitor shared with output; it is intentionally not persisted.
 private static void logSourceRate(State state){
  long[] sorted=state.steps.clone();
  Arrays.sort(sorted);
  try{android.util.Log.i("06Link-video","Smooth video negotiatedMax="+state.output.fps
    +" sourceMedianStepUs="+sorted[sorted.length/2]/1000+" output="+(state.output.gl==null?"SurfaceView":"GL-OES"));}
  catch(RuntimeException ignored){}
 }
 /** Coalesce only decoded, late outputs when a strictly newer decoded output is ready.
  * Never discard compressed frames, the last available image, EOS, or format changes. */
 public static int take(MediaCodec codec,MediaCodec.BufferInfo info){
  State s=STATES.get(codec);if(s==null){
   int index=LatestVideoOutput.take(codec,info);
   if(index>=0&&(info.flags&6)==0&&E01SwipeTiming.collecting())E01SwipeTiming.decoded(codec,info.presentationTimeUs,System.nanoTime());
   return index;
  }
  synchronized(s){if(s.pendingSignal!=Integer.MIN_VALUE){int signal=s.pendingSignal;s.pendingSignal=Integer.MIN_VALUE;return signal;}}
  // Only the output owner waits here. Do not hold the lock needed by presentation/input.
  int index=dequeue(codec,info,s,E01VideoOutput.timeoutUs(codec));
  // GL's final consumer selects its image. Native cap4 only coalesces clearly old
  // decoded output; its normal 60 Hz path keeps the verified immediate timestamps.
  if(s.output.gl!=null)return index;
   final boolean direct=s.directCap4;int merged=0;
   for(int n=0;n<(direct?3:16)&&index>=0&&E01VideoOutput.active(codec);n++){
    synchronized(s){if(!(direct?directLate(s,info,System.nanoTime()):late(s,info,System.nanoTime())))break;}
    int next=dequeue(codec,s.scratch,s,0L);
    if(next<0){synchronized(s){if(next!=-1)s.pendingSignal=next;}break;}
    Entry old;long droppedAt=System.nanoTime();
    synchronized(s){
     // A stop can arrive during the native zero-timeout poll. Preserve both owned
     // outputs; the output owner still performs the normal release/cleanup.
     if((s.scratch.flags&6)!=0||s.scratch.presentationTimeUs<=info.presentationTimeUs
       ||(direct&&(s.retired||!E01VideoOutput.active(codec)))){
      s.heldIndex=next;s.heldInfo.set(s.scratch.offset,s.scratch.size,s.scratch.presentationTimeUs,s.scratch.flags);break;
     }
     old=s.entries.remove(info.presentationTimeUs);measureResidence(s,old,droppedAt);
    }
    long start=System.nanoTime();codec.releaseOutputBuffer(index,false);
    synchronized(s){measureRelease(s,System.nanoTime()-start);s.skipped++;
     if(direct){s.directLateSkipped++;if(merged++==0)s.directLateBatches++;
      s.directLateBatchMax=Math.max(s.directLateBatchMax,merged);
      if(old!=null&&old.received>0)s.directLateAgeMaxNs=Math.max(s.directLateAgeMaxNs,droppedAt-old.received);
     }
    }
    index=next;info.set(s.scratch.offset,s.scratch.size,s.scratch.presentationTimeUs,s.scratch.flags);
   }
  return index;
 }
 private static int dequeue(MediaCodec c,MediaCodec.BufferInfo info,State s,long timeout){
  synchronized(s){if(s.heldIndex>=0){int index=s.heldIndex;s.heldIndex=-1;info.set(s.heldInfo.offset,s.heldInfo.size,s.heldInfo.presentationTimeUs,s.heldInfo.flags);return index;}}
  long start=System.nanoTime();int index=c.dequeueOutputBuffer(info,timeout);
  long end=System.nanoTime();
  if(index>=0&&(info.flags&6)==0&&E01SwipeTiming.collecting())E01SwipeTiming.decoded(c,info.presentationTimeUs,end);
  synchronized(s){s.dequeueMax=Math.max(s.dequeueMax,end-start);
   s.longestPollNs=Math.max(s.longestPollNs,end-start);
   if(index==-1)s.pollMisses++;
   if(index>=0){s.decoded++;
   if((info.flags&6)==0){
    Entry entry=s.entries.get(info.presentationTimeUs);if(entry!=null){entry.decodedAt=end;
     // Input and output return on independent threads. Only a next input actually
     // prepared before this native output returned can explain its waiting time.
     if(entry.nextInputAt>end)entry.nextInputAt=0;
     entry.longestPollNs=s.longestPollNs;entry.pollMisses=s.pollMisses;
    }
    s.longestPollNs=s.pollMisses=0;
    if(s.lastDecodeNs>0)s.decodeGaps.add(end-s.lastDecodeNs);s.lastDecodeNs=end;}
   if(s.directCap4&&s.inFlight.decoded(info.presentationTimeUs,info.flags)){s.capBlockedSince=0;s.notifyAll();}}}return index;
 }
 static boolean late(State s,MediaCodec.BufferInfo info,long now){Entry e=s.entries.get(info.presentationTimeUs);
  return (info.flags&6)==0&&e!=null&&e.local>0&&!e.ignore&&now-(e.local+s.clock.delay())>2000000000L/s.output.fps;
 }
 // Receiver time is monotonic and independent of sender-clock estimation. 150 ms
 // is above the measured 64-87 ms normal native residence; newer output must also
 // be ready before take() discards anything. Never wait for that replacement.
 static boolean directLate(State s,MediaCodec.BufferInfo info,long now){Entry e=s.entries.get(info.presentationTimeUs);
  return s.directCap4&&!s.retired&&(info.flags&6)==0&&e!=null&&e.received>0
   &&e.received<=e.queued&&e.queued<=now&&now-e.received>=150000000L;
 }
 private static void measureResidence(State s,Entry e,long now){if(e!=null){long n=Math.max(0,now-e.queued);s.residences.add(n);
  if(!e.ignore){s.residenceMax=Math.max(s.residenceMax,n);s.recentResidence[s.residenceSlot++%120]=n;}}}
 private static void measureRelease(State s,long n){s.releaseMax=Math.max(s.releaseMax,n);s.recentRelease[s.releaseSlot++%120]=n;}

 public static void release(MediaCodec codec,int index,boolean render,MediaCodec.BufferInfo info){
  State state=STATES.get(codec);if(state==null){
   codec.releaseOutputBuffer(index,render);
   if(render&&(info.flags&6)==0&&E01SwipeTiming.collecting())E01SwipeTiming.submitted(codec,info.presentationTimeUs,System.nanoTime(),0);
   return;
  }
  long now=System.nanoTime(),target=0;
  final Entry entry;
  final long normalAt,steadyAt;
  final boolean pacedPicture=render&&(info.flags&6)==0&&state.output.smooth
      &&state.output.gl==null&&!state.directCap4&&!state.boundedRender;
  synchronized(state){
   entry=state.entries.remove(info.presentationTimeUs);
   measureResidence(state,entry,now);
   if(render&&state.output.gl==null&&!state.directCap4&&entry!=null&&entry.local>0){if(!entry.ignore)state.clock.sample(now-entry.local);target=entry.local+state.clock.delay();}
   target=limitTarget(state,target,now);
   normalAt=pacedPicture&&target>now&&target-now<=500000000L?target:0;
   if(pacedPicture&&!state.retired&&entry!=null&&!entry.ignore&&entry.stamp!=null){
    target=state.swipePacing.target(state.firstSwipeMoveNs,entry.stamp.arrival,target,now,state.output.fps);
    steadyAt=state.swipePacing.steadyTargetNs();
   }else steadyAt=0;
   if(render&&target>now&&target-now<=500000000L)state.maxAheadNs=Math.max(state.maxAheadNs,target-now);
  }
  long start=System.nanoTime();
  long requestedAt=0;
  if(render&&(state.output.gl!=null||state.directCap4)){
   // Explicit unique monotonic timestamps reach SurfaceTexture without future display scheduling.
   requestedAt=start;
   codec.releaseOutputBuffer(index,start);
   synchronized(state){state.immediateTargets++;}
  }else if(render&&state.boundedRender){
   // API 22 has no defined default Surface timestamp. Late/missing times use
   // explicit monotonic now; valid future targets keep the existing 17ms cap.
   long timestamp=target>start&&target-start<=500000000L?target:start;
   requestedAt=timestamp;
   codec.releaseOutputBuffer(index,timestamp);
   if(timestamp==start)synchronized(state){state.immediateTargets++;}
  }else if(normalAt>0&&steadyAt>0&&target==now){
   // A valid future reservation has been brought all the way to immediate display.
   requestedAt=start;
   codec.releaseOutputBuffer(index,start);
   synchronized(state){state.immediateTargets++;}
  }else if(render&&target>now&&target-now<=500000000L){requestedAt=target;codec.releaseOutputBuffer(index,target);}
  else codec.releaseOutputBuffer(index,render);
  long end=System.nanoTime();
  if(render&&(info.flags&6)==0&&E01SwipeTiming.collecting())E01SwipeTiming.submitted(codec,info.presentationTimeUs,end,requestedAt,normalAt,steadyAt);
  synchronized(state){
   if(pacedPicture)state.swipePacing.noteSubmitted(requestedAt>0?requestedAt:end);
   measureRelease(state,end-start);if(render){state.outputCount++;
   if((info.flags&6)==0){state.slowPair.released(entry,end);if(state.lastReleaseNs>0)state.releaseGaps.add(end-state.lastReleaseNs);state.lastReleaseNs=end;}}}
  report(state,end);
 }
 // SurfaceView keeps codec buffers until the scheduled presentation is consumed.
 // On this 60 Hz E01, avoid queuing 6-12 frames into the legacy MTK display path.
 // Output scheduling is independent of accepting/retiring vendor codec options.
 static boolean boundedDevice(String codec,boolean mtk){
  return android.os.Build.VERSION.SDK_INT==22&&"E01".equals(android.os.Build.MODEL)
   &&"BX11QJ".equals(android.os.Build.DEVICE)&&E01MtkTuning.requested(codec,mtk,true);
 }
 static long limitTarget(State s,long target,long now){
  long ahead=target-now;
  if(s.boundedRender&&ahead>16666667L&&ahead<=500000000L){s.cappedTargets++;return now+16666667L;}
  return target;
 }
 // Initial three 10-second summaries, then one per minute while frames flow.
 // Statistics only: codec input, pacing, cap4, output and transport behavior are unchanged.
 static final class Report {
  final long number,span,submitted,decoded,released,skipped,pollTimeouts,lateSkipped,lateBatches,lateAge;
  final int fps,pending,lateBatchMax;final boolean direct;final long[] queue,wait,residence;
  Report(State s,long now){
   number=s.reports+1;span=now-s.reportAt;fps=s.output.fps;
   submitted=s.submitted-s.reportSubmitted;decoded=s.decoded-s.reportDecoded;
   released=s.outputCount-s.reportOutput;skipped=s.skipped-s.reportSkipped;
   pollTimeouts=s.inputPollTimeouts-s.reportPollTimeouts;pending=s.inFlight.pending();direct=s.directCap4;
   lateSkipped=s.directLateSkipped;lateBatches=s.directLateBatches;lateBatchMax=s.directLateBatchMax;lateAge=s.directLateAgeMaxNs;
   queue=Arrays.copyOf(s.recentQueueAge,Math.min(s.queueAgeSlot,s.recentQueueAge.length));
   wait=Arrays.copyOf(s.recentWait,Math.min(s.waitSlot,s.recentWait.length));
   residence=Arrays.copyOf(s.recentResidence,Math.min(s.residenceSlot,s.recentResidence.length));
  }
  String format(){return String.format(java.util.Locale.US,
   "n=%d spanMs=%d maxFPS=%d submittedFps=%.1f decodedFps=%.1f releasedFps=%.1f skipped=%d recentQueueP90Ms=%d recentInputP90Ms=%d recentResidenceP90Ms=%d pollTimeouts=%d capPending=%d directCap4=%s directLateSkipped=%d directLateBatches=%d directLateBatchMax=%d directLateAgeMaxMs=%d",
   number,span/1000000,fps,submitted*1e9/span,decoded*1e9/span,released*1e9/span,skipped,
   percentile(queue)/1000000,percentile(wait)/1000000,percentile(residence)/1000000,
   pollTimeouts,pending,direct,lateSkipped,lateBatches,lateBatchMax,lateAge/1000000);}
  private static long percentile(long[] values){if(values.length==0)return 0;Arrays.sort(values);return values[(values.length-1)*90/100];}
 }
 /** Whole reporting-window histograms; release is submission completion, never panel presentation. */
 static final class TimingReport {
  final String header;final PairSample slowPair;final E01FrameTiming.Snapshot decoded,released,queue,input,residence;
  final long capWaitMs;
  TimingReport(State s,long now){
   String route=s.directCap4?"direct-hwc":s.output.gl!=null?"gl-oes":s.boundedRender?"bounded-surface":s.modernOutput?"modern-surface":"surface";
   header="screen=110 codec="+s.codecIdentity+" route="+route+" n="+(s.reports+1)+" spanMs="+(now-s.reportAt)/1000000+" histUs=n/p95u/p99u/max/gt50/gt100";
   slowPair=s.slowPair.take();
   decoded=s.decodeGaps.snapshotAndReset();released=s.releaseGaps.snapshotAndReset();
   queue=s.queueAges.snapshotAndReset();input=s.inputWaits.snapshotAndReset();residence=s.residences.snapshotAndReset();
   capWaitMs=(s.capWaitNs-s.reportCapWaitNs)/1000000;s.reportCapWaitNs=s.capWaitNs;
  }
  String cadence(){return header+" "+decoded.format("decodeGap")+" "+released.format("releaseGap")+" capWaitMs="+capWaitMs;}
  String stages(){return header+" "+queue.format("queueAge")+" "+input.format("inputWait")+" "+residence.format("residence");}
 }
 static void report(State s,long now){
  final Report snapshot;final TimingReport timing;
  synchronized(s){long span=now-s.reportAt;if(span<(s.reports<3?10000000000L:60000000000L))return;
   snapshot=new Report(s,now);timing=new TimingReport(s,now);
   s.reports++;s.reportAt=now;s.reportSubmitted=s.submitted;s.reportOutput=s.outputCount;s.reportSkipped=s.skipped;s.reportDecoded=s.decoded;s.reportPollTimeouts=s.inputPollTimeouts;
  }
  // Sorting and formatting cannot hold the state needed by the codec input/output owners.
  E01VideoEvidence.sample(s.output.context,s.evidenceIdentity,snapshot.format());
  E01VideoEvidence.timing(s.output.context,s.evidenceIdentity,timing.cadence());
  E01VideoEvidence.timing(s.output.context,s.evidenceIdentity,timing.stages());
  if(timing.slowPair!=null)E01VideoEvidence.timing(s.output.context,s.evidenceIdentity,
      "screen=110 codec="+s.codecIdentity+" n="+snapshot.number+" "+timing.slowPair.format());
 }
}
