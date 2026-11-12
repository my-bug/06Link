#!/usr/bin/env python3
"""Build 06Link from Java, Smali, XML and assets; no application APK or patch input."""
from pathlib import Path
import argparse
import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
import zipfile
import xml.etree.ElementTree as ET

from toolchain import resolve as resolve_toolchain


def digest(path):
    with Path(path).open('rb') as f:
        return hashlib.file_digest(f, 'sha256').hexdigest()


def methods(text):
    return {m.group(1).split()[-1]: m.group() for m in re.finditer(
        r'^\.method ([^\n]+)\n.*?^\.end method', text, re.M | re.S)}


def canonical_smali(text):
    # Normalize encodings, not behavior: string width, line debug metadata,
    # implicit static zero/null, and equivalent exception-protection intervals.
    text = text.replace('const-string/jumbo ', 'const-string ')
    # Baksmali annotates numeric hex literals with Float/Double.toString().
    # JDK 17 and 19+ print different decimal spellings for the same bit pattern.
    # Ignore only that numeric comment; retain the opcode, register and exact
    # hex literal. Quoted strings and all exception/control-flow text are intact.
    text = re.sub(
        r'^([ \t]*(?:(?:const(?:-wide)?(?:/[a-z0-9]+)?)[ \t]+[vp]\d+,[ \t]+)?'
        r'-?0x[0-9a-fA-F]+[lLsStT]?)[ \t]+#[ \t]+'
        r'(?:[-+]?(?:\d+(?:\.\d*)?|\.\d+)(?:[eE][-+]?\d+)?[fFdD]?|[-+]?Infinity|NaN)[ \t]*$',
        r'\1', text, flags=re.M)
    text = re.sub(r'^(\.field [^\n]*\bstatic\b[^\n]*?) = (?:false|null)$', r'\1', text, flags=re.M)
    text = '\n'.join(line for line in text.splitlines()
                     if line.strip() and not re.fullmatch(r'\s*\.line \d+\s*', line))

    def exceptions(match):
        value = match.group()
        if '.catch' not in value:
            return value
        kept, labels, catches = [], {}, []
        for line in value.splitlines():
            stripped = line.strip()
            label = re.fullmatch(r'(:[\w]+)', stripped)
            if label:
                labels[label[1]] = len(kept)
                if stripped.startswith((':try_start_', ':try_end_')):
                    continue
            catch = re.fullmatch(r'\.catch(all)?(?: (L[^;]+;))? \{(:\w+) \.\. (:\w+)\} (:\w+)', stripped)
            if catch:
                catches.append((catch[2] or '*', catch[3], catch[4], catch[5]))
                continue
            kept.append(line)
        coverage = {}
        for kind, begin, end, handler in catches:
            target = (kind, labels[handler])
            for index in range(labels[begin], labels[end]):
                handlers = coverage.setdefault(index, [])
                if target not in handlers:
                    handlers.append(target)
        spans = []
        for index, handlers in sorted(coverage.items()):
            if spans and spans[-1][1] == index and spans[-1][2] == handlers:
                spans[-1][1] = index + 1
            else:
                spans.append([index, index + 1, handlers])
        return '\n'.join(kept) + '\n# exception coverage ' + json.dumps(spans, separators=(',', ':'))

    return re.sub(r'^\.method [^\n]+\n.*?^\.end method', exceptions, text, flags=re.M | re.S)


def inside(root, rel):
    path = root / rel
    if not path.resolve().is_relative_to(root):
        raise ValueError('Input escapes project: ' + str(rel))
    return path


def load_config(root):
    config = json.loads((root / 'project.json').read_text(encoding='utf-8'))
    if config['schema'] != 3 or 'baseline' in config or 'method_patches' in config:
        raise ValueError('Use schema 3 source configuration, without an APK baseline or patches')
    if not re.fullmatch(r'\d+(?:\.\d+){1,2}', config['version_name']):
        raise ValueError('Invalid version name')
    if not isinstance(config['version_code'], int) or config['version_code'] <= 0:
        raise ValueError('Invalid version code')
    return config


