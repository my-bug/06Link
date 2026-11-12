package com.shilapi.xcertplay;

/** Bounded local-send counters only. No OEM readback, file access, payload retention or timer. */
final class E01CardDiagnostic {
    static final int GUIDE_NONE = 0, GUIDE_COMPLETE = 1, GUIDE_PARTIAL = 2;
    static final int CLOSE_NONE = 0, CLOSE_SESSION = 1, CLOSE_DISABLED = 2,
            CLOSE_WINDOW = 3, CLOSE_GENERATION = 4, CLOSE_STREAM = 5;
    private static final long WINDOW_MS = 30000, MIN_URGENT_MS = 1000;
    private static final int MAX_URGENT = 4;
    private boolean observed, connected, projection, wanted, stream, dirty, urgent, clockStarted;
    private int generation, closeReason, guidance;
    private boolean endPending;
    private long changes, initAttempts, initAccepted, contentAttempts, contentAccepted;
    private long mapOpen, mapOpenAccepted, mapClose, mapCloseAccepted;
    private long cardOpen, cardOpenAccepted, cardClose, cardCloseAccepted;
    private long navOn, navOnAccepted, navOff, navOffAccepted;
    private long runningMarkers, endMarkers, rpcFailures;
    private long budgetAt, lastEmit = -1;
    private int urgentEmits;

    synchronized void observe(int token, boolean session, boolean enabled, boolean window, boolean video) {
        if (observed && generation == token && connected == session && projection == enabled
                && wanted == window && stream == video) return;
        observed = true; generation = token; connected = session; projection = enabled;
        wanted = window; stream = video; changes = increment(changes); dirty = urgent = true;
    }

    /** Call once when selecting a cleanup path, not per packet in that path. */
    synchronized void closing(int reason) {
        int valid = reason >= CLOSE_NONE && reason <= CLOSE_STREAM ? reason : CLOSE_NONE;
        if (closeReason != valid) { closeReason = valid; dirty = urgent = true; }
    }

    /** A content group may be a real route or the existing channel bootstrap marker. */
    synchronized void group(boolean initialization, boolean accepted, int source, boolean pendingEnd) {
        guidance = source >= GUIDE_NONE && source <= GUIDE_PARTIAL ? source : GUIDE_NONE;
        endPending = pendingEnd;
        if (initialization) {
            initAttempts = increment(initAttempts);
            if (accepted) initAccepted = increment(initAccepted);
            urgent = true;
        } else {
            contentAttempts = increment(contentAttempts);
            if (accepted) contentAccepted = increment(contentAccepted);
        }
        dirty = true;
    }

    /** Count only identified outgoing navigation fields; never inspect road text or coordinates. */
    synchronized void rpc(int opcode, byte[] packet, boolean accepted) {
        if (packet == null || packet.length < 2) return;
        int sub = packet[0] & 255, value = packet[1] & 255;
        boolean lifecycle = false, known = false;
        if (opcode == 0x75d && sub == 0x4a && (value == 1 || value == 2)) {
            known = lifecycle = true;
            if (value == 1) { mapOpen = increment(mapOpen); if (accepted) mapOpenAccepted = increment(mapOpenAccepted); }
            else { mapClose = increment(mapClose); if (accepted) mapCloseAccepted = increment(mapCloseAccepted); }
        } else if (opcode == 0x76c && sub == 1 && value <= 1) {
            known = lifecycle = true;
            if (value == 1) { navOn = increment(navOn); if (accepted) navOnAccepted = increment(navOnAccepted); }
            else { navOff = increment(navOff); if (accepted) navOffAccepted = increment(navOffAccepted); }
        } else if (opcode == 0x76b && sub >= 6 && sub <= 15) {
            known = true;
            if (sub == 6 && value <= 1) {
                lifecycle = true;
                if (value == 1) { cardOpen = increment(cardOpen); if (accepted) cardOpenAccepted = increment(cardOpenAccepted); }
                else { cardClose = increment(cardClose); if (accepted) cardCloseAccepted = increment(cardCloseAccepted); }
            } else if (sub == 15 && value <= 1) {
                if (value == 0) runningMarkers = increment(runningMarkers);
                else { endMarkers = increment(endMarkers); lifecycle = true; }
            }
        }
        if (!known) return;
        if (!accepted) rpcFailures = increment(rpcFailures);
        dirty = true;
        // An individual content RPC failure is included in the next bounded summary.
        if (lifecycle) urgent = true;
    }

    /** Existing worker calls this. At most four urgent plus one summary per 30 seconds. */
    synchronized String poll(long now) {
        if (!dirty || !observed) return null;
        if (!clockStarted || now < budgetAt || now - budgetAt >= WINDOW_MS) {
            clockStarted = true; budgetAt = now; urgentEmits = 0;
        }
        boolean first = lastEmit < 0 || now < lastEmit;
        boolean summaryDue = first || now - lastEmit >= WINDOW_MS;
        boolean urgentDue = urgent && urgentEmits < MAX_URGENT
                && (first || now - lastEmit >= MIN_URGENT_MS);
        if (!summaryDue && !urgentDue) return null;
        if (urgentDue) urgentEmits++;
        String text = "[仪表卡片] 本地发送/累计 gen=" + generation
                + " session=" + bit(connected) + " projection=" + bit(projection)
                + " window=" + bit(wanted) + " stream=" + bit(stream)
                + " close=" + reason(closeReason) + " stateDelta=" + number(changes)
                + " init=" + pair(initAccepted, initAttempts)
                + " update=" + pair(contentAccepted, contentAttempts)
                + " mapOn=" + pair(mapOpenAccepted, mapOpen) + " mapOff=" + pair(mapCloseAccepted, mapClose)
                + " calcOn=" + pair(cardOpenAccepted, cardOpen) + " calcOff=" + pair(cardCloseAccepted, cardClose)
                + " navOn=" + pair(navOnAccepted, navOn) + " navOff=" + pair(navOffAccepted, navOff)
                + " running=" + number(runningMarkers) + " end=" + number(endMarkers) + " rpcRejected=" + number(rpcFailures)
                + " source=" + source(guidance) + " endPending=" + bit(endPending)
                + " 回执=RPC接受/尝试,屏显未确认";
        lastEmit = now; changes = 0; dirty = urgent = false;
        return text;
    }

    private static long increment(long value) { return value == Long.MAX_VALUE ? value : value + 1; }
    private static int bit(boolean value) { return value ? 1 : 0; }
    private static String number(long value) { return value > 999999 ? "999999+" : Long.toString(value); }
    private static String pair(long accepted, long attempts) { return number(accepted) + "/" + number(attempts); }
    private static String source(int value) { return value == GUIDE_COMPLETE ? "complete" : value == GUIDE_PARTIAL ? "partial" : "bootstrap"; }
    private static String reason(int value) {
        switch (value) {
            case CLOSE_SESSION: return "session-ended";
            case CLOSE_DISABLED: return "projection-off";
            case CLOSE_WINDOW: return "no-window";
            case CLOSE_GENERATION: return "generation-changed";
            case CLOSE_STREAM: return "stream-stopped";
            default: return "none";
        }
    }
}
