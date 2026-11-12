from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java, resolve
import subprocess, tempfile, shutil, argparse, hashlib, json
HERE=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--root',type=Path,default=HERE.parents[1]);parser.add_argument('--staged',type=Path);parser.add_argument('--checks',help='comma separated Java check class names');args=parser.parse_args()
ROOT=args.root.resolve();STAGED=args.staged.resolve() if args.staged else None
JAVA=find_java()['java_home'] / 'bin'
hashes={}
PRODUCTION=['E01SmoothVideo','E01VideoOutput','E01VideoEvidence','E01MtkRuntime','E01BacklogRecovery','E01PacingClock','E01MtkTuning','E01GlOutput','E01DirectOutputClock','E01DirectInFlight']
with tempfile.TemporaryDirectory() as temporary:
 work=Path(temporary);sources=work/'src';shutil.copytree(HERE/'test-src',sources)
 for name in PRODUCTION:
  source=STAGED/(name+'.java') if STAGED else ROOT/'src/e01/com/shilapi/xcertplay'/(name+'.java')
  if not source.exists():source=ROOT/'src/e01/com/shilapi/xcertplay'/(name+'.java')
  shutil.copy2(source,sources/'com/shilapi/xcertplay'/(name+'.java'))
  hashes[name]={'path':str(source),'sha256':hashlib.sha256(source.read_bytes()).hexdigest()}
 classes=work/'classes'
 subprocess.run([str(JAVA/'javac'),'--release','8','-Xlint:-options','-d',str(classes),*map(str,sources.rglob('*.java'))],check=True)
 results=[]
 for name in (args.checks.split(',') if args.checks else ['IntegrationCheck','HorizonCheck','ConcurrencyCheck','RecoveryCheck','GlCheck','GlIntegrationCheck','GlBindingCheck','GlEventCheck','DirectClockCheck','DirectInFlightCheck','DirectCapCheck','DirectLateCheck','DirectLifecycleCheck']):
  result=subprocess.run([str(JAVA/'java'),'-cp',str(classes),'com.shilapi.xcertplay.'+name],capture_output=True,text=True,timeout=45)
  print(result.stdout,end='',flush=True);print(result.stderr,end='',flush=True);result.check_returncode();results.append(result.stdout)
 (HERE/('results-'+args.checks.replace(',', '-')+'.txt' if args.checks else 'results.txt')).write_text(''.join(results))
 (HERE/('tested-sources-'+args.checks.replace(',', '-')+'.json' if args.checks else 'tested-sources.json')).write_text(json.dumps(hashes,indent=2)+'\n')
