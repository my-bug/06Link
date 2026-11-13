package com.shilapi.xcertplay.media;

/** Drain before dropping compressed audio; DiPlay #618 with #644's 100 ms audio limit. */
public final class AudioInputPump {
    public interface Input {
        boolean audioInputRunning();
        int dequeueAudioInput(long timeoutUs);
        void drainAudioOutput();
    }
    interface Clock { long nanoTime(); }
    private static final Clock CLOCK = new Clock() { public long nanoTime() { return System.nanoTime(); } };
    public static int acquire(Input input) { return acquire(input, CLOCK); }
    static int acquire(Input input, Clock clock) {
        if (!input.audioInputRunning()) return -1;
        long start = clock.nanoTime();
        int index = input.dequeueAudioInput(10_000L);
        if (index >= 0) return index;
        // Always drain and retry once, even if AudioTrack.write used the time budget.
        input.drainAudioOutput();
        if (!input.audioInputRunning()) return -1;
        index = input.dequeueAudioInput(0);
        while (index < 0 && input.audioInputRunning()) {
            long remaining = 100_000_000L - (clock.nanoTime() - start);
            if (remaining <= 0) return -1;
            index = input.dequeueAudioInput(Math.min(10_000L, Math.max(1L, remaining / 1000)));
            if (index >= 0) return index;
            input.drainAudioOutput();
        }
        return index;
    }
    private AudioInputPump() { }
}
