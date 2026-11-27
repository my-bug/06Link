package com.shilapi.xcertplay;

import android.app.Activity;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/** Real modern-route/output lifecycle with a controlled native codec. No physical FPS claim. */
public final class ModernSurfaceCheck {
    static int checks;
    static void ok(boolean value, String label) { checks++; if (!value) throw new AssertionError(label); }
    static void ui() throws Exception {
        CountDownLatch done = new CountDownLatch(1);
        new Handler(Looper.getMainLooper()).post(() -> done.countDown());
        ok(done.await(2, TimeUnit.SECONDS), "UI hint work completes");
    }
    static MediaCodec configure(Activity activity, Surface surface, int fps) {
        E01SmoothVideo.negotiatedFps(activity, fps);
        activity.getSharedPreferences(E01SmoothVideo.PREF, 0).edit().putBoolean("mtk", false).apply();
        E01SmoothVideo.OUTPUTS.put(surface, new E01SmoothVideo.Output(activity, fps, true));
        E01VideoVisibility.surfaceReady(activity, surface);
        MediaCodec codec = new MediaCodec(); codec.name = "c2.qti.avc.decoder"; codec.queued = true;
        E01SmoothVideo.configure(codec, new MediaFormat(), surface, true);
        return codec;
    }
    static void decoderRateHint() {
        for (int sdk : new int[] {22, 31}) {
            Build.VERSION.SDK_INT = sdk;
            Activity owner = new Activity();
            for (int fps : new int[] {30, 60}) {
                E01SmoothVideo.negotiatedFps(owner, fps);
                Surface primary = new Surface();
                E01SmoothVideo.registerTexture(owner, primary);
                MediaFormat realtime = new MediaFormat();
                realtime.setInteger("priority", 0);
                MediaCodec codec = new MediaCodec();
                E01SmoothVideo.configure(codec, realtime, primary, false);
                ok(realtime.getInteger("frame-rate") == fps, "use negotiated rate regardless of MTK tuning");
                MediaFormat plainRetry = new MediaFormat();
                E01SmoothVideo.configure(codec, plainRetry, primary, false);
                ok(!plainRetry.containsKey("frame-rate"), "keep an unhinted configure fallback");
                MediaFormat auxiliary = new MediaFormat();
                auxiliary.setInteger("priority", 0);
                E01SmoothVideo.configure(codec, auxiliary, new Surface(), true);
                ok(!auxiliary.containsKey("frame-rate"), "auxiliary surface has no primary-screen rate");
            }
        }
    }
    static final class SwipeOutput {
        final Activity owner = new Activity();
        final Surface surface = new Surface();
        final MediaCodec decoder;
        long e01ReceivedNs;

        SwipeOutput(int fps) { decoder = configure(owner, surface, fps); }

        long release(long arrival) {
            // Give the real presentation hook an exact, valid receive/sender timestamp.
            // Only PTS mapping uses these two stamps. Release runs on the real monotonic clock.
            byte[] frame = new byte[]{0, 0, 0, 1, 101};
            E01SmoothVideo.STAMPS.put(frame, new E01SmoothVideo.Stamp(arrival, arrival));
            e01ReceivedNs = arrival;
            long pts = E01SmoothVideo.presentation(this, frame);
            MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();
            info.set(0, frame.length, pts, 0);
            int before = decoder.outputReleases.size();
            E01SmoothVideo.release(decoder, 1, true, info);
            ok(decoder.outputReleases.size() == before + 1, "each gesture frame is submitted exactly once");
            long[] recorded = decoder.outputReleases.get(before);
            ok(recorded[1] == 1, "valid gesture frame remains visible");
            return recorded[2]; // A boolean/immediate render has no explicit target.
        }

        void close() { E01SmoothVideo.forget(decoder); }
    }

