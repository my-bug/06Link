package com.shilapi.xcertplay;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import java.io.*;
import java.util.concurrent.*;
/** E01's OEM charge-only policy otherwise removes the phone from the USB bus. */
public final class E01WiredPort {
 private static final String NODE="/sys/class/host_peripheral/charging_mode", PREF="06link-wired-port", KEY="restore_mode";
 private static final ScheduledExecutorService IO=Executors.newSingleThreadScheduledExecutor();
 private static Context app; private static boolean active; private static long generation,window; private static int writes;
 private static ScheduledFuture<?> tick;
 private static boolean supported(){return Build.VERSION.SDK_INT==22&&"E01".equals(Build.MODEL)&&"BX11QJ".equals(Build.DEVICE);}
 private static String read()throws IOException{try(BufferedReader r=new BufferedReader(new FileReader(NODE))){String s=r.readLine();return s==null?"":s.trim();}}
 private static void write(String s)throws IOException{try(FileWriter w=new FileWriter(NODE)){w.write(s);}if(!s.equals(read()))throw new IOException("USB mode write not confirmed");}
 private static boolean known(String s){return "dcp".equals(s)||"cdp".equals(s)||"sdp".equals(s);}
 private static SharedPreferences prefs(){return app.getSharedPreferences(PREF,0);}
 public static synchronized void start(Context c){
  if(!supported())return;app=c.getApplicationContext();active=true;long g=++generation;window=0;writes=0;
  if(tick!=null)tick.cancel(false);
  tick=IO.scheduleWithFixedDelay(()->step(g),0,1,TimeUnit.SECONDS);
 }
 private static synchronized void step(long g){
  if(!active||g!=generation)return;
  try{
   String mode=read();if(!known(mode))return;
   String old=prefs().getString(KEY,"");
   if(old.isEmpty()&&!prefs().edit().putString(KEY,mode).commit())throw new IOException("USB restore state not saved");
   // Preserve SDP/CDP data modes. Only undo the OEM switch to charge-only DCP.
   if(!"dcp".equals(mode))return;
   long now=SystemClock.elapsedRealtime();if(now-window>=30000){window=now;writes=0;}
   if(writes>=3)return;
   writes++;write("cdp");Log.i("06Link-usb","OEM charge-only mode restored to USB data mode");
  }catch(Exception e){if(writes<3){writes=3;window=SystemClock.elapsedRealtime();Log.w("06Link-usb","USB data mode unavailable: "+e.getClass().getSimpleName());}}
 }
 public static synchronized void stop(){
  active=false;long g=++generation;if(tick!=null){tick.cancel(false);tick=null;}
  if(app!=null)IO.execute(()->restore(g));
 }
 public static synchronized void recover(Context c){
  if(!supported()||active)return;app=c.getApplicationContext();long g=generation;IO.execute(()->restore(g));
 }
 private static synchronized void restore(long g){
  if(active||g!=generation||app==null)return;
  String old=prefs().getString(KEY,"");if(!known(old))return;
  try{String now=read();if("cdp".equals(now)&&!old.equals(now))write(old);prefs().edit().remove(KEY).commit();}
  catch(Exception e){Log.w("06Link-usb","USB original mode restore pending: "+e.getClass().getSimpleName());}
 }
 private E01WiredPort(){}
}
