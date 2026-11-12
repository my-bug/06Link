package com.shilapi.xcertplay;

import android.app.Presentation;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import com.shilapi.xcertplay.hud.BydAppleManeuver;
import com.shilapi.xcertplay.hud.BydHudRouteState;
import com.shilapi.xcertplay.iap2.wire.Iap2Frame;
import java.io.File;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/** E01 map-channel initialization is independent of optional iAP2 turn-by-turn metadata. */
public final class E01ClusterMode {
    private static final Object lock = new Object();
    private static final WeakHashMap<Presentation, Boolean> visible = new WeakHashMap<Presentation, Boolean>();
    private static final WeakHashMap<Presentation, Boolean> active = new WeakHashMap<Presentation, Boolean>();
    private static final ArrayDeque<String> events = new ArrayDeque<String>();
    private static BydHudRouteState route;
    private static final E01RouteSummary summary = new E01RouteSummary();
    private static final E01CardDiagnostic cardDiagnostic = new E01CardDiagnostic();
    private static E01LaneDiagnostic laneDiagnostic;
    private static final ArrayDeque<E01LaneDiagnostic> laneEnds = new ArrayDeque<E01LaneDiagnostic>();
    private static long nextRouteDiagnostic;
    private static Context context;
    private static ScheduledExecutorService worker;
    private static int generation;
    private static boolean connected;
    private static boolean powerSuspended, powerResetRequested;
    private static long powerEventSequence;
    private static boolean powerRecoveryPending;
    private static final E01ClusterPower instrumentPower = new E01ClusterPower(new E01ClusterPower.Sink() {
        public void changed(boolean off, boolean recover, String source, long sequence) {
            synchronized (lock) {
                if (sequence <= powerEventSequence) return;
                powerEventSequence = sequence;
                if (!off && !recover) return; // Initial unknown -> on is only a baseline.
                powerSuspended = off;
                powerResetRequested = true;
                generation++; // Cancel an in-flight initialization/open from before this edge.
                E01ClusterIntro.ended();
                // The existing 500 ms worker applies the edge; no RPC or file I/O in this callback.
            }
        }
        public void note(String message) { event(message); }
    });
    private static SharedPreferences projectionPreferences;
    private static boolean projectionEnabled;
    private static final SharedPreferences.OnSharedPreferenceChangeListener projectionChanges =
        new SharedPreferences.OnSharedPreferenceChangeListener() {
            public void onSharedPreferenceChanged(SharedPreferences prefs, String key) {
                if (!"cluster_map_enabled".equals(key)) return;
                synchronized (lock) {
                    refreshProjectionLocked();
                    // RPC remains on the same worker; never block the settings/main thread.
                    if (worker != null) worker.execute(new Runnable() {
                        public void run() {
                            try { tick(); }
                            catch (Throwable error) { event("Projection change cleanup failed " + error.getClass().getSimpleName()); }
                        }
                    });
                }
            }
        };

    /** Same key and false default as AirPlayPersistence.loadClusterMapEnabled. */
    static boolean projectionAllowed(Context c) {
        try { return c != null && c.getSharedPreferences("xcertplay_airplay", 0)
                .getBoolean("cluster_map_enabled", false); }
        catch (RuntimeException unavailable) { return false; }
    }

    private static void bindContextLocked(Context c) {
        context = c.getApplicationContext();
        if (context == null) context = c;
        SharedPreferences prefs = context.getSharedPreferences("xcertplay_airplay", 0);
        if (projectionPreferences != prefs) {
            if (projectionPreferences != null) projectionPreferences.unregisterOnSharedPreferenceChangeListener(projectionChanges);
            projectionPreferences = prefs;
            prefs.registerOnSharedPreferenceChangeListener(projectionChanges);
        }
        refreshProjectionLocked();
    }

    private static void refreshProjectionLocked() {
        boolean enabled = projectionAllowed(context);
        if (projectionEnabled == enabled) return;
        projectionEnabled = enabled;
        generation++;
        // Invalidate a stale stream and old guidance when the user turns projection off.
        // Re-enabling needs a fresh stream-active event before map-open can be sent.
        if (!enabled) {
            active.clear();
            clearGuidanceLocked();
            E01MusicCard.clear();
            E01ClusterIntro.ended();
        } else if (connected) E01ClusterIntro.connected();
        event("Instrument projection enabled=" + enabled);
    }

