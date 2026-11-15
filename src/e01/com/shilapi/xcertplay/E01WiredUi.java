package com.shilapi.xcertplay;
import android.app.Activity;import android.content.Context;import android.widget.Toast;import java.lang.reflect.Method;
/** Explicit USB entry and actual iAP2 available-current setting. */
public final class E01WiredUi {
 private static final String PREF="06link-usb",KEY="charging_ma";
 public static boolean wireless(Context c){return c.getSharedPreferences("xcertplay_airplay",0).getBoolean("wireless_enabled",true);}
 public static Boolean iphone(Context c){return E01UsbPresence.iphone(c);}
 public static int current(Context c){int n=c.getSharedPreferences(PREF,0).getInt(KEY,500);return n==500||n==1500||n==2400?n:500;}
 public static boolean save(Context c,int n){return (n==500||n==1500||n==2400)&&c.getSharedPreferences(PREF,0).edit().putInt(KEY,n).commit();}
 private static Object call(Object o,String n,Class<?>[] types,Object... args)throws Exception{Method m=o.getClass().getDeclaredMethod(n,types);m.setAccessible(true);return m.invoke(o,args);}
 public static void beforeConnect(Context c,boolean wireless){if(wireless)E01StartupHotspot.connect(c);else {E01HotspotControl.connectWired();E01WiredPort.start(c);}}
 public static boolean beforeAutomaticConnect(Context c,boolean wireless){
  if(!E01HotspotControl.automaticConnection(wireless))return false;
  if(wireless){E01WiredPort.stop();E01OemBluetooth.arm(c);}
  else{E01StartupHotspot.cancel();E01WiredPort.start(c);}
  return true;
 }
 public static void connect(Activity a){try{call(a,"connect",new Class[]{boolean.class,boolean.class},false,false);}catch(Exception e){Toast.makeText(a,"有线连接未启动，请返回首页重试",Toast.LENGTH_LONG).show();}}
 private E01WiredUi(){}
}
