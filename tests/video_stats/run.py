#!/usr/bin/env python3
"""Assemble only VideoStats, then exercise its emitted instructions on the host.

No APK, device, network, build.py or pre-existing application build is used.
"""
from pathlib import Path
import hashlib
import json
import os
import shutil
import subprocess
import sys
import tempfile
import threading
from concurrent.futures import ThreadPoolExecutor

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
sys.path.insert(0, str(ROOT / 'scripts'))
from toolchain import find_java
from smali_runtime import Runtime


class Clock:
    now = 1_000_000_000

    def __call__(self):
        return self.now


def check(source):
    runtime = Runtime(source)
    assert 'declared-synchronized' not in runtime.methods['logIfDue()Ljava/lang/String;'].declaration
    call = runtime.run
    report = lambda stats: call(stats, 'logIfDue()Ljava/lang/String;')

    def frame(stats, size=1000):
        call(stats, 'onReceived(I)V', size)
        call(stats, 'onRendered()V')

    clock = Clock()
    windows = []
    stats = runtime.stats(clock, lambda window: windows.append(window.fields.copy()))
    frame(stats)
    clock.now += 4_999_999_999
    assert report(stats) is None
    clock.now += 1
    text = report(stats)
    assert 'rx=0.2fps shown=0.2fps' in text and 'kbps=1' in text
    assert 'avg=-1ms max=0ms n=0 touchSendMax=0ms' in text
    assert windows == [dict(rx=0.2, shown=0.2, recoveries=0)]
    assert report(stats) is None
    clock.now += 5_000_000_000
    assert report(stats) is None
    assert stats.fields['windowStartNs'] == clock.now

    # Each slow operation is deliberately held while all three writers and a
    # second reporter must complete. Releasing the operation must not erase the
    # frames written into the next window.
    for blocked in ('format', 'log', 'callback'):
        runtime = Runtime(source)
        call = runtime.run
        clock = Clock()
        entered, release = threading.Event(), threading.Event()
        windows, logs = [], []

        def barrier():
            entered.set()
            assert release.wait(3), 'test failed to release blocked operation'

        def logger(tag, text):
            logs.append(text)
            if blocked == 'log':
                barrier()
            return 0

        def callback(window):
            windows.append(window.fields.copy())
            if blocked == 'callback':
                barrier()

        def formatter(pattern, values):
            if blocked == 'format':
                barrier()
            return pattern % tuple(values)

        runtime.log, runtime.format = logger, formatter
        stats = runtime.stats(clock, callback)
        frame(stats)
        clock.now += 5_000_000_000
        with ThreadPoolExecutor(max_workers=4) as pool:
            first = pool.submit(report, stats)
            assert entered.wait(2), blocked
            try:
                pool.submit(frame, stats, 2000).result(timeout=1)
                pool.submit(call, stats, 'onRecovery()V').result(timeout=1)
                assert pool.submit(report, stats).result(timeout=1) is None
                assert stats.fields['received'] == 1 and stats.fields['rendered'] == 1
            finally:
                release.set()
            assert first.result(timeout=1)
        assert len(logs) == 1 and windows == [dict(rx=0.2, shown=0.2, recoveries=0)]
        clock.now += 5_000_000_000
        second = report(stats)
        assert 'kbps=3' in second and 'recoveries=1' in second
        assert len(logs) == 2 and windows[-1] == dict(rx=0.2, shown=0.2, recoveries=1)
        assert stats.fields['received'] == stats.fields['rendered'] == 0

    # Concurrent reporting owns a window once; all concurrently arriving frames
    # belong to exactly one of the current/next windows.
    runtime = Runtime(source)
    call = runtime.run
    clock = Clock()
    windows = []
    stats = runtime.stats(clock, lambda window: windows.append(window.fields.copy()))
    frame(stats)
    clock.now += 5_000_000_000
    gate = threading.Barrier(9)

    def race():
        gate.wait()
        return report(stats)

    with ThreadPoolExecutor(max_workers=8) as pool:
        futures = [pool.submit(race) for _ in range(8)]
        gate.wait()
        assert sum(f.result(timeout=2) is not None for f in futures) == 1
    assert len(windows) == 1

    # A throwing callback is swallowed, can write into the next window, and
    # cannot cause a duplicate report or reset those new counters.
    def failing(window):
        frame(stats)
        assert report(stats) is None
        raise RuntimeError('callback failed')

    stats.fields['onWindow'] = failing
    frame(stats)
    clock.now += 5_000_000_000
    assert report(stats)
    assert stats.fields['received'] == stats.fields['rendered'] == 1
    assert report(stats) is None
    stats.fields['onWindow'] = None
    clock.now += 5_000_000_000
    assert 'rx=0.2fps shown=0.2fps' in report(stats)

    # Source clock failure releases the monitor without consuming the window.
    old_start = stats.fields['windowStartNs']
    frame(stats)

    def bad_clock():
        raise RuntimeError('clock failed')

    stats.fields['nanoTime'] = bad_clock
    try:
        report(stats)
        raise AssertionError('clock failure must propagate')
    except RuntimeError:
        pass
    assert stats.fields['received'] == 1 and stats.fields['windowStartNs'] == old_start
    stats.fields['nanoTime'] = clock
    with ThreadPoolExecutor(max_workers=1) as pool:
        pool.submit(frame, stats).result(timeout=1)
    clock.now += 5_000_000_000
    assert 'rx=0.4fps shown=0.4fps' in report(stats)

    # Logging failures still propagate, but cannot keep a closed window live or
    # consume frames that arrive after its snapshot.
    frame(stats)
    clock.now += 5_000_000_000

    def bad_log(tag, text):
        frame(stats)
        raise RuntimeError('log failed')

    runtime.log = bad_log
    try:
        report(stats)
        raise AssertionError('log failure must propagate')
    except RuntimeError:
        pass
    assert stats.fields['received'] == stats.fields['rendered'] == 1
    assert report(stats) is None
    runtime.log = lambda tag, text: 0
    clock.now += 5_000_000_000
    assert 'rx=0.2fps shown=0.2fps' in report(stats)

    # Touch totals and the pre-existing cross-window arrival-gap semantics remain.
    stats = runtime.stats(clock)
    runtime.touch.fields.update(pending=clock.now - 20_000_000, maximum=7_000_000)
    frame(stats)
    clock.now += 30_000_000
    frame(stats)
    clock.now += 4_970_000_000
    text = report(stats)
    assert 'maxGap=30ms' in text and 'avg=20ms max=20ms n=1 touchSendMax=7ms' in text
    assert runtime.touch.fields['maximum'] == 0
    assert stats.fields['touchSamples'] == stats.fields['touchLatencySumNs'] == 0
    print('PASS VideoStats emitted Smali: unlocked slow paths, atomic windows, races, callback/clock/log failures, metrics')


