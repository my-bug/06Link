package com.shilapi.xcertplay;
final class E01SmoothVideo {
    static Object lastSource;
    static long lastArrival, lastSender;
    static void swipeReceived(Object source, long previous, long previousSender) {
        lastSource = source; lastArrival = previous; lastSender = previousSender;
    }
}
