package com.shilapi.xcertplay.media;

import android.annotation.TargetApi;
import android.media.AudioTrack;
import java.nio.ByteBuffer;

/** Kept outside AudioRenderer so older Android runtimes never resolve this overload. */
@TargetApi(21)
public final class AudioTrackApi21 {
    private AudioTrackApi21() {}

    public static int writeNonBlocking(AudioTrack track, ByteBuffer data, int bytes) {
        return track.write(data, bytes, AudioTrack.WRITE_NON_BLOCKING);
    }
}
