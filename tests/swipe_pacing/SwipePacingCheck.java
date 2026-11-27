package com.shilapi.xcertplay;

public final class SwipePacingCheck {
    private static final long MS = 1000000L;
    private static final long STEADY = 1000000000L / 60;
    private static final long START = 1000000000L;

    private static void eq(String name, long want, long got) {
        if (want != got) throw new AssertionError(name + ": expected " + want + " but got " + got);
    }

    private static long render(E01SwipePacing pacing, long touch, long arrival, long normal,
                               long now, int fps) {
        long requested = pacing.target(touch, arrival, normal, now, fps);
        pacing.noteSubmitted(requested);
        return requested;
    }

    private static void simple(int fps) {
        E01SwipePacing pacing = new E01SwipePacing();
        long period = 1000000000L / fps;
        long lead = 100 * MS;
        long now = START + 30 * MS;
        long normal = now + lead;
        eq("before touch", START, render(pacing, START, START - 1, START, START - 1, fps));
        long first = render(pacing, START, START + MS, normal, now, fps);
        eq("idle first frame", now + period, first);
        for (int i = 1; i <= 8; i++) {
            long elapsed = period * i;
            long jitter = (i % 3 - 1) * 3 * MS;
            long target = render(pacing, START, START + MS + elapsed, normal + elapsed,
                    now + elapsed + jitter, fps);
            eq("preserve sender spacing", first + elapsed, target);
        }

        // Keep feeding at source cadence past expiry. Recovery adds at most 2ms per frame.
        long previous = first + 8 * period;
        long remaining = normal - first;
        for (int i = 9; i <= 85; i++) {
            long elapsed = i * period;
            long target = render(pacing, START, START + MS + elapsed, normal + elapsed, now + elapsed, fps);
            if (now + elapsed - START > 500 * MS) remaining = Math.max(STEADY, remaining - 2 * MS);
            eq("recovery step", normal + elapsed - remaining, target);
            if (target - previous < period) throw new AssertionError("same display interval");
            previous = target;
        }
        eq("recovered steady phase", STEADY, remaining);
    }

    private static void queued(int fps) {
        long period = 1000000000L / fps;
        long now = START + MS;
        long normal = now + 100 * MS;
        E01SwipePacing full = new E01SwipePacing();
        full.noteSubmitted(normal - period); // Already booked through a path without a valid source stamp.
        eq("full surface queue", normal, render(full, START, START, normal, now, fps));
        eq("stable full queue", normal + period,
                render(full, START, START + period, normal + period, now + period, fps));

        E01SwipePacing room = new E01SwipePacing();
        room.noteSubmitted(normal - 2 * period);
        eq("use only spare queue slot", normal - period,
                render(room, START, START, normal, now, fps));
        eq("preserve short source interval", normal - period + 15 * MS,
                render(room, START, START + MS, normal + 15 * MS, now + MS, fps));
    }

    private static void firstAvailableGap(int fps) {
        long period = 1000000000L / fps;
        long normal = START + 100 * MS;
        E01SwipePacing pacing = new E01SwipePacing();
        long first = normal - STEADY;
        render(pacing, 0, START - 1, normal - period, START, fps);
        eq("full queue holds its steady phase", first, render(pacing, START, START, normal, START, fps));
        long second = normal + period + 400000;
        eq("sub-ms spare time does not arm extra touch advance", second - STEADY,
                render(pacing, START, START + MS, second, START + period, fps));
        long third = second + 2 * period;
        eq("first available gesture slot", third - STEADY - period,
                render(pacing, START, START + 2 * MS, third, START + 2 * period, fps));
        long fourth = third + 3 * period;
        eq("further gaps keep acquired shift", fourth - STEADY - period,
                render(pacing, START, START + 3 * MS, fourth, START + 3 * period, fps));
    }

    private static void recordedSwipeWithAssumedQueue() {
        // Rounded receive/submit/normal-request offsets from the first 60fps sample.
        // The preceding reservation is a test assumption: it was not present in the device log.
        long period = 1000000000L / 60;
        long[] arrival = {19, 54, 71, 94};
        long[] submitted = {69, 88, 112, 135};
        long[] original = {109, 142, 159, 175};
        long[] expected = {109 * MS, 109 * MS + period, 159 * MS - STEADY, 175 * MS - STEADY};
        E01SwipePacing pacing = new E01SwipePacing();
        pacing.noteSubmitted(START + 109 * MS - period); // Model the previously accepted unshifted request.
        for (int i = 0; i < original.length; i++) {
            long actual = render(pacing, START, START + arrival[i] * MS, START + original[i] * MS,
                    START + submitted[i] * MS, 60);
            eq("sample with assumed queue, picture " + i, START + expected[i], actual);
        }
    }

