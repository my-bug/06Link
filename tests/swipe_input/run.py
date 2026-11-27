#!/usr/bin/env python3
"""Check the production input sampler and the successful HID write it measures."""
from pathlib import Path
import re
import subprocess
import sys
import tempfile

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
sys.path.insert(0, str(ROOT / 'scripts'))
from test_support import find_java

java = find_java()['java_home'] / 'bin'
with tempfile.TemporaryDirectory(prefix='06link-swipe-input-') as tmp:
    production = ROOT / 'src/e01/com/shilapi/xcertplay/E01SwipeInput.java'
    subprocess.run([str(java / 'javac'), '--release', '8', '-d', tmp, production,
                    HERE / 'SwipeInputCheck.java', *sorted((HERE / 'stubs').rglob('*.java'))], check=True)
    subprocess.run([str(java / 'java'), '-cp', tmp, 'com.shilapi.xcertplay.SwipeInputCheck'],
                   check=True, timeout=20)

core = ROOT / 'src/core/smali/classes/com/shilapi/xcertplay'
host = (core / 'CarPlayHostActivity.smali').read_text()
touch = host.split('.method private final onHostTouch(', 1)[1].split('.end method', 1)[0]
mapped = re.search(r'->contacts\(Landroid/view/MotionEvent;II\)Ljava/util/List;\s+move-result-object (\w+)', touch)
assert mapped, 'host must map the real MotionEvent'
contacts = mapped[1]
observed = re.search(r'invoke-static \{p2, ' + contacts + r', p0\}, [^\n]+E01SwipeInput;->observe\(Landroid/view/MotionEvent;Ljava/lang/Object;Landroid/app/Activity;\)V', touch)
forwarded = re.search(r'invoke-direct \{p0, \w+, ' + contacts + r'\}, [^\n]+;->applyGesture\(', touch)
assert observed and forwarded and mapped.end() <= observed.start() < forwarded.start(), 'tag contacts before forwarding'
queue = (core / 'E01TouchQueue.smali').read_text()
snapshot = (core / 'E01TouchQueue$Snapshot.smali').read_text()
session = (core / 'airplay/AirPlaySession.smali').read_text()
tag = re.search(r'invoke-static \{(\w+)\}, [^\n]+E01SwipeInput;->tokenFor\(Ljava/lang/Object;\)J', queue)
assert tag and f'move-object {tag[1]}, p2' in queue[:tag.start()], 'tag the original contact list'
assert tag.start() < queue.index('->swipeToken:J') < queue.index('E01TouchDispatch;->enqueue(')
assert snapshot.index('->swipeToken:J') < snapshot.index('->sendTouch(Ljava/util/List;J)Z')
body = session.split('.method public final sendTouch(Ljava/util/List;J)Z', 1)[1].split('.end method', 1)[0]
write = re.search(r'->sendHidReport\(I\[B\)Z\s+move-result (\w+)\s+if-eqz \1, (:\w+)\s+'
                  r'invoke-static \{[^}]+\}, [^\n]+E01SwipeInput;->sent\(JJ\)V', body)
assert write and '\n    ' + write[2] + '\n' in body[write.end():], 'only completed writes should count'
print('PASS first moving contact, coalescing, cancellation, short swipes and HID write hooks')
