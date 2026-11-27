from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java
import subprocess,tempfile,hashlib,json
r=Path(__file__).resolve().parent
j=find_java()['java_home'] / 'bin'
root=r.parents[1]
sources=[root/'src/e01/com/shilapi/xcertplay'/n for n in ['E01SwipeTiming.java','E01VideoIngress.java','E01IngressEvidence.java','E01FrameTiming.java']]+list((r/'test-src').rglob('*.java'))
with tempfile.TemporaryDirectory() as t:
 subprocess.run([str(j/'javac'),'--release','8','-d',t,*map(str,sources)],check=True)
 p=subprocess.run([str(j/'java'),'-cp',t,'com.shilapi.xcertplay.IngressCheck'],capture_output=True,text=True,timeout=30)
 print(p.stdout,end='');print(p.stderr,end='');(r/'results.txt').write_text(p.stdout+p.stderr);p.check_returncode()
(r/'tested-sources.json').write_text(json.dumps({str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sources},indent=2)+'\n')

# Verify the hook runs once at receiver entry, uses the proven shared fallback,
# and cannot accidentally change the caller, RTCP worker, or individual packets.
core=root/'src/core/smali/classes/com/shilapi/xcertplay'
audio=(core/'airplay/AudioStream.smali').read_text()
method=audio.split('.method private final runData(',1)[1].split('.end method',1)[0]
signature='raise$default(Lcom/shilapi/xcertplay/media/AudioThreadPriority;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;'
assert method.count(signature)==1 and audio.count(signature)==1
assert method.index(signature)<method.index(':goto_0')<method.index('DatagramSocket;->receive')
priority=(core/'media/AudioThreadPriority.smali').read_text()
assert '.method public static synthetic '+signature in priority
assert 'const/16 v0, -0x13' in priority and 'const/16 v0, -0x10' in priority and '.catchall' in priority
assert audio.index('->audioPriority(')>audio.index(signature)
print('PASS audio RX uses one shared fallback priority request before receiving; no per-packet or RTCP scheduling hook')

# The negotiated protocol stream type, not receive rate or thread order, identifies
# the screen. Check the setup-to-reader boundary against current source, not an APK.
screen=(core/'airplay/ScreenStream.smali').read_text()
engine=(core/'airplay/CarPlayMediaEngine.smali').read_text()
setup=engine.split('.method private e01OnScreenLocked(',1)[1].split('.end method',1)[0]
hook='invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/airplay/ScreenStream;->setE01DiagnosticScreenType(I)V'
assert setup.count(hook)==1
assert setup.index('move v2, v3')<setup.index('ScreenStream;-><init>')<setup.index(hook)<setup.index('ScreenStream;->listen(')
assert 'iput p1, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->e01DiagnosticScreenType:I' in screen
run=screen.split('.method private final run(',1)[1].split('.end method',1)[0]
assert 'iget v2, p0, Lcom/shilapi/xcertplay/airplay/ScreenStream;->e01DiagnosticScreenType:I' in run
assert run.index('wrap(Ljava/net/Socket;I)')<run.index(':goto_0')
assert run.index('E01VideoIngress;->message(')<run.index('->onMessage([B[B)V')
assert 'E01LogPolicy.queueSession' in (root/'src/e01/com/shilapi/xcertplay/E01VideoEvidence.java').read_text()
print('PASS negotiated 110/111 identity flows from setup to receiver before listen/read; diagnostics preserve pre-decryption hook and asynchronous log path')
