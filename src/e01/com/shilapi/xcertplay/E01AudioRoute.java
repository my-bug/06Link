package com.shilapi.xcertplay;
import android.os.Build;
/** E01 OEM AudioPolicy + captured AudioService; these are streams, not PCM gains. */
public final class E01AudioRoute {
    public static boolean supported() {
        return Build.VERSION.SDK_INT == 22 && "E01".equals(Build.MODEL) && "BX11QJ".equals(Build.DEVICE);
    }
    public static int stream(String channel) {
        if (!supported()) return -1;
        if ("MEDIA".equals(channel)) return 3;
        if ("NAVIGATION".equals(channel)) return 10;
        if ("ASSISTANT".equals(channel)) return 9;
        if ("PHONE".equals(channel)) return 6;
        return -1;
    }
    public static int trackedStream(int override, int fallback) {
        return supported() && (override == 3 || override == 6 || override == 9 || override == 10) ? override : fallback;
    }
    // Keep existing media-key focus acquisition when absent; do not force reacquire on each music restart.
    public static boolean forceMusicFocus(boolean requested) { return !supported() && requested; }
    private E01AudioRoute() {}
}