    private static void clearGuidanceLocked() {
        if (laneDiagnostic != null) {
            E01LaneCapability.refreshDiagnostic(laneDiagnostic);
            if (laneEnds.size() >= 2) laneEnds.removeFirst();
            laneEnds.addLast(laneDiagnostic); laneDiagnostic = null;
        }
        if (route != null) route.clear();
        routeFrames = 0; maneuverFrames = 0; summary.clear(); nextRouteDiagnostic = 0;
        routeRevision = 0;
    }
    private static int routeFrames, maneuverFrames;
    private static int routeRevision;
    // Output fields are touched only by the single worker; RPC never runs on UI/network threads.
    private static int outputGeneration = -1;
    private static boolean navTouched, mapTouched, coverHidden, initialized, opened, closing;
    private static long readyAt, retryAt, lastTbtAt;
    private static int failures, sentRevision = -1;
    private static byte[][] sent;
    private static String lastState = "";
    private static String lastFailure = "";
    private static final long RECOVERY_MS = 30000;
    private static final long SETTLE_MS = 1000;
    private static final E01AmapOutput amapOutput = new E01AmapOutput();

    private static boolean supported() {
        return Build.VERSION.SDK_INT == 22 && "E01".equals(Build.MODEL) && "BX11QJ".equals(Build.DEVICE);
    }

    /** App/controller setup is NOT a connected CarPlay session. */
    public static void initialize(Context c) {
        if (!supported()) return;
        synchronized (lock) {
            bindContextLocked(c);
            ensureWorker();
        }
    }

    /** Called only by the real AirPlay session-active callback, not by opening 06Link. */
    public static void sessionStarted(Context c) {
        if (!supported()) return;
        synchronized (lock) {
            bindContextLocked(c);
            ensureWorker();
            if (!connected) {
                connected = true; generation++;
                if (projectionEnabled && laneDiagnostic == null) laneDiagnostic = E01LaneCapability.newDiagnostic();
                if (projectionEnabled) E01ClusterIntro.connected();
                event("CarPlay session active");
            }
        }
    }

    /** Presentation.onStart provides readiness before the first video frame/stream-active event. */
    public static void setVisible(Presentation p, boolean shown) {
        if (!supported() || p.getDisplay().getDisplayId() != 1) return;
        synchronized (lock) {
            bindContextLocked(p.getContext());
            ensureWorker();
            if (shown) visible.put(p, Boolean.TRUE);
            else { visible.remove(p); active.remove(p); }
            event("Presentation visible=" + shown + " owners=" + visible.size());
        }
    }

    public static void setActive(Presentation p, boolean enabled) {
        if (!supported() || p.getDisplay().getDisplayId() != 1) return;
        synchronized (lock) {
            bindContextLocked(p.getContext());
            ensureWorker();
            if (enabled && projectionEnabled) {
                visible.put(p, Boolean.TRUE);
                active.put(p, Boolean.TRUE);
            } else active.remove(p);
            event("Cluster stream=" + enabled + " owners=" + active.size());
        }
    }

    public static void onFrame(Iap2Frame frame) {
        if (!supported()) return;
        synchronized (lock) {
            refreshProjectionLocked();
            if (!projectionEnabled) return;
            E01MusicCard.onFrame(frame);
            if (laneDiagnostic == null) laneDiagnostic = E01LaneCapability.newDiagnostic();
            E01LaneCapability.refreshDiagnostic(laneDiagnostic);
            laneDiagnostic.accept(frame.getMessageId(), frame.getPayload());
        }
        int id = frame.getMessageId();
        if (id != 0x5201 && id != 0x5202) return;
        synchronized (lock) {
            // Control subscriptions can precede AirPlay session activation. Cache guidance now;
            // session/window checks below prevent it from opening the instrument by itself.
            if (!projectionEnabled || route == null) return;
            try {
                route.accept(id, frame.getPayload());
                boolean valid = summary.accept(id, frame.getPayload());
                if (id == 0x5201 && valid) routeRevision++;
                if (id == 0x5201) routeFrames++; else maneuverFrames++;
                int count = id == 0x5201 ? routeFrames : maneuverFrames;
                if (count == 1 || count % 20 == 0)
                    event("iAP2 " + Integer.toHexString(id) + " count=" + count + " bytes=" + frame.getPayload().length
                        + " valid=" + valid + " " + summary.schema());
            } catch (RuntimeException e) {
                event("Invalid navigation frame " + Integer.toHexString(id));
                Log.e("06Link-E01", "Invalid navigation frame", e);
            }
        }
    }

