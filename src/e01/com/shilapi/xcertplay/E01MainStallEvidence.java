package com.shilapi.xcertplay;

import android.os.Looper;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/** One bounded snapshot when the existing main-thread stall detector fires. */
public final class E01MainStallEvidence {
    public static String describe(long gapMillis) {
        StringBuilder text = new StringBuilder(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US).format(new Date()));
        text.append(" main-thread stall gapMs=").append(gapMillis)
            .append(" pid=").append(android.os.Process.myPid()).append(" (threshold snapshot, possible ANR)");
        try {
            Thread main = Looper.getMainLooper().getThread();
            text.append(" state=").append(main.getState());
            StackTraceElement[] stack = main.getStackTrace();
            for (int i = 0; i < Math.min(12, stack.length); i++) {
                String frame = stack[i].toString();
                text.append("\n  at ").append(frame.substring(0, Math.min(180, frame.length())));
            }
        } catch (RuntimeException unavailable) {
            text.append(" stack=unavailable");
        }
        return text.length() > 1800 ? text.substring(0, 1800) : text.toString();
    }
    private E01MainStallEvidence() { }
}
