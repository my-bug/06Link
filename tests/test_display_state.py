"""Real E01 debugfs fixture, read bounds, permissions and concurrent capture; no device."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from test_support import find_java, resolve
import subprocess, tempfile, json

R = Path(__file__).resolve().parents[1]
J = find_java()['java_home'] / 'bin'
files = {
'android/content/Context.java': 'package android.content; public class Context { public Context getApplicationContext(){return this;} }',
'com/shilapi/xcertplay/E01PrivilegedShell.java': '''package com.shilapi.xcertplay;
final class E01PrivilegedShell {
 static volatile boolean supported=false;
 static boolean supported(){return supported;}
 static String execute(String command){throw new AssertionError("Diagnostic must not call OEM service");}
}''',
'com/shilapi/xcertplay/E01VideoEvidence.java': '''package com.shilapi.xcertplay;
import java.util.concurrent.*;
final class E01VideoEvidence {
 static volatile String logged;static volatile int writes;
 static CountDownLatch written=new CountDownLatch(1);
 static void decision(android.content.Context c,String s){logged=s;writes++;written.countDown();}
}''',
'com/shilapi/xcertplay/Test.java': r'''package com.shilapi.xcertplay;
import java.util.concurrent.*;
import java.nio.file.*;
public class Test {
 static int checks;
 static String raw;
 static void check(boolean b,String message){checks++;if(!b)throw new AssertionError(message);}
 static String valid(int drop){return "DISPLAY_SNAPSHOT_V2\nnode=/d/mtkfb\nread_error=none\n"+raw.replace("vsync_drop=0","vsync_drop="+drop)+"\nSMI_PROFILE\n4\nSW_VSYNC_FPS\n0\nEND_DISPLAY_SNAPSHOT\n";}
 static class Source implements E01DisplayState.Source {
  volatile int displayReads, profileReads, propertyReads;
  volatile Thread caller;
  boolean fail, fallback, block, oversized;
  CountDownLatch entered=new CountDownLatch(1),release=new CountDownLatch(1);
  public String readFile(String path,int limit)throws Exception {
   if(path.endsWith("/mtkfb")){
    displayReads++;caller=Thread.currentThread();entered.countDown();
    check(limit==8192,"bounded display read");
    if(block&&!release.await(3,TimeUnit.SECONDS))throw new AssertionError("read not released");
    if(fail||(fallback&&path.startsWith("/sys/")))throw new java.io.IOException("SECRET raw error");
    return oversized?raw+new String(new char[8192]).replace('\0','x'):raw;
   }
   check(path.endsWith("/current_profile")&&limit==64,"only bounded SMI reads");
   profileReads++;
   throw new java.io.FileNotFoundException("SECRET path");
  }
  public String readProperty(String name){
   check(name.equals("debug.sf.sw_vsync_fps"),"only known read-only property");propertyReads++;return "0";
  }
 }
 public static void main(String[] args)throws Exception {
  raw=new String(Files.readAllBytes(Paths.get(args[0])),"UTF-8");
  check(raw.contains("lcm_fps=6000")&&raw.contains("vsync_drop=0"),"actual E01 fixture");
  for(int drop=0;drop<2;drop++){
   String s=E01DisplayState.summarize(valid(drop));
   check(s.contains("驱动primary 标称FPS=60")&&s.contains("lcm_fps_raw=6000")&&s.contains("vsync_drop="+drop),"actual primary state and centi-Hz conversion");
   check(s.contains(drop==1?"primary隔次同步已开启":"primary隔次同步未开启"),"primary-only flag meaning");
   check(s.contains("size=1920x720")&&s.contains("SMI=4")&&s.contains("softFPS=0"),"optional fields");
   check(s.equals(E01DisplayState.summarize(valid(drop).replace("\r\n","\n").replace("\n","\r\n"))),"CRLF");
  }
  String unavailable=E01DisplayState.summarize("DISPLAY_SNAPSHOT_V2\nnode=unavailable\nEND_DISPLAY_SNAPSHOT\n");
  check(unavailable.contains("状态不可读")&&unavailable.contains("vsync_drop=?"),"missing is not zero");
  check(E01DisplayState.summarize(valid(1).replace("END_DISPLAY_SNAPSHOT", "")).contains("读取不完整"),"truncation");
  check(E01DisplayState.summarize(null).contains("读取不完整"),"null");
  check(E01DisplayState.summarize(valid(1).replace("vsync_drop=1","vsync_drop=11")).contains("vsync_drop=?"),"invalid flag");
  check(E01DisplayState.summarize(valid(1).replace("lcm_fps=6000","lcm_fps=600000")).contains("lcm_fps_raw=?"),"invalid raw fps");
  check(E01DisplayState.summarize(valid(0).replace("lcm_fps=6000","lcm_fps=5994")).contains("标称FPS=59.94"),"fractional Hz");
  check(E01DisplayState.summarize(valid(0).replace("lcm_fps=6000","lcm_fps=6005")).contains("标称FPS=60.05"),"fractional leading zero");
  check(E01DisplayState.summarize(valid(0).replace("lcm_fps=6000","lcm_fps=5990")).contains("标称FPS=59.9"),"fractional trailing zero");
  check(E01DisplayState.summarize(valid(0).replace("lcm_fps=6000","lcm_fps=60")).contains("标称FPS=0.6"),"no magnitude-based unit guessing");
  check(E01DisplayState.summarize(valid(0).replace("lcm_fps=6000","lcm_fps=0")).contains("标称FPS=?"),"zero Hz not valid nominal rate");
  check(E01DisplayState.summarize(valid(0).replace("lcm_fps=6000","lcm_fps=6000.5")).contains("lcm_fps_raw=?"),"non-integer driver rate rejected");
  check(E01DisplayState.summarize(valid(0).replace("vsync_drop=0","vsync_drop=0x")).contains("vsync_drop=?"),"invalid flag suffix rejected");
  String noisy=E01DisplayState.summarize(valid(0)+"SECRET account address credential");
  check(!noisy.contains("SECRET")&&!noisy.contains("Framebuffer")&&!noisy.contains("ffffff")&&noisy.length()<400,"whitelist/log bound");
  Source fallback=new Source();fallback.fallback=true;
  String fallbackResult=E01DisplayState.summarize(E01DisplayState.readSnapshot(fallback));
  check(fallback.displayReads==2&&fallback.profileReads==2&&fallback.propertyReads==1,"fallback and optional read bounds");
  check(fallbackResult.contains("vsync_drop=0")&&fallbackResult.contains("error=none")&&fallbackResult.contains("SMI=?"),"fallback success");
  Source missing=new Source();missing.fail=true;
  String missingResult=E01DisplayState.summarize(E01DisplayState.readSnapshot(missing));
  check(missingResult.contains("状态不可读")&&missingResult.contains("error=IOException")&&!missingResult.contains("SECRET"),"unreadable records sanitized failure");
  Source huge=new Source();huge.oversized=true;
  check(E01DisplayState.summarize(E01DisplayState.readSnapshot(huge)).contains("读取不完整"),"read ceiling is incomplete");
  java.lang.reflect.Field directField=E01DisplayState.class.getDeclaredField("DIRECT");directField.setAccessible(true);
  E01DisplayState.Source direct=(E01DisplayState.Source)directField.get(null);
  check(direct.readFile(args[0],8192).equals(raw),"real FileInputStream reader");
  check(direct.readFile(args[0],64).length()==64,"actual stream byte bound");
  Source source=new Source();source.block=true;source.fail=args.length>1;
  E01DisplayState.captureOnce(null,source);E01DisplayState.captureOnce(new android.content.Context(),source);
  check(source.displayReads==0&&source.propertyReads==0,"unsupported device must not claim/run");
  E01PrivilegedShell.supported=true;
  final android.content.Context c=new android.content.Context();
  Thread[] threads=new Thread[16];
  for(int i=0;i<threads.length;i++){threads[i]=new Thread(()->E01DisplayState.captureOnce(c,source));threads[i].start();}
  check(source.entered.await(2,TimeUnit.SECONDS),"worker started");
  for(Thread t:threads){t.join(1000);check(!t.isAlive(),"blocked caller");}
  check(source.displayReads==1,"concurrent calls must coalesce");
  check(source.caller.isDaemon()&&source.caller.getName().equals("06Link-display-state"),"dedicated background worker");
  source.release.countDown();
  check(E01VideoEvidence.written.await(2,TimeUnit.SECONDS),"completion recorded");
  int completedReads=source.displayReads;
  for(int i=0;i<50;i++)E01DisplayState.captureOnce(c,source);
  check(source.displayReads==completedReads&&E01VideoEvidence.writes==1,"one bounded record, no retries");
  if(args.length>1)check(completedReads==2&&E01VideoEvidence.logged.contains("IOException")&&!E01VideoEvidence.logged.contains("SECRET"),"read failure metadata only");
  else check(completedReads==1&&E01VideoEvidence.logged.contains("vsync_drop=0"),"result reaches existing log");
  System.out.println("PASS "+checks+" display-state checks "+(args.length>1?"failure":"success"));
 }
}'''
}
with tempfile.TemporaryDirectory() as d:
    p=Path(d)
    for name,text in files.items():
        f=p/name;f.parent.mkdir(parents=True,exist_ok=True);f.write_text(text)
    source=R/'src/e01/com/shilapi/xcertplay/E01DisplayState.java'
    subprocess.run([str(J/'javac'),'--release','8','-d',str(p/'classes'),str(source),*[str(p/n) for n in files]],check=True)
    results=[]
    for mode in [[],['failure']]:
        r=subprocess.run([str(J/'java'),'-cp',str(p/'classes'),'com.shilapi.xcertplay.Test',str(R/'tests/fixtures/mtkfb-e01.txt'),*mode],check=True,capture_output=True,text=True,timeout=15)
        print(r.stdout,end='');results.append(r.stdout.strip())
    (R/'tests/display-state-results.json').write_text(json.dumps({'checks':results,'vehicle_run':False},indent=2)+'\n')
