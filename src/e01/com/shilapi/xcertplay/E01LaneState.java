package com.shilapi.xcertplay;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/** Numeric lane events only. Call under the cluster lock; never writes or draws anything. */
final class E01LaneState {
    static final int COMPONENT = 42, MAX_EVENTS = 8, MAX_LANES = 8, MAX_ANGLES = 16, MAX_BYTES = 8192;
    static final int UNKNOWN_ANGLE = 1000;
    static final class Lane {
        final int position, status, highlight;
        private final int[] angles;
        Lane(int position, int status, int highlight, int[] angles) {
            this.position = position; this.status = status; this.highlight = highlight;
            this.angles = angles.clone();
        }
        int[] angles() { return angles.clone(); }
    }
    static final class Snapshot {
        final int eventIndex;
        private final Lane[] lanes;
        Snapshot(int eventIndex, Lane[] lanes) { this.eventIndex = eventIndex; this.lanes = lanes.clone(); }
        int count() { return lanes.length; }
        Lane lane(int index) { return lanes[index]; }
    }
    static final Snapshot HIDDEN = new Snapshot(-1, new Lane[0]);
    private final LinkedHashMap<Integer, Snapshot> events = new LinkedHashMap<Integer, Snapshot>();
    private int currentIndex = -1, showing = -1, routeState = -1;
    private boolean invalid;
    private long rejected;

    void clear() { events.clear(); currentIndex = showing = routeState = -1; invalid = false; }
    int cachedEvents() { return events.size(); }
    long rejected() { return rejected; }
    Snapshot snapshot() {
        if (invalid || showing != 1 || routeState == 0 || routeState == 2) return HIDDEN;
        Snapshot selected = events.get(Integer.valueOf(currentIndex));
        return selected == null ? HIDDEN : selected;
    }

    boolean accept(int id, byte[] data) {
        if (id != 0x5201 && id != 0x5204) return false;
        try {
            sequence(data, 0, data == null ? 0 : data.length);
            if (data.length > MAX_BYTES) throw new Invalid();
            if (!forComponent(data)) return true;
            if (id == 0x5201) acceptRoute(data);
            else {
                Snapshot event = parseEvent(data);
                events.remove(Integer.valueOf(event.eventIndex));
                events.put(Integer.valueOf(event.eventIndex), event);
                while (events.size() > MAX_EVENTS) {
                    Iterator<Map.Entry<Integer, Snapshot>> iterator = events.entrySet().iterator();
                    while (iterator.hasNext()) {
                        Map.Entry<Integer, Snapshot> entry = iterator.next();
                        if (entry.getKey().intValue() != currentIndex) { iterator.remove(); break; }
                    }
                }
                invalid = false;
            }
            return true;
        } catch (Invalid bad) {
            // A broken delta must never publish a valid prefix or leave a stale recommendation visible.
            rejected++; invalid = true; return false;
        }
    }

    /** A selector-only delta must not refresh normal turn/road content. */
    static boolean selectionOnly(byte[] data) {
        try {
            sequence(data, 0, data == null ? 0 : data.length);
            boolean selection = false;
            for (int p = 0; p < data.length; p += u16(data, p)) {
                int tag = u16(data, p + 2);
                if (tag >= 0x10 && tag <= 0x12) selection = true;
                else if (tag != 0) return false;
            }
            return selection;
        } catch (Invalid bad) { return false; }
    }

    private void acceptRoute(byte[] data) throws Invalid {
        int state = -1, index = -1, visible = -1, total = -1, seen = 0;
        for (int p = 0; p < data.length; p += u16(data, p)) {
            int tag = u16(data, p + 2), n = u16(data, p) - 4, v = p + 4, bit = 0;
            if (tag == 1) { require(n == 1); state = data[v] & 255; require(state <= 6); bit = 1; }
            else if (tag == 0x10) { require(n == 2); index = u16(data, v); bit = 2; }
            else if (tag == 0x11) { require(n == 2); total = u16(data, v); bit = 4; }
            else if (tag == 0x12) { require(n == 1); visible = data[v] & 255; require(visible <= 1); bit = 8; }
            require(bit == 0 || (seen & bit) == 0); seen |= bit;
        }
        if (state == 0 || state == 2) { clear(); routeState = state; return; }
        if (state != -1) routeState = state;
        if (total == 0) {
            // Total counts lane events, never lane slots. Zero explicitly invalidates the cached route.
            events.clear(); currentIndex = -1; showing = 0; invalid = false; return;
        }
        if (index != -1) currentIndex = index;
        if (visible != -1) showing = visible;
        // A valid explicit selector can restore an unchanged cached event after a malformed delta.
        if (index != -1 || visible != -1) invalid = false;
    }

