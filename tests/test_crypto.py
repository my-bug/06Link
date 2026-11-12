from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from test_support import find_java, resolve
import tempfile,subprocess,json
R=Path(__file__).resolve().parents[1]
J=find_java()['java_home'] / 'bin'
with tempfile.TemporaryDirectory()as folder:
 p=Path(folder);log=p/'android/util/Log.java';log.parent.mkdir(parents=True);log.write_text('package android.util; public class Log {public static int i(String t,String s){return 0;}}')
 subprocess.run([str(J/'javac'),'-d',str(p),str(log),str(R/'src/e01/com/shilapi/xcertplay/E01VideoCrypto.java'),str(R/'tests/CryptoProbe.java'),str(R/'tests/JdkChaChaFixture.java')],check=True)
 out=subprocess.run([str(J/'java'),'-cp',str(p),'CryptoProbe'],text=True,capture_output=True);print(out.stdout+out.stderr,end='');out.check_returncode()
 (R/'tests/crypto-results.json').write_text(json.dumps({'host':out.stdout.splitlines(),'android_bundled_runtime':'not run: device ADB unavailable','bundled_aar_min_sdk':21},indent=2)+'\n')
