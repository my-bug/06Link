#!/usr/bin/env python3
"""Exercise production lane state/output and the actual cluster worker without a device."""
from pathlib import Path
import subprocess, tempfile
ROOT=Path(__file__).resolve().parents[2]
SOURCE=ROOT/'src/e01/com/shilapi/xcertplay'
fixture=ROOT/'tests/cluster_settings/test_cluster.py'
env={'__file__':str(fixture),'__name__':'fixture'}
exec(compile(fixture.read_text().split("source=ROOT/'src/e01/com/shilapi/xcertplay'",1)[0],str(fixture),'exec'),env)
files=env['files'];JDK=env['JDK']
files.pop('com/shilapi/xcertplay/Probe.java',None)
files['com/shilapi/xcertplay/iap2/wire/Iap2Frame.java']='package com.shilapi.xcertplay.iap2.wire;public class Iap2Frame{private final int id;private final byte[] data;public Iap2Frame(int i,byte[] d){id=i;data=d;}public int getMessageId(){return id;}public byte[] getPayload(){return data;}}'
# Direction-table verification is separate. This fixture makes only a straight lane representable.
files['com/shilapi/xcertplay/E01LaneIcons.java']='''package com.shilapi.xcertplay;final class E01LaneIcons{static int icon(int status,int highlight,int[] angles){return angles.length==1&&angles[0]==0?10+status:-1;}}'''
files['com/shilapi/xcertplay/LaneStateOutputTest.java']=Path(__file__).with_name('LaneStateOutputTest.java').read_text()
files['com/shilapi/xcertplay/LaneWorkerProbe.java']=r'''package com.shilapi.xcertplay;
import android.app.*;import android.content.*;import android.os.*;import java.lang.reflect.*;import java.util.*;import java.util.concurrent.*;import com.neusoft.alfus.RpcManager;import com.shilapi.xcertplay.iap2.wire.Iap2Frame;
public class LaneWorkerProbe {
 static int checks;static Context c=new Context();static Presentation p=new Presentation();
 static void ok(boolean b,String why){checks++;if(!b)throw new AssertionError(why);}
 static Field f(String n)throws Exception{Field f=E01ClusterMode.class.getDeclaredField(n);f.setAccessible(true);return f;}
 static Object get(String n)throws Exception{return f(n).get(null);}static void set(String n,Object v)throws Exception{f(n).set(null,v);}
 static void tick()throws Exception{set("retryAt",0L);set("readyAt",0L);Method m=E01ClusterMode.class.getDeclaredMethod("tick");m.setAccessible(true);try{m.invoke(null);}catch(InvocationTargetException e){throw new AssertionError(e.getCause());}}
 static void projection(boolean b){c.getSharedPreferences("xcertplay_airplay",0).edit().putBoolean("cluster_map_enabled",b).commit();}
 static void frame(int id,byte[] body){E01ClusterMode.onFrame(new Iap2Frame(id,body));}
 static void select(int id,int showing){frame(0x5201,LaneStateOutputTest.select(id,showing));}
 static void lane(int id,int status){frame(0x5204,LaneStateOutputTest.event(id,LaneStateOutputTest.lane(0,status,0,0)));}
 static int count(String needle){int n=0;for(String s:RpcManager.messages)if(s.equals(needle))n++;return n;}
 static void onlyLanes(int from,String why){for(String s:RpcManager.messages.subList(from,RpcManager.messages.size())){String[] parts=s.split(":");int sub=Integer.parseInt(parts[1]);ok(parts[0].equals("76b")&&sub>=0x3a&&sub<=0x42,why+": "+s);}}
 static void start()throws Exception{E01ClusterMode.sessionStarted(c);E01ClusterMode.setVisible(p,true);E01ClusterMode.setActive(p,true);tick();tick();}
 public static void main(String[] args)throws Exception{
  ScheduledThreadPoolExecutor worker=new ScheduledThreadPoolExecutor(1){public void execute(Runnable r){}};set("worker",worker);set("route",new com.shilapi.xcertplay.hud.BydHudRouteState());
  projection(true);E01ClusterMode.initialize(c);lane(7,1);select(7,1);tick();
  ok(RpcManager.messages.isEmpty(),"prefetched lane data cannot open card before real session");
  start();ok(count("76b:58:1")==1&&count("76b:59:11")==1,"prefetch reaches OEM after existing card initialization");
  int gen=(Integer)get("generation"),rev=(Integer)get("routeRevision"),from=RpcManager.messages.size();
  lane(8,2);tick();ok(RpcManager.messages.size()==from,"future event never repaints selected lanes");
  select(8,1);tick();ok(count("76b:59:12")==1,"5201 index selects the future event");onlyLanes(from,"event change is independent");
  ok((Integer)get("generation")==gen&&(Integer)get("routeRevision")==rev,"lane selector changes neither session nor regular TBT revision");
  from=RpcManager.messages.size();select(8,0);tick();onlyLanes(from,"showing off");ok(count("76b:58:0")==1,"showing off clears OEM count");
  from=RpcManager.messages.size();tick();ok(RpcManager.messages.size()==from,"no periodic duplicate lane writes");
  select(8,1);tick();from=RpcManager.messages.size();frame(0x5204,new byte[]{0,3,0,2});tick();onlyLanes(from,"malformed event");ok(count("76b:58:0")==2,"malformed frame clears instead of retaining recommendation");
  select(8,1);tick();from=RpcManager.messages.size();frame(0x5204,LaneStateOutputTest.event(8,LaneStateOutputTest.lane(0,1,90,90)));tick();onlyLanes(from,"unknown icon");ok(count("76b:58:0")==3,"unsupported combination hidden");
  lane(8,1);tick();int lanes=count("76b:58:1");E01ClusterMode.setVisible(p,false);tick();
  ok(count("76b:58:1")==lanes&&count("76b:58:0")==3,"temporary map window gap retains independent card lanes");
  p=new Presentation();E01ClusterMode.setVisible(p,true);E01ClusterMode.setActive(p,true);tick();
  from=RpcManager.messages.size();frame(0x5201,LaneStateOutputTest.one(1,0));tick();
  ok(count("76b:58:0")==4&&((E01LaneState)get("laneState")).cachedEvents()==0,"navigation end clears lane cache and OEM");
  int opens=count("75d:74:1"),closes=count("76b:6:0");select(8,1);tick();ok(count("75d:74:1")==opens&&count("76b:6:0")==closes,"empty selection does not toggle map or card");
  frame(0x5201,LaneStateOutputTest.one(1,1));lane(9,1);select(9,1);tick();
  from=count("76b:58:0");E01ClusterMode.endNow();tick();ok(count("76b:58:0")==from+1&&((E01LaneState)get("laneState")).cachedEvents()==0,"disconnect clears owned lanes and cache");
  lanes=count("76b:58:1");start();ok(count("76b:58:1")==lanes,"reconnect cannot resurrect previous session lanes");
  lane(10,1);select(10,1);tick();from=count("76b:58:0");projection(false);tick();ok(count("76b:58:0")==from+1,"disable clears owned OEM lanes");
  projection(true);E01ClusterMode.setActive(p,true);tick();tick();lane(11,1);select(11,1);tick();
  int shownBeforePower=count("76b:58:1");E01ClusterPower power=(E01ClusterPower)get("instrumentPower");power.acceptAction(E01ClusterPower.POWER_OFF);from=RpcManager.messages.size();tick();
  ok(RpcManager.messages.size()==from&&((E01LaneState)get("laneState")).cachedEvents()==0,"power-off drops cached lanes without off-time RPC");
  lane(12,1);select(12,1);ok(((E01LaneState)get("laneState")).cachedEvents()==0,"off-time frames cannot repopulate cache");
  power.acceptAction(E01ClusterPower.POWER_ON);tick();tick();ok(count("76b:58:1")==shownBeforePower,"power recovery cannot restore old recommendation");
  lane(13,1);select(13,1);RpcManager.hookKey="76b:58:1";RpcManager.hook=new Runnable(){public void run(){E01ClusterMode.endNow();}};from=RpcManager.messages.size();tick();
  ok(RpcManager.messages.size()==from+1,"disconnect during first lane RPC cancels remaining stale slots");tick();
  ok(!((E01LaneOutput)get("laneOutput")).touched(),"partial lane write retains and completes disconnect cleanup");
  worker.shutdownNow();System.out.println("PASS "+checks+" actual worker lane routing, visibility, independence and lifecycle assertions");
 }
}'''
with tempfile.TemporaryDirectory(prefix='06link-lane-integration-') as temp:
    d=Path(temp)
    for name,body in files.items():
        p=d/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(body)
    actual=[SOURCE/name for name in ('E01ClusterMode.java','E01ClusterPower.java','E01LaneCapability.java','E01ClusterIntro.java','E01RouteSummary.java','E01TbtPackets.java','E01CardDiagnostic.java','E01LaneDiagnostic.java')]
    result=subprocess.run([str(JDK/'javac'),'--release','8','-d',str(d/'classes'),*map(str,d.rglob('*.java')),*map(str,actual)],capture_output=True,text=True)
    assert result.returncode==0,result.stdout+result.stderr
    for main in ('LaneStateOutputTest','LaneWorkerProbe'):
        subprocess.run([str(JDK/'java'),'-Xmx64m','-cp',str(d/'classes'),'com.shilapi.xcertplay.'+main],check=True,timeout=20)

