package com.shilapi.xcertplay;

import android.app.Activity;
import android.content.Context;
import android.view.Surface;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/** One visible, native main-screen codec owns one display-clock lease. */
final class E01DirectOutputClock {
    // Paused codecs need a registration for resume, not a strong Activity/Surface owner.
    // Only E01DisplayClock retains an active lease strongly. No additional worker is needed.
    private static final Map<Lease, Boolean> LEASES = new WeakHashMap<Lease, Boolean>();

    static final class Lease {
        final Context app;
        final WeakReference<Activity> activity;
        final WeakReference<Surface> surface;
        boolean held, closed, failed;

        Lease(Activity owner, Surface target) {
            app = owner.getApplicationContext();
            activity = new WeakReference<Activity>(owner);
            surface = new WeakReference<Surface>(target);
        }
    }

    static Lease acquire(Activity activity, Surface surface, int fps) {
        if (activity == null || surface == null || fps != 60 || !E01PrivilegedShell.supported())
            return null;
        // Share the visibility monitor so a pause cannot race a stale visible snapshot.
        synchronized (E01VideoVisibility.class) {
            Lease lease = new Lease(activity, surface);
            LEASES.put(lease, Boolean.TRUE);
            update(lease);
            return lease;
        }
    }

    static void release(Lease lease) {
        if (lease == null) return;
        synchronized (E01VideoVisibility.class) {
            lease.closed = true;
            LEASES.remove(lease);
            drop(lease);
        }
    }

    /** Called after the existing main-screen foreground/Surface state changes. */
    static void refresh(Activity activity) {
        synchronized (E01VideoVisibility.class) {
            for (Iterator<Lease> it = LEASES.keySet().iterator(); it.hasNext();) {
                Lease lease = it.next();
                Activity owner = lease.activity.get();
                if (owner == null || lease.surface.get() == null || lease.closed) {
                    lease.closed = true;
                    drop(lease);
                    it.remove();
                } else if (owner == activity) {
                    update(lease);
                }
            }
        }
    }

    private static void update(Lease lease) {
        Activity owner = lease.activity.get();
        Surface target = lease.surface.get();
        boolean wanted = !lease.closed && !lease.failed && owner != null && target != null
            && E01VideoVisibility.visible(owner, target);
        try {
            wanted = wanted && E01DisplayClock.enabled(lease.app);
            if (wanted && !lease.held) {
                E01DisplayClock.acquire(lease.app, lease, 60);
                lease.held = true;
            } else if (!wanted) {
                drop(lease);
            }
        } catch (RuntimeException error) {
            lease.failed = true;
            // acquire can have inserted its owner before Handler setup fails.
            lease.held = true;
            drop(lease);
            try {
                E01VideoEvidence.decision(lease.app,
                    "中控60Hz 直出请求未完成 原因=" + error.getClass().getSimpleName());
            } catch (RuntimeException ignored) { }
        }
    }

    private static void drop(Lease lease) {
        if (!lease.held) return;
        lease.held = false;
        // The owner identity belongs to this codec only. A late close cannot remove
        // another codec's lease, including a replacement on the same Surface.
        try { E01DisplayClock.release(lease); } catch (RuntimeException ignored) { }
    }

    private E01DirectOutputClock() { }
}
