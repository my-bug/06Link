package com.shilapi.xcertplay;

import android.app.Activity;
import android.os.SystemClock;
import android.view.Surface;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

public final class VisibilityCheck {
    static int checks;
    static void ok(boolean value, String message) {
        checks++;
        if (!value) throw new AssertionError(message);
    }
    // Only history containers are mocked. Decisions below execute the production visibility gate.
    static final class Guard {
        private final ArrayList<Object> recent = new ArrayList<Object>();
        private boolean concluded = true;
        private int windows = 9;
        Guard() { recent.add("old output=0 window"); }
    }
    static final class Watch {
        private final ArrayList<Object> recent = new ArrayList<Object>();
        private boolean concluded = true;
        Watch() { recent.add("old 60fps evidence"); }
    }
    static final class Run {
        final Activity owner = new Activity();
        final Guard guard = new Guard();
        final Watch watch = new Watch();
        Surface surface = new Surface();
        boolean window() { return E01VideoVisibility.acceptWindow(owner, guard, watch); }
        void show() { E01VideoVisibility.surfaceReady(owner, surface); E01VideoVisibility.resumed(owner); }
        Object decision() { Object value = new Object(); E01VideoVisibility.recordDecision(owner, value); return value; }
    }
    public static void main(String[] args) throws Exception {
        Run r = new Run();
        ok(!r.window(), "never-visible Activity cannot downgrade");
        ok(r.guard.recent.isEmpty() && !r.guard.concluded && r.guard.windows == 0,
            "load guard history, conclusion and warmup reset");
        ok(r.watch.recent.isEmpty() && !r.watch.concluded, "FPS watch history and conclusion reset");
        E01VideoVisibility.resumed(r.owner);
        ok(!r.window(), "foreground without main surface is not visible output");
        E01VideoVisibility.surfaceReady(r.owner, r.surface);
        ok(!r.window(), "first window after surface ready is discarded");
        ok(r.window(), "complete foreground window reaches original overload guard");
        Object visibleDecision = r.decision();
        ok(E01VideoVisibility.takeDecision(r.owner, visibleDecision), "real foreground overload can act");
        ok(!E01VideoVisibility.takeDecision(r.owner, visibleDecision), "decision cannot execute twice");
        ok(!E01VideoVisibility.takeDecision(r.owner, new Object()), "untagged stale decision rejected");

        // Reported reproduction: 60fps packets continue while three fingers open settings.
        Object queuedBeforeSettings = r.decision();
        r.guard.recent.add("bad foreground sample"); r.guard.concluded = true; r.guard.windows = 20;
        r.watch.recent.add("bad sample"); r.watch.concluded = true;
        E01VideoVisibility.paused(r.owner);
        for (int n = 0; n < 24; n++) {
            SystemClock.now += 5000;
            ok(!r.window(), "settings rx=60 shown=0 sample excluded " + n);
        }
        ok(!E01VideoVisibility.takeDecision(r.owner, queuedBeforeSettings), "queued pre-settings adaptation cancelled");
        ok(r.guard.recent.isEmpty() && !r.guard.concluded && r.guard.windows == 0,
            "hidden samples do not retain old load history");
        ok(r.watch.recent.isEmpty() && !r.watch.concluded, "hidden samples cannot poison next auto FPS choice");
        E01VideoVisibility.resumed(r.owner);
        ok(!r.window(), "return drops mixed hidden/visible interval even after long wait");
        ok(r.window(), "second window resumes normal judgement");
        ok(E01VideoVisibility.takeDecision(r.owner, r.decision()), "normal judgement not permanently disabled by settings");

        // Fast away/back without a stats callback still invalidates old queue/history.
        Object beforeFastSwitch = r.decision();
        E01VideoVisibility.paused(r.owner); E01VideoVisibility.resumed(r.owner);
        ok(!E01VideoVisibility.takeDecision(r.owner, beforeFastSwitch), "rapid return does not revive queued adaptation");
        ok(!r.window() && r.window(), "rapid return excludes mixed interval");
        Surface old = r.surface; r.surface = new Surface();
        E01VideoVisibility.surfaceReady(r.owner, r.surface);
        E01VideoVisibility.surfaceLost(r.owner, old);
        ok(!r.window() && r.window(), "retiring old Surface preserves replacement");
        Object beforeLoss = r.decision();
        E01VideoVisibility.surfaceLost(r.owner, r.surface);
        ok(!E01VideoVisibility.takeDecision(r.owner, beforeLoss), "surface loss cancels decisions without Activity pause");
        ok(!r.window(), "foreground surface-less interval excluded");
        E01VideoVisibility.surfaceReady(r.owner, r.surface);
        ok(!r.window() && r.window(), "replacement resumes after one complete interval");
        E01VideoVisibility.surfaceReady(r.owner, r.surface); E01VideoVisibility.resumed(r.owner);
        ok(r.window(), "duplicate ready/resumed callbacks do not reset good windows");
        r.surface.valid = false;
        ok(!r.window(), "invalid native surface excluded even before loss callback");
        r.surface.valid = true;
        ok(!r.window() && r.window(), "invalid surface interval cannot leak into recovery");
        ok(!E01VideoVisibility.acceptWindow(r.owner, new Guard(), r.watch), "new session guard has independent warmup");
        ok(!r.window() && r.window(), "switching guard/session resets previous evidence");

        SystemClock.now = 150000;
        E01VideoVisibility.paused(r.owner); E01VideoVisibility.resumed(r.owner);
        ok(!E01VideoVisibility.allowSessionAdaptation(r.owner), "first-picture fallback waits for visible interval");
        SystemClock.now += 4999;
        ok(!E01VideoVisibility.allowSessionAdaptation(r.owner), "no first-picture downgrade during resume grace");
        SystemClock.now++;
        ok(E01VideoVisibility.allowSessionAdaptation(r.owner), "real visible first-picture timeout retains fallback");
        E01VideoVisibility.paused(r.owner); SystemClock.now += 60000;
        ok(!E01VideoVisibility.allowSessionAdaptation(r.owner), "time alone cannot enable fallback in settings");

        // Worker accepted a window, UI left/returned before worker produced its decision.
        r.show(); r.window();
        CountDownLatch accepted = new CountDownLatch(1), continueWorker = new CountDownLatch(1);
        AtomicReference<Throwable> failure = new AtomicReference<Throwable>();
        Object stale = new Object();
        Thread worker = new Thread(() -> {
            try {
                if (!r.window()) throw new AssertionError("worker window accepted");
                accepted.countDown(); continueWorker.await();
                E01VideoVisibility.recordDecision(r.owner, stale);
                if (E01VideoVisibility.currentWindow(r.owner)) throw new AssertionError("old worker window revived");
            } catch (Throwable e) { failure.set(e); }
        });
        worker.start(); accepted.await();
        E01VideoVisibility.paused(r.owner); E01VideoVisibility.resumed(r.owner);
        continueWorker.countDown(); worker.join(2000);
        ok(!worker.isAlive() && failure.get() == null, "in-flight worker window invalidated across UI transition");
        ok(!E01VideoVisibility.takeDecision(r.owner, stale), "worker cannot enqueue downgrade after foreground epoch changes");

        Run other = new Run(); other.show(); other.window(); ok(other.window(), "second activity valid independently");
        Object own = other.decision();
        E01VideoVisibility.destroyed(r.owner);
        ok(E01VideoVisibility.takeDecision(other.owner, own), "destroyed previous Activity cannot clear current owner decision");
        ok(!r.window(), "destroyed activity removed from eligibility");
        other.owner.finishing = true;
        ok(!other.window(), "finishing activity excluded");
        other.owner.finishing = false; other.owner.destroyed = true;
        ok(!other.window(), "destroyed Android activity excluded before callback");
        E01VideoVisibility.destroyed(other.owner);
        System.out.println("PASS " + checks + " visibility/lifecycle/queued-decision checks (actual Java helper, fake Android)");
    }
}
