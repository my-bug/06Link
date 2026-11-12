#!/usr/bin/env python3
"""Compile the real helper and run device-free deterministic JVM regressions."""
import argparse
import json
import os
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java
import shutil
import subprocess
import tempfile

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent.parent
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--source', type=Path, default=ROOT / 'src/e01/com/shilapi/xcertplay/E01GpsDiagnostic.java')
parser.add_argument('--link-probe', type=Path, help='Actual E01GpsLinkProbe.java; defaults to helper source sibling if present')
parser.add_argument('--log-policy', type=Path, help='Actual E01LogPolicy.java; defaults to helper source sibling if present')
parser.add_argument('--java-home', type=Path, default=os.environ.get('JAVA_HOME'))
args = parser.parse_args()
if not args.source.is_file():
    parser.error('Helper source not found: ' + str(args.source) + '; pass --source PATH')
tools = find_java({'java_home': args.java_home} if args.java_home else None)
javac = str(tools['javac'])
java = str(tools['java'])

def call(command):
    subprocess.run(command, check=True)

vectors = json.loads((HERE / 'nmea-classification-vectors.json').read_text())
with tempfile.TemporaryDirectory(prefix='06link-gps-diagnostic-') as scratch:
    build = Path(scratch)
    real_classes = build / 'real-thread'
    test_classes = build / 'virtual-thread'
    real_classes.mkdir()
    test_classes.mkdir()
    generated = build / 'GeneratedNmeaVectors.java'
    lines = ['package com.shilapi.xcertplay;', 'final class GeneratedNmeaVectors {',
             'static final class Vector {final String name,nmea;final boolean position;Vector(String a,String b,boolean c){name=a;nmea=b;position=c;}}',
             'static final Vector[] ALL={']
    for vector in vectors:
        lines.append('new Vector(%s,%s,%s),' % (json.dumps(vector['name']), json.dumps(vector['nmea']), str(vector['has_position']).lower()))
    lines.extend(['};', '}'])
    generated.write_text('\n'.join(lines), encoding='utf-8')
    stubs = sorted((HERE / 'stubs').rglob('*.java'))
    real_stubs = [path for path in stubs if path.name != 'Thread.java']
    flags = ['-encoding', 'UTF-8', '--release', '8', '-Xlint:-options']
    call([javac, *flags, '-d', str(real_classes), str(args.source), *map(str, real_stubs)])
    print('PASS unchanged helper compiles with real java.lang.Thread', flush=True)
    call([javac, *flags, '-d', str(test_classes), str(args.source), *map(str, stubs),
          *map(str, sorted((HERE / 'src').rglob('*.java'))), str(generated)])
    call([java, '-ea', '-cp', str(test_classes), 'com.shilapi.xcertplay.E01GpsDiagnosticTest'])

    link_probe = args.link_probe or args.source.with_name('E01GpsLinkProbe.java')
    if link_probe.is_file():
        call([javac, *flags, '-cp', str(test_classes), '-d', str(test_classes), str(link_probe),
              *map(str, sorted((HERE / 'linked').rglob('*.java')))])
        call([java, '-ea', '-cp', str(test_classes), 'com.shilapi.xcertplay.GpsDiagnosticLinkIntegrationTest'])
    else:
        print('SKIP actual link-probe integration: sibling source absent; pass --link-probe PATH', flush=True)

    log_policy = args.log_policy or args.source.with_name('E01LogPolicy.java')
    if log_policy.is_file():
        integration_classes = build / 'real-log-policy'
        integration_classes.mkdir()
        integration_stubs = [path for path in stubs if path.name != 'E01LogPolicy.java']
        call([javac, *flags, '-d', str(integration_classes), str(args.source), str(log_policy),
              *map(str, integration_stubs), *map(str, sorted((HERE / 'integration').rglob('*.java')))])
        call([java, '-ea', '-cp', str(integration_classes), 'com.shilapi.xcertplay.GpsLogPolicyIntegrationTest', str(build / 'log-data')])
    else:
        print('SKIP real log-policy integration: sibling source absent; pass --log-policy PATH', flush=True)
