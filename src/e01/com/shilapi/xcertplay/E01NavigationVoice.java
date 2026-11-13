package com.shilapi.xcertplay;

import android.content.Context;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/** Negotiate clearer wired prompts at /info time, without altering PCM or audio routing.
 * Based on DiPlay PR #622 (issues #148/#341); restricted here to wired sessions.
 * The session snapshots the preference before starting its control thread.
 */
public final class E01NavigationVoice {
    private static final String PREFS = "06link-audio";
    private static final String KEY = "wired_navigation_hd";
    // PCM 8/16 kHz, mono/stereo. Leave 24/32/44.1/48 kHz and compressed formats offered.
    private static final long LOW_SPEECH_RATES = 0x3cL;

    public static boolean enabled(Context context) {
        return context.getSharedPreferences(PREFS, 0).getBoolean(KEY, false);
    }

    public static boolean save(Context context, boolean enabled) {
        return context.getSharedPreferences(PREFS, 0).edit().putBoolean(KEY, enabled).commit();
    }

    public static boolean forConnection(Context context, boolean wireless) {
        return !wireless && enabled(context);
    }

    public static String status(boolean wireless, boolean enabled) {
        if (wireless) return "[导航语音] 无线连接，使用原有语音格式";
        return enabled ? "[导航语音] 有线高清开启，导航与提示音不提供8/16kHz，实际格式见 Audio: ready"
                : "[导航语音] 有线高清关闭，使用原有语音格式";
    }

    /** Copy only the changed /info entries; microphone formats and other roles remain intact. */
    public static Map<String, Object> apply(Map<String, Object> info, boolean enabled) {
        if (!enabled || !(info.get("audioFormats") instanceof List)) return info;
        List<?> formats = (List<?>) info.get("audioFormats");
        ArrayList<Object> changed = null;
        for (int i = 0; i < formats.size(); i++) {
            Object value = formats.get(i);
            if (!(value instanceof Map)) continue;
            Map<?, ?> format = (Map<?, ?>) value;
            Object type = format.get("type");
            if (!(type instanceof Number)) continue;
            int stream = ((Number) type).intValue();
            Object role = format.get("audioType");
            boolean speech = (stream == 100 && ("default".equals(role) || "alert".equals(role)))
                    || (stream == 101 && "default".equals(role));
            if (!speech) continue;
            Object output = format.get("audioOutputFormats");
            if (!(output instanceof Integer) && !(output instanceof Long)) continue;
            long original = ((Number) output).longValue();
            long filtered = original & ~LOW_SPEECH_RATES;
            if (filtered == original) continue;
            LinkedHashMap<Object, Object> entry = new LinkedHashMap<Object, Object>(format);
            if (output instanceof Long) entry.put("audioOutputFormats", Long.valueOf(filtered));
            else entry.put("audioOutputFormats", Integer.valueOf((int) filtered));
            if (changed == null) changed = new ArrayList<Object>(formats);
            changed.set(i, entry);
        }
        if (changed == null) return info;
        LinkedHashMap<String, Object> result = new LinkedHashMap<String, Object>(info);
        result.put("audioFormats", changed);
        return result;
    }

    private E01NavigationVoice() { }
}
