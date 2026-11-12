"""Exercise real hotspot intent state; OEM AP operations use counted fakes."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from test_support import find_java, resolve, build_dir
import os,subprocess,json
R=Path(__file__).resolve().parents[1];T=R/'build/test-wired';T.mkdir(parents=True,exist_ok=True)
def put(n,s):
 p=T/n;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(s)
put('com/shilapi/xcertplay/E01WiredPort.java','package com.shilapi.xcertplay; public class E01WiredPort {public static void stop(){}}')
put('android/net/wifi/WifiConfiguration.java','package android.net.wifi; public class WifiConfiguration {}')
put('android/net/wifi/WifiManager.java','package android.net.wifi; public class WifiManager { public int calls; public boolean setWifiEnabled(boolean b){calls++;return true;} public boolean setWifiApEnabled(WifiConfiguration c,boolean b){calls++;return true;} }')
put('com/shilapi/xcertplay/E01StartupHotspot.java','package com.shilapi.xcertplay; public class E01StartupHotspot { public static int cancels; public static void cancel(){cancels++;} }')
put('com/shilapi/xcertplay/WiredStateCheck.java','''package com.shilapi.xcertplay;
import android.net.wifi.*;
public class WiredStateCheck {
 static void check(boolean b,String reason){if(!b)throw new AssertionError(reason);}
 public static void main(String[] args)throws Exception{
  WifiManager wifi=new WifiManager();WifiConfiguration c=new WifiConfiguration();
  E01HotspotControl.resume();long wireless=E01HotspotControl.token();
  check(E01HotspotControl.enter(wireless),"wireless request accepted");
  E01HotspotControl.connectWired();
  check(!E01HotspotControl.userStopped(false),"wired connect must pass HostLaunch gate");
  check(!E01HotspotControl.valid(wireless),"pending wireless request cancelled");
  check(!E01HotspotControl.enableHotspot(wifi,c)&&wifi.calls==0,"in-flight AP mutation suppressed");
  E01HotspotControl.leave();
  check(!E01HotspotControl.allowed(),"new AP work suppressed during wired session");
  check(E01HotspotControl.userStopped(true),"manual stop recorded");
  check(E01HotspotControl.userStopped(false),"activity recreation retains manual stop");
  E01HotspotControl.connectWired();
  check(!E01HotspotControl.userStopped(false),"explicit wired connect clears earlier stop");
  check(!E01HotspotControl.allowed(),"wired retry still suppresses AP");
  E01HotspotControl.resume();
  check(!E01HotspotControl.userStopped(false)&&E01HotspotControl.allowed(),"explicit wireless reconnect restores AP");
  long next=E01HotspotControl.token();check(next!=wireless&&!E01HotspotControl.valid(wireless),"stale epochs never revived");
  check(E01HotspotControl.enableHotspot(wifi,c)&&wifi.calls==1,"wireless AP call preserved");
  E01HotspotControl.pause();check(!E01HotspotControl.enableHotspot(wifi,c)&&wifi.calls==1,"stop cancels later AP call");
  System.out.println("PASS wired launch gate, stale wireless cancellation, manual stop, wired retry and wireless return");
 }
}''')
j=find_java()['java_home']/'bin'
subprocess.run([str(j/'javac'),'--release','8','-d',str(T/'classes'),*map(str,T.rglob('*.java')),str(R/'src/e01/com/shilapi/xcertplay/E01HotspotControl.java')],check=True)
r=subprocess.run([str(j/'java'),'-cp',str(T/'classes'),'com.shilapi.xcertplay.WiredStateCheck'],capture_output=True,text=True);print(r.stdout+r.stderr);r.check_returncode()
# Check the packaged primary DEX actually invokes the new state transition.
f=build_dir(R)/'merged-classes/com/shilapi/xcertplay/E01WiredUi.smali'
s=f.read_text();begin=s.index('.method public static beforeConnect(');end=s.index('.end method',begin)
assert 'E01HotspotControl;->connectWired()V'in s[begin:end] and 'E01HotspotControl;->pause()V'not in s[begin:end]
(R/'tests/wired-results.txt').write_text(r.stdout+'PASS packaged wired entry uses connectWired\n')
