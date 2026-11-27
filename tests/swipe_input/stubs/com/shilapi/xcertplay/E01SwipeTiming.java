package com.shilapi.xcertplay;

public final class E01SwipeTiming {
    static int starts, sends;
    static boolean throttled;
    static long touchNs, lastToken, writeStart, writeEnd;
    static final java.util.Set<Long> cancelled = new java.util.HashSet<>();
    public static void cancel(long token) {
        if (token != 0) cancelled.add(token);
    }
    public static long start(long touchTime) {
        touchNs = touchTime; return throttled ? 0 : ++starts;
    }
    public static void sent(long token, long startNs, long endNs) {
        lastToken = token; writeStart = startNs; writeEnd = endNs; sends++;
    }
}
