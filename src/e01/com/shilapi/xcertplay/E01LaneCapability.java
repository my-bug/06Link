package com.shilapi.xcertplay;

import android.content.Context;
import android.os.Build;

/** Identification-time lane metadata opt-in; no renderer, subscription or OEM writes. */
public final class E01LaneCapability {
    public static final int DESCRIPTION_CAPACITY = 64;
    public static final int EVENT_CAPACITY = 1;
    private static final int LANE_MESSAGE = 0x5204;
    private static final ThreadLocal<Pending> pending = new ThreadLocal<Pending>();
    private static long generation;
    private static volatile Declaration lastBuilt = new Declaration(false, 0, "not-built");

    private static final class Pending {
        final boolean enabled;
        final long generation;
        boolean messageIncluded, componentIncluded;
        Pending(boolean enabled, long generation) { this.enabled = enabled; this.generation = generation; }
    }

    /** The actual completed Identification body, not the current setting or a phone ACK. */
    static final class Declaration {
        final boolean advertised;
        final long generation;
        final String source;
        Declaration(boolean advertised, long generation, String source) {
            this.advertised = advertised;
            this.generation = generation;
            this.source = source;
        }
    }

    private E01LaneCapability() {}

    /** Called once at the beginning of the shared wired/wireless body builder. */
    public static void beginIdentification() {
        boolean enabled = false;
        if (Build.VERSION.SDK_INT == 22 && "E01".equals(Build.MODEL) && "BX11QJ".equals(Build.DEVICE)) {
            try {
                Context context = (Context) Class.forName("android.app.ActivityThread")
                    .getMethod("currentApplication").invoke(null);
                enabled = context != null && context.getSharedPreferences("xcertplay_airplay", 0)
                    .getBoolean("cluster_map_enabled", false);
            } catch (Exception unavailable) {
                // Missing application/preferences never enables a new capability.
            } catch (LinkageError unavailable) {
                // Keep the baseline identification on unsupported framework variants.
            }
        }
        begin(enabled);
    }

    private static synchronized void begin(boolean enabled) {
        long next = ++generation;
        pending.set(new Pending(enabled, next));
        // An early route callback during this handshake must not inherit the previous link.
        lastBuilt = new Declaration(false, next, "building");
    }

    /** Called after the existing GPS additions, before the existing wireless additions. */
    public static int[] messagesReceived(int[] messages) {
        Pending state = pending.get();
        if (state == null || !state.enabled || messages == null) return messages;
        for (int id : messages) {
            if (id == LANE_MESSAGE) {
                state.messageIncluded = true;
                return messages;
            }
        }
        int[] result = new int[messages.length + 1];
        System.arraycopy(messages, 0, result, 0, messages.length);
        result[messages.length] = LANE_MESSAGE;
        state.messageIncluded = true;
        return result;
    }

    /** The companion lambda writes fields 7/8 only when this returns true. */
    public static boolean declareComponent() {
        Pending state = pending.get();
        if (state == null || !state.enabled || !state.messageIncluded) return false;
        state.componentIncluded = true;
        return true;
    }

    /** Called only after Iap2BodyBuilder.build() successfully returned the complete frame. */
    public static synchronized void identificationBuilt() {
        Pending state = pending.get();
        if (state == null) return;
        if (state.generation == lastBuilt.generation) {
            lastBuilt = new Declaration(state.enabled && state.messageIncluded && state.componentIncluded,
                state.generation, "identification-built");
        }
        pending.remove();
    }

    static Declaration declaration() { return lastBuilt; }

    /** Settings toggles after identification must not rewrite the recorded capability. */
    static E01LaneDiagnostic newDiagnostic() {
        E01LaneDiagnostic diagnostic = new E01LaneDiagnostic(false, 0, 0);
        refreshDiagnostic(diagnostic);
        return diagnostic;
    }

    /** Refresh active/early helpers only; queued ended snapshots must remain frozen. */
    static void refreshDiagnostic(E01LaneDiagnostic diagnostic) {
        if (diagnostic == null) return;
        Declaration declaration = lastBuilt;
        diagnostic.setCapability(declaration.advertised,
            declaration.advertised ? DESCRIPTION_CAPACITY : 0,
            declaration.advertised ? EVENT_CAPACITY : 0, declaration.source, declaration.generation);
    }
}
