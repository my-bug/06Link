from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from test_support import find_java, resolve
import subprocess,tempfile,json,re,hashlib
R=Path(__file__).resolve().parents[1]
J=find_java()['java_home'] / 'bin'
with tempfile.TemporaryDirectory() as d:
 p=Path(d);(p/'Test.java').write_text(r'''
import com.shilapi.xcertplay.E01PreparedConnection;
import java.io.*;import java.util.concurrent.*;import java.util.concurrent.atomic.*;
public class Test {
 static int count;
 static void check(boolean b,String s){count++;if(!b)throw new AssertionError(s);}
 static class Resource implements Closeable {AtomicInteger closes=new AtomicInteger();CountDownLatch closed=new CountDownLatch(1);public void close(){if(closes.incrementAndGet()>1)throw new AssertionError("double close");closed.countDown();}}
 static void latch(CountDownLatch l)throws Exception{check(l.await(2,TimeUnit.SECONDS),"timeout");}
 static void ignoreInterrupts(CountDownLatch l){boolean done=false;while(!done)try{l.await();done=true;}catch(InterruptedException e){}}
 public static void main(String[] args)throws Exception{
  Resource r=new Resource();CountDownLatch entered=new CountDownLatch(1),release=new CountDownLatch(1);
  E01PreparedConnection<Resource> t=new E01PreparedConnection<>(()->{entered.countDown();release.await();return r;});
  latch(entered);check(release.getCount()==1,"prepare blocked caller; cannot overlap hotspot");release.countDown();
  check(t.take(()->false)==r,"wrong ownership");t.cancel();check(r.closes.get()==0,"cancel closed transferred stream");r.close();
  try{t.take(()->false);throw new AssertionError("double take");}catch(IOException expected){count++;}
  Resource late=new Resource();CountDownLatch in=new CountDownLatch(1),go=new CountDownLatch(1);
  E01PreparedConnection<Resource> cancelled=new E01PreparedConnection<>(()->{in.countDown();ignoreInterrupts(go);return late;});
  latch(in);cancelled.cancel();cancelled.cancel();go.countDown();latch(late.closed);check(late.closes.get()==1,"late result leaked");
  try{cancelled.take(()->false);throw new AssertionError("cancelled result transferred");}catch(IOException expected){count++;}
  IOException original=new IOException("transport failed");E01PreparedConnection<Resource> failed=new E01PreparedConnection<>(()->{throw original;});
  try{failed.take(()->false);throw new AssertionError("lost failure");}catch(IOException expected){check(expected==original,"failure replaced");}
  Resource stale=new Resource();E01PreparedConnection<Resource> old=new E01PreparedConnection<>(()->stale);
  try{old.take(()->true);throw new AssertionError("stale generation accepted");}catch(IOException expected){count++;}latch(stale.closed);
  Resource interrupted=new Resource();CountDownLatch finish=new CountDownLatch(1);E01PreparedConnection<Resource> waiting=new E01PreparedConnection<>(()->{ignoreInterrupts(finish);return interrupted;});
  AtomicReference<Throwable> failure=new AtomicReference<>();CountDownLatch taking=new CountDownLatch(1);
  Thread consumer=new Thread(()->{try{taking.countDown();waiting.take(()->false);failure.set(new AssertionError("interrupted take succeeded"));}catch(Exception e){if(!Thread.currentThread().isInterrupted())failure.set(new AssertionError("interrupt lost"));}});
  consumer.start();latch(taking);consumer.interrupt();consumer.join(2000);finish.countDown();latch(interrupted.closed);check(!consumer.isAlive()&&failure.get()==null,"interrupt failed");
  // Claim/cancel races: exactly one owner must close each successful resource.
  for(int i=0;i<100;i++){
   Resource rr=new Resource();E01PreparedConnection<Resource> job=new E01PreparedConnection<>(()->rr);
   AtomicReference<Resource> claimed=new AtomicReference<>();Thread a=new Thread(()->{try{claimed.set(job.take(()->false));}catch(Exception expected){}});
   Thread b=new Thread(job::cancel);a.start();b.start();a.join(2000);b.join(2000);
   check(!a.isAlive()&&!b.isAlive(),"deadlock");if(claimed.get()!=null)claimed.get().close();latch(rr.closed);check(rr.closes.get()==1,"race leaked/double closed");
  }
  System.out.println("PASS "+count+" assertions: preparation overlap, handoff, cancellation, late results, generation, interruption, failure and 100 close/claim races");
 }
}''')
 subprocess.run([str(J/'javac'),'-d',str(p),str(R/'src/e01/com/shilapi/xcertplay/E01PreparedConnection.java'),str(p/'Test.java')],check=True)
 out=subprocess.run([str(J/'java'),'-cp',str(p),'Test'],check=True,capture_output=True,text=True);print(out.stdout)
import sys
sys.path.insert(0,str(R/'tests/source_build'))
from contracts import assert_contract,method_for
checks=[]
for name in ['speed-wireless-prepare','speed-wireless-cleanup','speed-controller-close','speed-disable-phone-diagnostics','speed-wired-control-write']:
 assert_contract(name);checks.append(name+' actual integration preserved')
wireless=method_for('speed-wireless-prepare')
assert wireless.index('E01OemBluetooth;->prepare')<wireless.index('E01OemBluetooth;->preconnect')<wireless.index('->startWirelessHotspot')<wireless.index('->attachWireless')<wireless.index('->awaitUsbBluetoothIap2')
write=method_for('speed-wired-control-write')
assert write.count('->send([B)V')==1 and 'copyOfRange'not in write and '0x100'not in write
checks.append('wireless order and complete wired control write retained')
s=(R/'src/e01/com/shilapi/xcertplay/E01OemBluetooth.java').read_text()
assert 'pending.take(() -> stale(controller,generation))'in s and 'if (stale(controller, generation)) { stream.close();'in s
assert 'previous.pending.cancel()'in s and 'targets.remove(controller)'in s
assert 'cancelPreparedGeneration(controller,generation)' in s and 'target.generation==generation' in s and 't.generation!=generation' in s
checks.append('old generation, cancelled preparation and post-handoff stale stream cleaned up')
ui=(R/'src/e01/com/shilapi/xcertplay/E01NativeUi.java').read_text();prefs=(R/'src/e01/com/shilapi/xcertplay/E01NativeSettings.java').read_text()
assert '"MTK 低延迟","mtk",true' in ui and 'getBoolean("mtk",true)' in prefs
checks.append('existing MTK default-on setting retained')
(R/'tests/connection-speed-results.json').write_text(json.dumps({'passed':out.stdout.splitlines()+checks,'vehicle':False},ensure_ascii=False,indent=2)+'\n');print('PASS',len(checks),'integration checks')
