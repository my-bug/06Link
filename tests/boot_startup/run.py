#!/usr/bin/env python3
"""Exercise the current boot receiver with Android boundaries; no APK/device changes."""
from pathlib import Path
import hashlib, json, subprocess, sys, tempfile
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'scripts'))
from toolchain import find_java
from build import methods, canonical_smali

STUBS = {
    'android/content/BroadcastReceiver.java': '''package android.content;
public abstract class BroadcastReceiver {public abstract void onReceive(Context c,Intent i);}''',
    'android/content/Context.java': '''package android.content;
public class Context {
 public int attempts;public Intent launched;public RuntimeException failure;
 public String getPackageName(){return "com.sixlink.car";}
 public java.io.File getFilesDir(){return new java.io.File("/internal");}
 public java.io.File getExternalFilesDir(String s){throw new AssertionError("external storage unavailable at boot");}
 public void startActivity(Intent i){attempts++;if(failure!=null)throw failure;launched=i;}
}''',
    'android/content/Intent.java': '''package android.content;
public class Intent {
 public static final int FLAG_ACTIVITY_NEW_TASK=0x10000000,FLAG_ACTIVITY_CLEAR_TOP=0x04000000,FLAG_ACTIVITY_SINGLE_TOP=0x20000000;
 public String action,pkg,component;public int flags;public java.util.Map<String,Boolean> extras=new java.util.HashMap<>();
 public Intent(){}public Intent(String s){action=s;}public String getAction(){return action;}
 public Intent setClassName(String p,String c){pkg=p;component=c;return this;}
 public Intent addFlags(int f){flags|=f;return this;}
 public Intent putExtra(String k,boolean v){extras.put(k,v);return this;}
 public boolean getBooleanExtra(String k,boolean d){return extras.containsKey(k)?extras.get(k):d;}
}''',
    'android/app/Activity.java': '''package android.app;
public class Activity extends android.content.Context {public android.content.Intent intent;
 public android.content.Intent getIntent(){return intent;}}''',
    'android/util/Log.java': '''package android.util;
public class Log {public static int i(String t,String m){return 0;}
 public static int w(String t,String m,Throwable e){return 0;}}''',
    'com/shilapi/xcertplay/AirPlayPersistence.java': '''package com.shilapi.xcertplay;
public class AirPlayPersistence {public static final AirPlayPersistence INSTANCE=new AirPlayPersistence();
 public static boolean enabled=true;public boolean loadAutoStartOnBoot(android.content.Context c){return enabled;}}''',
    'com/shilapi/xcertplay/CarPlayBackgroundSession.java': '''package com.shilapi.xcertplay;
public class CarPlayBackgroundSession {public static final CarPlayBackgroundSession INSTANCE=new CarPlayBackgroundSession();
 public static boolean session,active;public boolean hasSession(){return session;}public boolean getActive(){return active;}}''',
    'com/shilapi/xcertplay/FirstRunNotice.java': '''package com.shilapi.xcertplay;
public class FirstRunNotice {public static final FirstRunNotice INSTANCE=new FirstRunNotice();
 public boolean pending(android.content.Context c){return true;}}''',
    'com/shilapi/xcertplay/BluetoothPairingRestoreApply.java': '''package com.shilapi.xcertplay;
public class BluetoothPairingRestoreApply {public static final BluetoothPairingRestoreApply INSTANCE=new BluetoothPairingRestoreApply();
 public void run(android.content.Context c){throw new IllegalStateException("OEM Bluetooth service not ready");}}''',
    'com/shilapi/xcertplay/E01LogPolicy.java': '''package com.shilapi.xcertplay;
public class E01LogPolicy {public static boolean unavailable;public static java.util.List<String> lines=new java.util.ArrayList<>();
 public static void session(java.io.File f,String s){if(unavailable)throw new IllegalStateException("storage unavailable");
 if(!f.getPath().equals("/internal/06link.log"))throw new AssertionError("boot log not in internal storage");lines.add(s);}}''',
    'com/shilapi/xcertplay/BootTest.java': '''package com.shilapi.xcertplay;
import android.content.*;import android.app.Activity;
public class BootTest {
 static int checks;
 static void check(boolean value,String message){checks++;if(!value)throw new AssertionError(message);}
 static Context fresh(){AirPlayPersistence.enabled=true;CarPlayBackgroundSession.session=false;CarPlayBackgroundSession.active=false;
  E01LogPolicy.unavailable=false;E01LogPolicy.lines.clear();return new Context();}
 static boolean logged(String s){for(String line:E01LogPolicy.lines)if(line.contains(s))return true;return false;}
 public static void main(String[] args){
  BootReceiver receiver=new BootReceiver();Intent boot=new Intent("android.intent.action.BOOT_COMPLETED");
  for(String action:args){
   Context c=fresh();receiver.onReceive(c,new Intent(action));
   check(c.attempts==1,"enabled boot must launch once: "+action);
   check(c.launched.pkg.equals(c.getPackageName()),"wrong package");
   check(c.launched.component.equals("com.shilapi.xcertplay.DiPlayActivity"),"wrong screen");
   check(c.launched.flags==0x34000000,"task semantics changed");
   check(c.launched.getBooleanExtra("com.sixlink.car.extra.AUTO_START",false),"auto-start intent lost");
   check(logged("提交首页启动请求")&&!logged("首页已创建"),"request must not claim the UI was created");
   Activity home=new Activity();home.intent=c.launched;BootReceiver.homeCreated(home);
   check(logged("首页已创建"),"missing actual home callback");
   c=fresh();AirPlayPersistence.enabled=false;receiver.onReceive(c,new Intent(action));
   check(c.attempts==0&&logged("已关闭"),"disabled boot opened the app");
  }
  for(int mode=1;mode<=3;mode++){
   Context c=fresh();CarPlayBackgroundSession.session=(mode&1)!=0;CarPlayBackgroundSession.active=(mode&2)!=0;
   receiver.onReceive(c,boot);check(c.attempts==0&&logged("会话已存在"),"active CarPlay interrupted");
  }
  Context c=fresh();receiver.onReceive(c,null);receiver.onReceive(null,boot);
  for(String action:new String[]{null,"","android.intent.action.SCREEN_ON","android.intent.action.PACKAGE_REPLACED"})receiver.onReceive(c,new Intent(action));
  check(c.attempts==0&&E01LogPolicy.lines.isEmpty(),"unrelated broadcast launched app");
  // First-use consent is pending and the OEM preparation throws: showing the home
  // screen must still succeed; the real activity retains its consent/connection gate.
  c=fresh();check(FirstRunNotice.INSTANCE.pending(c),"test must represent pending first use");
  try{BluetoothPairingRestoreApply.INSTANCE.run(c);throw new AssertionError("fault not injected");}catch(IllegalStateException expected){}
  receiver.onReceive(c,boot);check(c.attempts==1&&c.launched!=null,"first use or unavailable radio blocked home");
  c=fresh();E01LogPolicy.unavailable=true;receiver.onReceive(c,boot);
  check(c.attempts==1&&c.launched!=null,"log storage failure blocked boot");
  c=fresh();c.failure=new SecurityException("launch denied");receiver.onReceive(c,boot);
  check(c.attempts==1&&c.launched==null,"launch failure retried or escaped");
  check(logged("失败(error)：SecurityException")&&!logged("提交首页启动请求"),"failure recorded as success");
  c=fresh();Activity manual=new Activity();BootReceiver.homeCreated(manual);manual.intent=new Intent();BootReceiver.homeCreated(manual);
  check(E01LogPolicy.lines.isEmpty(),"manual launch mislabeled as boot");
  System.out.println("PASS "+checks+" boot startup assertions (Android/service boundaries simulated)");
 }
}''',
}

