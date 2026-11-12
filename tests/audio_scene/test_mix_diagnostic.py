#!/usr/bin/env python3
"""Compile the real read-only mix diagnostic with getter fakes, without an Android device."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java
import os,subprocess,tempfile
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
JDK=find_java()['java_home']
source=ROOT/'src/e01/com/shilapi/xcertplay/E01AudioMixDiagnostic.java'
paths=[source,HERE/'AudioMixDiagnosticTest.java',*[p for p in (HERE/'stubs').rglob('*.java') if p.name!='E01AudioMixDiagnostic.java']]
with tempfile.TemporaryDirectory(prefix='06link-audio-mix-') as temp:
    subprocess.run([str(JDK/'bin/javac'),'--release','8','-Xlint:-options','-d',temp,*map(str,paths)],check=True)
    for case in ['initial','defaults','errors','unsupported','contextFailures']:
        subprocess.run([str(JDK/'bin/java'),'-Xmx32m','-cp',temp,'com.shilapi.xcertplay.AudioMixDiagnosticTest',case],check=True)
text=source.read_text()
for forbidden in ['putInt(', 'putString(', 'setStreamVolume(', 'adjustStreamVolume(', 'setMode(', 'setParameters(', 'new Thread(', 'new Handler(']:
    assert forbidden not in text,forbidden
print('PASS real mix diagnostic read-only contracts')
