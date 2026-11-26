package com.shilapi.xcertplay;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/** Real visibility + real Surface hint helper. Only the Android window is simulated. */
public final class SurfaceRateVisibilityCheck {
    static int checks;
    static void ok(boolean value, String label) { checks++; if (!value) throw new AssertionError(label); }
    static void ui() throws Exception {
        CountDownLatch done = new CountDownLatch(1); new Handler(Looper.getMainLooper()).post(() -> done.countDown());
        ok(done.await(2, TimeUnit.SECONDS), "UI hint processing completes without visibility lock deadlock");
    }
    public static void main(String[] args) throws Exception {
        Build.VERSION.SDK_INT = 22;
        Activity legacy = new Activity(); Surface legacySurface = new Surface(); Object legacyToken = new Object();
        E01SurfaceFrameRate.started(legacyToken, legacy, legacySurface);
        E01VideoVisibility.surfaceReady(legacy, legacySurface); E01VideoVisibility.resumed(legacy); ui();
        ok(legacySurface.rateCalls == 0, "legacy device never invokes Android 11 API");
        Build.VERSION.SDK_INT = 31;
        Activity owner = new Activity(); Surface first = new Surface(); Object token = new Object();
        E01VideoVisibility.surfaceReady(owner, first); E01VideoVisibility.resumed(owner); ui();
        ok(first.rate == 0, "visible idle Surface does not request playback refresh rate");
        E01SurfaceFrameRate.started(token, owner, first); ui();
        ok(first.rate == 60 && first.compatibility == 1, "visible active main Surface receives fixed-source rate");
        int calls = first.rateCalls; E01VideoVisibility.resumed(owner); E01SurfaceFrameRate.refresh(owner); ui();
        ok(first.rateCalls == calls, "unchanged refresh does not reissue hint");
        E01VideoVisibility.paused(owner); ui(); ok(first.rate == 0, "background clears hint");
        E01VideoVisibility.resumed(owner); ui(); ok(first.rate == 60, "foreground restores active session hint");
        E01SmoothVideo.rates.put(owner, 30); E01SurfaceFrameRate.refresh(owner); ui(); ok(first.rate == 30, "changed negotiated rate reaches existing Surface");
        Surface next = new Surface(); Object replacement = new Object();
        E01VideoVisibility.surfaceReady(owner, next); ui();
        ok(first.rate == 0 && next.rate == 0, "replaced Surface cannot inherit old codec use");
        E01SurfaceFrameRate.started(replacement, owner, next); ui(); ok(next.rate == 30, "replacement codec receives current negotiated rate");
        E01VideoVisibility.surfaceLost(owner, first); E01SurfaceFrameRate.stopped(token); ui();
        ok(next.rate == 30, "delayed old Surface and codec cleanup preserve replacement");
        E01VideoVisibility.surfaceLost(owner, next); ui(); ok(next.rate == 0, "current Surface loss clears hint");
        E01VideoVisibility.surfaceReady(owner, next); ui(); ok(next.rate == 30, "same active Surface return restores hint");
        E01SurfaceFrameRate.stopped(replacement); ui(); ok(next.rate == 0, "session end clears still-visible Surface");
        E01SurfaceFrameRate.started(replacement, owner, next); ui(); E01VideoVisibility.destroyed(owner); ui();
        ok(next.rate == 0, "Activity destruction clears hint"); E01SurfaceFrameRate.stopped(replacement);
        // Batched callbacks always consult the latest visibility and codec ownership.
        CountDownLatch blocked = new CountDownLatch(1), resume = new CountDownLatch(1);
        new Handler(Looper.getMainLooper()).post(() -> { blocked.countDown(); try { resume.await(2, TimeUnit.SECONDS); } catch (InterruptedException e) { throw new AssertionError(e); } });
        ok(blocked.await(2, TimeUnit.SECONDS), "main queue held for replacement race");
        Activity racing = new Activity(); Surface stale = new Surface(), current = new Surface(); Object oldUse = new Object(), newUse = new Object();
        E01VideoVisibility.resumed(racing); E01VideoVisibility.surfaceReady(racing, stale); E01SurfaceFrameRate.started(oldUse, racing, stale);
        E01VideoVisibility.surfaceReady(racing, current); E01SurfaceFrameRate.started(newUse, racing, current);
        E01SurfaceFrameRate.stopped(oldUse); E01SurfaceFrameRate.stopped(newUse); E01VideoVisibility.paused(racing);
        resume.countDown(); ui(); ok(stale.rateCalls == 0 && current.rate == 0, "queued work cannot revive old Surface or ended session");
        // A rejected optional API call does not alter visibility; a later refresh can retry.
        Activity failing = new Activity(); Surface rejected = new Surface(); Object live = new Object(); rejected.rateFailure = new IllegalArgumentException("driver rejected hint");
        E01VideoVisibility.resumed(failing); E01VideoVisibility.surfaceReady(failing, rejected); E01SurfaceFrameRate.started(live, failing, rejected); ui();
        ok(E01VideoVisibility.visible(failing, rejected), "driver hint rejection leaves playback eligibility intact");
        rejected.rateFailure = null; E01SurfaceFrameRate.refresh(failing); ui(); ok(rejected.rate == 60, "failed hint safely retries");
        rejected.valid = false; int before = rejected.rateCalls; E01VideoVisibility.surfaceLost(failing, rejected); ui();
        ok(rejected.rateCalls == before, "invalid old Surface is never called"); E01SurfaceFrameRate.stopped(live);
        E01VideoVisibility.destroyed(racing); E01VideoVisibility.destroyed(failing); ui();
        System.out.println("PASS " + checks + " real visibility/Surface-rate lifecycle, replacement, paused session, legacy API and failure safety checks (fake window)");
    }
}
