package com.shilapi.xcertplay;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.IOException;
/** ParcelFileDescriptor.close alone leaves a blocked TUN read alive on E01 Android5.1. */
public final class E01TunClose {
    public static void close(ParcelFileDescriptor tun) throws IOException {
        try {
            if (Build.VERSION.SDK_INT == 22 && "E01".equals(Build.MODEL) && "BX11QJ".equals(Build.DEVICE)) {
                FileDescriptor fd = tun.getFileDescriptor();
                if (fd.valid()) {
                    Class.forName("libcore.io.IoBridge")
                        .getMethod("closeAndSignalBlockedThreads", FileDescriptor.class).invoke(null, fd);
                    Log.i("06Link-usb", "TUN shutdown signaled blocked readers");
                }
            }
        } catch (ReflectiveOperationException | RuntimeException e) {
            Log.w("06Link-usb", "TUN shutdown signal failed: " + e.getClass().getSimpleName());
        } finally {
            // Releases ParcelFileDescriptor bookkeeping too; fd was invalidated by IoBridge.
            tun.close();
        }
    }
    public static void noteThreads(Thread incoming, Thread outgoing) {
        Log.i("06Link-usb", "TUN shutdown threads alive in=" + (incoming != null && incoming.isAlive())
            + " out=" + (outgoing != null && outgoing.isAlive()));
    }
    private E01TunClose() {}
}
