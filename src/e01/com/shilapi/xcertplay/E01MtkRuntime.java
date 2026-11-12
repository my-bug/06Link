package com.shilapi.xcertplay;
import android.media.MediaCodec;
import android.view.Surface;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

/** Retire an accepted MTK option for this decoder after runtime failure; user preference is retained. */
public final class E01MtkRuntime {
    private static final Map<Object,Boolean> RETIRED = Collections.synchronizedMap(new WeakHashMap<Object,Boolean>());
    public static boolean allow(Object owner, boolean tuned) { return tuned && !RETIRED.containsKey(owner); }
    public static void onRecovery(Object owner, Surface surface, MediaCodec codec, String reason) {
        if (reason != null && reason.contains("video decoder input stalled")) retire(owner, surface, codec, "input stalled");
    }
    public static void onFailure(Object owner, Surface surface, MediaCodec codec, Throwable failure) {
        if (failure instanceof IllegalStateException) retire(owner, surface, codec, "codec runtime failure");
    }
    private static void retire(Object owner, Surface surface, MediaCodec codec, String reason) {
        if (codec == null || RETIRED.containsKey(owner)) return;
        E01SmoothVideo.Output output = E01SmoothVideo.OUTPUTS.get(surface);
        if (output == null) return;
        try {
            boolean enabled = output.context.getSharedPreferences("06link-video",0).getBoolean("mtk",true);
            if (!E01MtkTuning.requested(codec.getName(), enabled, true)) return;
            RETIRED.put(owner, Boolean.TRUE);
            E01VideoEvidence.decision(output.context, "MTK low latency retired for this decoder: " + reason);
        } catch (RuntimeException ignored) { }
    }
    private E01MtkRuntime() { }
}
