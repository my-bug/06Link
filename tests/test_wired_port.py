"""Exercise the real port controller, including blocked disk I/O and teardown races."""
from pathlib import Path
import os
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'scripts'))
from test_support import find_java

java = find_java()['java_home'] / 'bin'
with tempfile.TemporaryDirectory(prefix='06link-wired-port-') as folder:
    work = Path(folder)
    def put(name, text):
        target = work / name
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_text(text)
    put('android/content/SharedPreferences.java', '''package android.content;
public interface SharedPreferences {
 String getString(String k,String d); Editor edit();
 interface Editor { Editor putString(String k,String v); Editor remove(String k); boolean commit(); }
}''')
    put('android/content/Context.java', '''package android.content;
import java.util.*; import java.util.concurrent.*;
public class Context {
 public final P p=new P();
 public Context getApplicationContext(){return this;}
 public SharedPreferences getSharedPreferences(String n,int m){
  if(Thread.currentThread().getName().equals("ui-test"))throw new AssertionError("UI preferences access");
  return p;
 }
 public static class P implements SharedPreferences {
  final Map<String,String> saved=new HashMap<>();
  public volatile CountDownLatch entered, release;
  public volatile boolean failNext;
  public synchronized String getString(String k,String d){return saved.containsKey(k)?saved.get(k):d;}
  public Editor edit(){return new E(this);}
 }
 static class E implements SharedPreferences.Editor {
  final P p; String key, value; boolean remove;
  E(P p){this.p=p;}
  public SharedPreferences.Editor putString(String k,String v){key=k;value=v;return this;}
  public SharedPreferences.Editor remove(String k){key=k;remove=true;return this;}
  public boolean commit(){
   if(Thread.currentThread().getName().equals("ui-test"))throw new AssertionError("UI commit");
   CountDownLatch entered=p.entered, release=p.release;
   if(entered!=null){entered.countDown();try{if(!release.await(3,TimeUnit.SECONDS))throw new AssertionError("commit timeout");}catch(InterruptedException e){throw new AssertionError(e);}}
   if(p.failNext){p.failNext=false;return false;}
   synchronized(p){if(remove)p.saved.remove(key);else p.saved.put(key,value);}
   return true;
  }
 }
}''')
    put('android/os/Build.java', '''package android.os;
public class Build {public static String MODEL="E01",DEVICE="BX11QJ";public static class VERSION {public static int SDK_INT=22;}}''')
    put('android/os/SystemClock.java', '''package android.os;
public class SystemClock {public static long elapsedRealtime(){return System.nanoTime()/1000000;}}''')
    put('android/util/Log.java', '''package android.util;
public class Log {public static int i(String a,String b){return 0;}public static int w(String a,String b){return 0;}}''')
    node = str(work / 'mode')
    front = str(work / 'front-mode')
    source = (ROOT / 'src/e01/com/shilapi/xcertplay/E01WiredPort.java').read_text()
    put('com/shilapi/xcertplay/E01WiredPort.java', source.replace('/sys/class/host_peripheral/charging_mode', node).replace('/sys/class/otg_peripheral/charging_mode', front).replace('new FileWriter(port.node)', 'new TestFileWriter(port.node)').replace('new FileReader(port.node)', 'new TestFileReader(port.node)'))
    put('com/shilapi/xcertplay/TestFileReader.java', '''package com.shilapi.xcertplay;
import java.io.*;
class TestFileReader extends FileReader {
 static int reads;
 TestFileReader(String path)throws IOException{super(path);reads++;}
}''')
    put('com/shilapi/xcertplay/TestFileWriter.java', '''package com.shilapi.xcertplay;
import java.io.*; import java.util.concurrent.*;
class TestFileWriter extends FileWriter {
 static volatile CountDownLatch entered, release;
 static final java.util.Map<String,Integer> writes=new java.util.HashMap<>();
 static synchronized int count(String path){return writes.containsKey(path)?writes.get(path):0;}
 TestFileWriter(String path)throws IOException{super(path);synchronized(TestFileWriter.class){writes.put(path,count(path)+1);}}
 public void write(String value)throws IOException {
  if("dcp".equals(value)&&entered!=null){entered.countDown();try{if(!release.await(3,TimeUnit.SECONDS))throw new IOException("restore test timeout");}catch(InterruptedException e){throw new IOException(e);}}
  super.write(value);
 }
}''')
    put('com/shilapi/xcertplay/PortCheck.java', r'''package com.shilapi.xcertplay;
import android.content.Context;
import java.nio.file.*; import java.util.concurrent.*; import java.lang.reflect.*;
public class PortCheck {
 static Path node=Paths.get("NODE_PATH"), front=Paths.get("FRONT_PATH"); static int checks;
 static void check(boolean ok,String why){checks++;if(!ok)throw new AssertionError(why);}
 static void mode(String v)throws Exception{Files.write(node,v.getBytes("UTF-8"));}
 static String mode()throws Exception{return new String(Files.readAllBytes(node),"UTF-8");}
 static void waitMode(String value)throws Exception{
  long until=System.nanoTime()+TimeUnit.SECONDS.toNanos(3);
  while(!value.equals(mode())&&System.nanoTime()<until)Thread.sleep(10);
  check(value.equals(mode()),"expected mode "+value+", got "+mode());
 }
 static void waitStatus(String value)throws Exception{
  long until=System.nanoTime()+TimeUnit.SECONDS.toNanos(3);
  while(!value.equals(E01WiredPort.dataModeStatus())&&System.nanoTime()<until)Thread.sleep(10);
  check(value.equals(E01WiredPort.dataModeStatus()),"expected status "+value+", got "+E01WiredPort.dataModeStatus());
 }
 static ScheduledExecutorService io()throws Exception{
  Field f=E01WiredPort.class.getDeclaredField("IO");f.setAccessible(true);return (ScheduledExecutorService)f.get(null);
 }
 static void drain()throws Exception{io().submit(()->{}).get(3,TimeUnit.SECONDS);}
 static void waitOwner(Object owner)throws Exception{
  long until=System.nanoTime()+TimeUnit.SECONDS.toNanos(3);
  while(!E01WiredPort.controllerReady(owner)&&System.nanoTime()<until)Thread.sleep(10);
  check(E01WiredPort.controllerReady(owner),"owner barrier not released");
 }
 static void empty(Context c)throws Exception{E01WiredPort.stop();drain();check(c.p.getString("restore_mode","").isEmpty(),"journal not cleared");}
 static void blockedIoDoesNotBlockUi()throws Exception{
  Context c=new Context();mode("dcp");c.p.entered=new CountDownLatch(1);c.p.release=new CountDownLatch(1);
  E01WiredPort.start(c);check(c.p.entered.await(2,TimeUnit.SECONDS),"worker did not reach journal commit");
  FutureTask<Void> ui=new FutureTask<>(()->{
   E01WiredPort.stop();E01WiredPort.recover(c);E01WiredPort.start(c);
   check("wait".equals(E01WiredPort.dataModeStatus()),"new start incorrectly ready while worker blocked");
   return null;
  });
  Thread thread=new Thread(ui,"ui-test");thread.start();
  try{ui.get(400,TimeUnit.MILLISECONDS);}finally{c.p.release.countDown();}
  waitMode("cdp");waitStatus("ready");empty(c);waitMode("dcp");
 }
 static void frontMode(String value)throws Exception{Files.write(front,value.getBytes("UTF-8"));}
 static String frontMode()throws Exception{return new String(Files.readAllBytes(front),"UTF-8");}
 static void waitFront(String value)throws Exception{
  long until=System.nanoTime()+TimeUnit.SECONDS.toNanos(3);
  while(!value.equals(frontMode())&&System.nanoTime()<until)Thread.sleep(10);
  check(value.equals(frontMode()),"expected front mode "+value+", got "+frontMode());
 }
 static void nativePort()throws Exception{
  Context c=new Context();c.p.edit().putString("wired_port","native").commit();mode("dcp");frontMode("dcp");
  int reads=TestFileReader.reads,hostWrites=TestFileWriter.count(node.toString()),frontWrites=TestFileWriter.count(front.toString());
  Object owner=new Object();E01WiredPort.start(c);E01WiredPort.controllerStarted(c,owner);waitOwner(owner);waitStatus("idle");
  Field tick=E01WiredPort.class.getDeclaredField("tick");tick.setAccessible(true);
  check(tick.get(null)==null,"native USB kept OEM polling alive");
  check(c.p.getString("restore_mode","").isEmpty()&&c.p.getString("restore_mode_otg","").isEmpty(),"native USB created OEM restore state");
  check(TestFileReader.reads==reads&&TestFileWriter.count(node.toString())==hostWrites&&TestFileWriter.count(front.toString())==frontWrites,"native USB accessed OEM ports");
  // Saving another choice must not change the running native connection.
  c.p.edit().putString("wired_port","host").commit();E01WiredPort.start(c);drain();
  check(E01WiredPort.controllerReady(owner)&&"idle".equals(E01WiredPort.dataModeStatus()),"saving port changed native session");
  E01WiredPort.stop();E01WiredPort.controllerClosed(owner);drain();
  check(TestFileReader.reads==reads&&TestFileWriter.count(node.toString())==hostWrites&&TestFileWriter.count(front.toString())==frontWrites,"native USB cleanup accessed OEM ports");
  // Next connection uses host again; changing to native takes effect only after teardown.
  Object hostOwner=new Object();E01WiredPort.start(c);E01WiredPort.controllerStarted(c,hostOwner);waitOwner(hostOwner);waitMode("cdp");
  c.p.edit().putString("wired_port","native").commit();E01WiredPort.start(c);mode("dcp");waitMode("cdp");
  E01WiredPort.stop();E01WiredPort.controllerClosed(hostOwner);drain();waitMode("dcp");
  // Native discovery still waits for an already-entered OEM restore from the previous session.
  c.p.edit().putString("wired_port","host").commit();E01WiredPort.start(c);waitMode("cdp");waitStatus("ready");
  TestFileWriter.entered=new CountDownLatch(1);TestFileWriter.release=new CountDownLatch(1);
  E01WiredPort.stop();check(TestFileWriter.entered.await(2,TimeUnit.SECONDS),"restore did not start before native switch");
  c.p.edit().putString("wired_port","native").commit();Object next=new Object();E01WiredPort.start(c);E01WiredPort.controllerStarted(c,next);
  check(!E01WiredPort.controllerReady(next),"native discovery overtook pending OEM restore");
  TestFileWriter.release.countDown();waitOwner(next);waitStatus("idle");waitMode("dcp");
  TestFileWriter.entered=null;TestFileWriter.release=null;
  E01WiredPort.stop();E01WiredPort.controllerClosed(next);drain();
  // Native mode works without either OEM node, on E01 as well as ordinary Android tablets.
  Files.delete(node);Files.delete(front);
  reads=TestFileReader.reads;hostWrites=TestFileWriter.count(node.toString());frontWrites=TestFileWriter.count(front.toString());
  Object noNodes=new Object();E01WiredPort.start(c);E01WiredPort.controllerStarted(c,noNodes);waitOwner(noNodes);waitStatus("idle");
  E01WiredPort.stop();E01WiredPort.controllerClosed(noNodes);drain();
  android.os.Build.MODEL="Tablet";android.os.Build.DEVICE="tablet";
  for(int sdk:new int[]{22,34}){
   android.os.Build.VERSION.SDK_INT=sdk;Object tablet=new Object();
   E01WiredPort.recover(c);E01WiredPort.start(c);E01WiredPort.controllerStarted(c,tablet);
   check(E01WiredPort.controllerReady(tablet),"tablet USB discovery blocked on OEM preparation");waitStatus("idle");
   E01WiredPort.stop();E01WiredPort.controllerClosed(tablet);drain();
  }
  check(TestFileReader.reads==reads&&TestFileWriter.count(node.toString())==hostWrites&&TestFileWriter.count(front.toString())==frontWrites,"native mode attempted OEM node access");
  check(!Files.exists(node)&&!Files.exists(front),"native mode created OEM nodes");
  android.os.Build.MODEL="E01";android.os.Build.DEVICE="BX11QJ";android.os.Build.VERSION.SDK_INT=22;mode("dcp");
 }
 static void selectedPorts()throws Exception{
  Context c=new Context();mode("dcp");frontMode("sdp");
  int untouched=TestFileWriter.count(front.toString());
  E01WiredPort.start(c);waitMode("cdp");waitStatus("ready");empty(c);waitMode("dcp");
  check("sdp".equals(frontMode())&&untouched==TestFileWriter.count(front.toString()),"default host touched other port/storage");
  check(c.p.getString("restore_mode_otg","").isEmpty(),"default host journaled unselected port");
  // Front port selected, armrest remains available to a USB drive. No repeated CDP writes.
  c.p.edit().putString("wired_port","otg").commit();mode("sdp");frontMode("dcp");
  untouched=TestFileWriter.count(node.toString());Object owner=new Object();
  E01WiredPort.start(c);E01WiredPort.controllerStarted(c,owner);waitOwner(owner);waitFront("cdp");waitStatus("ready");
  check("dcp".equals(c.p.getString("restore_mode_otg","")),"front original mode missing");
  check(c.p.getString("restore_mode","").isEmpty(),"front selection journaled host");
  int frontWrites=TestFileWriter.count(front.toString());Thread.sleep(1100);
  check(frontWrites==TestFileWriter.count(front.toString()),"ready front port was rewritten");
  // Selecting another interface during a session only changes the next connection.
  c.p.edit().putString("wired_port","host").commit();E01WiredPort.start(c);drain();Thread.sleep(1100);
  check("sdp".equals(mode())&&untouched==TestFileWriter.count(node.toString()),"settings change touched host/storage during session");
  check("cdp".equals(frontMode()),"settings change stopped current front session");
  E01WiredPort.stop();drain();check("cdp".equals(frontMode()),"front restored before teardown");
  E01WiredPort.controllerClosed(owner);drain();waitFront("dcp");
  check(untouched==TestFileWriter.count(node.toString()),"front cleanup wrote host/storage");
  check(c.p.getString("restore_mode_otg","").isEmpty(),"front journal not cleared");
  mode("dcp");frontMode("sdp");frontWrites=TestFileWriter.count(front.toString());
  E01WiredPort.start(c);waitMode("cdp");empty(c);waitMode("dcp");
  check(frontWrites==TestFileWriter.count(front.toString()),"next host session touched front/storage");
  // No automatic fallback to the other port when the selected port is unavailable.
  c.p.edit().putString("wired_port","otg").commit();frontMode("unknown");mode("dcp");
  untouched=TestFileWriter.count(node.toString());E01WiredPort.start(c);waitStatus("failed");empty(c);
  check("dcp".equals(mode())&&untouched==TestFileWriter.count(node.toString()),"invalid selected port switched other port");
  Files.delete(front);E01WiredPort.start(c);waitStatus("failed");empty(c);
  check(untouched==TestFileWriter.count(node.toString()),"missing selected port switched other port");
  // Recover a previously modified front port even if the saved selection is now host.
  frontMode("cdp");mode("sdp");c.p.edit().putString("wired_port","host").commit();
  c.p.edit().putString("restore_mode_otg","dcp").commit();E01WiredPort.recover(c);drain();waitFront("dcp");
  check(untouched==TestFileWriter.count(node.toString()),"front crash recovery wrote host");
  // The existing teardown barrier also covers a physical write on the front port.
  c.p.edit().putString("wired_port","otg").commit();frontMode("dcp");
  E01WiredPort.start(c);waitFront("cdp");waitStatus("ready");
  TestFileWriter.entered=new CountDownLatch(1);TestFileWriter.release=new CountDownLatch(1);
  E01WiredPort.stop();check(TestFileWriter.entered.await(2,TimeUnit.SECONDS),"front restore did not enter write");
  Object next=new Object();E01WiredPort.start(c);E01WiredPort.controllerStarted(c,next);
  check(!E01WiredPort.controllerReady(next),"discovery overtook front-port restore");
  TestFileWriter.release.countDown();waitOwner(next);waitFront("cdp");
  TestFileWriter.entered=null;TestFileWriter.release=null;
  E01WiredPort.stop();E01WiredPort.controllerClosed(next);drain();waitFront("dcp");
  check(untouched==TestFileWriter.count(node.toString()),"front teardown race wrote host");
  Files.delete(front);mode("dcp");
 }
 public static void main(String[] args)throws Exception{try{
  Thread.currentThread().setName("ui-test");
  // A direct cold USB host launch also gets a worker barrier without requiring the home page.
  Context cold=new Context();Object coldOwner=new Object();mode("dcp");E01WiredPort.controllerStarted(cold,coldOwner);waitOwner(coldOwner);waitMode("cdp");E01WiredPort.stop();E01WiredPort.controllerClosed(coldOwner);drain();waitMode("dcp");
  blockedIoDoesNotBlockUi();
  Context c=new Context();Object first=new Object();
  mode("dcp");E01WiredPort.start(c);E01WiredPort.controllerStarted(c,first);E01WiredPort.controllerStarted(c,first);
  waitMode("cdp");waitStatus("ready");waitOwner(first);
  E01WiredPort.start(c);drain();check(E01WiredPort.controllerReady(first),"reopened USB host invalidated live owner");
  E01WiredPort.stop();drain();check("cdp".equals(mode()),"stop restored before controller cleanup");
  E01WiredPort.recover(c);drain();check("cdp".equals(mode()),"activity recovery restored a closing controller");
  E01WiredPort.controllerClosed(first);drain();waitMode("dcp");check(c.p.getString("restore_mode","").isEmpty(),"completion did not clear journal");
  E01WiredPort.controllerClosed(first);drain();check("dcp".equals(mode()),"duplicate cleanup changed mode");
  // Two controllers may overlap while an old host awaits teardown; neither can restore the other's port.
  Object old=new Object(), fresh=new Object();
  E01WiredPort.start(c);E01WiredPort.controllerStarted(c,old);waitMode("cdp");
  E01WiredPort.stop();E01WiredPort.start(c);E01WiredPort.controllerStarted(c,fresh);
  E01WiredPort.controllerClosed(old);drain();waitStatus("ready");check("cdp".equals(mode()),"old completion restored new wired session");
  E01WiredPort.stop();drain();check("cdp".equals(mode()),"wireless switch restored while wired cleanup active");
  E01WiredPort.controllerClosed(fresh);drain();waitMode("dcp");
  Object a=new Object(),b=new Object();E01WiredPort.start(c);E01WiredPort.controllerStarted(c,a);E01WiredPort.controllerStarted(c,b);waitMode("cdp");
  E01WiredPort.stop();E01WiredPort.controllerClosed(a);drain();check("cdp".equals(mode()),"first of two cleanup owners restored port");
  E01WiredPort.controllerClosed(b);drain();waitMode("dcp");
  // The critical race: an old restore is already inside the physical write when a new start arrives.
  E01WiredPort.start(c);waitMode("cdp");waitStatus("ready");
  TestFileWriter.entered=new CountDownLatch(1);TestFileWriter.release=new CountDownLatch(1);
  E01WiredPort.stop();check(TestFileWriter.entered.await(2,TimeUnit.SECONDS),"restore did not enter write");
  Object next=new Object();E01WiredPort.start(c);E01WiredPort.controllerStarted(c,next);
  check(!E01WiredPort.controllerReady(next),"USB discovery overtook in-flight restore");
  TestFileWriter.release.countDown();waitOwner(next);waitMode("cdp");
  TestFileWriter.entered=null;TestFileWriter.release=null;
  E01WiredPort.stop();check(!E01WiredPort.controllerReady(next),"stop left discovery barrier open");E01WiredPort.controllerClosed(next);drain();waitMode("dcp");
  // Failure/cancellation before a controller exists must still restore the journal.
  E01WiredPort.start(c);waitMode("cdp");empty(c);waitMode("dcp");
  // Existing data modes are preserved, and an OEM switch to DCP has a bounded retry budget.
  mode("sdp");E01WiredPort.start(c);waitStatus("ready");check("sdp".equals(mode()),"SDP was changed");empty(c);check("sdp".equals(mode()),"SDP restore changed mode");
  mode("cdp");E01WiredPort.start(c);waitStatus("ready");empty(c);check("cdp".equals(mode()),"original CDP was changed");
  mode("dcp");E01WiredPort.start(c);waitMode("cdp");mode("dcp");waitMode("cdp");mode("dcp");waitMode("cdp");mode("dcp");waitStatus("failed");check("dcp".equals(mode()),"write retry budget ignored");empty(c);
  // Process-death recovery is journal driven. Recovery queued before a new start must not win.
  c.p.edit().putString("restore_mode","dcp").commit();mode("cdp");E01WiredPort.recover(c);drain();waitMode("dcp");
  CountDownLatch hold=new CountDownLatch(1), entered=new CountDownLatch(1);
  io().execute(()->{entered.countDown();try{hold.await();}catch(InterruptedException e){throw new AssertionError(e);}});entered.await();
  c.p.edit().putString("restore_mode","dcp").commit();mode("cdp");E01WiredPort.recover(c);E01WiredPort.start(c);hold.countDown();drain();waitStatus("ready");check("cdp".equals(mode()),"stale cold recovery restored new start");empty(c);waitMode("dcp");
  // Failed journal save cannot change the physical mode; an unreadable mode cannot claim ready.
  Context failed=new Context();failed.p.failNext=true;mode("dcp");E01WiredPort.start(failed);waitStatus("failed");check("dcp".equals(mode()),"data mode changed without journal");Object denied=new Object();E01WiredPort.controllerStarted(failed,denied);waitOwner(denied);E01WiredPort.stop();E01WiredPort.controllerClosed(denied);drain();
  mode("unknown");E01WiredPort.start(c);Object unknown=new Object();E01WiredPort.controllerStarted(c,unknown);waitOwner(unknown);waitStatus("failed");E01WiredPort.stop();E01WiredPort.controllerClosed(unknown);drain();
  c.p.edit().putString("restore_mode","dcp").commit();E01WiredPort.recover(c);drain();check("dcp".equals(c.p.getString("restore_mode","")),"unknown node cleared pending journal");
  mode("cdp");E01WiredPort.recover(c);drain();waitMode("dcp");
  nativePort();
  selectedPorts();
  android.os.Build.MODEL="other";E01WiredPort.start(c);drain();check("idle".equals(E01WiredPort.dataModeStatus()),"unsupported model status");check("dcp".equals(mode()),"unsupported model changed mode");
  System.out.println("PASS "+checks+" real port-controller assertions: blocked I/O, generation, ownership, cancellation, cold recovery, mode status, selected port, untouched other port, session snapshot and recovery");
  System.exit(0);
 }catch(Throwable t){t.printStackTrace();System.exit(1);}}
}'''.replace('NODE_PATH', node).replace('FRONT_PATH', front))
    # Fixture setup writes preferences directly; UI assertions apply only to calls made by production code.
    context = work / 'android/content/Context.java'
    context.write_text(context.read_text().replace('if(Thread.currentThread().getName().equals("ui-test"))throw new AssertionError("UI commit");', ''))
    subprocess.run([str(java / 'javac'), '--release', '8', '-Xlint:-options', '-d', str(work / 'classes'), *map(str, work.rglob('*.java'))], check=True)
    run = subprocess.run([str(java / 'java'), '-cp', str(work / 'classes'), 'com.shilapi.xcertplay.PortCheck'], capture_output=True, text=True, timeout=45)
    print(run.stdout + run.stderr, end='')
    run.check_returncode()

