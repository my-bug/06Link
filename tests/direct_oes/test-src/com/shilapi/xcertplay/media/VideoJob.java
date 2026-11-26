package com.shilapi.xcertplay.media;

public class VideoJob {
    public static class Frame extends VideoJob {
        private final long at;
        private final byte[] bytes;
        public Frame(long at) { this(at, new byte[0]); }
        public Frame(long at, byte[] bytes) { this.at = at; this.bytes = bytes; }
        public long getReceivedNs() { return at; }
        public byte[] getNalus() { return bytes; }
    }
    public static class Resync extends VideoJob { }
}
