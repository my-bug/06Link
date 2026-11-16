"""Manual frame rates are shared by settings, both transports and the renderer."""
from pathlib import Path
import subprocess, sys, tempfile
ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'scripts'))
from test_support import find_java
from build import methods
JAVA = find_java()['java_home'] / 'bin'
HERE = Path(__file__).resolve().parent
with tempfile.TemporaryDirectory() as directory:
    classes = Path(directory) / 'classes'
    sources = [ROOT / 'src/e01/com/shilapi/xcertplay/E01FrameRatePolicy.java',
               *sorted((HERE / 'test-src').rglob('*.java'))]
    subprocess.run([str(JAVA / 'javac'), '--release', '8', '-d', str(classes),
                    *map(str, sources)], check=True)
    subprocess.run([str(JAVA / 'java'), '-cp', str(classes),
                    'com.shilapi.xcertplay.FrameRateCheck'], check=True)

sys.path.insert(0, str(ROOT / 'tests/source_build'))
from contracts import assert_contract
connection = assert_contract('fps-connection')
assert 'E01FrameRatePolicy;->selectedFps' in connection
adapt = assert_contract('video-visibility-decision')
assert adapt.index('takeDecision') < adapt.index('->restartGeneration') < adapt.index('->shuttingDown')
assert 'getToH264' in adapt and 'getTo30Fps' not in adapt
window = assert_contract('video-visibility-window')
assert window.index('acceptWindow') < window.index('VideoLoadGuard;->onWindow')
session = assert_contract('video-visibility-session')
assert session.index('allowSessionAdaptation') < session.index('->effectiveHevc') < session.index('->sessionForceH264:Z')
assert '->restartCarPlay' in session and 'sessionForce30Fps' not in session
assert_contract('fps-user-retry')
from test_support import build_dir
verified = build_dir(ROOT) / 'verified'
for dex in verified.iterdir():
    for path in (dex / 'com/shilapi/xcertplay').rglob('*.smali'):
        text = path.read_text()
        for removed in ('sessionForce30Fps', 'FrameRateWatch;', 'FrameRateWatch$', 'AutoFrameRate;',
                        'AutoFrameRate$', 'getTo30Fps', 'saveFps60Unsustainable', 'loadFpsAuto',
                        'filterAdaptation', '强制 60 帧'):
            assert removed not in text, (path, removed)
host = (verified / 'classes/com/shilapi/xcertplay/CarPlayHostActivity.smali').read_text()
config = methods(host)['createAirPlayConfig(Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;)Lcom/shilapi/xcertplay/airplay/AirPlayConfig;']
assert config.index('->connectionFrameRate') < config.index('E01SmoothVideo;->negotiatedFps')
load = methods((verified / 'classes/com/shilapi/xcertplay/media/DualDisplayVideoLoad.smali').read_text())['mainFps(IZ)I']
assert 'return p1' in load and 'const/' not in load
policy_source = (ROOT / 'src/e01/com/shilapi/xcertplay/E01SmoothVideo.java').read_text()
assert 'static int fps(Activity a){return E01FrameRatePolicy.selectedFps(a);}' in policy_source
ui = (ROOT / 'src/e01/com/shilapi/xcertplay/E01NativeUi.java').read_text()
assert 'new String[]{"30 帧","60 帧"}' in ui and '强制 60 帧' not in ui
print('PASS built shared negotiation, codec-only recovery, retired downgrade removal and renderer handoff')
