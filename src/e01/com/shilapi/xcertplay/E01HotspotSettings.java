package com.shilapi.xcertplay;

import android.content.Context;
import android.widget.Button;

/** Hotspot credentials shared by native settings and the AP connection flow. */
public final class E01HotspotSettings {
    private static final String PREFS = "free_auto_hotspot_name";
    private E01HotspotSettings() {}

    public static String customName(Context context) {
        return context.getSharedPreferences(PREFS, 0).getString("custom_ssid", null);
    }

    public static boolean validPassword(String value) {
        if (value == null || value.length() < 8 || value.length() > 63) return false;
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            if (c < 32 || c > 126) return false;
        }
        return true;
    }

    public static String validationError(String name, String pass) {
        if (name == null || name.trim().length() == 0) return "请输入热点名称。";
        if (name.indexOf('\0') >= 0) return "热点名称含无效字符。";
        try {
            if (name.getBytes("UTF-8").length > 32) return "热点名称最多32字节。";
        } catch (java.io.UnsupportedEncodingException impossible) { throw new AssertionError(impossible); }
        if (!validPassword(pass)) return "密码需为8—63位字母、数字或符号。";
        return null;
    }

    public static boolean save(Context context, String name, String pass) {
        if (validationError(name, pass) != null) return false;
        // The existing AP name rule consumes these values before reading actual
        // credentials for iAP2. System-to-manual synchronization cannot erase them.
        boolean saved = context.getSharedPreferences(PREFS, 0).edit()
            .putString("custom_ssid", name).putString("password", pass)
            .putBoolean("password_renew_pending", true).commit();
        if (!saved) return false;
        AirPlayPersistence p = AirPlayPersistence.INSTANCE;
        p.saveManualHotspotSsid(context, name);
        p.saveManualHotspotPassphrase(context, pass);
        p.saveManualHotspotSecurity(context,
            com.shilapi.xcertplay.orchestration.ManualHotspotSecurity.WPA2);
        return true;
    }

    /** Action style used by map zoom controls. */
    public static void styleActionButton(Button button) {
        Context context = button.getContext();
        float density = context.getResources().getDisplayMetrics().density;
        Glass glass = Glass.INSTANCE;
        android.graphics.drawable.Drawable normal = glass.panel(context, Glass.Kind.CONTROL, 12f, glass.getCurrent());
        android.graphics.drawable.Drawable disabled = glass.panel(context, Glass.Kind.CONTROL, 12f, glass.getCurrent());
        disabled.setAlpha(100);
        android.graphics.drawable.StateListDrawable states = new android.graphics.drawable.StateListDrawable();
        states.addState(new int[] {-0x0101009e}, disabled);
        states.addState(new int[0], LegacyViewsKt.rippleCompat(
            android.content.res.ColorStateList.valueOf(glass.getRIPPLE()), normal, null));
        button.setBackgroundTintList(null);
        LegacyViewsKt.setBackgroundCompat(button, states);
        LegacyViewsKt.clearStateListAnimatorCompat(button);
        button.setElevation(0f);
        button.setTextColor(new android.content.res.ColorStateList(
            new int[][] {new int[] {-0x0101009e}, new int[0]},
            new int[] {glass.getMUTED(), glass.getTEXT()}));
        button.setAllCaps(false);
        button.setTextSize(17f);
        button.setTypeface(android.graphics.Typeface.create("sans-serif-medium", 0));
        button.setPadding(Math.round(16 * density), Math.round(10 * density),
                          Math.round(16 * density), Math.round(10 * density));
        button.setMinHeight(Math.round(54 * density));
        button.setMinimumHeight(Math.round(54 * density));
    }

}
