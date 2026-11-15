"""Real stalled-thread snapshot and shared step wording; no devices or Android UI."""
from pathlib import Path
import subprocess,sys,tempfile
ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/'scripts'))
from test_support import find_java
j=find_java()['java_home']/'bin'
files={
'android/os/Looper.java':'''package android.os;public class Looper{public static Thread main;public static Looper getMainLooper(){return new Looper();}public Thread getThread(){if(main==null)throw new IllegalStateException();return main;}}''',
'android/os/Process.java':'''package android.os;public class Process{public static int myPid(){return 123;}}''',
'com/shilapi/xcertplay/E01WiredPort.java':'''package com.shilapi.xcertplay;public class E01WiredPort{static String status="idle";public static String dataModeStatus(){return status;}}''',
'com/shilapi/xcertplay/DiagnosticTest.java':'''package com.shilapi.xcertplay;
import java.util.concurrent.*;
public class DiagnosticTest {
 static void check(boolean v,String why){if(!v)throw new AssertionError(why);}
 public static void main(String[] args)throws Exception{
  CountDownLatch entered=new CountDownLatch(1),exit=new CountDownLatch(1);
  Thread main=new Thread(()->{entered.countDown();try{exit.await();}catch(InterruptedException e){Thread.currentThread().interrupt();}},"simulated-main");
  main.start();entered.await();android.os.Looper.main=main;
  try{
   String s=E01MainStallEvidence.describe(2400);
   check(s.matches("(?s)^\\\\d{4}-.*"),"dated evidence");
   check(s.contains("gapMs=2400 pid=123")&&s.contains("threshold snapshot"),"honest threshold record");
   check(s.contains("DiagnosticTest")&&s.contains("state="),"actual main-thread stack included");
   check(s.length()<=1800&&s.split("\\n  at ").length<=13,"bounded evidence");
   android.os.Looper.main=null;check(E01MainStallEvidence.describe(2000).contains("stack=unavailable"),"unavailable stack never breaks recorder");
   for(String status:new String[]{"idle","wait","ready","failed"}){
    E01WiredPort.status=status;
    check(E01ConnectionStageText.title(true,3,"original").equals("original"),"wireless unaffected");
    check(E01ConnectionStageText.title(false,4,"original").equals("original"),"subsequent phase unaffected");
    String title=E01ConnectionStageText.title(false,3,"waiting");
    check(title.contains("已就绪")==status.equals("ready"),"only actual readiness shows success");
   }
  }finally{exit.countDown();main.join(1000);}
  System.out.println("PASS bounded actual main-thread snapshot and shared cached USB status");
 }
}'''
}
# Keep the Java regexp escape explicit, independent of Python raw strings.
files['com/shilapi/xcertplay/DiagnosticTest.java']=files['com/shilapi/xcertplay/DiagnosticTest.java'].replace('\\\\\\\\d','\\\\d')
with tempfile.TemporaryDirectory(prefix='06link-connection-diagnostics-') as tmp:
 d=Path(tmp)
 for name,text in files.items():
  p=d/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(text)
 actual=[ROOT/'src/e01/com/shilapi/xcertplay'/f for f in ['E01MainStallEvidence.java','E01ConnectionStageText.java']]
 subprocess.run([str(j/'javac'),'--release','8','-d',str(d/'classes'),*map(str,d.rglob('*.java')),*map(str,actual)],check=True)
 subprocess.run([str(j/'java'),'-cp',str(d/'classes'),'com.shilapi.xcertplay.DiagnosticTest'],check=True,timeout=10)
