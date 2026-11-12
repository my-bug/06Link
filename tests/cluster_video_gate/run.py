#!/usr/bin/env python3
"""Real gate helper under deterministic Android fakes; no device or audio/video traffic."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java, resolve
import os, subprocess, tempfile, json, hashlib
HERE=Path(__file__).resolve().parent; ROOT=HERE.parents[1]
JDK=find_java()['java_home']
STUBS={
'android/os/Build.java':"""package android.os;public final class Build{public static String MODEL="E01",DEVICE="BX11QJ";public static final class VERSION{public static int SDK_INT=22;}}""",
'android/content/SharedPreferences.java':"""package android.content;public interface SharedPreferences{boolean getBoolean(String k,boolean fallback);void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener l);void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener l);interface OnSharedPreferenceChangeListener{void onSharedPreferenceChanged(SharedPreferences p,String k);}}""",
'android/content/Context.java':"""package android.content;public abstract class Context{public static final int MODE_PRIVATE=0;public abstract Context getApplicationContext();public abstract SharedPreferences getSharedPreferences(String name,int mode);}"""}
CASES=['enabled','disabled','toggle','types','reconnect','duplicate','clear','irrelevant','unsupported','nulls','faults','weakOwnership','race','context','closeListener','parallel']
with tempfile.TemporaryDirectory(prefix='06link-cluster-gate-') as folder:
 folder=Path(folder)
 for name,text in STUBS.items():
  target=folder/'src'/name;target.parent.mkdir(parents=True,exist_ok=True);target.write_text(text)
 sources=[ROOT/'src/e01/com/shilapi/xcertplay/E01ClusterVideoGate.java',HERE/'ClusterVideoGateTest.java',*sorted((folder/'src').rglob('*.java'))]
 subprocess.run([str(JDK/'bin/javac'),'--release','8','-d',str(folder/'classes'),*map(str,sources)],check=True)
 for case in CASES:
  subprocess.run([str(JDK/'bin/java'),'-Xmx32m','-cp',str(folder/'classes'),'com.shilapi.xcertplay.ClusterVideoGateTest',case],check=True,timeout=15)
import sys
sys.path.insert(0,str(ROOT/'tests/source_build'))
from contracts import assert_contract,method_for
for name in ('bind','frame','close'):
 method=assert_contract('cluster-video-gate-'+name)
 suffix={'bind':'bind(Ljava/lang/Object;Landroid/content/Context;)V','frame':'drop(Ljava/lang/Object;I)Z','close':'close(Ljava/lang/Object;)V'}[name]
 hook='E01ClusterVideoGate;->'+suffix
 assert method.count(hook)==1
 if name=='frame':assert method.index(hook)<method.index('->videoDecoder(I)')<method.index('->submit([B)V')
 if name=='close':
  assert method.index(hook)<method.index('->videoDecoders:')
  assert 'E01NavigationAudioProbe;->resetSession()V' in method
print('PASS 16 behavior scenarios and 3 actual source-built integration contracts')