# The common transport observes only successfully returned sends, and keeps its existing trace.
session=(ROOT/'src/core/smali/classes/com/shilapi/xcertplay/iap2/session/Iap2Session.smali').read_text()
send=session.split('.method public final send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V',1)[1].split('.end method',1)[0]
assert send.index('Iap2CsmChannel;->send(')<send.index('E01LaneCapability;->subscriptionSent(I[B)V')<send.index('->emitFrameTrace(')
# Smali assembly renames labels. Follow the real jump destination instead.
instructions=[line.strip() for line in send.splitlines() if line.strip() and not line.strip().startswith(('.', '#'))]
message_id=next(i for i,line in enumerate(instructions) if '->getMessageId()I' in line)
assert instructions[message_id+1]=='move-result v0'
assert instructions[message_id+2]=='const/16 v1, 0x5200'
guard=instructions[message_id+3]
assert guard.startswith('if-ne v0, v1, :')
target=instructions.index(guard.split(', ')[2])
observed=next(i for i,line in enumerate(instructions) if 'E01LaneCapability;->subscriptionSent(I[B)V' in line)
trace=next(i for i,line in enumerate(instructions) if '->emitFrameTrace(' in line)
assert message_id+3 < observed < target < trace, 'Other message IDs must skip subscription observation but still be traced'
print('PASS shared wired/wireless successful-send subscription observation')
