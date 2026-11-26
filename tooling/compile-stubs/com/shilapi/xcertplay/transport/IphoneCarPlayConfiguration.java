package com.shilapi.xcertplay.transport;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;

public final class IphoneCarPlayConfiguration {
    public static final IphoneCarPlayConfiguration INSTANCE = new IphoneCarPlayConfiguration();
    public UsbConfigView find(UsbDevice device, UsbManager manager) { return null; }
}
