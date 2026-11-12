from pathlib import Path
import subprocess,tempfile,sys
ROOT=Path(__file__).resolve().parents[2]; HERE=Path(__file__).resolve().parent
e={'__file__':str(ROOT/'tests/cluster_settings/test_amap_output.py'),'__name__':'fixture'}
exec(compile((ROOT/'tests/cluster_settings/test_amap_output.py').read_text().split('\nsource=ROOT',1)[0],str(ROOT/'tests/cluster_settings/test_amap_output.py'),'exec'),e)
files=e['files'];JDK=e['JDK'];files.pop('com/shilapi/xcertplay/OutputProbe.java')
files['android/content/pm/PackageManager.java']='package android.content.pm;public class PackageManager{public static boolean missing;public static String name="7.5.0.600082";public static int code=21000001;public PackageInfo getPackageInfo(String n,int f)throws NameNotFoundException{if(missing)throw new NameNotFoundException();PackageInfo p=new PackageInfo();p.versionCode=code;p.versionName=name;return p;}public static class NameNotFoundException extends Exception{}}'
files['com/shilapi/xcertplay/E01ClusterMode.java']='package com.shilapi.xcertplay;public class E01ClusterMode{static final java.util.List<String> logs=new java.util.ArrayList<String>();static boolean projectionAllowed(android.content.Context c){return c.getSharedPreferences("xcertplay_airplay",0).getBoolean("cluster_map_enabled",false);}static void displayConfigured(String s){logs.add(s);}}'
files['com/shilapi/xcertplay/E01PrivilegedShell.java']='''package com.shilapi.xcertplay;import java.util.*;public class E01PrivilegedShell{
 static final List<String> commands=new ArrayList<String>();static boolean failPause,failRestore,failProcess;static Runnable afterService,afterProcess;static String process="101:500", inventory="ABSENT";
 static String execute(android.content.Context x,String c)throws Exception{return execute(c);}static String execute(String c)throws Exception{commands.add(c);if(c.equals("busybox id -u")){if(afterService!=null){Runnable r=afterService;afterService=null;r.run();}return "0";}
 if(c.startsWith("name=com.autonavi.amapauto;")){if(afterProcess!=null){Runnable r=afterProcess;afterProcess=null;r.run();}if(failProcess)throw new java.io.IOException("OEM command timeout");return process;}
 if(c.contains("EXTRA_GUIDEINFO_OUTPUT 0")){if(failPause)throw new Exception("lost pause reply");return "OUTPUT_OK";}if(c.contains("EXTRA_GUIDEINFO_OUTPUT 1")){if(failRestore)throw new Exception("lost restore reply");return "OUTPUT_OK";}if(c.contains("pm list packages"))return inventory;return "CLEAN";}}
'''
files['com/shilapi/xcertplay/AuditProbe.java']=r'''package com.shilapi.xcertplay;
import android.content.*;import android.content.pm.*;import android.os.*;import java.util.*;import java.lang.reflect.*;
public class AuditProbe{
 static int checks;static Context c=new Context();static void ck(boolean b,String why){checks++;if(!b)throw new AssertionError(why+" commands="+E01PrivilegedShell.commands+" logs="+E01ClusterMode.logs);}
 static void on(boolean v){c.getSharedPreferences("xcertplay_airplay",0).edit().putBoolean("cluster_map_enabled",v).commit();}static void wait30(){SystemClock.now+=30001;}static int count(String key){int n=0;for(String s:E01PrivilegedShell.commands)if(s.contains(key))n++;return n;}static boolean log(String key){for(String s:E01ClusterMode.logs)if(s.contains(key))return true;return false;}static int pauses(){return count("EXTRA_GUIDEINFO_OUTPUT 0");}static int restores(){return count("EXTRA_GUIDEINFO_OUTPUT 1");}
 static void reset(){Context.stores.clear();E01PrivilegedShell.commands.clear();E01ClusterMode.logs.clear();E01PrivilegedShell.failPause=false;E01PrivilegedShell.failRestore=false;E01PrivilegedShell.failProcess=false;E01PrivilegedShell.process="101:500";E01PrivilegedShell.inventory="ABSENT";PackageManager.missing=false;PackageManager.name="7.5.0.600082";PackageManager.code=21000001;SystemClock.now=100000;on(true);}
 public static void main(String[]a)throws Exception{
 reset();E01AmapOutput o=new E01AmapOutput();ck(o.ensure(c)&&pauses()==1,"initial pause");ck(log("dispatch=ack actual_output=unverified"),"dispatch never claims actual output");ck(log("version=7.5.0.600082 code=21000001 verified=true"),"record actual known version");int commands=E01PrivilegedShell.commands.size();for(int i=0;i<100;i++)o.ensure(c);ck(E01PrivilegedShell.commands.size()==commands,"no work before interval");
 wait30();o.ensure(c);ck(pauses()==1&&count("name=com.autonavi.amapauto;")==2,"same process probe does not resend pause");E01PrivilegedShell.process="202:900";o.ensure(c);ck(pauses()==1,"identity scan remains rate limited");wait30();o.ensure(c);ck(pauses()==2&&restores()==0,"restart re-pause without enable between");wait30();o.ensure(c);ck(pauses()==2,"one re-pause per identity");E01PrivilegedShell.process="202:1100";wait30();o.ensure(c);ck(pauses()==3,"PID reuse start-time detected");
 E01PrivilegedShell.process="NONE";wait30();o.ensure(c);ck(pauses()==3&&restores()==0,"missing process does not cause broadcast or package bypass");E01PrivilegedShell.process="303:1500";wait30();o.ensure(c);ck(pauses()==4,"new main process after absence reapplies once");E01PrivilegedShell.process="UNKNOWN";wait30();o.ensure(c);ck(pauses()==4&&restores()==0&&log("process_identity_unavailable"),"invalid read leaves prior request and restoration obligation");
 E01PrivilegedShell.process="404:1900";E01PrivilegedShell.failPause=true;wait30();o.ensure(c);ck(pauses()==5&&restores()==0,"failed reapply does not restore competing publisher");E01PrivilegedShell.failPause=false;wait30();o.ensure(c);ck(pauses()==6&&restores()==0,"reapply retries with 30sec cap");
 E01PrivilegedShell.process="505:2200";E01PrivilegedShell.afterProcess=()->on(false);wait30();o.ensure(c);ck(pauses()==6,"disable during slow identity probe blocks new pause");ck(o.finish(c)&&restores()==1,"disable restores exactly once");commands=E01PrivilegedShell.commands.size();wait30();o.finish(c);o.ensure(c);ck(commands==E01PrivilegedShell.commands.size(),"disabled idle performs no service access");
 reset();o=new E01AmapOutput();PackageManager.name="8.1.0";PackageManager.code=99;ck(!o.ensure(c)&&pauses()==0&&log("package_version_unverified")&&log("version=8.1.0 code=99 verified=false"),"unknown version is explicit not silently bypassed");int logs=E01ClusterMode.logs.size();for(int i=0;i<10;i++){wait30();o.ensure(c);}ck(logs==E01ClusterMode.logs.size(),"repeated mismatch doesn't flood logs");
 reset();o=new E01AmapOutput();E01PrivilegedShell.failProcess=true;ck(o.ensure(c)&&pauses()==1&&log("identity-unavailable"),"probe timeout does not undo accepted pause");E01PrivilegedShell.failProcess=false;wait30();o.ensure(c);ck(pauses()==2&&restores()==0,"first valid identity after unknown reasserts once");
 reset();o=new E01AmapOutput();PackageManager.missing=true;ck(o.ensure(c)&&pauses()==0&&log("package=absent"),"confirmed absent package explicit bypass");reset();o=new E01AmapOutput();PackageManager.missing=true;E01PrivilegedShell.inventory="PRESENT";ck(!o.ensure(c)&&pauses()==0&&log("package_inventory_unknown"),"hidden package is not absence");
 reset();o=new E01AmapOutput();E01PrivilegedShell.failPause=true;ck(!o.ensure(c)&&c.getSharedPreferences("06link-oem-navigation",0).getBoolean("restore_output",false),"lost initial response retains restoration");E01PrivilegedShell.failPause=false;wait30();ck(o.ensure(c)&&restores()==1&&pauses()==2,"initial failed pause remains recover-before-new-request");
 reset();o=new E01AmapOutput();o.ensure(c);E01PrivilegedShell.failRestore=true;ck(!o.finish(c)&&log("operation=restore phase=restore-dispatch"),"restore failure phase");E01PrivilegedShell.failRestore=false;wait30();ck(o.finish(c)&&!c.getSharedPreferences("06link-oem-navigation",0).getBoolean("restore_output",false),"restore retry clears persistent obligation");
 Field field=E01AmapOutput.class.getDeclaredField("PROCESS_COMMAND");field.setAccessible(true);java.nio.file.Files.write(java.nio.file.Paths.get(a[0]),((String)field.get(null)).getBytes("UTF-8"));
 ck(((String)field.get(null)).getBytes("UTF-8").length<4096,"process read fits shared command bound");
 System.out.println("PASS "+checks+" navigation-output checks; actual candidate, fake OEM transport");
 }}'''
