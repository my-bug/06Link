"""Test the wired-only speech offer and its assembled handshake/settings integration."""
from pathlib import Path
import subprocess, sys, tempfile
ROOT = Path(__file__).resolve().parents[2]
HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT / 'scripts'))
from test_support import find_java, build_dir
from build import methods
JAVA = find_java()['java_home'] / 'bin'
with tempfile.TemporaryDirectory(prefix='06link-nav-voice-') as directory:
    classes = Path(directory) / 'classes'
    sources = [ROOT / 'src/e01/com/shilapi/xcertplay/E01NavigationVoice.java',
               *sorted((HERE / 'test-src').rglob('*.java'))]
    subprocess.run([str(JAVA / 'javac'), '--release', '8', '-d', str(classes),
                    *map(str, sources)], check=True)
    subprocess.run([str(JAVA / 'java'), '-cp', str(classes),
                    'com.shilapi.xcertplay.NavigationVoiceCheck'], check=True)
if '--unit-only' in sys.argv:
    sys.exit(0)
sys.path.insert(0, str(ROOT / 'tests/source_build'))
from contracts import assert_contract
accept = assert_contract('navigation-voice-transport')
assert accept.index('AirPlaySession;-><init>') < accept.index('AirPlayAttachment;->getWireless')
assert accept.index('AirPlayAttachment;->getWireless') < accept.index('->configureNavigationVoice') < accept.index('AirPlaySession;->start')
assert 'invoke-virtual {v2, p0, v4}' in accept
configure = assert_contract('navigation-voice-session')
assert configure.index('->forConnection') < configure.index('->clearWiredNavigation:Z') < configure.index('->debugLog')
handle = assert_contract('navigation-voice-info')
assert handle.index('AirPlayInfoPlist;->build') < handle.index('E01NavigationVoice;->apply') < handle.index('BplistCodec;->encode')
assert 'clearWiredNavigation:Z' in handle
assert 'forConnection' not in handle  # Repeated /info must not pick up a mid-session preference change.
assert_contract('navigation-voice-offer')  # The original offered rates/roles remain the default.
verified = build_dir(ROOT) / 'verified'
settings = (verified / 'classes2/com/shilapi/xcertplay/E01NativeSettings.smali').read_text()
assert 'E01NavigationVoice;->enabled' in settings and 'E01NavigationVoice;->save' in settings
ui = methods((verified / 'classes2/com/shilapi/xcertplay/E01NativeUi.smali').read_text())['audioSettings()V']
assert '有线导航高清语音'.encode('unicode_escape').decode() in ui
assert 'wired_navigation_hd' in ui and '重新连接后生效'.encode('unicode_escape').decode() in ui
log = (verified / 'classes2/com/shilapi/xcertplay/E01LogPolicy.smali').read_text()
assert '[导航语音]'.encode('unicode_escape').decode() in log
print('PASS actual transport gate, per-session snapshot, /info serialization, setting and bounded log integration')
