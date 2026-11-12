"""Offline cache integrity and platform selection regression checks."""
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import subprocess
import tempfile
import unittest
from unittest import mock
import zipfile

ROOT = Path(__file__).resolve().parents[2]
spec = importlib.util.spec_from_file_location('sixlink_toolchain', ROOT / 'scripts/toolchain.py')
toolchain = importlib.util.module_from_spec(spec)
spec.loader.exec_module(toolchain)


def digest(data):
    return hashlib.sha256(data).hexdigest()


class ToolchainTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        (self.root / 'tooling').mkdir()

    def make_lock(self):
        archive = self.root / 'tooling/archive.jar'
        with zipfile.ZipFile(archive, 'w') as output:
            output.writestr('prebuilt/macosx/aapt2', b'mac-tool')
            output.writestr('prebuilt/linux/aapt2', b'linux-tool')
        lock = {
            'schema': 2, 'jdk': {'minimum': 17},
            'downloads': {'smali': {
                'file': 'archive.jar', 'sha256': toolchain.sha256(archive),
                'url': 'https://example.invalid/archive.jar',
                'local_candidates': ['tooling/archive.jar'],
            }},
            'extractions': {'aapt2': {'archive': 'smali', 'executable': True,
                'platforms': {
                    'darwin': {'file': 'mac-aapt2', 'member': 'prebuilt/macosx/aapt2',
                               'architectures': ['arm64', 'x86_64'], 'sha256': digest(b'mac-tool')},
                    'linux': {'file': 'linux-aapt2', 'member': 'prebuilt/linux/aapt2',
                              'architectures': ['x86_64'], 'sha256': digest(b'linux-tool')},
                }}},
        }
        (self.root / 'tooling/manifest.json').write_text(json.dumps(lock))
        return lock

    def resolve(self, system='Darwin', machine='arm64'):
        with mock.patch.object(toolchain, 'find_java', return_value={}), \
                mock.patch.object(toolchain.platform, 'system', return_value=system), \
                mock.patch.object(toolchain.platform, 'machine', return_value=machine), \
                mock.patch.dict(os.environ, {'SIXLINK_TOOLCHAIN_CACHE': str(self.root / 'cache')}):
            return toolchain.resolve(self.root, download=False)

    def test_offline_extracts_the_correct_host_binary(self):
        self.make_lock()
        self.assertEqual(self.resolve()['aapt2'].read_bytes(), b'mac-tool')
        self.assertEqual(self.resolve('Linux', 'x86_64')['aapt2'].read_bytes(), b'linux-tool')

    def test_offline_never_accepts_a_changed_local_tool(self):
        self.make_lock()
        (self.root / 'tooling/archive.jar').write_bytes(b'changed')
        with mock.patch.object(toolchain, '_download') as download:
            with self.assertRaisesRegex(toolchain.ToolchainError, 'Missing or changed'):
                self.resolve()
            download.assert_not_called()

    def test_changed_extracted_tool_is_repaired_from_verified_archive(self):
        self.make_lock()
        binary = self.resolve()['aapt2']
        binary.write_bytes(b'corrupt')
        self.assertEqual(self.resolve()['aapt2'].read_bytes(), b'mac-tool')

    def test_unsupported_native_architecture_is_explicit(self):
        self.make_lock()
        with self.assertRaisesRegex(toolchain.ToolchainError, 'No pinned aapt2 for linux/aarch64'):
            self.resolve('Linux', 'aarch64')

    def test_bad_download_does_not_replace_cached_file(self):
        target = self.root / 'target.jar'
        target.write_bytes(b'old')
        def fake_curl(command, **kwargs):
            Path(command[command.index('--output') + 1]).write_bytes(b'bad payload')
            return subprocess.CompletedProcess(command, 0, '', '')
        with mock.patch.object(toolchain.shutil, 'which', return_value='/usr/bin/curl'), \
                mock.patch.object(toolchain.subprocess, 'run', side_effect=fake_curl):
            with self.assertRaisesRegex(toolchain.ToolchainError, 'SHA-256 mismatch'):
                toolchain._download('https://example.invalid/tool.jar', target, digest(b'expected'))
        self.assertEqual(target.read_bytes(), b'old')
        self.assertEqual(list(self.root.glob('*.part')), [])

    def test_macos_launcher_is_not_mistaken_for_a_jdk_at_usr(self):
        home = self.root / 'jdk17'
        (home / 'bin').mkdir(parents=True)
        for name in ('java', 'javac', 'keytool'):
            (home / 'bin' / name).write_text('test')
        def invoke(command, **kwargs):
            text = str(home) if command[0] == '/usr/libexec/java_home' else 'javac 17.0.17'
            return subprocess.CompletedProcess(command, 0, text, '')
        with mock.patch.dict(os.environ, {}, clear=True), \
                mock.patch.object(toolchain.sys, 'platform', 'darwin'), \
                mock.patch.object(toolchain.shutil, 'which', return_value='/usr/bin/javac'), \
                mock.patch.object(Path, 'exists', return_value=True), \
                mock.patch.object(toolchain.subprocess, 'run', side_effect=invoke):
            self.assertEqual(toolchain.find_java()['java_home'], home.resolve())

    def test_explicit_invalid_java_home_does_not_silently_use_another_jdk(self):
        with self.assertRaisesRegex(toolchain.ToolchainError, 'Install JDK 17'):
            toolchain.find_java({'java_home': str(self.root / 'missing-jdk')})


if __name__ == '__main__':
    unittest.main()
