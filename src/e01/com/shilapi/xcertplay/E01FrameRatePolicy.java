package com.shilapi.xcertplay;

import android.content.Context;
import android.content.SharedPreferences;

/** One saved rate for settings, negotiation and rendering; no automatic downgrade. */
public final class E01FrameRatePolicy {
    private static final int DEFAULT_FPS = 60;
    private static final String AIRPLAY = "xcertplay_airplay";
    private static final String MIGRATED = "fixed_fps_selection";

    public static synchronized int selectedFps(Context context) {
        SharedPreferences prefs = context.getSharedPreferences(AIRPLAY, 0);
        if (!prefs.getBoolean(MIGRATED, false)) {
            SharedPreferences video = context.getSharedPreferences("06link-video", 0);
            int fps = video.getBoolean("force60", false) || "auto".equals(prefs.getString("display_fps_mode", null))
                ? DEFAULT_FPS
                : normalize(prefs.getInt("display_fps", DEFAULT_FPS));
            // Store the migrated selection before retiring the old override.
            editor(prefs, fps).apply();
            video.edit().remove("force60").apply();
            return fps;
        }
        return normalize(prefs.getInt("display_fps", DEFAULT_FPS));
    }

    public static synchronized boolean save(Context context, int fps) {
        if (fps != 30 && fps != 60) throw new IllegalArgumentException("Unsupported frame rate");
        boolean saved = editor(context.getSharedPreferences(AIRPLAY, 0), fps).commit();
        if (saved) context.getSharedPreferences("06link-video", 0).edit().remove("force60").apply();
        return saved;
    }

    private static SharedPreferences.Editor editor(SharedPreferences prefs, int fps) {
        return prefs.edit().putInt("display_fps", fps).putBoolean(MIGRATED, true)
            .remove("display_fps_mode").remove("display_fps60_unsustainable")
            .remove("display_fps_auto_last");
    }

    private static int normalize(int fps) { return fps >= 60 ? 60 : 30; }
    private E01FrameRatePolicy() { }
}
