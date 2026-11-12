#!/usr/bin/env python3
"""Offline startup/default-mode state checks; no APK build, ADB, or device changes.

Requires the selected build variant's compiled and deps directories for unrelated
production dependencies. Compiles the four CURRENT repository Java sources into
a TemporaryDirectory, then runs them with stub Android/BT/USB boundary classes.
The real OEM posted readiness callback is exercised after simulated readiness;
this does not verify E01 Bluetooth hardware or a real hotspot.
"""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import resolve, build_dir
import json,os,re,subprocess,tempfile
ROOT=Path(__file__).resolve().parents[2]

def main():
    R=ROOT
    config=json.loads((ROOT/'project.json').read_text())
    tools=resolve(ROOT, download=False)
    J=tools['java_home']/'bin'
    sdk=tools['android_jar']
    for dependency in [sdk,build_dir(ROOT)/'compiled',build_dir(ROOT)/'deps']:
        if not dependency.exists():raise SystemExit('Missing compile dependency: '+str(dependency))
    with tempfile.TemporaryDirectory(prefix='06link-startup-settings-') as folder:
        O=Path(folder)
        T=O/'tests';T.mkdir()
        production=O/'production';production.mkdir()
        source_dir=ROOT/'src/e01/com/shilapi/xcertplay'
        sources=[source_dir/name for name in ['E01NativeSettings.java','E01OemBluetooth.java','E01HotspotControl.java','E01WiredUi.java']]
        cp=os.pathsep.join(map(str,[sdk,build_dir(ROOT)/'compiled',build_dir(ROOT)/'deps']))
        compiled=subprocess.run([str(J/'javac'),'-source','8','-target','8','-cp',cp,'-d',str(production)]+list(map(str,sources)),capture_output=True,text=True)
        if compiled.returncode:print(compiled.stdout,compiled.stderr)
        compiled.check_returncode()
        # javac versions assign different numbers to the two enclosing-method
        # lambdas. Select the actual compiled success callback by its connect
        # reference, not by a compiler-specific synthetic method number.
        disassembly=subprocess.check_output([str(J/'javap'),'-private','-c','-classpath',str(production),'com.shilapi.xcertplay.E01OemBluetooth'],text=True)
        callbacks=[]
        for entry in re.finditer(r'(?ms)^  private static void (lambda\$maybeResumeConnect\$[0-9]+)\(android\.app\.Activity, long\).*?(?=^  (?:private|public|protected|static)|\Z)',disassembly):
            if '// String connect' in entry[0]:callbacks.append(entry[1])
        assert len(callbacks)==1,'Expected exactly one compiled readiness success callback: '+repr(callbacks)
        def write(p,s):
         f=T/p;f.parent.mkdir(parents=True,exist_ok=True);f.write_text(s)
        write('android/content/Context.java','''package android.content; public class Context { public java.util.Map<String,SharedPreferences> prefs=new java.util.HashMap<>(); public SharedPreferences getSharedPreferences(String n,int m){return prefs.computeIfAbsent(n,k->com.shilapi.xcertplay.StartupTest.preferences());} public Context getApplicationContext(){return this;} public java.io.File getExternalFilesDir(String s){return null;} public java.io.File getFilesDir(){return new java.io.File(System.getProperty("java.io.tmpdir"));} }''')
        write('android/content/Intent.java','''package android.content; public class Intent { public String page;public String getStringExtra(String n){return page;} }''')
        write('android/app/Activity.java','''package android.app; public class Activity extends android.content.Context { public boolean finishing,destroyed; public android.content.Intent intent=new android.content.Intent();public boolean isFinishing(){return finishing;}public boolean isDestroyed(){return destroyed;}public android.content.Intent getIntent(){return intent;} }''')
        write('android/os/Looper.java','''package android.os; public class Looper {static final Looper MAIN=new Looper();public static Looper getMainLooper(){return MAIN;}public static Looper myLooper(){return MAIN;} }''')
        write('android/os/Handler.java','''package android.os; public class Handler {public Handler(Looper l){}public boolean post(Runnable r){r.run();return true;} }''')
        write('android/os/Build.java','''package android.os; public class Build {public static String MODEL="E01",DEVICE="BX11QJ";public static class VERSION {public static int SDK_INT=22;} }''')
        write('android/widget/Toast.java','''package android.widget; public class Toast {public static final int LENGTH_LONG=1;public static Toast makeText(android.content.Context c,CharSequence t,int n){return new Toast();}public void show(){} }''')
        write('android/net/wifi/WifiManager.java','''package android.net.wifi; public class WifiManager {public int changes;public boolean setWifiEnabled(boolean e){changes++;return true;}public boolean setWifiApEnabled(WifiConfiguration c,boolean e){changes++;return true;} }''')
        write('com/shilapi/xcertplay/E01BuildVariant.java','package com.shilapi.xcertplay; public class E01BuildVariant { public static boolean isPreview(android.content.Context c) { return false; } }')
        write('com/shilapi/xcertplay/DiPlayPreferences.java','''package com.shilapi.xcertplay; public class DiPlayPreferences {public static final DiPlayPreferences INSTANCE=new DiPlayPreferences();public boolean autoConnect(android.content.Context c){return c.getSharedPreferences("diplay",0).getBoolean("auto_connect",true);}public void saveAutoConnect(android.content.Context c,boolean b){c.getSharedPreferences("diplay",0).edit().putBoolean("auto_connect",b).apply();} }''')
        write('com/shilapi/xcertplay/HostLaunch.java','''package com.shilapi.xcertplay; public class HostLaunch {public static final HostLaunch INSTANCE=new HostLaunch();public boolean connecting;public boolean getUserStopped(){return E01HotspotControl.userStopped(false);}public boolean connecting(){return connecting;} }''')
        write('com/shilapi/xcertplay/CarPlayBackgroundSession.java','''package com.shilapi.xcertplay; public class CarPlayBackgroundSession {public static final CarPlayBackgroundSession INSTANCE=new CarPlayBackgroundSession();public boolean session;public boolean hasSession(){return session;} }''')
        write('com/shilapi/xcertplay/E01WiredPort.java','''package com.shilapi.xcertplay; public class E01WiredPort {public static int starts,stops;public static void start(android.content.Context c){starts++;}public static void stop(){stops++;} }''')
        write('com/shilapi/xcertplay/E01StartupHotspot.java','''package com.shilapi.xcertplay; public class E01StartupHotspot {public static void cancel(){E01OemBluetooth.cancelHotspot();}public static void connect(android.content.Context c){E01OemBluetooth.explicitConnect(c);} }''')
        write('com/shilapi/xcertplay/E01BtPersistent.java','''package com.shilapi.xcertplay; public class E01BtPersistent {public static boolean installed=true;public static boolean installed(){return installed;}public static String description(){return "not ready";} }''')
        write('com/shilapi/xcertplay/ConnectionProgress.java','''package com.shilapi.xcertplay; public class ConnectionProgress {public static final ConnectionProgress INSTANCE=new ConnectionProgress();public static class State {public String phase="IDLE";public String getPhase(){return phase;}}public State state=new State();public State getState(){return state;} }''')
        write('com/shilapi/xcertplay/StartupTest.java',r'''
        package com.shilapi.xcertplay;
        import android.content.*;import android.app.*;import android.net.wifi.*;import java.util.*;import java.lang.reflect.*;
        public class StartupTest {
         static int n;
         static void check(boolean b,String s){n++;if(!b)throw new AssertionError(s);}
         public static SharedPreferences preferences(){Map<String,Object> values=new HashMap<>(); final Object[] edit={null}; edit[0]=Proxy.newProxyInstance(StartupTest.class.getClassLoader(),new Class[]{SharedPreferences.Editor.class},(p,m,a)->{String s=m.getName();if(s.startsWith("put")){values.put((String)a[0],a[1]);return edit[0];}if(s.equals("commit"))return true;if(s.equals("apply"))return null;if(s.equals("remove")){values.remove(a[0]);return edit[0];}throw new AssertionError(s);});return (SharedPreferences)Proxy.newProxyInstance(StartupTest.class.getClassLoader(),new Class[]{SharedPreferences.class},(p,m,a)->{if(m.getName().equals("edit"))return edit[0];if(m.getName().startsWith("get"))return values.getOrDefault(a[0],a[1]);throw new AssertionError(m.getName());});}
         public static class Page extends Activity {public Boolean pendingAutoConnect;public boolean autoStartWaiting,initialLaunch=true,restoredFromState;public String setupError;public int connects;public boolean lastWireless,lastAutomatic;private void connect(boolean wireless,boolean automatic){connects++;lastWireless=wireless;lastAutomatic=automatic;autoStartWaiting=false;}}
         static void set(String f,Object value)throws Exception{Field x=E01OemBluetooth.class.getDeclaredField(f);x.setAccessible(true);x.set(null,value);}
         static Page fresh(boolean auto,String mode)throws Exception{E01HotspotControl.resume();E01OemBluetooth.cancelHotspot();set("poller",new Thread());set("migrationReady",false);set("operation",false);set("address",null);HostLaunch.INSTANCE.connecting=false;CarPlayBackgroundSession.INSTANCE.session=false;ConnectionProgress.INSTANCE.state.phase="IDLE";Page p=new Page();p.getSharedPreferences("diplay",0).edit().putBoolean("auto_connect",auto).apply();p.getSharedPreferences("06link-native-ui",0).edit().putString("default_connection",mode).apply();return p;}
         static void callback(Page p,long token)throws Exception{Method m=E01OemBluetooth.class.getDeclaredMethod(System.getProperty("06link.readiness.callback"),Activity.class,long.class);m.setAccessible(true);m.invoke(null,p,token);}
         static void queue(Page p)throws Exception{check(!E01OemBluetooth.canConnect(p),"cold poll should queue without assuming missing installation");check(E01OemBluetooth.hasPendingConnect(p),"missing pending request");}
         public static void main(String[] ignored)throws Exception{
          for(String mode:new String[]{"无线","有线","每次选择"}){Page p=fresh(false,mode);check(!E01NativeSettings.startupEligible(p),"disabled auto started");p.pendingAutoConnect=true;E01NativeSettings.defaultConnection(p);check(p.pendingAutoConnect==null&&!p.autoStartWaiting,"disabled auto retained pending");new E01NativeSettings(p).set("default_connection","无线");check(!DiPlayPreferences.INSTANCE.autoConnect(p),"select mode secretly enabled auto");}
          Page choose=fresh(true,"每次选择");check(!E01NativeSettings.startupEligible(choose),"ask every launch started");choose.pendingAutoConnect=true;E01NativeSettings.defaultConnection(choose);check(choose.pendingAutoConnect==null,"ask every launch not cleared");
          for(String mode:new String[]{"无线","有线"}){Page p=fresh(true,mode);check(E01NativeSettings.startupEligible(p),"startup requires legacy Android bond list");p.pendingAutoConnect=true;E01NativeSettings.defaultConnection(p);check(p.pendingAutoConnect.equals(mode.equals("无线"))&&p.autoStartWaiting,"wrong default");check(E01NativeSettings.startupWireless(p)==mode.equals("无线"),"wrong status transport");check(E01NativeSettings.continueStartup(p),"startup prematurely cancelled");check(!E01NativeSettings.startupEligible(p),"duplicate startup accepted while queued");p.pendingAutoConnect=true;E01NativeSettings.defaultConnection(p);check(p.pendingAutoConnect==null&&p.autoStartWaiting,"duplicate replaced original");p.autoStartWaiting=false;check(!E01NativeSettings.continueStartup(p),"manual start did not supersede queued launch");}
          Page p=fresh(true,"有线");int wiredStarts=E01WiredPort.starts;E01NativeSettings.prepareStartup(p);check(!E01HotspotControl.allowed(),"startup wired permitted poller hotspot");check(E01WiredPort.starts==wiredStarts,"wired hardware started before setup notices");check(E01NativeSettings.beforeAutomaticConnect(p,false),"wired auto blocked");check(E01WiredPort.starts==wiredStarts+1&&!E01HotspotControl.allowed(),"wired auto missing role/exclusivity");
          WifiManager wifi=new WifiManager();check(!E01HotspotControl.enableHotspot(wifi,null)&&wifi.changes==0,"wired automatic hotspot escaped");
          E01NativeSettings.cancelStartup(p);check(E01HotspotControl.userStopped(false),"stop gate cleared");check(!E01NativeSettings.beforeAutomaticConnect(p,true)&&!E01NativeSettings.beforeAutomaticConnect(p,false),"automatic start cleared stop");check(!E01HotspotControl.enableHotspot(wifi,null)&&wifi.changes==0,"stopped AP enabled");check(!E01NativeSettings.startupEligible(p)&&!E01NativeSettings.continueStartup(p),"stop retained startup");
          p=fresh(true,"无线");queue(p);check(E01NativeSettings.startupStatus(p).equals("正在等待原车蓝牙就绪"),"cold pending status missing");set("migrationReady",true);check(E01NativeSettings.startupStatus(p).equals("正在等待已配对的 iPhone"),"no phone status missing");check(!E01NativeSettings.startupEligible(p),"duplicate startup accepted while awaiting phone");long token=E01HotspotControl.token();set("address","11:22:33:44:55:66");check(E01NativeSettings.startupStatus(p).equals("检测到 iPhone，正在连接"),"ready phone status missing");callback(p,token);callback(p,token);check(p.connects==1&&p.lastWireless&&p.lastAutomatic,"readiness did not connect exactly once");check(!E01OemBluetooth.hasPendingConnect(p),"successful pending not consumed");
          p=fresh(true,"无线");queue(p);token=E01HotspotControl.token();E01NativeSettings.cancelStartup(p);callback(p,token);check(p.connects==0&&E01NativeSettings.startupStatus(p).isEmpty(),"late phone reconnected after Stop");check(!E01HotspotControl.allowed(),"late phone reopened hotspot");
          p=fresh(false,"无线");queue(p);token=E01HotspotControl.token();E01NativeSettings.cancelStartup(p);callback(p,token);check(p.connects==0,"manual waiting not cancelled");
          p=fresh(true,"无线");queue(p);token=E01HotspotControl.token();E01HotspotControl.connectWired();callback(p,token);check(p.connects==0&&!E01HotspotControl.allowed(),"old wireless callback replaced wired mode");
          p=fresh(true,"无线");queue(p);token=E01HotspotControl.token();p.destroyed=true;callback(p,token);check(p.connects==0&&E01NativeSettings.startupStatus(p).isEmpty(),"destroyed page received callback");
          p=fresh(true,"无线");p.pendingAutoConnect=true;E01NativeSettings.defaultConnection(p);CarPlayBackgroundSession.INSTANCE.session=true;check(!E01NativeSettings.continueStartup(p),"queued launch duplicated live session");
          p=fresh(true,"无线");HostLaunch.INSTANCE.connecting=true;check(!E01NativeSettings.startupEligible(p),"startup replaced connecting host");
          p=fresh(true,"有线");p.restoredFromState=true;E01NativeSettings.prepareStartup(p);check(!E01HotspotControl.allowed(),"idle restored activity prewarmed wireless despite wired default");
          p=fresh(true,"有线");p.intent.page="settings";E01NativeSettings.prepareStartup(p);check(!E01HotspotControl.allowed(),"idle settings launch prewarmed wireless despite wired default");
          for(String phase:new String[]{"CONNECTING","RECONNECTING","CONNECTED"}){p=fresh(true,"无线");ConnectionProgress.INSTANCE.state.phase=phase;check(!HostLaunch.INSTANCE.connecting&&!CarPlayBackgroundSession.INSTANCE.session,"not testing launch-to-live gap");check(!E01NativeSettings.startupEligible(p),"duplicate AUTO_START in progress-to-live gap "+phase);p.pendingAutoConnect=true;E01NativeSettings.defaultConnection(p);check(p.pendingAutoConnect==null,"duplicate pending survived progress-to-live gap");p.autoStartWaiting=true;check(!E01NativeSettings.continueStartup(p),"queued callback replaced in-flight launch");}
          for(boolean auto:new boolean[]{false,true})for(String mode:new String[]{"有线","每次选择"})for(boolean restored:new boolean[]{false,true}){p=fresh(auto,mode);p.initialLaunch=!restored;p.restoredFromState=restored;p.intent.page=restored?"settings":null;E01NativeSettings.prepareStartup(p);check(!E01HotspotControl.allowed(),"idle non-wireless default allowed hotspot "+auto+mode+restored);check(!E01HotspotControl.enableHotspot(wifi,null),"idle non-wireless AP escaped");E01WiredUi.beforeConnect(p,true);check(E01HotspotControl.allowed(),"manual wireless could not restore gate");}
          p=fresh(false,"无线");E01NativeSettings.prepareStartup(p);check(E01HotspotControl.allowed(),"wireless default lost existing warmup behavior");
          for(String phase:new String[]{"CONNECTING","RECONNECTING","CONNECTED"}){p=fresh(false,"有线");ConnectionProgress.INSTANCE.state.phase=phase;long active=E01HotspotControl.token();E01NativeSettings.prepareStartup(p);check(E01HotspotControl.valid(active),"default selection changed an active wireless transport");}
          p=fresh(false,"有线");queue(p);token=E01HotspotControl.token();E01NativeSettings.prepareStartup(p);check(E01HotspotControl.valid(token)&&E01OemBluetooth.hasPendingConnect(p),"default selection cancelled explicit wireless wait");
          Page other=new Page();other.getSharedPreferences("06link-native-ui",0).edit().putString("default_connection","每次选择").apply();E01NativeSettings.prepareStartup(other);check(E01HotspotControl.valid(token)&&E01OemBluetooth.hasPendingConnect(p),"another idle activity cancelled explicit wireless wait");
          p=fresh(false,"有线");p.autoStartWaiting=true;token=E01HotspotControl.token();E01NativeSettings.prepareStartup(p);check(E01HotspotControl.valid(token),"default selection cancelled already queued startup");
          System.out.println("PASS "+n+" assertions: actual startup helpers, OEM readiness dispatch and transport/stop gates");
         }
        }''')
        classes=T/'classes';classes.mkdir(exist_ok=True);cp=os.pathsep.join(map(str,[production,build_dir(R)/'compiled',build_dir(R)/'deps',sdk]));p=subprocess.run([str(J/'javac'),'-cp',cp,'-d',str(classes)]+[str(p) for p in T.rglob('*.java')],capture_output=True,text=True);print(p.stdout,p.stderr);p.check_returncode()
        p=subprocess.run([str(J/'java'),'-D06link.readiness.callback='+callbacks[0],'-cp',str(classes)+os.pathsep+cp,'com.shilapi.xcertplay.StartupTest'],capture_output=True,text=True,timeout=15);print(p.stdout,p.stderr);p.check_returncode()

if __name__=='__main__':main()
