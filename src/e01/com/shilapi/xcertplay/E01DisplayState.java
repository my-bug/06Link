package com.shilapi.xcertplay;

import android.content.Context;
import java.io.FileInputStream;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/** One read-only snapshot per process, after the first ten-second video window. */
final class E01DisplayState {
    private static final AtomicBoolean STARTED = new AtomicBoolean();
    private static final int NODE_BYTES = 8192;
    private static final String[] DISPLAY_NODES = { "/sys/kernel/debug/mtkfb", "/d/mtkfb" };
    private static final String[] SMI_NODES = {
        "/sys/module/smi_common/parameters/current_profile",
        "/sys/module/smi/parameters/current_profile"
    };

    interface Source {
        String readFile(String path, int limit) throws Exception;
        String readProperty(String name) throws Exception;
    }

    private static final Source DIRECT = new Source() {
        public String readFile(String path, int limit) throws Exception {
            // debugfs reports a zero file size; read a bounded amount from the stream.
            byte[] bytes = new byte[limit];
            int used = 0;
            try (FileInputStream input = new FileInputStream(path)) {
                while (used < bytes.length) {
                    int count = input.read(bytes, used, bytes.length - used);
                    if (count <= 0) break;
                    used += count;
                }
            }
            return new String(bytes, 0, used, "UTF-8");
        }
        public String readProperty(String name) throws Exception {
            Object value = Class.forName("android.os.SystemProperties")
                .getMethod("get", String.class).invoke(null, name);
            return value == null ? "" : value.toString();
        }
    };

    static void captureOnce(Context context) { captureOnce(context, DIRECT); }

    static void captureOnce(Context context, final Source source) {
        if (context == null || !E01PrivilegedShell.supported() || !STARTED.compareAndSet(false, true)) return;
        try {
            final Context app = context.getApplicationContext();
            Thread worker = new Thread(new Runnable() {
                public void run() {
                    String result;
                    try {
                        result = summarize(readSnapshot(source));
                    } catch (Exception | LinkageError error) {
                        result = "显示同步 读取未完成 原因=" + error.getClass().getSimpleName();
                    }
                    try { E01VideoEvidence.decision(app, result); } catch (RuntimeException ignored) { }
                }
            }, "06Link-display-state");
            worker.setDaemon(true);
            worker.setPriority(Thread.MIN_PRIORITY);
            worker.start();
        } catch (RuntimeException ignored) {
            // Diagnostics must never trigger a renderer fallback or hold a codec owner.
        }
    }

    static String readSnapshot(Source source) {
        String primary = null;
        String node = "unavailable";
        String failure = "none";
        for (String path : DISPLAY_NODES) {
            try {
                String value = source.readFile(path, NODE_BYTES);
                if (value != null && !value.trim().isEmpty()) {
                    primary = value.length() > NODE_BYTES ? value.substring(0, NODE_BYTES) : value;
                    node = path;
                    failure = "none";
                    break;
                }
                failure = "empty";
            } catch (Exception error) {
                failure = error.getClass().getSimpleName();
            }
        }
        StringBuilder reply = new StringBuilder("DISPLAY_SNAPSHOT_V2\nnode=");
        reply.append(node).append("\nread_error=").append(failure).append('\n');
        if (primary != null) reply.append(primary).append('\n');
        for (String path : SMI_NODES) {
            try {
                String smi = source.readFile(path, 64);
                if (smi != null && smi.trim().matches("[0-9]{1,3}")) {
                    reply.append("SMI_PROFILE\n").append(smi.trim()).append('\n');
                    break;
                }
            } catch (Exception | LinkageError ignored) { }
        }
        try {
            String fps = source.readProperty("debug.sf.sw_vsync_fps");
            if (fps != null && fps.matches("[0-9]{1,3}")) {
                reply.append("SW_VSYNC_FPS\n").append(fps).append('\n');
            }
        } catch (Exception | LinkageError ignored) { }
        // Reaching the byte ceiling is conservatively reported as incomplete.
        if (primary == null || primary.length() < NODE_BYTES) reply.append("END_DISPLAY_SNAPSHOT\n");
        return reply.toString();
    }

    static String summarize(String reply) {
        if (reply == null) reply = "";
        if (reply.length() > NODE_BYTES + 512) reply = reply.substring(0, NODE_BYTES + 512);
        String rawFps = field(reply, "\\blcm_fps=([0-9]{1,5})(?=[\\s\\x00]|$)");
        // E01 kernel primary_display_get_info exports this same value at info+0x20;
        // shipped HWC setDisplayData divides it by 100.0 before computing the period.
        String fps = nominalFps(rawFps);
        String drop = field(reply, "\\bvsync_drop=([01])(?=[\\s\\x00]|$)");
        String panel = field(reply, "\\bLCM Driver=\\[([A-Za-z0-9_.-]{1,96})\\]");
        String resolution = field(reply, "\\bResolution=([0-9]{1,5}x[0-9]{1,5})(?![0-9])");
        String smi = field(reply, "(?m)^SMI_PROFILE\\r?\\n([0-9]{1,3})\\r?$");
        String software = field(reply, "(?m)^SW_VSYNC_FPS\\r?\\n([0-9]{1,3})\\r?$");
        String error = field(reply, "(?m)^read_error=([A-Za-z]{1,64})\\r?$");
        boolean complete = reply.startsWith("DISPLAY_SNAPSHOT_V2\n")
            || reply.startsWith("DISPLAY_SNAPSHOT_V2\r\n");
        complete = complete && Pattern.compile("(?m)^END_DISPLAY_SNAPSHOT\\r?$").matcher(reply).find();
        String state = !complete ? "读取不完整" : ("?".equals(fps) || "?".equals(drop))
            ? "状态不可读" : "1".equals(drop) ? "primary隔次同步已开启" : "primary隔次同步未开启";
        // Log parsed fields only. Nominal FPS is not a physical refresh measurement.
        return "显示同步 驱动primary 标称FPS=" + fps + " lcm_fps_raw=" + rawFps + " vsync_drop=" + drop + " " + state
            + " panel=" + panel + " size=" + resolution + " SMI=" + smi + " softFPS=" + software
            + " read=direct error=" + error;
    }

    private static String nominalFps(String raw) {
        if ("?".equals(raw)) return "?";
        int value = Integer.parseInt(raw);
        if (value <= 0) return "?";
        int fractional = value % 100;
        return Integer.toString(value / 100) + (fractional == 0 ? ""
            : fractional % 10 == 0 ? "." + (fractional / 10)
            : fractional < 10 ? ".0" + fractional : "." + fractional);
    }

    private static String field(String text, String expression) {
        Matcher match = Pattern.compile(expression).matcher(text);
        return match.find() ? match.group(1) : "?";
    }
    private E01DisplayState() { }
}
