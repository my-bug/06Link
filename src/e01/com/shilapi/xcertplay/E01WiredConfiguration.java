package com.shilapi.xcertplay;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import android.hardware.usb.UsbEndpoint;
import com.shilapi.xcertplay.transport.LegacyUsbfs;
import android.os.Build;
import android.util.Log;
import com.shilapi.xcertplay.transport.UsbConfigCompat;
import com.shilapi.xcertplay.transport.UsbConfigView;
import com.shilapi.xcertplay.transport.UsbInterfaceView;

/** Release E01's rebound CDC NCM driver before retrying a warm USB configuration. */
public final class E01WiredConfiguration {
    public static boolean configure(UsbManager manager, UsbDevice device,
            UsbDeviceConnection connection, UsbConfigView config) {
        if (UsbConfigCompat.INSTANCE.setConfiguration(connection, config)) return true;
        if (Build.VERSION.SDK_INT != 22 || !"E01".equals(Build.MODEL)
                || !"BX11QJ".equals(Build.DEVICE) || device.getVendorId() != 0x05ac) return false;

        // Only touch interfaces belonging to the phone's currently active configuration.
        byte[] current = new byte[1];
        if (connection.controlTransfer(0x80, 8, 0, 0, current, 1, 1000) != 1
                || (current[0] & 255) != config.getId())
            throw new IllegalStateException("Cannot confirm active iPhone USB configuration");

        UsbDeviceConnection temporary = manager.openDevice(device);
        if (temporary == null) throw new IllegalStateException("Cannot release iPhone NCM driver");
        int claimed = 0;
        try {
            for (UsbInterfaceView iface : config.getInterfaces()) {
                // CDC NCM control interface with a notification endpoint. No hub/USBMUX/PTP access.
                if (iface.getInterfaceClass() != 2 || iface.getInterfaceSubclass() != 13
                        || iface.getAlternateSetting() != 0 || iface.getEndpointCount() == 0) continue;
                if (!temporary.claimInterface(iface.getFramework(), true))
                    throw new IllegalStateException("Cannot claim iPhone NCM control interface");
                claimed++;
            }
        } finally {
            // close releases usbfs claims. Android releaseInterface would explicitly reconnect
            // cdc_ncm immediately, recreating EBUSY before SET_CONFIGURATION.
            temporary.close();
        }
        if (claimed == 0) throw new IllegalStateException("No iPhone NCM interface to release");
        // Same-config SET_CONFIGURATION leaves the old interface objects in usbcore.
        // Fully unconfigure before restoring the selected configuration, with no bulk I/O running.
        int reset = LegacyUsbfs.setConfiguration(connection.getFileDescriptor(), 0);
        Log.i("06Link-usb", "NCM unconfigure before warm reconnect errno=" + reset);
        if (reset != 0) throw new IllegalStateException("Cannot unconfigure old iPhone USB session: " + reset);
        boolean ready = UsbConfigCompat.INSTANCE.setConfiguration(connection, config);
        Log.i("06Link-usb", "NCM configuration retry after kernel driver release: " + ready);
        if (!ready) throw new IllegalStateException("iPhone USB configuration retry failed");
        return true;
    }
    /** Read-only status, called by the bridge's existing first-timeout log gate. */
    public static void logWriteState(UsbDeviceConnection connection, UsbEndpoint endpoint) {
        if (Build.VERSION.SDK_INT != 22 || !"E01".equals(Build.MODEL)
                || !"BX11QJ".equals(Build.DEVICE)) return;
        try {
            byte[] status = new byte[2];
            int n = connection.controlTransfer(0x82, 0, 0, endpoint.getAddress(), status, 2, 500);
            Log.i("06Link-usb", "NCM bulk-out endpoint=" + endpoint.getAddress()
                    + " statusBytes=" + n + " halt=" + (n == 2 ? (status[0] & 1) : -1));
        } catch (RuntimeException e) {
            Log.i("06Link-usb", "NCM endpoint status unavailable: " + e.getClass().getSimpleName());
        }
    }
    private E01WiredConfiguration() {}
}
