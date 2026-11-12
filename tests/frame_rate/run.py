"""Saved 60 fps choices must survive old fallback flags and fresh connection attempts."""
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
assert 'E01FrameRatePolicy;->connectionFps' in connection
assert 'loadFps60Unsustainable' not in connection
assert 'E01FrameRatePolicy;->automatic' in assert_contract('fps-auto-preference')
adapt = assert_contract('video-visibility-decision')
assert 'saveFps60Unsustainable' not in adapt
assert adapt.index('takeDecision') < adapt.index('filterAdaptation') < adapt.index('->restartGeneration')
assert adapt.index('->restartGeneration') < adapt.index('->shuttingDown') < adapt.index('->sessionForce30Fps:Z')
assert adapt.index('->sessionForce30Fps:Z') < adapt.index('->restartCarPlay')
window = assert_contract('video-visibility-window')
assert 'saveFps60Unsustainable' not in window
assert window.index('acceptWindow') < window.index('FrameRateWatch;->onWindow')
retry = assert_contract('fps-user-retry')
assert 'iput-boolean v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity;->sessionForce30Fps:Z' in retry
host = (ROOT / 'src/core/smali/classes/com/shilapi/xcertplay/CarPlayHostActivity.smali').read_text()
assert '->saveFps60Unsustainable' not in host
config = methods(host)['createAirPlayConfig(Lcom/shilapi/xcertplay/CarPlayHostActivity$DisplaySize;)Lcom/shilapi/xcertplay/airplay/AirPlayConfig;']
assert config.index('->connectionFrameRate') < config.index('E01SmoothVideo;->negotiatedFps')
assert 'E01NativeSettings;->force60' in assert_contract('video-visibility-session')
print('PASS assembled negotiation, session-only fallback, foreground/session guards, explicit retry and renderer handoff')
