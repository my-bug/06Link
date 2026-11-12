package com.shilapi.xcertplay;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/** Passive, bounded metadata only. Never owns packet bytes and never performs I/O. */
public final class E01GpsLinkProbe {
    private static final Object LOCK = new Object();
    private static final int MAX_MESSAGES = 32, MAX_FRAGMENTS = 64, MAX_SESSIONS = 8;
    private static final long TTL_NANOS = 30000000000L;
    private static final ArrayList<Message> MESSAGES = new ArrayList<Message>();
    private static final ArrayList<Session> SESSIONS = new ArrayList<Session>();
    private static final ThreadLocal<Message> CSM = new ThreadLocal<Message>();
    private static final ThreadLocal<Fragment> DRAIN = new ThreadLocal<Fragment>();
    private static long nextId;
    private static final ArrayList<Channel> CHANNELS = new ArrayList<Channel>();
    private static final class Channel {
        final WeakReference<Object> channel;
        final boolean tcp;
        Channel(Object channel, Object stream) {
            this.channel = new WeakReference<Object>(channel);
            String type = stream == null ? "" : stream.getClass().getName();
            tcp = type.endsWith("Iap2UsbMuxTcpConnection") || type.endsWith("AirPlayIapTunnelStream")
                || type.endsWith("CarkitServiceStream") || type.contains("$tracedCarkit$");
        }
    }
    public static void channel(Object channel, Object stream) {
        try { synchronized (LOCK) {
            for (Iterator<Channel> i = CHANNELS.iterator(); i.hasNext();)
                if (i.next().channel.get() == null) i.remove();
            if (CHANNELS.size() >= MAX_SESSIONS) CHANNELS.remove(0);
            CHANNELS.add(new Channel(channel, stream));
        } } catch (Throwable ignored) { }
    }
    private static boolean tcp(Object channel) {
        for (Channel c : CHANNELS) if (c.channel.get() == channel) return c.tcp;
        return false;
    }

    private E01GpsLinkProbe() { }
    private static final class Session {
        final WeakReference<Object> engine;
        final long[] serialBySequence = new long[256];
        long serial, acceptedAck = -1, ackLimit = -1;
        boolean closed;
        Session(Object engine) {
            this.engine = new WeakReference<Object>(engine);
            java.util.Arrays.fill(serialBySequence, -1);
        }
    }
    private static final class Message {
        final long id = ++nextId, created = System.nanoTime(), generation = E01GpsDiagnostic.generation();
        final boolean hasPosition, tcp;
        final WeakReference<Object> channel;
        final Fragment[] fragments;
        int queued, acked;
        boolean sealed, sent, finished;
        Message(Object channel, int count, boolean hasPosition) {
            this.hasPosition = hasPosition; this.tcp = tcp(channel);
            this.channel = new WeakReference<Object>(channel);
            fragments = new Fragment[count];
        }
    }
    private static final class Fragment {
        final Message message;
        WeakReference<Object> command, packet;
        Session session;
        long serial = -1;
        int sequence = -1;
        boolean sent, acked;
        Fragment(Message message, Object command) {
            this.message = message;
            this.command = new WeakReference<Object>(command);
        }
    }
    private static boolean collecting() {
        if (E01GpsDiagnostic.isCollecting()) return true;
        synchronized (LOCK) {
            for (Message message : MESSAGES) message.finished = true;
            MESSAGES.clear(); SESSIONS.clear();
        }
        CSM.remove(); DRAIN.remove();
        return false;
    }
    private static void event(String kind, Message message, int seq) {
        if (message.generation == E01GpsDiagnostic.generation() && E01GpsDiagnostic.isCollecting())
            E01GpsDiagnostic.linkEvent(kind, message.generation, message.id, message.fragments.length, message.acked, seq);
    }
    private static void finish(Message message, String reason) {
        if (message.finished) return;
        message.finished = true;
        event(reason, message, -1);
    }
    private static void sweep() {
        long now = System.nanoTime();
        for (Iterator<Message> i = MESSAGES.iterator(); i.hasNext();) {
            Message m = i.next();
            if (m.generation != E01GpsDiagnostic.generation()) m.finished = true;
            if (!m.finished && (m.channel.get() == null || now - m.created > TTL_NANOS))
                finish(m, "link_tracking_lost");
            if (m.finished) i.remove();
        }
        for (Iterator<Session> i = SESSIONS.iterator(); i.hasNext();) {
            Session s = i.next();
            if (s.closed || s.engine.get() == null) i.remove();
        }
    }
    private static Session session(Object engine, boolean create) {
        for (Session s : SESSIONS) if (s.engine.get() == engine) return s;
        if (!create) return null;
        if (SESSIONS.size() >= MAX_SESSIONS) {
            Session old = SESSIONS.remove(0);
            old.closed = true;
            for (Message m : MESSAGES) for (Fragment f : m.fragments)
                if (f != null && f.session == old) finish(m, "link_tracking_lost");
        }
        Session s = new Session(engine); SESSIONS.add(s); return s;
    }
    private static Fragment fragment(Object identity, boolean packet) {
        if (identity == null) return null;
        for (Message m : MESSAGES) if (!m.finished && m.generation == E01GpsDiagnostic.generation()) for (Fragment f : m.fragments) {
            if (f == null) continue;
            WeakReference<Object> key = packet ? f.packet : f.command;
            if (key != null && key.get() == identity) return f;
        }
        return null;
    }
    private static void complete(Message m, int seq) {
        if (!m.finished && m.sealed && m.queued == m.fragments.length && m.acked == m.fragments.length)
            finishConfirmed(m, seq);
    }
    private static void finishConfirmed(Message m, int seq) {
        m.finished = true; event("link_acked", m, seq);
        if (m.hasPosition) event("link_position_acked", m, seq);
    }

