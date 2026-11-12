package com.shilapi.xcertplay;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/** Stops unneeded cluster access units before decoder creation, queuing and Annex-B conversion.
 * Only the explicit cluster switch closes this gate. A missing Surface, intro animation or
 * instrument power cycle must never do so. Re-enabling requires the existing reconnect flow;
 * resuming an old prediction-frame stream without a new key frame would be unsafe.
 */
public final class E01ClusterVideoGate {
    private static final String PREFS = "xcertplay_airplay";
    private static final String KEY = "cluster_map_enabled";
    private static final WeakHashMap<Object, State> states = new WeakHashMap<Object, State>();
    private static SharedPreferences preferences;
    private static volatile State latest;

    private static final class State {
        final WeakReference<Object> owner;
        volatile boolean blocked;
        boolean closed;
        State(Object sink, boolean blocked) {
            owner = new WeakReference<Object>(sink);
            this.blocked = blocked;
        }
    }

    // Kept strongly for SharedPreferences, which holds its listeners weakly on Android 5.1.
    // No Activity, Surface, decoder or strong sink reference is retained here.
    private static final SharedPreferences.OnSharedPreferenceChangeListener listener =
            new SharedPreferences.OnSharedPreferenceChangeListener() {
        public void onSharedPreferenceChanged(SharedPreferences source, String key) {
            if (key != null && !KEY.equals(key)) return;
            synchronized (states) {
                if (source != preferences) return;
                try {
                    if (source.getBoolean(KEY, false)) return;
                    for (State state : states.values()) state.blocked = true;
                } catch (RuntimeException ignored) {
                    // An unreadable setting is not evidence that the user disabled projection.
                }
            }
        }
    };

    private E01ClusterVideoGate() {}

    /** Called once for each complete media session, using its application Context. */
    public static void bind(Object sink, Context context) {
        if (sink == null || context == null || Build.VERSION.SDK_INT != 22
                || !"E01".equals(Build.MODEL) || !"BX11QJ".equals(Build.DEVICE)) return;
        synchronized (states) {
            if (states.containsKey(sink)) return;
            try {
                Context app = context.getApplicationContext();
                if (app == null) app = context;
                SharedPreferences next = app.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
                if (preferences != next) {
                    next.registerOnSharedPreferenceChangeListener(listener);
                    SharedPreferences previous = preferences;
                    preferences = next;
                    if (previous != null) {
                        try { previous.unregisterOnSharedPreferenceChangeListener(listener); }
                        catch (RuntimeException ignored) {}
                    }
                }
                // Read after registration so a concurrent disable cannot be missed.
                State state = new State(sink, !next.getBoolean(KEY, false));
                states.put(sink, state);
                latest = state;
            } catch (RuntimeException ignored) {
                // Unsupported/unreadable contexts leave the existing video path untouched.
                releaseIfIdleLocked();
            }
        }
    }

    /** Hot path: no preference reads, IPC, logging, frame inspection or Surface checks. */
    public static boolean drop(Object sink, int screenType) {
        if (screenType != 111 || sink == null) return false;
        State state = latest;
        if (state != null && state.owner.get() == sink) return state.blocked;
        synchronized (states) {
            state = states.get(sink);
            return state != null && state.blocked;
        }
    }

    private static void releaseIfIdleLocked() {
        for (State state : states.values()) if (!state.closed) return;
        SharedPreferences previous = preferences;
        preferences = null;
        if (previous != null) {
            try { previous.unregisterOnSharedPreferenceChangeListener(listener); }
            catch (RuntimeException ignored) {}
        }
    }

    /** Keeps late callbacks for this closed sink blocked without affecting a new session. */
    public static void close(Object sink) {
        synchronized (states) {
            State state = states.get(sink);
            if (state != null) { state.blocked = true; state.closed = true; }
            releaseIfIdleLocked();
            // Weak keys and weak owners release the session when its real owner releases it.
        }
    }
}
