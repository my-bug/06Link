package com.shilapi.xcertplay;

import com.shilapi.xcertplay.hud.BydAppleManeuver;
import com.shilapi.xcertplay.hud.BydManeuverCodes;
import java.util.ArrayList;

/** E01 CAN_SetInfo payloads, not raw CAN/UART frames. */
final class E01TbtPackets {
    /** Channel setup only: no turn instruction or invented road. Zeroes match the probe's reset fields. */
    static byte[][] bootstrap() {
        // E01 1 = vehicle/self marker (Amap 1 -> ECarX 101 -> CAN_Model 1).
        // "06Link" is a source label; never use the probe's right arrow or fake road in production.
        return new byte[][]{
            {7, 1}, {8, 0}, {9, 0, 0}, {10, 1}, {11, 0, 0}, {12, 0, 0},
            {13, 6}, {14, 12, 0x11, 0x30, 0, 0x36, 0, 0x4c, 0, 0x69, 0, 0x6e, 0, 0x6b, 0}
        };
    }

    static byte[][] encode(BydAppleManeuver m) { return encode(m, null); }

    static byte[][] encode(BydAppleManeuver m, String instruction) {
        ArrayList<byte[]> out = new ArrayList<byte[]>();
        out.add(new byte[]{7, (byte) icon(m.getType(), m.getDrivingSide())});
        distance(out, 8, m.getRemainingMeters());
        distance(out, 10, Long.valueOf(m.getDistanceMeters()));
        Long seconds = m.getRemainingSeconds();
        if (seconds != null && seconds.longValue() >= 0)
            out.add(word(12, Math.round(seconds.longValue() / 60.0)));
        out.add(new byte[]{15, 0}); // OEM sendNaviInfo refreshes active status before text.
        String text = m.getRoad();
        if (text == null || text.trim().isEmpty()) text = instruction;
        road(out, text == null || text.isEmpty() ? " " : text);
        return out.toArray(new byte[out.size()][]);
    }

    static byte[][] summary(E01RouteSummary s) {
        ArrayList<byte[]> out = new ArrayList<byte[]>();
        Integer type = s.type();
        out.add(new byte[]{7, (byte)(type == null ? 0 : icon(type, s.side()))});
        distance(out, 8, s.meters());
        distance(out, 10, s.nextMeters() == null ? Long.valueOf(0) : s.nextMeters());
        if (s.seconds() != null) out.add(word(12, Math.round(s.seconds().longValue() / 60.0)));
        out.add(new byte[]{15, 0});
        String text = s.guidanceText();
        road(out, text == null || text.isEmpty() ? "更新中" : text);
        return out.toArray(new byte[out.size()][]);
    }

    /** Changed guidance carries the OEM active-state field, without restarting unchanged text assembly. */
    static byte[][] changed(byte[][] previous, byte[][] next) {
        ArrayList<byte[]> out = new ArrayList<byte[]>();
        boolean text = !sameGroup(previous, next, 13, 14);
        boolean changed = text;
        for (byte[] p : next) {
            int sub = p[0] & 255;
            if (sub < 13 || sub > 15) changed |= !sameGroup(previous, next, sub, sub);
        }
        for (byte[] p : next) {
            int sub = p[0] & 255;
            boolean include = sub == 15 ? changed : sub == 13 || sub == 14 ? text
                : !sameGroup(previous, next, sub, sub);
            if (include) out.add(p);
        }
        return out.toArray(new byte[out.size()][]);
    }
    private static boolean sameGroup(byte[][] a, byte[][] b, int first, int last) {
        ArrayList<byte[]> x = new ArrayList<byte[]>(), y = new ArrayList<byte[]>();
        if (a != null) for (byte[] p : a) if ((p[0] & 255) >= first && (p[0] & 255) <= last) x.add(p);
        for (byte[] p : b) if ((p[0] & 255) >= first && (p[0] & 255) <= last) y.add(p);
        return java.util.Arrays.deepEquals(x.toArray(), y.toArray());
    }

    private static void road(ArrayList<byte[]> out, String road) {
        // At most four 20-byte chunks, never truncate in the middle of a surrogate pair.
        int end = Math.min(road.length(), 40);
        if (end < road.length() && end > 0 && Character.isHighSurrogate(road.charAt(end - 1))) end--;
        road = road.substring(0, end);
        out.add(new byte[]{13, (byte) end});
        int chunks = (end + 9) / 10;
        for (int i = 0; i < chunks; i++) {
            int length = Math.min(10, end - i * 10);
            byte[] packet = new byte[3 + length * 2];
            packet[0] = 14; packet[1] = (byte) (length * 2);
            packet[2] = (byte) ((chunks << 4) | (i + 1));
            for (int j = 0; j < length; j++) {
                char c = road.charAt(i * 10 + j);
                packet[3 + j * 2] = (byte) c;
                packet[4 + j * 2] = (byte) (c >>> 8);
            }
            out.add(packet);
        }
    }

    static void distance(ArrayList<byte[]> out, int sub, Long meters) {
        if (meters == null || meters.longValue() < 0) return;
        long m = meters.longValue();
        out.add(new byte[]{(byte) sub, (byte) (m < 1000 ? 1 : 0)});
        out.add(word(sub + 1, m < 1000 ? m * 10 : Math.round(m / 100.0)));
    }

    static byte[] word(int sub, long value) {
        int v = (int) Math.max(0, Math.min(65535, value));
        return new byte[]{(byte) sub, (byte) (v >>> 8), (byte) v};
    }

    static int icon(int appleType, int side) {
        // BydManeuverCodes.gaode is the BYD icon vocabulary, NOT Amap's ICON integer.
        int code = BydManeuverCodes.INSTANCE.gaode(appleType, side);
        if (code >= 25 && code <= 34) return code - 14; // ECarX 121..130 -> 11..20
        if (code >= 35 && code <= 44) return code - 10; // ECarX 131..140 -> 25..34
        switch (code) {
            case 1: return 2;  // Amap 2 -> ECarX 102 -> E01 left
            case 2: return 3;
            case 3: return 4;
            case 4: return 5;
            case 7: return 6;
            case 8: return 7;
            case 9: return 8;
            case 10: return 39; // Amap 19 -> ECarX 119
            case 11: return 9;
            case 13: return side == 1 ? 37 : 35; // Amap 17 / 11 -> 117 / 111
            case 24: return side == 1 ? 38 : 36;
            case 48: return 23; // Amap 15 -> ECarX 115
            default: return 0; // Unknown must not invent an arrow.
        }
    }

    private E01TbtPackets() {}
}
