package com.shilapi.xcertplay;

import android.app.Activity;
import android.os.SystemClock;
import android.view.Surface;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.WeakHashMap;

/** Judge load only over uninterrupted, visible main-screen statistics windows. */
public final class E01VideoVisibility {
    private static final Map<Activity, State> STATES = new WeakHashMap<Activity, State>();
    private static final Map<Object, Ticket> DECISIONS = new IdentityHashMap<Object, Ticket>();
    private static final ThreadLocal<Ticket> WINDOW = new ThreadLocal<Ticket>();
    private static long epoch;
    static final class State {
        boolean foreground;
        Surface surface;
        long epoch, sampleEpoch = -1, visibleSince;
        Object guard, watch;
    }
    static final class Ticket {
        final WeakReference<Activity> owner;
        final long epoch;
        Ticket(Activity a, long e) { owner = new WeakReference<Activity>(a); epoch = e; }
    }
    private static State state(Activity a) {
        State s = STATES.get(a);
        if (s == null) { s = new State(); s.epoch = ++epoch; STATES.put(a, s); }
        return s;
    }
    private static void changed(State s) {
        s.epoch = ++epoch; s.sampleEpoch = -1; s.visibleSince = SystemClock.elapsedRealtime();
    }
    public static synchronized void resumed(Activity a) {
        State s = state(a); if (!s.foreground) { s.foreground = true; changed(s); }
        E01DirectOutputClock.refresh(a);
    }
    public static synchronized void paused(Activity a) {
        State s = state(a); if (s.foreground) { s.foreground = false; changed(s); }
        for (java.util.Iterator<Map.Entry<Object, Ticket>> it = DECISIONS.entrySet().iterator(); it.hasNext();) {
            Activity owner = it.next().getValue().owner.get(); if (owner == null || owner == a) it.remove();
        }
        E01DirectOutputClock.refresh(a);
    }
    public static synchronized void surfaceReady(Activity a, Surface surface) {
        State s = state(a); if (s.surface != surface) { s.surface = surface; changed(s); }
        E01DirectOutputClock.refresh(a);
    }
    public static synchronized void surfaceLost(Activity a, Surface surface) {
        State s = STATES.get(a);
        // A retiring old Surface must not invalidate a replacement Surface.
        if (s != null && s.surface == surface) { s.surface = null; changed(s); }
        E01DirectOutputClock.refresh(a);
    }
    public static synchronized void destroyed(Activity a) { paused(a); STATES.remove(a); }
    private static boolean active(Activity a, State s) {
        return s != null && s.foreground && s.surface != null && s.surface.isValid()
            && !a.isFinishing() && !a.isDestroyed();
    }
    static synchronized boolean visible(Activity a, Surface surface) {
        State s = STATES.get(a);
        return active(a, s) && s.surface == surface;
    }
    public static synchronized boolean acceptWindow(Activity a, Object guard, Object watch) {
        WINDOW.remove(); State s = STATES.get(a);
        if (!active(a, s)) {
            reset(guard); reset(watch);
            if (s != null) s.sampleEpoch = -1;
            return false;
        }
        if (s.sampleEpoch != s.epoch || s.guard != guard || s.watch != watch) {
            reset(guard); reset(watch);
            s.sampleEpoch = s.epoch; s.guard = guard; s.watch = watch;
            // This first callback can include hidden time, even after a long pause.
            // The next VideoStats callback covers a complete foreground window.
            return false;
        }
        WINDOW.set(new Ticket(a, s.epoch)); return true;
    }
    private static boolean current(Activity a, Ticket ticket) {
        State s = STATES.get(a);
        return ticket != null && ticket.owner.get() == a && active(a, s) && ticket.epoch == s.epoch;
    }
    public static synchronized boolean currentWindow(Activity a) { return current(a, WINDOW.get()); }
    public static synchronized void recordDecision(Activity a, Object adaptation) {
        Ticket ticket = WINDOW.get();
        if (adaptation != null && current(a, ticket)) {
            if (DECISIONS.size() >= 8) DECISIONS.clear();
            DECISIONS.put(adaptation, ticket);
        }
    }
    public static synchronized boolean takeDecision(Activity a, Object adaptation) {
        return current(a, DECISIONS.remove(adaptation));
    }
    public static synchronized boolean allowSessionAdaptation(Activity a) {
        State s = STATES.get(a);
        return active(a, s) && SystemClock.elapsedRealtime() - s.visibleSince >= 5000;
    }
    private static void reset(Object guard) {
        if (guard == null) return;
        // Original guards are synchronized; use their own monitor for history reset.
        synchronized (guard) {
            try {
                Object recent = field(guard, "recent").get(guard);
                if (recent instanceof Collection) ((Collection<?>) recent).clear();
                field(guard, "concluded").setBoolean(guard, false);
                try { field(guard, "windows").setInt(guard, 0); }
                catch (NoSuchFieldException notWindowed) { }
            } catch (ReflectiveOperationException | RuntimeException ignored) { }
        }
    }
    private static Field field(Object o, String name) throws NoSuchFieldException {
        Field f = o.getClass().getDeclaredField(name); f.setAccessible(true); return f;
    }
    private E01VideoVisibility() { }
}
