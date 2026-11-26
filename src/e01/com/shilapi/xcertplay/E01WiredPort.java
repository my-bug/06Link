package com.shilapi.xcertplay;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import java.io.*;
import java.util.IdentityHashMap;
import java.util.concurrent.*;

/** E01's OEM charge-only policy otherwise removes the phone from the USB bus. */
public final class E01WiredPort {
    private static final String PREF = "06link-wired-port";
    private static final class Port {
        final String name, node, key;
        long window;
        int writes;
        Port(String name, String node, String key) {
            this.name = name; this.node = node; this.key = key;
        }
    }
    private static final Port[] PORTS = {
        // Keep the original key so an interrupted session from an older version can recover.
        new Port("host", "/sys/class/host_peripheral/charging_mode", "restore_mode"),
        new Port("otg", "/sys/class/otg_peripheral/charging_mode", "restore_mode_otg")
    };
    private static final Object LOCK = new Object();
    private static final ScheduledExecutorService IO = Executors.newSingleThreadScheduledExecutor();
    // LOCK protects intent/ownership only. Never hold it across files, preferences or logging.
    private static final class Owner {
        final long generation;
        boolean ready;
        Owner(long generation) { this.generation = generation; }
    }
    private static final IdentityHashMap<Object, Owner> owners = new IdentityHashMap<>();
    private static Context app;
    private static boolean active, stopped;
    private static long generation;
    private static volatile String status = "idle";
    // Only the single IO worker accesses the periodic task and write budget.
    private static ScheduledFuture<?> tick;
    private static long selectionGeneration = -1;
    private static Port sessionPort;

    private static boolean supported() {
        return Build.VERSION.SDK_INT == 22 && "E01".equals(Build.MODEL) && "BX11QJ".equals(Build.DEVICE);
    }
    private static String read(Port port) throws IOException {
        try (BufferedReader r = new BufferedReader(new FileReader(port.node))) {
            String s = r.readLine();
            return s == null ? "" : s.trim();
        }
    }
    private static void write(Port port, String s) throws IOException {
        try (FileWriter w = new FileWriter(port.node)) { w.write(s); }
        if (!s.equals(read(port))) throw new IOException("USB mode write not confirmed");
    }
    private static boolean known(String s) { return "dcp".equals(s) || "cdp".equals(s) || "sdp".equals(s); }

    /** UI-only snapshot; ready describes the port, not iPhone detection or authorization. */
    public static String dataModeStatus() { return supported() ? status : "idle"; }

    public static void start(Context c) {
        if (!supported()) return;
        Context context = c.getApplicationContext();
        final long g;
        synchronized (LOCK) {
            app = context;
            // Reopening a USB host must not invalidate the controller kept by the background session.
            if (active) return;
            active = true; stopped = false; g = ++generation; status = "wait";
        }
        IO.execute(() -> begin(g));
    }
    private static void begin(long g) {
        if (contextFor(g, true) == null) return;
        cancelTick();
        tick = IO.scheduleWithFixedDelay(() -> step(g), 0, 1, TimeUnit.SECONDS);
    }
    private static void cancelTick() {
        if (tick != null) { tick.cancel(false); tick = null; }
    }
    private static Context contextFor(long g, boolean running) {
        synchronized (LOCK) {
            if (g != generation || active != running || (!running && !owners.isEmpty())) return null;
            return app;
        }
    }
    private static void status(long g, String value) {
        synchronized (LOCK) { if (active && generation == g) status = value; }
    }
    private static void step(long g) {
        Context context = contextFor(g, true);
        if (context == null) return;
        if (selectionGeneration != g) {
            String choice = context.getSharedPreferences("06link-native-ui", 0)
                    .getString("wired_port", "host");
            if (contextFor(g, true) == null) return;
            sessionPort = "native".equals(choice) ? null : PORTS["otg".equals(choice) ? 1 : 0];
            if (sessionPort != null) { sessionPort.window = 0; sessionPort.writes = 0; }
            selectionGeneration = g;
        }
        // Native USB uses Android's existing discovery/permission path without OEM port I/O.
        // Keep the ownership barrier so any prior OEM restore finishes before discovery.
        if (sessionPort == null) {
            cancelTick();
            status(g, "idle");
            return;
        }
        // Snapshot once per wired connection. Settings changes never switch a live port.
        // Do not read/write the other port or try it when the selected one has no phone.
        status(g, prepare(context, g, sessionPort) ? "ready" : "failed");
    }

