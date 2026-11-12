#!/usr/bin/env python3
"""Run the actual hotspot editor save/validation code against an in-memory Android fixture."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from test_support import find_java, resolve
import importlib.util
import subprocess
import tempfile
ROOT=Path(__file__).resolve().parent.parent
spec=importlib.util.spec_from_file_location('fixtures',ROOT/'scripts/compile_stubs.py')
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
jdk=find_java()['java_home'] / 'bin'
with tempfile.TemporaryDirectory(prefix='06link-hotspot-') as d:
 p=Path(d)
 for name,text in m.STUBS.items():
  f=p/name;f.parent.mkdir(parents=True,exist_ok=True);f.write_text(text)
 (p/'HotspotTest.java').write_text(r'''
import java.util.*;
import android.content.*;
import com.shilapi.xcertplay.E01HotspotSettings;
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
  System.out.println(checks+" hotspot validation/persistence checks passed (no credentials logged)");
 }
}
''')
 subprocess.run([str(jdk/'javac'),'-d',str(p/'classes'),*[str(f) for f in p.rglob('*.java')],str(ROOT/'src/e01/com/shilapi/xcertplay/E01HotspotSettings.java')],check=True)
 subprocess.run([str(jdk/'java'),'-cp',str(p/'classes'),'HotspotTest'],check=True)
