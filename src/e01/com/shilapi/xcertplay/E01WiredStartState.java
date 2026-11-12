package com.shilapi.xcertplay;
import android.app.Activity;import android.util.Log;import java.util.WeakHashMap;import java.lang.reflect.Field;import java.io.File;
public final class E01WiredStartState {
 private static final WeakHashMap<Object,String> states=new WeakHashMap<>();
 private static final WeakHashMap<Object,Integer> counts=new WeakHashMap<>();
 public static synchronized void note(Activity a){try{
  String[] fields={"wirelessEnabled","vpnReady","awaitingVpnConsent","vpnConsentAwaitsIphone","locationReportingEnabled","locationPermissionAvailable","microphonePermissionResolved","menuOpen","handshakeResetInProgress","wiredRetryStopped","controller","activeDisplaySize"};
  StringBuilder b=new StringBuilder("wired startup permission state");
  for(String n:fields){Field f=a.getClass().getDeclaredField(n);f.setAccessible(true);Object v=f.get(a);b.append(" ").append(n).append("=").append(v==null?"null":v instanceof Boolean?v.toString():"present");}
  String s=b.toString();int count=counts.containsKey(a)?counts.get(a):0;
  if(count<12&&!s.equals(states.get(a))){states.put(a,s);counts.put(a,count+1);Log.i("06Link-usb",s);E01LogPolicy.session(new File(a.getFilesDir(),"logs/06link.log"),s);}
 }catch(Exception ignored){}}
}
