package com.shilapi.xcertplay;
import android.app.Activity;
final class E01SmoothVideo {
    static final java.util.Map<Activity, Integer> rates = new java.util.WeakHashMap<Activity, Integer>();
    static int selectedFps(Activity owner) { Integer value = rates.get(owner); return value == null ? 60 : value; }
}