    public static void endNow() {
        if (!supported()) return;
        synchronized (lock) {
            E01MusicCard.clear();
            E01ClusterIntro.ended();
            connected = false;
            active.clear();
            generation++;
            clearGuidanceLocked();
            event("CarPlay session ended; delayed map open cancelled");
        }
    }

    private static void ensureWorker() {
        if (worker != null) return;
        route = new BydHudRouteState();
        worker = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() {
            public Thread newThread(Runnable r) {
                Thread t = new Thread(r, "06link-e01-tbt"); t.setDaemon(true); return t;
            }
        });
        worker.scheduleWithFixedDelay(new Runnable() {
            public void run() {
                try { tick(); }
                catch (Throwable e) {
                    event("Worker failure " + e.getClass().getSimpleName());
                    Log.e("06Link-E01", "Navigation worker failed", e);
                } finally { flushDiagnostics(); flushEvents(); }
            }
        }, 0, 500, TimeUnit.MILLISECONDS);
        event("E01 instrument output worker ready");
    }

    static String amapRepairMessage(Context c) {
        synchronized (lock) {
            if (connected || !visible.isEmpty()) return "请先停止 CarPlay，再检查原厂导航输出服务。";
        }
        return amapOutput.repairAccess(c);
    }

    static String amapAccessMessage(Context c, boolean mayAsk) {
        return amapOutput.accessMessage(c, mayAsk);
    }

    /** Dedicated OEM-service worker: its availability never gates instrument RPC or video. */
    static int maintainAmapOutput(int previous) {
        Context c;
        int token;
        boolean wanted;
        synchronized (lock) {
            refreshProjectionLocked();
            c = context; token = generation;
            // The publisher pause belongs to the enabled CarPlay session, not a Surface/window.
            wanted = projectionEnabled && connected;
        }
        if (c == null) return previous;
        if (!wanted) {
            return amapOutput.finish(c) ? token : previous;
        }
        amapOutput.ensure(c);
        // A late completion must restore on Stop/disable; a replacement window is not Stop.
        boolean ended;
        synchronized (lock) {
            refreshProjectionLocked();
            ended = !projectionEnabled || !connected;
        }
        if (ended) amapOutput.finish(c);
        return token;
    }

    private static void tick() {
        E01AmapCompatibility.start();
        BydAppleManeuver m;
        Context c;
        int token;
        boolean wanted, stream, suspended;
        Context registrationContext;
        synchronized (lock) { registrationContext = context; }
        instrumentPower.ensureRegistered(registrationContext, android.os.SystemClock.elapsedRealtime());
        synchronized (lock) {
            refreshProjectionLocked();
            if (powerResetRequested) {
                // Prior RPC acceptance is no longer proof of a live map/card. Invalidate only
                // readiness; keep cleanup obligations if Stop/disable races with power restoration.
                initialized = false; opened = false;
                sent = null; sentRevision = -1; lastTbtAt = 0; readyAt = 0;
                failures = 0; retryAt = 0; closing = false; lastFailure = "";
                outputGeneration = generation; powerResetRequested = false;
                powerRecoveryPending = true;
            }
            suspended = powerSuspended;
            token = generation; c = context;
            m = connected ? route.currentApple() : null;
            stream = projectionEnabled && connected && !active.isEmpty();
            wanted = projectionEnabled && connected && (initialized || !visible.isEmpty() || powerRecoveryPending);
            cardDiagnostic.observe(token, connected, projectionEnabled, !visible.isEmpty(), stream);
        }
        // While power is off, neither refresh content nor emit map/card close commands.
        // A real disconnect still clears session/route ownership; any album restore waits for power-on.
        if (suspended) return;
        String state = "session=" + connectedSnapshot() + " window=" + wanted + " stream=" + stream + " realTbt=" + (m != null);
        if (!state.equals(lastState)) { event(state); lastState = state; }
        long now = System.nanoTime() / 1000000;
        if (outputGeneration != token || !wanted || closing) {
            if (!closing || outputGeneration != token || !wanted) cardDiagnostic.closing(!projectionAllowed(c) ? E01CardDiagnostic.CLOSE_DISABLED
                : !connectedSnapshot() ? E01CardDiagnostic.CLOSE_SESSION
                : outputGeneration != token ? E01CardDiagnostic.CLOSE_GENERATION : E01CardDiagnostic.CLOSE_WINDOW);
            closing = true;
            if (outputGeneration != token) { failures = 0; retryAt = 0; outputGeneration = token; }
            boolean clean = !(navTouched || mapTouched || coverHidden);
            if (!clean && now >= retryAt) {
                clean = cleanup(c);
                if (!clean) failed(now, "close");
            }
            // Publisher compatibility restores independently; never wait for it here.
            if (!clean) return;
            initialized = false; opened = false; sent = null; sentRevision = -1; closing = false;
            failures = 0; retryAt = 0;
            if (!wanted) return;
        }
        // Releasing our picture takes priority over initialization/content recovery cooldowns.
        if (opened && !current(token, true)) {
            cardDiagnostic.closing(E01CardDiagnostic.CLOSE_STREAM);
            if (!"pause map".equals(lastFailure)) {
                failures = 0; retryAt = 0;
                E01ClusterIntro.ended();
            }
            if (now < retryAt) return;
            if (!send(0x75d, mode(0x4a, 2))) { failed(now, "pause map"); return; }
            opened = false; mapTouched = false; failures = 0; retryAt = 0; lastFailure = "";
            event("Map paused: no active instrument video stream");
        }
        // After five failures, attempt at most once per cooldown, only for a live map stream.
        // Keep initialized/opened state: recovery must not reopen a successful navigation card.
        if (failures >= 5 && (!stream || !current(token, true))) return;
        if (now < retryAt || !current(token, false)) return;
        byte[][] packets;
        int phoneRevision;
        boolean partial, endPending;
        synchronized (lock) {
            phoneRevision = routeRevision;
            partial = connected && m == null && summary.available();
            endPending = summary.endPending();
            // Keep the exact successful cold-boot initialization. Apply summaries AFTER it.
            // One raw-TLV snapshot owns real route fields; maneuver gaps must not reset route totals.
            packets = initialized && summary.available() ? E01TbtPackets.summary(summary)
                : initialized && endPending && sent != null ? sent
                : m != null ? E01TbtPackets.encode(m, summary.guidanceText()) : E01TbtPackets.bootstrap();
            if (wanted && now >= nextRouteDiagnostic) {
                event("Guidance counters route=" + routeFrames + " maneuver=" + maneuverFrames
                    + " complete=" + (m != null) + " partial=" + partial + " " + summary.status());
                nextRouteDiagnostic = now + 10000;
            }
        }
        if (!initialized) {
            boolean ok = sendCurrent(token, 0x76b, new byte[]{15, 0});
            ok = sendCurrent(token, 0x76b, new byte[]{6, 1}) & ok;
            ok = sendCurrent(token, 0x76c, mode(1, 1)) & ok;
            ok = sendTbt(token, packets) & ok;
            cardDiagnostic.group(true, ok, m != null ? E01CardDiagnostic.GUIDE_COMPLETE
                : partial ? E01CardDiagnostic.GUIDE_PARTIAL : E01CardDiagnostic.GUIDE_NONE, endPending);
            if (!ok) { failed(now, "initialize"); return; }
            if (!current(token, false)) return;
            if (!album(c, false)) { failed(now, "cover"); return; }
            coverHidden = true;
            initialized = true; sent = packets; sentRevision = phoneRevision; lastTbtAt = now; readyAt = now + SETTLE_MS; failures = 0;
            if (powerRecoveryPending) {
                powerRecoveryPending = false;
                event("[仪表电源] restore initialized; waiting-for-map-open");
            }
            event("Initialization accepted, source=" + (m == null ? "channel/source marker" : "real TBT") + "; settle=1000ms");
        } else if ((phoneRevision != sentRevision || !Arrays.deepEquals(sent, packets))
                && (now - lastTbtAt >= 1000 || guidanceChanged(sent, packets))) {
            // A real phone revision refreshes all content, even if unchanged locally:
            // another publisher may have overwritten it. No new data => no timer-only redraw.
            // Navigation-state06 is never a content update. The OEM end-marker0f=0
            // travels with a fresh valid content group; it does not open a map/window.
            boolean updated = sendContent(token, packets);
            cardDiagnostic.group(false, updated, m != null ? E01CardDiagnostic.GUIDE_COMPLETE
                : partial ? E01CardDiagnostic.GUIDE_PARTIAL : E01CardDiagnostic.GUIDE_NONE, endPending);
            if (!updated) { failed(now, "update"); return; }
            sent = packets; sentRevision = phoneRevision; lastTbtAt = now; failures = 0; retryAt = 0;
            event("TBT updated, source=" + (m != null ? "real navigation" : partial ? "real route TLV snapshot" : "channel/source marker"));
        }
        if (!opened && now >= readyAt && current(token, true)) {
            if (!sendCurrent(token, 0x75d, mode(0x4a, 1))) { failed(now, "open"); return; }
            opened = true; failures = 0;
            cardDiagnostic.closing(E01CardDiagnostic.CLOSE_NONE);
            synchronized (lock) {
                if (current(token, true)) E01ClusterIntro.opened();
            }
            event("Cluster mode=1 accepted=true after initialization; physical visibility unacknowledged");
        }
    }

    private static boolean connectedSnapshot() {
        synchronized (lock) { return connected; }
    }

    private static boolean current(int token, boolean requireVideo) {
        synchronized (lock) {
            refreshProjectionLocked();
            return token == generation && !powerSuspended && !powerResetRequested && projectionEnabled && connected
                && (!powerRecoveryPending || !active.isEmpty())
                && (initialized || !visible.isEmpty()) && (!requireVideo || !active.isEmpty());
        }
    }

    private static boolean cleanup(Context c) {
        // Release each owned output independently. A later card failure must not re-close
        // a map or restore an album already handed back to the factory publisher.
        if (mapTouched && send(0x75d, mode(0x4a, 2))) mapTouched = false;
        if (navTouched) {
            boolean ok = true;
            for (byte[] packet : new byte[][] {
                {7, 0}, {8, 0}, {9, 0, 0}, {10, 1}, {11, 0, 0}, {12, 0, 0},
                {15, 1}, {13, 1}, {14, 2, 0x11, 0x20, 0}
            }) ok = send(0x76b, packet) & ok;
            ok = send(0x76b, new byte[]{6, 0}) & ok;
            ok = send(0x76c, mode(1, 0)) & ok;
            if (ok) navTouched = false;
        }
        if (coverHidden && album(c, true)) coverHidden = false;
        boolean clean = !(navTouched || mapTouched || coverHidden);
        if (clean) event("Navigation/map closed; album restored");
        return clean;
    }

    private static void failed(long now, String phase) {
        failures = Math.min(failures + 1, 5);
        lastFailure = phase;
        boolean releasing = closing || "pause map".equals(phase);
        long delay = failures >= 5 && !releasing ? RECOVERY_MS : Math.min(5000, 500L << (failures - 1));
        retryAt = now + delay;
        event(phase + " failed, attempt=" + failures
            + (releasing ? "; owned cleanup will retry" : failures >= 5 ? "; recovery cooldown=30000ms" : "/5"));
    }

    private static boolean guidanceChanged(byte[][] previous, byte[][] next) {
        for (byte[] p : E01TbtPackets.changed(previous, next)) {
            int sub = p[0] & 255;
            if (sub == 7 || sub == 13 || sub == 14) return true;
        }
        return false;
    }

    private static boolean sendCurrent(int token, int opcode, byte[] packet) {
        synchronized (lock) {
            if (!current(token, opcode == 0x75d)) return false;
            // A command that was attempted may have reached the OEM despite a lost reply.
            if (opcode == 0x75d) mapTouched = true; else navTouched = true;
        }
        return send(opcode, packet);
    }

    private static boolean sendContent(int token, byte[][] packets) {
        boolean ok = true;
        for (byte[] p : packets) {
            int sub = p[0] & 255;
            if (sub >= 7 && sub <= 15) ok = sendCurrent(token, 0x76b, p) & ok;
        }
        return ok;
    }

    private static boolean sendTbt(int token, byte[][] packets) {
        boolean ok = true;
        for (byte[] p : packets) ok = sendCurrent(token, 0x76b, p) & ok;
        return ok;
    }

    private static byte[] mode(int sub, int value) {
        byte[] data = new byte[25]; data[0] = (byte) sub; data[1] = (byte) value; return data;
    }

    private static boolean send(int opcode, byte[] data) {
        synchronized (lock) {
            // A power edge can arrive after tick's snapshot, including during cleanup.
            // Keep the obligation for the next powered-on tick; do not issue another close now.
            if (powerSuspended || powerResetRequested) return false;
        }
        try {
            Class<?> api = Class.forName("com.neusoft.alfus.RpcManager");
            Object manager = api.getMethod("getInstance").invoke(null);
            boolean ok = manager != null && Boolean.TRUE.equals(api.getMethod("sendMessage", int.class, byte[].class)
                    .invoke(manager, opcode, data));
            cardDiagnostic.rpc(opcode, data, ok);
            // Only IDs, length, acceptance; no road names or coordinates in this diagnostic.
            int sub = data[0] & 255;
            String value = "";
            if (opcode == 0x76b && ((sub >= 7 && sub <= 12) || sub == 6 || sub == 15) && (data.length == 2 || data.length == 3)) {
                int number = data[1] & 255;
                if (data.length == 3) number = (number << 8) | (data[2] & 255);
                value = " value=" + number; // Numeric arrow/unit/distance/time/status only; never text or location.
            }
            event("RPC op=" + Integer.toHexString(opcode) + " sub=" + sub + " bytes=" + data.length + value + " accepted=" + ok);
            return ok;
        } catch (Throwable e) {
            cardDiagnostic.rpc(opcode, data, false);
            event("RPC error " + e.getClass().getSimpleName());
            Log.e("06Link-E01", "RPC unavailable", e); return false;
        }
    }

    private static boolean album(Context c, boolean shown) {
        synchronized (lock) { if (powerSuspended || powerResetRequested) return false; }
        try {
            c.sendBroadcast(new Intent("com.neusoft.shockwave.audio.AlbumShowBroadcast")
                    .setPackage("com.neusoft.shockwave.instrumentserver").putExtra("isShow", shown));
            event("Album shown=" + shown);
            return true;
        } catch (Throwable e) { event("Album broadcast failed"); Log.e("06Link-E01", "Album broadcast failed", e); return false; }
    }

    private static void flushDiagnostics() {
        long now = android.os.SystemClock.elapsedRealtime();
        String card = cardDiagnostic.poll(now);
        if (card != null) event(card);
        synchronized (lock) {
            while (!laneEnds.isEmpty()) emitDiagnostic(laneEnds.removeFirst().poll(now, true));
            if (connected && projectionEnabled && laneDiagnostic != null) {
                E01LaneCapability.refreshDiagnostic(laneDiagnostic);
                emitDiagnostic(laneDiagnostic.poll(now, false));
            }
        }
    }
    private static void emitDiagnostic(String[] lines) {
        if (lines != null) for (String line : lines) if (!line.isEmpty()) event(line);
    }

    static void displayConfigured(String s) { event(s); }

    private static void event(String s) {
        if (!E01LogPolicy.keepCluster(s)) return;
        Log.i("06Link-E01", s);
        synchronized (lock) {
            if (events.size() >= 128) events.removeFirst();
            events.addLast(System.currentTimeMillis() + " " + s);
        }
    }

    /** Persist locally so tomorrow's test does not depend on keeping ADB Wi-Fi connected. */
    private static void flushEvents() {
        Context c;
        StringBuilder text = new StringBuilder();
        synchronized (lock) {
            c = context;
            if (c == null) return;
            while (!events.isEmpty()) text.append(events.removeFirst()).append('\n');
        }
        if (text.length() == 0) return;
        try {
            File dir = c.getExternalFilesDir(null);
            if (dir == null) dir = c.getFilesDir();
            E01LogPolicy.append(new File(dir, "e01-cluster-diagnostic.txt"), text.toString());
        } catch (RuntimeException ignored) { }
    }

    private E01ClusterMode() {}
}
