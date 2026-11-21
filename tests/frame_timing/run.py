#!/usr/bin/env python3
"""Compile and exercise production timing histograms without building an APK."""
from pathlib import Path
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'scripts'))
from test_support import find_java

java = find_java()['java_home'] / 'bin'
with tempfile.TemporaryDirectory(prefix='06link-frame-timing-') as temporary:
    subprocess.run([str(java / 'javac'), '--release', '8', '-d', temporary,
                    str(ROOT / 'src/e01/com/shilapi/xcertplay/E01FrameTiming.java'),
                    str(Path(__file__).with_name('FrameTimingCheck.java'))], check=True)
    subprocess.run([str(java / 'java'), '-cp', temporary,
                    'com.shilapi.xcertplay.FrameTimingCheck'], check=True, timeout=30)
