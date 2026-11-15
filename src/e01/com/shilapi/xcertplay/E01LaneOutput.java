package com.shilapi.xcertplay;

import java.util.Arrays;

/** Worker-owned lane-only RPC output. No navigation state, map, window or album commands. */
final class E01LaneOutput {
    interface Mapping { int icon(int status, int highlight, int[] angles); }
    interface Sink { boolean send(byte[] packet); void note(String message); }
    private final Mapping mapping;
    private final Sink sink;
    private byte[][] sent, pending;
    private boolean touched, mapped;
    private int failures;
    private long retryAt;
    private String lastNote = "";

    E01LaneOutput(Mapping mapping, Sink sink) { this.mapping = mapping; this.sink = sink; }
    void invalidated() { sent = pending = null; failures = 0; retryAt = 0; mapped = false; }
    boolean mapped() { return mapped; }
    boolean touched() { return touched; }

    void update(E01LaneState.Snapshot requested, boolean live, boolean owned, boolean suspended, long now) {
        if (suspended) return;
        if ((!live || !owned) && !touched) return;
        E01LaneState.Snapshot selected = live && owned ? requested : E01LaneState.HIDDEN;
        int[] icons = new int[selected.count()];
        boolean valid = icons.length > 0;
        for (int i = 0; i < icons.length; i++) {
            E01LaneState.Lane lane = selected.lane(i);
            icons[i] = mapping.icon(lane.status, lane.highlight, lane.angles());
            valid &= icons[i] >= 0 && icons[i] < 0x54;
        }
        mapped = valid;
        byte[][] packets = packets(valid ? icons : new int[0]);
        String intent = "[车道诊断] 输出 event=" + selected.eventIndex + " lanes=" + selected.count()
            + " mapped=" + valid + " reason=" + (valid ? "verified-icons" : icons.length > 0 ? "unsupported-icons" : "hidden");
        if (!intent.equals(lastNote)) { lastNote = intent; sink.note(intent); }
        // A changed event or hide request must not inherit the previous event's retry delay.
        if (!Arrays.deepEquals(pending, packets)) { pending = packets; failures = 0; retryAt = 0; }
        if (Arrays.deepEquals(sent, packets) || now < retryAt) return;
        // A failed reply may still have reached the instrument. Keep the obligation to clear it.
        touched = true;
        // Once any write is attempted, an older accepted group is no longer the full OEM state.
        sent = null;
        for (byte[] packet : packets) if (!sink.send(packet)) {
            failures = Math.min(failures + 1, 4);
            retryAt = now + Math.min(5000, 500L << (failures - 1));
            sink.note("[车道诊断] 输出 accepted=false attempt=" + failures);
            return;
        }
        sent = packets; failures = 0; retryAt = 0; touched = valid;
        sink.note("[车道诊断] 输出 accepted=true count=" + (valid ? icons.length : 0));
    }

    static byte[][] packets(int[] icons) {
        if (icons == null || icons.length > 8) throw new IllegalArgumentException("lane count");
        byte[][] packets = new byte[9][2];
        packets[0][0] = 0x3a; packets[0][1] = (byte) icons.length;
        for (int i = 0; i < 8; i++) {
            int icon = i < icons.length ? icons[i] : 0x7f;
            if (i < icons.length && (icon < 0 || icon >= 0x54)) throw new IllegalArgumentException("lane icon");
            packets[i + 1][0] = (byte) (0x3b + i); packets[i + 1][1] = (byte) icon;
        }
        return packets;
    }
}
