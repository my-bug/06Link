#!/usr/bin/env python3
"""Production coordinator and reflection backend with fake OEM Binder/properties, no devices."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java, resolve
import subprocess,tempfile
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
JDK=find_java()['java_home']/'bin'
STUBS={
'android/os/IBinder.java':'package android.os;public interface IBinder{}',
'android/content/ComponentName.java':'package android.content;public class ComponentName{public final String cls;public ComponentName(String p,String c){cls=c;}}',
'android/content/Intent.java':'package android.content;public class Intent{public ComponentName component;public Intent setComponent(ComponentName c){component=c;return this;}}',
'android/content/ServiceConnection.java':'package android.content;public interface ServiceConnection{void onServiceConnected(ComponentName c,android.os.IBinder b);void onServiceDisconnected(ComponentName c);}',
'android/content/TestBinder.java':'package android.content;public class TestBinder implements android.os.IBinder{public Object api;public TestBinder(Object a){api=a;}}',
'com/nforetek/bt/aidl/INfCommandA2dp.java':'package com.nforetek.bt.aidl;public interface INfCommandA2dp{class Stub{public static Object asInterface(android.os.IBinder b){return ((android.content.TestBinder)b).api;}}}',
'com/nforetek/bt/aidl/INfCommandHfp.java':'package com.nforetek.bt.aidl;public interface INfCommandHfp{class Stub{public static Object asInterface(android.os.IBinder b){return ((android.content.TestBinder)b).api;}}}',
'android/os/Build.java':'package android.os;public class Build{public static String MODEL="E01",DEVICE="BX11QJ";public static class VERSION{public static int SDK_INT=22;}}',
'android/os/SystemProperties.java':'package android.os;public class SystemProperties{public static String state="1";public static String get(String n,String d){if(!n.equals("bluetooth.audiotrack.enable"))throw new AssertionError(n);return state;}}',
'android/os/SystemClock.java':'package android.os; public class SystemClock{public static long now;public static long elapsedRealtime(){return now;}}',
'android/content/SharedPreferences.java':'''package android.content;public class SharedPreferences{final java.util.Map<String,Object> values=new java.util.HashMap<>();public boolean getBoolean(String k,boolean d){return (Boolean)values.getOrDefault(k,d);}public String getString(String k,String d){return (String)values.getOrDefault(k,d);}public Editor edit(){return new Editor();}public class Editor{public Editor putString(String k,String v){values.put(k,v);return this;}public Editor putBoolean(String k,boolean v){values.put(k,v);return this;}public Editor remove(String k){values.remove(k);return this;}public boolean commit(){return true;}}}''',
'android/content/Context.java':'''package android.content; public class Context{
public static final int BIND_AUTO_CREATE=1,CONTEXT_INCLUDE_CODE=1,CONTEXT_IGNORE_SECURITY=2;
public Object music,call,manager,radio;public boolean delayRadioBinding;
Object service(ComponentName c){
 if(c.cls.equals("ecarx.bluetooth.service.BtService"))return manager;
 if(c.cls.equals("com.nforetek.bt.service.NfServiceBluetooth"))return radio;
 if(c.cls.endsWith("A2dp"))return music;
 if(c.cls.endsWith("Hfp"))return call;
 throw new AssertionError(c.cls);
}final java.util.Map<ServiceConnection,ComponentName> bindings=new java.util.HashMap<>();
public Context getApplicationContext(){return this;}public Context createPackageContext(String n,int flags){return this;}
public ClassLoader getClassLoader(){return getClass().getClassLoader();}
public boolean bindService(Intent intent,ServiceConnection c,int flags){Object api=service(intent.component);if(api==null)return false;bindings.put(c,intent.component);if(delayRadioBinding && (api==radio || api==manager)) return true;c.onServiceConnected(intent.component,new TestBinder(api));return true;}
public void unbindService(ServiceConnection c){bindings.remove(c);}
public void disconnectBindings(){for(java.util.Map.Entry<ServiceConnection,ComponentName> e:bindings.entrySet())e.getKey().onServiceDisconnected(e.getValue());}
public void reconnectBindings(){for(java.util.Map.Entry<ServiceConnection,ComponentName> e:bindings.entrySet())e.getKey().onServiceConnected(e.getValue(),new TestBinder(service(e.getValue())));}
final java.util.Map<String,SharedPreferences> stores=new java.util.HashMap<>();public SharedPreferences getSharedPreferences(String n,int m){return stores.computeIfAbsent(n,k->new SharedPreferences());}public java.io.File getExternalFilesDir(String t){return null;}public java.io.File getFilesDir(){return new java.io.File("/tmp");}}''',
'com/shilapi/xcertplay/E01OemBluetooth.java':'package com.shilapi.xcertplay; class E01OemBluetooth{static void wakePoller(){}static boolean validMac(String s){return s!=null && s.matches("(?i)([0-9a-f]{2}:){5}[0-9a-f]{2}");}}',
'com/shilapi/xcertplay/E01LogPolicy.java':'package com.shilapi.xcertplay;public class E01LogPolicy{public static void session(java.io.File f,String s){}}'}
for namespace, name in [('ecarx.bluetooth', 'IBluetoothManager'), ('com.nforetek.bt.aidl', 'INfCommandBluetooth')]:
    STUBS[namespace.replace('.', '/') + '/' + name + '.java'] = ('package ' + namespace + ';public interface ' + name
        + '{class Stub{public static Object asInterface(android.os.IBinder b){return ((android.content.TestBinder)b).api;}}}')
CASES = ['exclusive','bootstrap','nativeReturn','asynchronous','priorState','selection','noStealing','lateDisconnect','unpaired',
         'cancelled','generations','serviceAndUpgrade','unsupported','peers','hardwareReadback','serviceRestart',
         'nativeReadiness','partialReadiness','reconnectAfterEnd','reconnectLateService','reconnectBackoff',
         'reconnectDuringRestore','reconnectCancelled','pollingLifecycle','radioHandoff','radioManualOff','radioRecovery','radioRejected','radioRapidExit','radioRestoredByDriver','radioPreference','radioTransitions','radioWrongReadback','radioLostBroadcast','radioBinding','radioRetoggle']
with tempfile.TemporaryDirectory(prefix='06link-handoff-') as folder:
 d=Path(folder)
 for name,text in STUBS.items():
  p=d/'src'/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(text)
 sources=[ROOT/'src/e01/com/shilapi/xcertplay/E01WirelessAudioHandoff.java',ROOT/'src/e01/com/shilapi/xcertplay/E01WirelessPeers.java',HERE/'HandoffTest.java',*sorted((d/'src').rglob('*.java'))]
 subprocess.run([str(JDK/'javac'),'--release','8','-d',str(d/'classes'),*map(str,sources)],check=True)
 for case in CASES:subprocess.run([str(JDK/'java'),'-cp',str(d/'classes'),'com.shilapi.xcertplay.HandoffTest',case],check=True,timeout=10)

sys.path.insert(0,str(ROOT/'tests/source_build'))
from contracts import assert_contract
from test_support import build_dir
from build import methods
verified=build_dir(ROOT)/'verified/classes/com/shilapi/xcertplay'
def body(path, name):
    return next(m for sig,m in methods((verified/path).read_text()).items() if sig.startswith(name+'('))
handoff=assert_contract('wireless-audio-handoff')
assert handoff.index('->closeBluetoothBootstrapTransport()') < handoff.index('E01OemBluetooth;->wirelessAudioReady(')
listener='orchestration/CarPlayController$wirelessSessionListener$1.smali'
ends=body(listener,'onSessionEnded')
assert ends.index('->releaseWirelessPeer()') < ends.index('WirelessConnectionProof;->end(') < ends.rindex('->onSessionEnded(')
active=body(listener,'onSessionActive')
assert 'E01OemBluetooth;->wirelessAudioActive(' in active
transport=body('network/CarPlayVpnService.smali','acceptUntilError')
assert transport.index('->getWireless()') < transport.index('->setWirelessPeers(') < transport.index('->start()')
for name in ('runWorker','handleService'):
    discovery=body('network/CarPlayBonjour.smali',name)
    assert discovery.index('->discovered(')<discovery.index('->probe(')
session='airplay/AirPlaySession.smali'
assert body(session,'handleSetup').index('->allowedWirelessPeer(')<body(session,'handleSetup').index('->openTiming(')
assert body(session,'handle').index('->record(')<body(session,'handle').index('->onSessionActive(')
# Exercise the short branch before the one-shot handoff on compiled bytecode.
# The selected session's first rendered frame can arrive before either optional signal.
import itertools
ready=body('orchestration/CarPlayController.smali','maybeCompleteWirelessHandoff')
lines=[line.strip() for line in ready.splitlines()]
labels={line:i for i,line in enumerate(lines) if line.startswith(':')}
for requested,tunnel,picture in itertools.product((False,True),repeat=3):
    pc=0
    while True:
        op=lines[pc]; pc+=1
        if '->wirelessHandoffRequested:' in op: flag=requested
        elif '->wirelessTunnelReady:' in op: flag=tunnel
        elif '->hasRenderedFrame(' in op: flag=picture
        elif '->wirelessActiveReported:' in op: break
        elif op=='return-void': break
        elif op.startswith(('if-eqz v0,','if-nez v0,')):
            if flag == op.startswith('if-nez'): pc=labels[op.split()[-1]]
        elif op.startswith('goto '): pc=labels[op.split()[-1]]
    assert ('->wirelessActiveReported:' in op)==((requested and tunnel) or picture)
mic='media/MicrophoneUplink.smali'
assert 'DatagramSocket;->send(' in body(mic,'sendPacket')
assert 'AudioRecord;->read(' in (verified/mic).read_text()
print('PASS OEM audio handoff, microphone uplink, peer selection and compiled connection paths')
