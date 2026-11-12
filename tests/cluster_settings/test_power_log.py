from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java
import subprocess,tempfile
ROOT=Path(__file__).resolve().parents[2];HERE=Path(__file__).resolve().parent
JDK=find_java()['java_home']/'bin'
with tempfile.TemporaryDirectory(prefix='06link-power-log-') as t:
 d=Path(t);files={
 'android/content/Context.java':'package android.content;public class Context{public java.io.File getFilesDir(){return null;}public java.io.File getExternalFilesDir(String s){return null;}}',
 'com/shilapi/xcertplay/DiagnosticRedactor.java':'package com.shilapi.xcertplay;public class DiagnosticRedactor{public static final DiagnosticRedactor INSTANCE=new DiagnosticRedactor();public String redact(String s){return s;}}',
 'com/shilapi/xcertplay/LogProbe.java':'''package com.shilapi.xcertplay;public class LogProbe{static int n;static void ck(boolean b){n++;if(!b)throw new AssertionError("check "+n);}public static void main(String[]a){ck(E01LogPolicy.keepCluster("[仪表电源] listener broadcast=true rpc071c08=true"));ck(!E01LogPolicy.keepCluster("[仪表电源] listener broadcast=true rpc071c08=true"));ck(E01LogPolicy.keepCluster("[仪表电源] state=off source=oem-power-off restore=false"));ck(E01LogPolicy.keepCluster("[仪表电源] state=on source=rpc071c08 restore=true"));ck(E01LogPolicy.keepCluster("[仪表电源] restore initialized; waiting-for-map-open"));ck(!E01LogPolicy.keepCluster("RPC op=76b sub=14 bytes=50 accepted=true"));ck(!E01LogPolicy.keepCluster("TBT updated, source=real navigation"));ck(E01LogPolicy.TOTAL_BYTES==1000000);System.out.println("PASS "+n+" actual power log whitelist/dedup/budget checks");}}'''}
 for name,body in files.items():p=d/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(body)
 src=ROOT/'src/e01/com/shilapi/xcertplay/E01LogPolicy.java'
 r=subprocess.run([str(JDK/'javac'),'--release','8','-d',str(d/'classes'),*map(str,d.rglob('*.java')),str(src)],capture_output=True,text=True);assert r.returncode==0,r.stderr
 r=subprocess.run([str(JDK/'java'),'-cp',str(d/'classes'),'com.shilapi.xcertplay.LogProbe'],capture_output=True,text=True,timeout=20);print(r.stdout+r.stderr);(HERE/'power-log-result.txt').write_text(r.stdout+r.stderr);raise SystemExit(r.returncode)
