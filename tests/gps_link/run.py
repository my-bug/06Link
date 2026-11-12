from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java
import subprocess,tempfile
r=Path(__file__).resolve().parent;root=r.parents[1]
j=find_java()['java_home'] / 'bin'
with tempfile.TemporaryDirectory() as t:
 subprocess.run([str(j/'javac'),'--release','8','-d',t,str(root/'src/e01/com/shilapi/xcertplay/E01GpsLinkProbe.java'),str(r/'E01GpsDiagnostic.java'),str(r/'GpsLinkProbeTest.java')],check=True)
 subprocess.run([str(j/'java'),'-cp',t,'com.shilapi.xcertplay.GpsLinkProbeTest'],check=True)
