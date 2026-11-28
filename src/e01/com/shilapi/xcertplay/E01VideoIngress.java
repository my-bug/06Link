package com.shilapi.xcertplay;

import java.io.*;
import java.net.Socket;
import java.util.concurrent.ConcurrentHashMap;

/** Reads video bytes; protocol framing and frame handling belong to ScreenStream. */
public final class E01VideoIngress {
    private static final ConcurrentHashMap<Socket, VideoInput> ACTIVE = new ConcurrentHashMap<Socket, VideoInput>();
    private E01VideoIngress() { }
    public static InputStream wrap(Socket socket) throws IOException {
        return wrap(socket, 0);
    }
    /** Screen type comes from negotiated stream setup; zero means unknown. */
    public static InputStream wrap(Socket socket, int screenType) throws IOException {
        return wrap(socket, screenType, false);
    }

    public static InputStream wrap(Socket socket, int screenType, boolean wirelessTransport) throws IOException {
        synchronized (socket) {
            VideoInput existing = ACTIVE.get(socket);
            if (existing != null) return existing;
            InputStream source = socket.getInputStream();
            VideoInput stream = wirelessTransport && screenType == 110
                    ? new Direct(source) : new Ahead(source, 32 * 1024, screenType);
            try {
                stream.evidence.opened();
                stream.start();
                ACTIVE.put(socket, stream);
                return stream;
            } catch (RuntimeException error) {
                stream.close();
                throw error;
            }
        }
    }

    /** Mark the existing parser's next readFully as a header. Only the consumer uses these fields. */
    public static void beginHeader(InputStream input, int length) {
        if (!(input instanceof VideoInput)) return;
        VideoInput video = (VideoInput) input;
        if (!video.mainScreen) return;
        video.headerBytesLeft = length;
        video.headerFirstNs = 0;
        video.headerCompleteNs = 0;
    }

    /** Complete protocol message, before decryption; never pass media contents. */
    public static void message(InputStream input, int type, long senderPts, int bodyLength) {
        if (!(input instanceof VideoInput)) return;
        try {
            VideoInput video = (VideoInput) input;
            long now=System.nanoTime();
            video.evidence.packet(type, senderPts, bodyLength, now, video.headerFirstNs, video.headerCompleteNs);
            String line=video.evidence.reportIfDue(now);
            if(line!=null)android.util.Log.i("06Link-Ingress",line);
            String summary=video.evidence.takeSummary();
            if(summary!=null)E01VideoEvidence.ingress(summary);
            String timing=video.evidence.takeTimingSummary();
            if(timing!=null)E01VideoEvidence.ingress(timing);
        } catch(RuntimeException ignored) { /* Diagnostics must not interrupt media. */ }
    }
    public static void close(Closeable object) {
        if (object instanceof Socket) {
            synchronized (object) {
                VideoInput stream = ACTIVE.remove((Socket) object);
                if (stream != null) closeQuietly(stream);
                closeQuietly(object);
            }
        } else if (object != null) {
            closeQuietly(object);
        }
    }
    private static void closeQuietly(Closeable object) {
        try { object.close(); } catch (Exception ignored) { }
    }

    static abstract class VideoInput extends InputStream {
        final E01IngressEvidence evidence;
        private final boolean mainScreen;
        private int headerBytesLeft;
        private long headerFirstNs, headerCompleteNs;

        VideoInput(int screenType, boolean direct) {
            mainScreen = screenType == 110;
            evidence = new E01IngressEvidence(screenType, direct);
        }

        void start() { /* Direct input starts with the first parser read. */ }

        final void headerRead(int offset, int bytes) {
            if (headerBytesLeft <= 0) return;
            headerBytesLeft -= bytes;
            if ((offset == 0 || headerBytesLeft == 0) && E01SwipeTiming.collecting()) {
                long now = System.nanoTime();
                if (offset == 0) headerFirstNs = now;
                if (headerBytesLeft == 0) headerCompleteNs = now;
            }
        }

        @Override public int read() throws IOException {
            byte[] single = new byte[1];
            return read(single, 0, 1) < 0 ? -1 : single[0] & 255;
        }
    }

    /** The ScreenStream parser is the sole socket reader for a wireless main screen. */
    static final class Direct extends VideoInput {
        private final InputStream source;
        private volatile boolean closed;

        Direct(InputStream source) {
            super(110, true);
            this.source = source;
        }

        @Override public int read(byte[] output, int offset, int length) throws IOException {
            if (output == null) throw new NullPointerException();
            if (offset < 0 || length < 0 || length > output.length - offset) throw new IndexOutOfBoundsException();
            if (length == 0) return 0;
            if (closed) throw new IOException("Video reader closed");
            long begin = System.nanoTime();
            int received = -2;
            try {
                int count = source.read(output, offset, length);
                if (count == 0) {
                    int value = source.read();
                    count = value < 0 ? -1 : 1;
                    if (count == 1) output[offset] = (byte) value;
                }
                received = count;
                if (received > 0) headerRead(offset, received);
                return received;
            } finally {
                evidence.sourceRead(begin, System.nanoTime(), received);
            }
        }

        @Override public int available() throws IOException { return source.available(); }

        @Override public synchronized void close() throws IOException {
            if (closed) return;
            closed = true;
            try {
                source.close();
            } finally {
                E01SwipeTiming.closed(evidence);
            }
        }
    }

    static final class Ahead extends VideoInput {
        private final InputStream source;
        private final byte[] ring;
        private final Thread worker;
        private int head, tail, count;
        private boolean closed, eof;
        private IOException failure;
        Ahead(InputStream source, int capacity) {
            this(source, capacity, 0);
        }
        Ahead(InputStream source, int capacity, int screenType) {
            super(screenType, false);
            if (source == null || capacity <= 0) throw new IllegalArgumentException();
            this.source = source;
            ring = new byte[capacity];
            worker = new Thread(new Runnable() { public void run() { pump(); } }, "06Link-video-read");
            worker.setDaemon(true);
        }
        @Override void start() { worker.start(); }
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
            headerRead(offset, copied);
            head = (head + copied) % ring.length;
            count -= copied;
            notifyAll();
            return copied;
        }
        @Override public synchronized int available() { return count; }
        @Override public void close() throws IOException {
            synchronized (this) {
                if (closed) return;
                closed = true;
                count = 0;
                notifyAll();
            }
            E01SwipeTiming.closed(evidence);
            worker.interrupt();
            source.close();
        }
        boolean terminated(long milliseconds) throws InterruptedException { worker.join(milliseconds); return !worker.isAlive(); }
    }
}
