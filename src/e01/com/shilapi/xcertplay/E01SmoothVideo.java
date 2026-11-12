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
 static final class Stamp{final long sender,arrival;Stamp(long s,long a){sender=s;arrival=a;}}
 static final class Output{final Context context;final java.lang.ref.WeakReference<Activity> owner;final int fps;final boolean smooth;final E01GlOutput gl;final java.lang.ref.WeakReference<Binding> binding;final boolean nativeCandidate;volatile boolean retired;
 Output(Context c,int f,boolean s){this(c,f,s,null);}Output(Context c,int f,boolean s,E01GlOutput g){this(c,f,s,g,null,false);}
 Output(Context c,int f,boolean s,E01GlOutput g,Binding b,boolean n){context=c.getApplicationContext();owner=new java.lang.ref.WeakReference<Activity>(c instanceof Activity?(Activity)c:null);fps=f;smooth=s;gl=g;binding=new java.lang.ref.WeakReference<Binding>(b);nativeCandidate=n;}
 Output(Output o,int f){context=o.context;owner=o.owner;fps=f;smooth=o.smooth;gl=o.gl;binding=o.binding;nativeCandidate=o.nativeCandidate;}}
 static final class Entry{final long local,queued,received;boolean ignore;
 Entry(long l,long q){this(l,q,0);}Entry(long l,long q,long r){local=l;queued=q;received=r;}}
 static final class State{final Output output;final E01PacingClock clock;final LinkedHashMap<Long,Entry> entries=new LinkedHashMap<Long,Entry>();long lastSender,lastQueued,lastPts;int samples;int pendingSignal=Integer.MIN_VALUE;
 final MediaCodec.BufferInfo scratch=new MediaCodec.BufferInfo(),heldInfo=new MediaCodec.BufferInfo();int heldIndex=-1;
 long inputStart,inputWaitMax,releaseMax,dequeueMax,residenceMax,queueAgeMax,submitted,outputCount,skipped,missing,decoded,immediateTargets;
 final long[] recentWait=new long[120],recentRelease=new long[120],recentResidence=new long[120],recentQueueAge=new long[120];int waitSlot,releaseSlot,residenceSlot,queueAgeSlot;
 boolean boundedRender,directCap4;volatile boolean retired;Surface surface;E01DirectOutputClock.Lease directClock;
 final E01DirectInFlight inFlight=new E01DirectInFlight(4);java.lang.ref.WeakReference<Object> inputOwner;
 long capPolls,capWaitNs,capBlockedSince;int capMax;
 long directLateSkipped,directLateAgeMaxNs,directLateBatches;int directLateBatchMax;
 long inputPollMaxNs,inputPollTimeouts,inputPollCalls,reportPollTimeouts;
 long cappedTargets,maxAheadNs,reportAt=System.nanoTime(),reportSubmitted,reportOutput,reportSkipped,reportDecoded;int reports;
 final long[] steps=new long[30];boolean logged;State(Output o){output=o;clock=new E01PacingClock(o.fps);}}
 public static boolean smooth(Context c){return c.getSharedPreferences(PREF,0).getBoolean("smooth",false);}
 public static void negotiatedFps(Activity a,int value){NEGOTIATED.put(a,value>=60?60:30);Binding b=binding(a);if(b!=null)b.refreshRoute(false);}
 static Binding binding(Activity a){java.lang.ref.WeakReference<Binding> ref=BINDINGS.get(a);return ref==null?null:ref.get();}
 static int selectedFps(Activity a){Integer negotiated=NEGOTIATED.get(a);return negotiated==null?fps(a):negotiated;}
 static boolean wantsDirect(Activity a){return glDevice()&&selectedFps(a)>=60&&E01DisplayClock.enabled(a)&&!Boolean.TRUE.equals(GL_FALLBACK.get(a));}
 static int fps(Activity a){try{if(Boolean.TRUE.equals(get(a,"sessionForce30Fps")))return 30;}catch(Exception ignored){}
  android.content.SharedPreferences p=a.getSharedPreferences("xcertplay_airplay",0);return "manual".equals(p.getString("display_fps_mode","auto"))&&p.getInt("display_fps",30)>=60?60:30;}
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
 public static void stamp(byte[] bytes){Stamp s=PACKET.get();PACKET.remove();if(s!=null&&s.sender>0)STAMPS.put(bytes,s);}
 public static void converted(byte[] original,byte[] converted){
  if(original==converted)return;Stamp stamp=STAMPS.get(original);if(stamp!=null)STAMPS.put(converted,stamp);
 }
 public static void inputStart(MediaCodec codec){State s=STATES.get(codec);if(s!=null)synchronized(s){s.inputStart=System.nanoTime();}}
 // Input waits never hold the pacing-state lock: the output owner must keep returning buffers.
 public static int dequeueInput(MediaCodec codec){
  State s=STATES.get(codec);
  if(s==null||!s.boundedRender)return codec.dequeueInputBuffer(10000L);
  long start=System.nanoTime();
  try{
   boolean full;synchronized(s){if(s.retired)return -1;full=s.directCap4&&s.inFlight.full();if(full){s.capPolls++;if(s.capBlockedSince==0)s.capBlockedSince=start;}else s.capBlockedSince=0;}
   if(full){
    // Return to VideoInputPump after a short poll; it keeps this access unit,
    // drains output, and observes cancellation/failure/its existing deadline.
    try{Thread.sleep(2L);}catch(InterruptedException e){Thread.currentThread().interrupt();}
    synchronized(s){s.capWaitNs+=System.nanoTime()-start;s.inputPollCalls++;s.inputPollTimeouts++;}return -1;
   }
   int index=codec.dequeueInputBuffer(2000L);synchronized(s){s.inputPollCalls++;if(index<0)s.inputPollTimeouts++;}return index;
  }
  finally{synchronized(s){s.inputPollMaxNs=Math.max(s.inputPollMaxNs,System.nanoTime()-start);}}
 }
 public static void inputEnd(MediaCodec codec){State s=STATES.get(codec);if(s==null)return;boolean stalled=false;
  synchronized(s){long now=System.nanoTime();if(s.inputStart>0){long n=now-s.inputStart;s.inputWaitMax=Math.max(s.inputWaitMax,n);s.recentWait[s.waitSlot++%120]=n;s.inputStart=0;}
   stalled=s.directCap4&&!s.retired&&s.inFlight.full()&&s.capBlockedSince>0&&now-s.capBlockedSince>=400000000L;}
  Activity activity=s.output.owner.get();
  if(stalled&&activity!=null&&E01VideoVisibility.visible(activity,s.surface)&&inputOwnerActive(s,codec)){E01VideoEvidence.decision(s.output.context,"Direct output input stalled; switching to GL");configureFailed(codec);}
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
 public static boolean dedicated(MediaCodec codec){State s=STATES.get(codec);return s!=null&&s.boundedRender;}
 static void retire(State old){if(old==null)return;synchronized(old){old.retired=true;old.inFlight.reset();}
  E01DirectOutputClock.release(old.directClock);if(old.output.gl!=null)old.output.gl.releaseCodec();}
 public static void forget(MediaCodec codec){retire(STATES.remove(codec));}
 /** Stop display ownership immediately; native codec cleanup may finish later. */
 public static void stopping(MediaCodec codec){State s=STATES.get(codec);if(s==null||!s.directCap4)return;
  synchronized(s){s.retired=true;s.inFlight.reset();}E01DirectOutputClock.release(s.directClock);
 }
 /** Invoked before failed configure is released; GL receives a fresh native window. */
 public static void configureFailed(MediaCodec codec){State s=STATES.get(codec);if(s==null||!s.directCap4)return;
  synchronized(s){if(s.retired)return;s.retired=true;s.inFlight.reset();}
  E01DirectOutputClock.release(s.directClock);Output registered=OUTPUTS.get(s.surface);if(registered!=null)registered.retired=true;
  Binding b=s.output.binding.get();if(b!=null)b.refreshRoute(true);
 }
 /** queueInput can fail after presentation reserved its PTS; retire only that reservation. */
 public static void queueInput(MediaCodec codec,int index,int offset,int size,long pts,int flags){
  try{codec.queueInputBuffer(index,offset,size,pts,flags);}
  catch(RuntimeException error){State s=STATES.get(codec);if(s!=null)synchronized(s){s.inFlight.cancel(pts);s.entries.remove(pts);}throw error;}
 }
 public static void configure(MediaCodec codec,MediaFormat format,Surface surface,boolean tuned){
  Output output=OUTPUTS.get(surface);
  // Non-smooth TextureView main output is configured separately by its own surface owner.
  if(output==null){if(OWNED_INPUTS.containsKey(surface)||RETIRED_INPUTS.containsKey(surface))throw new IllegalStateException("Output surface retired");return;}
  if(output.retired)throw new IllegalStateException("Output surface retired");
  if(output.smooth){Activity owner=output.owner.get();int selected=owner==null?output.fps:selectedFps(owner);
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
  if(renderState!=null){renderState.boundedRender=renderState.directCap4||output.gl!=null||boundedDevice(codec.getName(),mtk);
   if(renderState.directCap4)E01VideoEvidence.decision(output.context,"render pipeline=direct-hwc cap=4 inputPoll=2ms outputThread=dedicated outputWait=10ms timestamps=immediate maxFPS="+renderState.output.fps);
   else if(output.gl!=null)E01VideoEvidence.decision(output.context,"render pipeline=gl-oes inputPoll=2ms outputThread=dedicated outputWait=10ms timestamps=immediate maxFPS="+renderState.output.fps);
   else if(renderState.boundedRender)E01VideoEvidence.decision(output.context,"render horizon=17ms inputPoll=2ms outputThread=dedicated outputWait=10ms timestamps=explicit E01 MTK SurfaceView maxFPS="+renderState.output.fps);
  }
  if(tuned&&mtk){String name=codec.getName();if(E01MtkTuning.requested(name,mtk,tuned)){
   E01MtkCompat.configure(format,output.context);
   android.util.Log.i("06Link-video","Requested legacy MTK low latency; configure fallback retained");}}
 }
 public static void registerTexture(Activity a,Surface s){if(s!=null){OUTPUTS.put(s,new Output(a,fps(a),false));E01VideoVisibility.surfaceReady(a,s);}}
 public static long presentation(Object decoder,byte[] bytes){
  long now=System.nanoTime();Stamp stamp=STAMPS.remove(bytes);
  try{Field f=decoderField;if(f==null){f=field(decoder,"decoder");decoderField=f;}MediaCodec codec=(MediaCodec)f.get(decoder);State state=STATES.get(codec);if(state==null)return now/1000;
   synchronized(state){state.submitted++;if(stamp==null)state.missing++;
   if(state.directCap4&&(state.inputOwner==null||state.inputOwner.get()!=decoder))state.inputOwner=new java.lang.ref.WeakReference<Object>(decoder);
   long received=0;
   try{Field rf=receivedField;if(rf==null){rf=field(decoder,"e01ReceivedNs");receivedField=rf;}received=rf.getLong(decoder);if(received>0){long age=Math.max(0,now-received);state.queueAgeMax=Math.max(state.queueAgeMax,age);state.recentQueueAge[state.queueAgeSlot++%120]=age;}}catch(Exception ignored){}
   long local=stamp==null?0:state.clock.local(stamp.sender,stamp.arrival);
   if(stamp!=null&&state.lastSender>0){long step=stamp.sender-state.lastSender;
    if(step>120000000L||now-state.lastQueued>500000000L)for(Entry e:state.entries.values())e.ignore=true;
    if(step>0&&step<=120000000L&&state.samples<30)state.steps[state.samples++]=step;
   }
   if(stamp!=null)state.lastSender=stamp.sender;state.lastQueued=now;
   long pts=Math.max(state.lastPts+1,(local>0?local:now)/1000);state.lastPts=pts;
   state.entries.put(pts,new Entry(local,now,received));while(state.entries.size()>256)state.entries.remove(state.entries.keySet().iterator().next());
   if(state.directCap4){state.inFlight.queued(pts,bytes);state.capMax=Math.max(state.capMax,state.inFlight.pending());}
   if(state.samples==30&&!state.logged){state.logged=true;long[] sorted=state.steps.clone();Arrays.sort(sorted);String text="Smooth video negotiatedMax="+state.output.fps+" sourceMedianStepUs="+sorted[15]/1000+" output="+(state.output.gl==null?"SurfaceView":"GL-OES");android.util.Log.i("06Link-video",text);try{java.io.File d=state.output.context.getExternalFilesDir(null);if(d==null)d=state.output.context.getFilesDir();E01LogPolicy.append(new java.io.File(d,"06link.log"),text);}catch(RuntimeException ignored){}}
   return pts;}
  }catch(Exception e){return now/1000;}
 }
 /** Coalesce only decoded, late outputs when a strictly newer decoded output is ready.
  * Never discard compressed frames, the last available image, EOS, or format changes. */
 public static int take(MediaCodec codec,MediaCodec.BufferInfo info){
  State s=STATES.get(codec);if(s==null)return LatestVideoOutput.take(codec,info);
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
  synchronized(s){s.dequeueMax=Math.max(s.dequeueMax,System.nanoTime()-start);if(index>=0){s.decoded++;if(s.directCap4&&s.inFlight.decoded(info.presentationTimeUs,info.flags))s.capBlockedSince=0;}}return index;
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
 private static void measureResidence(State s,Entry e,long now){if(e!=null&&!e.ignore){long n=Math.max(0,now-e.queued);s.residenceMax=Math.max(s.residenceMax,n);s.recentResidence[s.residenceSlot++%120]=n;}}
 private static void measureRelease(State s,long n){s.releaseMax=Math.max(s.releaseMax,n);s.recentRelease[s.releaseSlot++%120]=n;}

 public static void release(MediaCodec codec,int index,boolean render,MediaCodec.BufferInfo info){
  State state=STATES.get(codec);if(state==null){codec.releaseOutputBuffer(index,render);return;}
  long now=System.nanoTime(),target=0;
  synchronized(state){
   Entry entry=state.entries.remove(info.presentationTimeUs);
   measureResidence(state,entry,now);
   if(render&&state.output.gl==null&&!state.directCap4&&entry!=null&&entry.local>0){if(!entry.ignore)state.clock.sample(now-entry.local);target=entry.local+state.clock.delay();}
   target=limitTarget(state,target,now);
   if(render&&target>now&&target-now<=500000000L)state.maxAheadNs=Math.max(state.maxAheadNs,target-now);
  }
  long start=System.nanoTime();
  if(render&&(state.output.gl!=null||state.directCap4)){
   // Explicit unique monotonic timestamps reach SurfaceTexture without future display scheduling.
   codec.releaseOutputBuffer(index,start);
   synchronized(state){state.immediateTargets++;}
  }else if(render&&state.boundedRender){
   // API 22 has no defined default Surface timestamp. Late/missing times use
   // explicit monotonic now; valid future targets keep the existing 17ms cap.
   long timestamp=target>start&&target-start<=500000000L?target:start;
   codec.releaseOutputBuffer(index,timestamp);
   if(timestamp==start)synchronized(state){state.immediateTargets++;}
  }else if(render&&target>now&&target-now<=500000000L)codec.releaseOutputBuffer(index,target);
  else codec.releaseOutputBuffer(index,render);
  synchronized(state){measureRelease(state,System.nanoTime()-start);if(render)state.outputCount++;}
  report(state,System.nanoTime());
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
 // Three 10-second summaries per codec; no per-frame log or capture thread.
 static void report(State s,long now){
  String text; synchronized(s){long span=now-s.reportAt;if(s.reports>=3||span<10000000000L)return;
  text=String.format(java.util.Locale.US,
   "render sample=%d spanMs=%d maxFPS=%d submittedFps=%.1f decodedFps=%.1f releasedFps=%.1f skipped=%d inputPumpP90Ms=%d residenceP90Ms=%d aheadMaxMs=%d capped=%d immediate=%d bounded=%s inputPollMaxMs=%d pollTimeouts=%d queueAgeP90Ms=%d capPendingMax=%d capWaitMs=%d directCap4=%s directLateSkipped=%d directLateAgeMaxMs=%d directLateBatches=%d directLateBatchMax=%d",
   s.reports+1,span/1000000,s.output.fps,(s.submitted-s.reportSubmitted)*1e9/span,
   (s.decoded-s.reportDecoded)*1e9/span,(s.outputCount-s.reportOutput)*1e9/span,s.skipped-s.reportSkipped,p90(s.recentWait,s.waitSlot)/1000000,
   p90(s.recentResidence,s.residenceSlot)/1000000,s.maxAheadNs/1000000,s.cappedTargets,s.immediateTargets,s.boundedRender,s.inputPollMaxNs/1000000,s.inputPollTimeouts-s.reportPollTimeouts,p90(s.recentQueueAge,s.queueAgeSlot)/1000000,s.capMax,s.capWaitNs/1000000,s.directCap4,
   s.directLateSkipped,s.directLateAgeMaxNs/1000000,s.directLateBatches,s.directLateBatchMax);
  s.reports++;s.reportAt=now;s.reportSubmitted=s.submitted;s.reportOutput=s.outputCount;s.reportSkipped=s.skipped;s.reportDecoded=s.decoded;s.reportPollTimeouts=s.inputPollTimeouts;}
  E01VideoEvidence.decision(s.output.context,text);
 }
}
