package com.shilapi.xcertplay;

import android.os.Build;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;

/** One recognizer per projection view. Android delivers a complete contact sequence on the UI thread. */
public final class CarPlayGestures {
    public enum Decision { FORWARD, RELEASE_CARPLAY, DROP, OPEN_MENU }

    private boolean captured;
    private boolean tracking;
    private float startX, startY;
    private int threshold;

    public Decision onTouch(MotionEvent event, View view) {
        int action = event.getActionMasked();
        int count = event.getPointerCount();
        if (action == MotionEvent.ACTION_DOWN) {
            captured = tracking = false;
            return Decision.FORWARD;
        }
        if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
            boolean owned = captured;
            captured = tracking = false;
            return owned ? Decision.DROP : Decision.FORWARD;
        }
        if (action == MotionEvent.ACTION_POINTER_DOWN) {
            if (!captured && count >= 3) {
                captured = true;
                tracking = count == 3;
                if (tracking) {
                    startX = centerX(event);
                    startY = centerY(event);
                    threshold = (int) (72 * view.getResources().getDisplayMetrics().density);
                }
                return Decision.RELEASE_CARPLAY;
            }
            if (captured) tracking = false;
        } else if (action == MotionEvent.ACTION_MOVE) {
            if (tracking && count == 3) {
                float down = centerY(event) - startY;
                float sideways = Math.abs(centerX(event) - startX);
                if (down >= threshold && down >= 1.15f * sideways) {
                    tracking = false;
                    return Decision.OPEN_MENU;
                }
            }
        } else if (action == MotionEvent.ACTION_POINTER_UP) {
            tracking = false;
        } else {
            return Decision.DROP;
        }
        return captured ? Decision.DROP : Decision.FORWARD;
    }

    private static float centerX(MotionEvent event) {
        return (event.getX(0) + event.getX(1) + event.getX(2)) / 3f;
    }

    private static float centerY(MotionEvent event) {
        return (event.getY(0) + event.getY(1) + event.getY(2)) / 3f;
    }

    public static void logTransition(MotionEvent event, Decision decision, boolean queued) {
        int action = event.getActionMasked();
        if (action != MotionEvent.ACTION_MOVE) {
            String label = Build.VERSION.SDK_INT >= 19 ? MotionEvent.actionToString(action) : Integer.toString(action);
            Log.i("xcertplay-usb", "touch action=" + label
                + " pointers=" + event.getPointerCount() + " decision=" + decision + " queued=" + queued);
        }
    }
}