if len(sys.argv)>2 and sys.argv[2]=='restart-only':
 files['com/shilapi/xcertplay/AuditProbe.java']='package com.shilapi.xcertplay;import android.content.*;import android.os.*;public class AuditProbe{public static void main(String[]a){Context c=new Context();c.getSharedPreferences("xcertplay_airplay",0).edit().putBoolean("cluster_map_enabled",true).commit();E01AmapOutput o=new E01AmapOutput();SystemClock.now=100000;o.ensure(c);E01PrivilegedShell.process="202:900";SystemClock.now+=30001;o.ensure(c);int pauses=0;for(String s:E01PrivilegedShell.commands)if(s.contains("EXTRA_GUIDEINFO_OUTPUT 0"))pauses++;if(pauses!=2)throw new AssertionError("native publisher identity changed, but pauses="+pauses);System.out.println("PASS restart reapply regression");}}'
source=Path(sys.argv[1]) if len(sys.argv)>1 else ROOT/'src/e01/com/shilapi/xcertplay/E01AmapOutput.java' 
with tempfile.TemporaryDirectory(prefix='nav-audit-') as temp:
 d=Path(temp)
 for n,t in files.items():p=d/n;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(t)
 dest=d/'com/shilapi/xcertplay/E01AmapOutput.java';dest.write_text(source.read_text())
 r=subprocess.run([str(JDK/'javac'),'--release','8','-d',str(d/'classes'),*map(str,d.rglob('*.java'))],capture_output=True,text=True);assert r.returncode==0,r.stderr
 r=subprocess.run([str(JDK/'java'),'-cp',str(d/'classes'),'com.shilapi.xcertplay.AuditProbe',str(d/'process-read.sh')],capture_output=True,text=True,timeout=15);print(r.stdout+r.stderr)
 if r.returncode:raise SystemExit(r.returncode)
 shell_script=(d/'process-read.sh').read_text()

