package com.shilapi.xcertplay;

/** Replays relative 60fps main-screen timings. Requested times do not measure panel scanout. */
public final class TabletSwipeReplay {
    private static final long MS = 1000000L;
    private static final long PERIOD = 1000000000L / 60;
    private static final long TOUCH = 10000000000L;

    // 1.2.64 samples in order. Columns: receive, submit, requested display, reported advance (ms).
    // Adding the last two columns approximates the original target to within 2ms of rounding.
    private static final int[][][] SAMPLES = {
        {{106, 140, 156, 63}, {120, 176, -1, -1}, {157, 211, -1, -1}, {190, 217, 238, 63}},
        {{17, 51, 83, 0}, {37, 67, 100, 0}, {54, 86, 116, 0}, {73, 103, 133, 0}},
        {{14, 49, 76, 16}, {32, 65, 93, 16}, {48, 100, 110, 16}, {84, 128, 143, 16}},
        {{11, 45, 68, 0}, {29, 62, 85, 0}, {46, 75, 102, 0}, {61, 94, 119, 0}},
        {{15, 48, 110, 0}, {35, 64, 127, 0}, {50, 78, 144, 0}, {64, 116, 160, 0}},
        {{20, 53, 91, 0}, {36, 70, 108, 0}, {53, 80, 124, 0}, {64, 103, 141, 0}}
    };

    private static void check(boolean condition, String message) {
        if (!condition) throw new AssertionError(message);
    }

    private static long normal(int[] frame) {
        return TOUCH + (frame[2] + frame[3]) * MS;
    }

    private static void checkSpacing(long previous, long current, long sourceStep, String sample) {
        check(current - previous >= Math.min(PERIOD, sourceStep), "compressed requests: " + sample);
    }

    private static void replay(int sample, long extraLead) {
        int[][] frames = SAMPLES[sample];
        E01SwipePacing pacing = new E01SwipePacing();
        long firstTarget = normal(frames[0]);
        long firstSubmit = TOUCH + frames[0][1] * MS;
        // We do not know how many requests the device had already queued. Model one second
        // of steady playback with either the first observed lead or one extra frame of lead.
        // The phone's preceding frame interval was about 316ms for sample 1 and 16ms for
        // the other five. It anchors the model; the preceding display target was not logged.
        long precedingInterval = sample == 0 ? 316 * MS : PERIOD;
        long lastTarget = firstTarget - precedingInterval;
        long lastSubmit = firstSubmit - precedingInterval - extraLead;
        long lastArrival = Math.min(lastSubmit - MS, TOUCH - MS);
        long previousNormal = 0;
        long previousRequest = 0;
        for (int i = 59; i >= 0; i--) {
            long step = i * PERIOD;
            long target = lastTarget - step;
            long submit = lastSubmit - step;
            long requested = pacing.target(submit >= TOUCH ? TOUCH : 0, lastArrival - step,
                    target, submit, 60);
            check(requested >= submit && requested <= target, "invalid warmup target");
            if (previousRequest != 0) checkSpacing(previousRequest, requested, PERIOD, "warmup");
            pacing.noteSubmitted(requested);
            previousNormal = target;
            previousRequest = requested;
        }
        for (int i = 0; i < frames.length; i++) {
            int[] frame = frames[i];
            // Sample 1 has two unknown targets. Later targets depend on both. Test only
            // the known prefix instead of assigning either frame a fictitious deadline.
            if (frame[2] < 0 || frame[3] < 0) break;
            String label = "sample " + (sample + 1) + ", frame " + (i + 1);
            long target = normal(frame);
            long submit = TOUCH + frame[1] * MS;
            long requested = pacing.target(TOUCH, TOUCH + frame[0] * MS, target, submit, 60);
            check(requested >= submit && requested <= target, "invalid target: " + label);
            checkSpacing(previousRequest, requested, target - previousNormal, label);
            if (i == 0 && frame[3] == 0) {
                check(target - requested >= MS, "no headroom created by steady playback: " + label);
            }
            pacing.noteSubmitted(requested);
            previousNormal = target;
            previousRequest = requested;
        }
    }

    public static void main(String[] args) {
        for (int sample = 0; sample < SAMPLES.length; sample++) {
            replay(sample, 0);
            replay(sample, PERIOD);
        }
        System.out.println("PASS six recorded swipe timelines under two modeled prehistories");
    }
}
