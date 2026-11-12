#!/usr/bin/env python3
"""Stress the shipped log policy: limits, UTF-8, filtering, retention and safe cleanup."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from test_support import find_java, resolve
import importlib.util,subprocess,tempfile
ROOT=Path(__file__).resolve().parent.parent
FIXTURES=ROOT
spec=importlib.util.spec_from_file_location('fixtures',FIXTURES/'scripts/compile_stubs.py')
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
jdk=find_java()['java_home'] / 'bin'
with tempfile.TemporaryDirectory(prefix='06link-logs-') as d:
 p=Path(d)
 for name in ('android/content/res/Resources.java','android/util/DisplayMetrics.java','android/content/Context.java','android/content/Intent.java','android/content/SharedPreferences.java','android/content/ServiceConnection.java','android/content/ComponentName.java','android/os/IBinder.java','android/os/Parcel.java','android/content/pm/PackageManager.java','android/content/pm/PackageInfo.java','android/content/pm/Signature.java','com/shilapi/xcertplay/DiagnosticRedactor.java'):
  f=p/name;f.parent.mkdir(parents=True,exist_ok=True);f.write_text(m.STUBS[name])
 (p/'LogPolicyTest.java').write_text(r'''
import com.shilapi.xcertplay.E01LogPolicy;
import java.io.*;import java.nio.*;import java.nio.file.*;import java.nio.charset.*;import java.util.*;
public class LogPolicyTest {
 static int checks;
 static void check(boolean value,String label){checks++;if(!value)throw new AssertionError(label);}
 static String read(File f)throws Exception{return new String(Files.readAllBytes(f.toPath()),"UTF-8");}
 static void write(File f,String s)throws Exception{Files.write(f.toPath(),s.getBytes("UTF-8"));}
 static long total(Collection<File> dirs){long n=0;for(File d:dirs){File[] fs=d.listFiles();if(fs!=null)for(File f:fs)if(f.isFile())n+=f.length();}return n;}
 static String repeat(String s,int n){StringBuilder b=new StringBuilder();for(int i=0;i<n;i++)b.append(s);return b.toString();}
 public static void main(String[] args)throws Exception{
  File root=Files.createTempDirectory("log-policy-").toFile();
  File session=new File(root,"06link.log");File cluster=new File(root,"e01-cluster-diagnostic.txt");
  E01LogPolicy.session(session,"video fps=30 decoded=999");
  check(!session.exists(),"routine stats not persisted");
  E01LogPolicy.append(session,"VIDEO 12345 window=1 rx=30 decodedReleased=30 recoveries=0");
  E01LogPolicy.append(session,"Smooth video negotiatedMax=30 sourceMedianStepUs=33333 output=SurfaceView");
  check(!session.exists(),"direct periodic sample bypass is suppressed");
  E01LogPolicy.session(session,"[音频场景] 申请 声道=10 焦点=3 结果=1");
  check(read(session).contains("[音频场景] 申请 声道=10"),"audio scene lifecycle retained");
  long audioBytes=session.length();
  E01LogPolicy.session(session,"[音频场景] 申请 声道=10 焦点=3 结果=1");
  check(session.length()==audioBytes,"duplicate audio scene state suppressed");
  E01LogPolicy.session(session,"[导航音量] 轨道=1 PCM峰值=-12dBFS");
  check(read(session).contains("[导航音量] 轨道=1"),"bounded navigation diagnostic retained");
  E01LogPolicy.session(session,"Audio: ready audioType=default codec=LPCM rate=24000 channels=1");
  check(read(session).contains("codec=LPCM rate=24000"),"per-track audio format retained");
  check(E01LogPolicy.FILE_BYTES==16384,"daily file limit is 16 KiB");
  check(E01LogPolicy.keepCluster("[原厂引导] 暂停广播已分发，实际停发未观测"),"bounded publisher diagnostic retained");
  check(!E01LogPolicy.keepCluster("[原厂引导] 暂停广播已分发，实际停发未观测"),"identical publisher state suppressed");
  check(E01LogPolicy.keepCluster("[仪表卡片] summary content=4 navOpen=1 navClose=0"),"bounded card summary retained");
  check(E01LogPolicy.keepCluster("[车道诊断] 接收5204=0 能力未声明"),"bounded lane summary retained");
  check(!E01LogPolicy.keepCluster("[车道诊断] 接收5204=0 能力未声明"),"identical lane state suppressed");

  check(!E01LogPolicy.keepCluster("session=true window=true stream=true realTbt=true"),"navigation field changes suppressed");
  check(!E01LogPolicy.keepCluster("Presentation visible=true owners=1"),"routine presentation details suppressed");
  check(E01LogPolicy.keepCluster("RPC op=76b accepted=false"),"failed RPC retained");

  check(!E01LogPolicy.keepCluster("RPC op=76b sub=6 accepted=true"),"successful packet omitted");
  check(!E01LogPolicy.keepCluster("iAP2 5201 count=20 bytes=120"),"frame counters omitted");
  check(!E01LogPolicy.keepCluster("TBT updated, source=real navigation"),"per-route updates omitted");
  check(E01LogPolicy.keepCluster("CarPlay session active"),"active state retained");
  check(!E01LogPolicy.keepCluster("CarPlay session active"),"identical state deduplicated");
  check(E01LogPolicy.keepCluster("CarPlay session ended"),"end retained");
  check(E01LogPolicy.keepCluster("CarPlay session active"),"state transition can recur immediately");
  E01LogPolicy.session(session,"Decoder failed attempt=1");long first=session.length();
  for(int i=2;i<1000;i++)E01LogPolicy.session(session,"Decoder failed attempt="+i);
  check(session.length()==first,"changing retry numbers cannot flood file");
  java.lang.reflect.Field rf=E01LogPolicy.class.getDeclaredField("recent");rf.setAccessible(true);
  Map<String,Long> recent=(Map<String,Long>)rf.get(null);
  String failureKey=null;for(String key:recent.keySet())if(key.contains("Decoder failed"))failureKey=key;
  check(failureKey!=null,"failure suppression key exists");
  recent.put(failureKey,System.nanoTime()-65000000000L);
  E01LogPolicy.session(session,"Decoder failed attempt=42");check(session.length()==first,"same failure suppressed beyond one minute");
  recent.put(failureKey,System.nanoTime()-305000000000L);
  E01LogPolicy.session(session,"Decoder failed attempt=43");check(session.length()>first,"same failure retained after five minutes");
  E01LogPolicy.session(session,"VIDEO recovery=decoder timeout");long recovery=session.length();
  E01LogPolicy.session(session,"VIDEO recovery=decoder timeout");check(session.length()==recovery,"recovery reason deduplicated");
  E01LogPolicy.session(session,"VIDEO decision=fallback30");check(session.length()>recovery,"decoder fallback decision retained");

  E01LogPolicy.session(session,"Decoder error code=7");long code7=session.length();
  E01LogPolicy.session(session,"Decoder error code=8");check(session.length()>code7,"distinct error codes retained");
  E01LogPolicy.session(session,"CarPlay connected");check(session.length()>first,"connection event retained");
  E01LogPolicy.session(session,"Could not establish MANUAL hotspot");long cannot=session.length();
  check(cannot>first,"connection refusal retained without error keyword");
  E01LogPolicy.session(session,"USB adapter missing");check(session.length()>cannot,"missing device reason retained");
  E01LogPolicy.session(session,"06Link log started next session");long next=session.length();
  E01LogPolicy.session(session,"Decoder failed attempt=1");check(session.length()>next,"new session records first failure again");
  for(int i=0;i<2000;i++)E01LogPolicy.append(cluster,"seq="+i+" "+repeat("地图道路",100));
  File previous=new File(root,"e01-cluster-diagnostic.previous.txt");
  check(cluster.length()<=E01LogPolicy.FILE_BYTES,"current byte bound");
  check(previous.exists()&&previous.length()<=E01LogPolicy.FILE_BYTES,"archive byte bound");
  check(read(cluster).contains("seq=1999"),"newest event survives rollover");
  CharsetDecoder utf8=Charset.forName("UTF-8").newDecoder().onMalformedInput(CodingErrorAction.REPORT);
  utf8.decode(ByteBuffer.wrap(Files.readAllBytes(cluster.toPath())));
  utf8.reset().decode(ByteBuffer.wrap(Files.readAllBytes(previous.toPath())));
  checks++;
  E01LogPolicy.append(cluster,repeat("超长内容",100000));check(cluster.length()<=E01LogPolicy.FILE_BYTES,"single oversized line bounded");
  Thread[] threads=new Thread[4];
  for(int n=0;n<threads.length;n++){final int tag=n;threads[n]=new Thread(()->{for(int j=0;j<300;j++)E01LogPolicy.append(session,"t="+tag+" "+repeat("value",100));});threads[n].start();}
  for(Thread t:threads)t.join();
  check(session.length()<=E01LogPolicy.SESSION_BYTES,"concurrent writers bounded");
  check(new File(root,"previous.log").length()<=E01LogPolicy.SESSION_BYTES,"concurrent archive bounded");
  write(new File(root,"logcat.log"),repeat("old logcat\n",20000));
  write(new File(root,"logcat-previous.log"),"old");
  for(int i=2;i<=7;i++)write(new File(root,"previous-"+i+".log"),"old archive");
  write(new File(root,"notes.txt"),"user artifact");
  File sub=new File(root,"nested");sub.mkdir();write(new File(sub,"logcat.log"),"do not traverse");
  for(int i=0;i<8;i++){File f=new File(root,"crash-"+i+".log");write(f,repeat("error stack line\n",10000));f.setLastModified(100000L+i);}
  E01LogPolicy.maintain(root);
  check(!new File(root,"logcat.log").exists()&&!new File(root,"logcat-previous.log").exists(),"legacy logcat removed");
  for(int i=2;i<=7;i++)check(!new File(root,"previous-"+i+".log").exists(),"old archive removed "+i);
  check(read(new File(root,"notes.txt")).equals("user artifact"),"unknown files unchanged");
  check(new File(sub,"logcat.log").exists(),"no recursive deletion");
  int count=0;for(File f:root.listFiles())if(f.getName().matches("crash-[0-9]+\\.log")){count++;check(f.length()<=16384,"crash byte cap");}
  check(count==2,"keep two recent crashes");
  check(new File(root,"crash-7.log").exists()&&!new File(root,"crash-0.log").exists(),"newest crash retained");
  File unknown=new File(root,"unrelated.log");E01LogPolicy.append(unknown,"test");check(!unknown.exists(),"writer refuses unknown path");
  File links=Files.createTempDirectory("log-policy-links-").toFile();
  File target=new File(links,"notes.txt");write(target,repeat("user data\n",30000));long before=target.length();
  Files.createSymbolicLink(new File(links,"previous.log").toPath(),target.toPath());
  E01LogPolicy.maintain(links);check(target.length()==before,"same-directory symlink target untouched");
  File fallback=Files.createTempDirectory("log-policy-context-").toFile();write(new File(fallback,"logcat.log"),"old");
  E01LogPolicy.install(new android.content.Context(){public File getFilesDir(){return fallback;}public File getExternalFilesDir(String unused){return null;}});
  check(!new File(fallback,"logcat.log").exists(),"internal-only startup cleanup works");

  check(E01LogPolicy.TOTAL_BYTES==1000000,"strict decimal 1 MB limit");
  File crashDir=Files.createTempDirectory("log-policy-pid-").toFile();
  for(int i=0;i<12;i++){
   File f=new File(crashDir,"crash-"+(100+i)+"-12345.log");
   E01LogPolicy.writeText(f,repeat("异常详情😀\n",100000),null,2,null);
   check(f.length()<=16384,"PID crash bounded before persistence");
  }
  check(crashDir.listFiles().length<=2,"actual elapsed-PID crash names retained at most twice");
  File stall=new File(crashDir,"main-stall.log");
  for(int i=0;i<20;i++)E01LogPolicy.appendText(stall,repeat("卡顿😀\n",10000),null,2,null);
  check(stall.length()<=16384,"stall append adapter bounded");
  utf8.reset().decode(ByteBuffer.wrap(Files.readAllBytes(stall.toPath())));checks++;
  File exit=new File(crashDir,"last-exit-info.log");
  E01LogPolicy.writeText(exit,repeat("退出😀\n",10000),null,2,null);
  check(exit.length()<=16384,"exit adapter bounded");
  E01LogPolicy.writeText(new File(crashDir,"not-a-log.txt"),"unknown",null,2,null);
  check(!new File(crashDir,"not-a-log.txt").exists(),"adapter refuses unknown files");
  E01LogPolicy.writeText(new File(links,"previous.log"),"replace",null,2,null);
  check(target.length()==before,"adapter refuses symlink");
  File storage=Files.createTempDirectory("log-policy-all-roots-").toFile();
  File in=new File(storage,"internal"),out=new File(storage,"external");
  List<File> roots=Arrays.asList(in,new File(in,"logs"),out,new File(out,"logs"));
  for(File dir:roots){dir.mkdirs();write(new File(dir,"06link.log"),repeat("legacy\n",200000));write(new File(dir,"crash-200-456.log"),repeat("legacy crash\n",100000));}
  E01LogPolicy.install(new android.content.Context(){public File getFilesDir(){return in;}public File getExternalFilesDir(String unused){return out;}});
  check(total(roots)<=1000000,"startup migrates oversized logs in all four app roots");
  // More than four directories deliberately stresses aggregate eviction, not just per-file caps.
  List<File> budgets=new ArrayList<File>();
  for(int i=0;i<90;i++){File dir=new File(storage,"budget-"+i);dir.mkdir();budgets.add(dir);E01LogPolicy.writeText(new File(dir,"06link.log"),repeat("x",16384),null,2,null);check(total(budgets)<=1000000,"aggregate bound after each write "+i);}
  check(!new File(budgets.get(0),"06link.log").exists(),"oldest logs evicted when aggregate capacity exhausted");
  java.util.concurrent.atomic.AtomicReference<Throwable> error=new java.util.concurrent.atomic.AtomicReference<Throwable>();
  Thread[] writers=new Thread[4];
  for(int i=0;i<4;i++){final int offset=i;writers[i]=new Thread(()->{try{for(int j=0;j<100;j++){
   File dir=budgets.get((offset*20+j)%90);
   E01LogPolicy.appendText(new File(dir,"main-stall.log"),repeat("burst😀\n",3000),null,2,null);
   synchronized(E01LogPolicy.class){if(total(budgets)>1000000)throw new AssertionError("concurrent aggregate overflow");}
  }}catch(Throwable t){error.set(t);}});writers[i].start();}
  for(Thread t:writers)t.join();
  check(error.get()==null,"mixed concurrent writes preserve aggregate budget: "+error.get());
  check(total(budgets)<=1000000,"final aggregate budget");
  System.out.println(checks+" log policy stress checks passed");
 }
}
''')
 subprocess.run([str(jdk/'javac'),'-d',str(p/'classes'),*[str(f) for f in p.rglob('*.java')],str(ROOT/'src/e01/com/shilapi/xcertplay/E01LogPolicy.java')],check=True)
 subprocess.run([str(jdk/'java'),'-cp',str(p/'classes'),'LogPolicyTest'],check=True)
