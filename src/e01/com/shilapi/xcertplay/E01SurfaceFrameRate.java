package com.shilapi.xcertplay;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.WeakHashMap;

/** Advisory rate for a playing main-screen Surface on Android 11+. */
final class E01SurfaceFrameRate {
    private static final Map<Object, Use> USES = new WeakHashMap<Object, Use>();
    private static final class Use {
        final WeakReference<Activity> owner;
        final Surface surface;
        Use(Activity a, Surface s) { owner = new WeakReference<Activity>(a); surface = s; }
    }
    static void started(Object token, Activity owner, Surface surface) {
        if (Build.VERSION.SDK_INT < 30 || token == null || owner == null || surface == null) return;
        Use previous;
        synchronized (USES) { previous = USES.put(token, new Use(owner, surface)); }
        if (previous != null) refresh(previous.owner.get());
        refresh(owner);
    }
    static void stopped(Object token) {
        if (Build.VERSION.SDK_INT < 30 || token == null) return;
        Use previous;
        synchronized (USES) { previous = USES.remove(token); }
        if (previous != null) refresh(previous.owner.get());
    }
    private static boolean playing(Activity owner, Surface surface) {
        synchronized (USES) {
            for (Use use : USES.values()) {
                if (use.owner.get() == owner && use.surface == surface) return true;
            }
        }
        return false;
    }
    static void refresh(Activity activity) {
        if (Build.VERSION.SDK_INT < 30 || activity == null) return;
        final WeakReference<Activity> owner = new WeakReference<Activity>(activity);
        // Visibility callbacks own a monitor. Apply outside it on the UI thread;
        // read current ownership there, so queued callbacks cannot revive a stopped session.
        try {
            Api30.UI.post(new Runnable() {
                public void run() {
                    Activity current = owner.get();
                    if (current != null) Api30.refresh(current);
                }
            });
        } catch (RuntimeException | LinkageError ignored) { }
    }

    /** Separate class keeps the newer Surface API out of legacy device verification. */
    private static final class Api30 {
        static final Handler UI = new Handler(Looper.getMainLooper());
        // Public Android 11 API, looked up because the project also compiles against its legacy SDK.
        // Surface.FRAME_RATE_COMPATIBILITY_FIXED_SOURCE has the official value 1.
        static final int FIXED_SOURCE = 1;
        static final Method SET_RATE = setRateMethod();
        private static Method setRateMethod() {
            try { return Surface.class.getMethod("setFrameRate", float.class, int.class); }
            catch (ReflectiveOperationException | RuntimeException | LinkageError ignored) { return null; }
        }
        static final Map<Activity, Applied> OWNERS = new WeakHashMap<Activity, Applied>();
        static final class Applied {
            final Surface surface;
            int rate = -1;
            Applied(Surface value) { surface = value; }
            void set(int wanted) {
                if (SET_RATE == null || rate == wanted || !surface.isValid()) return;
                try {
                    SET_RATE.invoke(surface, (float) wanted, FIXED_SOURCE);
                    rate = wanted;
                } catch (ReflectiveOperationException | RuntimeException | LinkageError ignored) {
                    // Driver rejection affects only this optional hint, never playback.
                }
            }
        }
        static void refresh(Activity activity) {
            Surface surface = E01VideoVisibility.currentSurface(activity);
            Applied old = OWNERS.get(activity);
            if (old != null && old.surface != surface) {
                old.set(0); OWNERS.remove(activity); old = null;
            }
            if (surface == null || !surface.isValid()) { OWNERS.remove(activity); return; }
            if (old == null) { old = new Applied(surface); OWNERS.put(activity, old); }
            old.set(E01VideoVisibility.visible(activity, surface) && playing(activity, surface)
                ? E01SmoothVideo.selectedFps(activity) : 0);
        }
    }
    private E01SurfaceFrameRate() { }
}
