#!/usr/bin/env python3
"""Optional release equivalence audit. The reference APK is never a build dependency."""
from pathlib import Path
import argparse
import hashlib
import json
import re
import struct
import subprocess
import tempfile
import zipfile
import zlib
from build import canonical_smali, digest


def string_pool(data, at):
    _, header, _ = struct.unpack_from('<HHI', data, at)
    count, _, flags, start, _ = struct.unpack_from('<5I', data, at + 8)
    utf8 = bool(flags & 256)
    def length(pos):
        if utf8:
            n = data[pos]
            return (((n & 127) << 8) | data[pos+1], pos+2) if n & 128 else (n, pos+1)
        n = struct.unpack_from('<H', data, pos)[0]
        return (((n & 32767) << 16) | struct.unpack_from('<H', data, pos+2)[0], pos+4) if n & 32768 else (n, pos+2)
    result = []
    for i in range(count):
        pos = at + start + struct.unpack_from('<I', data, at+header+4*i)[0]
        n, pos = length(pos)
        if utf8:
            n, pos = length(pos)
        else:
            n *= 2
        result.append(data[pos:pos+n].decode('utf-8' if utf8 else 'utf-16le'))
    return result


def xml_value(data, ignore_version=False):
    strings, stack, tree = [], [], []
    at = 8
    def value(index):
        return None if index == 0xffffffff else strings[index]
    while at < len(data):
        kind, header, size = struct.unpack_from('<HHI', data, at)
        if size < header or at+size > len(data):
            raise ValueError('Malformed binary XML')
        if kind == 1:
            strings = string_pool(data, at)
        elif kind == 0x102:
            ns, name = struct.unpack_from('<II', data, at+16)
            offset, width, count = struct.unpack_from('<HHH', data, at+24)
            attrs = []
            for i in range(count):
                pos = at+16+offset+i*width
                ans, aname, raw = struct.unpack_from('<III', data, pos)
                typ, payload = data[pos+15], struct.unpack_from('<I', data, pos+16)[0]
                if ignore_version and not stack and value(aname) in ('versionCode', 'versionName'):
                    continue
                attrs.append([value(ans), value(aname), typ, value(payload) if typ == 3 else payload])
            node = [value(ns), value(name), sorted(attrs, key=lambda x: (x[0] or '', x[1])), []]
            (stack[-1][3] if stack else tree).append(node)
            stack.append(node)
        elif kind == 0x103:
            stack.pop()
        elif kind == 0x104:
            # XML text nodes are uncommon in Android layout XML but must not be discarded.
            stack[-1][3].append(['text', value(struct.unpack_from('<I', data, at+16)[0])])
        at += size
    if stack:
        raise ValueError('Unclosed binary XML nodes')
    return tree


