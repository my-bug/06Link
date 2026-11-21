package com.shilapi.xcertplay;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import java.io.File;
import java.lang.ref.WeakReference;

/** Main-thread, bounded settings navigation evidence. Pre-draw is not physical presentation. */
public final class E01SettingsTiming {
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final long INTERVAL_MS = 30000, TIMEOUT_MS = 10000;
    private static long lastStart = -1, sequence;
    private static Trace active;

    /** Called only for the MotionEvent that actually changes the gesture decision to OPEN_MENU. */
    public static void gesture(Activity host, long eventUptimeMs) {
        try {
            if (!main() || host == null) return;
            if (active != null) active.finish("superseded");
            long now = SystemClock.uptimeMillis();
            if (lastStart >= 0 && now - lastStart < INTERVAL_MS) return;
            if (host.isFinishing() || host.isDestroyed()) return;
            lastStart = now;
            Trace trace = new Trace(++sequence, host, now, eventUptimeMs);
            active = trace;
            MAIN.postDelayed(trace, TIMEOUT_MS);
        } catch (RuntimeException ignored) { failed(); }
    }

    public static void opening(Activity host) {
        try {
            Trace trace = owned(host);
            if (trace != null && trace.open < 0) trace.open = SystemClock.uptimeMillis();
        } catch (RuntimeException ignored) { failed(); }
    }

    public static void requested(Activity host) {
        try {
            Trace trace = owned(host);
            if (trace != null && trace.open >= 0 && trace.request < 0)
                trace.request = SystemClock.uptimeMillis();
        } catch (RuntimeException ignored) { failed(); }
    }

    public static void destroyed(Activity host) {
        try {
            Trace trace = owned(host);
            if (trace != null) trace.finish("host_destroyed");
        } catch (RuntimeException ignored) { failed(); }
    }

    public static long buildStarted(Activity page, boolean settingsPage) {
        try {
            Trace trace = main() ? active : null;
            if (!settingsPage || trace == null || trace.request < 0 || trace.build >= 0 || page == null
                    || page == trace.host.get() || page.isFinishing() || page.isDestroyed()) return 0;
            trace.page = new WeakReference<Activity>(page);
            trace.build = SystemClock.uptimeMillis();
            return trace.id;
        } catch (RuntimeException ignored) { failed(); return 0; }
    }

    public static void buildFinished(Activity page, long token, boolean success) {
        try {
            Trace trace = main() ? active : null;
            if (trace == null || token != trace.id || trace.page.get() != page || trace.built >= 0) return;
            trace.built = SystemClock.uptimeMillis();
            if (!success) { trace.finish("build_failed"); return; }
            if (page.isFinishing() || page.isDestroyed()) { trace.finish("page_closed"); return; }
            View view = page.getWindow().getDecorView();
            ViewTreeObserver observer = view.getViewTreeObserver();
            if (!observer.isAlive()) { trace.finish("observer_unavailable"); return; }
            trace.view = new WeakReference<View>(view);
            trace.observer = new WeakReference<ViewTreeObserver>(observer);
            observer.addOnPreDrawListener(trace);
            view.addOnAttachStateChangeListener(trace);
        } catch (RuntimeException ignored) { failed(); }
    }

    private static boolean main() { return Looper.myLooper() == Looper.getMainLooper(); }
    private static void failed() { if (active != null) active.finish("diagnostic_failed"); }
    private static Trace owned(Activity host) {
        Trace trace = main() ? active : null;
        return trace != null && trace.host.get() == host ? trace : null;
    }
    private static long between(long from, long to) { return from < 0 || to < 0 ? -1 : Math.max(0, to - from); }

    private static final class Trace implements Runnable, ViewTreeObserver.OnPreDrawListener,
            View.OnAttachStateChangeListener {
        final long id, start, eventAge;
        final WeakReference<Activity> host;
        final Context app;
        WeakReference<Activity> page = new WeakReference<Activity>(null);
        WeakReference<View> view = new WeakReference<View>(null);
        WeakReference<ViewTreeObserver> observer = new WeakReference<ViewTreeObserver>(null);
        long open = -1, request = -1, build = -1, built = -1, preDraw = -1;
        Trace(long id, Activity host, long now, long event) {
            this.id = id; this.host = new WeakReference<Activity>(host);
            app = host.getApplicationContext(); start = now;
            eventAge = event < 0 || event > now ? -1 : now - event;
        }
        public void run() { finish("timeout"); }
        public boolean onPreDraw() {
            try {
                Activity destination = page.get();
                if (destination == null || destination.isFinishing() || destination.isDestroyed()) finish("page_closed");
                else { preDraw = SystemClock.uptimeMillis(); finish("pre_draw"); }
            } catch (RuntimeException ignored) { finish("diagnostic_failed"); }
            return true;
        }
        public void onViewAttachedToWindow(View view) { }
        public void onViewDetachedFromWindow(View view) { finish("page_detached"); }
        void finish(String reason) {
            if (active != this) return;
            active = null;
            try { MAIN.removeCallbacks(this); } catch (RuntimeException ignored) { }
            ViewTreeObserver tree = observer.get();
            try { if (tree != null && tree.isAlive()) tree.removeOnPreDrawListener(this); }
            catch (RuntimeException ignored) { }
            View root = view.get();
            try { if (root != null) root.removeOnAttachStateChangeListener(this); }
            catch (RuntimeException ignored) { }
            long now = SystemClock.uptimeMillis();
            String line = "UI timing settings id=" + id + " startUptimeMs=" + start
                + " eventAgeMs=" + eventAge + " gestureToOpenMs=" + between(start, open)
                + " openToRequestMs=" + between(open, request) + " requestToBuildMs=" + between(request, build)
                + " buildMs=" + between(build, built) + " buildToPreDrawMs=" + between(built, preDraw)
                + " totalMs=" + between(start, now) + " end=" + reason;
            try { E01LogPolicy.queueSession(new File(app.getFilesDir(), "logs/06link.log"), line); }
            catch (RuntimeException ignored) { }
        }
    }
    private E01SettingsTiming() { }
}
