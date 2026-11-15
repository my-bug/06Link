"""Actual colour state machine and cluster worker, with Android/RPC boundaries simulated."""
from pathlib import Path
import subprocess, tempfile

ROOT=Path(__file__).resolve().parents[2]
p=ROOT/'tests/cluster_settings/test_cluster.py'
env={'__file__':str(p),'__name__':'fixture'}
exec(compile(p.read_text().split("source=ROOT/'src/e01/com/shilapi/xcertplay'",1)[0],str(p),'exec'),env)
files=env['files'];JDK=env['JDK'];source=ROOT/'src/e01/com/shilapi/xcertplay'
files.pop('com/shilapi/xcertplay/Probe.java')
files['com/shilapi/xcertplay/TextColorProbe.java']=r'''package com.shilapi.xcertplay;
import android.content.*;import android.content.res.*;import android.app.*;import java.util.*;
import java.lang.reflect.*;import java.util.concurrent.*;import com.neusoft.alfus.RpcManager;
public class TextColorProbe {
 static int checks;static Context c=new Context();
 static void ok(boolean b,String why){checks++;if(!b)throw new AssertionError(why);}
 static Context.Prefs prefs(){return (Context.Prefs)c.getSharedPreferences("06link_instrument",0);}
 static class Out implements E01InstrumentTextColor.Output {
  List<String> sent=new ArrayList<String>();List<String> notes=new ArrayList<String>();boolean fail;
  public boolean send(int mode,boolean restoring){ok(mode==0||mode==1,"invalid OEM value");sent.add(mode+":"+restoring);return !fail;}
  public void note(String s){notes.add(s);}
 }
 static E01InstrumentTextColor fresh(Out o){Context.stores.clear();Resources.system.uiMode=16;return new E01InstrumentTextColor(o);}
 static void choose(String s){ok(E01InstrumentTextColor.save(c,s),"setting persisted");}
 static boolean pending(){return prefs().getString(E01InstrumentTextColor.RESTORE,"").length()>0;}
 static void broadcast(E01InstrumentTextColor t,int key,int value)throws Exception{
  Field f=E01InstrumentTextColor.class.getDeclaredField("receiver");f.setAccessible(true);
  ((BroadcastReceiver)f.get(t)).onReceive(c,new Intent(E01InstrumentTextColor.ACTION).putExtra("KEY_TYPE",key).putExtra("EXTRA_STATE",value));
 }
 static void step(E01InstrumentTextColor t,boolean live,boolean off,long now){t.update(c,live,live,off,now);}
 static Field field(String n)throws Exception{Field f=E01ClusterMode.class.getDeclaredField(n);f.setAccessible(true);return f;}
 static void set(String n,Object v)throws Exception{field(n).set(null,v);}
 static Object get(String n)throws Exception{return field(n).get(null);}
 static void tick()throws Exception{set("readyAt",0L);set("retryAt",0L);Method m=E01ClusterMode.class.getDeclaredMethod("tick");m.setAccessible(true);m.invoke(null);}
 static int count(String s){int n=0;for(String v:RpcManager.messages)if(v.equals(s))n++;return n;}
 public static void main(String[] args)throws Exception{
  Out o=new Out();E01InstrumentTextColor t=fresh(o);
  ok(E01InstrumentTextColor.label(c).equals("跟随原车"),"default remains factory");
  for(int i=0;i<50;i++)step(t,true,false,i*500);ok(o.sent.isEmpty()&&!pending(),"default has no RPC or journal");
  prefs().putString(E01InstrumentTextColor.KEY,"invalid").commit();step(t,true,false,30000);ok(o.sent.isEmpty(),"unknown preference is factory mode");
  choose("强制浅色");step(t,false,false,30001);ok(o.sent.isEmpty()&&!pending(),"setting alone cannot affect vehicle");
  step(t,true,false,30002);ok(o.sent.equals(Arrays.asList("1:false"))&&prefs().getString(E01InstrumentTextColor.RESTORE,"").equals("0"),"light uses night1 and journals original day0");
  for(int i=0;i<1000;i++)step(t,true,false,31000+i*500);ok(o.sent.size()==1,"idle worker never resends accepted value");
  choose("强制深色");step(t,true,false,600000);ok(o.sent.get(1).equals("0:false"),"dark uses day0 without changing baseline");
  choose("跟随原车");step(t,true,false,600001);ok(o.sent.get(2).equals("0:true")&&!pending(),"auto restores original while session continues");
  step(t,false,false,610000);ok(o.sent.size()==3,"released output not restored again");

  o=new Out();t=fresh(o);choose("强制浅色");step(t,true,false,0);
  broadcast(t,10019,37);for(int i=0;i<3000;i++){broadcast(t,10019,37);step(t,true,false,i);}
  ok(o.sent.size()==1,"factory notification bursts bounded before deadline");step(t,true,false,3000);ok(o.sent.size()==2,"known factory overwrite reapplied once");
  broadcast(t,10019,38);step(t,true,false,6000);ok(o.sent.size()==2&&prefs().getString(E01InstrumentTextColor.RESTORE,"").equals("1"),"new real night baseline saved without duplicate force");
  broadcast(t,99,37);broadcast(t,10019,3);step(t,false,false,6001);ok(o.sent.get(2).equals("1:true")&&!pending(),"unrelated states ignored; restore most recent OEM night");

  o=new Out();t=fresh(o);choose("强制浅色");Resources.system.uiMode=0;step(t,true,false,0);
  ok(o.sent.isEmpty()&&!pending(),"unknown baseline never guessed from app theme or clock");
  broadcast(t,10019,37);step(t,true,false,1000);ok(o.sent.size()==1,"actual OEM baseline permits later apply");

  o=new Out();t=fresh(o);choose("强制浅色");prefs().fail=true;step(t,true,false,0);
  ok(o.sent.isEmpty()&&!pending(),"failed journal blocks optional force only");prefs().fail=false;step(t,true,false,1000);ok(o.sent.size()==1,"journal retry succeeds");
  o.fail=true;step(t,false,false,1001);ok(pending(),"failed release retains original mode");
  int n=o.sent.size();step(t,false,false,1100);ok(o.sent.size()==n,"failed release not busy-looped");
  o.fail=false;step(t,false,false,2001);ok(!pending()&&o.sent.get(o.sent.size()-1).equals("0:true"),"release recovery succeeds independently");

  o=new Out();t=fresh(o);choose("强制浅色");o.fail=true;step(t,true,false,0);
  ok(pending(),"ambiguous failed send retains release obligation");o.fail=false;step(t,false,false,1);ok(!pending(),"Stop bypasses force retry delay for release");
  step(t,true,false,2);ok(pending(),"new session owns fresh override");
  Out restarted=new Out();E01InstrumentTextColor next=new E01InstrumentTextColor(restarted);step(next,false,false,3);
  ok(restarted.sent.equals(Arrays.asList("0:true"))&&!pending(),"process restart recovers journal without active map");

  o=new Out();t=fresh(o);choose("强制浅色");step(t,true,false,0);t.invalidated();step(t,true,true,4000);
  ok(o.sent.size()==1,"power-off cannot force or restore");t.update(c,false,true,false,4000);ok(o.sent.size()==1&&pending(),"temporary map recovery never flashes baseline");step(t,true,false,4001);ok(o.sent.size()==2,"real power recovery reapplies once");
  step(t,false,true,4002);ok(pending()&&o.sent.size()==2,"Stop while power-off defers restoration");step(t,false,false,4003);
  ok(!pending()&&o.sent.get(2).equals("0:true"),"next power-on completes deferred release");

  // Exercise actual cluster lifecycle, not just the helper. Its failed RPC must not
  // reinitialize the navigation card, hold an intro, close a map, or throttle video.
  Context.stores.clear();Resources.system.uiMode=16;RpcManager.messages.clear();
  ScheduledThreadPoolExecutor worker=new ScheduledThreadPoolExecutor(1){public void execute(Runnable r){}};
  set("worker",worker);set("route",new com.shilapi.xcertplay.hud.BydHudRouteState());
  choose("强制浅色");c.getSharedPreferences("xcertplay_airplay",0).edit().putBoolean("cluster_map_enabled",true).commit();
  E01ClusterMode.initialize(c);tick();ok(count("76b:16:1")==0,"launch cannot force without session");
  Presentation presentation=new Presentation();E01ClusterMode.sessionStarted(c);E01ClusterMode.setActive(presentation,true);
  RpcManager.failKey="76b:16:1";tick();tick();
  ok((Boolean)get("opened")&&(Integer)get("failures")==0,"colour failure never fails accepted map open");
  ok(count("76b:6:1")==1&&count("75d:74:1")==1,"initialization and map open remain once only");
  ok(RpcManager.messages.indexOf("76b:16:1")>RpcManager.messages.indexOf("75d:74:1"),"force is after actual map-open request");
  RpcManager.failKey=null;android.os.SystemClock.now=10000;tick();ok(count("76b:16:1")==2&&(Boolean)get("opened"),"colour recovers without reopening map");
  choose("强制深色");tick();ok(count("76b:16:0")==1&&count("75d:74:1")==1,"live setting changes no map or card lifecycle");
  int colourCount=count("76b:16:0");E01ClusterMode.setActive(presentation,false);tick();
  ok(count("76b:16:0")==colourCount&&pending(),"temporary Surface loss retains forced text without baseline flash");
  E01ClusterMode.setActive(presentation,true);tick();
  RpcManager.failKey="76b:16:0";E01ClusterMode.endNow();tick();
  ok(!(Boolean)get("opened")&&!(Boolean)get("navTouched")&&count("76b:6:0")==1,"failed colour restore cannot keep original card or map open");
  ok(pending(),"worker preserves failed release journal");RpcManager.failKey=null;android.os.SystemClock.now=20000;tick();ok(!pending(),"idle worker completes release");
  c.getSharedPreferences("xcertplay_airplay",0).edit().putBoolean("cluster_map_enabled",false).commit();
  n=RpcManager.messages.size();E01ClusterMode.sessionStarted(c);E01ClusterMode.setActive(presentation,true);tick();
  ok(RpcManager.messages.size()==n,"disabled instrument ignores force preference and stale stream");
  E01ClusterMode.endNow();tick();worker.shutdownNow();
  System.out.println("PASS "+checks+" colour preference, OEM notifications, ownership, restoration, power and actual cluster lifecycle checks");
 }
}'''
with tempfile.TemporaryDirectory(prefix='06link-text-colour-') as t:
    d=Path(t)
    for name,value in files.items():
        dest=d/name;dest.parent.mkdir(parents=True,exist_ok=True);dest.write_text(value)
    actual=[source/n for n in ('E01ClusterMode.java','E01ClusterIntro.java','E01RouteSummary.java',
        'E01TbtPackets.java','E01CardDiagnostic.java','E01LaneDiagnostic.java','E01ClusterPower.java','E01LaneCapability.java')]
    r=subprocess.run([str(JDK/'javac'),'--release','8','-d',str(d/'classes'),*map(str,d.rglob('*.java')),*map(str,actual)],capture_output=True,text=True)
    assert r.returncode==0,r.stderr
    r=subprocess.run([str(JDK/'java'),'-cp',str(d/'classes'),'com.shilapi.xcertplay.TextColorProbe'],capture_output=True,text=True,timeout=20)
    print(r.stdout+r.stderr);raise SystemExit(r.returncode)
