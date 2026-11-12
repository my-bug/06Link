"""Build a clean, credential-free checkout; no previous APK or signing key is copied."""
from pathlib import Path
import hashlib,json,os,shutil,subprocess,tempfile,sys,zipfile
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'scripts'))
from build import asset_inputs,build_paths,load_config
c=load_config(ROOT)
original_work,original=build_paths(ROOT,c,'debug')
assert original.is_file(),'First run python3 scripts/build.py (default debug build)'

def payload(apk):
 with zipfile.ZipFile(apk) as archive:
  return {name:hashlib.sha256(archive.read(name)).hexdigest()
          for name in archive.namelist() if not name.startswith('META-INF/')}

with tempfile.TemporaryDirectory(prefix='06link-clean-source-') as folder:
 p=Path(folder)/'project';p.mkdir()
 # Public source/resources only. Dependencies may use the verified shared cache;
 # neither private files nor a previous signed APK is part of the input.
 for rel in ('src','tooling/compile-stubs','tooling/java'):
  shutil.copytree(ROOT/rel,p/rel,ignore=shutil.ignore_patterns('__pycache__','*.pyc'))
 for rel in ('scripts/build.py','scripts/toolchain.py','project.json','tooling/manifest.json'):
  out=p/rel;out.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(ROOT/rel,out)
 assert not (p/'.private').exists()
 assert not list(p.rglob('*.apk')) and not list(p.rglob('*.p12'))
 env=dict(os.environ)
 env['SIXLINK_TOOLCHAIN_CACHE']=str(Path(env.get('SIXLINK_TOOLCHAIN_CACHE',ROOT/'tooling/cache')).resolve())
 command=[sys.executable,str(p/'scripts/build.py')]
 # With no --variant argument the ordinary public-checkout command must work.
 result=subprocess.run(command,capture_output=True,text=True,env=env)
 assert result.returncode==0,(result.stdout,result.stderr)
 rebuilt_work,rebuilt=build_paths(p,c,'debug')
 assert payload(original)==payload(rebuilt),'Relocated source build payload differs'
 sig=(rebuilt_work/'verify-signature.log').read_text()
 old_sig=(original_work/'verify-signature.log').read_text()
 assert sig!=old_sig,'A clean checkout unexpectedly reused another developer signing key'
 assert c['signing_certificate_sha256'] not in sig
 assert not (p/'.private').exists()
 with zipfile.ZipFile(rebuilt) as archive:
  assert not any(n.startswith('assets/offline-mfi/') for n in archive.namelist())
 rejected=subprocess.run(command+['--variant','release','--check-inputs'],capture_output=True,text=True,env=env)
 assert rejected.returncode and 'Missing required release asset' in rejected.stderr
 assert not (p/'dist'/('06Link-'+c['version_name']+'.apk')).exists()
 report={'source_only_checkout':True,'private_files_copied':False,'application_apk_inputs':[],
         'relocated_payload_identical':True,'independent_debug_signature':True,
         'missing_release_credentials_rejected':True}
 (ROOT/'tests/rebuild-results.json').write_text(json.dumps(report,indent=2)+'\n')
 print('PASS credential-free checkout builds debug; payload reproducible; release requires private credentials')
