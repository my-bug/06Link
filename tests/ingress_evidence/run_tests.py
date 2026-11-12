from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java
import subprocess,tempfile,hashlib,json
r=Path(__file__).resolve().parent
j=find_java()['java_home'] / 'bin'
root=r.parents[1]
sources=[root/'src/e01/com/shilapi/xcertplay'/n for n in ['E01VideoIngress.java','E01IngressEvidence.java']]+list((r/'test-src').rglob('*.java'))
with tempfile.TemporaryDirectory() as t:
 subprocess.run([str(j/'javac'),'--release','8','-d',t,*map(str,sources)],check=True)
 p=subprocess.run([str(j/'java'),'-cp',t,'com.shilapi.xcertplay.IngressCheck'],capture_output=True,text=True,timeout=30)
 print(p.stdout,end='');print(p.stderr,end='');(r/'results.txt').write_text(p.stdout+p.stderr);p.check_returncode()
(r/'tested-sources.json').write_text(json.dumps({str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sources},indent=2)+'\n')