    private static void newGesture(int fps) {
        long period = 1000000000L / fps;
        E01SwipePacing pacing = new E01SwipePacing();
        long now = START + 20 * MS;
        long normal = now + 100 * MS;
        long first = render(pacing, START, START + MS, normal, now, fps);
        long secondTouch = now + period - MS;
        eq("in-flight frame keeps old shift", first + period,
                render(pacing, secondTouch, secondTouch - 1, normal + period, now + period, fps));
        eq("new swipe does not stack shifts", first + 2 * period,
                render(pacing, secondTouch, secondTouch, normal + 2 * period, now + 2 * period, fps));
        eq("cancel recovers gradually", first + 3 * period + 2 * MS,
                render(pacing, 0, secondTouch + period, normal + 3 * period, now + 3 * period, fps));
        long afterGap = now + 2 * 1000 * MS;
        eq("idle clears extra gesture advance", afterGap + 100 * MS - STEADY,
                render(pacing, 0, afterGap - MS, afterGap + 100 * MS, afterGap, fps));
        long newStart = afterGap + 1000 * MS;
        eq("new swipe after idle", newStart + period,
                render(pacing, newStart, newStart, newStart + 100 * MS, newStart, fps));
    }

    private static void steadyLimits(int fps) {
        long period = 1000000000L / fps;
        E01SwipePacing pacing = new E01SwipePacing();
        long now = START + 50 * MS;
        long shortTarget = now + 5 * MS;
        eq("never backdate a ready frame", now, render(pacing, 0, START, shortTarget, now, fps));
        eq("short lead uses only five ms", now, pacing.steadyTargetNs());
        long next = shortTarget + period;
        eq("a burst respects the previous reservation", now + period,
                render(pacing, 0, START + MS, next, now + MS, fps));
        next += 2 * period;
        eq("regain steady phase when source leaves room", next - STEADY,
                render(pacing, 0, START + 2 * MS, next, now + 2 * MS, fps));
        eq("unknown source time falls back", next + period,
                pacing.target(0, 0, next + period, now + 3 * MS, fps));
        eq("no stale baseline when unknown", 0, pacing.steadyTargetNs());
    }

    private static void special(int fps) {
        E01SwipePacing pacing = new E01SwipePacing();
        long now = START + 10 * MS;
        long normal = now + 75 * MS;
        eq("pre-touch future picture uses steady phase", normal - STEADY, pacing.target(START, START - 1, normal, now, fps));
        eq("late", now - MS, pacing.target(START, START + MS, now - MS, now, fps));
        eq("invalid arrival", normal, pacing.target(START, 0, normal, now, fps));
        eq("future arrival", normal, pacing.target(START, now + 1, normal, now, fps));
        eq("future touch cannot add a gesture shift", normal - STEADY, pacing.target(now + 1, now, normal, now, fps));
        eq("unknown fps", normal, pacing.target(START, now, normal, now, 24));
        eq("invalid deadline", 0, pacing.target(START, now, 0, now, fps));
        eq("timestamp jump", now + 501 * MS, pacing.target(START, now, now + 501 * MS, now, fps));
        pacing.noteSubmitted(now);
        long period = 1000000000L / fps;
        eq("failed/unsubmitted target has no queue reservation", now + period,
                render(pacing, START, now, normal, now, fps));
        eq("original backward target", now + 3 * MS,
                pacing.target(START, now, now + 3 * MS, now, fps));
        eq("stale start recovers to steady phase", now + 700 * MS - STEADY,
                pacing.target(START, now + 590 * MS, now + 700 * MS, now + 600 * MS, fps));
    }

    public static void main(String[] args) {
        for (int fps : new int[] {30, 60}) {
            simple(fps);
            queued(fps);
            firstAvailableGap(fps);
            newGesture(fps);
            steadyLimits(fps);
            special(fps);
        }
        recordedSwipeWithAssumedQueue();
        System.out.println("PASS 30/60 fps swipe targets, queue order, repeat swipes, recovery and invalid timestamps");
    }
}
