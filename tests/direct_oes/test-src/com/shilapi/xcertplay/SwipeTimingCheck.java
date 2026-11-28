package com.shilapi.xcertplay;

public final class SwipeTimingCheck {
    static final class Log implements E01SwipeTiming.Sink {
        Runnable timer;
        String line, detail;
        long elapsed;
        public boolean schedule(Runnable r, long delay) { timer = r; return true; }
        public long elapsedMs() { return elapsed; }
        public void write(String text) {
            if (text.startsWith("起滑分段=")) detail = text;
            else line = text;
        }
    }
    static void check(boolean ok, String message) { if (!ok) throw new AssertionError(message); }
    static void renderer(boolean smooth, boolean direct) {
        android.app.Activity owner = new android.app.Activity();
        android.media.MediaCodec codec = new android.media.MediaCodec();
        if (smooth) {
            E01SmoothVideo.State state = new E01SmoothVideo.State(new E01SmoothVideo.Output(owner, 60, true));
            state.directCap4 = direct;
            state.modernOutput = !direct;
            E01SmoothVideo.STATES.put(codec, state);
        }
        Log log = new Log(); Object reader = new Object();
        E01SwipeTiming.begin(owner, "render", log); E01SwipeTiming.opened(reader, "render");
        long move = System.nanoTime() - 1000000L;
        check(E01SwipeTiming.start(move) != 0, "start render sample");
        E01SmoothVideo.packet(IntegrationCheck.header());
        long sender = E01PacingClock.senderNanos(IntegrationCheck.header());
        long previousSender = direct ? 0 : smooth ? sender + 1 : sender - 16000000L;
        E01SmoothVideo.swipeReceived(reader, move - 16000000L, previousSender);
        byte[] packed = new byte[]{0, 0, 0, 1, 101}, converted = packed.clone();
        E01SmoothVideo.stamp(packed); E01SmoothVideo.converted(packed, converted);
        long pts = E01SmoothVideo.presentation(new IntegrationCheck.Decoder(codec), converted);
        android.media.MediaCodec.BufferInfo info = new android.media.MediaCodec.BufferInfo();
        info.presentationTimeUs = pts;
        int index = E01SmoothVideo.take(codec, info);
        E01SmoothVideo.release(codec, index, true, info);
        log.timer.run();
        check(log.line.contains("手机首帧距前帧毫秒=" + (smooth ? -1 : 16) + " "),
                "valid, reversed and absent previous sender stamps");
        String stages = log.line.split("指定显示时间=")[1].split(" ")[0];
        String[] fields = stages.split("/");
        for (int i = 0; i < 4; ++i)
            check(Long.parseLong(fields[i]) >= 0, "render path must retain matching frame at stage " + i + ": " + stages);
        check((Long.parseLong(fields[4]) >= 0) == smooth, "only explicit render timestamps are reported");
        E01SmoothVideo.STATES.remove(codec);
    }

    static void immediateReservation() {
        android.app.Activity owner = new android.app.Activity();
        android.media.MediaCodec.BufferInfo info = new android.media.MediaCodec.BufferInfo();
        // Give release a valid target 15ms away. A busy JVM can miss that window,
        // so retry with a fresh codec only if the test thread itself was delayed.
        for (int attempt = 0; attempt < 5; attempt++) {
            android.media.MediaCodec codec = new android.media.MediaCodec();
            E01SmoothVideo.State state = new E01SmoothVideo.State(new E01SmoothVideo.Output(owner, 60, true));
            E01SmoothVideo.STATES.put(codec, state);
            long begin = System.nanoTime();
            long originalTarget = begin + 15000000L;
            long local = originalTarget - state.clock.delay();
            state.entries.put(info.presentationTimeUs,
                    new E01SmoothVideo.Entry(local, begin, begin, new E01SmoothVideo.Stamp(local, begin)));
            E01SmoothVideo.release(codec, 1, true, info);
            long end = System.nanoTime();
            E01SmoothVideo.STATES.remove(codec);
            if (end - begin >= 13000000L) continue;
            check(codec.timedReleases == 1 && codec.boolReleases == 0 && state.immediateTargets == 1
                            && codec.target >= begin && codec.target <= end,
                    "a valid reservation reduced to now has an explicit immediate deadline");
            return;
        }
        throw new AssertionError("could not exercise the 15ms reservation window");
    }

