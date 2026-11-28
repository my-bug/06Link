package com.shilapi.xcertplay;

import java.lang.ref.WeakReference;

/** First main-screen pictures observed after a sampled gesture. Does not infer their contents. */
public final class E01SwipeTiming {
    static final int FRAME_COUNT = 4;
    static final long WINDOW_MS = 1500;
    private static final int MAX_WINDOWS = 6;
    private static final long COOLDOWN_NS = 5000000000L;
    private static volatile Window active;
    private static WeakReference<Object> owner = new WeakReference<Object>(null);
    private static Sink sink;
    private static String session;
    private static Object reader;
    private static long nextToken, lastStart;
    private static int samples;

    interface Sink {
        boolean schedule(Runnable finish, long delayMs);
        long elapsedMs();
        void write(String text);
    }

    static synchronized void begin(Object host, String identity, Sink writer) {
        active = null;
        reader = null;
        owner = new WeakReference<Object>(host);
        session = identity;
        sink = writer;
        lastStart = 0;
        samples = 0;
    }

    static synchronized void opened(Object source, String identity) {
        if (identity.equals(session)) { reader = source; active = null; }
    }

    static synchronized void closed(Object source) {
        if (source == reader) { reader = null; active = null; }
    }

    static synchronized void hidden(Object host) {
        if (owner.get() == host) active = null;
    }

    /** Called once on the first local MOVE. All frame and touch times use System.nanoTime(). */
    public static synchronized long start(long firstMoveNs) {
        long now = System.nanoTime();
        if (sink == null || reader == null || owner.get() == null || active != null || samples >= MAX_WINDOWS
                || firstMoveNs <= 0 || firstMoveNs > now || now - firstMoveNs >= WINDOW_MS * 1000000L
                || (lastStart != 0 && now - lastStart < COOLDOWN_NS)) return 0;
        Window window = new Window(++nextToken, firstMoveNs, sink.elapsedMs());
        active = window;
        long delayMs = WINDOW_MS - (now - firstMoveNs) / 1000000L;
        if (!sink.schedule(window, delayMs)) { active = null; return 0; }
        lastStart = now;
        samples++;
        return window.token;
    }

    /** Only the writer of a successfully sent MOVE carrying this token may report it. */
    public static synchronized void sent(long token, long begin, long end) {
        Window w = active;
        if (w != null && w.token == token && w.sentEnd == 0 && w.inWindow(begin)
                && end >= begin && w.inWindow(end)) {
            w.sentBegin = begin;
            w.sentEnd = end;
        }
    }

    /** Bind the first tagged MOVE to the sequence on its actual event connection before write. */
    public static synchronized void command(long token, Object eventConnection, int sequence) {
        Window w = active;
        if (w == null || w.token != token || eventConnection == null || w.eventConnection != null || w.sentEnd != 0 || w.replyNs != 0) return;
        w.commandSequence = sequence;
        w.eventConnection = eventConnection;
    }

    public static boolean awaitingReply(Object eventConnection) {
        Window w = active;
        return w != null && eventConnection != null && w.eventConnection == eventConnection;
    }

    /** The event reader can observe a reply before the writer reports a successful flush. */
    public static synchronized void reply(Object eventConnection, int sequence) {
        Window w = active;
        if (w == null || eventConnection == null || w.eventConnection != eventConnection || w.commandSequence != sequence) return;
        long now = System.nanoTime();
        if (w.inWindow(now)) {
            w.replyNs = now;
            w.eventConnection = null;
        }
    }

    /** A multi-touch gesture or ACTION_CANCEL invalidates its single-finger sample. */
    public static synchronized void cancel(long token) {
        if (active != null && active.token == token) active = null;
    }

    static boolean collecting() { return active != null; }

    static void received(Object source, Object stamp, long at, long preceding, long previousSender, long sender) {
        received(source, stamp, at, preceding, previousSender, sender, 0, 0);
    }

