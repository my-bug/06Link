package com.shilapi.xcertplay;
import java.util.ArrayList;
final class E01GpsDiagnostic {
    static boolean enabled = true;
    static long currentGeneration = 1;
    static final ArrayList<String> EVENTS = new ArrayList<String>();
    static boolean isCollecting() { return enabled; }
    static long generation() { return currentGeneration; }
    static void linkEvent(String event,long generation,long id,int fragments,int acked,int seq) {
        if (generation != currentGeneration) return;
        EVENTS.add(event+":"+id+":"+fragments+":"+acked+":"+seq);
    }
}
