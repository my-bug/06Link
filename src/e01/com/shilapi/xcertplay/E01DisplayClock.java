package com.shilapi.xcertplay;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import java.io.*;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.UUID;

/** E01 centre-screen clock lease. No boot persistence, ADB, mux or voltage changes. */
final class E01DisplayClock {
    static final String PREFERENCE = "display60";
    private static final Map<Object, Boolean> OWNERS = new IdentityHashMap<Object, Boolean>();
    private static Handler handler;
    private static Context app;
    private static File directory, heartbeat, result, script;
    private static boolean launched, attempted;
    private static long launchAt, stopUntil;
    private static int busyRetries;
    private static String seen = "";

    static boolean enabled(Context context) {
        return context.getSharedPreferences("06link-video", 0).getBoolean(PREFERENCE, true);
    }

    static synchronized void acquire(Context context, Object owner, int fps) {
        if (!E01PrivilegedShell.supported() || fps < 60 || !enabled(context)) {
            release(owner); return;
        }
        app = context.getApplicationContext();
        OWNERS.put(owner, Boolean.TRUE);
        if (handler == null) {
            HandlerThread thread = new HandlerThread("06Link-display-clock");
            thread.setDaemon(true); thread.start(); handler = new Handler(thread.getLooper());
        }
        handler.removeCallbacks(TICK); handler.post(TICK);
    }

    static synchronized void release(Object owner) {
        OWNERS.remove(owner);
        if (handler != null) { handler.removeCallbacks(TICK); handler.post(TICK); }
    }

    // All disk/Binder work stays off both video and UI threads. One process owns one lease.
    private static final Runnable TICK = new Runnable() {
        public void run() {
            boolean wanted;
            synchronized (E01DisplayClock.class) { wanted = !OWNERS.isEmpty() && enabled(app); }
            try {
                if (wanted) {
                    if (!attempted) {
                        attempted = true; seen = ""; prepare();
                        write(heartbeat, Long.toString(SystemClock.elapsedRealtime() / 1000));
                        // Already-existing results are only a previous lease, never a new success.
                        result.delete();
                        String command = "/system/bin/sh " + script.getAbsolutePath()
                            + " </dev/null >/dev/null 2>&1 & echo SUBMITTED";
                        if (("busybox timeout -t 3 /system/bin/sh -c '" + command + "'").getBytes("UTF-8").length > 255)
                            throw new IOException("display launch too long");
                        String ack = E01PrivilegedShell.execute(command);
                        if (!"SUBMITTED".equals(ack.trim())) throw new IOException("display launch unconfirmed");
                        launched = true; launchAt = SystemClock.elapsedRealtime();
                    }
                    if (launched) {
                        write(heartbeat, Long.toString(SystemClock.elapsedRealtime() / 1000));
                        readResult();
                        if (SystemClock.elapsedRealtime() - launchAt > 16000 && seen.isEmpty()) {
                            stop(); log("中控60Hz 未收到系统回执，已停止请求");
                        }
                    }
                } else {
                    if (launched) stop();
                    readResult();
                    attempted = false; busyRetries = 0;
                }
            } catch (Exception error) {
                stop();
                // The shared OEM Binder is also used by navigation/Bluetooth startup.
                // Retry only a command explicitly rejected before submission as busy.
                if ("OEM command still running".equals(error.getMessage()) && busyRetries++ < 3) {
                    attempted = false;
                    if(script!=null)script.delete();
                } else log("中控60Hz 未启用 原因=" + error.getClass().getSimpleName());
            }
            synchronized (E01DisplayClock.class) {
                // Owners can disappear while the asynchronous Binder launch is in flight.
                if ((OWNERS.isEmpty() || !enabled(app)) && launched) stop();
                handler.removeCallbacks(TICK);
                // Also collect the bounded restore receipt while idle; no shell polling or logs.
                if (!OWNERS.isEmpty() || SystemClock.elapsedRealtime() < stopUntil) handler.postDelayed(TICK, 2000);
            }
        }
    };

    private static void prepare() throws IOException {
        directory = new File(app.getFilesDir(), "display-clock");
        if (!directory.getAbsolutePath().matches("/(data/data|data/user/0)/com[.]sixlink[.]car/files/display-clock"))
            throw new IOException("display directory mismatch");
        if (!directory.isDirectory() && !directory.mkdirs()) throw new IOException("display directory unavailable");
        // Receipts are not a second unbounded log. Completed old leases are already
        // represented by the persistent application log; discard their tiny files.
        File[] previous=directory.listFiles();
        if(previous!=null)for(File file:previous){
            if(file.getName().startsWith("result-") && System.currentTimeMillis()-file.lastModified()>30000)file.delete();
            if(file.getName().startsWith("run-") && System.currentTimeMillis()-file.lastModified()>86400000)file.delete();
        }
        String token = UUID.randomUUID().toString().replace("-", "");
        heartbeat = new File(directory, "lease-" + token); result = new File(directory, "result-" + token);
        script = new File(directory, "run-" + token + ".sh");
        try (FileOutputStream output = new FileOutputStream(script);
             InputStream input = app.getAssets().open("display-clock/session.sh")) {
            String header = "#!/system/bin/sh\nAPP_PID=" + android.os.Process.myPid() + "\nDIR=" + directory.getAbsolutePath() + "\nTOKEN=" + token + "\n";
            output.write(header.getBytes("UTF-8")); byte[] bytes = new byte[4096]; int count;
            while ((count = input.read(bytes)) > 0) output.write(bytes, 0, count);
            output.getFD().sync();
        }
    }

    private static void stop() {
        if (launched) stopUntil = SystemClock.elapsedRealtime() + 15000;
        if (heartbeat != null) heartbeat.delete();
        launched = false;
    }

    private static void readResult() {
        if (result == null) return;
        try (FileInputStream input = new FileInputStream(result)) {
            byte[] data = new byte[512]; int count = input.read(data);
            String value = count < 0 ? "" : new String(data, 0, count, "UTF-8").trim();
            if (value.equals(seen) || value.isEmpty()) return;
            seen = value;
            if (value.equals("active:60")) log("中控60Hz 输出参数已启用（实际帧率以视频统计为准）");
            else if (value.startsWith("restored:")) { launched = false; stopUntil=0; log("中控60Hz 已恢复原输出参数 " + value); result.delete(); }
            else if (value.startsWith("failed:")) { stop(); stopUntil=0; log("中控60Hz 操作未完成 " + value); result.delete(); if(script!=null)script.delete(); }
        } catch (IOException ignored) { }
    }

    private static void log(String text) { if (app != null) E01VideoEvidence.decision(app, text); }
    private static void write(File file, String value) throws IOException {
        File temp = new File(file.getParentFile(), file.getName() + ".new");
        try (FileOutputStream stream = new FileOutputStream(temp)) { stream.write(value.getBytes("UTF-8")); }
        if (!temp.renameTo(file)) { temp.delete(); throw new IOException("display heartbeat unavailable"); }
    }
    private E01DisplayClock() { }
}
