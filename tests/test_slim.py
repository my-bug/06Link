from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from test_support import find_java, resolve, build_apk, asset_inputs, build_variant
import json,zipfile,hashlib,subprocess,tempfile,os
R=Path(__file__).resolve().parents[1];c=json.loads((R/'project.json').read_text());checks=[]
def ok(value,name):
 assert value,name
 checks.append(name)
with zipfile.ZipFile(build_apk(R)) as z:
 names=z.namelist();ok(not any(n.startswith(('lib/x86/','lib/x86_64/','assets/e01-goc/','assets/oem-bt-test1/')) for n in names),'obsolete binaries and x86 absent')
 for f in sorted((R/c['sources']['native_libs']).rglob('*.so')):
  n='lib/'+f.relative_to(R/c['sources']['native_libs']).as_posix()
  ok(z.read(n)==f.read_bytes(),'source dependency preserved '+n)
 with zipfile.ZipFile(resolve(R, download=False)['crypto']) as aar:
  for abi in c['crypto_dependency']['abis']:
   n='lib/'+abi+'/libconscrypt_jni.so'
   ok(z.read(n)==aar.read('jni/'+abi+'/libconscrypt_jni.so'),'crypto dependency preserved '+n)
 for asset in asset_inputs(c,build_variant(R)):
  ok(z.read(asset['entry'])==(R/asset['source']).read_bytes(),'source asset preserved '+asset['entry'])
 ok(not any(b'GocSdkPayload;' in z.read(n) for n in names if n.endswith('.dex')),'legacy installer class and references absent')
 ok(not any(b'E01BtResume;' in z.read(n) for n in names if n.endswith('.dex')),'temporary reconnect helper absent')
 ok(all(z.getinfo(n).compress_type==zipfile.ZIP_DEFLATED for n in names if n.endswith('.dex') and z.getinfo(n).file_size>=16384),'large DEX compressed')
 ok(os.path.getsize(R/'dist'/('06Link-'+c['version_name']+'.apk'))<14000000,'APK under 14 MB')
oem=(R/'src/e01/com/shilapi/xcertplay/E01OemBluetooth.java').read_text()
for forbidden in ['maybeDaily','temporary.sh','guardian.sh','copyAsset','startupRetries','启用原车蓝牙','private static String start(']:ok(forbidden not in oem,'removed '+forbidden)
ok('GocSppTransport.connect(phone)' in oem and 'lookup.connectedDevices(1200L)' in oem,'factory lookup and SPP preserved')
# Execute the actual generated migration shell in a disposable filesystem with fake
# proc records. No vehicle connection, system changes or root services are involved.
J=find_java()['java_home'] / 'bin'
with tempfile.TemporaryDirectory() as td:
 t=Path(td)
 def put(n,s):
  p=t/n;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(s);return p
 put('android/content/SharedPreferences.java','package android.content; public interface SharedPreferences{boolean getBoolean(String k,boolean d);Editor edit();interface Editor{Editor putBoolean(String k,boolean v);boolean commit();}}')
 put('android/content/Context.java','package android.content; public abstract class Context{public abstract java.io.File getFilesDir();public abstract SharedPreferences getSharedPreferences(String n,int m);}')
 put('android/os/SystemClock.java','package android.os; public class SystemClock{public static long elapsedRealtime(){return System.nanoTime()/1000000;}}')
 put('com/shilapi/xcertplay/E01PrivilegedShell.java','package com.shilapi.xcertplay;class E01PrivilegedShell{static String execute(android.content.Context x,String c){return execute(c);}static String execute(String c){throw new AssertionError("no live execution");}}')
 put('com/shilapi/xcertplay/Probe.java','package com.shilapi.xcertplay;public class Probe{public static void main(String[] a){System.out.print(E01BtLegacyRelease.probe(new java.io.File("/data/data/com.sixlink.car/files/oem-bt-test1"),Boolean.parseBoolean(a[0])));}}')
 subprocess.run([str(J/'javac'),'--release','8','-d',str(t/'classes'),*map(str,t.rglob('*.java')),str(R/'src/e01/com/shilapi/xcertplay/E01BtLegacyRelease.java')],check=True,capture_output=True)
 scripts={k:subprocess.check_output([str(J/'java'),'-cp',str(t/'classes'),'com.shilapi.xcertplay.Probe',k],text=True) for k in ['false','true']}
 for k,v in scripts.items():subprocess.run(['/bin/sh','-n'],input=v,text=True,check=True);ok(True,'migration shell syntax '+k)
 for v in scripts.values():ok('/system/bin/start' not in v and '/system/bin/stop' not in v and 'kill ' not in v,'migration never starts/stops/kills Bluetooth')
 wrapper=put('bin/busybox','#!/bin/sh\nexec "$@"\n');wrapper.chmod(0o755)
 env=dict(os.environ,PATH=str(t/'bin')+':'+os.environ['PATH'])
 boot=put('proc/sys/kernel/random/boot_id','NEW');oldboot=put('data/data/com.sixlink.car/files/oem-bt-test1/boot','OLD')
 lease=put('data/local/tmp/06link-oem-bt1.guard/lease','777:123')
 def run(mode):return subprocess.check_output(['/bin/sh','-c',scripts[mode].replace('/data/',str(t)+'/data/').replace('/proc/',str(t)+'/proc/')],text=True,env=env).strip()
 ok(run('false')=='BUSY' and lease.exists(),'same-boot lease is never removed')
 stat=put('proc/777/stat','777 (old runner) S '+' '.join(['0']*18)+' 123')
 ok(run('true')=='BUSY' and lease.exists(),'live matching runner blocks stale-lease cleanup')
 stat.unlink()
 ok(run('true')=='RELEASED' and not lease.exists(),'previous-boot dead lease released')
 lease.write_text('777:123');oldboot.write_text('NEW')
 ok(run('true')=='BUSY' and lease.exists(),'boot mismatch guard rechecked before removal')
 oldboot.write_text('OLD');lease.unlink()
 exe=t/'proc/888/exe';exe.parent.mkdir(parents=True);exe.symlink_to('/data/data/com.sixlink.car/files/oem-bt-test1/gocsdk')
 ok(run('false')=='BUSY','remaining legacy native process blocks migration')
 exe.unlink();ok(run('false')=='RELEASED','no owner and no lease permits migration')
(R/'tests/slim-results.json').write_text(json.dumps({'checks':checks,'actual_vehicle':False},ensure_ascii=False,indent=2)+'\n')
print('PASS',len(checks),'slimming, preserved binaries and sandboxed migration checks')
