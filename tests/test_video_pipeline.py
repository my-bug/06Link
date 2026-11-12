from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from test_support import find_java, resolve
import subprocess,tempfile,json
R=Path(__file__).resolve().parents[1]
J=find_java()['java_home'] / 'bin'
with tempfile.TemporaryDirectory() as d:
 p=Path(d)
 files={
 'android/hardware/usb/UsbDeviceConnection.java':'package android.hardware.usb; public class UsbDeviceConnection {public int getFileDescriptor(){return 10;}}',
 'android/hardware/usb/UsbEndpoint.java':'package android.hardware.usb; public class UsbEndpoint {public int getAddress(){return 129;}}',
 'android/util/Log.java':'package android.util; public class Log {public static int w(String t,String s){return 0;}}',
 'android/media/MediaCodec.java':'''package android.media; public class MediaCodec {public static class BufferInfo {} public int[] ready={0,1,-2,2,-1}; public int cursor, releases;public int dequeueOutputBuffer(BufferInfo i,long t){return ready[cursor++];}public void releaseOutputBuffer(int i,boolean r){releases++;}}''',
 'Test.java':r'''
import com.shilapi.xcertplay.transport.*;
import com.shilapi.xcertplay.*;
import kotlin.Unit;
import java.util.*;
import java.io.*;
import java.util.concurrent.*;
public class Test {
 static void check(boolean b,String s){if(!b)throw new AssertionError(s);}
 static class Ops implements UsbfsReadOps {
  long seq; int submits,frees,discards; Set<Long> active=new HashSet<>();
  ArrayDeque<Integer> submitErrors=new ArrayDeque<>(),results=new ArrayDeque<>();
  CountDownLatch entered, resume; List<Integer> sizes=new ArrayList<>();
  public long submitRead(int f,int e,int s){submits++;sizes.add(s);if(!submitErrors.isEmpty()){int err=submitErrors.remove();if(err!=0)return err;}long h=++seq;active.add(h);return h;}
  public int awaitRead(long h,byte[] b,int t){check(active.contains(h),"await unowned");if(entered!=null){entered.countDown();try{if(!resume.await(2,TimeUnit.SECONDS))throw new AssertionError("cancel did not unblock");}catch(InterruptedException e){throw new RuntimeException(e);}}int result=results.isEmpty()?4:results.remove();if(result>=0)Arrays.fill(b,0,result,(byte)h);return result;}
  public void freeRead(long h){check(active.remove(h),"double free");frees++;}
  public void discardRead(int f,long h){check(active.contains(h),"discard freed handle");discards++;if(resume!=null)resume.countDown();}
 }
 static LegacyBulkReader reader(Ops o,boolean ahead){LegacyBulkReader r=new LegacyBulkReader(10,129,65536,o,s->Unit.INSTANCE);if(ahead)r.enableReadAhead();return r;}
 static void close(LegacyBulkReader r,Ops o){r.cancel();r.releaseAfterClose();r.releaseAfterClose();check(o.active.isEmpty(),"leak after close");}
 static void usb()throws Exception {
  Ops o=new Ops();LegacyBulkReader r=reader(o,true);byte[] b=new byte[65536];check(r.read(b,100)==4&&b[0]==1&&o.submits==2,"not rearmed before return");check(r.read(b,100)==4&&b[0]==2&&o.submits==3,"order/data corrupted");close(r,o);
  o=new Ops();r=reader(o,false);r.read(b,100);check(o.submits==1&&o.active.isEmpty(),"iAP2 must stay demand-driven");close(r,o);
  o=new Ops();o.results.add(-110);r=reader(o,true);check(r.read(b,100)==null&&o.submits==1&&o.frees==0,"timeout lost pending");r.read(b,100);check(o.submits==2&&o.frees==1,"timeout resubmitted outstanding URB");close(r,o);
  o=new Ops();o.submitErrors.add(-22);r=reader(o,true);r.read(b,100);check(r.getChunkBytes()==16384&&o.sizes.equals(Arrays.asList(65536,16384,16384)),"submit EINVAL fallback");close(r,o);
  o=new Ops();o.results.add(-22);r=reader(o,true);r.read(b,100);check(r.getChunkBytes()==16384&&o.submits==3,"completion EINVAL fallback");close(r,o);
  o=new Ops();o.submitErrors.add(0);o.submitErrors.add(-19);r=reader(o,true);check(r.read(b,100)==4,"lost valid data on next-submit failure");try{r.read(b,100);throw new AssertionError("lost deferred error");}catch(IOException expected){}close(r,o);
  o=new Ops();o.results.add(-71);r=reader(o,true);try{r.read(b,100);throw new AssertionError("swallowed error");}catch(IOException expected){}check(o.submits==1&&o.frees==1,"rearm after error");close(r,o);
  final Ops blocked=new Ops();blocked.entered=new CountDownLatch(1);blocked.resume=new CountDownLatch(1);blocked.results.add(-125);final LegacyBulkReader br=reader(blocked,true);final Throwable[] failure={null};Thread worker=new Thread(()->{try{br.read(new byte[65536],1000);failure[0]=new AssertionError("cancel accepted result");}catch(IOException expected){}catch(Throwable t){failure[0]=t;}});worker.start();check(blocked.entered.await(2,TimeUnit.SECONDS),"worker stuck");br.cancel();worker.join(2000);check(!worker.isAlive()&&failure[0]==null,"cancel/deadlock "+failure[0]);check(blocked.submits==1&&blocked.frees==1&&blocked.discards==1,"rearmed after cancel");close(br,blocked);
  o=new Ops();r=reader(o,true);r.read(b,100);r.cancel();try{r.read(b,100);throw new AssertionError("read after cancel");}catch(IOException expected){}r.releaseAfterClose();check(o.frees==2,"prefetch not freed after fd close");
  System.out.println("PASS USB ordered read-ahead, demand mode, timeouts, EINVAL, fatal errors, cancellation, close ownership");
 }
 static void output(){android.media.MediaCodec c=new android.media.MediaCodec();android.media.MediaCodec.BufferInfo info=new android.media.MediaCodec.BufferInfo();for(int n:new int[]{0,1,-2,2,-1})check(LatestVideoOutput.take(c,info)==n,"dropped frame or format signal");check(c.releases==0,"helper discarded output");System.out.println("PASS all decoded outputs and format signals preserved in order");}
 public static void main(String[] args)throws Exception{usb();output();}
}'''}
 for n,s in files.items():q=p/n;q.parent.mkdir(parents=True,exist_ok=True);q.write_text(s)
 sources=[R/'src/e01/com/shilapi/xcertplay/transport/LegacyBulkReader.java',R/'src/e01/com/shilapi/xcertplay/LatestVideoOutput.java']
 stubs=['kotlin/Unit.java','kotlin/jvm/functions/Function1.java','kotlin/jvm/internal/DefaultConstructorMarker.java','com/shilapi/xcertplay/transport/UsbfsReadOps.java','com/shilapi/xcertplay/transport/NativeUsbfsReadOps.java']
 subprocess.run([str(J/'javac'),'-d',str(p),*[str(x)for x in sources],*[str(R/'tooling/compile-stubs'/n)for n in stubs],*[str(p/n)for n in files]],check=True)
 out=subprocess.run([str(J/'java'),'-cp',str(p),'Test'],check=True,text=True,capture_output=True);print(out.stdout)
 (R/'tests/video-pipeline-results.json').write_text(json.dumps({'passed':out.stdout.splitlines(),'vehicle':False},indent=2)+'\n')
