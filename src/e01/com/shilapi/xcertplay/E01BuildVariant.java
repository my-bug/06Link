package com.shilapi.xcertplay;

import android.app.Activity;
import android.content.Context;
import java.io.IOException;
import java.io.InputStream;

/** A public-source debug APK can exercise the UI without private authentication. */
public final class E01BuildVariant {
    public static final String AUTH_UNAVAILABLE =
            "此调试版未包含 MFi 认证凭据，不能连接 CarPlay。可以浏览界面和设置；实际连接需要自行提供合法认证凭据。";
    private static volatile Boolean preview;

    private E01BuildVariant() {}

    public static boolean isPreview(Context context) {
        Boolean known = preview;
        if (known != null) return known;
        // Only debug builds contain this marker. Release assets and initialization
        // remain unchanged; do not infer authentication readiness from device state.
        try (InputStream marker = context.getAssets().open("build-variant.json")) {
            preview = true;
        } catch (IOException absent) {
            preview = false;
        }
        return preview;
    }

    public static boolean blockConnection(Activity activity) {
        if (!isPreview(activity)) return false;
        E01NativeSettings.cancelStartup(activity);
        E01NativeUi.confirm(activity, "调试版 · 无认证凭据", AUTH_UNAVAILABLE,
                "知道了", new Runnable() { public void run() {} });
        return true;
    }
}
