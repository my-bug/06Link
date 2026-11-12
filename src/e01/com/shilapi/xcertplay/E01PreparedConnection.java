package com.shilapi.xcertplay;

import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.Callable;

/** One speculative connection, one owner. Cancellation also disposes a late result. */
public final class E01PreparedConnection<T extends Closeable> {
    private T result;
    private Exception failure;
    private boolean done, cancelled, taken;
    private final Thread worker;
    public E01PreparedConnection(final Callable<T> opener) {
        worker = new Thread(() -> {
            T opened = null; Exception error = null;
            try { opened = opener.call(); if (opened == null) throw new IOException("蓝牙通道为空"); }
            catch (Exception e) { error = e; }
            boolean dispose;
            synchronized (this) {
                dispose = cancelled;
                if (!dispose) { result = opened; failure = error; }
                done = true; notifyAll();
            }
            if (dispose) closeQuietly(opened);
        }, "06Link-spp-prepare");
        worker.setDaemon(true); worker.start();
    }
    public T take(Callable<Boolean> stale) throws Exception {
        try {
            for (;;) {
                if (stale.call() || Thread.currentThread().isInterrupted()) throw new IOException("蓝牙连接已取消");
                synchronized (this) {
                    if (cancelled || taken) throw new IOException("蓝牙准备已结束");
                    if (done) {
                        if (failure != null) throw failure;
                        T value = result; result = null; taken = true; return value;
                    }
                    wait(100L);
                }
            }
        } catch (Exception e) {
            cancel();
            if (e instanceof InterruptedException) Thread.currentThread().interrupt();
            throw e;
        }
    }
    public void cancel() {
        T dispose;
        synchronized (this) {
            cancelled = true; dispose = result; result = null; notifyAll();
        }
        worker.interrupt(); closeQuietly(dispose);
    }
    private static void closeQuietly(Closeable value) {
        if (value != null) try { value.close(); } catch (IOException ignored) { }
    }
}