    static synchronized void received(Object source, Object stamp, long at, long preceding, long previousSender,
                                      long sender, long headerFirst, long headerComplete) {
        Window w = active;
        if (w == null || source != reader || !w.inWindow(at) || w.count == FRAME_COUNT || stamp == null) return;
        if (w.count == 0 && preceding > 0 && at >= preceding) {
            w.precedingGap = at - preceding;
            w.firstSenderGapMs = senderGapMs(previousSender, sender);
        }
        Frame f = w.frames[w.count++];
        f.stamp = stamp;
        if (w.inWindow(headerComplete) && headerComplete <= at) {
            f.headerComplete = headerComplete;
            if (w.inWindow(headerFirst) && headerFirst <= headerComplete) f.headerFirst = headerFirst;
        }
        f.receive = at;
        f.sender = sender;
    }

    /** Each callback may carry only the stages completed by this exact frame so far. */
    static synchronized void decoderStages(Object stamp, long enqueuedNs, long takenNs, long slotNs, long capWaitNs) {
        Window w = active;
        if (w == null || stamp == null) return;
        for (int i = 0; i < w.count; i++) {
            Frame f = w.frames[i];
            if (f.stamp != stamp) continue;
            if (f.enqueued == 0 && w.inWindow(enqueuedNs) && enqueuedNs >= f.receive
                    && (f.taken == 0 || enqueuedNs <= f.taken)) f.enqueued = enqueuedNs;
            if (f.taken == 0 && w.inWindow(takenNs) && takenNs >= Math.max(f.enqueued, f.receive)
                    && (f.slot == 0 || takenNs <= f.slot)) f.taken = takenNs;
            if (f.slot == 0 && w.inWindow(slotNs) && slotNs >= Math.max(f.taken, f.receive)) {
                f.slot = slotNs;
                if (f.taken > 0 && capWaitNs >= 0 && capWaitNs <= slotNs - f.taken) f.capWaitNs = capWaitNs;
            }
            return;
        }
    }

    static synchronized void prepared(Object stamp, Object codec, long pts, long at) {
        Window w = active;
        if (w == null || codec == null || stamp == null || !w.inWindow(at)) return;
        for (int i = 0; i < w.count; i++) {
            Frame f = w.frames[i];
            if (f.stamp == stamp && f.prepare == 0 && at >= f.receive) {
                f.codec = codec; f.pts = pts; f.prepare = at;
                return;
            }
        }
    }

    static synchronized void decoded(Object codec, long pts, long at) {
        Frame f = frame(codec, pts, at);
        if (f != null && f.decode == 0) f.decode = at;
    }

    static void submitted(Object codec, long pts, long at, long requestedAt) {
        submitted(codec, pts, at, requestedAt, 0, 0);
    }

    /** Compares Surface reservations for this picture. Neither timestamp measures scanout. */
    static synchronized void submitted(Object codec, long pts, long at, long requestedAt, long normalAt, long steadyAt) {
        Frame f = frame(codec, pts, at);
        if (f != null && f.decode > 0 && at >= f.decode && f.submit == 0) {
            f.submit = at;
            f.displayRequest = requestedAt;
            if (requestedAt > 0 && normalAt > 0) {
                f.advanceMs = Math.max(0L, normalAt - requestedAt) / 1000000L;
                if (steadyAt > 0) f.swipeAdvanceMs = Math.max(0L, steadyAt - requestedAt) / 1000000L;
            }
        }
    }

    private static Frame frame(Object codec, long pts, long at) {
        Window w = active;
        if (w != null && codec != null && w.inWindow(at)) {
            for (int i = 0; i < w.count; i++) {
                Frame f = w.frames[i];
                if (f.codec == codec && f.pts == pts && at >= f.prepare) return f;
            }
        }
        return null;
    }

    private static long senderGapMs(long previous, long current) {
        return previous > 0 && current >= previous ? (current - previous) / 1000000L : -1;
    }

    private static final class Frame {
        Object stamp, codec;
        long pts, sender, headerFirst, headerComplete, receive, prepare, decode, submit, displayRequest;
        long enqueued, taken, slot;
        long capWaitNs = -1, advanceMs = -1, swipeAdvanceMs = -1;
    }

