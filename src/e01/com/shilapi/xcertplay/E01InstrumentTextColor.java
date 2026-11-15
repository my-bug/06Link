package com.shilapi.xcertplay;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;

/** OEM 076b/10 day/night request. Never changes map video, brightness or navigation state. */
final class E01InstrumentTextColor {
    static final String KEY = "text_color";
    static final String RESTORE = "text_color_restore";
    static final String ACTION = "AUTONAVI_STANDARD_BROADCAST_SEND";
    interface Output {
        boolean send(int mode, boolean restoring);
        void note(String message);
    }
    private final Output output;
    private SharedPreferences prefs;
    private Context context;
    private boolean registered;
    private long registerAt, retryAt;
    private int restoreMode = -1, applied = -1, target = -2, failures;
    private long appliedRevision = -1;
    private volatile Observation observed = new Observation(-1, 0);
    private final BroadcastReceiver receiver = new BroadcastReceiver() {
        public void onReceive(Context c, Intent intent) {
            if (intent == null || !ACTION.equals(intent.getAction())) return;
            try {
                if (intent.getIntExtra("KEY_TYPE", -1) != 10019) return;
                int state = intent.getIntExtra("EXTRA_STATE", -1);
                if (state == 37 || state == 38) observe(state == 38 ? 1 : 0);
            } catch (RuntimeException malformed) { /* Ignore unrelated or malformed OEM broadcasts. */ }
        }
    };
    private static final class Observation {
        final int mode;
        final long revision;
        Observation(int mode, long revision) { this.mode = mode; this.revision = revision; }
    }

    E01InstrumentTextColor(Output output) { this.output = output; }

    static String selection(Context c) {
        String value = c.getSharedPreferences("06link_instrument", 0).getString(KEY, "auto");
        return "light".equals(value) || "dark".equals(value) ? value : "auto";
    }

    static String label(Context c) {
        String value = selection(c);
        return "light".equals(value) ? "强制浅色" : "dark".equals(value) ? "强制深色" : "跟随原车";
    }

    static boolean save(Context c, String label) {
        String value;
        if ("强制浅色".equals(label)) value = "light";
        else if ("强制深色".equals(label)) value = "dark";
        else if ("跟随原车".equals(label)) value = "auto";
        else throw new IllegalArgumentException("Unknown instrument text colour");
        return c.getSharedPreferences("06link_instrument", 0).edit().putString(KEY, value).commit();
    }

    private synchronized void observe(int mode) {
        observed = new Observation(mode, observed.revision + 1);
    }

    /** Existing instrument worker owns all following state and I/O. */
    void invalidated() {
        applied = -1; appliedRevision = -1; retryAt = 0;
    }

    void update(Context c, boolean live, boolean owned, boolean suspended, long now) {
        if (c == null) return;
        if (prefs == null) {
            context = c.getApplicationContext();
            if (context == null) context = c;
            prefs = context.getSharedPreferences("06link_instrument", 0);
            String pending = prefs.getString(RESTORE, "");
            restoreMode = "0".equals(pending) ? 0 : "1".equals(pending) ? 1 : -1;
        }
        String choice = selection(context);
        if (!"auto".equals(choice) || restoreMode >= 0) register(now);
        // No writes while the physical instrument is off, including deferred restoration.
        if (suspended) return;
        int wanted = owned && !"auto".equals(choice) ? ("light".equals(choice) ? 1 : 0) : -1;
        if (target != wanted) { target = wanted; failures = 0; retryAt = 0; }
        if (now < retryAt) return;
        Observation factory = observed;
        if (wanted >= 0) {
            // Keep ownership across a temporary Surface gap or power recovery. Wait for
            // map readiness to reapply; never flash the baseline during reinitialization.
            if (!live) return;
            // Persist the release obligation BEFORE any possibly accepted RPC. Never infer
            // the baseline from this app's forced map/theme choice or from time of day.
            int baseline = factory.mode >= 0 ? factory.mode : restoreMode >= 0 ? restoreMode : systemMode();
            if (baseline < 0) { failed(now, "原车日夜状态不可读，未强制"); return; }
            if (restoreMode != baseline) {
                if (!prefs.edit().putString(RESTORE, Integer.toString(baseline)).commit()) {
                    failed(now, "恢复状态保存失败，未强制"); return;
                }
                restoreMode = baseline;
            }
            // A real OEM broadcast can overwrite our request. Coalesce its notification;
            // identical idle ticks never resend. Power restoration invalidates applied.
            if (applied == wanted && (factory.revision == appliedRevision || factory.mode == wanted)) {
                appliedRevision = factory.revision; return;
            }
            if (!output.send(wanted, false)) { failed(now, "设置指令未接受"); return; }
            applied = wanted; appliedRevision = factory.revision; failures = 0;
            retryAt = now + 3000; // Bound any competing OEM day/night notifications.
            output.note("[仪表字色] 请求=" + (wanted == 1 ? "浅色/夜间" : "深色/白天") + " accepted=true 实际显示待确认");
        } else if (restoreMode >= 0) {
            int baseline = factory.mode >= 0 ? factory.mode : restoreMode;
            // Keep the journal if either the RPC or clearing the journal fails.
            if (!output.send(baseline, true)) { failed(now, "恢复指令未接受"); return; }
            if (!prefs.edit().remove(RESTORE).commit()) { failed(now, "恢复记录未清除"); return; }
            restoreMode = -1; applied = -1; appliedRevision = -1; failures = 0; retryAt = 0;
            output.note("[仪表字色] 恢复原车=" + (baseline == 1 ? "夜间" : "白天") + " accepted=true");
        }
    }

    private void register(long now) {
        if (registered || now < registerAt) return;
        registerAt = now + 30000;
        try {
            IntentFilter filter = new IntentFilter(); filter.addAction(ACTION);
            context.registerReceiver(receiver, filter); registered = true;
        } catch (RuntimeException unavailable) { /* System baseline still permits local use. */ }
    }

    private static int systemMode() {
        try {
            // System resources bypass any activity/app-specific appearance override.
            int mode = android.content.res.Resources.getSystem().getConfiguration().uiMode & 0x30;
            return mode == 0x20 ? 1 : mode == 0x10 ? 0 : -1;
        } catch (RuntimeException unavailable) { return -1; }
    }

    private void failed(long now, String reason) {
        failures = Math.min(5, failures + 1);
        retryAt = now + (failures >= 5 ? 30000 : 1000L << (failures - 1));
        output.note("[仪表字色] " + reason + "；地图流程继续，重试=" + failures);
    }
}
