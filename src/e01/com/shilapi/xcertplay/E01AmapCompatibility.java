package com.shilapi.xcertplay;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/** Async state-change handling requested by the existing map worker; no independent timer. */
final class E01AmapCompatibility {
    private static final AtomicBoolean busy = new AtomicBoolean();
    private static final ExecutorService WORKER = Executors.newSingleThreadExecutor(r -> {
        Thread t = new Thread(r, "06link-oem-card-service");
        t.setDaemon(true);
        return t;
    });
    private static int generation = Integer.MIN_VALUE;

    static void start() {
        if (!busy.compareAndSet(false, true)) return;
        WORKER.execute(() -> {
            try { generation = E01ClusterMode.maintainAmapOutput(generation); }
            catch (Throwable error) {
                E01ClusterMode.displayConfigured("OEM navigation output failed: " + error.getClass().getSimpleName());
            } finally { busy.set(false); }
        });
    }

    private E01AmapCompatibility() {}
}
