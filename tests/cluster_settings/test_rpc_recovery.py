from pathlib import Path
import subprocess,tempfile,sys
ROOT=Path(__file__).resolve().parents[2];HERE=Path(__file__).resolve().parent
e={'__file__':str(HERE/'test_cluster.py'),'__name__':'fixture'};exec(compile((HERE/'test_cluster.py').read_text().split('\nwith tempfile.TemporaryDirectory(',1)[0],str(HERE/'test_cluster.py'),'exec'),e)
files=e['files'];JDK=e['JDK'];files.pop('com/shilapi/xcertplay/Probe.java',None)
files['com/shilapi/xcertplay/RecoveryProbe.java']='''package com.shilapi.xcertplay;
import android.app.*;import android.content.*;import android.os.*;import java.lang.reflect.*;import java.util.concurrent.*;import com.neusoft.alfus.RpcManager;
public class RecoveryProbe{
 static int checks;static final Context c=new Context();static final Presentation p=new Presentation();
 static void ok(boolean b,String why){checks++;if(!b)throw new AssertionError(why);}
 static Field f(String n)throws Exception{Field f=E01ClusterMode.class.getDeclaredField(n);f.setAccessible(true);return f;}
 static void set(String n,Object v)throws Exception{f(n).set(null,v);}static long time(String n)throws Exception{return f(n).getLong(null);}static int count(String k){int n=0;for(String s:RpcManager.messages)if(s.equals(k))n++;return n;}
 static void tick()throws Exception{Method m=E01ClusterMode.class.getDeclaredMethod("tick");m.setAccessible(true);m.invoke(null);}static void retry()throws Exception{set("retryAt",0L);tick();}static void ready()throws Exception{set("readyAt",0L);retry();}
 static void connect()throws Exception{c.getSharedPreferences("xcertplay_airplay",0).edit().putBoolean("cluster_map_enabled",true).commit();E01ClusterMode.sessionStarted(c);E01ClusterMode.setVisible(p,true);}
 static void reset()throws Exception{RpcManager.failKey=null;E01ClusterMode.endNow();retry();RpcManager.messages.clear();}
 public static void main(String[]args)throws Exception{
  ScheduledThreadPoolExecutor worker=new ScheduledThreadPoolExecutor(1){public void execute(Runnable r){}};set("worker",worker);set("route",new com.shilapi.xcertplay.hud.BydHudRouteState());
  connect();RpcManager.failKey="76b:6:1";for(int i=0;i<5;i++)retry();
  ok(f("failures").getInt(null)==5&&!(Boolean)f("initialized").get(null),"first five initialization failures reproduce exhausted worker");
  RpcManager.failKey=null;E01ClusterMode.setActive(p,true);set("readyAt",0L);retry();
  ok((Boolean)f("initialized").get(null),"service recovery and real stream recover initialization after exhausted retry deadline without reconnect");ready();
  ok((Boolean)f("opened").get(null),"recovered initialization opens real map after settle");int n=RpcManager.messages.size();for(int i=0;i<20;i++)tick();ok(n==RpcManager.messages.size(),"successful recovery does not repeat initialization/map open");
  reset();connect();RpcManager.failKey="76b:6:1";for(int i=0;i<5;i++)retry();long before=System.nanoTime()/1000000L;
  ok(time("retryAt")>=before+29000,"fifth failure enters at least 29 remaining seconds of 30-second recovery cooldown");n=RpcManager.messages.size();E01ClusterMode.setActive(p,true);for(int i=0;i<20;i++)tick();ok(n==RpcManager.messages.size(),"incoming stream cannot bypass recovery cooldown");
  retry();ok(RpcManager.messages.size()>n&&f("failures").getInt(null)==5&&time("retryAt")>=System.nanoTime()/1000000L+29000,"one failed recovery attempt retains cap and another full cooldown");n=RpcManager.messages.size();for(int i=0;i<20;i++)tick();ok(n==RpcManager.messages.size(),"failed recovery cannot restart five fast attempts");
  E01ClusterMode.setActive(p,false);set("retryAt",0L);RpcManager.failKey=null;tick();ok(n==RpcManager.messages.size(),"expired recovery cooldown without live stream cannot retry card initialization");
  c.getSharedPreferences("xcertplay_airplay",0).edit().putBoolean("cluster_map_enabled",false).commit();tick();ok(!(Boolean)f("navTouched").get(null)&&count("76b:6:0")==1,"projection off cancels cooldown and clears own partial initialization immediately");n=RpcManager.messages.size();retry();ok(n==RpcManager.messages.size(),"disabled cooldown cannot start new navigation card");
  reset();connect();E01ClusterMode.setActive(p,true);tick();RpcManager.failKey="75d:74:1";for(int i=0;i<5;i++)ready();ok(count("76b:6:1")==1&&count("75d:74:1")==5,"map-open failure preserves successful card initialization");n=count("75d:74:1");RpcManager.failKey=null;tick();ok(count("75d:74:1")==n,"restored map-open service still respects cooldown");ready();ok((Boolean)f("opened").get(null)&&count("76b:6:1")==1&&count("75d:74:2")==0,"recovery retries only failed map-open without closing/reinitializing successful card");
  // Pending content failure cooldown must not prevent release when its stream stops.
  set("failures",5);set("retryAt",System.nanoTime()/1000000L+30000L);E01ClusterMode.setActive(p,false);tick();ok(!(Boolean)f("opened").get(null)&&count("75d:74:2")==1,"stream stop releases owned map ahead of opening/content recovery cooldown");
  E01ClusterMode.setActive(p,true);ready();RpcManager.failKey="75d:74:2";E01ClusterMode.setActive(p,false);for(int i=0;i<6;i++)retry();RpcManager.failKey=null;retry();ok(!(Boolean)f("opened").get(null),"stream-stop cleanup can recover after five failures without requiring live stream");
  reset();worker.shutdownNow();System.out.println("{\\"checks_passed\\":"+checks+",\\"scope\\":\\"actual worker with five init/open failures, delayed service recovery, cooldown, stream stop and cancellation; no physical vehicle proof\\"}");
 }
}'''
source=ROOT/'src/e01/com/shilapi/xcertplay'
with tempfile.TemporaryDirectory(prefix='06link-rpc-recovery-') as temp:
 d=Path(temp)
 for n,t in files.items():p2=d/n;p2.parent.mkdir(parents=True,exist_ok=True);p2.write_text(t)
 intro=source/'E01ClusterIntro.java'
 sources=[source/'E01ClusterMode.java',intro,ROOT/'src/e01/com/shilapi/xcertplay/E01RouteSummary.java',ROOT/'src/e01/com/shilapi/xcertplay/E01TbtPackets.java']
 sources += [source/'E01CardDiagnostic.java',source/'E01LaneDiagnostic.java',source/'E01ClusterPower.java',source/'E01LaneCapability.java']
 r=subprocess.run([str(JDK/'javac'),'--release','8','-d',str(d/'classes'),*map(str,d.rglob('*.java')),*map(str,sources)],capture_output=True,text=True);assert r.returncode==0,r.stderr
 r=subprocess.run([str(JDK/'java'),'-cp',str(d/'classes'),'com.shilapi.xcertplay.RecoveryProbe'],capture_output=True,text=True,timeout=20);print(r.stdout+r.stderr)
 (HERE/'rpc-recovery-result.json').write_text(r.stdout+r.stderr)
 if r.returncode:raise SystemExit(r.returncode)
