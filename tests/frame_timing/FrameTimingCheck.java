package com.shilapi.xcertplay;

public final class FrameTimingCheck {
    private static void require(boolean value, String message) {
        if (!value) throw new AssertionError(message);
    }
    public static void main(String[] args) {
        E01FrameTiming timing = new E01FrameTiming();
        timing.add(-1);
        E01FrameTiming.Snapshot empty = timing.snapshotAndReset();
        require(empty.count == 0 && empty.p95UpperUs == 0 && empty.maxUs == 0, "empty/invalid window");
        // A rare long stall must remain visible even when the final 120 frames are fast.
        for (int i = 0; i < 940; i++) timing.add(16666667L);
        for (int i = 0; i < 50; i++) timing.add(40000000L);
        for (int i = 0; i < 10; i++) timing.add(255000000L);
        E01FrameTiming.Snapshot mixed = timing.snapshotAndReset();
        require(mixed.count == 1000 && mixed.p95UpperUs == 40000 && mixed.p99UpperUs == 40000,
            "nearest rank covers the entire reporting window");
        require(mixed.maxUs == 255000 && mixed.over50 == 10 && mixed.over100 == 10, "rare spike counts");
        timing.add(50000000L); timing.add(50000001L); timing.add(100000000L); timing.add(100000001L);
        E01FrameTiming.Snapshot boundary = timing.snapshotAndReset();
        require(boundary.over50 == 3 && boundary.over100 == 1, "strict thresholds at nanosecond precision");
        require(boundary.p95UpperUs == 100001 && boundary.maxUs == 100001, "upper estimate capped by actual maximum");
        require(mixed.count == 1000 && mixed.maxUs == 255000, "snapshots remain independent after reset");
        timing.add(Long.MAX_VALUE);
        E01FrameTiming.Snapshot huge = timing.snapshotAndReset();
        require(huge.p99UpperUs == Long.MAX_VALUE / 1000 + 1 && huge.maxUs == huge.p99UpperUs,
            "overflow bucket never turns long idle gaps negative");
        timing.add(0);
        require(timing.snapshotAndReset().format("gap").equals("gap=1/0/0/0/0/0"), "zero and format contract");
        // Independent exact order statistics validate upper bounds across the complete range.
        java.util.Random random = new java.util.Random(6020);
        for (int round = 0; round < 200; round++) {
            int size = 1 + random.nextInt(2000);
            long[] exact = new long[size];
            for (int i = 0; i < size; i++) { exact[i] = (long)(random.nextDouble() * 8000000000L); timing.add(exact[i]); }
            java.util.Arrays.sort(exact);
            E01FrameTiming.Snapshot snapshot = timing.snapshotAndReset();
            long p95 = exact[(size * 95 + 99) / 100 - 1], p99 = exact[(size * 99 + 99) / 100 - 1];
            require(snapshot.p95UpperUs * 1000 >= p95 && snapshot.p99UpperUs * 1000 >= p99, "never understate percentile");
            require(snapshot.p95UpperUs <= snapshot.p99UpperUs && snapshot.p99UpperUs <= snapshot.maxUs, "ordered estimates");
        }
        System.out.println("PASS fixed-memory frame timing: percentile bounds, full windows, reset, threshold and overflow checks");
    }
}
