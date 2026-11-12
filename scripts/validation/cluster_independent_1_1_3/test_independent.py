from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3] / 'scripts'))
from test_support import find_java, resolve
import importlib.util,tempfile,subprocess,json
HERE=Path(__file__).resolve().parent;ROOT=Path(__file__).resolve().parents[3]
spec=importlib.util.spec_from_file_location('stubs',ROOT/'scripts/compile_stubs.py');m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);files=dict(m.STUBS)
files.pop('com/shilapi/xcertplay/E01ClusterMode.java',None)
files['android/os/Build.java']='package android.os;public class Build{public static String MODEL="E01",DEVICE="BX11QJ";public static class VERSION{public static int SDK_INT=22;}}'
files['android/view/Display.java']='package android.view;public class Display{public int id=1;public int getDisplayId(){return id;}}'
files['android/app/Presentation.java']='package android.app;public class Presentation{public final android.view.Display display=new android.view.Display();public android.view.Display getDisplay(){return display;}public android.content.Context getContext(){return new android.content.Context();}}'
files['com/shilapi/xcertplay/E01AmapOutput.java']='''package com.shilapi.xcertplay;final class E01AmapOutput{
static int repairs,ensures,finishes;static boolean held=true,restore=true,block;static java.util.concurrent.CountDownLatch entered=new java.util.concurrent.CountDownLatch(1),release=new java.util.concurrent.CountDownLatch(1);
String repairAccess(android.content.Context c){repairs++;return "REPAIR";}
boolean ensure(android.content.Context c){ensures++;if(block){entered.countDown();try{release.await();}catch(InterruptedException e){Thread.currentThread().interrupt();}}return held;}
boolean finish(android.content.Context c){finishes++;return restore;}
String accessMessage(android.content.Context c,boolean ask){return "";}}'''
files['com/shilapi/xcertplay/E01AmapCompatibility.java']='package com.shilapi.xcertplay;class E01AmapCompatibility {static void start(){}}'
files['com/shilapi/xcertplay/E01ClusterIntro.java']='package com.shilapi.xcertplay;class E01ClusterIntro {static void connected(){}static void opened(){}static void ended(){}}'
files['com/shilapi/xcertplay/E01MusicCard.java']='package com.shilapi.xcertplay;final class E01MusicCard{static void onFrame(com.shilapi.xcertplay.iap2.wire.Iap2Frame f){}static void clear(){}}'
files['com/shilapi/xcertplay/E01LogPolicy.java']='package com.shilapi.xcertplay;final class E01LogPolicy{static boolean keepCluster(String s){return false;}static void append(java.io.File f,String s){}}'
files['com/neusoft/alfus/RpcManager.java']='''package com.neusoft.alfus;public class RpcManager{
 public static final RpcManager INSTANCE=new RpcManager();public static final java.util.List<String> messages=new java.util.ArrayList<String>();public static boolean fail;
 public static RpcManager getInstance(){return INSTANCE;}
 public boolean sendMessage(int op,byte[] p){messages.add(Integer.toHexString(op)+":"+(p[0]&255)+":"+(p.length>1?(p[1]&255):-1));return !fail;}
}'''
files['com/shilapi/xcertplay/StartProbe.java']='''package com.shilapi.xcertplay;
import android.app.Presentation;import android.content.Context;import java.lang.reflect.*;import java.util.*;import java.util.concurrent.*;import com.neusoft.alfus.RpcManager;
public class StartProbe{
 static int checks;static void ok(boolean b,String why){checks++;if(!b)throw new AssertionError(why);}
 static Field f(String name)throws Exception{Field f=E01ClusterMode.class.getDeclaredField(name);f.setAccessible(true);return f;}
 static void set(String name,Object value)throws Exception{f(name).set(null,value);}
 static long get(String name)throws Exception{return f(name).getLong(null);}
 static void tick()throws Exception{Method m=E01ClusterMode.class.getDeclaredMethod("tick");m.setAccessible(true);try{m.invoke(null);}catch(InvocationTargetException e){throw new AssertionError(e.getCause());}}
 static int count(String key){int n=0;for(String value:RpcManager.messages)if(value.equals(key))n++;return n;}
 static void expired()throws Exception{set("readyAt",System.nanoTime()/1000000L-1);}
 public static void main(String[] args)throws Exception{
  ScheduledExecutorService dummy=Executors.newSingleThreadScheduledExecutor();set("worker",dummy);set("route",new com.shilapi.xcertplay.hud.BydHudRouteState());
  Context c=new Context();Presentation p=new Presentation();Presentation other=new Presentation();other.display.id=0;
  ok(E01ClusterMode.amapRepairMessage(c).equals("REPAIR")&&E01AmapOutput.repairs==1,"idle repair allowed");
  E01ClusterMode.initialize(c);E01ClusterMode.setVisible(p,true);ok(!E01ClusterMode.amapRepairMessage(c).equals("REPAIR")&&E01AmapOutput.repairs==1,"presentation blocks repair");tick();ok(RpcManager.messages.isEmpty(),"visible window without real session must not initialize");
  E01ClusterMode.sessionStarted(c);ok(!E01ClusterMode.amapRepairMessage(c).equals("REPAIR")&&E01AmapOutput.repairs==1,"connected session blocks repair");E01AmapOutput.held=false;
  int compat=E01ClusterMode.maintainAmapOutput(Integer.MIN_VALUE);
  ok(E01AmapOutput.ensures==1&&RpcManager.messages.isEmpty(),"ADB worker alone sends no map/card RPC");
  long before=System.nanoTime()/1000000L;tick();long after=System.nanoTime()/1000000L;
  ok(!RpcManager.messages.isEmpty(),"unauthorized/unavailable ADB cannot gate initialization");
  ok(!RpcManager.messages.isEmpty(),"initialization starts when session and window ready");
  ok(RpcManager.messages.get(0).equals("76b:15:0")&&RpcManager.messages.get(1).equals("76b:6:1")&&RpcManager.messages.get(2).equals("76c:1:1"),"original initialization order retained");
  for(byte[] packet:E01TbtPackets.bootstrap())ok(RpcManager.messages.contains("76b:"+(packet[0]&255)+":"+(packet[1]&255)),"original cold-start content sent");
  long deadline=get("readyAt");ok(deadline>=before+1000&&deadline<=after+1000,"fixed settle is one second, not five");
  ok(count("75d:74:1")==0,"waiting window alone never opens map");
  E01ClusterMode.setActive(p,true);tick();ok(count("75d:74:1")==0,"stream cannot bypass settle interval");
  expired();tick();ok(count("75d:74:1")==1,"active video opens map at shortened deadline");
  int n=RpcManager.messages.size();tick();tick();ok(RpcManager.messages.size()==n,"steady ticks do not repeat open or content");
  E01AmapOutput.held=false;compat=E01ClusterMode.maintainAmapOutput(compat);tick();
  ok(RpcManager.messages.size()==n,"ADB loss does not close/reopen map or card");
  E01AmapOutput.held=true;compat=E01ClusterMode.maintainAmapOutput(compat);tick();
  ok(RpcManager.messages.size()==n,"ADB recovery does not close/reopen map or card");
  E01ClusterMode.setActive(p,false);tick();ok(count("75d:74:2")==1,"stream stopping closes map");
  E01ClusterMode.setActive(p,true);tick();ok(count("75d:74:1")==2,"same-session stream can resume without reinitializing");
  E01ClusterMode.endNow();tick();int opens=count("75d:74:1");expired();tick();ok(count("75d:74:1")==opens,"disconnect cancels outstanding open");
  E01ClusterMode.sessionStarted(c);E01ClusterMode.setVisible(p,true);
  E01AmapOutput.restore=false;int unchanged=E01ClusterMode.maintainAmapOutput(compat);
  ok(unchanged==compat,"pending old ADB restore retains generation for retry");
  tick();ok(!RpcManager.messages.isEmpty(),"ADB restore failure cannot block reconnect");
  E01AmapOutput.restore=true;long lateDeadline=get("readyAt");expired();E01ClusterMode.setActive(p,true);tick();
  ok(count("75d:74:1")==opens+1,"late video uses completed initialization, no second settle");
  E01ClusterMode.setVisible(p,false);tick();opens=count("75d:74:1");expired();tick();ok(count("75d:74:1")==opens,"last-window removal cancels map");
  E01ClusterMode.setActive(other,true);tick();ok(count("75d:74:1")==opens,"main display cannot activate instrument");
  E01ClusterMode.setVisible(p,true);RpcManager.fail=true;tick();expired();tick();ok(count("75d:74:1")==opens,"failed initialization never opens map");
  E01ClusterMode.endNow();RpcManager.fail=false;set("retryAt",0L);tick();
  E01ClusterMode.sessionStarted(c);E01ClusterMode.setVisible(p,true);E01ClusterMode.setActive(p,true);
  E01AmapOutput.block=true;final int previous=compat;
  ExecutorService adbWorker=Executors.newSingleThreadExecutor(),rpcWorker=Executors.newSingleThreadExecutor();
  Future<Integer> pending=adbWorker.submit(()->E01ClusterMode.maintainAmapOutput(previous));
  ok(E01AmapOutput.entered.await(2,TimeUnit.SECONDS),"ADB install/handshake is blocked on separate worker");
  rpcWorker.submit(()->{try{tick();expired();tick();}catch(Exception e){throw new RuntimeException(e);}}).get(2,TimeUnit.SECONDS);
  int whileBlocked=count("75d:74:1");ok(whileBlocked==opens+1,"map opens while ADB remains blocked");
  int finishes=E01AmapOutput.finishes;
  E01ClusterMode.endNow();rpcWorker.submit(()->{try{tick();}catch(Exception e){throw new RuntimeException(e);}}).get(2,TimeUnit.SECONDS);
  ok(count("75d:74:2")>0,"disconnect RPC cleanup never waits for ADB");
  E01AmapOutput.release.countDown();pending.get(2,TimeUnit.SECONDS);
  ok(E01AmapOutput.finishes>finishes,"disconnect during delayed ADB install immediately requests restore");
  tick();ok(count("75d:74:1")==whileBlocked,"late ADB completion cannot reopen map");
  adbWorker.shutdownNow();rpcWorker.shutdownNow();dummy.shutdownNow();
  System.out.println("{\\"checks_passed\\":"+checks+",\\"scope\\":\\"actual instrument worker and packet encoder with controlled independent ADB/RPC workers, blocked transport, lost authorization, reconnect and original packet order; no vehicle test\\"}");
 }
}'''
with tempfile.TemporaryDirectory(prefix='06link-cluster-start-') as d:
 p=Path(d)
 for name,text in files.items():
  q=p/name;q.parent.mkdir(parents=True,exist_ok=True);q.write_text(text)
 source=ROOT/'src/e01/com/shilapi/xcertplay/E01ClusterMode.java'
 if '--baseline' in __import__('sys').argv:
  spec2=importlib.util.spec_from_file_location('bridge',ROOT/'scripts/adb_access_bridge.py');bb=importlib.util.module_from_spec(spec2);spec2.loader.exec_module(bb)
  old=(ROOT/'src/oem-bluetooth/reference/adb-access/E01ClusterMode.java').read_text()
  source_text=source.read_text();source=p/'E01ClusterMode.java';source.write_text(source_text.replace(bb.java_method(source_text,'tick'),bb.java_method(old,'tick')))
 helpers=[source,*[ROOT/'src/e01/com/shilapi/xcertplay'/f for f in ['E01RouteSummary.java','E01TbtPackets.java']]]
 jdk=find_java()['java_home']/'bin'
 rr=subprocess.run([str(jdk/'javac'),'--release','8','-d',str(p/'classes'),*[str(f) for f in p.rglob('*.java') if f!=source],*map(str,helpers)],capture_output=True,text=True);assert rr.returncode==0,rr.stderr
 result=subprocess.run([str(jdk/'java'),'-cp',str(p/'classes'),'com.shilapi.xcertplay.StartProbe'],capture_output=True,text=True,timeout=15)
 name='baseline-result.txt' if '--baseline' in __import__('sys').argv else 'start-result.json';(HERE/name).write_text(result.stdout+result.stderr);print(result.stdout+result.stderr)
 if result.returncode:raise SystemExit(result.returncode)
