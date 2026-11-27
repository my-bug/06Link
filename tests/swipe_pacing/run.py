#!/usr/bin/env python3
"""Run the deterministic display timestamp checks without a device."""
from pathlib import Path
import subprocess
import sys
import tempfile

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
sys.path.insert(0, str(ROOT / 'scripts'))
from test_support import find_java

java = find_java()['java_home'] / 'bin'
pacing = ROOT / 'src/e01/com/shilapi/xcertplay/E01SwipePacing.java'
with tempfile.TemporaryDirectory(prefix='06link-swipe-pacing-') as out:
    subprocess.run([str(java / 'javac'), '--release', '8', '-d', out,
                    pacing, HERE / 'SwipePacingCheck.java', HERE / 'TabletSwipeReplay.java'], check=True)
    for check in ('SwipePacingCheck', 'TabletSwipeReplay'):
        subprocess.run([str(java / 'java'), '-cp', out,
                        'com.shilapi.xcertplay.' + check], check=True, timeout=20)
