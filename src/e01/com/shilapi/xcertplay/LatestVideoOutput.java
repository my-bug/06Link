package com.shilapi.xcertplay;
import android.media.MediaCodec;

/** Preserve FIFO output and codec signals. PTS-aware late dropping lives in E01SmoothVideo. */
public final class LatestVideoOutput {
    public static int take(MediaCodec codec, MediaCodec.BufferInfo info) {
        return codec.dequeueOutputBuffer(info, 0);
    }
    private LatestVideoOutput() { }
}
