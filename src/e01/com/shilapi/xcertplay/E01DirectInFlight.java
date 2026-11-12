package com.shilapi.xcertplay;

import java.util.HashSet;
import java.util.Set;

/** Counts picture access units, not input packets or codec configuration output. */
final class E01DirectInFlight {
    private final int limit;
    private final Set<Long> pending = new HashSet<Long>();

    E01DirectInFlight(int limit) {
        if (limit < 1) throw new IllegalArgumentException("limit");
        this.limit = limit;
    }

    synchronized boolean full() { return pending.size() >= limit; }
    synchronized int pending() { return pending.size(); }

    synchronized boolean queued(long pts, byte[] annexB) {
        return hasPicture(annexB) && pending.add(pts);
    }

    synchronized boolean decoded(long pts, int flags) {
        // MediaCodec flags:2=configuration,4=EOS. Neither grants a picture slot.
        return (flags & 6) == 0 && pending.remove(pts);
    }

    synchronized boolean cancel(long pts) { return pending.remove(pts); }
    synchronized void reset() { pending.clear(); }

    static boolean hasPicture(byte[] bytes) {
        if (bytes == null) return false;
        // feed converts every access unit to AnnexB before presentation().
        for (int i = 0; i + 3 < bytes.length; i++) {
            if (bytes[i] != 0 || bytes[i + 1] != 0) continue;
            int header = -1;
            if (bytes[i + 2] == 1) header = i + 3;
            else if (bytes[i + 2] == 0 && i + 4 < bytes.length && bytes[i + 3] == 1) header = i + 4;
            if (header < 0) continue;
            int type = bytes[header] & 31;
            if (type >= 1 && type <= 5) return true;
            i = header;
        }
        return false;
    }
}