    private static boolean prepare(Context context, long g, Port port) {
        if (!new File(port.node).exists()) return false;
        try {
            String mode = read(port);
            if (!known(mode)) return false;
            SharedPreferences p = context.getSharedPreferences(PREF, 0);
            String old = p.getString(port.key, "");
            if (contextFor(g, true) == null) return false;
            if (old.isEmpty() && !p.edit().putString(port.key, mode).commit())
                throw new IOException("USB restore state not saved");
            if (contextFor(g, true) == null) return false;
            // Preserve SDP/CDP. Only undo the OEM switch to charge-only DCP.
            if (!"dcp".equals(mode)) return true;
            status(g, "wait");
            long now = SystemClock.elapsedRealtime();
            if (now - port.window >= 30000) { port.window = now; port.writes = 0; }
            if (port.writes >= 3) return false;
            if (contextFor(g, true) == null) return false;
            port.writes++;
            write(port, "cdp");
            Log.i("06Link-usb", "USB " + port.name + " charge-only mode restored to data mode");
            return true;
        } catch (Exception e) {
            if (port.writes < 3) {
                port.writes = 3; port.window = SystemClock.elapsedRealtime();
                Log.w("06Link-usb", "USB " + port.name + " data mode unavailable: " + e.getClass().getSimpleName());
            }
            return false;
        }
    }

    /** Cancels policy immediately; physical restore waits for every wired controller's cleanup. */
    public static void stop() {
        final long g;
        synchronized (LOCK) { active = false; stopped = true; g = ++generation; status = "idle"; }
        IO.execute(() -> {
            // A newer start owns its own periodic task and must not be cancelled by this stop.
            synchronized (LOCK) { if (g != generation || active) return; }
            cancelTick();
            restore(g);
        });
    }
    public static void recover(Context c) {
        if (!supported()) return;
        Context context = c.getApplicationContext();
        final long g;
        synchronized (LOCK) {
            if (active) return;
            app = context; g = generation;
        }
        IO.execute(() -> restore(g));
    }

    /** Called under the controller's start/close monitor; registration is identity-idempotent. */
    public static void controllerStarted(Context c, Object owner) {
        if (!supported() || owner == null) return;
        Context context = c.getApplicationContext();
        final Owner entry;
        final boolean begin;
        synchronized (LOCK) {
            if (owners.containsKey(owner)) return;
            app = context;
            // A direct USB launch may not have visited the home-screen connection button.
            begin = !active && !stopped;
            if (begin) { active = true; generation++; status = "wait"; }
            entry = new Owner(generation);
            owners.put(owner, entry);
        }
        IO.execute(() -> {
            if (begin) begin(entry.generation);
            // This runs AFTER any already-entered restore write. A new USB discovery must
            // not overtake that write; prepare the requested mode before opening the barrier.
            step(entry.generation);
            synchronized (LOCK) {
                if (active && generation == entry.generation && owners.get(owner) == entry)
                    entry.ready = true;
            }
        });
    }
    /** Memory-only ordering barrier, not a new requirement that the sysfs node be readable. */
    public static boolean controllerReady(Object owner) {
        if (!supported()) return true;
        synchronized (LOCK) {
            Owner entry = owners.get(owner);
            return active && entry != null && entry.generation == generation && entry.ready;
        }
    }
    /** Called by actual teardown completion, including its exception path, never an await timeout. */
    public static void controllerClosed(Object owner) {
        final long g;
        synchronized (LOCK) {
            if (owners.remove(owner) == null || active || !owners.isEmpty()) return;
            g = generation;
        }
        IO.execute(() -> restore(g));
    }
    private static void restore(long g) {
        Context context = contextFor(g, false);
        if (context == null) return;
        for (Port port : PORTS) {
            if (contextFor(g, false) == null) return;
            restore(context, g, port);
        }
    }
    private static void restore(Context context, long g, Port port) {
        try {
            SharedPreferences p = context.getSharedPreferences(PREF, 0);
            String old = p.getString(port.key, "");
            if (!known(old)) return;
            String now = read(port);
            if (!known(now)) throw new IOException("USB mode unavailable during restore");
            if (contextFor(g, false) == null) return;
            if ("cdp".equals(now) && !old.equals(now)) write(port, old);
            // Keep the journal for a new owner or a newer intent; never clear its recovery state.
            if (contextFor(g, false) == null) return;
            if (!p.edit().remove(port.key).commit()) throw new IOException("USB restore state not cleared");
        } catch (Exception e) {
            Log.w("06Link-usb", "USB " + port.name + " original mode restore pending: " + e.getClass().getSimpleName());
        }
    }
    private E01WiredPort() { }
}
