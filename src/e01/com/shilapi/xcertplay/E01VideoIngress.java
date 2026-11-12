package com.shilapi.xcertplay;

import java.io.*;
import java.net.Socket;
import java.util.concurrent.ConcurrentHashMap;

/** Bounded byte prefetch only. Framing, authenticated decryption and frame ownership stay upstream. */
public final class E01VideoIngress {
    private static final ConcurrentHashMap<Socket, Ahead> ACTIVE = new ConcurrentHashMap<Socket, Ahead>();
    private E01VideoIngress() { }
    public static InputStream wrap(Socket socket) throws IOException {
        Ahead stream = new Ahead(socket.getInputStream(), 32 * 1024);
        Ahead previous = ACTIVE.putIfAbsent(socket, stream);
        if (previous != null) return previous;
        try { stream.start(); return stream; }
        catch (RuntimeException error) { ACTIVE.remove(socket, stream); stream.close(); throw error; }
    }
    /** Complete protocol message, before decryption; never pass media contents. */
    public static void message(InputStream input, int type, long senderPts, int bodyLength) {
        if (!(input instanceof Ahead)) return;
        try {
            Ahead ahead=(Ahead)input;
            long now=System.nanoTime();
            ahead.evidence.packet(type,senderPts,bodyLength,now);
            String line=ahead.evidence.reportIfDue(now);
            if(line!=null)android.util.Log.i("06Link-Ingress",line);
        } catch(RuntimeException ignored) { /* Diagnostics must not interrupt media. */ }
    }
    public static void close(Closeable object) {
        if (object instanceof Socket) {
            Ahead stream = ACTIVE.remove((Socket)object);
            if (stream != null) try { stream.close(); } catch (IOException ignored) { }
        }
        if (object != null) try { object.close(); } catch (Exception ignored) { }
    }
    static final class Ahead extends InputStream {
        private final InputStream source;
        private final byte[] ring;
        private final Thread worker;
        final E01IngressEvidence evidence=new E01IngressEvidence();
        private int head, tail, count;
        private boolean closed, eof;
        private IOException failure;
        Ahead(InputStream source, int capacity) {
            if (source == null || capacity <= 0) throw new IllegalArgumentException();
            this.source = source;
            ring = new byte[capacity];
            worker = new Thread(new Runnable() { public void run() { pump(); } }, "06Link-video-read");
            worker.setDaemon(true);
        }
        void start() { worker.start(); }
        private void pump() {
            // Android starts this new worker at normal priority, even when the
            // ScreenStream creator already uses the display scheduling priority.
            // Apply the same hint inside the actual reader; failure is harmless.
            try { android.os.Process.setThreadPriority(-4); }
            catch (RuntimeException ignored) { }
            try {
                while (true) {
                    int offset, length;
                    synchronized (this) {
                        long waiting=0;
                        try {
                            while (!closed && count == ring.length) {if(waiting==0)waiting=System.nanoTime();wait();}
                        } finally {if(waiting!=0)evidence.fullWait(waiting,System.nanoTime());}
                        if (closed) return;
                        offset = tail;
                        length = Math.min(16384, Math.min(ring.length - count, ring.length - tail));
                    }
                    int received=-2;long readStart=System.nanoTime();
                    try {received=source.read(ring, offset, length);}
                    finally {evidence.sourceRead(readStart,System.nanoTime(),received);}
                    if (received == 0) {
                        int value=-2;readStart=System.nanoTime();
                        try {value=source.read();}
                        finally {evidence.sourceRead(readStart,System.nanoTime(),value<0?value:1);}
                        if (value < 0) received = -1;
                        else { ring[offset] = (byte)value; received = 1; }
                    }
                    synchronized (this) {
                        if (closed) return;
                        if (received < 0) { eof = true; notifyAll(); return; }
                        tail = (tail + received) % ring.length;
                        count += received;
                        notifyAll();
                    }
                }
            } catch (InterruptedException error) {
                Thread.currentThread().interrupt();
                finish(new InterruptedIOException("Video reader interrupted"));
            } catch (IOException error) { finish(error); }
              catch (RuntimeException error) { finish(new IOException("Video reader failed", error)); }
        }
        private synchronized void finish(IOException error) {
            if (!closed) { failure = error; eof = true; }
            notifyAll();
        }
        @Override public synchronized int read(byte[] output, int offset, int length) throws IOException {
            if (output == null) throw new NullPointerException();
            if (offset < 0 || length < 0 || length > output.length - offset) throw new IndexOutOfBoundsException();
            if (length == 0) return 0;
            long waiting=0;
            try {
            while (count == 0 && !eof && !closed) {
                if(waiting==0)waiting=System.nanoTime();
                try { wait(); }
                catch (InterruptedException error) {
                    Thread.currentThread().interrupt();
                    throw new InterruptedIOException("Video consumer interrupted");
                }
            }
            } finally {if(waiting!=0)evidence.emptyWait(waiting,System.nanoTime());}
            if (closed) throw new IOException("Video reader closed");
            if (count == 0) { if (failure != null) throw failure; return -1; }
            int copied = Math.min(length, Math.min(count, ring.length - head));
            System.arraycopy(ring, head, output, offset, copied);
            head = (head + copied) % ring.length;
            count -= copied;
            notifyAll();
            return copied;
        }
        @Override public int read() throws IOException {
            byte[] single = new byte[1];
            return read(single, 0, 1) < 0 ? -1 : single[0] & 255;
        }
        @Override public synchronized int available() { return count; }
        @Override public void close() throws IOException {
            synchronized (this) {
                if (closed) return;
                closed = true;
                count = 0;
                notifyAll();
            }
            worker.interrupt();
            source.close();
        }
        boolean terminated(long milliseconds) throws InterruptedException { worker.join(milliseconds); return !worker.isAlive(); }
    }
}
