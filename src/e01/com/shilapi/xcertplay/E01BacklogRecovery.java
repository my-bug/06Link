package com.shilapi.xcertplay;

import com.shilapi.xcertplay.media.VideoJob;
import java.util.Iterator;

/** Java adaptation of DiPlay VideoBacklogRecovery at 615b32ce (GPL-3.0). */
public final class E01BacklogRecovery {
    public static final long NONE = Long.MIN_VALUE;
    private long start = NONE, initialSpan, last = NONE;
    private int initialFrames;
    public void reset() { start = last = NONE; initialSpan = 0; initialFrames = 0; }
    public boolean observe(long now, long received, int pending, long newest) {
        if (pending <= 0 || newest == NONE || received > now || newest > now
                || newest < received || (last != NONE && now < last)) {
            reset(); return false;
        }
        last = now;
        long age = now - received, span = newest - received;
        if (age <= 150000000L || span <= 50000000L) { reset(); return false; }
        if (age >= 1500000000L && span >= 100000000L) { reset(); return true; }
        if (age <= 250000000L || span < 100000000L) return false;
        if (start == NONE) { start = now; initialSpan = span; initialFrames = pending; return false; }
        boolean growing = span - initialSpan >= 100000000L || pending - initialFrames >= 4;
        if (now - start >= 750000000L && growing) { reset(); return true; }
        return false;
    }
    public static final class Snapshot {
        public final int pending; public final long newest;
        Snapshot(int n, long newest) { pending = n; this.newest = newest; }
    }
    public static Snapshot snapshot(Object lock, Iterable<?> jobs) {
        synchronized (lock) {
            int frames = 0; long newest = NONE;
            for (Object job : jobs) {
                if (!(job instanceof VideoJob.Frame)) break;
                long at = ((VideoJob.Frame) job).getReceivedNs();
                frames++; newest = newest == NONE ? at : Math.max(newest, at);
            }
            return new Snapshot(frames, newest);
        }
    }
    public static void discardChain(Object lock, Iterable<?> jobs) {
        synchronized (lock) {
            Iterator<?> iterator = jobs.iterator();
            while (iterator.hasNext()) {
                Object job = iterator.next();
                if (job instanceof VideoJob.Frame || job instanceof VideoJob.Resync) iterator.remove();
                else return;
            }
        }
    }
    public boolean check(Snapshot backlog, VideoJob.Frame frame) {
        return observe(System.nanoTime(), frame.getReceivedNs(), backlog.pending, backlog.newest);
    }
    public static boolean obsolete(long now, long received, Snapshot backlog) {
        return now >= received && now - received >= 1500000000L && backlog.pending > 0
            && backlog.newest != NONE && backlog.newest <= now && backlog.newest - received >= 100000000L;
    }
}
