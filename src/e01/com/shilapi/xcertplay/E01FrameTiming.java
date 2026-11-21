package com.shilapi.xcertplay;

/** Fixed-memory window distribution. The owning stream/codec supplies synchronization. */
final class E01FrameTiming {
    private static final long[] UPPER_US = {
        1000, 2000, 4000, 8000, 12000, 16667, 20000, 25000, 33334, 40000,
        50000, 66667, 83334, 100000, 150000, 200000, 250000, 500000,
        1000000, 2000000, 5000000, Long.MAX_VALUE
    };
    private final long[] buckets = new long[UPPER_US.length];
    private long count, maximumNs, over50, over100;

    /** No allocation, clock reads, sorting, logging or frame ownership on the hot path. */
    void add(long durationNs) {
        if (durationNs < 0) return;
        long us = ceilMicros(durationNs);
        int low = 0, high = UPPER_US.length - 1;
        while (low < high) {
            int middle = (low + high) >>> 1;
            if (us <= UPPER_US[middle]) high = middle;
            else low = middle + 1;
        }
        buckets[low]++;
        count++;
        maximumNs = Math.max(maximumNs, durationNs);
        if (durationNs > 50000000L) over50++;
        if (durationNs > 100000000L) over100++;
    }

    Snapshot snapshotAndReset() {
        long maxUs = ceilMicros(maximumNs);
        Snapshot result = new Snapshot(count, percentile(95, maxUs), percentile(99, maxUs),
            maxUs, over50, over100);
        java.util.Arrays.fill(buckets, 0);
        count = maximumNs = over50 = over100 = 0;
        return result;
    }

    private long percentile(int percent, long maxUs) {
        if (count == 0) return 0;
        // Nearest-rank percentile, without multiplying the complete count by 100.
        long rank = (count / 100) * percent + ((count % 100) * percent + 99) / 100;
        long seen = 0;
        for (int i = 0; i < buckets.length; i++) {
            seen += buckets[i];
            if (seen >= rank) return Math.min(UPPER_US[i], maxUs);
        }
        return maxUs;
    }

    private static long ceilMicros(long ns) { return ns / 1000 + (ns % 1000 == 0 ? 0 : 1); }

    /** Percentiles are bucket upper bounds, not exact samples or actual presentation times. */
    static final class Snapshot {
        final long count, p95UpperUs, p99UpperUs, maxUs, over50, over100;
        Snapshot(long count, long p95, long p99, long max, long over50, long over100) {
            this.count = count; p95UpperUs = p95; p99UpperUs = p99;
            maxUs = max; this.over50 = over50; this.over100 = over100;
        }
        String format(String name) {
            return name + "=" + count + "/" + p95UpperUs + "/" + p99UpperUs + "/"
                + maxUs + "/" + over50 + "/" + over100;
        }
    }
}
