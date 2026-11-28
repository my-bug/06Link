#!/usr/bin/env python3
"""Check native hotspot start routes and exercise the hotspot editor against an Android fixture."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from test_support import find_java, resolve
import importlib.util
import re
import subprocess
import tempfile
ROOT=Path(__file__).resolve().parent.parent

def legacy_method(class_suffix, signature):
    folder = ROOT / 'src/core/smali/classes/com/shilapi/xcertplay/network'
    source = (folder / f'LegacySoftApManager{class_suffix}.smali').read_text()
    match = re.search(r'^\.method [^\n]* ' + re.escape(signature) + r'[^\n]*\n(.*?)^\.end method',
                      source, flags=re.MULTILINE | re.DOTALL)
    assert match, f'Missing LegacySoftApManager{class_suffix}.{signature}'
    return match.group(1)


def check_start_routes():
    enable = ('Lcom/shilapi/xcertplay/E01HotspotBand;->enableHotspot('
              'Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z')
    for class_suffix, signature in [('', 'setAp('), ('$SystemSoftApControl', 'setEnabled(')]:
        method = legacy_method(class_suffix, signature)
        branch = re.search(r'^    if-eqz p2, (:\w+)$', method, re.MULTILINE)
        assert branch, 'Missing branch for disabling the hotspot'
        start, stop = method[branch.end():].split(f'\n    {branch.group(1)}\n')
        assert start.index('{v0, v1, p1}, ' + enable) < start.index('return v0')
        assert '"setWifiApEnabled"' in stop and enable not in stop

    switch = legacy_method('$Companion', 'switchOnSystemHotspot(')
    first, retry = (switch.index(f'{{p1, v0, {config}}}, ' + enable) for config in ('p2', 'v2'))
    already_on = switch.index('->ALREADY_ON:')
    assert switch.index('const/16 p3, 0xd') < already_on < switch.index('return-object p1', already_on) < first
    assert enable not in switch[:already_on] and switch.count(enable) == 2
    assert 'const/4 v2, 0x0' in switch[:first] and 'if-eqz p2,' in switch[first:retry]

    start = legacy_method('', 'start(J)')
    set_ap = 'Lcom/shilapi/xcertplay/network/LegacySoftApManager;->setAp('
    assert start.index('const/4 v7, 0x0') < start.index('{v1, v6, v8}, ' + set_ap) < start.index('{v1, v7, v8}, ' + set_ap)
    print('Legacy hotspot start, saved-configuration retry, already-on and disable routes passed')


check_start_routes()
spec=importlib.util.spec_from_file_location('fixtures',ROOT/'scripts/compile_stubs.py')
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
jdk=find_java()['java_home'] / 'bin'
with tempfile.TemporaryDirectory(prefix='06link-hotspot-') as d:
 p=Path(d)
 # The OEM channel lives on WifiConfiguration in the E01 system image.
 stubs = dict(m.STUBS)
 stubs['android/net/wifi/WifiConfiguration.java'] = """package android.net.wifi;
 public class WifiConfiguration {
  public String SSID,preSharedKey; public int channel,security;
  public WifiConfiguration() {}
  public WifiConfiguration(WifiConfiguration c){SSID=c.SSID;preSharedKey=c.preSharedKey;channel=c.channel;security=c.security;}
 }"""
 stubs['android/net/wifi/WifiManager.java'] = """package android.net.wifi;
 public class WifiManager {
  public WifiConfiguration saved,last; public int calls,reads; public boolean refuse;
  public WifiConfiguration getWifiApConfiguration(){reads++;return saved;}
  public boolean setWifiApEnabled(WifiConfiguration c,boolean on){calls++;last=c;return on&&!refuse;}
 }"""
 stubs['com/shilapi/xcertplay/E01HotspotControl.java'] = """package com.shilapi.xcertplay;
 import android.net.wifi.*;
 public class E01HotspotControl {
  public static boolean allowed=true;
  public static boolean allowed(){return allowed;}
  public static boolean enableHotspot(WifiManager w,WifiConfiguration c){return allowed&&w.setWifiApEnabled(c,true);}
 }"""
 stubs['com/shilapi/xcertplay/E01LogPolicy.java'] = """package com.shilapi.xcertplay;
 public class E01LogPolicy {
  public static String message;
  public static void queueSession(java.io.File f,String s){message=s;}
 }"""
 stubs['android/content/Context.java'] = stubs['android/content/Context.java'].replace('class Context {','class Context {public static final int MODE_PRIVATE=0;')
 for name,text in stubs.items():
  f=p/name;f.parent.mkdir(parents=True,exist_ok=True);f.write_text(text)
 (p/'HotspotTest.java').write_text(r'''
import java.util.*;
import android.content.*;
import android.net.wifi.*;
import android.os.Build;
import com.shilapi.xcertplay.*;
public class HotspotTest {
 static int checks;
 static void check(boolean b){if(!b)throw new AssertionError("check "+checks);checks++;}
 static class Prefs implements SharedPreferences,SharedPreferences.Editor {
  Map<String,Object> data=new HashMap<>();boolean fail;
  public Map<String,?> getAll(){return new HashMap<String,Object>(data);}
  public String getString(String k,String d){return data.containsKey(k)?(String)data.get(k):d;}
  public Editor edit(){return this;}
  public Editor putString(String k,String v){data.put(k,v);return this;}
  public Editor putBoolean(String k,boolean v){data.put(k,v);return this;}
  public Editor remove(String k){data.remove(k);return this;}
  public void apply(){}
  public boolean commit(){return !fail;}
 }
 static class Ctx extends Context {
  Prefs p=new Prefs();public SharedPreferences getSharedPreferences(String n,int mode){check(n.equals("free_auto_hotspot_name"));return p;}
 }
 static void checkBand(Ctx c){
  Build.MODEL="E01";Build.DEVICE="BX11QJ";Build.VERSION.SDK_INT=22;
  WifiManager wifi=new WifiManager();
  WifiConfiguration saved=new WifiConfiguration();
  saved.SSID="fixture";saved.preSharedKey="fixture-pass";saved.security=4;saved.channel=6;
  wifi.saved=saved;
  check(E01HotspotBand.isSupported()&&!E01HotspotBand.prefers5Ghz(c));
  check(E01HotspotBand.enableHotspot(c,wifi,null)&&wifi.last==null&&wifi.reads==0);
  check(E01HotspotBand.enableHotspot(c,wifi,saved)&&wifi.last==saved&&saved.channel==6);
  int calls=wifi.calls;
  E01HotspotBand.setPrefers5Ghz(c,true);
  check(wifi.calls==calls&&E01HotspotBand.prefers5Ghz(c));
  WifiConfiguration renamed=new WifiConfiguration(saved);renamed.SSID="new-name";
  check(E01HotspotBand.enableHotspot(c,wifi,renamed)&&wifi.last.channel==149);
  check(wifi.last!=renamed&&renamed.channel==6&&wifi.last.SSID.equals(renamed.SSID));
  check(E01HotspotBand.enableHotspot(c,wifi,null)&&wifi.last.channel==149&&wifi.reads==1);
  check(wifi.last.SSID.equals(saved.SSID)&&wifi.last.preSharedKey.equals(saved.preSharedKey)&&wifi.last.security==4);
  check(E01LogPolicy.message.contains("已请求")&&!E01LogPolicy.message.contains(saved.preSharedKey));
  wifi.saved=wifi.last;
  E01HotspotBand.setPrefers5Ghz(c,false);
  check(!E01HotspotBand.prefers5Ghz(c)&&E01HotspotBand.enableHotspot(c,wifi,null)&&wifi.last.channel==0);
  check(wifi.saved.channel==149);
  E01HotspotBand.setPrefers5Ghz(c,true);
  wifi.refuse=true;
  check(!E01HotspotBand.enableHotspot(c,wifi,saved)&&wifi.last.channel==149);
  wifi.refuse=false;wifi.saved=null;calls=wifi.calls;
  check(!E01HotspotBand.enableHotspot(c,wifi,null)&&wifi.calls==calls);
  wifi.saved=saved;saved.preSharedKey="*";
  check(!E01HotspotBand.enableHotspot(c,wifi,null)&&wifi.calls==calls);
  E01HotspotControl.allowed=false;
  int reads=wifi.reads;
  check(!E01HotspotBand.enableHotspot(c,wifi,null)&&wifi.reads==reads&&wifi.calls==calls);
  E01HotspotControl.allowed=true;Build.MODEL="Tablet";
  check(!E01HotspotBand.isSupported()&&E01HotspotBand.enableHotspot(c,wifi,null)&&wifi.last==null);
  check(wifi.reads==reads);
 }
 public static void main(String[] args){
  Ctx c=new Ctx();check(E01HotspotSettings.customName(c)==null);
  check(E01HotspotSettings.validationError("", "test12345")!=null);
  check(E01HotspotSettings.validationError("车".repeat(11), "test12345")!=null);
  check(E01HotspotSettings.validationError("车".repeat(10), "test12345")==null);
  check(E01HotspotSettings.validationError("a\0b", "test12345")!=null);
  for(String pw:new String[]{"", "1234567", "a".repeat(64), "中文密码123456", "1234567\0"})check(!E01HotspotSettings.validPassword(pw));
  for(String pw:new String[]{"12345678", "test12345", "Abc -_$(){}", "a".repeat(63)})check(E01HotspotSettings.validPassword(pw));
  check(!E01HotspotSettings.save(c,"unit-test", "short"));check(c.p.data.isEmpty());
  check(E01HotspotSettings.save(c,"06Link-Test", "TestPass987"));
  check("06Link-Test".equals(E01HotspotSettings.customName(c)));
  check("TestPass987".equals(c.p.data.get("password")));
  check(Boolean.TRUE.equals(c.p.data.get("password_renew_pending")));
  // AP password renewal consumes the existing flag; the chosen name survives it.
  c.p.data.put("password_renew_pending",false);
  check("06Link-Test".equals(E01HotspotSettings.customName(c)));
  checkBand(c);
  System.out.println(checks+" hotspot validation/persistence checks passed (no credentials logged)");
 }
}
''')
 subprocess.run([str(jdk/'javac'),'-d',str(p/'classes'),*[str(f) for f in p.rglob('*.java')],str(ROOT/'src/e01/com/shilapi/xcertplay/E01HotspotSettings.java'),str(ROOT/'src/e01/com/shilapi/xcertplay/E01HotspotBand.java')],check=True)
 subprocess.run([str(jdk/'java'),'-cp',str(p/'classes'),'HotspotTest'],check=True)
