package com.shilapi.xcertplay;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Build;
import android.util.Log;

/** Called only for a registered main display, enabled MTK setting and tuned MTK codec. */
public final class E01MtkCompat {
    public static void configure(MediaFormat format, Context context) {
        format.setInteger("vdec-lowlatency", 1);
        boolean noReorder = false;
        if (Build.VERSION.SDK_INT == 22 && "E01".equals(Build.MODEL) && "BX11QJ".equals(Build.DEVICE)) {
            try {
                noReorder = "video/avc".equals(format.getString("mime")) &&
                    E01AvcReorder.permitsNoReorder(format.getByteBuffer("csd-0"));
            } catch (RuntimeException ignored) { /* Unknown CSD retains existing low-latency mode. */ }
        }
        // This firmware enables the native option even for value 0. Omit on other paths.
        if (noReorder) format.setInteger("vdec-no-record", 1);
        String decision = "MTK lowLatency=1 noReorder=" + (noReorder ? "1" : "0") + " SPS-gated";
        Log.i("06Link-video", decision);
        E01VideoEvidence.decision(context, decision);
    }
    private E01MtkCompat() { }
}
