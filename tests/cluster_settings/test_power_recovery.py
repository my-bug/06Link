from pathlib import Path
import subprocess,tempfile
ROOT=Path(__file__).resolve().parents[2];HERE=Path(__file__).resolve().parent
f=HERE/'test_cluster.py';env={'__file__':str(f),'__name__':'fixture'}
exec(compile(f.read_text().split("source=ROOT/'src/e01/com/shilapi/xcertplay'",1)[0],str(f),'exec'),env)
files=env['files'];JDK=env['JDK'];source=ROOT/'src/e01/com/shilapi/xcertplay'
files.pop('com/shilapi/xcertplay/Probe.java',None)
files['com/neusoft/alfus/RpcManager.java']='''package com.neusoft.alfus;import java.util.*;public class RpcManager{
 public interface OnRpcListener{void onCallback(int opcode,byte[] data);}
 public static final RpcManager INSTANCE=new RpcManager();public static final List<String> messages=new ArrayList<>();public static final List<OnRpcListener> listeners=new ArrayList<>();
 public static String hookKey;public static Runnable hook;public static int registrations;public static RpcManager getInstance(){return INSTANCE;}
 public void registerListener(int op,byte sub,OnRpcListener l){if(op!=0x71c||sub!=8)throw new AssertionError("wrong OEM subscription");listeners.add(l);registrations++;}
 public boolean sendMessage(int op,byte[] p){String k=Integer.toHexString(op)+":"+(p[0]&255)+":"+(p[1]&255);messages.add(k);if(k.equals(hookKey)&&hook!=null){Runnable h=hook;hook=null;h.run();}return true;}
}'''
files['com/shilapi/xcertplay/PowerProbe.java']=r'''package com.shilapi.xcertplay;
import android.app.*;import android.content.*;import android.os.*;import java.lang.reflect.*;import java.util.*;import java.util.concurrent.*;import com.neusoft.alfus.RpcManager;
public class PowerProbe {
 static int checks;static Context c=new Context();static Presentation p=new Presentation();static E01ClusterPower power;
 static void ok(boolean value,String why){checks++;if(!value)throw new AssertionError(why);}
 static Field f(String name)throws Exception{Field f=E01ClusterMode.class.getDeclaredField(name);f.setAccessible(true);return f;}
 static Object get(String n)throws Exception{return f(n).get(null);}static void set(String n,Object v)throws Exception{f(n).set(null,v);}
 static int count(String s){int n=0;for(String m:RpcManager.messages)if(m.equals(s))n++;return n;}
 static void tick()throws Exception{set("retryAt",0L);Method m=E01ClusterMode.class.getDeclaredMethod("tick");m.setAccessible(true);m.invoke(null);}
 static void ready()throws Exception{set("readyAt",0L);tick();}
 static void projection(boolean v){c.getSharedPreferences("xcertplay_airplay",0).edit().putBoolean("cluster_map_enabled",v).commit();}
 static byte[] packet(int mode,int valid){byte[] p=new byte[8];p[0]=8;p[6]=(byte)mode;p[7]=(byte)valid;return p;}
 static void can(int mode){power.acceptPacket(0x71c,packet(mode,1));}
 static void off(){power.acceptAction(E01ClusterPower.POWER_OFF);}static void on(){power.acceptAction(E01ClusterPower.POWER_ON);}
 static void connect()throws Exception{projection(true);E01ClusterMode.sessionStarted(c);E01ClusterMode.setActive(p,true);tick();ready();}
 static class Sink implements E01ClusterPower.Sink{int changes,restores,offs,notes;public void changed(boolean off,boolean recover,String source,long seq){changes++;if(recover)restores++;if(off)offs++;}public void note(String msg){notes++;}}
 public static void main(String[]args)throws Exception{
  Sink s=new Sink();E01ClusterPower q=new E01ClusterPower(s);q.acceptPacket(0x71c,packet(2,1));
  ok(s.changes==1&&s.restores==0,"first valid ACC-on is baseline only");
  for(int i=0;i<1000;i++){q.acceptPacket(0x71c,packet(i%2==0?2:4,1));q.acceptPacket(0x71c,packet(0,0));}
  ok(s.changes==1&&s.notes==1,"periodic 2/4 and invalid frames cannot reopen or flood logs");
  q.acceptAction(E01ClusterPower.POWER_ON);ok(s.restores==1,"first explicit power-on restores even if RPC-on baseline was seen");
  for(int i=0;i<1000;i++)q.acceptAction(E01ClusterPower.POWER_ON);ok(s.restores==1,"duplicate power-on is coalesced");
  q.acceptPacket(0x71c,packet(0,1));ok(s.offs==0&&s.restores==1,"valid non-on code is not asserted to be power-off");
  q.acceptPacket(0x71c,packet(4,1));q.acceptAction(E01ClusterPower.POWER_ON);ok(s.restores==2,"return to ACC-on restores exactly once across RPC/broadcast");
  q.acceptPacket(0x71c,packet(0,1));q.acceptAction(E01ClusterPower.POWER_ON);q.acceptPacket(0x71c,packet(2,1));ok(s.restores==3,"broadcast-first and RPC-later also coalesce");
  q.acceptPacket(0x71c,null);q.acceptPacket(0x71c,new byte[7]);byte[] wrong=packet(0,1);wrong[0]=7;q.acceptPacket(0x71c,wrong);q.acceptPacket(0x71d,packet(0,1));q.acceptPacket(0x71c,packet(2,1));ok(s.restores==3,"invalid payload/op/sub cannot arm a recovery");
  q.acceptAction(E01ClusterPower.POWER_OFF);q.acceptAction(E01ClusterPower.POWER_OFF);q.acceptPacket(0x71c,packet(2,1));q.acceptAction(E01ClusterPower.POWER_ON);ok(s.offs==1&&s.restores==4,"explicit off then any known-on recovers once");
  q.ensureRegistered(c,0);q.ensureRegistered(c,999999);ok(RpcManager.registrations==1&&RpcManager.listeners.size()==1,"registration happens once with exact 071c/08 and own callback");
  RpcManager.listeners.get(0).onCallback(0x71c,packet(0,1));RpcManager.listeners.get(0).onCallback(0x71c,packet(4,1));ok(s.restores==5,"production reflection proxy receives OEM callback");
  Sink t=new Sink();E01ClusterPower firstNonOn=new E01ClusterPower(t);firstNonOn.acceptPacket(0x71c,packet(1,1));ok(t.changes==0,"first non-on baseline does not block");firstNonOn.acceptPacket(0x71c,packet(2,1));ok(t.restores==1,"first valid non-on baseline followed by on is a restore edge");

  ScheduledThreadPoolExecutor worker=new ScheduledThreadPoolExecutor(1){public void execute(Runnable r){}};set("worker",worker);set("route",new com.shilapi.xcertplay.hud.BydHudRouteState());power=(E01ClusterPower)get("instrumentPower");
  can(2);connect();int originalGen=(Integer)get("generation");
  ok(count("76b:6:1")==1&&count("75d:74:1")==1,"normal cold-start initializes/opens once");
  for(int i=0;i<30;i++){can(i%2==0?2:4);ready();}ok(count("75d:74:1")==1&&(Integer)get("generation")==originalGen,"same on group keeps initialized map and generation");
  int before=RpcManager.messages.size();can(0);tick();ok(RpcManager.messages.size()==before&&!(Boolean)get("powerSuspended")&&(Boolean)get("opened"),"non-on group leaves live output untouched");
  can(4);tick();ok(count("76b:6:1")==2&&count("75d:74:1")==1,"restore must initialize TBT before map, respecting settle");ready();
  ok(count("75d:74:1")==2&&count("75d:74:2")==0&&count("76b:6:0")==0,"CAN restoration opens once without close/cleanup or CarPlay restart");
  int lastOpen=RpcManager.messages.lastIndexOf("75d:74:1"),lastInit=RpcManager.messages.lastIndexOf("76b:6:1");ok(lastInit<lastOpen&&RpcManager.messages.subList(lastInit,lastOpen).contains("76c:1:1"),"restored map follows original navigation prerequisite order");
  on();for(int i=0;i<20;i++){on();can(2);ready();}ok(count("75d:74:1")==2,"duplicate signals never periodically re-open");
  off();before=RpcManager.messages.size();tick();ok(RpcManager.messages.size()==before&&!(Boolean)get("initialized")&&!(Boolean)get("opened"),"off invalidates caches without emitting close/content");
  ok((Boolean)get("navTouched")&&(Boolean)get("mapTouched"),"power edge preserves pending cleanup obligations");
  on();tick();ready();ok(count("75d:74:1")==3&&(Boolean)get("connected"),"unchanged live CarPlay stream recovers instrument without session reconnect");
  off();E01ClusterMode.setVisible(p,false);on();before=RpcManager.messages.size();tick();ready();ok(RpcManager.messages.size()==before,"recovery waits for actual video and emits no close for a window gap");
  E01ClusterMode.setVisible(p,true);tick();ok(RpcManager.messages.size()==before,"placeholder window alone cannot initialize a recovered instrument");E01ClusterMode.setActive(p,true);tick();ready();ok(count("75d:74:1")==4,"fresh active video completes deferred restoration");
  // Stop/disable during restoration must not lose the old card/map cleanup obligation.
  off();tick();projection(false);before=RpcManager.messages.size();tick();ok(RpcManager.messages.size()==before,"disabled while physically off does not send close yet");
  on();tick();ok(count("76b:6:0")==1&&count("76b:15:1")==1&&count("75d:74:2")==1,"power-on after disable completes owned card/map cleanup");before=count("75d:74:1");ready();ok(count("75d:74:1")==before,"disabled cannot restore map");
  connect();can(0);can(2);E01ClusterMode.endNow();tick();ok(count("76b:6:0")==2&&count("75d:74:2")==2,"Stop racing CAN-on still closes owned outputs");before=count("75d:74:1");ready();ok(count("75d:74:1")==before,"stopped session cannot restore");
  // Cancel a currently in-flight init; no remaining group/map command may escape after off.
  connect();off();tick();on();RpcManager.hookKey="76b:15:0";RpcManager.hook=()->off();before=RpcManager.messages.size();tick();ok(RpcManager.messages.size()==before+1,"off during first init command stops remaining init group");tick();ok(!(Boolean)get("opened"),"off racing initialization leaves no accepted-open cache");
  on();tick();RpcManager.hookKey="75d:74:1";RpcManager.hook=()->off();ready();tick();ok(!(Boolean)get("opened")&&(Boolean)get("powerSuspended"),"off racing map acceptance invalidates stale opened cache next tick");
  on();tick();ready();ok((Boolean)get("opened"),"next real on event can recover after in-flight cancellation");
  int restored=E01AmapOutput.finishes;off();E01ClusterMode.maintainAmapOutput(Integer.MIN_VALUE);ok(E01AmapOutput.finishes==restored,"instrument power loss does not restore competing publisher or end CarPlay");
  E01ClusterMode.endNow();tick();on();tick();
  connect();projection(false);RpcManager.hookKey="75d:74:2";RpcManager.hook=()->off();before=RpcManager.messages.size();int albums=Context.albums.size();tick();
  ok(RpcManager.messages.size()==before+1&&Context.albums.size()==albums,"off arriving during cleanup blocks following card-close and album commands");
  ok((Boolean)get("navTouched")&&(Boolean)get("coverHidden"),"aborted off-time cleanup retains remaining ownership");
  on();tick();ok(!(Boolean)get("navTouched")&&!(Boolean)get("mapTouched")&&!(Boolean)get("coverHidden"),"deferred cleanup completes on next power-on even when disabled");
  worker.shutdownNow();
  System.out.println("PASS "+checks+" OEM power parsing, edge coalescing and actual worker recovery/race assertions");
 }
}'''
with tempfile.TemporaryDirectory(prefix='06link-power-') as t:
 d=Path(t)
 for n,v in files.items():p=d/n;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(v)
 actual=[source/name for name in ('E01ClusterMode.java','E01ClusterPower.java','E01LaneCapability.java','E01ClusterIntro.java','E01RouteSummary.java','E01TbtPackets.java','E01CardDiagnostic.java','E01LaneDiagnostic.java')]
 r=subprocess.run([str(JDK/'javac'),'--release','8','-d',str(d/'classes'),*map(str,d.rglob('*.java')),*map(str,actual)],capture_output=True,text=True);assert r.returncode==0,r.stderr
 r=subprocess.run([str(JDK/'java'),'-cp',str(d/'classes'),'com.shilapi.xcertplay.PowerProbe'],capture_output=True,text=True,timeout=20);print(r.stdout+r.stderr);(HERE/'power-recovery-result.txt').write_text(r.stdout+r.stderr);raise SystemExit(r.returncode)
