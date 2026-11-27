package com.shilapi.xcertplay;

/** Schedules decoded main-screen pictures against the sender's existing frame clock. */
final class E01SwipePacing {
    private static final long WINDOW_NS = 500000000L;
    private static final long MIN_ADVANCE_NS = 1000000L;
    private static final long RECOVERY_STEP_NS = 2000000L;
    private static final long STEADY_ADVANCE_NS = 1000000000L / 60;

    private long lastTouchNs;
    private long gestureAdvanceNs;
    private long previousDecisionNs;
    private long lastSubmittedNs;
    private long lastNormalNs;
    private long pendingNormalNs;
    private long steadyTargetNs;

    long target(long touchStartNs, long arrivalNs, long normalTargetNs, long nowNs, int fps) {
        pendingNormalNs = 0;
        steadyTargetNs = 0;
        if (nowNs <= 0 || nowNs < previousDecisionNs || (fps != 30 && fps != 60)) {
            return normalTargetNs;
        }
        if (nowNs - previousDecisionNs > WINDOW_NS) gestureAdvanceNs = 0;
        previousDecisionNs = nowNs;
        long leadNs = normalTargetNs - nowNs;
        if (arrivalNs <= 0 || arrivalNs > nowNs || normalTargetNs <= nowNs || leadNs > WINDOW_NS) {
            return normalTargetNs;
        }

        pendingNormalNs = normalTargetNs;
        steadyTargetNs = normalTargetNs;
        long periodNs = 1000000000L / fps;
        long availableNs = leadNs;
        if (lastSubmittedNs > 0) {
            if (normalTargetNs <= lastSubmittedNs || normalTargetNs <= lastNormalNs) return normalTargetNs;
            long spacingNs = lastNormalNs > 0 ? Math.min(periodNs, normalTargetNs - lastNormalNs) : periodNs;
            availableNs = Math.min(leadNs, Math.max(0, normalTargetNs - lastSubmittedNs - spacingNs));
        }

        // Shift the source timeline as a whole, starting before a MOVE. A per-frame
        // cap relative to decode completion would copy decoder jitter into the picture.
        long steadyAdvanceNs = Math.min(STEADY_ADVANCE_NS, availableNs);
        if (steadyAdvanceNs < MIN_ADVANCE_NS) steadyAdvanceNs = 0;
        steadyTargetNs = normalTargetNs - steadyAdvanceNs;

        boolean inWindow = touchStartNs > 0 && touchStartNs <= nowNs
                && nowNs - touchStartNs <= WINDOW_NS;
        if (inWindow && arrivalNs >= touchStartNs && touchStartNs >= lastTouchNs
                && (touchStartNs != lastTouchNs || gestureAdvanceNs <= STEADY_ADVANCE_NS)) {
            // Try again if a full queue leaves no extra room on the first moving frame.
            long possibleNs = Math.min(availableNs, Math.max(0, leadNs - periodNs));
            if (possibleNs - steadyAdvanceNs >= MIN_ADVANCE_NS) {
                gestureAdvanceNs = Math.max(gestureAdvanceNs, possibleNs);
            }
            lastTouchNs = touchStartNs;
        } else if (!inWindow || lastTouchNs == 0 || nowNs - lastTouchNs > WINDOW_NS) {
            gestureAdvanceNs = Math.max(0, gestureAdvanceNs - RECOVERY_STEP_NS);
        }
        if (arrivalNs < lastTouchNs) return steadyTargetNs;
        long advanceNs = Math.max(steadyAdvanceNs, Math.min(availableNs, gestureAdvanceNs));
        return normalTargetNs - advanceNs;
    }

    /** Absolute deadline for the same picture without the gesture-specific adjustment. */
    long steadyTargetNs() {
        return steadyTargetNs;
    }

    /** Only successful releases reserve a place on the Surface. */
    void noteSubmitted(long requestedNs) {
        if (requestedNs > 0 && requestedNs >= lastSubmittedNs) {
            lastSubmittedNs = requestedNs;
            lastNormalNs = pendingNormalNs;
        }
        pendingNormalNs = 0;
    }
}
