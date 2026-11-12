package com.shilapi.xcertplay;

import android.media.MediaCodec;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.IdentityHashMap;
import java.util.Map;

/** One output owner per main-screen codec; the existing worker owns input and recovery. */
public final class E01VideoOutput {
    private static final Map<MediaCodec, Session> SESSIONS = new IdentityHashMap<MediaCodec, Session>();
    private static final ThreadLocal<Session> CURRENT = new ThreadLocal<Session>();

    private static final class Session implements Runnable {
        final Object owner;
        final MediaCodec codec;
        final Method drain;
        final Field running;
        final Thread thread;
        final MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();
        volatile boolean stopping;
        volatile RuntimeException failure;
        boolean done, deferredRelease;

        Session(Object owner, MediaCodec codec) throws ReflectiveOperationException {
            this.owner = owner;
            this.codec = codec;
            drain = owner.getClass().getDeclaredMethod("drainOutput", MediaCodec.class);
            drain.setAccessible(true);
            running = owner.getClass().getDeclaredField("running");
            running.setAccessible(true);
            thread = new Thread(this, "06Link-video-output");
            thread.setDaemon(true);
        }

        public void run() {
            CURRENT.set(this);
            try {
                try { android.os.Process.setThreadPriority(android.os.Process.THREAD_PRIORITY_DISPLAY); }
                catch (RuntimeException ignored) { }
                while (!stopping && running.getBoolean(owner)) {
                    // Reuse the original format, first-picture and rendered-counter callbacks.
                    // VideoStats is synchronized; FirstPictureCounters uses volatile/atomic fields.
                    drain.invoke(owner, codec);
                }
            } catch (Exception error) {
                Throwable cause = error instanceof InvocationTargetException ? error.getCause() : error;
                if (!stopping) {
                    failure = cause instanceof RuntimeException
                        ? (RuntimeException) cause : new IllegalStateException("Video output failed", cause);
                    E01SmoothVideo.configureFailed(codec);
                }
            } finally {
                CURRENT.remove();
                boolean release;
                synchronized (this) {
                    done = true;
                    release = deferredRelease;
                    notifyAll();
                }
                if (release) finishRelease(this);
            }
        }
    }

    /** Called at the entry of the original drain method, before its shared BufferInfo is touched. */
    public static boolean intercept(Object owner, MediaCodec codec) {
        Session current = CURRENT.get();
        if (current != null && current.codec == codec && current.owner == owner) return false;
        if (!E01SmoothVideo.dedicated(codec)) return false;
        Session session;
        synchronized (SESSIONS) {
            session = SESSIONS.get(codec);
            if (session == null) {
                try { session = new Session(owner, codec); }
                catch (ReflectiveOperationException error) { throw new IllegalStateException("Video output binding failed", error); }
                SESSIONS.put(codec, session);
                try { session.thread.start(); }
                catch (RuntimeException error) { SESSIONS.remove(codec); throw error; }
            }
        }
        if (session.failure != null) throw session.failure;
        return true;
    }

    public static boolean active(MediaCodec codec) {
        Session current = CURRENT.get();
        return current == null || (current.codec == codec && !current.stopping);
    }

    public static MediaCodec.BufferInfo info(MediaCodec codec) {
        Session current = CURRENT.get();
        return current != null && current.codec == codec ? current.info : null;
    }

    static long timeoutUs(MediaCodec codec) {
        Session current = CURRENT.get();
        return current != null && current.codec == codec && !current.stopping ? 10000L : 0L;
    }

    /** Called only after the input worker has unpublished its old decoder. */
    public static void release(MediaCodec codec) {
        // Release a native display-clock lease before potentially slow driver cleanup.
        // GL codec/surface references still retire only after the output owner exits.
        E01SmoothVideo.stopping(codec);
        Session session;
        synchronized (SESSIONS) { session = SESSIONS.get(codec); }
        if (session == null) { releaseCodec(codec); return; }
        session.stopping = true;
        boolean interrupted = false;
        long deadline = System.nanoTime() + 500000000L;
        boolean deferred;
        synchronized (session) {
            while (!session.done) {
                long remaining = deadline - System.nanoTime();
                if (remaining <= 0) break;
                try { session.wait(Math.max(1L, remaining / 1000000L)); }
                catch (InterruptedException error) { interrupted = true; }
            }
            deferred = !session.done;
            if (deferred) session.deferredRelease = true;
        }
        // A slow native call must never race codec.stop/release. Its output owner cleans up
        // when the call returns, while the input worker can process the next session.
        if (!deferred) finishRelease(session);
        else android.util.Log.w("06Link-video", "Output exit delayed; codec cleanup stays with output owner");
        if (interrupted) Thread.currentThread().interrupt();
    }

    private static void finishRelease(Session session) {
        releaseCodec(session.codec);
        synchronized (SESSIONS) {
            if (SESSIONS.get(session.codec) == session) SESSIONS.remove(session.codec);
        }
    }

    private static void releaseCodec(MediaCodec codec) {
        try {
            try { codec.stop(); } catch (Exception ignored) { }
            try { codec.release(); } catch (Exception ignored) { }
        } finally {
            // The intermediate Surface must outlive its native codec producer.
            E01SmoothVideo.forget(codec);
        }
    }

    private E01VideoOutput() { }
}
