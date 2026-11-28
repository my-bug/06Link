package com.shilapi.xcertplay;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

/** Runs against the actual reader and gesture diagnostics, with a controlled byte source. */
public final class WirelessDirectCheck {
    private static void check(boolean condition, String reason) {
        if (!condition) throw new AssertionError(reason);
    }

    private static Socket socket(final InputStream source) {
        return new Socket() {
            @Override public InputStream getInputStream() { return source; }
        };
    }

    private static final class Chunks extends ByteArrayInputStream {
        volatile Thread reader;
        int calls;
        Chunks(byte[] bytes) { super(bytes); }
        @Override public synchronized int read(byte[] out, int offset, int length) {
            reader = Thread.currentThread();
            // Return zero once, then deliberately split headers and large bodies.
            if (calls++ == 0) return 0;
            return super.read(out, offset, Math.min(length, 17));
        }
    }

    private static void routes() throws Exception {
        for (boolean wireless : new boolean[] {true, false}) {
            for (int type : new int[] {110, 111, 0, 112}) {
                Chunks source = new Chunks(new byte[] {0, 42});
                Socket socket = socket(source);
                try {
                    InputStream in = E01VideoIngress.wrap(socket, type, wireless);
                    check(E01VideoIngress.wrap(socket, 110, !wireless) == in, "repeat wrap changed the active reader");
                    check(in.read() == 0 && in.read() == 42 && in.read() == -1, "route lost bytes or EOF");
                    boolean direct = wireless && type == 110;
                    check((source.reader == Thread.currentThread()) == direct, "unexpected reader for type " + type + " wireless=" + wireless);
                    if (!direct) check("06Link-video-read".equals(source.reader.getName()), "legacy reader changed");
                } finally {
                    E01VideoIngress.close(socket);
                }
            }
        }
    }

    private static void frames() throws Exception {
        final int headerSize = 128;
        int[] lengths = {0, 1, 32 * 1024, 65539};
        int size = headerSize * lengths.length;
        for (int length : lengths) size += length;
        byte[] wire = new byte[size];
        new Random(61081).nextBytes(wire);
        Chunks source = new Chunks(wire);
        Socket socket = socket(source);
        try {
            InputStream in = E01VideoIngress.wrap(socket, 110, true);
            DataInputStream parser = new DataInputStream(in);
            int cursor = 0;
            for (int length : lengths) {
                E01VideoIngress.beginHeader(in, headerSize);
                byte[] header = new byte[headerSize];
                parser.readFully(header);
                check(Arrays.equals(header, Arrays.copyOfRange(wire, cursor, cursor + headerSize)), "split header crossed frame boundary");
                cursor += headerSize;
                byte[] body = new byte[length + 2];
                body[0] = 12;
                body[length + 1] = 34;
                parser.readFully(body, 1, length);
                check(body[0] == 12 && body[length + 1] == 34, "overwrote output outside requested range");
                check(Arrays.equals(Arrays.copyOfRange(body, 1, length + 1), Arrays.copyOfRange(wire, cursor, cursor + length)), "split frame body changed");
                cursor += length;
                E01VideoIngress.message(in, 0, cursor, length);
            }
            check(in.read(wire, wire.length, 0) == 0 && in.read() == -1 && in.read() == -1, "end of stream or zero-length read changed");
            try {
                in.read(wire, 1, wire.length);
                throw new AssertionError("invalid byte range accepted");
            } catch (IndexOutOfBoundsException expected) { }
        } finally {
            E01VideoIngress.close(socket);
        }
        for (int partial : new int[] {0, 33, 128, 135}) {
            byte[] wirePrefix = Arrays.copyOf(wire, partial);
            Socket truncated = socket(new Chunks(wirePrefix));
            try {
                DataInputStream parser = new DataInputStream(E01VideoIngress.wrap(truncated, 110, true));
                parser.readFully(new byte[headerSize]);
                parser.readFully(new byte[8]);
                throw new AssertionError("incomplete header or body was accepted");
            } catch (EOFException expected) {
                // Covers a zero-result read followed by immediate EOF as well.
            } finally {
                E01VideoIngress.close(truncated);
            }
        }
    }

