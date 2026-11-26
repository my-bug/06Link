package android.view;
public final class Surface {
    public static final int FRAME_RATE_COMPATIBILITY_FIXED_SOURCE = 1;
    public volatile boolean valid = true;
    public volatile int rateCalls, compatibility;
    public volatile float rate;
    public RuntimeException rateFailure;
    public boolean isValid() { return valid; }
    public synchronized void setFrameRate(float value, int mode) {
        if (!valid) throw new IllegalStateException("invalid surface");
        rateCalls++;
        if (rateFailure != null) throw rateFailure;
        rate = value; compatibility = mode;
    }
}
