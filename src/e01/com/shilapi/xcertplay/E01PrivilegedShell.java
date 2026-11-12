package com.shilapi.xcertplay;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.IBinder;
import android.os.Parcel;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/** Shared, bounded command transport for OEM Bluetooth and navigation compatibility. */
final class E01PrivilegedShell {
    private static final int COMMAND_BYTES = 4096;
    private static final int WIRE_BYTES = 255;
    private static final ExecutorService WORKER = Executors.newSingleThreadExecutor(r -> {
        Thread t = new Thread(r, "06link-oem-command");
        t.setDaemon(true);
        return t;
    });
    private static Future<String> active;

    static boolean supported() {
        return Build.VERSION.SDK_INT == 22
            && "E01".equals(Build.MODEL) && "BX11QJ".equals(Build.DEVICE);
    }

    static String execute(String text) throws Exception { return execute(null, text); }

    /** A long command needs the platform-owned private app directory, never shared storage. */
    static synchronized String execute(Context context, String text) throws Exception {
        if (!supported()) throw new IOException("OEM command service unsupported");
        if (active != null && !active.isDone()) throw new IOException("OEM command still running");
        if (text == null || text.indexOf('\0') >= 0) throw new IOException("OEM command invalid");
        if (text.getBytes("UTF-8").length > COMMAND_BYTES) throw new IOException("OEM command too long");
        String command = "busybox timeout -t 3 /system/bin/sh -c " + quote(text);
        File prepared = null;
        if (command.getBytes("UTF-8").length > WIRE_BYTES) {
            if (context == null) throw new IOException("OEM long command requires private context");
            prepared = prepareScript(context, text);
            command = "busybox timeout -t 3 /system/bin/sh " + quote(prepared.getAbsolutePath());
        }
        if (command.getBytes("UTF-8").length > WIRE_BYTES) {
            discard(prepared);
            throw new IOException("OEM wire command too long");
        }
        final File script = prepared;
        final String wire = command;
        Future<String> task;
        try {
            task = WORKER.submit(() -> {
                try { return transact(wire); }
                // The Binder may outlive the caller's timeout. Keep its unique script until
                // the Binder actually returns, then delete only this operation's own file.
                finally { discard(script); }
            });
        } catch (RuntimeException rejected) { discard(script); throw rejected; }
        active = task;
        try {
            return task.get(4500, TimeUnit.MILLISECONDS).trim();
        } catch (TimeoutException e) {
            // Do not cancel the Future: Binder may still run. Keep the single-flight barrier.
            throw new IOException("OEM command timeout", e);
        } finally {
            if (task.isDone() && active == task) active = null;
        }
    }

    private static String quote(String text) { return "'" + text.replace("'", "'\\''") + "'"; }

    private static File prepareScript(Context context, String text) throws IOException {
        ApplicationInfo info = context.getApplicationInfo();
        if (info == null || info.dataDir == null || info.uid != android.os.Process.myUid()
                || !"com.sixlink.car".equals(context.getPackageName()))
            throw new IOException("OEM script context mismatch");
        File data = new File(info.dataDir).getCanonicalFile();
        File files = context.getFilesDir().getCanonicalFile();
        if (!files.equals(new File(data, "files")) || !files.isDirectory())
            throw new IOException("OEM script directory outside private files");
        File dir = new File(files, "oem-cmd");
        if (!dir.getCanonicalFile().equals(dir.getAbsoluteFile()))
            throw new IOException("OEM script directory is linked");
        if (!dir.isDirectory() && !dir.mkdir()) throw new IOException("OEM script directory unavailable");
        if (!dir.setReadable(false, false) || !dir.setWritable(false, false) || !dir.setExecutable(false, false)
                || !dir.setReadable(true, true) || !dir.setWritable(true, true) || !dir.setExecutable(true, true))
            throw new IOException("OEM script directory permissions");
        // An app process killed during a Binder request can leave one small file. Do not
        // delete old files that a previous still-running Binder could be about to open.
        File[] retained = dir.listFiles();
        if (retained == null || retained.length >= 64) throw new IOException("OEM script directory full");
        File script = File.createTempFile("cmd-", ".sh", dir);
        boolean ready = false;
        try {
            if (!script.getCanonicalFile().equals(script.getAbsoluteFile())
                    || !script.setReadable(false, false) || !script.setWritable(false, false)
                    || !script.setExecutable(false, false)
                    || !script.setReadable(true, true) || !script.setWritable(true, true))
                throw new IOException("OEM script file permissions");
            try (FileOutputStream out = new FileOutputStream(script, false)) {
                out.write(("#!/system/bin/sh\n" + text + "\n").getBytes("UTF-8"));
                out.getFD().sync();
            }
            if (!script.setReadOnly()) throw new IOException("OEM script file not sealed");
            ready = true;
            return script;
        } finally { if (!ready) discard(script); }
    }

    private static void discard(File script) {
        // No recursive cleanup, no shell deletion, and no names supplied by the peer.
        if (script != null) script.delete();
    }

    private static String transact(String command) throws Exception {
        IBinder binder = (IBinder) Class.forName("android.os.ServiceManager")
            .getMethod("getService", String.class).invoke(null, "ExtraUtilsService");
        if (binder == null) throw new IOException("OEM service unavailable");
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            request.writeInterfaceToken("com.neusoft.alfus.os.IExtraUtilsService");
            request.writeInt(8);
            request.writeInt(0);
            request.writeByteArray(command.getBytes("UTF-8"));
            if (!binder.transact(6, request, reply, 0)) throw new IOException("OEM service refused");
            reply.readException();
            byte[] result = reply.createByteArray();
            if (result == null) throw new IOException("OEM reply missing");
            return new String(result, "UTF-8");
        } finally { request.recycle(); reply.recycle(); }
    }

    private E01PrivilegedShell() {}
}