    static void reservations() {
        final long ms = 1000000L;
        Object host = new Object(), reader = new Object(), codec = new Object();
        Log log = new Log();
        E01SwipeTiming.begin(host, "reservations", log);
        E01SwipeTiming.opened(reader, "reservations");
        long move = System.nanoTime();
        check(E01SwipeTiming.start(move) != 0, "start reservation sample");
        for (int i = 0; i < 5; i++) {
            Object stamp = new Object();
            long at = move + (10 + 16*i)*ms;
            long target = at + 16*ms;
            E01SwipeTiming.received(reader, stamp, at, 0, 0, 0);
            E01SwipeTiming.prepared(stamp, codec, i, at + ms);
            E01SwipeTiming.decoded(codec, i, at + 2*ms);
            if (i == 2) {
                E01SwipeTiming.submitted(codec, i, at + 3*ms, target);
            } else if (i == 3) {
                E01SwipeTiming.submitted(codec, i, at + 3*ms, 0, target, target);
            } else {
                long normal = i == 1 ? target : target + 20*ms + ms/2;
                long steady = i == 1 ? target : target + 7*ms + ms/3;
                E01SwipeTiming.submitted(codec, i, at + 3*ms, target, normal, steady);
            }
            E01SwipeTiming.submitted(codec, i, at + 4*ms, target, target + 99*ms, target + 77*ms);
        }
        log.timer.run();
        check(log.line.contains(" 预约提前毫秒=20,0,-1,-1 其中起滑毫秒=7,0,-1,-1 ")
                        && ("2026-11-27 08:20:00 VIDEO timing run=ffffffffffffffff configured=wireless " + log.line).length() < 480,
                "first successful reservation wins, capped at four: " + log.line);
    }

    static void stageDetails() {
        final long ms = 1000000L;
        Log log = new Log();
        Object host = new Object(), reader = new Object(), event = new Object(), other = new Object();
        Object first = new Object(), second = new Object();
        E01SwipeTiming.begin(host, "detail", log);
        E01SwipeTiming.opened(reader, "detail");
        long move = System.nanoTime() - 25 * ms;
        long token = E01SwipeTiming.start(move);
        E01SwipeTiming.command(token + 1, other, 31);
        check(!E01SwipeTiming.awaitingReply(other), "ignore another gesture");
        E01SwipeTiming.command(token, event, 31);
        E01SwipeTiming.reply(other, 31);
        E01SwipeTiming.reply(event, 32);
        check(E01SwipeTiming.awaitingReply(event), "different connection or sequence cannot consume the response");
        E01SwipeTiming.reply(event, 31); // Reader wins the race with the writer completion callback.
        check(!E01SwipeTiming.awaitingReply(event), "one matching response per gesture");
        E01SwipeTiming.sent(token, move + ms, System.nanoTime());
        E01SwipeTiming.received(reader, first, move + 10*ms, 0, 0, 0, move + 4*ms, move + 6*ms);
        E01SwipeTiming.received(reader, second, move + 20*ms, 0, 0, 0, move - ms, move + 19*ms);
        E01SwipeTiming.decoderStages(other, move + 10*ms, move + 11*ms, move + 12*ms, ms);
        E01SwipeTiming.decoderStages(first, move + 11*ms, 0, 0, -1);
        E01SwipeTiming.decoderStages(first, 0, move + 13*ms, 0, -1);
        E01SwipeTiming.decoderStages(first, 0, 0, move + 17*ms, 2*ms);
        E01SwipeTiming.decoderStages(second, move + 21*ms, move + 12*ms, move + 1700*ms, -1);
        log.timer.run();
        String detail = log.detail;
        check(detail.matches(".*手机回执=[0-9]+ .*"), "early reply retained after successful write: " + detail);
        check(detail.contains("读头首字节/头齐/帧齐=4/6/10,-1/19/20"), "separate headers including an in-progress message");
        check(detail.contains("入队/取出/取得解码槽=11/13/17,21/-1/-1"), "partial and mismatched decode steps");
        check(detail.contains("其中等解码名额耗时毫秒=2,-1"), "cap duration reported separately");
        E01SwipeTiming.begin(host, "reconnect", log);
        E01SwipeTiming.opened(reader, "reconnect");
        token = E01SwipeTiming.start(System.nanoTime());
        E01SwipeTiming.command(token, other, 31);
        E01SwipeTiming.reply(event, 31); // Same sequence reused on another connection.
        check(E01SwipeTiming.awaitingReply(other), "late response from previous session ignored");
        E01SwipeTiming.reply(other, 31);
        log.timer.run(); // Local send failed, so no completed command to report.
        check(log.detail.contains("手机回执=-1 "), "unconfirmed write must stay unknown");
    }