manifest = ET.parse(ROOT / 'src/main/AndroidManifest.xml').getroot()
name = '{http://schemas.android.com/apk/res/android}name'
receivers = [r for r in manifest.findall('application/receiver') if r.get(name) == 'com.shilapi.xcertplay.BootReceiver']
assert len(receivers) == 1
actions = [a.get(name) for a in receivers[0].findall('intent-filter/action')]
assert len(actions) == 5 and 'android.intent.action.BOOT_COMPLETED' in actions
assert any(p.get(name) == 'android.permission.RECEIVE_BOOT_COMPLETED' for p in manifest.findall('uses-permission'))
config = json.loads((ROOT / 'project.json').read_text())
assert config['sources']['java_dex']['com/shilapi/xcertplay/BootReceiver'] == 'classes.dex'

java = find_java()
with tempfile.TemporaryDirectory(prefix='06link-boot-startup-') as folder:
    out = Path(folder)
    sources = []
    for relative, text in STUBS.items():
        path = out / relative
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text)
        sources.append(str(path))
    subprocess.run([str(java['javac']), '--release', '8', '-encoding', 'UTF-8', '-d', str(out / 'classes'),
                    *sources, str(ROOT / 'src/e01/com/shilapi/xcertplay/BootReceiver.java')], check=True)
    subprocess.run([str(java['java']), '-cp', str(out / 'classes'), 'com.shilapi.xcertplay.BootTest', *actions], check=True)

# The single activity hook records successful creation only. Everything that
# gates first-use consent and automatic connections remains byte-for-byte equivalent.
activity = methods((ROOT / 'src/core/smali/classes/com/shilapi/xcertplay/DiPlayActivity.smali').read_text())
on_create = activity['onCreate(Landroid/os/Bundle;)V']
hook = '    invoke-static {p0}, Lcom/shilapi/xcertplay/BootReceiver;->homeCreated(Landroid/app/Activity;)V\n'
assert on_create.count(hook) == 1
assert on_create.index('->render()V') < on_create.index(hook) < on_create.index('->firstRunNoticePending()Z')
assert hashlib.sha256(canonical_smali(on_create.replace(hook, '')).encode()).hexdigest() == '081b4be9a08562175a0e4758cd305280e3e5f1d75878aa6192948de24cc16f89'
assert '->showFirstRunNotice()V' in activity['firstRunNoticePending()Z']
assert '->firstRunNoticePending()Z' in activity['connectWhenRadiosReady(ZJ)V']
core = ROOT / 'src/core/smali/classes/com/shilapi/xcertplay'
assert not list(core.glob('BootReceiver*.smali')), 'Duplicate old receiver or obsolete helpers'
print('PASS manifest, primary DEX placement and unchanged activity consent/connection flow')
