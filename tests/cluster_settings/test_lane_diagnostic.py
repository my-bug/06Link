#!/usr/bin/env python3
"""Compile the passive lane helper with the numeric/privacy/framing regression harness."""
import os, subprocess, tempfile
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
SOURCE=HERE/'E01LaneDiagnostic.java'
if not SOURCE.exists(): SOURCE=ROOT/'src/e01/com/shilapi/xcertplay/E01LaneDiagnostic.java'
jdk=find_java()['java_home']
with tempfile.TemporaryDirectory(prefix='06link-lane-test-') as td:
 subprocess.run([str(jdk/'bin/javac'),'-encoding','UTF-8','-source','8','-target','8','-Xlint:-options','-d',td,str(SOURCE),str(HERE/'LaneDiagnosticTest.java')],check=True)
 subprocess.run([str(jdk/'bin/java'),'-Xmx32m','-cp',td,'com.shilapi.xcertplay.LaneDiagnosticTest'],check=True)