def main():
    spec = json.loads((ROOT / 'tooling/manifest.json').read_text())['downloads']['smali']
    cache = Path(os.environ.get('SIXLINK_TOOLCHAIN_CACHE', ROOT / 'tooling/cache'))
    candidates = [cache / spec['file'], *(ROOT / p for p in spec.get('local_candidates', []))]
    tool = next((p for p in candidates if p.is_file() and hashlib.sha256(p.read_bytes()).hexdigest() == spec['sha256']), None)
    if tool is None:
        raise SystemExit('Pinned Smali tool is not cached; this test never downloads tools.')
    java = str(find_java()['java'])
    with tempfile.TemporaryDirectory(prefix='06link-video-stats-') as directory:
        work = Path(directory)
        sources = work / 'sources'
        sources.mkdir()
        family = ROOT / 'src/core/smali/classes/com/shilapi/xcertplay/media'
        for source in family.glob('VideoStats*.smali'):
            shutil.copy2(source, sources / source.name)
        subprocess.run([java, '-cp', str(tool), 'com.android.tools.smali.smali.Main', 'assemble',
                        '--api', '22', '--jobs', '1', str(sources), '-o', str(work / 'stats.dex')], check=True)
        subprocess.run([java, '-cp', str(tool), 'com.android.tools.smali.baksmali.Main', 'disassemble',
                        '--use-locals', str(work / 'stats.dex'), '-o', str(work / 'verified')], check=True)
        emitted = work / 'verified/com/shilapi/xcertplay/media/VideoStats.smali'
        check(emitted.read_text())


if __name__ == '__main__':
    main()
