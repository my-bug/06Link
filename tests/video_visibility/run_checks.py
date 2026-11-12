from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java, resolve
import hashlib, json, shutil, subprocess, tempfile

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
JAVA = find_java()['java_home'] / 'bin'
sources = [ROOT / 'src/e01/com/shilapi/xcertplay' / (name + '.java') for name in ('E01VideoVisibility', 'E01DirectOutputClock')]
with tempfile.TemporaryDirectory() as temporary:
    work = Path(temporary)
    shutil.copytree(HERE / 'test-src', work / 'src')
    for source in sources:
        shutil.copy2(source, work / 'src/com/shilapi/xcertplay' / source.name)
    common = ROOT / 'tests/direct_oes/test-src'
    for relative in ('android/content/Context.java', 'android/content/SharedPreferences.java', 'android/os/Build.java', 'com/shilapi/xcertplay/E01DisplayClock.java', 'com/shilapi/xcertplay/E01PrivilegedShell.java'):
        target = work / 'src' / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(common / relative, target)
    subprocess.run([str(JAVA / 'javac'), '--release', '8', '-d', str(work / 'classes'), *map(str, (work / 'src').rglob('*.java'))], check=True)
    results = []
    for check in ('VisibilityCheck', 'DirectVisibilityCheck'):
        result = subprocess.run([str(JAVA / 'java'), '-cp', str(work / 'classes'), 'com.shilapi.xcertplay.' + check], capture_output=True, text=True, timeout=30)
        print(result.stdout, end=''); print(result.stderr, end=''); result.check_returncode(); results.append(result.stdout)
    (HERE / 'results.txt').write_text(''.join(results))
    (HERE / 'tested-source.json').write_text(json.dumps([{'source': str(source), 'sha256': hashlib.sha256(source.read_bytes()).hexdigest()} for source in sources], indent=2) + '\n')
