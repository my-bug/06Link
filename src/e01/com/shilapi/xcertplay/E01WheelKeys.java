package com.shilapi.xcertplay;
import android.os.Build;
import android.os.SystemClock;
import com.shilapi.xcertplay.airplay.AirPlaySession;
import java.lang.ref.WeakReference;
import java.lang.reflect.*;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;
/** E01's observed 072c/04 wheel feed; no vehicle writes and no volume handling. */
public final class E01WheelKeys implements InvocationHandler,Runnable {
 private static final Object LOCK=new Object();
 private static E01WheelKeys active;
 private static WeakReference<AirPlaySession> bound=new WeakReference<AirPlaySession>(null);
 private static android.content.Context appContext;
 private static volatile boolean enabled=true,playPauseEnabled=false;
 private static final String PREFS="06link_controls";
 public static void init(android.content.Context context){
  synchronized(LOCK){
   if(appContext!=null)return;
   android.content.Context app=context.getApplicationContext();
   appContext=app==null?context:app;
   E01SiriKey.init(appContext);
   enabled=!"false".equals(appContext.getSharedPreferences(PREFS,0).getString("wheel_tracks","true"));
   playPauseEnabled="true".equals(appContext.getSharedPreferences(PREFS,0).getString("wheel_play_pause","false"));
   // Remove obsolete assignments from earlier versions; no loader/writer remains.
   android.content.SharedPreferences old=appContext.getSharedPreferences("xcertplay_airplay",0);
   android.content.SharedPreferences.Editor cleanup=old.edit();
   for(String key:old.getAll().keySet())
    if(key.startsWith("wheel_key_")||key.startsWith("wheel_verdict_")||key.equals("wheel_keys_wizard_done"))cleanup.remove(key);
   cleanup.apply();
   if(!enabled&&!playPauseEnabled&&active!=null){active.stop();active=null;lastAction=0;}
  }
 }
 public static boolean isEnabled(){return enabled;}
 public static boolean isPlayPauseEnabled(){return playPauseEnabled;}
 public static boolean setEnabled(android.content.Context c,boolean on){return setOption(c,on,false);}
 public static boolean setPlayPauseEnabled(android.content.Context c,boolean on){return setOption(c,on,true);}
 private static boolean setOption(android.content.Context c,boolean on,boolean play){
  init(c);
  synchronized(LOCK){
   if(!appContext.getSharedPreferences(PREFS,0).edit().putString(play?"wheel_play_pause":"wheel_tracks",on?"true":"false").commit())return false;
   if(play)playPauseEnabled=on;else enabled=on;
   if(active!=null){
    if(play){active.down[2]=false;active.playDownAt=0;active.sdkDown=false;active.sdkDownAt=0;while(active.queue.remove(Integer.valueOf(3))){}while(active.queue.remove(Integer.valueOf(259))){} }
    else {active.down[0]=active.down[1]=false;while(active.queue.remove(Integer.valueOf(4))){}while(active.queue.remove(Integer.valueOf(5))){} }
   }
   if(active!=null)active.queue.offer(Integer.valueOf(-2));
   lastAction=0;lastTime=0;
   if(!enabled&&!playPauseEnabled){if(active!=null)active.stop();active=null;}
   else if(bound.get()!=null)startLocked(bound.get());
   return true;
  }
 }
 private static boolean actionEnabled(int action){return action==3?playPauseEnabled:((action==4||action==5)?enabled:true);}
 private static int lastAction;private static long lastTime;private static int lastSource,seenSources;
 private final WeakReference<AirPlaySession> target;
 private final ArrayBlockingQueue<Integer> queue=new ArrayBlockingQueue<Integer>(4);
 private final boolean[] down=new boolean[3];
 private long playDownAt,sdkDownAt;
 private boolean sdkDown,interceptionTried;
 private Object keyApi,keyCallback;private Class<?> keyType,keyCallbackType;
 private volatile boolean stopped;private int received,sent,playSent;
 private E01WheelKeys(AirPlaySession s){target=new WeakReference<AirPlaySession>(s);}
 private static boolean supported(){return Build.VERSION.SDK_INT==22&&"E01".equals(Build.MODEL)&&"BX11QJ".equals(Build.DEVICE);}
 public static void bind(AirPlaySession s){
  if(s==null||!supported())return;
  E01SiriKey.bind(s);
  synchronized(LOCK){
   if(active!=null&&active.target.get()!=s){active.stop();active=null;}
   bound=new WeakReference<AirPlaySession>(s);
   if(enabled||playPauseEnabled)startLocked(s);
  }
 }
 private static void startLocked(AirPlaySession s){
  if(active!=null&&active.target.get()==s)return;
  if(active!=null)active.stop();
  E01WheelKeys job=new E01WheelKeys(s);active=job;lastAction=0;lastTime=0;
  try{Thread t=new Thread(job,"06Link-wheel");t.setDaemon(true);t.start();}
  catch(RuntimeException e){if(active==job)active=null;job.stop();}
 }
 public static void unbind(AirPlaySession s){E01SiriKey.unbind(s);synchronized(LOCK){
  if(bound.get()==s)bound.clear();
  if(active!=null&&active.target.get()==s){active.stop();active=null;lastAction=0;}
 }}
 private void stop(){stopped=true;queue.clear();queue.offer(Integer.valueOf(-1));}
 /** Only suppress the other delivery path for the same action; repeated physical taps remain valid. */
 private static boolean accept(int action,int source,E01WheelKeys owner){
  boolean raw=source!=0;
  synchronized(LOCK){
   if(!actionEnabled(action))return false;
   if(active==null)return !raw;
   if(raw&&active!=owner)return false;
   long now=SystemClock.elapsedRealtime();
   if(lastAction==action&&lastSource!=source&&now-lastTime>=0&&now-lastTime<350&&(seenSources&(1<<source))==0){seenSources|=1<<source;return false;}
   lastAction=action;lastSource=source;lastTime=now;seenSources=1<<source;return true;
  }
 }
 public static boolean allowStandard(int action){return (action!=3&&action!=4&&action!=5)||(actionEnabled(action)&&(!supported()||accept(action,0,null)));}
 static int direction(int opcode,byte[] b){
  if(opcode!=0x72c||b==null||b.length!=5||(b[0]&255)!=4)return -1;
  int direction=b[1]&255,state=b[2]&255;
  return state<=1?(direction<=1?direction:(direction==64?2:-1)):-1;
 }
 void onPacket(int opcode,byte[] b){
  int d=direction(opcode,b);
  synchronized(LOCK){
   if(stopped||active!=this)return;
   if(d<0){
    // Unknown state for this specific key invalidates a pending short press.
    if(opcode==0x72c&&b!=null&&b.length==5&&(b[0]&255)==4&&(b[1]&255)==64){down[2]=false;playDownAt=0;}
    return;
   }
   int action=d==0?5:(d==1?4:3);
   if(!actionEnabled(action))return;
   if(d==2){
    long now=SystemClock.elapsedRealtime();
    if(b[2]==1){if(!down[2]){down[2]=true;playDownAt=now;}return;}
    boolean wasDown=down[2];long elapsed=now-playDownAt;down[2]=false;playDownAt=0;
    if(wasDown&&elapsed>=0&&elapsed<800){received++;queue.offer(Integer.valueOf(3));}
    return;
   }
   if(b[2]==0){down[d]=false;return;}
   if(down[d])return;down[d]=true;received++;
   queue.offer(Integer.valueOf(action));
  }
 }
 private void updateInterception(){
  boolean wanted; synchronized(LOCK){wanted=!stopped&&active==this&&playPauseEnabled;}
  if(!wanted){closeInterception();interceptionTried=false;return;}
  if(interceptionTried)return;interceptionTried=true;
  android.content.Context context=appContext;if(context==null)return;
  try{
   keyType=Class.forName("com.ecarx.xui.adaptapi.input.Input");
   keyCallbackType=Class.forName("com.ecarx.xui.adaptapi.input.IKeyCallback");
   keyApi=keyType.getMethod("create",android.content.Context.class).invoke(null,context);
   if(keyApi==null){note("play/pause interception unavailable: OEM authorization");return;}
   keyCallback=Proxy.newProxyInstance(keyCallbackType.getClassLoader(),new Class<?>[]{keyCallbackType},this);
   Object result=keyType.getMethod("requestKeysInterception",int[].class,keyCallbackType).invoke(keyApi,new int[]{85},keyCallback);
   boolean accepted=false;if(result instanceof int[])for(int key:(int[])result)if(key==85)accepted=true;
   note(accepted?"wheel session active: play/pause interception requested for key85":"wheel session active: play/pause interception request not accepted");
   if(!accepted)closeInterception();
  }catch(Exception unavailable){closeInterception();note("play/pause interception unavailable: "+unavailable.getClass().getSimpleName());}
   catch(LinkageError unavailable){closeInterception();note("play/pause interception API unavailable");}
 }
 private void closeInterception(){
  Object owner=keyApi,callback=keyCallback;keyApi=null;keyCallback=null;
  if(owner==null)return;
  try{if(callback!=null)keyType.getMethod("abandonKeysInterception",keyCallbackType).invoke(owner,callback);}catch(Exception ignored){}
  // The E01 SDK unregisters its receiver but omits unbindService; clean up only
  // the connection/receiver belonging to this Input instance, including partial binds.
  android.content.Context context=appContext;if(context==null)return;
  for(String[] entry:new String[][]{{"sc","unbindService","android.content.ServiceConnection"},{"receiver","unregisterReceiver","android.content.BroadcastReceiver"}}){
   try{Field f=owner.getClass().getDeclaredField(entry[0]);f.setAccessible(true);Object value=f.get(owner);
    if(value!=null)android.content.Context.class.getMethod(entry[1],Class.forName(entry[2])).invoke(context,value);
   }catch(Exception ignored){}
  }
 }
 private boolean onSdkKey(String name,int key){
  synchronized(LOCK){
   if(key!=85||stopped||active!=this||!playPauseEnabled)return false;
   long now=SystemClock.elapsedRealtime();
   if("onKeyPressed".equals(name)){if(!sdkDown){sdkDown=true;sdkDownAt=now;}return true;}
   boolean held=sdkDown;long elapsed=now-sdkDownAt;sdkDown=false;sdkDownAt=0;
   if(held&&elapsed>=0&&elapsed<800)queue.offer(Integer.valueOf(259));
   return true;
  }
 }
 public Object invoke(Object proxy,Method method,Object[] args){
  String name=method.getName();
  if("hashCode".equals(name))return Integer.valueOf(System.identityHashCode(proxy));
  if("equals".equals(name))return Boolean.valueOf(args!=null&&args.length==1&&proxy==args[0]);
  if("toString".equals(name))return "06Link-wheel-listener";
  if(("onKeyPressed".equals(name)||"onKeyReleased".equals(name))&&args!=null&&args.length==1&&args[0] instanceof Integer)
   return Boolean.valueOf(onSdkKey(name,((Integer)args[0]).intValue()));
  if("onCallback".equals(name)&&args!=null&&args.length==2&&args[0] instanceof Integer&&args[1] instanceof byte[])
   onPacket(((Integer)args[0]).intValue(),(byte[])args[1]);
  return null;
 }
 private static void note(String text){
  android.util.Log.i("06Link-Wheel",text);
  android.content.Context c=appContext;if(c==null)return;
  try{java.io.File dir=c.getExternalFilesDir(null);if(dir==null)dir=c.getFilesDir();
   if(dir!=null)E01LogPolicy.session(new java.io.File(dir,"06link.log"),text);
  }catch(RuntimeException ignored){}
 }
 public void run(){
  Object manager=null,listener=null;Class<?> api=null,iface=null;boolean registered=false;
  try{
   api=Class.forName("com.neusoft.alfus.RpcManager");iface=Class.forName("com.neusoft.alfus.RpcManager$OnRpcListener");
   manager=api.getMethod("getInstance").invoke(null);
   listener=Proxy.newProxyInstance(iface.getClassLoader(),new Class<?>[]{iface},this);
   if(stopped)return;
   registered=true;api.getMethod("registerListener",int.class,byte.class,iface).invoke(manager,0x72c,(byte)4,listener);
   android.util.Log.i("06Link-Wheel","wheel input registered 72c/4");
   while(!stopped){
    updateInterception();
    Integer action=queue.poll(5,TimeUnit.SECONDS);if(action==null){if(target.get()==null)break;continue;}
    if(action.intValue()==-2)continue;
    if(action.intValue()<0)break;
    int code=action.intValue()&255,source=(action.intValue()&256)!=0?2:1;
    AirPlaySession session;
    synchronized(LOCK){if(stopped||active!=this)break;session=target.get();}
    if(session==null)break;
    synchronized(LOCK){if(accept(code,source,this)){session.sendMedia(code);sent++;if(code==3)playSent++;}}
   }
  }catch(InterruptedException e){Thread.currentThread().interrupt();}
   catch(Exception unavailable){android.util.Log.e("06Link-Wheel","wheel input unavailable",unavailable);}
   finally{
    closeInterception();
    if(registered)try{api.getMethod("unregisterListener",int.class,byte.class,iface).invoke(manager,0x72c,(byte)4,listener);}catch(Exception ignored){}
    synchronized(LOCK){if(active==this){active=null;lastAction=0;}}stop();
    note("wheel session ended received="+received+" sent="+sent+" play/pause="+playSent);
   }
 }
}
