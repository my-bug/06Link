package com.shilapi.xcertplay;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.ViewTreeObserver;

public final class SettingsTimingCheck {
    private static int checks;
    private static void check(boolean ok, String why) { checks++; if (!ok) throw new AssertionError(why); }
    private static void next() { SystemClock.now += 30000; }
    private static String last() { return E01LogPolicy.lines.get(E01LogPolicy.lines.size() - 1); }
    private static long start(Activity host, Activity page) {
        E01SettingsTiming.gesture(host, SystemClock.now - 4000);
        SystemClock.now += 10; E01SettingsTiming.opening(host);
        SystemClock.now += 20; E01SettingsTiming.requested(host);
        SystemClock.now += 30; return E01SettingsTiming.buildStarted(page, true);
    }
    private static void clean(Activity page) {
        check(Handler.pending.isEmpty(), "timeout retained");
        check(page.window.view.tree.listeners.isEmpty(), "preDraw retained");
        check(page.window.view.attach.isEmpty(), "detach retained");
    }
    public static void main(String[] args) {
        Activity host = new Activity(), page = new Activity();
        check(E01SettingsTiming.buildStarted(page, true) == 0, "unrelated UI sampled");
        long token = start(host, page);
        check(token > 0 && Handler.pending.size() == 1, "one timeout per navigation");
        SystemClock.now += 40; E01SettingsTiming.buildFinished(page, token, true);
        ViewTreeObserver.OnPreDrawListener old = page.window.view.tree.listeners.get(0);
        SystemClock.now += 50; page.window.view.tree.draw();
        check(E01LogPolicy.lines.size() == 1, "not exactly one summary");
        check(last().contains("eventAgeMs=4000") && last().contains("gestureToOpenMs=10")
            && last().contains("openToRequestMs=20") && last().contains("requestToBuildMs=30")
            && last().contains("buildMs=40") && last().contains("buildToPreDrawMs=50")
            && last().contains("totalMs=150 end=pre_draw"), "segment boundaries wrong: " + last());
        check(last().contains("startUptimeMs=10000") && last().length() < 512, "summary anchor/size");
        clean(page); old.onPreDraw();
        check(E01LogPolicy.lines.size() == 1, "late preDraw logged twice");
        check(start(host, page) == 0 && Handler.pending.isEmpty(), "30s rate limit bypassed");

        next(); token = start(host, page);
        E01SettingsTiming.buildFinished(page, token, true);
        Runnable staleTimeout = Handler.pending.get(0);
        ViewTreeObserver.OnPreDrawListener staleDraw = page.window.view.tree.listeners.get(0);
        next(); Activity page2 = new Activity(); long second = start(host, page2);
        check(second > token && last().endsWith("end=superseded"), "old navigation not superseded");
        E01SettingsTiming.buildFinished(page, token, true); staleTimeout.run(); staleDraw.onPreDraw();
        check(Handler.pending.size() == 1 && page2.window.view.tree.listeners.isEmpty(), "old callbacks changed new token");
        E01SettingsTiming.buildFinished(page2, second, true); page2.window.view.detach();
        check(last().endsWith("end=page_detached"), "lifecycle detach not cancelled"); clean(page2);

        next(); token = start(host, page); E01SettingsTiming.buildFinished(page, token, false);
        check(last().endsWith("end=build_failed"), "failed render reported preDraw"); clean(page);
        next(); token = start(host, page); E01SettingsTiming.buildFinished(page, token, true);
        page.destroyed = true; page.window.view.tree.draw();
        check(last().endsWith("end=page_closed"), "destroyed page claimed preDraw"); clean(page); page.destroyed = false;
        next(); E01SettingsTiming.gesture(host, SystemClock.now + 1);
        SystemClock.now += 12000; Handler.pending.get(0).run();
        check(last().contains("eventAgeMs=-1") && last().contains("buildMs=-1") && last().endsWith("end=timeout"), "partial timeout misleading"); clean(page);
        next(); token = start(host, page); E01SettingsTiming.destroyed(new Activity());
        check(Handler.pending.size() == 1, "unrelated lifecycle cancelled trace");
        E01SettingsTiming.destroyed(host); check(last().endsWith("end=host_destroyed"), "host exit retained trace"); clean(page);
        next(); token = start(host, page); page.window.view.tree.alive = false;
        E01SettingsTiming.buildFinished(page, token, true);
        check(last().endsWith("end=observer_unavailable"), "dead observer retained trace"); clean(page); page.window.view.tree.alive = true;
        next(); Looper.main = false; E01SettingsTiming.gesture(host, 0); Looper.main = true;
        check(Handler.pending.isEmpty(), "non-UI caller created trace");
        token = start(host, page); E01LogPolicy.fail = true;
        E01SettingsTiming.buildFinished(page, token, true); page.window.view.tree.draw(); clean(page);
        E01LogPolicy.fail = false;
        next(); E01SettingsTiming.gesture(host, SystemClock.now); E01SettingsTiming.opening(host); E01SettingsTiming.requested(host);
        check(E01SettingsTiming.buildStarted(page, false) == 0, "home render consumed settings navigation");
        token = E01SettingsTiming.buildStarted(page, true);
        check(token > 0, "settings render lost after unrelated home");
        E01SettingsTiming.buildFinished(page, token, true); page.window.view.tree.draw(); clean(page);
        for (int failure = 0; failure < 4; failure++) {
            next(); token = start(host, page);
            page.failWindow = failure == 0; page.window.view.tree.failAdd = failure == 1;
            page.window.view.failAttach = failure == 2; page.failLifecycle = failure == 3;
            E01SettingsTiming.buildFinished(page, token, true);
            check(last().endsWith("end=diagnostic_failed"), "diagnostic exception escaped/claimed frame");
            page.failWindow = page.failLifecycle = page.window.view.tree.failAdd = page.window.view.failAttach = false;
            clean(page);
        }
        for (String line : E01LogPolicy.lines) check(line.length() < 512 && !line.contains("presented"), "line size/presentation claim");
        System.out.println("PASS settings timing: " + checks + " checks; segments, rate limit, stale callbacks, lifecycle, failure and one-shot cleanup");
    }
}