    // The caller passes only CSM message type and fragment count, never the frame or payload.
    public static void begin(Object channel, int messageType, int count, boolean hasPosition) {
        try {
            if (!collecting()) return;
            synchronized (LOCK) {
                Message previous = CSM.get(); CSM.remove();
                if (previous != null && !previous.finished) finish(previous, "link_tracking_lost");
                if (messageType != 0xfffb) return;
                sweep();
                if (count < 1 || count > MAX_FRAGMENTS) {
                    E01GpsDiagnostic.linkEvent("link_tracking_lost", E01GpsDiagnostic.generation(), ++nextId, count, 0, -1);
                    return;
                }
                if (MESSAGES.size() >= MAX_MESSAGES) finish(MESSAGES.remove(0), "link_tracking_lost");
                Message m = new Message(channel, count, hasPosition);
                MESSAGES.add(m); CSM.set(m); event("link_message", m, -1);
                if (m.tcp) event("link_tcp_message", m, -1);
            }
        } catch (Throwable ignored) { }
    }
    public static void queued(Object channel, Object command) {
        try {
            if (!collecting()) return;
            synchronized (LOCK) {
                Message m = CSM.get();
                if (m == null || m.finished) return;
                if (m.channel.get() != channel || m.queued >= m.fragments.length) {
                    finish(m, "link_tracking_lost"); return;
                }
                m.fragments[m.queued++] = new Fragment(m, command);
            }
        } catch (Throwable ignored) { }
    }
    public static void end(boolean success) {
        try {
            synchronized (LOCK) {
                Message m = CSM.get(); CSM.remove();
                if (m == null || m.finished) return;
                if (!success) { finish(m, "link_aborted"); return; }
                if (m.queued != m.fragments.length) { finish(m, "link_tracking_lost"); return; }
                m.sealed = true; event("link_queued", m, -1); complete(m, -1);
            }
        } catch (Throwable ignored) { }
    }
    public static void drain(Object engine, Object command) {
        try {
            DRAIN.remove();
            if (!collecting()) return;
            synchronized (LOCK) {
                sweep();
                Fragment f = fragment(command, false);
                if (f == null) return;
                f.command = null; f.session = session(engine, true); DRAIN.set(f);
            }
        } catch (Throwable ignored) { }
    }
    public static void drained() { try { DRAIN.remove(); } catch (Throwable ignored) { } }
    public static void packet(Object engine, Object packet) {
        try {
            synchronized (LOCK) {
                Fragment f = DRAIN.get(); DRAIN.remove();
                if (f == null || f.message.finished) return;
                if (f.session == null || f.session.closed || f.session.engine.get() != engine) {
                    finish(f.message, "link_tracking_lost"); return;
                }
                f.packet = new WeakReference<Object>(packet);
            }
        } catch (Throwable ignored) { }
    }
    public static void sent(Object engine, Object packet, int sequence, int maxRetransmissions) {
        try {
            if (!collecting()) return;
            synchronized (LOCK) {
                Session s = session(engine, false);
                if (s == null || s.closed) return;
                long serial = ++s.serial;
                s.serialBySequence[sequence & 255] = serial;
                Fragment f = fragment(packet, true);
                if (f == null || f.sent || f.session != s) return;
                f.sent = true; f.sequence = sequence & 255; f.serial = serial;
                if (!f.message.sent) {
                    f.message.sent = true; event("link_sent", f.message, f.sequence);
                }
                // The engine locally advances lastSentAcknowledged in this mode. This is NOT a peer ACK.
                if (maxRetransmissions <= 0) {
                    finish(f.message, "link_no_ack");
                    if (f.message.tcp) event("link_tcp_no_ack", f.message, -1);
                }
            }
        } catch (Throwable ignored) { }
    }
    public static void acknowledgement(Object engine, int sequence) {
        try {
            if (!collecting()) return;
            synchronized (LOCK) {
                sweep();
                Session s = session(engine, false);
                if (s == null || s.closed) return;
                long candidate = s.serialBySequence[sequence & 255];
                s.ackLimit = candidate >= s.acceptedAck ? candidate : -1;
                if (s.ackLimit >= 0) s.acceptedAck = s.ackLimit;
            }
        } catch (Throwable ignored) { }
    }
    public static void removed(Object engine, Object packet) {
        try {
            if (!collecting()) return;
            synchronized (LOCK) {
                Fragment f = fragment(packet, true);
                Session s = session(engine, false);
                if (f == null || f.acked || !f.sent || s == null || s.closed || f.session != s) return;
                if (f.serial > s.ackLimit || s.ackLimit < 0) {
                    finish(f.message, "link_tracking_lost"); return;
                }
                f.acked = true; f.packet = null; f.message.acked++;
                if (f.message.acked < f.message.fragments.length)
                    event("link_fragment_ack", f.message, f.sequence);
                complete(f.message, f.sequence);
            }
        } catch (Throwable ignored) { }
    }
    public static void retry(Object engine, Object packet) {
        try {
            if (!collecting()) return;
            synchronized (LOCK) {
                Fragment f = fragment(packet, true);
                if (f != null && f.session.engine.get() == engine && !f.session.closed)
                    event("link_retry", f.message, f.sequence);
            }
        } catch (Throwable ignored) { }
    }
    public static void close(Object channelOrEngine) {
        try {
            synchronized (LOCK) {
                Session s = session(channelOrEngine, false);
                if (s != null) s.closed = true;
                for (Message m : MESSAGES) {
                    if (m.channel.get() == channelOrEngine) finish(m, "link_aborted");
                    else if (s != null) for (Fragment f : m.fragments)
                        if (f != null && f.session == s) finish(m, "link_aborted");
                }
                sweep();
            }
        } catch (Throwable ignored) { }
    }
}
