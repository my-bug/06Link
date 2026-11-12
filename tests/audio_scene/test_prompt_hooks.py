#!/usr/bin/env python3
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import resolve, build_dir
import json,hashlib,re
ROOT=Path(__file__).resolve().parents[2]
import sys
sys.path.insert(0,str(ROOT/'tests/source_build'))
from contracts import assert_contract,method_for
s=assert_contract('navigation-prompt-end')
hook='E01AudioScene;->prompt(Ljava/lang/Object;Ljava/lang/String;)V'
assert s.count(hook)==1
assert s.index('->access$string(')<s.index(hook)<s.index('const-string v2, "params"')
def actual(name):return (build_dir(ROOT)/'merged-classes/com/shilapi/xcertplay'/name).read_text()
assert '->prompt(Ljava/lang/Object;Ljava/lang/String;)V' in actual('airplay/AirPlaySession.smali')
assert re.search(r'^\.field[^\n]* audioRenderers:',actual('media/AndroidMediaSink.smali'),re.M)
assert re.search(r'^\.field[^\n]* track:Landroid/media/AudioTrack;',actual('media/AudioRenderer.smali'),re.M)
controller=actual('orchestration/CarPlayController.smali')
for signature in ['close()V','closeWirelessStack(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V']:
 m=next(x[0]for x in re.finditer(r'^\.method[^\n]*\n.*?^\.end method',controller,re.M|re.S)if x[0].splitlines()[0].endswith(signature))
 assert 'E01OemBluetooth;->cancelPrepared(Ljava/lang/Object;)V' in m,signature
source=(ROOT/'src/e01/com/shilapi/xcertplay/E01AudioScene.java').read_text()
assert 'if(ended&&e.promptClosed)return' in source
assert 'e==null||e.stream!=10' in source
assert 'SystemClock.elapsedRealtime()+1000' in source
assert 'if(!pendingAbandons.isEmpty())return' in source
assert 'int result=lease.manager.abandonAudioFocus(lease)' in source
assert 'E01AudioScene.maintain();' in (ROOT/'src/e01/com/shilapi/xcertplay/E01OemBluetooth.java').read_text()
print('PASS production prompt/owner scope, duplicate-end, tail grace, failed-release and complete wireless cleanup contracts')
