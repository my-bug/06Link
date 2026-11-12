#!/usr/bin/env python3
"""Resolve pinned public build tools. No application APK or private key is needed.

The lock file is tooling/manifest.json. Binaries are cached outside Git; unchanged
legacy local copies may be reused only after matching the same SHA-256 lock.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
import platform
import re
import shutil
import subprocess
import sys
import tempfile
import urllib.error
import urllib.request
import zipfile
from pathlib import Path


class ToolchainError(RuntimeError):
    pass


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b''):
            digest.update(block)
    return digest.hexdigest()


def _matches(path: Path, expected: str) -> bool:
    return path.is_file() and sha256(path) == expected


def find_java(config: dict | None = None, minimum: int = 17) -> dict[str, Path]:
    """Use an explicit JDK, then platform discovery; never download a JDK."""
    config = config or {}
    explicit = config.get('java_home') or os.environ.get('JAVA_HOME') or os.environ.get('JDK_HOME')
    homes: list[Path] = []
    if explicit:
        homes.append(Path(explicit).expanduser())
    else:
        if sys.platform == 'darwin':
            helper = Path('/usr/libexec/java_home')
            if helper.exists():
                found = subprocess.run([str(helper)], capture_output=True, text=True)
                if found.returncode == 0:
                    homes.append(Path(found.stdout.strip()))
            homes += list(Path('/Library/Java/JavaVirtualMachines').glob('*/Contents/Home'))
            homes += list((Path.home() / 'Library/Java/JavaVirtualMachines').glob('*/Contents/Home'))
            homes.append(Path('/Applications/Android Studio.app/Contents/jbr/Contents/Home'))
        javac = shutil.which('javac')
        if javac:
            resolved = Path(javac).resolve()
            # macOS /usr/bin/javac is a launcher, not a JDK rooted at /usr.
            if not (sys.platform == 'darwin' and resolved == Path('/usr/bin/javac')):
                homes.append(resolved.parent.parent)
        if sys.platform.startswith('linux'):
            homes += list(Path('/usr/lib/jvm').glob('*'))
    errors = []
    suffix = '.exe' if os.name == 'nt' else ''
    for home in dict.fromkeys(homes):
        paths = {name: home / 'bin' / (name + suffix) for name in ('java', 'javac', 'keytool')}
        if not all(path.is_file() for path in paths.values()):
            errors.append(str(home) + ': missing java, javac or keytool')
            continue
        result = subprocess.run([str(paths['javac']), '-version'], capture_output=True, text=True)
        output = result.stdout + result.stderr
        match = re.search(r'javac\s+(?:1\.)?(\d+)', output)
        if result.returncode or not match or int(match.group(1)) < minimum:
            errors.append(str(home) + ': requires JDK ' + str(minimum) + '+')
            continue
        paths['java_home'] = home.resolve()
        return paths
    detail = ('\n' + '\n'.join(errors)) if errors else ''
    raise ToolchainError('Install JDK ' + str(minimum) + '+ and set JAVA_HOME to its root directory.' + detail)


def _download(url: str, target: Path, expected: str) -> None:
    """HTTPS with normal certificate checks; curl uses the OS trust store on macOS."""
    if not url.startswith('https://'):
        raise ToolchainError('Tool downloads must use HTTPS: ' + url)
    target.parent.mkdir(parents=True, exist_ok=True)
    fd, temporary = tempfile.mkstemp(prefix=target.name + '.', suffix='.part', dir=target.parent)
    os.close(fd)
    part = Path(temporary)
    print('Downloading ' + target.name, file=sys.stderr)
    try:
        curl = shutil.which('curl')
        if curl:
            result = subprocess.run([
                curl, '--fail', '--location', '--silent', '--show-error', '--http1.1',
                '--proto', '=https', '--proto-redir', '=https', '--retry', '2',
                '--connect-timeout', '20', '--max-time', '300',
                '--output', str(part), url,
            ], capture_output=True, text=True)
            if result.returncode:
                raise ToolchainError('Download failed for ' + target.name + ': ' + result.stderr.strip())
        else:
            request = urllib.request.Request(url, headers={'User-Agent': '06Link-source-build'})
            with urllib.request.urlopen(request, timeout=90) as response, part.open('wb') as out:
                if not response.url.startswith('https://'):
                    raise ToolchainError('Refused a non-HTTPS download redirect')
                shutil.copyfileobj(response, out, length=1024 * 1024)
        actual = sha256(part)
        if actual != expected:
            raise ToolchainError('SHA-256 mismatch for ' + target.name + ': expected ' + expected + ', got ' + actual)
        os.replace(part, target)
    except (OSError, urllib.error.URLError) as error:
        raise ToolchainError('Cannot download ' + target.name + ': ' + str(error)) from error
    finally:
        part.unlink(missing_ok=True)


def _candidate(root: Path, cache: Path, spec: dict) -> Path | None:
    candidates = [cache / spec['file']]
    candidates += [root / relative for relative in spec.get('local_candidates', [])]
    for candidate in candidates:
        if _matches(candidate, spec['sha256']):
            return candidate
    return None


def _extract(archive: Path, spec: dict, target: Path) -> None:
    target.parent.mkdir(parents=True, exist_ok=True)
    fd, temporary = tempfile.mkstemp(prefix=target.name + '.', suffix='.part', dir=target.parent)
    os.close(fd)
    part = Path(temporary)
    try:
        # Extract only the exact pinned member, never arbitrary paths from an archive.
        with zipfile.ZipFile(archive) as source, source.open(spec['member']) as member, part.open('wb') as out:
            shutil.copyfileobj(member, out, length=1024 * 1024)
        if not _matches(part, spec['sha256']):
            raise ToolchainError('Extracted tool checksum mismatch: ' + spec['member'])
        os.replace(part, target)
    finally:
        part.unlink(missing_ok=True)


def resolve(root: Path, config: dict | None = None, download: bool = True) -> dict[str, Path]:
    """Return java/javac/keytool/java_home/android_jar/aapt2/smali/r8/apksig/framework/crypto.

    Every dependency is checked against the lock file on every resolution. Missing
    artifacts download once when download=True. False is strictly offline, but can
    still extract a pinned member from a verified archive already on disk.
    """
    root = Path(root).resolve()
    manifest = json.loads((root / 'tooling/manifest.json').read_text(encoding='utf-8'))
    if manifest.get('schema') != 2:
        raise ToolchainError('Unsupported tooling/manifest.json schema')
    result = find_java(config, manifest['jdk']['minimum'])
    cache = Path(os.environ.get('SIXLINK_TOOLCHAIN_CACHE', root / 'tooling/cache')).expanduser().resolve()
    for name, spec in manifest['downloads'].items():
        candidate = _candidate(root, cache, spec)
        if candidate is None:
            candidate = cache / spec['file']
            if not download:
                raise ToolchainError('Missing or changed tool: ' + name + '. Run python3 scripts/toolchain.py online once.')
            _download(spec['url'], candidate, spec['sha256'])
        result[name] = candidate
    host = platform.system().lower()
    architecture = platform.machine().lower()
    for name, entry in manifest['extractions'].items():
        spec = entry
        if 'platforms' in entry:
            spec = entry['platforms'].get(host)
            if not spec or architecture not in spec['architectures']:
                raise ToolchainError('No pinned ' + name + ' for ' + host + '/' + architecture + '. Use macOS arm64/x86_64 or Linux x86_64.')
        candidate = _candidate(root, cache, spec)
        if candidate is None:
            candidate = cache / spec['file']
            _extract(result[entry['archive']], spec, candidate)
        if entry.get('executable') and os.name != 'nt':
            candidate.chmod(candidate.stat().st_mode | 0o111)
        result[name] = candidate
    return result


def verify(paths: dict[str, Path]) -> None:
    """Exercise tool entry points; the source build performs the full integration check."""
    java = str(paths['java'])
    commands = [
        [str(paths['javac']), '-version'],
        [java, '-jar', str(paths['smali']), '--version'],
        [java, '-cp', str(paths['smali']), 'com.android.tools.smali.smali.Main', '--version'],
        [java, '-cp', str(paths['r8']), 'com.android.tools.r8.D8', '--version'],
        [str(paths['aapt2']), 'version'],
    ]
    for command in commands:
        completed = subprocess.run(command, capture_output=True, text=True)
        if completed.returncode:
            raise ToolchainError('Tool could not run: ' + command[0] + '\n' + completed.stderr.strip())
        print((completed.stdout + completed.stderr).strip())
    for name, member in (
        ('android_jar', 'android/app/Activity.class'),
        ('apksig', 'com/android/apksig/ApkSigner.class'),
        ('crypto', 'classes.jar'),
        ('framework', 'resources.arsc'),
    ):
        with zipfile.ZipFile(paths[name]) as archive:
            archive.getinfo(member)
    print('Pinned toolchain verified.')


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--root', type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument('--offline', action='store_true', help='Never download; require cached dependencies.')
    parser.add_argument('--verify', action='store_true', help='Also run compiler/assembler/resource tool version checks.')
    args = parser.parse_args()
    try:
        paths = resolve(args.root, download=not args.offline)
        if args.verify:
            verify(paths)
        else:
            for name, path in paths.items():
                print(name + ': ' + str(path))
    except (ToolchainError, OSError, ValueError, KeyError, zipfile.BadZipFile) as error:
        parser.exit(1, 'Toolchain error: ' + str(error) + '\n')


if __name__ == '__main__':
    main()
