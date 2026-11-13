"""Offline behavior tests for the selected upstream core backports; no ADB."""
from pathlib import Path
import subprocess,sys,tempfile
ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/'scripts'))
from test_support import find_java
JAVA=find_java()['java_home']/'bin'
HERE=Path(__file__).resolve().parent
sources=[ROOT/'src/e01/com/shilapi/xcertplay'/n for n in (
    'airplay/AudioPacketSize.java','media/AudioInputPump.java','network/BonjourAddress.java','transport/WiredStartRecovery.java','transport/WiredConfigurationPolicy.java')]
with tempfile.TemporaryDirectory(prefix='06link-core-') as directory:
    subprocess.run([str(JAVA/'javac'),'--release','8','-d',directory,*map(str,sources),*map(str,HERE.glob('*.java')),*map(str,(HERE/'stubs').rglob('*.java'))],check=True)
    for name in ('com.shilapi.xcertplay.media.AudioInputPumpCheck','ParameterCheck','com.shilapi.xcertplay.transport.WiredRecoveryCheck'):
        subprocess.run([str(JAVA/'java'),'-cp',directory,name],check=True,timeout=15)

subprocess.run([sys.executable,str(HERE/"integration.py")],check=True)