def asset_inputs(config, variant):
    """Debug never packages private authentication, even on the release machine."""
    if variant not in ('debug', 'release'):
        raise ValueError('Unknown build variant: ' + variant)
    return [entry for entry in config['file_assets']
            if variant in entry.get('variants', ('debug', 'release'))
            and (variant == 'release' or (not entry['source'].startswith('.private/')
                                         and not entry['entry'].startswith('assets/offline-mfi/')))]


def build_paths(root, config, variant):
    suffix = '-debug' if variant == 'debug' else ''
    work = root / ('build/debug' if variant == 'debug' else 'build/current')
    return work, root/'dist'/('06Link-' + config['version_name'] + suffix + '.apk')


def release_signing_inputs(root, config):
    """Fail before compiling if an explicitly requested release lacks credentials."""
    result = {key: inside(root, config['signing_' + key])
              for key in ('keystore', 'password_file')}
    for key, path in result.items():
        if not path.is_file() or not path.stat().st_size:
            raise ValueError('Release signing requires local ' + key + ': ' +
                             str(path.relative_to(root)) +
                             '; use --variant debug for a credential-free test build')
    result['alias'] = config['signing_alias']
    result['certificate_sha256'] = config['signing_certificate_sha256']
    return result


def source_inputs(root, config, variant='debug'):
    layout = config['sources']
    java = sorted(inside(root, layout['java_root']).rglob('*.java'))
    if not java:
        raise ValueError('No Java sources')
    smali = {}
    for dex, rel in layout['smali_roots'].items():
        if not re.fullmatch(r'classes(?:[2-9]|[1-9]\d+)?.dex', dex):
            raise ValueError('Invalid DEX partition: ' + dex)
        files = sorted(inside(root, rel).rglob('*.smali'))
        if not files:
            raise ValueError('No Smali sources: ' + rel)
        smali[dex] = files
    for f in [*java, *(p for files in smali.values() for p in files)]:
        inside(root, f.relative_to(root))
    for section in ('manifest', 'resource_ids'):
        if not inside(root, layout[section]).is_file():
            raise ValueError('Missing source input: ' + layout[section])
    manifest = ET.parse(inside(root, layout['manifest'])).getroot()
    if manifest.attrib['package'] != config['application_id']:
        raise ValueError('Manifest package differs from project.json')
    for entry in asset_inputs(config, variant):
        path = inside(root, entry['source'])
        if not path.is_file() or path.stat().st_size == 0:
            raise ValueError('Missing required ' + variant + ' asset: ' + entry['source'] +
                             ('; use --variant debug without private authentication' if variant == 'release' else ''))
        if entry.get('sha256') and digest(path) != entry['sha256']:
            raise ValueError('Asset checksum mismatch: ' + entry['entry'])
    if variant == 'release':
        release_signing_inputs(root, config)
    return java, smali


def audit_symbols(folders):
    classes = {}
    for folder in folders:
        for path in sorted(folder.rglob('*.smali')):
            value = path.read_text(encoding='utf-8')
            owner = re.search(r'^\.class[^\n]+', value, re.M).group().split()[-1]
            if owner in classes:
                raise ValueError('Duplicate runtime class: ' + owner)
            classes[owner] = {
                'methods': set(methods(value)),
                'fields': set(re.findall(r'^\.field [^\n]*?([^\s]+:[^\s=]+)', value, re.M)),
                'parents': re.findall(r'^\.(?:super|implements) (\S+)', value, re.M),
            }

    def exists(owner, member, kind, seen=None):
        if owner not in classes:
            return not owner.startswith('Lcom/shilapi/xcertplay/')
        seen = set() if seen is None else seen
        if owner in seen:
            return False
        seen.add(owner)
        entry = classes[owner]
        return member in entry[kind] or any(exists(p, member, kind, seen) for p in entry['parents'])

    for folder in folders:
        for path in sorted(folder.rglob('*.smali')):
            for line in path.read_text(encoding='utf-8').splitlines():
                if not re.match(r'\s*(invoke-|[is][gp]et|[is]put|new-instance|check-cast|instance-of|const-class)', line):
                    continue
                for name in re.findall(r'Lcom/shilapi/xcertplay/[^;\s"<>]+;', line):
                    if name not in classes:
                        raise ValueError('Missing runtime class in ' + str(path) + ': ' + name)
                match = re.search(r'(Lcom/shilapi/xcertplay/[^;]+;)->([^\s,]+)', line)
                if match and not exists(match[1], match[2], 'methods' if 'invoke-' in line else 'fields'):
                    raise ValueError('Missing runtime member in ' + str(path) + ': ' + line)
    return classes


