package com.shilapi.xcertplay;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;

import java.io.File;

/** Channel selection for the E01's legacy system hotspot. */
public final class E01HotspotBand {
    private static final String KEY = "hotspot_band";
    private static final String FIVE_GHZ = "5ghz";
    private static final String AUTO = "auto";
    private static final int E01_FIVE_GHZ_CHANNEL = 149;

    public static boolean isSupported() {
        return Build.VERSION.SDK_INT == 22 && "E01".equals(Build.MODEL) && "BX11QJ".equals(Build.DEVICE);
    }

    private static SharedPreferences preferences(Context context) {
        return context.getSharedPreferences("free_auto_hotspot_name", Context.MODE_PRIVATE);
    }

    public static boolean prefers5Ghz(Context context) {
        return FIVE_GHZ.equals(preferences(context).getString(KEY, null));
    }

    public static void setPrefers5Ghz(Context context, boolean enabled) {
        preferences(context).edit().putString(KEY, enabled ? FIVE_GHZ : AUTO).apply();
    }

    public static boolean enableHotspot(Context context, WifiManager wifi, WifiConfiguration base) {
        if (!E01HotspotControl.allowed()) return false;
        String selection = isSupported() ? preferences(context).getString(KEY, null) : null;
        if (!FIVE_GHZ.equals(selection) && !AUTO.equals(selection)) {
            // Existing installations keep the system's saved channel and null-config fallback.
            return E01HotspotControl.enableHotspot(wifi, base);
        }

        boolean fiveGhz = FIVE_GHZ.equals(selection);
        String requested = fiveGhz ? "5 GHz（信道 149）" : "自动选信道";
        WifiConfiguration request;
        try {
            WifiConfiguration source = base != null ? base : wifi.getWifiApConfiguration();
            if (source == null || "*".equals(source.preSharedKey)) {
                log(context, "无法完整读取原热点配置，未提交" + requested + "请求");
                return false;
            }
            request = new WifiConfiguration(source);
            // This ROM uses channel, including zero for automatic selection.
            WifiConfiguration.class.getField("channel").setInt(request, fiveGhz ? E01_FIVE_GHZ_CHANNEL : 0);
        } catch (NoSuchFieldException | IllegalAccessException | RuntimeException | LinkageError unavailable) {
            log(context, "无法设置原厂热点信道，未提交" + requested + "请求");
            return false;
        }

        boolean accepted = E01HotspotControl.enableHotspot(wifi, request);
        log(context, accepted ? "已请求" + requested : "未能启动热点，请求为" + requested);
        return accepted;
    }

    private static void log(Context context, String message) {
        try {
            E01LogPolicy.queueSession(new File(context.getFilesDir(), "logs/06link.log"), "[热点频段] " + message);
        } catch (RuntimeException unavailable) {
            // Logging is independent of hotspot startup.
        }
    }

    private E01HotspotBand() { }
}
