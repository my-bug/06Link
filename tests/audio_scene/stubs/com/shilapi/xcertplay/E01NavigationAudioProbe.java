package com.shilapi.xcertplay;
import android.media.AudioManager;import android.media.AudioTrack;import kotlin.jvm.functions.Function1;
/** Scene regressions isolate diagnostics; the real probe has its own tests. */
public final class E01NavigationAudioProbe {
 public static void register(AudioManager m,AudioTrack t,int stream,Function1 r){}
 public static void pcm(AudioTrack t,byte[] pcm,int offset,int count){}
 public static void tick(AudioTrack t){}
 public static void release(AudioTrack t){}
}