    static void swipeScheduling(int api, int fps) {
        Build.VERSION.SDK_INT = api;
        long sourceLead = (40 + 3000 / fps) * 1000000L;
        long ordinaryLead = sourceLead - 1000000000L / 60;
        SwipeOutput out = new SwipeOutput(fps);
        long moved = System.nanoTime();
        E01SmoothVideo.swipe(out.owner, moved);
        long earlier = moved - 1000000L;
        ok(out.release(earlier) == earlier + ordinaryLead, "pre-touch arrival gets only the ordinary display advance");
        out.close();

        out = new SwipeOutput(fps);
        E01SmoothVideo.swipe(out.owner, System.nanoTime());
        long arrival = System.nanoTime();
        long target = out.release(arrival);
        ok(target > 0 && target < arrival + ordinaryLead - 16000000L, "an empty queue allows extra swipe advance beyond ordinary playback");
        out.close();

        out = new SwipeOutput(fps);
        // Two known source/arrival times one frame apart. Both pictures are ready
        // while the first one's display slot is still in the future.
        long secondArrival = System.nanoTime() - 2000000L;
        long period = 1000000000L / fps;
        long firstArrival = secondArrival - period;
        long queued = out.release(firstArrival);
        ok(queued == firstArrival + ordinaryLead, "first ordinary frame starts with the shorter display lead");
        E01SmoothVideo.swipe(out.owner, secondArrival - 1000000L);
        long following = out.release(secondArrival);
        ok(following == secondArrival + ordinaryLead && following - queued == period,
                "a full cadence keeps both the ordinary advance and the previous display slot");
        out.close();

        out = new SwipeOutput(fps);
        E01SmoothVideo.swipe(new Activity(), System.nanoTime());
        arrival = System.nanoTime();
        ok(out.release(arrival) == arrival + ordinaryLead, "a different activity does not change the current codec timing");
        out.close();

        out = new SwipeOutput(fps);
        E01VideoVisibility.paused.add(out.owner);
        E01SmoothVideo.swipe(out.owner, System.nanoTime());
        E01VideoVisibility.paused.remove(out.owner);
        arrival = System.nanoTime();
        ok(out.release(arrival) == arrival + ordinaryLead, "a gesture from a hidden surface does not arm later rendering");
        out.close();

        out = new SwipeOutput(fps);
        E01SmoothVideo.swipe(out.owner, System.nanoTime());
        E01SmoothVideo.swipe(out.owner, 0L);
        arrival = System.nanoTime();
        ok(out.release(arrival) == arrival + ordinaryLead, "cancelled gesture restores ordinary pacing");
        out.close();
    }

