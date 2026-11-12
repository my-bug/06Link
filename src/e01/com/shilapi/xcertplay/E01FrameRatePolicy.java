package com.shilapi.xcertplay;

import android.content.Context;
import android.content.SharedPreferences;

/** Saved frame-rate intent is independent of a failed previous connection. */
public final class E01FrameRatePolicy {
    private static final String AIRPLAY = "xcertplay_airplay";
    private static final String LEGACY_LIMIT = "display_fps60_unsustainable";

    public static boolean automatic(Context context) {
        SharedPreferences prefs = context.getSharedPreferences(AIRPLAY, 0);
        String mode = prefs.getString("display_fps_mode", null);
        if ("auto".equals(mode)) return true;
        if ("manual".equals(mode)) return false;
        // Preserve a legacy explicit choice. Reading settings must never overwrite it.
        return !prefs.contains("display_fps");
    }

    public static boolean force60(Context context) {
        return context.getSharedPreferences("06link-video", 0).getBoolean("force60", false);
    }

    /** selectedFps has already been sanitized by AirPlayPersistence. Called at negotiation only. */
    public static int connectionFps(Context context, boolean automatic, int selectedFps,
                                    boolean reducedForSession) {
        SharedPreferences prefs = context.getSharedPreferences(AIRPLAY, 0);
        // Old versions persisted transient overload and silently capped all later connections.
        // Retire that flag without changing the user's mode, rate or other video options.
        if (prefs.contains(LEGACY_LIMIT)) prefs.edit().remove(LEGACY_LIMIT).apply();
        if (force60(context)) return 60;
        if (automatic || reducedForSession) return 30;
        return selectedFps;
    }

    private E01FrameRatePolicy() { }
}
