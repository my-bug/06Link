package com.shilapi.xcertplay;

import android.app.Activity;
import android.os.SystemClock;
import android.view.MotionEvent;
import java.util.concurrent.atomic.AtomicLong;

/** Carries the first moving touch through the ordinary, coalescing touch queue. */
public final class E01SwipeInput {
    private static final AtomicLong pendingWrite = new AtomicLong();
    // Gesture fields belong to the activity input thread. Other senders never tag their lists.
    private static final ThreadLocal<Gesture> gestures = new ThreadLocal<Gesture>();

    private static final class Gesture {
        float downX;
        float downY;
        boolean awaitingMove;
        boolean singlePointer;
        Object movingContacts;
        long sample;
    }

    private E01SwipeInput() { }

    public static void observe(MotionEvent event, Object contacts, Activity owner) {
        Gesture g = gestures.get();
        int action = event.getActionMasked();
        if (action == MotionEvent.ACTION_DOWN) {
            if (g == null) {
                g = new Gesture();
                gestures.set(g);
            }
            g.downX = event.getX();
            g.downY = event.getY();
            g.awaitingMove = true;
            g.singlePointer = true;
            g.sample = 0;
            g.movingContacts = null;
            pendingWrite.set(0);
            return;
        }
        if (g == null) return;
        g.movingContacts = null;
        if (action != MotionEvent.ACTION_MOVE || event.getPointerCount() != 1) {
            g.awaitingMove = false;
            // A short swipe may finish before its already queued movement is written.
            if (action != MotionEvent.ACTION_UP) {
                if (g.singlePointer || action == MotionEvent.ACTION_CANCEL) E01SmoothVideo.swipe(owner, 0L);
                if (g.sample != 0) E01SwipeTiming.cancel(g.sample);
                pendingWrite.set(0);
            }
            g.sample = 0;
            g.singlePointer = false;
            return;
        }
        if (g.awaitingMove) {
            if (event.getX() == g.downX && event.getY() == g.downY) return;
            g.awaitingMove = false;
            long movedAt = event.getEventTime();
            for (int i = 0; i < event.getHistorySize(); i++) {
                if (event.getHistoricalX(i) != g.downX || event.getHistoricalY(i) != g.downY) {
                    movedAt = event.getHistoricalEventTime(i);
                    break;
                }
            }
            long eventAgeMs = Math.max(0L, SystemClock.uptimeMillis() - movedAt);
            long eventNs = System.nanoTime() - eventAgeMs * 1000000L;
            E01SmoothVideo.swipe(owner, eventNs);
            g.sample = E01SwipeTiming.start(eventNs);
            pendingWrite.set(g.sample);
        }
        if (pendingWrite.get() != 0) g.movingContacts = contacts;
    }

    /** Only the exact contact list supplied for this MOVE may mark a queue entry. */
    public static long tokenFor(Object contacts) {
        Gesture g = gestures.get();
        return g != null && g.movingContacts == contacts && contacts != null ? pendingWrite.get() : 0;
    }

    public static void sent(long token, long writeStartNs) {
        if (token != 0 && pendingWrite.compareAndSet(token, 0)) {
            E01SwipeTiming.sent(token, writeStartNs, System.nanoTime());
        }
    }
}
