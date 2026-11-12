"""Integration contracts read the assembled code, not historical replacement patches."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import resolve, build_dir
import hashlib, json, re, sys
ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/'scripts'))
from build import canonical_smali, methods
CONTRACTS=json.loads((Path(__file__).with_name('contracts.json')).read_text())

def method_for(name, root=ROOT):
    name=name.removesuffix('.json')
    entry=CONTRACTS[name]
    folder=build_dir(root)/'verified'/entry['dex'][:-4]
    text=(folder/entry['class']).read_text()
    return methods(text)[entry['method']]

def assert_contract(name, root=ROOT):
    name=name.removesuffix('.json')
    text=method_for(name,root)
    actual=hashlib.sha256(canonical_smali(text).encode()).hexdigest()
    assert actual==CONTRACTS[name]['sha256'], 'Integration method changed; review/update the contract explicitly: '+name
    return text

if __name__=='__main__':
    for name in CONTRACTS:assert_contract(name)
    print('PASS',len(CONTRACTS),'integration methods match the effective 1.2.33 implementation')
