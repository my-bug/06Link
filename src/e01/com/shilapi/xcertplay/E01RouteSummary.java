package com.shilapi.xcertplay;

import java.nio.charset.Charset;
import java.util.LinkedHashMap;

/** Independently retain route fields that do not require a matching 0x5202 maneuver.
 * Never infer a turn arrow or select a maneuver from its arrival order. Guarded by bridge lock.
 */
final class E01RouteSummary {
    private static final Charset UTF8 = Charset.forName("UTF-8");
    private boolean active;
    private long updated;
    private Long meters, seconds, nextMeters;
    private String road;
    private String schema = "none";
    private Integer currentState, currentIndex, detailIndex, detailType;
    private final LinkedHashMap<Integer, String> instructions = new LinkedHashMap<Integer, String>();
    private final LinkedHashMap<Integer, Integer> types = new LinkedHashMap<Integer, Integer>();
    private final LinkedHashMap<Integer, Integer> sides = new LinkedHashMap<Integer, Integer>();
    private long endedAt;

    boolean accept(int id, byte[] data) {
        if (!valid(data)) { schema = "invalid TLV framing"; return false; }
        StringBuilder fields = new StringBuilder();
        for (int offset = 0; offset < data.length;) {
            int size = u16(data, offset), tag = u16(data, offset + 2);
            if (fields.length() > 0) fields.append(',');
            if (fields.length() < 240) fields.append(Integer.toHexString(tag)).append(':').append(size - 4);
            offset += size;
        }
        schema = "fields=" + fields;
        if (id == 0x5202) {
            Integer index = null;
            Integer type = null, side = null;
            String instruction = null;
            for (int offset = 0; offset < data.length;) {
                int size = u16(data, offset), tag = u16(data, offset + 2), value = offset + 4;
                if (tag == 1 && size >= 6) detailIndex = index = u16(data, value);
                else if (tag == 2) instruction = text(data, value, size - 4);
                else if (tag == 3 && size >= 5) detailType = type = data[value] & 255;
                else if (tag == 8 && size >= 5) side = data[value] & 255;
                offset += size;
            }
            if (index != null) {
                if (!instructions.containsKey(index)) instructions.put(index, "");
                if (instruction != null) instructions.put(index, instruction);
                if (type != null) types.put(index, type);
                if (side != null) sides.put(index, side);
                while (instructions.size() > 64) {
                    Integer evict = null;
                    for (Integer key : instructions.keySet()) if (!key.equals(currentIndex)) { evict = key; break; }
                    instructions.remove(evict); types.remove(evict); sides.remove(evict);
                }
            }
            return true;
        }
        if (id != 0x5201) return true;
        Integer state = null;
        boolean indexPresent = false;
        for (int offset = 0; offset < data.length;) {
            int size = u16(data, offset), tag = u16(data, offset + 2), value = offset + 4, length = size - 4;
            if (tag == 1 && length >= 1) state = data[value] & 255;
            if (tag == 13 && length % 2 == 0) {
                indexPresent = true;
                Integer nextIndex = length >= 2 ? u16(data, value) : null;
                if (currentIndex == null ? nextIndex != null : !currentIndex.equals(nextIndex)) nextMeters = null;
                currentIndex = nextIndex;
            }
            offset += size;
        }
        if (state != null && (state == 0 || state == 2)) {
            // Bound the display hold from the FIRST end indication; repeated NoRoute must not extend it.
            long start = endedAt == 0 ? System.nanoTime() : endedAt;
            clear(); endedAt = start; currentState = state; return true;
        }
        if (state != null) currentState = state;
        if (state != null || indexPresent) active = true;
        if (!active) return true;
        updated = System.nanoTime();
        for (int offset = 0; offset < data.length;) {
            int size = u16(data, offset), tag = u16(data, offset + 2), value = offset + 4, length = size - 4;
            if (tag == 3) {
                road = text(data, value, length);
            } else if (tag == 6 && length >= 8) {
                long n = (u32(data, value) << 32) | u32(data, value + 4);
                seconds = n < 0 ? null : Long.valueOf(n);
            } else if (tag == 7 && length >= 4) meters = u32(data, value);
            else if (tag == 10 && length >= 4) nextMeters = u32(data, value);
            offset += size;
        }
        // A state-only restart can precede actual fields. Keep the original bounded hold until data arrives.
        if (available()) endedAt = 0;
        return true;
    }

    boolean fresh() { return active && updated != 0 && System.nanoTime() - updated < 30000000000L; }
    boolean available() { return active && updated != 0 && (meters != null || seconds != null || nextMeters != null || road != null); }
    Long meters() { return meters; }
    Long seconds() { return seconds; }
    Long nextMeters() { return nextMeters; }
    String road() { return road; }
    Integer type() { return active && currentIndex != null ? types.get(currentIndex) : null; }
    int side() { Integer value = currentIndex == null ? null : sides.get(currentIndex); return value == null ? 0 : value; }
    boolean endPending() { return endedAt != 0 && System.nanoTime() - endedAt < 1000000000L; }
    // Instruction text, not an inferred road or destination (5201 tag 4).
    String guidanceText() {
        if (!active || updated == 0) return null;
        String instruction = currentIndex == null ? null : instructions.get(currentIndex);
        return instruction != null && !instruction.isEmpty() ? instruction : road;
    }
    String schema() { return schema; }
    String status() {
        return "state=" + currentState + " currentIndex=" + currentIndex + " detailIndex=" + detailIndex + " detailType=" + detailType + " routeActive=" + active + " fresh=" + fresh() + " ageMs=" + (updated == 0 ? -1 : (System.nanoTime() - updated) / 1000000L) + " remaining=" + (meters != null)
            + " time=" + (seconds != null) + " nextDistance=" + (nextMeters != null)
            + " roadChars=" + (road == null ? -1 : road.length())
            + " instructionChars=" + (guidanceText() == null ? -1 : guidanceText().length());
    }
    void clear() { active = false; updated = endedAt = 0; meters = seconds = nextMeters = null; road = null; currentState = currentIndex = detailIndex = detailType = null; instructions.clear(); types.clear(); sides.clear(); }
    private static String text(byte[] data, int start, int length) {
        int end = start;
        while (end < start + length && data[end] != 0) end++;
        return new String(data, start, Math.min(end - start, 512), UTF8).trim();
    }
    private static boolean valid(byte[] data) {
        if (data == null) return false;
        for (int offset = 0; offset < data.length;) {
            if (data.length - offset < 4) return false;
            int size = u16(data, offset);
            if (size < 4 || size > data.length - offset) return false;
            offset += size;
        }
        return true;
    }
    private static int u16(byte[] b, int i) { return ((b[i] & 255) << 8) | (b[i + 1] & 255); }
    private static long u32(byte[] b, int i) {
        return ((long)(b[i] & 255) << 24) | ((long)(b[i + 1] & 255) << 16)
            | ((long)(b[i + 2] & 255) << 8) | (b[i + 3] & 255);
    }
}
