package android.os;
public final class SystemClock {
    public static volatile long time;
    public static long elapsedRealtime(){return time;}
}