    private static Snapshot parseEvent(byte[] data) throws Invalid {
        int index = -1; boolean information = false;
        ArrayList<Lane> lanes = new ArrayList<Lane>();
        for (int p = 0; p < data.length; p += u16(data, p)) {
            int tag = u16(data, p + 2), n = u16(data, p) - 4, v = p + 4;
            if (tag == 1) { require(index == -1 && (n == 1 || n == 2)); index = n == 1 ? data[v] & 255 : u16(data, v); }
            else if (tag == 2) { information = true; parseLanes(data, v, p + u16(data, p), lanes); }
        }
        require(index != -1 && information);
        Lane[] ordered = lanes.toArray(new Lane[lanes.size()]);
        Arrays.sort(ordered, new Comparator<Lane>() {
            public int compare(Lane a, Lane b) { return a.position - b.position; }
        });
        if (ordered.length > 0) {
            int first = ordered[0].position;
            require(first == 0 || first == 1);
            // Missing positions must not be compressed into an invented road layout.
            for (int i = 0; i < ordered.length; i++) require(ordered[i].position == first + i);
        }
        return new Snapshot(index, ordered);
    }

    private static void parseLanes(byte[] data, int start, int end, ArrayList<Lane> out) throws Invalid {
        sequence(data, start, end);
        int position = -1, status = -1, highlight = UNKNOWN_ANGLE, angleCount = 0;
        boolean highlighted = false;
        int[] angles = new int[MAX_ANGLES];
        for (int p = start; p < end; p += u16(data, p)) {
            int tag = u16(data, p + 2), n = u16(data, p) - 4, v = p + 4;
            if (tag == 0) {
                if (position != -1) addLane(out, position, status, highlight, angles, angleCount);
                require(n == 1 || n == 2);
                position = n == 1 ? data[v] & 255 : u16(data, v);
                require(position != 65535);
                status = -1; highlight = UNKNOWN_ANGLE; angleCount = 0; highlighted = false;
            } else if (tag >= 1 && tag <= 3) {
                require(position != -1); // Never invent a position for a damaged lane group.
                if (tag == 1) { require(n == 1 && status == -1); status = data[v] & 255; require(status <= 2); }
                else if (tag == 2) {
                    // Lane angles are signed big-endian 16-bit degrees. Ambiguous byte forms stay hidden.
                    require(n > 0 && (n & 1) == 0 && angleCount + n / 2 <= MAX_ANGLES);
                    for (int q = 0; q < n; q += 2) angles[angleCount++] = (short) u16(data, v + q);
                } else { require(n == 2 && !highlighted); highlight = (short) u16(data, v); highlighted = true; }
            }
        }
        if (position != -1) addLane(out, position, status, highlight, angles, angleCount);
    }
    private static void addLane(ArrayList<Lane> out, int position, int status, int highlight,
            int[] angles, int count) throws Invalid {
        require(out.size() < MAX_LANES && status != -1 && count > 0);
        out.add(new Lane(position, status, highlight, Arrays.copyOf(angles, count)));
    }
    private static boolean forComponent(byte[] data) throws Invalid {
        boolean present = false, ours = false;
        for (int p = 0; p < data.length; p += u16(data, p)) if (u16(data, p + 2) == 0) {
            int n = u16(data, p) - 4;
            require(n > 0 && (n & 1) == 0);
            present = true;
            for (int q = p + 4; q < p + n + 4; q += 2) ours |= u16(data, q) == COMPONENT;
        }
        return !present || ours;
    }
    private static void sequence(byte[] data, int start, int end) throws Invalid {
        require(data != null && end <= MAX_BYTES);
        for (int p = start; p < end;) {
            require(end - p >= 4);
            int n = u16(data, p); require(n >= 4 && n <= end - p); p += n;
        }
    }
    private static void require(boolean valid) throws Invalid { if (!valid) throw new Invalid(); }
    private static int u16(byte[] data, int p) { return ((data[p] & 255) << 8) | (data[p + 1] & 255); }
    private static final class Invalid extends Exception { private static final long serialVersionUID = 1L; }
}
