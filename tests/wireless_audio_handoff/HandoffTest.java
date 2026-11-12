package com.shilapi.xcertplay;
import java.util.*;
public class HandoffTest {
 static int checks;static void ok(boolean value,String why){checks++;if(!value)throw new AssertionError(why);}
 static final class Port implements E01WirelessAudioHandoff.Port {
  boolean pending,storeFails,clearFails,disableFails,enableFails,ignoreDisable;String state="1",phone="A";int disable,enable;Runnable duringDisable;
  final List<String> logs=new ArrayList<String>();
  public boolean pending(){return pending;}
  public void pending(boolean value)throws Exception{if(storeFails||(!value&&clearFails))throw new Exception("disk");pending=value;}
  public String renderState(){return state;}
  public boolean samePhone(String target){return target.equals(phone);}
  public void enable(boolean value)throws Exception{
   if(value){enable++;if(enableFails)throw new Exception("enable");state="1";}
   else{disable++;if(disableFails)throw new Exception("disable");if(!ignoreDisable)state="0";if(duringDisable!=null){Runnable r=duringDisable;duringDisable=null;r.run();}}
  }
  public void log(String s){logs.add(s);}
 }
 static void normal(){E01WirelessAudioHandoff.Coordinator c=new E01WirelessAudioHandoff.Coordinator();Port p=new Port();Object o=new Object();c.maintain(p);ok(p.disable==0&&p.enable==0,"idle is inert");c.start(o,1,"A");c.maintain(p);ok(p.disable==1&&p.pending&&p.state.equals("0"),"ready session pauses rendering with restoration journal");for(int i=0;i<100;i++){c.start(o,1,"A");c.maintain(p);}ok(p.disable==1,"duplicate ready/polls never fight source repeatedly");c.stop(o);c.maintain(p);ok(p.enable==1&&!p.pending&&p.state.equals("1"),"stop restores original renderer");c.maintain(p);ok(p.enable==1,"restoration is idempotent");}
 static void cancel(){E01WirelessAudioHandoff.Coordinator c=new E01WirelessAudioHandoff.Coordinator();Port p=new Port();Object o=new Object();c.start(o,1,"A");c.stop(o);c.maintain(p);ok(p.disable==0,"cancel before work does not mutate renderer");c.start(o,2,"A");p.duringDisable=()->c.stop(o);c.maintain(p);ok(p.disable==1&&p.enable==1&&!p.pending,"cancel during Binder call restores in same worker pass");}
 static void target(){E01WirelessAudioHandoff.Coordinator c=new E01WirelessAudioHandoff.Coordinator();Port p=new Port();Object o=new Object();p.phone="B";c.start(o,1,"A");c.maintain(p);ok(p.disable==0,"another phone is never globally muted");p.phone="A";c.maintain(p);ok(p.disable==1,"target becomes available after binding");p.phone="B";c.maintain(p);ok(p.enable==1&&!p.pending,"phone change returns original rendering");c.stop(o);c.maintain(p);ok(p.enable==1,"late stop is harmless");}
 static void predisabled(){E01WirelessAudioHandoff.Coordinator c=new E01WirelessAudioHandoff.Coordinator();Port p=new Port();Object o=new Object();p.state="0";c.start(o,1,"A");c.maintain(p);c.stop(o);c.maintain(p);ok(p.disable==0&&p.enable==0&&!p.pending,"preexisting mute belongs to its original owner");}
 static void manual(){E01WirelessAudioHandoff.Coordinator c=new E01WirelessAudioHandoff.Coordinator();Port p=new Port();Object o=new Object();c.start(o,1,"A");c.maintain(p);p.state="1";c.maintain(p);c.maintain(p);ok(p.disable==1&&!p.pending,"explicit native reopen is respected");c.stop(o);c.maintain(p);ok(p.enable==0,"no duplicate restore after native already reopened");}
 static void recovery(){E01WirelessAudioHandoff.Coordinator c=new E01WirelessAudioHandoff.Coordinator();Port p=new Port();p.pending=true;p.state="0";Object o=new Object();c.start(o,1,"A");c.maintain(p);ok(p.enable==1&&p.disable==0&&!p.pending,"recover previous process before acquiring new session");c.maintain(p);ok(p.disable==1&&p.pending,"new session can then acquire");c.stop(o);c.maintain(p);ok(!p.pending&&p.enable==2,"both restoration obligations completed");}
 static void failures(){E01WirelessAudioHandoff.Coordinator c=new E01WirelessAudioHandoff.Coordinator();Port p=new Port();Object o=new Object();p.storeFails=true;c.start(o,1,"A");c.maintain(p);ok(p.disable==0,"journal failure prevents global mutation");p.storeFails=false;p.disableFails=true;c.maintain(p);ok(!p.pending&&p.state.equals("1"),"failed pause rolls back ownership");p.disableFails=false;c.maintain(p);ok(p.state.equals("0")&&p.pending,"same session retries after service recovery");p.enableFails=true;c.stop(o);c.maintain(p);ok(p.pending,"failed restore keeps journal");p.enableFails=false;c.maintain(p);ok(!p.pending&&p.state.equals("1"),"later pass restores after failure");}
 static void noack(){E01WirelessAudioHandoff.Coordinator c=new E01WirelessAudioHandoff.Coordinator();Port p=new Port();Object o=new Object();p.ignoreDisable=true;c.start(o,1,"A");c.maintain(p);ok(!p.pending&&p.state.equals("1"),"void return without OEM property update is not considered acquired");p.ignoreDisable=false;c.maintain(p);ok(p.pending&&p.state.equals("0"),"retry can acquire when service really executes");}
 static void reconnect(){E01WirelessAudioHandoff.Coordinator c=new E01WirelessAudioHandoff.Coordinator();Port p=new Port();Object old=new Object(),next=new Object();c.start(old,1,"A");c.maintain(p);c.start(next,2,"A");c.stop(old);c.maintain(p);ok(p.enable==1,"new generation restores old ownership first");c.maintain(p);ok(p.disable==2&&p.pending,"new generation acquires after old restore");c.stop(old);c.maintain(p);ok(p.enable==1,"old controller cannot stop new session");c.stop(next);c.maintain(p);ok(p.enable==2&&!p.pending,"new session restores normally");}
 static void clearFailure(){E01WirelessAudioHandoff.Coordinator c=new E01WirelessAudioHandoff.Coordinator();Port p=new Port();Object o=new Object();c.start(o,1,"A");c.maintain(p);c.stop(o);p.clearFails=true;c.maintain(p);ok(p.pending&&p.state.equals("1"),"failed journal clear is retained after successful physical restore");p.clearFails=false;c.maintain(p);ok(!p.pending&&p.enable==1,"journal retry never re-enables an already enabled renderer");}
 public static final class Device {public String getAddress(){return "AA:BB:CC:DD:EE:FF";}}
 public static final class Api {
  int disable,enable;public java.util.List<Device> getConnectedDevices(){return java.util.Arrays.asList(new Device());}
  public void audioDisable(){disable++;android.os.SystemProperties.state="0";}public void audioEnable(){enable++;android.os.SystemProperties.state="1";}
 }
 public static final class Connection {private final Object api;Connection(Object value){api=value;}}
 public static final class Lookup {private final Connection a2dpConnection;Lookup(Object api){a2dpConnection=new Connection(api);}}
 static void backend(){android.content.Context ctx=new android.content.Context();Api api=new Api();Lookup lookup=new Lookup(api);Object o=new Object();E01WirelessAudioHandoff.start(o,1,"AA:BB:CC:DD:EE:FF");E01WirelessAudioHandoff.maintain(ctx,lookup);ok(api.disable==1&&android.os.SystemProperties.state.equals("0"),"production backend traverses real lookup field names and A2DP Binder API");E01WirelessAudioHandoff.stop(o);E01WirelessAudioHandoff.maintain(ctx,lookup);ok(api.enable==1&&android.os.SystemProperties.state.equals("1"),"production backend restores through matching API");}
 static void unsupported(){android.os.Build.MODEL="tablet";Api api=new Api();Object o=new Object();E01WirelessAudioHandoff.start(o,1,"AA:BB:CC:DD:EE:FF");E01WirelessAudioHandoff.maintain(new android.content.Context(),new Lookup(api));ok(api.disable==0&&api.enable==0,"other devices untouched");}
 public static void main(String[] args)throws Exception{HandoffTest.class.getDeclaredMethod(args[0]).invoke(null);System.out.println("PASS "+args[0]+" "+checks);}
}
