from pathlib import Path
import tempfile,subprocess,sys
ROOT=Path(__file__).resolve().parents[2];HERE=Path(__file__).resolve().parent
f=ROOT/'tests/cluster_settings/test_cluster.py';env={'__file__':str(f),'__name__':'fixture'}
exec(compile(f.read_text().split("source=ROOT/'src/e01/com/shilapi/xcertplay'",1)[0],str(f),'exec'),env)
files=env['files'];JDK=env['JDK'];source=ROOT/'src/e01/com/shilapi/xcertplay'
files['com/shilapi/xcertplay/E01ClusterMode.java']=(source/'E01ClusterMode.java').read_text()
files['com/shilapi/xcertplay/Probe.java']=r'''package com.shilapi.xcertplay;
import android.app.*;import android.content.*;import android.os.*;import java.lang.reflect.*;import java.util.*;import java.util.concurrent.*;import com.neusoft.alfus.RpcManager;
public class Probe {
 static int checks;static Context c=new Context();
 static void ok(boolean b,String msg){checks++;if(!b)throw new AssertionError(msg);}
 static Field f(String n)throws Exception{Field f=E01ClusterMode.class.getDeclaredField(n);f.setAccessible(true);return f;}
 static void set(String n,Object v)throws Exception{f(n).set(null,v);}static Object get(String n)throws Exception{return f(n).get(null);}
 static void tick()throws Exception{set("retryAt",0L);set("readyAt",0L);Method m=E01ClusterMode.class.getDeclaredMethod("tick");m.setAccessible(true);m.invoke(null);}
 static int count(String s){int n=0;for(String x:RpcManager.messages)if(x.equals(s))n++;return n;}
 static void projection(boolean v){c.getSharedPreferences("xcertplay_airplay",0).edit().putBoolean("cluster_map_enabled",v).commit();}
 static void start(Presentation p)throws Exception{E01ClusterMode.sessionStarted(c);E01ClusterMode.setVisible(p,true);E01ClusterMode.setActive(p,true);tick();tick();}
 public static void main(String[] args)throws Exception{
  ScheduledThreadPoolExecutor worker=new ScheduledThreadPoolExecutor(1){public void execute(Runnable r){}};set("worker",worker);set("route",new com.shilapi.xcertplay.hud.BydHudRouteState());
  projection(true);Presentation p=new Presentation();start(p);int gen=(Integer)get("generation");int previous=E01ClusterMode.maintainAmapOutput(Integer.MIN_VALUE);
  ok(count("76b:6:1")==1&&count("76c:1:1")==1&&count("75d:74:1")==1,"normal first initialize/open");
  int restored=E01AmapOutput.finishes;
  E01ClusterMode.setVisible(p,false);tick();previous=E01ClusterMode.maintainAmapOutput(previous);
  ok((Integer)get("generation")==gen,"window disappearance cannot create navigation session generation");
  ok(count("76b:6:0")==0&&count("76b:15:1")==0&&count("76c:1:0")==0,"temporary window disappearance does not close card");
  ok(count("75d:74:2")==1&&!(Boolean)get("opened"),"missing stream releases only map");
  ok((Boolean)get("initialized"),"card initialization retained");
  ok(E01AmapOutput.finishes==restored,"missing window cannot restore factory publisher while card ownership remains");
  for(int i=0;i<3;i++)tick();ok(count("76b:6:1")==1&&count("76b:6:0")==0,"no periodic reinit while window absent");
  Presentation next=new Presentation();E01ClusterMode.setVisible(next,true);E01ClusterMode.setActive(next,true);tick();
  ok(count("75d:74:1")==2&&count("76b:6:1")==1&&count("76c:1:1")==1,"new presentation reopens only map not card");
  E01ClusterMode.setVisible(next,false);Presentation immediate=new Presentation();E01ClusterMode.setVisible(immediate,true);E01ClusterMode.setActive(immediate,true);tick();
  ok(count("76b:6:1")==1&&count("76b:6:0")==0,"same tick replacement retains card");
  projection(false);tick();previous=E01ClusterMode.maintainAmapOutput(previous);
  ok(count("76b:6:0")==1&&count("76b:15:1")==1&&count("76c:1:0")==1,"projection disabled still closes complete card");
  ok(E01AmapOutput.finishes>restored,"disabled restores OEM publisher");
  projection(true);E01ClusterMode.setActive(immediate,true);tick();tick();ok(count("76b:6:1")==2,"fresh enabled stream initializes card");
  E01ClusterMode.endNow();tick();ok(count("76b:6:0")==2&&count("76b:15:1")==2,"real session end still closes card");
  E01ClusterMode.sessionStarted(c);E01ClusterMode.setActive(immediate,true);tick();tick();ok(count("76b:6:1")==3,"new real session gets fresh init");
  worker.shutdownNow();System.out.println("PASS "+checks+" actual worker temporary-window lifecycle assertions");
 }
}'''
with tempfile.TemporaryDirectory(prefix='06link-window-card-') as t:
 d=Path(t)
 for n,v in files.items():p=d/n;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(v)
 actual=[source/'E01ClusterIntro.java',source/'E01RouteSummary.java',source/'E01TbtPackets.java']
 for name in ('E01CardDiagnostic.java','E01LaneDiagnostic.java','E01ClusterPower.java','E01LaneCapability.java'):
  if (source/name).is_file():actual.append(source/name)
 r=subprocess.run([str(JDK/'javac'),'--release','8','-d',str(d/'classes'),*map(str,d.rglob('*.java')),*map(str,actual)],capture_output=True,text=True);assert r.returncode==0,r.stderr
 r=subprocess.run([str(JDK/'java'),'-cp',str(d/'classes'),'com.shilapi.xcertplay.Probe'],capture_output=True,text=True,timeout=20);print(r.stdout+r.stderr);(HERE/'window-lifecycle-result.txt').write_text(r.stdout+r.stderr);raise SystemExit(r.returncode)
