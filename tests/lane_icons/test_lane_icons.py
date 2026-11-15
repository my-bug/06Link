#!/usr/bin/env python3
"""Execute the OEM lane mapping against documented examples and unknown-branch cases."""
from pathlib import Path
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'scripts'))
from test_support import find_java

JAVA = find_java()['java_home'] / 'bin'
PROBE = r'''
package com.shilapi.xcertplay;
import java.util.Arrays;
public final class LaneIconsTest {
    static int checks;
    static void check(int expected, int status, int highlight, int... angles) {
        int[] before = angles == null ? null : angles.clone();
        int actual = E01LaneIcons.icon(status, highlight, angles);
        if (actual != expected) throw new AssertionError("status=" + status + " highlight="
                + highlight + " angles=" + Arrays.toString(angles)
                + " expected=" + expected + " actual=" + actual);
        if (!Arrays.equals(angles, before)) throw new AssertionError("Input mutated");
        checks++;
    }
    public static void main(String[] args) {
        // The original protocol table's normal lane icons.
        check(0, 0, 1000, 0);
        check(1, 0, 1000, -90);
        check(2, 0, 1000, -90, 0);
        check(3, 0, 1000, 90);
        check(4, 0, 1000, 90, 0);
        // E01 exposes a usable style, not separate good/preferred styles.
        for (int status = 1; status <= 2; status++) {
            check(15, status, 0, 0);
            check(16, status, -90, -90);
            check(18, status, 90, 90);
            check(30, status, 0, -90, 0);
            check(31, status, -90, 0, -90);
            check(32, status, 0, 90, 0);
            check(33, status, 90, 0, 90);
            // Highlight can add a branch absent from the angle array.
            check(30, status, 0, -90);
            check(31, status, -90, 0);
            check(32, status, 0, 90);
            check(33, status, 90, 0);
            check(15, status, 0);
            check(31, status, -90, -90, 0, -90, 0);
            check(-1, status, 1000, 0);
            check(-1, status, -1000, 0);
            // Never omit an unsupported branch even if the primary is supported.
            for (int unknown : new int[]{-180, -135, -45, 1, 45, 135, 180, 1000}) {
                check(-1, status, 0, 0, unknown);
                check(-1, status, unknown, 0);
            }
            check(-1, status, -90, -90, 90);
            check(-1, status, 0, -90, 0, 90);
        }
        check(2, 0, -90, 0);
        check(0, 0, -1000, 0);
        check(-1, 0, 45, 0);
        check(-1, 0, 1000);
        check(-1, 0, 1000, -90, 90);
        check(-1, 0, 1000, -90, 0, 90);
        check(-1, -1, 0, 0);
        check(-1, 3, 0, 0);
        check(-1, 1, 0, (int[]) null);
        check(-1, 1, 0, new int[17]);
        System.out.println("OEM lane icon mapping: " + checks + " cases passed");
    }
}
'''
with tempfile.TemporaryDirectory(prefix='06link-lane-icons-') as tmp:
    work = Path(tmp)
    probe = work / 'LaneIconsTest.java'
    probe.write_text(PROBE)
    subprocess.run([str(JAVA / 'javac'), '--release', '8', '-d', str(work / 'classes'),
                    str(ROOT / 'src/e01/com/shilapi/xcertplay/E01LaneIcons.java'),
                    str(probe)], check=True)
    subprocess.run([str(JAVA / 'java'), '-Xmx32m', '-cp', str(work / 'classes'),
                    'com.shilapi.xcertplay.LaneIconsTest'], check=True)
