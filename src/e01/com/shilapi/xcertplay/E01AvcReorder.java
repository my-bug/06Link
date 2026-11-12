package com.shilapi.xcertplay;

import java.nio.ByteBuffer;
import java.util.Arrays;

/** Bounded AVC SPS reader. Enable no-reorder only with an explicit VUI guarantee. */
public final class E01AvcReorder {
    public static boolean permitsNoReorder(ByteBuffer source) {
        if (source == null || source.remaining() == 0 || source.remaining() > 8192) return false;
        ByteBuffer copy = source.duplicate();
        byte[] data = new byte[copy.remaining()]; copy.get(data);
        try {
            int first = start(data, 0);
            if (first < 0) return sps(data, 0, data.length);
            for (int i = 0; i < first; i++) if (data[i] != 0) return false;
            boolean found = false;
            for (int pos = first; pos >= 0;) {
                int begin = pos + (data[pos + 2] == 1 ? 3 : 4);
                int next = start(data, begin);
                int end = next < 0 ? data.length : next;
                if (begin >= end) return false;
                if ((data[begin] & 31) == 7) {
                    if (!sps(data, begin, end)) return false;
                    found = true;
                }
                pos = next;
            }
            return found;
        } catch (IllegalArgumentException e) { return false; }
    }
    private static int start(byte[] d, int offset) {
        for (int i = offset; i + 2 < d.length; i++)
            if (d[i] == 0 && d[i+1] == 0 && (d[i+2] == 1 ||
                (i+3 < d.length && d[i+2] == 0 && d[i+3] == 1))) return i;
        return -1;
    }
    private static boolean sps(byte[] d, int begin, int end) {
        if (begin >= end || (d[begin] & 0x9f) != 7) return false;
        byte[] rbsp = new byte[end - begin - 1]; int n = 0, zeros = 0;
        for (int i = begin+1; i < end; i++) {
            int v = d[i] & 255;
            if (zeros == 2 && v == 3) {
                if (i+1 >= end || (d[i+1] & 255) > 3) return false;
                zeros = 0; continue;
            }
            rbsp[n++] = d[i]; zeros = v == 0 ? zeros+1 : 0;
        }
        Bits b = new Bits(Arrays.copyOf(rbsp, n));
        int profile = b.read(8); b.read(8); b.read(8); b.ue();
        switch (profile) {
            case 100: case 110: case 122: case 244: case 44: case 83: case 86:
            case 118: case 128: case 138: case 139: case 134: case 135:
                int chroma = b.ue(); if (chroma > 3) return false;
                if (chroma == 3) b.read(1);
                b.ue(); b.ue(); b.read(1);
                if (b.bit()) for (int i = 0; i < (chroma == 3 ? 12 : 8); i++)
                    if (b.bit()) scaling(b, i < 6 ? 16 : 64);
                break;
            case 66: case 77: case 88: break;
            default: return false;
        }
        b.ue(); int poc = b.ue();
        if (poc == 0) b.ue();
        else if (poc == 1) {
            b.read(1); b.se(); b.se(); int count = b.ue();
            if (count > 255) return false;
            for (int i=0; i<count; i++) b.se();
        } else if (poc != 2) return false;
        int refs = b.ue(); b.read(1); b.ue(); b.ue();
        if (!b.bit()) b.read(1);
        b.read(1);
        if (b.bit()) for (int i=0; i<4; i++) b.ue();
        if (!b.bit()) return false; // No VUI is not proof of no reordering.
        if (b.bit() && b.read(8) == 255) { b.read(16); b.read(16); }
        if (b.bit()) b.read(1);
        if (b.bit()) { b.read(3); b.read(1); if (b.bit()) { b.read(8); b.read(8); b.read(8); } }
        if (b.bit()) { b.ue(); b.ue(); }
        if (b.bit()) { b.read(16); b.read(16); b.read(16); b.read(16); b.read(1); }
        boolean nal = b.bit(); if (nal) hrd(b);
        boolean vcl = b.bit(); if (vcl) hrd(b);
        if (nal || vcl) b.read(1);
        b.read(1);
        if (!b.bit()) return false;
        b.read(1); b.ue(); b.ue(); b.ue(); b.ue();
        int reorder = b.ue(), buffering = b.ue();
        if (!b.bit()) return false; // rbsp_stop_one_bit
        while (b.left() > 0) if (b.read(1) != 0) return false;
        return reorder == 0 && buffering >= refs && buffering <= 16;
    }
    private static void scaling(Bits b, int size) {
        int last = 8, next = 8;
        for (int j=0; j<size; j++) { if (next != 0) next = (last+b.se()+256) & 255; if (next != 0) last=next; }
    }
    private static void hrd(Bits b) {
        int count = b.ue(); if (count > 31) throw new IllegalArgumentException();
        b.read(8);
        for (int i=0; i<=count; i++) { b.ue(); b.ue(); b.read(1); }
        b.read(20);
    }
    private static final class Bits {
        final byte[] data; int pos;
        Bits(byte[] data) { this.data=data; }
        int left() { return data.length*8-pos; }
        int read(int count) {
            if (count < 0 || count > 30 || count > left()) throw new IllegalArgumentException();
            int value=0;
            while (count-- > 0) { value=(value<<1)|((data[pos>>3]>>(7-(pos&7)))&1); pos++; }
            return value;
        }
        boolean bit() { return read(1) != 0; }
        int ue() { int zeros=0; while (!bit()) if (++zeros > 28) throw new IllegalArgumentException(); return ((1<<zeros)-1)+read(zeros); }
        int se() { int u=ue(); return (u&1)==0 ? -(u/2) : (u+1)/2; }
    }
    private E01AvcReorder() { }
}
