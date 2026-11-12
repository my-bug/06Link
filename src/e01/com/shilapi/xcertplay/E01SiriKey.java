package com.shilapi.xcertplay;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.shilapi.xcertplay.airplay.AirPlaySession;
import java.lang.ref.WeakReference;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;

/** E01 XCInputService voice-key ordered broadcast, ahead of Xiaoka's priority 0. */
public final class E01SiriKey extends BroadcastReceiver implements Runnable {
 private static final Object LOCK=new Object();
 private static final String ACTION="ecarx.intent.action.ECARX_KEY_RVOICEASSIST_EVENT";
 private static final String KEY="ecarx.extra.ECARX_KEY_EVENT_TYPE",TYPE="ecarx.extra.ECARX_KEY_ACTION_TYPE";
 private static Context context;
 private static boolean enabled;
 private static WeakReference<AirPlaySession> bound=new WeakReference<AirPlaySession>(null);
 private static E01SiriKey active;
 private final WeakReference<AirPlaySession> target;
 private final ArrayBlockingQueue<Integer> queue=new ArrayBlockingQueue<Integer>(4);
 private volatile boolean stopped;
 private boolean registered;
 private int sent;
 private E01SiriKey(AirPlaySession s){target=new WeakReference<AirPlaySession>(s);}
 private static boolean supported(){return Build.VERSION.SDK_INT==22&&"E01".equals(Build.MODEL)&&"BX11QJ".equals(Build.DEVICE);}
 public static void init(Context c){synchronized(LOCK){
  if(context!=null)return;
  Context app=c.getApplicationContext();context=app==null?c:app;
  enabled="true".equals(context.getSharedPreferences("06link_controls",0).getString("wheel_siri","false"));
 }}
 public static boolean isEnabled(){synchronized(LOCK){return enabled;}}
 public static boolean setEnabled(Context c,boolean on){init(c);synchronized(LOCK){
  if(!context.getSharedPreferences("06link_controls",0).edit().putString("wheel_siri",on?"true":"false").commit())return false;
  enabled=on;
  if(!on){if(active!=null)active.stop();active=null;}
  else if(bound.get()!=null&&supported())startLocked(bound.get());
  return true;
 }}
 public static void bind(AirPlaySession s){if(s==null||!supported())return;synchronized(LOCK){
  if(active!=null&&active.target.get()!=s){active.stop();active=null;}
  bound=new WeakReference<AirPlaySession>(s);if(enabled)startLocked(s);
 }}
 public static void unbind(AirPlaySession s){synchronized(LOCK){
  if(bound.get()==s)bound.clear();
  if(active!=null&&active.target.get()==s){active.stop();active=null;}
 }}
 private static void startLocked(AirPlaySession s){
  if(active!=null&&active.target.get()==s)return;
  E01SiriKey job=new E01SiriKey(s);active=job;
  try{Thread t=new Thread(job,"06Link-siri-key");t.setDaemon(true);t.start();}
  catch(RuntimeException e){job.stop();if(active==job)active=null;}
 }
 private void stop(){stopped=true;queue.clear();queue.offer(Integer.valueOf(-1));}
 @Override public void onReceive(Context c,Intent intent){
  if(intent==null||!ACTION.equals(intent.getAction())||!isOrderedBroadcast()||isInitialStickyBroadcast())return;
  // XCInputService already resolves physical down/up and repeats into a short click.
  // Leave its long-press (type 1), other keys, and ordinary broadcasts untouched.
  if(intent.getIntExtra(KEY,-1)!=200231||intent.getIntExtra(TYPE,-1)!=0)return;
  synchronized(LOCK){
   if(stopped||active!=this||!enabled||target.get()==null||bound.get()!=target.get())return;
   if(queue.offer(Integer.valueOf(1)))abortBroadcast();
  }
 }
 private static void note(String text){android.util.Log.i("06Link-SiriKey",text);}
 public void run(){
  try{
   synchronized(LOCK){
    if(stopped||active!=this||!enabled||context==null)return;
    IntentFilter filter=new IntentFilter(ACTION);filter.addCategory(Intent.CATEGORY_DEFAULT);filter.setPriority(1000);
    context.registerReceiver(this,filter);registered=true;
   }
   note("Siri key: ordered broadcast registered priority=1000");
   while(!stopped){
    Integer event=queue.poll(5,TimeUnit.SECONDS);if(event==null){if(target.get()==null)break;continue;}if(event.intValue()<0)break;
    synchronized(LOCK){
     if(stopped||active!=this||!enabled)break;
     AirPlaySession s=target.get();if(s==null||bound.get()!=s)break;
     s.invokeSiri();sent++;if(sent<=3)note("Siri key: consumed short click, requestSiri sent");
    }
   }
  }catch(InterruptedException e){Thread.currentThread().interrupt();}
   catch(Exception e){note("Siri key: receiver ended "+e.getClass().getSimpleName());}
   finally{
    if(registered)try{context.unregisterReceiver(this);}catch(RuntimeException ignored){}
    synchronized(LOCK){if(active==this)active=null;}stop();note("Siri key: unregistered, sent="+sent);
   }
 }
}
