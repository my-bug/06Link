package com.shilapi.xcertplay.transport;

import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/** One native URB at a time, rearmed before NCM parsing/TUN delivery.
 * Completion copies into the caller's array; the next URB owns separate native memory.
 * Cancellation never frees an in-flight URB. releaseAfterClose requires a closed USB fd.
 */
public final class LegacyBulkReader {
    private final int fd, endpointAddress;
    private final UsbfsReadOps ops;
    private final Function1<? super String, Unit> log;
    private final Object readLock = new Object(), stateLock = new Object();
    private int chunkBytes;
    private boolean fallbackUsed, cancelled, ahead;
    private long pending;
    private IOException deferred;

    public LegacyBulkReader(int fd, int endpoint, int size, UsbfsReadOps ops,
                            Function1<? super String, Unit> log) {
        if (ops == null || log == null) throw new NullPointerException();
        this.fd = fd; endpointAddress = endpoint; chunkBytes = size;
        this.ops = ops; this.log = log;
    }
    public LegacyBulkReader(int fd, int endpoint, int size, UsbfsReadOps ops,
                            Function1<? super String, Unit> log, int mask, DefaultConstructorMarker unused) {
        this(fd, endpoint, size, (mask & 8) != 0 ? NativeUsbfsReadOps.INSTANCE : ops,
            (mask & 16) != 0 ? new Function1<String, Unit>() {
                public Unit invoke(String text) { android.util.Log.w("xcertplay-usb", text); return Unit.INSTANCE; }
            } : log);
    }
    public LegacyBulkReader(UsbDeviceConnection connection, UsbEndpoint endpoint, int size) {
        this(connection.getFileDescriptor(), endpoint.getAddress(), size, null, null, 24, null);
    }
    public int getChunkBytes() { synchronized (stateLock) { return chunkBytes; } }
    /** Opt in only the NCM reader; iAP2 retains demand-driven reads. */
    public void enableReadAhead() { synchronized (stateLock) { ahead = true; } }

    private boolean fallback() {
        if (fallbackUsed || chunkBytes <= 16384) return false;
        fallbackUsed = true; chunkBytes = 16384;
        log.invoke("usbfs EINVAL: retrying at 16384 bytes for this session");
        return true;
    }
    private void submit() throws IOException {
        long handle = ops.submitRead(fd, endpointAddress, chunkBytes);
        if (handle == -22 && fallback()) handle = ops.submitRead(fd, endpointAddress, chunkBytes);
        if (handle <= 0) throw new IOException("usbfs submit failed errno=" + (-handle));
        pending = handle;
    }
    public Integer read(byte[] target, long timeoutMillis) throws IOException {
        if (target == null) throw new NullPointerException("target");
        int timeout = (int)Math.max(1, Math.min(Integer.MAX_VALUE, timeoutMillis));
        synchronized (readLock) {
            for (;;) {
                final long handle;
                synchronized (stateLock) {
                    if (cancelled) throw new IOException("USB read was cancelled");
                    if (deferred != null) { IOException e = deferred; deferred = null; throw e; }
                    if (pending == 0) submit();
                    handle = pending;
                }
                // Do not hold the state lock across a blocking native wait: cancel must run now.
                int count = ops.awaitRead(handle, target, timeout);
                synchronized (stateLock) {
                    if (count == -110) {
                        if (cancelled) throw new IOException("USB read was cancelled");
                        return null; // Keep ownership of the same outstanding URB.
                    }
                    ops.freeRead(handle); pending = 0;
                    if (cancelled) throw new IOException("USB read was cancelled");
                    if (count == -22 && fallback()) continue;
                    if (count < 0) throw new IOException("usbfs completion failed errno=" + (-count));
                    if (ahead) {
                        try { submit(); }
                        catch (IOException e) { deferred = e; } // Deliver valid completed data first.
                    }
                    return count;
                }
            }
        }
    }
    public void cancel() {
        synchronized (stateLock) {
            if (cancelled) return;
            cancelled = true;
            if (pending != 0) ops.discardRead(fd, pending);
        }
    }
    public void releaseAfterClose() {
        synchronized (readLock) {
            synchronized (stateLock) {
                cancelled = true;
                if (pending != 0) { ops.freeRead(pending); pending = 0; }
            }
        }
    }
}
