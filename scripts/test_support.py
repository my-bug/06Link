"""Portable, variant-aware paths for the maintained host-side regression suite."""
from pathlib import Path
import json
import os
from toolchain import find_java, resolve
from build import asset_inputs, build_paths, load_config

ROOT = Path(__file__).resolve().parents[1]

def build_variant(root=ROOT):
    value = os.environ.get('SIXLINK_BUILD_VARIANT')
    marker = Path(root) / 'build/last-build.json'
    if not value and marker.is_file():
        value = json.loads(marker.read_text())['variant']
    value = value or 'debug'
    if value not in ('debug', 'release'):
        raise ValueError('SIXLINK_BUILD_VARIANT must be debug or release')
    return value

def build_dir(root=ROOT):
    root = Path(root)
    return build_paths(root, load_config(root), build_variant(root))[0]

def build_apk(root=ROOT):
    root = Path(root)
    return build_paths(root, load_config(root), build_variant(root))[1]
