"""Check source-only DEX partitions and the active settings bindings, without an APK."""
from pathlib import Path
import json,re,sys,tempfile
ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/'scripts'))
from build import source_inputs,methods

with tempfile.TemporaryDirectory(prefix="06link-java-partition-") as directory:
    root=Path(directory).resolve()
    (root/'java/p').mkdir(parents=True)
    (root/'java/p/Video.java').write_text('package p; public class Video {}')
    (root/'manifest.xml').write_text('<manifest package="p.app"><application/></manifest>')
    (root/'ids.txt').write_text('')
    config={'application_id':'p.app','file_assets':[],'sources':{
        'java_root':'java','java_dex':{'p/Video':'classes4.dex'},'default_java_dex':'classes2.dex',
        'smali_roots':{'classes4.dex':'smali/classes4'},'manifest':'manifest.xml','resource_ids':'ids.txt'}}
    # A clean checkout has no empty Smali directory, but Java still supplies this DEX.
    java,smali=source_inputs(root,config)
    assert len(java)==1 and smali=={'classes4.dex':[]}
    (root/'smali/classes4').mkdir(parents=True)
    assert source_inputs(root,config)[1]['classes4.dex']==[]
    config['sources']['java_dex']['p/Video']='classes2.dex'
    try:source_inputs(root,config)
    except ValueError as e:assert 'No Java or Smali sources' in str(e)
    else:raise AssertionError('Empty unpopulated DEX accepted')
print('PASS Java-only partition with absent/empty source directory; missing inputs rejected')

base=ROOT/'src/core/smali/classes/com/shilapi/xcertplay'
activity=methods((base/'DiPlayActivity.smali').read_text())
method_names={signature.split('(')[0] for signature in activity}
java_root=ROOT/'src/e01/com/shilapi/xcertplay'
current=(java_root/'E01NativeUi.java').read_text()
# These are real reflective calls made by the current screen, not old menu roots.
names=set(re.findall(r'E01NativeSettings\.call\(host(?:\.getClass\(\))?,"([^"]+)"',current))
assert names and names<=method_names, names-method_names
host=methods((base/'CarPlayHostActivity.smali').read_text())
assert '->showDiPlayHome(' in host['openSettingsMenu()V']
assert not any(signature.startswith('buildSettingsMenu(') for signature in host)
manifest=(ROOT/'src/main/AndroidManifest.xml').read_text()
for name in ('HeadUnitCheckActivity','WheelKeysActivity','ImageCropActivity','CarBrandPickerActivity'):
    assert name not in manifest
print('PASS current settings bindings and host settings routing; retired activities unregistered')
