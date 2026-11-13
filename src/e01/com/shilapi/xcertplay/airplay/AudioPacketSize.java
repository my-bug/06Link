package com.shilapi.xcertplay.airplay;

/** DiPlay PR #1148: PCM RTP payload plus encryption must fit the existing 1500-byte USB link. */
public final class AudioPacketSize {
    public static int pcmFrameMillis(int sampleRate, int channels) {
        for (int millis = 20; millis >= 5; millis /= 2) {
            long samples = (long) sampleRate * millis / 1000;
            if (samples * channels * 2 + 12 + 16 + 8 + 40 + 8 <= 1500) return millis;
        }
        return 5;
    }
    public static int opusClockRate(long formatBits) {
        return (formatBits & 0x40000000L) != 0 ? 48000 : (formatBits & 0x20000000L) != 0 ? 24000 : 16000;
    }
    private AudioPacketSize() { }
}
