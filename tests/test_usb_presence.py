"""Exercise the real nonblocking USB presence cache with a stalled system service."""
from pathlib import Path
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'scripts'))
from test_support import find_java
JAVA = find_java()['java_home'] / 'bin'

STUBS = {
 'android/content/Context.java': '''package android.content;
 public class Context {
  public static final String USB_SERVICE="usb";
  public static final android.hardware.usb.UsbManager usb=new android.hardware.usb.UsbManager();
  public Context getApplicationContext(){return this;}
  public Object getSystemService(String name){return usb;}
 }''',
 'android/app/Activity.java': '''package android.app;
 public class Activity extends android.content.Context {
  public boolean finishing,destroyed;
  public boolean isFinishing(){return finishing;}
  public boolean isDestroyed(){return destroyed;}
 }''',
 'android/hardware/usb/UsbDevice.java': '''package android.hardware.usb;
 public class UsbDevice {public int getVendorId(){return 0x05ac;}}''',
 'android/hardware/usb/UsbManager.java': '''package android.hardware.usb;
 import java.util.*;import java.util.concurrent.*;
 public class UsbManager {
  public volatile CountDownLatch entered=new CountDownLatch(1), release=new CountDownLatch(1);
  public volatile int calls;public volatile boolean fail,apple=true;
  public HashMap<String,UsbDevice> getDeviceList(){
   calls++;entered.countDown();
   try{if(!release.await(3,TimeUnit.SECONDS))throw new AssertionError("query never released");}
   catch(InterruptedException e){throw new AssertionError(e);}
   if(fail)throw new SecurityException("blocked");
   HashMap<String,UsbDevice> out=new HashMap<>();if(apple)out.put("usb",new UsbDevice());return out;
  }
 }''',
 'android/os/Build.java': 'package android.os;public class Build{public static class VERSION{public static int SDK_INT=22;}}',
 'android/os/Looper.java': 'package android.os;public class Looper{public static Looper getMainLooper(){return new Looper();}}',
 'android/os/SystemClock.java': 'package android.os;public class SystemClock{public static long now=100;public static long elapsedRealtime(){return now;}}',
 'android/os/Handler.java': '''package android.os;import java.util.concurrent.*;
 public class Handler{public static final BlockingQueue<Runnable> queue=new LinkedBlockingQueue<>();
 public Handler(Looper l){}public boolean post(Runnable r){queue.add(r);return true;}}''',
 'android/util/Log.java': 'package android.util;public class Log{public static int w(String t,String m,Throwable x){throw new AssertionError(m,x);}}',
 'com/shilapi/xcertplay/CarPlayHostActivity.java': '''package com.shilapi.xcertplay;
 public class CarPlayHostActivity extends android.app.Activity{
  boolean wirelessEnabled,wiredRetryStopped,vpnReady,awaitingVpnConsent,vpnConsentAwaitsIphone=true;
  java.util.concurrent.atomic.AtomicBoolean shuttingDown=new java.util.concurrent.atomic.AtomicBoolean();
  int resumes;
  private void requestVpnConsent(){resumes++;vpnReady=true;}
 }''',
}
PROBE = '''package com.shilapi.xcertplay;
import android.content.*;import android.os.*;import java.lang.reflect.*;import java.util.concurrent.*;
public class PresenceCheck {
 static int checks;
 static void check(boolean b,String why){checks++;if(!b)throw new AssertionError(why);}
 static boolean reading()throws Exception{Field f=E01UsbPresence.class.getDeclaredField("reading");f.setAccessible(true);return f.getBoolean(null);}
 static void done()throws Exception{long until=System.nanoTime()+TimeUnit.SECONDS.toNanos(2);while(reading()&&System.nanoTime()<until)Thread.sleep(1);check(!reading(),"read did not finish");}
 static void callback()throws Exception{Runnable r=Handler.queue.poll(2,TimeUnit.SECONDS);check(r!=null,"missing readiness callback");r.run();}
 static void prepare()throws Exception{
  done();Handler.queue.clear();SystemClock.now+=2000;
  Context.usb.entered=new CountDownLatch(1);Context.usb.release=new CountDownLatch(1);
  Context.usb.fail=false;Context.usb.apple=true;
 }
 public static void main(String[]args)throws Exception{
  CarPlayHostActivity host=new CarPlayHostActivity();
  FutureTask<Boolean> call=new FutureTask<>(()->E01UsbPresence.iphone(host));new Thread(call,"UI-test").start();
  check(call.get(400,TimeUnit.MILLISECONDS)==null,"cold UI result must be unknown");
  check(Context.usb.entered.await(2,TimeUnit.SECONDS),"no background enumeration");
  for(int i=0;i<20;i++)check(E01UsbPresence.iphone(host)==null,"stalled query changed unknown");
  check(Context.usb.calls==1,"parallel UI reads launched duplicate enumerations");
  Context.usb.release.countDown();done();callback();
  check(host.resumes==1&&Boolean.TRUE.equals(E01UsbPresence.iphone(host)),"cold wired connection did not resume");
  check(Context.usb.calls==1,"fresh snapshot was re-enumerated");
  // A system detach arriving while the service is blocked beats its stale positive reply.
  prepare();CarPlayHostActivity detached=new CarPlayHostActivity();E01UsbPresence.iphone(detached);
  Context.usb.entered.await();E01UsbPresence.changed(false);Context.usb.release.countDown();done();
  check(Boolean.FALSE.equals(E01UsbPresence.iphone(detached)),"stale scan overwrote detach");
  check(Handler.queue.isEmpty()&&detached.resumes==0,"detach resumed wired connection");
  // Stopping, switching wireless, finishing or already asking permission cancels callback work.
  for(int mode=0;mode<7;mode++){
   prepare();CarPlayHostActivity stopped=new CarPlayHostActivity();E01UsbPresence.iphone(stopped);Context.usb.entered.await();
   if(mode==0)stopped.wiredRetryStopped=true;if(mode==1)stopped.wirelessEnabled=true;
   if(mode==2)stopped.finishing=true;if(mode==3)stopped.awaitingVpnConsent=true;if(mode==4)stopped.vpnConsentAwaitsIphone=false;if(mode==5)stopped.destroyed=true;if(mode==6)stopped.shuttingDown.set(true);
   Context.usb.release.countDown();done();callback();check(stopped.resumes==0,"late callback ignored stop guard "+mode);
  }
  prepare();CarPlayHostActivity moved=new CarPlayHostActivity();E01UsbPresence.iphone(moved);Context.usb.entered.await();
  Context.usb.release.countDown();done();E01UsbPresence.changed(false);callback();check(moved.resumes==0,"posted callback survived detach");
  prepare();Context.usb.fail=true;E01UsbPresence.iphone(host);Context.usb.entered.await();Context.usb.release.countDown();done();
  check(E01UsbPresence.iphone(host)==null,"service error became a false detach");
  check(Handler.queue.isEmpty(),"failed query resumed connection");
  E01UsbPresence.changed(true);check(Boolean.TRUE.equals(E01UsbPresence.iphone(host)),"attach hint unavailable immediately");
  System.out.println("PASS "+checks+" USB presence checks: blocked Binder, cold readiness, single scan, stale result, stop and detach races");
 }
}'''
with tempfile.TemporaryDirectory(prefix='06link-usb-presence-') as tmp:
    folder=Path(tmp)
    for name, source in {**STUBS,'com/shilapi/xcertplay/PresenceCheck.java':PROBE}.items():
        p=folder/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(source)
    sources=[*folder.rglob('*.java'),ROOT/'src/e01/com/shilapi/xcertplay/E01UsbPresence.java']
    subprocess.run([str(JAVA/'javac'),'--release','8','-d',str(folder/'classes'),*map(str,sources)],check=True)
    subprocess.run([str(JAVA/'java'),'-cp',str(folder/'classes'),'com.shilapi.xcertplay.PresenceCheck'],check=True,timeout=20)
host=(ROOT/'src/core/smali/classes/com/shilapi/xcertplay/CarPlayHostActivity.smali').read_text()
for name,value in [('onIphoneUsbAttached',1),('onIphoneUsbDetached',0)]:
    a=host.index('.method private final '+name+'()V');b=host.index('.end method',a);body=host[a:b]
    assert f'const/4 v0, 0x{value}' in body and 'E01UsbPresence;->changed(Z)V' in body
ui=(ROOT/'src/e01/com/shilapi/xcertplay/E01WiredUi.java').read_text()
assert 'return E01UsbPresence.iphone(c)' in ui and 'getDeviceList' not in ui
print('PASS UI enumeration removed and Apple-only host attach/detach cache hooks present')
