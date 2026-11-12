#!/usr/bin/env python3
"""Compile actual E01AudioScene with deterministic Android fakes; no device/audio required."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java, resolve
import argparse,json,os,subprocess,tempfile
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
parser=argparse.ArgumentParser(description=__doc__)
parser.add_argument('--source',type=Path,default=ROOT/'src/e01/com/shilapi/xcertplay/E01AudioScene.java')
parser.add_argument('cases',nargs='*')
args=parser.parse_args()
JDK=find_java()['java_home']
CASES=args.cases or ['gates','silence','drain','continuousSilence','failedWrite','partialWrite','mediaPhone','songChange','overlap','stuck','duck','permanentLoss','transientLoss','refusal','exceptions','quietLogs','musicStartsDuringSpeech','refusedPreemption','transientPreemption','sameStream','stereoTail','headWrap','headReset','unavailableTrack','transientEnds','mediaTransient','phoneQuietTail','phoneStall','reporter','allRefused','diagnosticScope','quietNavigationTail','promptEnd','promptOverlap','abandonReturn','idleAbandonRetry']
results=[]
with tempfile.TemporaryDirectory(prefix='06link-audio-scene-') as temp:
    paths=[args.source,HERE/'AudioSceneTest.java',*sorted((HERE/'stubs').rglob('*.java'))]
    subprocess.run([str(JDK/'bin/javac'),'--release','8','-Xlint:-options','-d',temp,*map(str,paths)],check=True)
    for case in CASES:
        result=subprocess.run([str(JDK/'bin/java'),'-Xmx32m','-cp',temp,'com.shilapi.xcertplay.AudioSceneTest',case],capture_output=True,text=True,timeout=15)
        print(result.stdout+result.stderr,end='');results.append({'case':case,'passed':result.returncode==0})
    if not all(r['passed'] for r in results):raise SystemExit(1)
print('PASS all',len(results),'audio scene scenarios; actual helper, fake OEM audio service')
