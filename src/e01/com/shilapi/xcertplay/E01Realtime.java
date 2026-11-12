package com.shilapi.xcertplay;

import java.net.Socket;
import java.net.SocketException;

/** Optional latency hints. Failure must never prevent a CarPlay session. */
public final class E01Realtime {
    public static void controlSocket(Socket socket) {
        if (socket == null) return;
        try {
            // Touch/HID and media commands are small, already encrypted records.
            // flush() alone does not disable the TCP Nagle algorithm.
            socket.setTcpNoDelay(true);
        } catch (SocketException | SecurityException ignored) { }
    }

    public static void videoThread() {
        try {
            // Current receiver/decoder worker only; never the UI or audio thread.
            // Same scheduling class used by upstream ScreenStream.
            android.os.Process.setThreadPriority(-4); // THREAD_PRIORITY_DISPLAY
        } catch (RuntimeException ignored) { }
    }

    private E01Realtime() { }
}
