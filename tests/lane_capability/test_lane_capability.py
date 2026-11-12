#!/usr/bin/env python3
"""Verify capability snapshots, actual patched component TLVs and baseline byte preservation."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java, resolve
import hashlib,json,os,re,struct,subprocess,tempfile

ROOT=Path(__file__).resolve().parents[2]
JAVA=find_java()['java_home']/'bin'
import sys
sys.path.insert(0,str(ROOT/'tests/source_build'))
from contracts import assert_contract,method_for
identification=assert_contract('lane-capability-identification')
component_method=assert_contract('lane-capability-component')
assert identification.index('->messagesReceived([I)[I')<identification.index('->getVehicleStatusEnabled()Z')
assert identification.index('->build()')<identification.index('->identificationBuilt()V')
def tlv(tag,value):return struct.pack('>HH',len(value)+4,tag)+value
def component(smali,enabled):
    """Execute the exact straight-line component smali into binary TLVs, including its gate.
    Deliberately supports only the instructions in this small method; new opcodes fail closed.
    This is offline byte-level testing, not execution on Android or proof of phone acceptance.
    """
    lines=[s.strip() for s in smali.splitlines() if s.strip() and not s.strip().startswith(('.', '#'))]
    labels={s:i for i,s in enumerate(lines) if s.startswith(':')}
    registers={};result=None;out=bytearray();at=0
    while at<len(lines):
        line=lines[at];at+=1
        if line.startswith(':'):continue
        m=re.fullmatch(r'const(?:/4|/16)? (v\d+), (0x[0-9a-f]+)',line)
        if m:registers[m[1]]=int(m[2],16);continue
        m=re.fullmatch(r'const-string (v\d+), "(.*)"',line)
        if m:registers[m[1]]=m[2];continue
        if '->checkNotNullParameter' in line:continue
        if '->declareComponent()Z' in line:result=int(enabled);continue
        if line.startswith('move-result '):registers[line.split()[1]]=result;continue
        m=re.fullmatch(r'if-eqz (v\d+), (:\w+)',line)
        if m:
            if not registers[m[1]]:at=labels[m[2]]
            continue
        m=re.fullmatch(r'invoke-virtual \{p0, (v\d+), (v\d+)\}, .*->(u16|string)\(.*',line)
        if m:
            value=registers[m[2]];value=struct.pack('>H',value) if m[3]=='u16' else value.encode()+b'\0'
            out+=tlv(registers[m[1]],value);continue
        if line.startswith('sget-object p0, Lkotlin/Unit;'):continue
        if line=='return-object p0':return bytes(out)
        raise AssertionError('Unsupported component instruction: '+line)
    raise AssertionError('Missing return')

off=component(component_method,False)
on=component(component_method,True)
expected=[(0,b'\x00\x2a'),(1,b'RouteGuidance\0'),(2,b'\x00\x40'),(4,b'\x00\x40'),(6,b'\x00\x08')]
before=b''.join(tlv(k,v) for k,v in expected)
assert before==off,'Disabled payload must match the established wire bytes'
assert on==before+tlv(7,struct.pack('>H',64))+tlv(8,struct.pack('>H',1))
# Adding two fields changes only the enclosing component length and its new tail.
assert tlv(0x1e,on)[4:4+len(before)]==tlv(0x1e,before)[4:]

stubs={
 'android/os/Build.java':'package android.os;public class Build{public static String MODEL="E01",DEVICE="BX11QJ";public static class VERSION{public static int SDK_INT=22;}}',
 'android/content/Context.java':'package android.content;public class Context{public boolean enabled,fail;public Context getSharedPreferences(String s,int m){if(fail)throw new SecurityException();if(!s.equals("xcertplay_airplay")||m!=0)throw new AssertionError();return this;}public boolean getBoolean(String s,boolean d){if(!s.equals("cluster_map_enabled")||d)throw new AssertionError();return enabled;}}',
 'android/app/ActivityThread.java':'package android.app;public class ActivityThread{public static android.content.Context context;public static android.content.Context currentApplication(){return context;}}',
}
with tempfile.TemporaryDirectory(prefix='06link-lane-capability-') as work:
    work=Path(work);paths=[]
    for name,text in stubs.items():
        path=work/name;path.parent.mkdir(parents=True,exist_ok=True);path.write_text(text);paths.append(path)
    paths += [ROOT/'src/e01/com/shilapi/xcertplay'/name for name in ('E01LaneCapability.java','E01LaneDiagnostic.java')]
    paths += [Path(__file__).with_name('LaneCapabilityTest.java')]
    subprocess.run([str(JAVA/'javac'),'--release','8','-d',str(work/'classes'),*map(str,paths)],check=True)
    subprocess.run([str(JAVA/'java'),'-Xmx32m','-cp',str(work/'classes'),'com.shilapi.xcertplay.LaneCapabilityTest'],check=True)
print('lane capability: actual source contracts, component TLVs and snapshot lifecycle passed')
