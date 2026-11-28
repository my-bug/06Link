package com.shilapi.xcertplay.media;

public final class WirelessMusicGapCheck {
    private static final int RATE = 48000, FRAME = 1024, BYTES = 4096;
    private final WirelessMusicGap gap = new WirelessMusicGap(RATE, 4);
    private final byte[] rtp = new byte[13];

    private void receive(int seq, int frame) {
        rtp[2] = (byte) (seq >> 8);
        rtp[3] = (byte) seq;
        gap.received(rtp, frame * FRAME);
    }

    private void decode(int frame, int expected) {
        long pts = (frame * FRAME & 0xffffffffL) * 1000000L / RATE;
        int actual = gap.beforeDecoded(pts, BYTES);
        if (actual != expected) throw new AssertionError(frame + ": expected " + expected + ", got " + actual);
    }

    private void prime(int seq) {
        receive(seq, 0);
        decode(0, 0);
        receive(seq + 1, 1);
        decode(1, 0);
    }

    public static void main(String[] args) {
        if (WirelessMusicGap.hasRoom(0, 16384, BYTES, BYTES)
                || WirelessMusicGap.hasRoom(10000, 16384, BYTES, BYTES)
                || !WirelessMusicGap.hasRoom(8192, 16384, BYTES, BYTES)) {
            throw new AssertionError("only fill an active track with space for silence and real PCM");
        }
        WirelessMusicGapCheck t = new WirelessMusicGapCheck();
        java.nio.ByteBuffer zeros = t.gap.silence(BYTES);
        if (!zeros.isDirect() || zeros.remaining() != BYTES || zeros.get() != 0) throw new AssertionError("PCM silence");
        zeros.position(120); // nonblocking partial write advanced the view
        if (t.gap.silence(300) != zeros || zeros.position() != 0 || zeros.remaining() != 300) {
            throw new AssertionError("discard the old write's unwritten tail and reuse the buffer");
        }
        t.prime(65534);
        t.receive(1, 3);
        t.decode(3, BYTES); // sequence wrap and one missing packet
        t.receive(4, 6);
        t.decode(6, 2 * BYTES);
        t.receive(8, 10);
        t.decode(10, 0); // burst is larger than isolated compensation

        t = new WirelessMusicGapCheck();
        t.prime(0);
        t.receive(2, 2); // deliberately dropped by the playback queue
        t.receive(4, 4); // one further missing network packet
        t.decode(4, 0); // two holes cannot be attributed to only one loss

        t = new WirelessMusicGapCheck();
        t.prime(0);
        t.receive(3, 3);
        t.receive(2, 2); // the missing packet was late
        t.decode(3, 0);

        t = new WirelessMusicGapCheck();
        t.prime(0);
        t.receive(3, 3);
        t.gap.reset(); // track ran dry
        t.decode(3, 0);

        t = new WirelessMusicGapCheck();
        t.prime(0);
        t.receive(3, 3);
        t.decode(50, 0); // decoder did not preserve the marked timestamp
        t.decode(3, 0);

        t = new WirelessMusicGapCheck();
        t.prime(0);
        t.receive(3, 40); // timestamp jumped much further than the missing sequence
        t.decode(40, 0);
    }
}