def output_folder(work, dex):
    # Preserve the established inspection paths; these are generated output only.
    return work / ('merged' if dex == 'classes2.dex' else 'merged-' + dex[:-4])


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--root', type=Path, default=Path(__file__).resolve().parent.parent)
    parser.add_argument('--variant', choices=('debug', 'release'), default='debug',
                        help='debug: no private assets, local test signature (default); release: requires private credentials')
    parser.add_argument('--check-inputs', action='store_true', help='validate source and selected variant inputs without downloads')
    parser.add_argument('--offline', action='store_true', help='use already cached and verified build tools only')
    args = parser.parse_args()
    root = args.root.resolve()
    config = load_config(root)
    variant = args.variant
    sources, smali_sources = source_inputs(root, config, variant)
    if args.check_inputs:
        print(json.dumps({'variant': variant, 'java_files': len(sources), 'smali_files': sum(map(len, smali_sources.values())),
                          'application_apk_inputs': [], 'patch_inputs': []}))
        return
    tools = resolve_toolchain(root, config, download=not args.offline)
    java_home, sdk = tools['java_home'], tools['android_jar']
    layout = config['sources']
    work, output = build_paths(root, config, variant)
    if work.is_symlink():
        raise ValueError('Build directory must not be a symlink')
    if work.exists():
        shutil.rmtree(work)
    work.mkdir(parents=True)

    def run(label, *command):
        print(label, flush=True)
        with (work/(label+'.log')).open('w') as out:
            result = subprocess.run(list(map(str, command)), stdout=out, stderr=subprocess.STDOUT)
        if result.returncode:
            raise RuntimeError('Build step failed: ' + label + '; see ' + str(work/(label+'.log')))

    java, javac = tools['java'], tools['javac']
    smali_tool, d8, aapt = tools['smali'], tools['r8'], tools['aapt2']
    stubs = sorted((root/'tooling/compile-stubs').rglob('*.java'))
    run('compile-dependencies', javac, '--release', '8', '-encoding', 'UTF-8', '-Xlint:-options', '-cp', sdk, '-d', work/'deps', *stubs)
    run('compile-source', javac, '--release', '8', '-encoding', 'UTF-8', '-Xlint:-options', '-cp', os.pathsep.join((str(sdk), str(work/'deps'))),
        '-d', work/'compiled', *sources)
    (work/'overlay-dex').mkdir()
    run('d8', java, '-cp', d8, 'com.android.tools.r8.D8', '--min-api', config['android_api'],
        '--lib', sdk, '--lib', java_home, '--classpath', work/'deps', '--output', work/'overlay-dex',
        *sorted((work/'compiled').rglob('*.class')))
    if sorted(p.name for p in (work/'overlay-dex').glob('*.dex')) != ['classes.dex']:
        raise ValueError('Java module exceeded one DEX; add an explicit partition')
    # This disassembles freshly compiled Java bytecode, never a previous APK.
    run('java-to-smali', java, '-cp', smali_tool, 'com.android.tools.smali.baksmali.Main',
        'disassemble', '--use-locals', '--sequential-labels', work/'overlay-dex/classes.dex', '-o', work/'overlay')
    targets = {}
    for dex, rel in layout['smali_roots'].items():
        target = output_folder(work, dex)
        shutil.copytree(inside(root, rel), target)
        targets[dex] = target
    java_root = inside(root, layout['java_root'])
    families = {p.relative_to(java_root).with_suffix('').as_posix() for p in sources}
    for p in sorted((work/'overlay').rglob('*.smali')):
        rel = p.relative_to(work/'overlay')
        family = (rel.parent / rel.name.split('$')[0].removesuffix('.smali')).as_posix()
        if family not in families:
            raise ValueError('Unexpected generated Java class: ' + str(rel))
        dex = layout['java_dex'].get(family, layout['default_java_dex'])
        if dex not in targets:
            raise ValueError('Missing DEX source partition: ' + dex)
        if any((folder/rel).exists() for folder in targets.values()):
            raise ValueError('Class has both Java and Smali source: ' + str(rel))
        dest = targets[dex]/rel
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(p, dest)
    classes = audit_symbols(targets.values())
    new_dexes = {}
    for dex, target in targets.items():
        result = work/('updated.dex' if dex == 'classes2.dex' else 'updated-'+dex)
        run('assemble-'+dex, java, '-cp', smali_tool, 'com.android.tools.smali.smali.Main',
            'assemble', '--api', config['android_api'], '--jobs', '1', target, '-o', result)
        if not result.is_file() or result.stat().st_size < 112:
            raise ValueError('Assembler did not emit a valid DEX: ' + dex)
        new_dexes[dex] = result
        # Ensure the assembled artifact contains every source class and its exact code.
        verified = work/'verified'/dex[:-4]
        run('verify-'+dex, java, '-cp', smali_tool, 'com.android.tools.smali.baksmali.Main',
            'disassemble', '--use-locals', '--sequential-labels', result, '-o', verified)
        expected = {p.relative_to(target): canonical_smali(p.read_text(encoding='utf-8')) for p in target.rglob('*.smali')}
        actual = {p.relative_to(verified): canonical_smali(p.read_text(encoding='utf-8')) for p in verified.rglob('*.smali')}
        if expected != actual:
            changed = sorted(str(p) for p in expected.keys() | actual.keys() if expected.get(p) != actual.get(p))
            (work/'assembly-differences.json').write_text(json.dumps(changed, indent=2)+'\n', encoding='utf-8')
            raise ValueError('DEX/source round-trip mismatch; see assembly-differences.json')

    extra = {}
    crypto = config['crypto_dependency']
    with zipfile.ZipFile(tools['crypto']) as aar:
        jar = work/'conscrypt.jar'
        jar.write_bytes(aar.read('classes.jar'))
        for abi in crypto['abis']:
            extra['lib/'+abi+'/libconscrypt_jni.so'] = aar.read('jni/'+abi+'/libconscrypt_jni.so')
    with zipfile.ZipFile(jar) as archive:
        for entry in archive.namelist():
            if entry.endswith('.class') and 'L'+entry[:-6]+';' in classes:
                raise ValueError('Duplicate dependency class: ' + entry)
        extra['org/conscrypt/conscrypt.properties'] = archive.read('org/conscrypt/conscrypt.properties')
    (work/'crypto-dex').mkdir()
    run('d8-crypto', java, '-cp', d8, 'com.android.tools.r8.D8', '--min-api', config['android_api'],
        '--lib', sdk, '--lib', java_home, '--output', work/'crypto-dex', jar)
    if crypto['dex'] in new_dexes or sorted(p.name for p in (work/'crypto-dex').glob('*.dex')) != ['classes.dex']:
        raise ValueError('Crypto DEX partition collision/overflow')
    new_dexes[crypto['dex']] = work/'crypto-dex/classes.dex'
    extra['assets/conscrypt-NOTICE.txt'] = inside(root, crypto['notice']).read_bytes()

    def add(entry, data):
        if entry in extra or entry.startswith('/') or '..' in entry.split('/') or entry.startswith('META-INF/'):
            raise ValueError('Duplicate or unsafe package entry: ' + entry)
        extra[entry] = data

    for directory, prefix in ((layout['assets'], 'assets/'), (layout['native_libs'], 'lib/'),
                              (layout['runtime_resources'], '')):
        folder = inside(root, directory)
        for p in sorted(folder.rglob('*')):
            if p.is_file() and not p.name.startswith('.'):
                inside(root, p.relative_to(root))
                add(prefix+p.relative_to(folder).as_posix(), p.read_bytes())
    for asset in asset_inputs(config, variant):
        if not asset['entry'].startswith('assets/'):
            raise ValueError('Mapped file is not an asset')
        add(asset['entry'], inside(root, asset['source']).read_bytes())

    manifest = inside(root, layout['manifest'])
    version_name = config['version_name']
    if variant == 'debug':
        # Keep the implementation package/authorities intact. A separate local
        # certificate prevents this test build from overwriting a signed release.
        tree = ET.parse(manifest)
        app = tree.getroot().find('application')
        namespace = 'http://schemas.android.com/apk/res/android'
        app.set('{' + namespace + '}debuggable', 'true')
        app.set('{' + namespace + '}label', config['display_name'] + ' 调试版')
        ET.register_namespace('android', namespace)
        manifest = work/'AndroidManifest-debug.xml'
        tree.write(manifest, encoding='utf-8', xml_declaration=True)
        version_name += '-debug'
        add('assets/build-variant.json', b'{"variant":"debug","mfi_available":false}\n')

    run('compile-resources', aapt, 'compile', '--dir', inside(root, layout['resources']),
        '-o', work/'resources.zip', '--legacy', '--no-crunch')
    run('link-resources', aapt, 'link', '-o', work/'resources.apk', '--manifest', manifest,
        '-I', tools['framework'], '--package-id', '127',
        '--min-sdk-version', config['min_sdk'], '--target-sdk-version', config['target_sdk'],
        '--version-code', config['version_code'], '--version-name', version_name, '--replace-version',
        '--stable-ids', inside(root, layout['resource_ids']), '--emit-ids', work/'resource-ids.txt',
        '--no-auto-version', '--no-version-vectors', '--no-version-transitions',
        '--no-resource-deduping', '--no-resource-removal', work/'resources.zip')
    expected_ids = set(inside(root, layout['resource_ids']).read_text(encoding='utf-8').splitlines())
    emitted_ids = set((work/'resource-ids.txt').read_text(encoding='utf-8').splitlines())
    if not expected_ids <= emitted_ids:
        raise ValueError('Existing resource identifiers changed or disappeared')
    with zipfile.ZipFile(work/'resources.apk') as resources:
        for name in resources.namelist():
            add(name, resources.read(name))
    for dex, path in new_dexes.items():
        add(dex, path.read_bytes())
    unsigned = work/'unsigned.apk'
    with zipfile.ZipFile(unsigned, 'w') as archive:
        for name, data in sorted(extra.items()):
            entry = zipfile.ZipInfo(name, (1980, 1, 1, 0, 0, 0))
            # Preserve the compact distribution: large DEX files stay compressed.
            # Tiny DEX and resource/image entries can be stored without ZIP overhead.
            stored = name.endswith(('.arsc', '.png', '.webp')) or (name.endswith('.dex') and len(data) < 16384)
            entry.compress_type = zipfile.ZIP_STORED if stored else zipfile.ZIP_DEFLATED
            entry.external_attr = 0o100644 << 16
            archive.writestr(entry, data)
    if variant == 'release':
        signing = release_signing_inputs(root, config)
    else:
        keys = inside(root, '.local/debug-signing')
        keys.mkdir(parents=True, exist_ok=True)
        signing = {'keystore': keys/'debug.p12', 'password_file': keys/'debug-password.txt',
                   'alias': 'androiddebugkey', 'certificate_sha256': ''}
        # Public Android debug password; never read the release key/password.
        signing['password_file'].write_text('android\n', encoding='utf-8')
        signing['password_file'].chmod(0o600)
        if not signing['keystore'].exists():
            temporary_key = keys/'debug-new.p12'
            temporary_key.unlink(missing_ok=True)
            run('create-debug-key', tools['keytool'], '-genkeypair', '-keystore', temporary_key,
                '-storetype', 'PKCS12', '-storepass', 'android', '-keypass', 'android',
                '-alias', signing['alias'], '-dname', 'CN=Android Debug,O=Android,C=US',
                '-keyalg', 'RSA', '-keysize', '2048', '-validity', '10000', '-noprompt')
            temporary_key.chmod(0o600)
            os.replace(temporary_key, signing['keystore'])
    run('compile-signer', javac, '--release', '11', '-encoding', 'UTF-8', '-cp', tools['apksig'],
        '-d', work/'signer', root/'tooling/java/SignApk.java')
    signer_classpath = os.pathsep.join((str(work/'signer'), str(tools['apksig'])))
    signed = work/'signed.apk'
    run('sign', java, '-cp', signer_classpath, 'SignApk', unsigned, signed,
        signing['keystore'], signing['password_file'], signing['alias'], signing['certificate_sha256'])
    run('verify-signature', java, '-cp', signer_classpath, 'SignApk', signed)
    signature = (work/'verify-signature.log').read_text(encoding='utf-8')
    if 'verified=true v1=true v2=true v3=true' not in signature:
        raise ValueError('Invalid APK signature')
    if variant == 'release' and config['signing_certificate_sha256'] not in signature:
        raise ValueError('Unexpected release signing certificate')
    if variant == 'debug' and config['signing_certificate_sha256'] in signature:
        raise ValueError('A debug APK must never use the release signing certificate')
    with zipfile.ZipFile(signed) as archive:
        entries = {n for n in archive.namelist() if not n.startswith('META-INF/')}
        if entries != set(extra) or any(archive.read(n) != data for n, data in extra.items()):
            raise ValueError('Signed APK differs from source-built package payload')
    run('manifest-after', aapt, 'dump', 'xmltree', signed, '--file', 'AndroidManifest.xml')
    run('resources-after', aapt, 'dump', 'resources', signed)
    audit = {
        'version_name': version_name, 'version_code': config['version_code'],
        'variant': variant, 'mfi_assets_included': variant == 'release',
        'signing_certificate_sha256': re.search(r'certificate SHA-256=([0-9a-f]{64})', signature)[1],
        'build_model': config['architecture'], 'source_origin': config['source_origin'],
        'application_apk_inputs': [], 'method_patch_inputs': [],
        'apk_sha256': digest(signed), 'compiled_sources': [p.relative_to(root).as_posix() for p in sources],
        'assembled_source_classes': sum(map(len, smali_sources.values())), 'runtime_classes': len(classes),
        'audited_methods': sum(len(c['methods']) for c in classes.values()),
        'source_round_trip': True, 'resource_ids_preserved': len(expected_ids),
        'package_payload_sha256': {n: hashlib.sha256(data).hexdigest() for n, data in sorted(extra.items())},
        'source_sha256': {p.relative_to(root).as_posix(): digest(p) for p in sources},
        'runtime': 'not installed',
    }
    (work/'audit.json').write_text(json.dumps(audit, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')
    output.parent.mkdir(exist_ok=True)
    shutil.copyfile(signed, output.with_suffix('.apk.tmp'))
    os.replace(output.with_suffix('.apk.tmp'), output)
    output.with_suffix('.sha256').write_text(digest(output)+'  '+output.name+'\n', encoding='utf-8')
    latest = root/'build/last-build.json'
    latest.with_suffix('.json.tmp').write_text(json.dumps({
        'variant': variant, 'work_dir': work.relative_to(root).as_posix(),
        'apk': output.relative_to(root).as_posix(), 'version_name': version_name,
        'version_code': config['version_code'], 'apk_sha256': digest(output),
    }, indent=2) + '\n', encoding='utf-8')
    os.replace(latest.with_suffix('.json.tmp'), latest)
    print(output)
    if variant == 'debug':
        print('Debug build: local test signature; no MFi credentials; UI/settings testing only. Cannot update an installed release.')


if __name__ == '__main__':
    main()