import os
subprocess.run(['sh','-n'], input=shell_script, text=True, check=True)
with tempfile.TemporaryDirectory(prefix='nav-proc-fixture-') as d:
 base=Path(d); bb=base/'busybox';bb.write_text('''#!/bin/sh
case "$1" in
pidof) printf '%s' "$NAV_TEST_PIDS"; exit "${NAV_TEST_RC:-0}";;
tr) shift; exec /usr/bin/tr "$@";;
head) shift; exec /usr/bin/head "$@";;
sort) shift; exec /usr/bin/sort "$@";;
*) exit 2;;
esac
''');bb.chmod(0o755)
 def proc(pid,name,start,comm='com.autonavi.amapauto'):
  p=base/'proc'/str(pid);p.mkdir(parents=True,exist_ok=True);(p/'cmdline').write_bytes(name.encode()+b'\0--x\0');(p/'stat').write_text(str(pid)+' ('+comm+') S '+' '.join(['0']*18)+f' {start} '+'0 '*25)
 def run(ids,rc='0'):
  env=os.environ.copy();env.update(PATH=str(base)+':'+env['PATH'],NAV_TEST_PIDS=ids,NAV_TEST_RC=rc)
  return subprocess.check_output(['sh','-c',shell_script.replace('/proc/',str(base/'proc')+'/')],env=env,text=True).strip()
 proc(100,'com.autonavi.amapauto',1234);proc(200,'com.autonavi.amapauto:remote',888);proc(300,'com.autonavi.amapauto',5678,'name with ) parens')
 assert run('100')=='100:1234';assert run('200')=='NONE';assert run('300')=='300:5678';assert run('300 100')=='100:1234\n300:5678';assert run('','1')=='NONE';assert run('','127')=='UNKNOWN';assert run('bad','0')=='UNKNOWN';assert run('999','0')=='NONE';(base/'proc/100/stat').unlink();assert run('100')=='UNKNOWN';print('PASS 9 shell checks: exact cmdline, starttime, multi PID, unavailable, exited, comm spaces/parens')
