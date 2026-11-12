package com.shilapi.xcertplay;
import android.os.Build;
/** E01 Siri source A/B, following upstream DiPlay's Geely voice-communication routing. */
public final class E01MicrophoneSource {
    public static int speech() {
        return Build.VERSION.SDK_INT == 22 && "E01".equals(Build.MODEL) && "BX11QJ".equals(Build.DEVICE) ? 7 : 6;
    }
    private E01MicrophoneSource() { }
}