    private static final class Window implements Runnable {
        final long token, move, elapsed;
        final Frame[] frames = new Frame[FRAME_COUNT];
        volatile Object eventConnection;
        int commandSequence;
        long replyNs;
        long sentBegin, sentEnd, precedingGap = -1, firstSenderGapMs = -1;
        int count;
        Window(long token, long move, long elapsed) {
            this.token = token; this.move = move; this.elapsed = elapsed;
            for (int i = 0; i < frames.length; i++) frames[i] = new Frame();
        }
        boolean inWindow(long at) { return at >= move && at - move <= WINDOW_MS * 1000000L; }
        long millis(long at) { return at >= move ? (at - move) / 1000000L : -1; }
        String format() {
            StringBuilder text = new StringBuilder("起滑样本=").append(token)
                    .append(" 主屏110 相对首个移动毫秒 写入开始/完成=").append(millis(sentBegin)).append('/').append(millis(sentEnd))
                    .append(" 首帧距前帧毫秒=").append(precedingGap < 0 ? -1 : precedingGap / 1000000L)
                    .append(" 手机首帧距前帧毫秒=").append(firstSenderGapMs)
                    .append(" 收到帧数(最多4)=").append(count)
                    .append(" 收包/送解码前/解码输出/提交显示/指定显示时间=");
            for (int i = 0; i < count; i++) {
                Frame f = frames[i];
                if (i != 0) text.append(',');
                text.append(millis(f.receive)).append('/').append(millis(f.prepare)).append('/')
                        .append(millis(f.decode)).append('/').append(millis(f.submit)).append('/').append(millis(f.displayRequest));
            }
            text.append(" 预约提前毫秒=");
            for (int i = 0; i < count; i++) {
                if (i != 0) text.append(',');
                text.append(frames[i].advanceMs);
            }
            text.append(" 其中起滑毫秒=");
            for (int i = 0; i < count; i++) {
                if (i != 0) text.append(',');
                text.append(frames[i].swipeAdvanceMs);
            }
            text.append(" 手机相邻帧毫秒=");
            for (int i = 1; i < count; i++) {
                if (i != 1) text.append(',');
                text.append(senderGapMs(frames[i - 1].sender, frames[i].sender));
            }
            return text.toString();
        }
        String detail() {
            StringBuilder text = new StringBuilder("起滑分段=").append(token)
                    .append(" 相对首次移动毫秒（未测=-1） 手机回执=").append(sentEnd > 0 ? millis(replyNs) : -1);
            text.append(" 读头首字节/头齐/帧齐=");
            for (int i = 0; i < count; i++) {
                Frame f = frames[i];
                if (i != 0) text.append(',');
                text.append(millis(f.headerFirst)).append('/').append(millis(f.headerComplete)).append('/').append(millis(f.receive));
            }
            text.append(" 入队/取出/取得解码槽=");
            for (int i = 0; i < count; i++) {
                Frame f = frames[i];
                if (i != 0) text.append(',');
                text.append(millis(f.enqueued)).append('/').append(millis(f.taken)).append('/').append(millis(f.slot));
            }
            text.append(" 其中等解码名额耗时毫秒=");
            for (int i = 0; i < count; i++) {
                if (i != 0) text.append(',');
                long wait = frames[i].capWaitNs;
                text.append(wait < 0 ? -1 : wait / 1000000L);
            }
            return text.toString();
        }
        public void run() {
            Sink writer;
            synchronized (E01SwipeTiming.class) {
                if (active != this) return;
                active = null;
                // Handler time pauses during suspend. Expired callbacks must not mix wake periods.
                if (sink.elapsedMs() - elapsed > WINDOW_MS + 1000 || owner.get() == null) return;
                writer = sink;
            }
            // No worker can add another observation once this window is detached.
            writer.write(format());
            writer.write(detail());
        }
    }
    private E01SwipeTiming() { }
}