    public static void main(String[] args) throws Exception {
        decoderRateHint();
        Build.MODEL = "tablet"; Build.DEVICE = "tablet"; Build.VERSION.SDK_INT = 31;
        swipeScheduling(29, 60); swipeScheduling(31, 60); swipeScheduling(31, 30);
        Activity activity = new Activity(); Surface surface = new Surface();
        MediaCodec codec = configure(activity, surface, 60);
        E01SmoothVideo.State state = E01SmoothVideo.STATES.get(codec); ui();
        ok(state.modernOutput && E01SmoothVideo.dedicated(codec), "Android 12 primary smooth Surface has independent output");
        ok(!state.boundedRender && !state.directCap4, "modern path does not inherit E01 cap or 17 ms render limit");
        ok(state.clock.delay() == 90000000L, "existing source pacing is retained");
        ok(E01SmoothVideo.limitTarget(state, 1090000000L, 1000000000L) == 1090000000L, "90 ms source target is not clamped");
        ok(surface.rate == 60 && surface.compatibility == Surface.FRAME_RATE_COMPATIBILITY_FIXED_SOURCE, "active primary Surface receives negotiated source hint");
        E01SmoothVideo.dequeueInput(codec);
        ok(codec.inputTimeout == 10000, "modern native input timeout retained");
        MediaCodec.BufferInfo info = new MediaCodec.BufferInfo(); info.presentationTimeUs = 42;
        long now = System.nanoTime(); state.entries.put(42L, new E01SmoothVideo.Entry(now, now));
        E01SmoothVideo.release(codec, 1, true, info);
        ok(codec.timedReleases == 1 && codec.target == now + 90000000L, "a frame without a receiver stamp keeps its original source deadline");
        E01SmoothVideo.negotiatedFps(activity, 30); ui(); ok(surface.rate == 30, "renegotiation updates existing Surface");
        E01SmoothVideo.negotiatedFps(activity, 60); ui();
        // Reconfiguring the same native codec replaces its exact state token.
        E01SmoothVideo.configure(codec, new MediaFormat(), surface, false); ui();
        ok(state.retired && E01SmoothVideo.STATES.get(codec) != state && surface.rate == 60, "configure fallback retires old state without clearing current hint");
        ConcurrencyCheck.Owner owner = new ConcurrencyCheck.Owner(); owner.decoder = codec;
        codec.inputEntered = new CountDownLatch(1); codec.inputResume = new CountDownLatch(1);
        ok(E01VideoOutput.intercept(owner, codec), "existing owner delegates output");
        Thread input = new Thread(() -> E01SmoothVideo.dequeueInput(codec)); input.start();
        ConcurrencyCheck.await(codec.inputEntered, "native input is blocked");
        codec.add(-2, 0, 0); for (int i = 0; i < 120; i++) codec.add(i, i + 1000, 0);
        ConcurrencyCheck.until(() -> owner.frames.get() == 120, "modern output progresses while native input is blocked");
        ok(input.isAlive() && codec.lastTimeout == 10000, "output has its own bounded wait");
        ok(owner.formats.get() == 1 && codec.falseReleases == 0, "format signal retained and no new frame dropping");
        ok(E01VideoOutput.inputWaitMillis(owner, codec, false) == 20, "only idle input queue wait is reduced");
        codec.inputResume.countDown(); input.join(2000); ConcurrencyCheck.close(owner, codec); ui();
        ok(surface.rate == 0, "end of CarPlay clears hint even if Surface remains visible");
        // Deferred native cleanup must not retain the hint or clear a replacement session.
        MediaCodec old = configure(activity, surface, 60); ConcurrencyCheck.Owner first = new ConcurrencyCheck.Owner(); first.decoder = old;
        old.outputEntered = new CountDownLatch(1); old.outputResume = new CountDownLatch(1);
        E01VideoOutput.intercept(first, old); ConcurrencyCheck.await(old.outputEntered, "old native output is blocked");
        first.decoder = null; E01VideoOutput.release(old); ui();
        ok(old.releases == 0 && surface.rate == 0, "stop clears hint before slow native exit");
        MediaCodec next = configure(activity, surface, 60); ui();
        old.outputResume.countDown(); ConcurrencyCheck.until(() -> old.releases == 1, "deferred old cleanup completes"); ui();
        ok(surface.rate == 60, "late old cleanup preserves new codec ownership");
        ConcurrencyCheck.Owner replacement = new ConcurrencyCheck.Owner(); replacement.decoder = next;
        RuntimeException failure = new IllegalStateException("modern output failed"); next.outputFailure = failure;
        E01VideoOutput.intercept(replacement, next);
        ConcurrencyCheck.until(() -> { try { E01VideoOutput.intercept(replacement, next); return false; } catch (RuntimeException e) { if (e != failure) throw e; return true; } }, "original output error returns to recovery owner");
        ui(); ok(surface.rate == 0, "failed output relinquishes hint"); ConcurrencyCheck.close(replacement, next);
        // Unregistered auxiliary stream, TextureView, and pre-Android-11 remain unchanged.
        MediaCodec auxiliary = new MediaCodec(); E01SmoothVideo.configure(auxiliary, new MediaFormat(), new Surface(), true);
        ok(!E01SmoothVideo.dedicated(auxiliary), "auxiliary Surface excluded");
        Surface texture = new Surface(); E01SmoothVideo.registerTexture(activity, texture);
        MediaCodec textureCodec = new MediaCodec(); E01SmoothVideo.configure(textureCodec, new MediaFormat(), texture, true);
        ok(!E01SmoothVideo.dedicated(textureCodec), "non-smooth TextureView excluded");
        for (int api : new int[] {22, 23, 29}) {
            Build.VERSION.SDK_INT = api; Surface legacySurface = new Surface(); MediaCodec legacy = configure(new Activity(), legacySurface, 60);
            ok(!E01SmoothVideo.dedicated(legacy), "generic API " + api + " retains legacy output owner");
            ok(legacySurface.rateCalls == 0, "API " + api + " never invokes new Surface API"); E01SmoothVideo.forget(legacy);
        }
        Build.VERSION.SDK_INT = 31;
        System.out.println("PASS " + checks + " modern Surface route, source pacing, independent output, recovery, session hint and legacy exclusion checks (fake codec; not physical FPS)");
    }
}
