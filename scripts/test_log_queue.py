#!/usr/bin/env python3
"""Real bounded writer: blocked storage cannot block enqueue/close; clear cancels old work."""
from pathlib import Path
import importlib.util, subprocess, tempfile, sys
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'scripts'))
from test_support import find_java
spec=importlib.util.spec_from_file_location('fixtures',ROOT/'scripts/compile_stubs.py')
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
jdk=find_java()['java_home']/'bin'
owner=(ROOT/'src/core/smali/classes/com/shilapi/xcertplay/SessionLogFile.smali').read_text()
for name,entry in [('append','queueSession'),('reset','queueStartSession')]:
    method=owner.split('.method public final '+name+'(',1)[1].split('.end method',1)[0]
    assert '->closed:Z' in method and 'monitor-enter' in method and 'monitor-exit' in method
    assert '->'+entry+'(' in method
    assert '->append(' not in method and '->startSession(' not in method and '->session(' not in method
close=owner.split('.method public close()',1)[1].split('.end method',1)[0]
assert '->closed:Z' in close and 'join' not in close and 'E01LogPolicy' not in close
with tempfile.TemporaryDirectory(prefix='06link-log-queue-') as folder:
 p=Path(folder)
 names=('android/os/Build.java','android/content/res/Resources.java','android/util/DisplayMetrics.java','android/content/Context.java','android/content/Intent.java','android/content/SharedPreferences.java','android/content/ServiceConnection.java','android/content/ComponentName.java','android/os/IBinder.java','android/os/Parcel.java','android/content/pm/PackageManager.java','android/content/pm/PackageInfo.java','android/content/pm/Signature.java','com/shilapi/xcertplay/DiagnosticRedactor.java')
 for name in names:
  dest=p/name;dest.parent.mkdir(parents=True,exist_ok=True);dest.write_text(m.STUBS[name])
 (p/'QueueProbe.java').write_text(r'''
import com.shilapi.xcertplay.E01LogPolicy;import java.io.*;import java.nio.file.*;import java.lang.reflect.*;import java.util.*;
public class QueueProbe {
 static int checks;static void ok(boolean x,String s){checks++;if(!x)throw new AssertionError(s);}
 static Field field(String n)throws Exception{Field f=E01LogPolicy.class.getDeclaredField(n);f.setAccessible(true);return f;}
 static Object lock;static ArrayDeque<?> queue;
 static String read(File f)throws Exception{return f.exists()?new String(Files.readAllBytes(f.toPath()),"UTF-8"):"";}
 static void drained()throws Exception{long end=System.nanoTime()+10000000000L;while(System.nanoTime()<end){synchronized(lock){if(!(Boolean)field("draining").get(null))return;}Thread.sleep(5);}throw new AssertionError("writer did not drain");}
 public static void main(String[] args)throws Exception{
  File root=Files.createTempDirectory("writer-storage-").toFile();File file=new File(root,"06link.log");
  android.content.Context c=new android.content.Context(){public File getFilesDir(){return root;}public File getExternalFilesDir(String ignored){return null;}};
  lock=field("QUEUE_LOCK").get(null);queue=(ArrayDeque<?>)field("queue").get(null);
  // Own the actual disk-writer monitor, simulating arbitrarily slow storage.
  synchronized(E01LogPolicy.class){
   Thread producer=new Thread(()->{E01LogPolicy.queueStartSession(file,"06Link log started queued");E01LogPolicy.queueSession(file,"CarPlay connected ACCEPTED_BEFORE_CLOSE");});
   producer.start();producer.join(2000);ok(!producer.isAlive(),"reset/append cannot wait on disk-writer lock");
   ok(!file.exists(),"disk deliberately blocked while UI submits");
  }
  // SessionLogFile.close only marks its own closed flag; no ownership cancellation
  // exists in the shipped queue adapter (verified directly in Smali above).
  drained();String saved=read(file);ok(saved.indexOf("started queued")<saved.indexOf("ACCEPTED_BEFORE_CLOSE"),"accepted header/event FIFO survives owner close");
  ok(saved.contains("ACCEPTED_BEFORE_CLOSE"),"accepted event not lost when source closes");
  E01LogPolicy.clear(c);
  synchronized(E01LogPolicy.class){
   for(int i=0;i<10000;i++)E01LogPolicy.queueSession(file,"VIDEO raw frame="+i);
   synchronized(lock){ok(queue.isEmpty()&&!(Boolean)field("draining").get(null),"packet noise rejected before queue or worker startup");}
   Thread producer=new Thread(()->{for(int i=0;i<3000;i++)E01LogPolicy.queueSession(file,"CarPlay connected overload="+i);});
   producer.start();producer.join(2000);ok(!producer.isAlive(),"full queue never executes storage on caller");
   synchronized(lock){ok(queue.size()<=128,"pending work is strictly bounded");ok((Long)field("dropped").get(null)>0,"queue overflow accounted");}
   E01LogPolicy.clear(c); // Invalidates both queued and already-dequeued pre-clear work.
  }
  drained();ok(read(file).isEmpty(),"clear cannot be followed by resurrected pending history");
  E01LogPolicy.queueSession(file,"CarPlay connected AFTER_CLEAR");drained();ok(read(file).contains("AFTER_CLEAR"),"writer stays usable after clear");
  E01LogPolicy.queueSession(file,"00:43:50.561 audio stats audioType=media codec=LPCM sampleRate=48000 estimatedQueuedFrames=16654 writeErrors=0 lastWriteError=none rebuffers=4");drained();
  saved=read(file);ok(saved.contains("queuedFrames=16654")&&saved.contains("rebuffers=4"),"compact statistics survive enqueue and actual write filtering");
  String timing="VIDEO timing run=tail configured=wired screen=110 route=direct-hwc histUs=n/p95u/p99u/max/gt50/gt100 releaseGap=3600/20000/40000/255000/3/1";
  E01LogPolicy.queueSession(file,timing);
  E01LogPolicy.queueSession(file,"[接收摘要] video timing run=tail configured=wired reader=77 screen=111 arrivalGap=1200/66667/100000/255000/2/1");
  drained();saved=read(file);ok(saved.contains(timing)&&saved.contains("screen=111 arrivalGap=1200/66667/100000/255000/2/1"),"bounded timing summaries survive real queue and disk filters intact");
  String settingsTiming="UI timing settings id=1 eventAgeMs=4 gestureToOpenMs=1 openToRequestMs=2 requestToBuildMs=180 buildMs=10 buildToPreDrawMs=16 totalMs=209 end=pre_draw";
  E01LogPolicy.queueSession(file,settingsTiming);drained();ok(read(file).contains(settingsTiming),"settings transition summary survives real queue and disk filters intact");
  E01LogPolicy.clear(c);
  synchronized(E01LogPolicy.class){
   for(int i=0;i<2000;i++)E01LogPolicy.queueSession(file,"CarPlay connected stress="+i);
  }
  drained();ok(read(file).contains("省略记录="),"overflow is reported once per drained batch rather than silently unbounded");
  long total=0;for(File f:root.listFiles())total+=f.length();ok(total<=1000000,"async path retains strict total disk budget");
  System.out.println("PASS "+checks+" bounded queue, blocked storage, close acceptance, filtering, FIFO and clear checks");
 }
}
''')
 subprocess.run([str(jdk/'javac'),'-d',str(p/'classes'),*[str(f) for f in p.rglob('*.java')],str(ROOT/'src/e01/com/shilapi/xcertplay/E01LogPolicy.java')],check=True)
 subprocess.run([str(jdk/'java'),'-cp',str(p/'classes'),'QueueProbe'],check=True,timeout=30)
