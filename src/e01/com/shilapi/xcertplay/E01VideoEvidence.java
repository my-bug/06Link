package com.shilapi.xcertplay;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.lang.reflect.Field;

/** Bounded main-screen evidence; no capture thread, frame dump, or protocol payload. */
public final class E01VideoEvidence {
    private static long started;
    private static int recoveries, failures;
    public static synchronized void begin(Activity owner, int maxFps) {
        started = System.nanoTime(); recoveries = 0; failures = 0;
        SharedPreferences p = owner.getSharedPreferences("xcertplay_airplay", 0);
        SharedPreferences v = owner.getSharedPreferences("06link-video", 0);
        write(owner, "config maxFPS=" + maxFps + " selected=" + p.getInt("display_fps", 30)
            + " mode=" + p.getString("display_fps_mode", "auto")
            + " force60=" + v.getBoolean("force60", false)
            + " smooth=" + v.getBoolean("smooth", false) + " mtk=" + v.getBoolean("mtk", true));
    }
    /** Routine frame samples are disabled in release builds; decoder behavior is unchanged. */
    public static void window(Context c, Object value) { }
    public static synchronized void recovery(Object decoder, String reason) {
        if (started == 0 || recoveries >= 3) return;
        try {
            Field f = decoder.getClass().getDeclaredField("outputSurface"); f.setAccessible(true);
            E01SmoothVideo.Output output = E01SmoothVideo.OUTPUTS.get(f.get(decoder));
            if (output != null) { recoveries++; write(output.context, "recovery=" + reason + E01SmoothVideo.diagnostic(decoder)); }
        } catch (Exception ignored) { }
    }
    /** At most three short failure records per connection; no frame data or arbitrary exception message. */
    public static synchronized void failure(Object decoder, Throwable error) {
        if (started == 0 || failures >= 3 || error == null) return;
        try {
            Field f = decoder.getClass().getDeclaredField("outputSurface"); f.setAccessible(true);
            E01SmoothVideo.Output output = E01SmoothVideo.OUTPUTS.get(f.get(decoder));
            if (output == null) return;
            failures++;
            write(output.context, failureSummary(error));
        } catch (Exception ignored) { }
    }
    static String failureSummary(Throwable error) {
        StringBuilder text = new StringBuilder("failure=");
        Throwable cause = error;
        for (int depth = 0; cause != null && depth < 3; depth++) {
            if (depth > 0) text.append(" cause=");
            text.append(cause.getClass().getSimpleName());
            if (cause instanceof android.media.MediaCodec.CodecException) {
                String diagnostic = ((android.media.MediaCodec.CodecException) cause).getDiagnosticInfo();
                if (diagnostic != null) text.append(" diagnostic=").append(shortToken(diagnostic));
            }
            StackTraceElement[] stack = cause.getStackTrace();
            for (int i = 0; i < Math.min(3, stack.length); i++) {
                StackTraceElement frame = stack[i];
                text.append(i == 0 ? " at=" : " <-")
                    .append(shortToken(frame.getClassName())).append('.')
                    .append(shortToken(frame.getMethodName())).append(':').append(frame.getLineNumber());
            }
            Throwable next = cause.getCause();
            if (next == cause) break;
            cause = next;
        }
        return text.length() > 480 ? text.substring(0, 480) : text.toString();
    }
    private static String shortToken(String value) {
        String clipped = value.length() > 100 ? value.substring(0, 100) : value;
        return clipped.replaceAll("[^A-Za-z0-9_.$:-]", "_");
    }
    public static void decision(Context c, String text) { write(c, "decision=" + text); }
    private static void write(Context c, String text) {
        if (c == null) return;
        try {
            File dir = c.getExternalFilesDir(null); if (dir == null) dir = c.getFilesDir();
            // Inputs contain controlled settings, counters and decoder recovery reasons only.
            E01LogPolicy.session(new File(dir, "06link.log"), "VIDEO " + text);
        } catch (RuntimeException ignored) { }
    }
    private E01VideoEvidence() { }
}
