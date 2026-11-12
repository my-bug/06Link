package com.shilapi.xcertplay;

import android.net.wifi.WifiManager;
import android.net.wifi.WifiConfiguration;

/** Process-local user intent and cancellation epochs for every automatic AP path. */
public final class E01HotspotControl {
    private static final Object LOCK = new Object();
    private static volatile long epoch;
    private static volatile boolean stopped;
    private static volatile boolean wired;
    private static final ThreadLocal<Long> request = new ThreadLocal<Long>();

    public static void pause() {
        synchronized (LOCK) { stopped = true; epoch++; }
        E01WiredPort.stop();
        E01StartupHotspot.cancel();
    }

    /** Only called by the existing explicit-connect branch, never by onResume. */
    static void resume() {
        synchronized (LOCK) { epoch++; stopped = false; wired = false; }
        E01WiredPort.stop();
    }

    /** Explicit wired connect cancels AP work without marking the session stopped. */
    public static void connectWired() {
        synchronized (LOCK) { epoch++; stopped = false; wired = true; }
        E01StartupHotspot.cancel();
    }

    /** Automatic starts may select transport, but can never clear a manual stop. */
    public static boolean automaticConnection(boolean wireless) {
        synchronized (LOCK) {
            if (stopped) return false;
            if (wired == wireless) { epoch++; wired = !wireless; }
            return true;
        }
    }

    /** Preserve a manual stop across activity recreation and automatic launch intents. */
    public static boolean userStopped(boolean value) {
        if (value) pause();
        return stopped;
    }

    static long token() {
        synchronized (LOCK) { return stopped || wired ? -1L : epoch; }
    }

    static boolean valid(long token) {
        return token >= 0L && !stopped && !wired && token == epoch && !Thread.currentThread().isInterrupted();
    }

    static boolean enter(long token) {
        if (!valid(token)) return false;
        request.set(Long.valueOf(token));
        return true;
    }

    static void leave() { request.remove(); }

    public static boolean allowed() {
        Long token = request.get();
        return valid(token == null ? token() : token.longValue());
    }

    static boolean disableWifi(WifiManager wifi) {
        synchronized (LOCK) {
            return allowed() && wifi.setWifiEnabled(false);
        }
    }

    static boolean restoreWifi(WifiManager wifi) {
        synchronized (LOCK) { return allowed() && wifi.setWifiEnabled(true); }
    }

    /** Serialize the final framework mutation with pause(), not the long AP wait. */
    public static boolean enableHotspot(WifiManager wifi, WifiConfiguration config) {
        synchronized (LOCK) {
            if (!allowed()) return false;
            try {
                Object result = WifiManager.class.getMethod("setWifiApEnabled",
                    WifiConfiguration.class, Boolean.TYPE).invoke(wifi, config, Boolean.TRUE);
                return Boolean.TRUE.equals(result);
            } catch (Exception unavailable) { return false; }
        }
    }

    private E01HotspotControl() { }
}