def png_value(data):
    chunks = {}
    at = 8
    while at < len(data):
        size = struct.unpack_from('>I', data, at)[0]
        kind, payload = data[at+4:at+8], data[at+8:at+8+size]
        chunks.setdefault(kind, []).append(payload)
        at += 12+size
    header = chunks[b'IHDR'][0]
    width, height, bits, color, comp, filt, interlaced = struct.unpack('>IIBBBBB', header)
    if interlaced:
        raise ValueError('An interlaced PNG changed encoding; inspect it explicitly')
    channels = {0: 1, 2: 3, 3: 1, 4: 2, 6: 4}[color]
    bpp = max(1, (channels*bits+7)//8)
    stride = (width*channels*bits+7)//8
    raw = zlib.decompress(b''.join(chunks[b'IDAT']))
    assert len(raw) == height*(stride+1)
    pixels = bytearray()
    previous = bytearray(stride)
    offset = 0
    for row in range(height):
        method = raw[offset]
        current = bytearray(raw[offset+1:offset+1+stride])
        for i in range(stride):
            a, b, c = (current[i-bpp] if i >= bpp else 0), previous[i], (previous[i-bpp] if i >= bpp else 0)
            if method == 0: predictor = 0
            elif method == 1: predictor = a
            elif method == 2: predictor = b
            elif method == 3: predictor = (a+b)//2
            elif method == 4:
                p = a+b-c
                pa, pb, pc = abs(p-a), abs(p-b), abs(p-c)
                predictor = a if pa <= pb and pa <= pc else b if pb <= pc else c
            else: raise ValueError('Unknown PNG filter')
            current[i] = (current[i]+predictor) & 255
        pixels.extend(current)
        previous = current
        offset += stride+1
    metadata = {k:v for k,v in chunks.items() if k not in (b'IDAT', b'IEND', b'tEXt', b'zTXt', b'iTXt', b'tIME')}
    return metadata, pixels


def resources(dump):
    result, files, current = {}, {}, None
    for line in dump.splitlines():
        match = re.match(r'    resource (\S+) (\S+)(.*)', line)
        if match:
            current = match[1]
            result[current] = {'name': match[2], 'flags': match[3].strip(), 'values': []}
        elif current and line.startswith('      '):
            file = re.match(r'      \((.*?)\) \(file\) (\S+)', line)
            if file:
                files[(current, file[1])] = file[2]
                line = line.replace(file[2], '<resource-file>')
            result[current]['values'].append(line.strip())
    for item in result.values():
        item['values'].sort()  # Configurations and keyed enum/style entries may be reordered.
    return result, files


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--root', type=Path, default=Path(__file__).resolve().parent.parent)
    parser.add_argument('--reference', type=Path, required=True)
    parser.add_argument('--candidate', type=Path, help='Explicit source-built APK for the one-time migration audit')
    parser.add_argument('--reference-smali', type=Path, help='Optional prior disassembly of that exact reference')
    args = parser.parse_args()
    root = args.root.resolve()
    config = json.loads((root/'project.json').read_text())
    candidate = args.candidate or root/'dist'/('06Link-'+config['version_name']+'.apk')
    assert digest(args.reference) == config['source_origin']['sha256'], 'Wrong migration reference'
    report = {'origin': config['source_origin'], 'apk': candidate.name, 'sha256': digest(candidate)}
    from toolchain import resolve
    tools = resolve(root, config)
    def capture(*cmd):
        return subprocess.run(list(map(str,cmd)), check=True, capture_output=True, text=True).stdout
    with tempfile.TemporaryDirectory(prefix='06link-source-audit-') as temp:
        temp = Path(temp)
        maps = []
        for label, apk in [('reference', args.reference), ('candidate', candidate)]:
            result = {}
            with zipfile.ZipFile(apk) as archive:
                for name in archive.namelist():
                    if not re.fullmatch(r'classes\d*\.dex', name):continue
                    folder = args.reference_smali/name[:-4] if label=='reference' and args.reference_smali else temp/label/name[:-4]
                    if not (label=='reference' and args.reference_smali):
                        dex=temp/(label+'-'+name);dex.write_bytes(archive.read(name))
                        capture(tools['java'],'-cp',tools['smali'],
                            'com.android.tools.smali.baksmali.Main','disassemble','--use-locals','--sequential-labels',dex,'-o',folder)
                    for p in folder.rglob('*.smali'):
                        key=name+'/'+p.relative_to(folder).as_posix()
                        result[key]=canonical_smali(p.read_text())
            maps.append(result)
        differences = sorted(k for k in maps[0].keys() | maps[1].keys() if maps[0].get(k) != maps[1].get(k))
        if differences:
            (root/'build/current/migration-code-differences.json').write_text(json.dumps(differences,indent=2)+'\n')
            raise AssertionError('Changed classes: '+repr(differences[:12]))
        report['runtime_classes_equivalent'] = len(maps[0])
    old_dump = capture(tools['aapt2'],'dump','resources',args.reference)
    new_dump = capture(tools['aapt2'],'dump','resources',candidate)
    old_resources, old_files = resources(old_dump)
    new_resources, new_files = resources(new_dump)
    assert old_resources == new_resources, 'Resource ID/value/configuration changed'
    assert old_files.keys() == new_files.keys(), 'File resource variants changed'
    report['resource_ids_and_values_equal'] = len(old_resources)
    with zipfile.ZipFile(args.reference) as old, zipfile.ZipFile(candidate) as new:
        assert xml_value(old.read('AndroidManifest.xml'), True) == xml_value(new.read('AndroidManifest.xml'), True), 'Manifest behavior changed'
        report['manifest_equal_except_version'] = True
        compared = set()
        for key, name in old_files.items():
            other = new_files[key]
            if (name,other) in compared:continue
            compared.add((name,other))
            a,b=old.read(name),new.read(other)
            if a==b:continue
            if name.endswith('.xml'):assert xml_value(a)==xml_value(b),('XML resource changed',key)
            elif a.startswith(b'\x89PNG\r\n\x1a\n'):assert png_value(a)==png_value(b),('PNG pixels/nine-patch changed',key)
            else:raise AssertionError(('Binary resource changed',key))
        report['resource_files_equivalent'] = len(compared)
        def payload_names(archive):
            return {n for n in archive.namelist() if not n.startswith(('res/','META-INF/'))
                    and n not in ('AndroidManifest.xml','resources.arsc') and not re.fullmatch(r'classes\d*\.dex',n)}
        assert payload_names(old)==payload_names(new),'Assets or libraries added/removed'
        for n in payload_names(old):assert old.read(n)==new.read(n),'Changed runtime payload: '+n
        report['native_libraries_assets_metadata_byte_identical']=len(payload_names(old))
    report['installed']=False
    output=root/'build/current/migration-equivalence.json'
    output.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(report,ensure_ascii=False,indent=2))


if __name__=='__main__':main()
