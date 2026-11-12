from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from test_support import find_java
import subprocess,os
R=Path(__file__).resolve().parents[1];T=R/'build/test-port';T.mkdir(parents=True,exist_ok=True)
def put(n,s):p=T/n;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(s)
put('android/content/SharedPreferences.java','package android.content;public interface SharedPreferences {String getString(String k,String d);Editor edit();interface Editor {Editor putString(String k,String v);Editor remove(String k);boolean commit();}}')
put('android/content/Context.java','''package android.content;import java.util.*;public class Context {public Context getApplicationContext(){return this;}public final P p=new P();public SharedPreferences getSharedPreferences(String n,int m){return p;}public static class P implements SharedPreferences,SharedPreferences.Editor {Map<String,String> a=new HashMap<>();public String getString(String k,String d){return a.containsKey(k)?a.get(k):d;}public Editor edit(){return this;}public Editor putString(String k,String v){a.put(k,v);return this;}public Editor remove(String k){a.remove(k);return this;}public boolean commit(){return true;}}}''')
put('android/os/Build.java','package android.os; public class Build {public static String MODEL="E01",DEVICE="BX11QJ";public static class VERSION {public static int SDK_INT=22;}}')
put('android/os/SystemClock.java','package android.os; public class SystemClock {public static long elapsedRealtime(){return System.nanoTime()/1000000;}}')
put('android/util/Log.java','package android.util; public class Log {public static int i(String a,String b){return 0;}public static int w(String a,String b){return 0;}}')
node=str((T/'mode').resolve());s=(R/'src/e01/com/shilapi/xcertplay/E01WiredPort.java').read_text().replace('/sys/class/host_peripheral/charging_mode',node);put('com/shilapi/xcertplay/E01WiredPort.java',s)
put('com/shilapi/xcertplay/PortCheck.java','''package com.shilapi.xcertplay;
import java.nio.file.*;import android.content.Context;
public class PortCheck {
static Path p=Paths.get("'''+node+'''");static void mode(String m)throws Exception{Files.write(p,m.getBytes());}static void check(String m)throws Exception{String v=new String(Files.readAllBytes(p));if(!m.equals(v))throw new AssertionError(m+" != "+v);}static void waitIO()throws Exception{Thread.sleep(1200);}
public static void main(String[] a)throws Exception{try{
Context c=new Context();mode("dcp");E01WiredPort.start(c);waitIO();check("cdp");mode("dcp");waitIO();check("cdp");mode("dcp");waitIO();check("cdp");mode("dcp");waitIO();check("dcp");E01WiredPort.stop();waitIO();check("dcp");
mode("sdp");E01WiredPort.start(c);waitIO();check("sdp");E01WiredPort.stop();waitIO();check("sdp");
c.p.edit().putString("restore_mode","dcp").commit();mode("cdp");E01WiredPort.recover(c);waitIO();check("dcp");
android.os.Build.MODEL="other";mode("dcp");E01WiredPort.start(c);waitIO();check("dcp");
System.out.println("PASS real port controller: DCP recovery, rate limit, stop restore, SDP preservation, pending restore, model gate");System.exit(0);
}catch(Throwable e){e.printStackTrace();System.exit(1);}}}''')
j=find_java()['java_home']/'bin'
subprocess.run([str(j/'javac'),'--release','8','-Xlint:-options','-d',str(T/'classes'),*map(str,T.rglob('*.java'))],check=True)
x=subprocess.run([str(j/'java'),'-cp',str(T/'classes'),'com.shilapi.xcertplay.PortCheck'],capture_output=True,text=True,timeout=25);print(x.stdout+x.stderr);x.check_returncode();(R/'tests/port-results.txt').write_text(x.stdout)
