package com.shilapi.xcertplay;

import android.app.Activity;

final class E01SmoothVideo {
    static long swipeNs;
    static Activity owner;
    static int updates;

    public static void swipe(Activity activity, long eventNs) {
        updates++;
        owner = activity;
        swipeNs = eventNs;
    }
}
