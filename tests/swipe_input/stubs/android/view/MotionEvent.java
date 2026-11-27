package android.view;

import android.os.SystemClock;

public final class MotionEvent {
    public static final int ACTION_DOWN = 0, ACTION_UP = 1, ACTION_MOVE = 2, ACTION_CANCEL = 3;
    public static final int ACTION_POINTER_DOWN = 5, ACTION_POINTER_UP = 6;
    private final int action, fingers;
    private final float x, y;
    private final long time = SystemClock.uptimeMillis();

    public MotionEvent(int action, int fingers, float x, float y) {
        this.action = action;
        this.fingers = fingers;
        this.x = x;
        this.y = y;
    }

    private long[] offsets = {};
    private float[] hx = {}, hy = {};

    public MotionEvent history(long[] ages, float[] historyX, float[] historyY) {
        offsets = ages; hx = historyX; hy = historyY; return this;
    }

    public int getHistorySize() { return offsets.length; }
    public long getHistoricalEventTime(int i) { return time - offsets[i]; }
    public float getHistoricalX(int i) { return hx[i]; }
    public float getHistoricalY(int i) { return hy[i]; }
    public int getActionMasked() { return action; }
    public int getPointerCount() { return fingers; }
    public int getPointerId(int index) { return index; }
    public float getX() { return x; }
    public float getY() { return y; }
    public float getX(int index) { return x; }
    public float getY(int index) { return y; }
    public long getEventTime() { return time; }
}
