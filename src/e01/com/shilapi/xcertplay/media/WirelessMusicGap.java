package com.shilapi.xcertplay.media;

/** Matches isolated RTP losses to timestamped AAC decoder output for one wireless music stream. */
public final class WirelessMusicGap {
    private final int sampleRate;
    private final int frameBytes;
    private int previousSeq = -1;
    private int previousSample;
    private int packetFrames;
    private final long[] markedPts = new long[16];
    private final int[] markedFrames = new int[markedPts.length];
    private int nextMark;
    private long previousOutputEndUs = -1;
    private java.nio.ByteBuffer silence;

    public WirelessMusicGap(int sampleRate, int frameBytes) {
        this.sampleRate = sampleRate;
        this.frameBytes = frameBytes;
    }

    // Called at ingress, before the playback queue can choose to drop a packet.
    public synchronized void received(byte[] rtp, int sample) {
        if (rtp.length <= 12) return;
        int seq = ((rtp[2] & 255) << 8) | (rtp[3] & 255);
        int step = (seq - previousSeq) & 65535;
        int elapsed = sample - previousSample; // modular 32-bit RTP clock
        if (previousSeq != -1 && step == 1) {
            packetFrames = elapsed > 0 && elapsed <= sampleRate / 20 ? elapsed : 0;
        } else if (previousSeq != -1 && (step == 2 || step == 3)
                && packetFrames > 0 && elapsed == step * packetFrames) {
            markedPts[nextMark] = (sample & 0xffffffffL) * 1000000L / sampleRate;
            markedFrames[nextMark] = (step - 1) * packetFrames;
            nextMark = (nextMark + 1) % markedPts.length;
        } else {
            // A repeat, late delivery, restart, or larger gap makes old marks ambiguous.
            reset();
            packetFrames = 0;
        }
        previousSeq = seq;
        previousSample = sample;
    }

    // The decoder can delay frames or discard timestamps. Only an exact stamp and
    // matching PCM duration establish that this is the original network hole.
    public synchronized int beforeDecoded(long ptsUs, int bytes) {
        int frames = bytes / frameBytes;
        if (frames <= 0 || bytes % frameBytes != 0) {
            reset();
            return 0;
        }
        long previousEnd = previousOutputEndUs;
        previousOutputEndUs = ptsUs + (frames * 1000000L + sampleRate / 2) / sampleRate;
        for (int i = 0; i < markedPts.length; i++) {
            int lost = markedFrames[i];
            if (lost == 0 || markedPts[i] != ptsUs) continue;
            markedFrames[i] = 0;
            long missingUs = (lost * 1000000L + sampleRate / 2) / sampleRate;
            if (previousEnd >= 0 && Math.abs(ptsUs - previousEnd - missingUs) <= 2) {
                return lost * frameBytes;
            }
        }
        return 0;
    }

    /** Never compensate across an exhausted output track. */
    public synchronized void reset() {
        java.util.Arrays.fill(markedFrames, 0);
        previousOutputEndUs = -1;
    }

    // The start level is capped at track capacity. Reserve the next real PCM block
    // first so an optional silence write never has to wait on a full music track.
    public static boolean hasRoom(long queued, int startBytes, int fillBytes, int pcmBytes) {
        return queued > 0 && queued <= (long) startBytes - fillBytes - pcmBytes;
    }

    // Only used by the playback thread, once the output track accepts compensation.
    public java.nio.ByteBuffer silence(int bytes) {
        if (silence == null || silence.capacity() < bytes) silence = java.nio.ByteBuffer.allocateDirect(bytes);
        // Use the Java 8 Buffer signatures available on Android 5.
        java.nio.Buffer view = silence;
        view.clear();
        view.limit(bytes);
        return silence;
    }
}
