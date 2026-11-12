"""Validate independent source inputs, packaged output, and build equivalence checks."""
from pathlib import Path
import argparse,json,os,zipfile,hashlib,sys
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'scripts'))
from build import load_config,source_inputs,canonical_smali,digest,build_paths,asset_inputs,methods
parser=argparse.ArgumentParser(description=__doc__)
parser.add_argument('--variant',choices=('debug','release'))
args=parser.parse_args()
last=ROOT/'build/last-build.json'
variant=args.variant or os.environ.get('SIXLINK_BUILD_VARIANT') or (json.loads(last.read_text())['variant'] if last.exists() else 'debug')
c=load_config(ROOT);java,smali=source_inputs(ROOT,c,variant);checks=[]
work,apk=build_paths(ROOT,c,variant)
assert c['schema']==3 and 'baseline' not in c and 'method_patches' not in c
checks.append('no baseline APK or method-patch input')
assert len(java)==len(list((ROOT/c['sources']['java_root']).rglob('*.java')))
assert not (ROOT/'tooling/core-source-lock.json').exists()
checks.append('every active Java source is compiled; no silently frozen Java')
assert not (ROOT/'src/patches').exists()
checks.append('old patch chain archived outside source tree')
audit=json.loads((work/'audit.json').read_text())
assert audit['application_apk_inputs']==audit['method_patch_inputs']==[]
assert audit['source_round_trip'] and audit['resource_ids_preserved']==1699
assert set(audit['compiled_sources'])=={p.relative_to(ROOT).as_posix() for p in java}
assert audit['assembled_source_classes']==sum(map(len,smali.values()))
checks.append('all compiled and assembly source files included and verified')
assert digest(apk)==audit['apk_sha256']
with zipfile.ZipFile(apk) as z:
 names={n for n in z.namelist() if not n.startswith('META-INF/')}
 assert names==set(audit['package_payload_sha256'])
 for n,sha in audit['package_payload_sha256'].items():assert hashlib.sha256(z.read(n)).hexdigest()==sha,n
 assert z.read('classes2.dex')==(work/'updated.dex').read_bytes()
checks.append('signed artifact contains every source-built payload with exact hashes')
signature=(work/'verify-signature.log').read_text()
assert 'verified=true v1=true v2=true v3=true' in signature
if variant=='release':
 assert c['signing_certificate_sha256'] in signature
 checks.append('existing release signer and Android 5.1 v1 signature retained')
else:
 assert c['signing_certificate_sha256'] not in signature
 with zipfile.ZipFile(apk) as z:
  assert not any(n.startswith('assets/offline-mfi/') for n in z.namelist())
  assert json.loads(z.read('assets/build-variant.json'))=={'variant':'debug','mfi_available':False}
 assert '-debug' in audit['version_name']
 assert '调试版' in (work/'manifest-after.log').read_text()
 assert 'debuggable' in (work/'manifest-after.log').read_text()
 checks.append('debug is visibly labelled, separately signed and contains no authentication credentials')
assert audit['variant']==variant and audit['mfi_assets_included']==(variant=='release')
with zipfile.ZipFile(apk) as z:
 for asset in asset_inputs(c,variant):
  assert z.read(asset['entry'])==(ROOT/asset['source']).read_bytes()
 if variant=='release':assert 'assets/build-variant.json' not in z.namelist()
private=[x for x in c['file_assets'] if x['entry'].startswith('assets/offline-mfi/')]
assert len(private)==2 and all(x['source'].startswith('.private/') for x in private)
assert not list((ROOT/'src').rglob('*.pk8')) and not list((ROOT/'src').rglob('*.p7b'))
checks.append('authentication assets kept outside public source tree')
for key in ('version_name','version_code'):
 assert str(c[key]) in (work/'manifest-after.log').read_text()
checks.append('manifest receives project version')
sys.path.insert(0,str(ROOT/'tests/source_build'))
from contracts import CONTRACTS
for name,entry in CONTRACTS.items():
 text=(work/'verified'/entry['dex'][:-4]/entry['class']).read_text()
 actual=hashlib.sha256(canonical_smali(methods(text)[entry['method']]).encode()).hexdigest()
 assert actual==entry['sha256'],'Integration method changed: '+name
checks.append(str(len(CONTRACTS))+' assembled integration method contracts')
for dex in c['sources']['smali_roots']:
 f=work/'verified'/dex[:-4]
 assert not list(f.rglob('E01AmapWatchdog.smali')) and not list(f.rglob('E01NavigationLease.smali'))
 assert not list(f.rglob('E01AdbAccessUi.smali'))
checks.append('retired ADB UI, navigation watchdog and lease not reintroduced')
for name in ('E01AmapOutput','E01ServiceAccessUi','E01AmapAccess'):
 files=list((work/'verified').rglob(name+'*.smali'))
 assert files
 for p in files:assert 'Lcom/shilapi/xcertplay/adb/' not in p.read_text()
checks.append('navigation compatibility has no application ADB dependency')
# Ensure normalization does not hide executable changes or exception-boundary changes.
base='.class public LTest;\n.super Ljava/lang/Object;\n.method public m()V\n.locals 1\n:try_start_0\nconst/4 v0, 0x0\n:try_end_0\n.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0\nreturn-void\n:catch_0\nreturn-void\n.end method'
assert canonical_smali(base)!=canonical_smali(base.replace('const/4 v0, 0x0','const/4 v0, 0x1'))
assert canonical_smali(base)!=canonical_smali(base.replace(':try_end_0\n.catch', 'return-void\n:try_end_0\n.catch'))
assert canonical_smali(base)!=canonical_smali(base.replace('Ljava/lang/Exception;', 'Ljava/lang/RuntimeException;'))
assert canonical_smali(base)==canonical_smali(base.replace('.locals 1','.locals 1\n.line 42'))
checks.append('code audit rejects instruction, exception type and coverage changes')
# Java's floating-point comment formatter differs across supported JDKs.
float17='    const/high16 v3, 0x4d000000    # 1.34217728E8f'
float25='    const/high16 v3, 0x4d000000    # 1.3421773E8f'
assert canonical_smali(float17)==canonical_smali(float25)
assert canonical_smali(float17)!=canonical_smali(float25.replace('0x4d000000','0x4d000001'))
assert canonical_smali(float17)!=canonical_smali(float25.replace('v3,','v4,'))
array17='        -0x7fffffffffffff80L    # -6.32E-322'
array25='        -0x7fffffffffffff80L    # -6.3E-322'
assert canonical_smali(array17)==canonical_smali(array25)
assert canonical_smali(array17)!=canonical_smali(array25.replace('ffff80L','ffff81L'))
string='    const-string v0, "0x4d000000    # 1.34217728E8f"'
assert canonical_smali(string)==string
assert canonical_smali(string)!=canonical_smali(string.replace('1.34217728E8f','1.3421773E8f'))
checks.append('JDK numeric comments ignored; hexadecimal bits, registers and string # contents preserved')
(ROOT/'tests/build-results.json').write_text(json.dumps({'variant':variant,'passed':checks,'actual_vehicle':False},ensure_ascii=False,indent=2)+'\n')
print('PASS',len(checks),'source-build/signature/payload/feature checks')