    public static void main(String[] args) {
        stageDetails();
        immediateReservation();
        reservations();
        renderer(false, false); renderer(true, false); renderer(true, true);
        final long ms = 1000000;
        Object host = new Object(), reader = new Object(), other = new Object(), codec = new Object();
        Log log = new Log();
        E01SwipeTiming.begin(host, "one", log);
        E01SwipeTiming.opened(reader, "older");
        check(E01SwipeTiming.start(System.nanoTime()) == 0, "ignore stale reader");
        E01SwipeTiming.opened(reader, "one");
        long move = System.nanoTime(), token = E01SwipeTiming.start(move);
        check(token != 0 && E01SwipeTiming.start(move) == 0, "one active sample");
        E01SwipeTiming.sent(token + 1, move + ms, move + ms);
        E01SwipeTiming.sent(token, move + 3*ms, move + 4*ms);
        E01SwipeTiming.received(other, other, move + ms, 0, 0, 1);
        E01SwipeTiming.received(reader, other, move - ms, 0, 0, 1);
        Object[] frames = { new Object(), new Object(), new Object(), new Object(), new Object() };
        for (int i = 0; i < frames.length; i++)
            E01SwipeTiming.received(reader, frames[i], move + (5+16*i)*ms, move - 100*ms, 75*ms, (100+16*i)*ms);
        E01SwipeTiming.prepared(frames[0], codec, 90, move + 8*ms);
        E01SwipeTiming.decoded(other, 90, move + 9*ms);
        E01SwipeTiming.submitted(codec, 90, move + 9*ms, 0);
        E01SwipeTiming.decoded(codec, 90, move + 15*ms);
        E01SwipeTiming.submitted(codec, 90, move + 17*ms, move + 35*ms);
        E01SwipeTiming.prepared(frames[1], codec, 100, move + 25*ms);
        E01SwipeTiming.decoded(codec, 100, move + 1600*ms);
        log.timer.run();
        check(log.line.contains("=3/4") && log.line.contains("首帧距前帧毫秒=105 手机首帧距前帧毫秒=25")
                && log.line.contains("5/8/15/17/35,21/25/-1/-1/-1,37/-1/-1/-1/-1,53/-1/-1/-1/-1")
                && log.line.contains(" 预约提前毫秒=-1,-1,-1,-1 其中起滑毫秒=-1,-1,-1,-1 ") && log.line.endsWith("16,16,16") && log.line.length()<400, "matching and missing stages: "+log.line);
        check(E01SwipeTiming.start(System.nanoTime()) == 0, "cooldown");
        E01SwipeTiming.begin(host, "two", log); E01SwipeTiming.opened(reader, "two");
        E01SwipeTiming.start(System.nanoTime()); Runnable oldTimer = log.timer; log.line = null;
        E01SwipeTiming.closed(reader); E01SwipeTiming.begin(host, "three", log); E01SwipeTiming.opened(other, "three");
        check(E01SwipeTiming.start(System.nanoTime()) != 0, "session reset"); oldTimer.run();
        check(log.line == null && E01SwipeTiming.collecting(), "old timer cannot consume new sample");
        E01SwipeTiming.hidden(other); check(E01SwipeTiming.collecting(), "unrelated activity");
        E01SwipeTiming.hidden(host); log.timer.run(); check(log.line == null, "hide cancels");
        E01SwipeTiming.begin(host, "four", log); E01SwipeTiming.opened(other, "four");
        E01SwipeTiming.start(System.nanoTime()); log.elapsed += 60000; log.timer.run();
        check(log.line == null && !E01SwipeTiming.collecting(), "discard after suspend");
        E01SwipeTiming.begin(host, "five", log); E01SwipeTiming.opened(other, "five");
        E01SwipeTiming.start(System.nanoTime()); log.timer.run();
        check(log.line.contains("写入开始/完成=-1/-1") && log.line.contains("手机首帧距前帧毫秒=-1 收到帧数(最多4)=0"), "no observed frame or completed write");
        E01SwipeTiming.begin(host, "six", log); E01SwipeTiming.opened(reader, "six"); log.line = null;
        move = System.nanoTime(); token = E01SwipeTiming.start(move);
        E01SwipeTiming.sent(token, move + ms, move + 2*ms);
        E01SwipeTiming.cancel(token - 1); check(E01SwipeTiming.collecting(), "stale cancel ignored");
        E01SwipeTiming.cancel(token); log.timer.run();
        check(log.line == null && !E01SwipeTiming.collecting(), "transition to multi-touch cancels even after write");
        System.out.println("PASS bounded swipe timing keeps stages on the same frames and ignores stale sessions, captures and writes");
    }
}
