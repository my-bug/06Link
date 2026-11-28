package com.shilapi.xcertplay;
final class E01SmoothVideo {
    static Object lastSource;
    static long lastArrival, lastSender;
    static long firstHeader, completeHeader;
    static void swipeReceived(Object source, long previous, long previousSender, long first, long complete) {
        firstHeader = first; completeHeader = complete;
        lastSource = source; lastArrival = previous; lastSender = previousSender;
    }
}
