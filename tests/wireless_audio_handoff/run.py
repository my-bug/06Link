#!/usr/bin/env python3
"""Production coordinator and reflection backend with fake OEM Binder/properties, no devices."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java, resolve
import subprocess,tempfile,os,json,re,hashlib
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
JDK=find_java()['java_home']/'bin'
STUBS={
'android/os/Build.java':'package android.os;public class Build{public static String MODEL="E01",DEVICE="BX11QJ";public static class VERSION{public static int SDK_INT=22;}}',
'android/os/SystemProperties.java':'package android.os;public class SystemProperties{public static String state="1";public static String get(String n,String d){if(!n.equals("bluetooth.audiotrack.enable"))throw new AssertionError(n);return state;}}',
'android/content/SharedPreferences.java':'''package android.content;public class SharedPreferences{final java.util.Map<String,Boolean> values=new java.util.HashMap<>();public boolean getBoolean(String key,boolean d){return values.containsKey(key)?values.get(key):d;}public Editor edit(){return new Editor();}public class Editor{public Editor putBoolean(String k,boolean v){values.put(k,v);return this;}public Editor remove(String k){values.remove(k);return this;}public boolean commit(){return true;}}}''',
'android/content/Context.java':'''package android.content;public class Context{private final SharedPreferences prefs=new SharedPreferences();public Context getApplicationContext(){return this;}public SharedPreferences getSharedPreferences(String n,int m){return prefs;}public java.io.File getExternalFilesDir(String t){return null;}public java.io.File getFilesDir(){return new java.io.File("/tmp");}}''',
'com/shilapi/xcertplay/E01LogPolicy.java':'package com.shilapi.xcertplay;public class E01LogPolicy{public static void session(java.io.File f,String s){}}'}
CASES=['normal','cancel','target','predisabled','manual','recovery','failures','noack','reconnect','clearFailure','backend','unsupported']
with tempfile.TemporaryDirectory(prefix='06link-handoff-') as folder:
 d=Path(folder)
 for name,text in STUBS.items():
  p=d/'src'/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(text)
 sources=[ROOT/'src/e01/com/shilapi/xcertplay/E01WirelessAudioHandoff.java',HERE/'HandoffTest.java',*sorted((d/'src').rglob('*.java'))]
 subprocess.run([str(JDK/'javac'),'--release','8','-d',str(d/'classes'),*map(str,sources)],check=True)
 for case in CASES:subprocess.run([str(JDK/'java'),'-cp',str(d/'classes'),'com.shilapi.xcertplay.HandoffTest',case],check=True,timeout=10)
import sys
sys.path.insert(0,str(ROOT/'tests/source_build'))
from contracts import assert_contract,method_for
method=assert_contract('wireless-audio-handoff')
hook='Lcom/shilapi/xcertplay/E01OemBluetooth;->wirelessAudioReady(Ljava/lang/Object;I)V'
assert method.count(hook)==1
assert method.index('if-eq p1, v0')<method.index(hook)<method.index('const/4 p1, 0x2')
s=(ROOT/'src/e01/com/shilapi/xcertplay/E01OemBluetooth.java').read_text()
assert s.index('E01WirelessAudioHandoff.stop(controller);')<s.index('synchronized(targets){Target target=targets.remove(controller);')
print('PASS 12 lifecycle/backend scenarios and actual handoff/cleanup contracts; no vehicle proof')