# Validate source hooks independently of cached APK build output.
controller = (ROOT / 'src/core/smali/classes/com/shilapi/xcertplay/orchestration/CarPlayController.smali').read_text()
def method(signature):
    start = controller.index('.method ' + signature)
    return controller[start:controller.index('.end method', start)]
start = method('public final start()V')
acquire = start.index('E01WiredPort;->controllerStarted(')
assert start.index('->closed:Z') < acquire
assert start.index('->WIRED:') < acquire < start.index('\n    :cond_2')
assert start.rindex('monitor-exit p0') > acquire
close = method('private static final close$lambda$29(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V')
assert close.count('E01WiredPort;->controllerClosed(') == 2
assert close.index('"VPN/NCM"') < close.index('E01WiredPort;->controllerClosed(')
for branch in (close[:close.index('\n    :catchall_0\n')], close[close.index('\n    :catchall_0\n'):]):
    assert branch.index('->awaitTermination(') < branch.index('E01WiredPort;->controllerClosed(') < branch.index('->countDown()')
assert 'E01WiredPort;->controllerClosed(' not in method('public close()V')
print('PASS source hooks: WIRED-only registration under close monitor; release after cleanup on normal and exceptional completion, never await timeout')

availability = method('private final checkIphoneAvailability()V')
assert availability.index('E01WiredPort;->controllerReady(') < availability.index('->discover()')
assert ':cond_1' in availability and '->scheduleAvailabilityPoll(' in availability
print('PASS new USB discovery waits for prior physical writes, using the existing nonblocking availability poll even if sysfs preparation fails')

host = (ROOT / 'src/core/smali/classes/com/shilapi/xcertplay/CarPlayHostActivity.smali').read_text()
a = host.index('.method protected onCreate(Landroid/os/Bundle;)V')
create = host[a:host.index('.end method', a)]
assert create.index('USB attach after cancel: prompting on home') < create.index('E01WiredUi;->beforeAutomaticConnect(') < create.index('HostLaunch;->attach(')
entry = create[create.index('    :cond_4'):create.index('    :cond_5')]
assert '->getAction()' in entry and 'if-eqz p1, :cond_5' in entry
assert '->finish()V' in entry and 'return-void' in entry
assert 'invoke-static {v0, v4}' in entry
print('PASS direct USB host entry uses the existing automatic-connect intent gate after manual-stop rejection')