    private static void diagnostics() throws Exception {
        E01SwipeTiming.begin(WirelessDirectCheck.class, E01VideoEvidence.identity(), new E01SwipeTiming.Sink() {
            public boolean schedule(Runnable callback, long delay) { return true; }
            public long elapsedMs() { return 0; }
            public void write(String text) { }
        });
        Socket socket = socket(new Chunks(new byte[64]));
        try {
            InputStream in = E01VideoIngress.wrap(socket, 110, true);
            check(E01SwipeTiming.start(System.nanoTime()) != 0, "wireless main screen did not register for swipe diagnostics");
            E01VideoIngress.beginHeader(in, 4);
            byte[] header = new byte[4];
            long start = System.nanoTime();
            check(in.read(header) == 1, "zero-result fallback must consume one byte");
            long midpoint = System.nanoTime();
            check(in.read(header, 1, 3) == 3, "header suffix length");
            long headerEnd = System.nanoTime();
            check(in.read() == 0, "body single byte");
            E01VideoIngress.message(in, 0, 11, 1);
            check(E01SmoothVideo.firstHeader >= start && E01SmoothVideo.firstHeader <= midpoint
                    && E01SmoothVideo.completeHeader >= midpoint && E01SmoothVideo.completeHeader <= headerEnd,
                    "first frame lost its header timestamps or included body read time");
            E01IngressEvidence evidence = (E01IngressEvidence) E01SmoothVideo.lastSource;
            check(evidence != null, "main-screen packet missing from swipe diagnostics");
            long now = System.nanoTime();
            evidence.reportIfDue(now + TimeUnit.SECONDS.toNanos(61));
            String summary = evidence.takeSummary();
            check(summary.contains("frames=1") && summary.contains("bytes=5 ") && summary.contains("readMode=direct")
                    && summary.endsWith("screen=110"), "missing direct-mode first frame summary: " + summary);
        } finally {
            E01VideoIngress.close(socket);
        }
        check(!E01SwipeTiming.collecting(), "closed reader left stale gesture sample active");
    }

    private static void errorsAndClose() throws Exception {
        IOException original = new IOException("socket read failure");
        Socket bad = socket(new InputStream() {
            @Override public int read() throws IOException { throw original; }
        });
        try {
            E01VideoIngress.wrap(bad, 110, true).read();
            throw new AssertionError("socket error became EOF");
        } catch (IOException failure) {
            check(failure == original, "original socket error was lost");
        } finally {
            E01VideoIngress.close(bad);
        }

        CountDownLatch entered = new CountDownLatch(1), closed = new CountDownLatch(1);
        Socket socket = socket(new InputStream() {
            @Override public int read() throws IOException {
                entered.countDown();
                try {
                    check(closed.await(3, TimeUnit.SECONDS), "close could not enter while read was blocked");
                } catch (InterruptedException error) {
                    throw new IOException(error);
                }
                throw new IOException("closed");
            }
            @Override public void close() { closed.countDown(); }
        });
        InputStream in = E01VideoIngress.wrap(socket, 110, true);
        FutureTask<Boolean> pending = new FutureTask<>(() -> {
            try { in.read(); return false; }
            catch (IOException error) { return true; }
        });
        Thread parser = new Thread(pending);
        parser.setDaemon(true);
        parser.start();
        try {
            check(entered.await(2, TimeUnit.SECONDS), "reader never entered socket");
            E01VideoIngress.close(socket);
            check(pending.get(2, TimeUnit.SECONDS), "close failed to release blocked parser");
            E01VideoIngress.close(socket);
        } finally {
            closed.countDown();
        }
    }

    public static void main(String[] args) throws Exception {
        routes();
        frames();
        diagnostics();
        errorsAndClose();
        System.out.println("PASS wireless primary direct reader selection, framing, diagnostics, EOF, socket errors and concurrent close");
    }
}
