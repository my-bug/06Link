package com.shilapi.xcertplay;

import android.app.Activity;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/** UI presence hint. USB enumeration and actual transport ownership remain separate. */
public final class E01UsbPresence {
    private static final Object LOCK = new Object();
    private static final long FRESH_MS = 1000;
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final ThreadPoolExecutor IO = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS,
            new LinkedBlockingQueue<Runnable>(), r -> {
                Thread t = new Thread(r, "06Link-usb-presence"); t.setDaemon(true); return t;
            });
    private static final WeakHashMap<Activity, Boolean> WAITERS = new WeakHashMap<Activity, Boolean>();
    private static Boolean present;
    private static long observedAt = -1, generation;
    private static boolean reading;

    public static Boolean iphone(Context context) {
        final Context app = context.getApplicationContext();
        synchronized (LOCK) {
            long now = SystemClock.elapsedRealtime();
            if (observedAt >= 0 && now - observedAt < FRESH_MS) return present;
            if (context instanceof Activity && context.getClass().getName().equals(
                    "com.shilapi.xcertplay.CarPlayHostActivity")) {
                WAITERS.put((Activity) context, Boolean.TRUE);
            }
            if (!reading) {
                reading = true;
                final long ticket = generation;
                IO.execute(() -> read(app, ticket));
            }
            // Unknown is not a detach. Never authorize a new VPN from an expired snapshot.
            return null;
        }
    }

    /** The host already filtered the system USB broadcast to Apple devices. */
    public static void changed(boolean attached) {
        synchronized (LOCK) {
            generation++;
            present = Boolean.valueOf(attached);
            observedAt = SystemClock.elapsedRealtime();
        }
    }

    private static void read(Context context, long ticket) {
        Boolean result = null;
        try {
            UsbManager manager = (UsbManager) context.getSystemService(Context.USB_SERVICE);
            if (manager != null) {
                result = Boolean.FALSE;
                for (UsbDevice device : manager.getDeviceList().values()) {
                    if (device.getVendorId() == 0x05ac) { result = Boolean.TRUE; break; }
                }
            }
        } catch (RuntimeException ignored) { result = null; /* Unknown is not unplugged. */ }
        ArrayList<WeakReference<Activity>> callbacks = new ArrayList<WeakReference<Activity>>();
        long completed;
        synchronized (LOCK) {
            reading = false;
            if (ticket == generation) { present = result; observedAt = SystemClock.elapsedRealtime(); }
            completed = generation;
            if (Boolean.TRUE.equals(present)) {
                for (Activity host : WAITERS.keySet()) callbacks.add(new WeakReference<Activity>(host));
            }
            WAITERS.clear();
        }
        final long current = completed;
        for (WeakReference<Activity> ref : callbacks) MAIN.post(() -> resumePendingConsent(ref, current));
    }

    private static void resumePendingConsent(WeakReference<Activity> ref, long ticket) {
        Activity host = ref.get();
        if (host == null || host.isFinishing()
                || (android.os.Build.VERSION.SDK_INT >= 17 && host.isDestroyed())) return;
        synchronized (LOCK) {
            if (ticket != generation || !Boolean.TRUE.equals(present)) return;
        }
        try {
            if (flag(host, "shuttingDown") || flag(host, "wirelessEnabled") || flag(host, "wiredRetryStopped")
                    || flag(host, "vpnReady") || flag(host, "awaitingVpnConsent")
                    || !flag(host, "vpnConsentAwaitsIphone")) return;
            Method method = host.getClass().getDeclaredMethod("requestVpnConsent");
            method.setAccessible(true);
            method.invoke(host);
        } catch (ReflectiveOperationException | RuntimeException error) {
            android.util.Log.w("06Link-usb", "USB presence resume failed", error);
        }
    }

    private static boolean flag(Activity host, String name) throws ReflectiveOperationException {
        Field field = host.getClass().getDeclaredField(name);
        field.setAccessible(true);
        Object value = field.get(host);
        return value instanceof java.util.concurrent.atomic.AtomicBoolean
                ? ((java.util.concurrent.atomic.AtomicBoolean) value).get() : Boolean.TRUE.equals(value);
    }
    private E01UsbPresence() { }
}
