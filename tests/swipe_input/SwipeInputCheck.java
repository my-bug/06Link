package com.shilapi.xcertplay;

import android.app.Activity;
import android.view.MotionEvent;
import static android.view.MotionEvent.*;
import java.util.ArrayList;

public final class SwipeInputCheck {
    private static final Activity OWNER = new Activity();

    private static void check(boolean ok, String reason) {
        if (!ok) throw new AssertionError(reason);
    }

    private static Object observe(int action, int fingers, float x, float y) {
        // Distinct lists with identical contents exercise object identity at the queue boundary.
        Object contacts = new ArrayList<>();
        E01SwipeInput.observe(new MotionEvent(action, fingers, x, y), contacts, OWNER);
        return contacts;
    }

    private static long token(int action, int fingers, float x, float y) {
        return E01SwipeInput.tokenFor(observe(action, fingers, x, y));
    }

    private static long swipe() {
        check(token(ACTION_DOWN, 1, 20, 40) == 0, "down isn't movement");
        check(token(ACTION_MOVE, 1, 20, 40) == 0, "stationary move");
        Object moved = observe(ACTION_MOVE, 1, 20, 41);
        check(E01SwipeInput.tokenFor(new ArrayList<>()) == 0, "unrelated contact list");
        long first = E01SwipeInput.tokenFor(moved);
        check(first != 0, "first real movement");
        return first;
    }

    public static void main(String[] args) {
        long first = swipe();
        check(token(ACTION_MOVE, 1, 21, 41) == first, "merged move lost pending sample");
        long writeStart = System.nanoTime();
        E01SwipeInput.sent(first, writeStart);
        check(E01SwipeTiming.lastToken == first && E01SwipeTiming.writeStart == writeStart
                && E01SwipeTiming.writeEnd >= writeStart, "wrong HID write timing");
        E01SwipeInput.sent(first, System.nanoTime());
        check(E01SwipeTiming.sends == 1, "duplicate completion");
        check(token(ACTION_MOVE, 1, 22, 42) == 0, "restarted settled gesture");
        token(ACTION_UP, 1, 22, 42);

        long cancelled = swipe();
        token(ACTION_CANCEL, 1, 20, 41);
        E01SwipeInput.sent(cancelled, System.nanoTime());
        check(E01SwipeTiming.sends == 1, "cancelled send survived");
        check(E01SwipeTiming.cancelled.contains(cancelled), "cancel left an unwritten sample pending");

        long old = swipe();
        long replacement = swipe();
        E01SwipeInput.sent(old, System.nanoTime());
        check(E01SwipeTiming.sends == 1, "late send consumed replacement");
        E01SwipeInput.sent(replacement, System.nanoTime());
        check(E01SwipeTiming.sends == 2, "replacement did not complete");

        long interrupted = swipe();
        token(ACTION_POINTER_DOWN, 2, 20, 41);
        token(ACTION_POINTER_DOWN, 3, 20, 41);
        E01SwipeInput.sent(interrupted, System.nanoTime());
        check(token(ACTION_POINTER_UP, 2, 20, 41) == 0, "two-finger change");
        check(token(ACTION_MOVE, 1, 45, 41) == 0, "multi-finger gesture rearmed");
        token(ACTION_CANCEL, 1, 45, 41);
        token(ACTION_DOWN, 1, 20, 40);
        token(ACTION_UP, 1, 20, 40);
        check(E01SwipeTiming.cancelled.contains(interrupted), "second finger left sample pending");
        check(E01SwipeTiming.sends == 2, "tap or multi-finger send");
        check(E01SwipeTiming.starts == 5, "one sample per first movement");

        token(ACTION_DOWN, 1, 1, 1);
        long before = System.nanoTime();
        MotionEvent batched = new MotionEvent(ACTION_MOVE, 1, 4, 1)
                .history(new long[]{3000, 2000, 1000}, new float[]{1, 2, 3}, new float[]{1, 1, 1});
        Object contacts = new ArrayList<>();
        E01SwipeInput.observe(batched, contacts, OWNER);
        long after = System.nanoTime();
        check(E01SmoothVideo.owner == OWNER && E01SmoothVideo.swipeNs == E01SwipeTiming.touchNs,
                "display and diagnostics disagree on gesture owner/time");
        check(E01SwipeTiming.touchNs >= before - 2_003_000_000L
                && E01SwipeTiming.touchNs <= after - 1_997_000_000L, "first historical movement");
        long shortSwipe = E01SwipeInput.tokenFor(contacts);
        token(ACTION_UP, 1, 4, 1);
        E01SwipeInput.sent(shortSwipe, System.nanoTime());
        check(E01SwipeTiming.sends == 3 && !E01SwipeTiming.cancelled.contains(shortSwipe),
                "short swipe lost a queued movement on finger lift");

        check(E01SmoothVideo.swipeNs == E01SwipeTiming.touchNs, "UP cleared the display window");

        E01SwipeTiming.throttled = true;
        int updates = E01SmoothVideo.updates;
        token(ACTION_DOWN, 1, 7, 9);
        token(ACTION_MOVE, 1, 7, 9);
        check(E01SmoothVideo.updates == updates, "stationary press advanced display");
        check(token(ACTION_MOVE, 1, 9, 9) == 0, "throttled diagnostic token");
        check(E01SmoothVideo.updates == updates + 1 && E01SmoothVideo.owner == OWNER
                && E01SmoothVideo.swipeNs == E01SwipeTiming.touchNs && E01SmoothVideo.swipeNs > 0,
                "display acceleration depends on diagnostics sampling");
        token(ACTION_MOVE, 1, 10, 9);
        check(E01SmoothVideo.updates == updates + 1, "extended window on later move");
        token(ACTION_POINTER_DOWN, 2, 10, 9);
        check(E01SmoothVideo.swipeNs == 0, "throttled multi-pointer transition");
        E01SwipeTiming.throttled = false;

        for (int action : new int[]{ACTION_CANCEL, ACTION_POINTER_DOWN}) {
            long written = swipe();
            E01SwipeInput.sent(written, System.nanoTime());
            check(!E01SwipeTiming.cancelled.contains(written), "valid write was cancelled");
            token(action, action == ACTION_CANCEL ? 1 : 2, 20, 41);
            check(E01SwipeTiming.cancelled.contains(written), "published input wasn't invalidated");
            check(E01SmoothVideo.owner == OWNER && E01SmoothVideo.swipeNs == 0,
                    "display window survived cancel/multiple pointers");
        }
    }
}
