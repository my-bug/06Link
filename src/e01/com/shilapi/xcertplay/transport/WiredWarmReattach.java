package com.shilapi.xcertplay.transport;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function1;

/** Some phones stay on the same USB address when asked to enter CarPlay mode again. */
public final class WiredWarmReattach {
    private static volatile UsbDevice previous;
    private static final long SETTLE_MS = 1500;

    public static void remember(UsbDevice device) {
        previous = device;
    }

    public static void probe(Handler handler, Executor worker, UsbManager manager,
            UsbDevice requested, AtomicInteger generation, int ticket, Function1<UsbDevice, ?> attach) {
        UsbDevice last = previous;
        if (!samePhone(last, requested)) return;
        handler.postDelayed(() -> {
            if (generation.get() != ticket || previous != last) return;
            try {
                worker.execute(() -> {
                    if (generation.get() != ticket || previous != last) return;
                    UsbDevice ready = configuredPhone(manager, requested);
                    if (ready != null) handler.post(() -> {
                        if (generation.get() == ticket && previous == last) attach.invoke(ready);
                    });
                });
            } catch (RejectedExecutionException stopped) {
                // The controller was closed before its worker could run.
            }
        }, SETTLE_MS);
    }

    private static boolean samePhone(UsbDevice a, UsbDevice b) {
        return a != null && b != null && a.getVendorId() == 0x05ac && b.getVendorId() == 0x05ac
                && a.getProductId() == b.getProductId() && a.getDeviceName().equals(b.getDeviceName());
    }

    private static UsbDevice configuredPhone(UsbManager manager, UsbDevice requested) {
        try {
            UsbDevice current = manager.getDeviceList().get(requested.getDeviceName());
            if (!samePhone(requested, current) || !manager.hasPermission(current)) return null;
            UsbConfigView config = IphoneCarPlayConfiguration.INSTANCE.find(current, manager);
            if (!WiredConfigurationPolicy.carPlayMode(config) || config.getId() <= 0) return null;
            UsbDeviceConnection read = manager.openDevice(current);
            if (read == null) return null;
            try {
                byte[] active = new byte[1];
                // Standard USB GET_CONFIGURATION reads the active value without claiming an interface.
                int count = read.controlTransfer(0x80, 8, 0, 0, active, 1, 300);
                return count == 1 && (active[0] & 255) == config.getId() ? current : null;
            } finally {
                read.close();
            }
        } catch (RuntimeException unavailable) {
            // Permission, USB enumeration and detach can race. Keep the normal attach/timeout path.
            return null;
        }
    }

    private WiredWarmReattach() {}
}
