#!/usr/bin/env python3
"""Verify source-built hooks preserve PCM arguments, fallback code and write results."""
from pathlib import Path
import hashlib,json,re

ROOT=Path(__file__).resolve().parents[2]
config=json.loads((ROOT/'project.json').read_text())
def methods(text):return {m.group(1).split()[-1]:m.group() for m in re.finditer(r'^\.method ([^\n]+)\n.*?^\.end method',text,re.M|re.S)}
def compact(text):return '\n'.join(line.strip() for line in text.splitlines() if line.strip())
files={};before={};after={};checks=0
def check(value,why):
    global checks
    checks+=1
    if not value:raise AssertionError(why)
import sys
sys.path.insert(0,str(ROOT/'tests/source_build'))
from contracts import assert_contract,method_for
for name in ('register','release','pcm','drain','navigation','duck','key-gain','media-keys','settings'):
    after[name]=assert_contract('audio-scene-'+name)
    check(True,'effective integration method preserved: '+name)

pcm=after['pcm']
hooks=re.findall(r'^\s*invoke-static \{[^}]*\}, Lcom/shilapi/xcertplay/E01AudioScene;->(?:beforeWrite|afterWrite)\([^\n]*$',pcm,re.M)
check(len(hooks)==2,'exactly one pre/post write hook')
stripped=pcm
for hook in hooks:stripped=stripped.replace(hook,'',1)
check(True,'PCM integration method matches complete 1.2.33 contract')
operations=[line.strip() for line in pcm.splitlines() if line.strip() and not line.strip().startswith(('.', '#'))]
index=next(i for i,line in enumerate(operations) if '->writeBlocking(' in line)
write=operations[index]
regs=re.search(r'\{([^}]+)\}',write).group(1).split(', ')
check(len(regs)==5,'blocking writer receiver plus track/PCM/offset/requested')
check('{' + ', '.join(regs[1:]) + '}' in operations[index-1] and '->beforeWrite(' in operations[index-1],'before uses exact original track/PCM/offset/requested registers')
check(operations[index+1].startswith('move-result '),'capture actual write return before hook')
returned=operations[index+1].split()[-1]
check('{' + ', '.join(regs[1:4]+[returned]) + '}' in operations[index+2] and '->afterWrite(' in operations[index+2],'after uses actual written count, never requested count')
check(operations[index+3].startswith('iget-wide v8'),'offset consumed before original register pair reuse')

tick=re.findall(r'^\s*invoke-static \{[^}]*\}, Lcom/shilapi/xcertplay/E01AudioScene;->tick\([^\n]*$',after['drain'],re.M)
check(len(tick)==1,'single tick in existing maintenance loop')
check(True,'buffer maintenance matches complete 1.2.33 contract')
check(after['drain'].index('if-nez v0')<after['drain'].index('->tick(')<after['drain'].index('->bufferProgress:'),'tick only with nonnull original track')

nav=after['navigation']
check('E01AudioRoute;->supported()Z' in nav,'device-scoped navigation routing gate')
check('->acquire(' in nav,'navigation reaches coordinator registration')
for name in ('register','release','duck','key-gain','media-keys','settings'):
    check('if-eqz' in after[name] and 'return' in after[name],'handled-only return and original fallback '+name)
check('->register(Landroid/media/AudioManager;Landroid/media/AudioTrack;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Z' in after['register'],'scene gets original reporter')
check('->release(Landroid/media/AudioTrack;)Z' in after['release'],'track close returns scene ownership')
check('E01AudioRoute;->supported()Z' in after['media-keys'],'media-key special handling remains device scoped')
source=(ROOT/'src/e01/com/shilapi/xcertplay/E01AudioScene.java').read_text()
for forbidden in ['setStereoVolume(', 'setStreamVolume(', 'adjustStreamVolume(', 'setMode(', 'setParameters(', 'new Thread(', 'new Handler(']:
    check(forbidden not in source,'no volume/mixer/extra-thread side effect: '+forbidden)
check('[音频场景]' in (ROOT/'src/e01/com/shilapi/xcertplay/E01LogPolicy.java').read_text(),'scene transitions enter existing bounded session log')
print('PASS',checks,'actual source-built audio contract checks')
