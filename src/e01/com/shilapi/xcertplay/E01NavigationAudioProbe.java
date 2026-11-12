package com.shilapi.xcertplay;

import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.SystemClock;
import android.util.Log;
import java.util.IdentityHashMap;
import java.util.Locale;
import kotlin.jvm.functions.Function1;

/** Bounded, read-only output evidence. Samples numeric levels, never stores audio or changes gains.
 * System volume indices describe the user's setting, not the OEM HAL/DSP gain.
 * The caller registers/releases all tracks and calls resetSession() only after the whole media sink closes.
 * Closing a short NAV track alone never renews the diagnostic budget.
 */
public final class E01NavigationAudioProbe {
    private static final long SAMPLE_MS=100, REPORT_MS=10000, WINDOW_MS=300000;
    private static final int SAMPLE_COUNT=256, MAX_LINES=30, MAX_REGISTRATIONS=8;
    private static final IdentityHashMap<AudioTrack,Entry> tracks=new IdentityHashMap<AudioTrack,Entry>();
    private static long deadline, nextReport;
    private static int lines, registrations, serial;
    private static boolean disabled;

    private static final class Entry {
        final AudioTrack track;
        final AudioManager manager;
        final Function1 reporter;
        final int id, expected, actual, rate, channels, session;
        long nextSample, firstSample=-1, lastSample, samples, squares, lastReport;
        int peak, decoderRate=Integer.MIN_VALUE, decoderChannels=Integer.MIN_VALUE;
        boolean signal;
        Entry(AudioManager manager,AudioTrack track,int stream,Function1 reporter){
            this.track=track;this.manager=manager;this.reporter=reporter;expected=stream;id=++serial;
            actual=readTrack(track,0);rate=readTrack(track,1);channels=readTrack(track,2);session=readTrack(track,3);
        }
        void clearSamples(){firstSample=-1;lastSample=0;samples=0;squares=0;peak=0;signal=false;}
    }
    private static int readTrack(AudioTrack t,int kind){
        try{switch(kind){case 0:return t.getStreamType();case 1:return t.getSampleRate();case 2:return t.getChannelCount();default:return t.getAudioSessionId();}}
        catch(Throwable ignored){return -1;}
    }
    private static String value(int n){return n<0?"未知":Integer.toString(n);}
    private static String volume(AudioManager manager,int stream,boolean maximum){
        if(manager==null)return "未知";
        try{return value(maximum?manager.getStreamMaxVolume(stream):manager.getStreamVolume(stream));}
        catch(Throwable ignored){return "未知";}
    }
    private static String identity(Entry e){
        return "轨="+e.id+" 会话="+value(e.session)+" 期望声道="+e.expected+" 实际声道="+value(e.actual)
            +" 采样率="+value(e.rate)+" 通道数="+value(e.channels);
    }
    private static String levels(Entry e){
        return " 导航档="+volume(e.manager,10,false)+"/"+volume(e.manager,10,true)
            +" 媒体档="+volume(e.manager,3,false);
    }
    private static boolean available(long now){return !disabled && deadline>0 && now<deadline && lines<MAX_LINES;}
    private static Entry navigation(AudioTrack track){Entry e=tracks.get(track);return e!=null&&e.expected==10?e:null;}

    public static synchronized void register(AudioManager manager,AudioTrack track,int stream,Function1 reporter){
        try{
            if(!E01AudioRoute.supported() || track==null || (stream!=3&&stream!=6&&stream!=9&&stream!=10) || tracks.containsKey(track))return;
            // Null entries keep the session alive without querying or sampling non-navigation tracks.
            if(stream!=10){tracks.put(track,null);return;}
            Entry e=new Entry(manager,track,stream,reporter);tracks.put(track,e);
            long now=SystemClock.elapsedRealtime();
            if(deadline==0){deadline=now+WINDOW_MS;nextReport=now;}
            if(available(now)&&registrations<MAX_REGISTRATIONS){registrations++;emit(e,"建轨 "+identity(e)+levels(e));}
        }catch(Throwable ignored){disabled=true;}
    }

    /** Only the positive byte count actually accepted by AudioTrack may be passed here. */
    public static synchronized void pcm(AudioTrack track,byte[] pcm,int offset,int written){
        try{
            Entry e=navigation(track);if(e==null||pcm==null||offset<0||written<2||offset>pcm.length||written>pcm.length-offset)return;
            long now=SystemClock.elapsedRealtime();if(!available(now)||now<e.nextSample)return;
            e.nextSample=now+SAMPLE_MS;
            int count=Math.min(SAMPLE_COUNT,written/2);
            // A contiguous central fragment avoids aliasing introduced by stride-based subsampling.
            int start=offset+2*((written/2-count)/2), peak=0;long squares=0;
            for(int i=0;i<count;i++){
                int pos=start+2*i;
                int sample=(short)((pcm[pos]&255)|(pcm[pos+1]<<8));
                int absolute=Math.abs(sample);if(absolute>peak)peak=absolute;
                squares+=(long)sample*sample;
            }
            // Ignore entirely silent fragments; their duration is not a voice-level measurement.
            if(peak<=16)return;
            if(e.firstSample<0)e.firstSample=now;e.lastSample=now;
            e.samples+=count;e.squares+=squares;e.peak=Math.max(e.peak,peak);e.signal=true;
        }catch(Throwable ignored){disabled=true;}
    }

    /** Called by the existing renderer loop. At most one summary globally per ten seconds. */
    public static synchronized void tick(AudioTrack track){
        try{
            Entry e=navigation(track);if(e==null||!e.signal)return;
            long now=SystemClock.elapsedRealtime();if(!available(now)||now<nextReport||now-e.firstSample<REPORT_MS)return;
            // Prefer an older unsent track so simultaneous NAV tracks remain distinguishable.
            for(Entry other:tracks.values())if(other!=null&&other.signal&&
                (other.lastReport<e.lastReport || (other.lastReport==e.lastReport&&other.id<e.id)))return;
            report(e,now,false);
        }catch(Throwable ignored){disabled=true;}
    }

    /** A decoder output-format event is evidence only: never relabel or recreate the AudioTrack. */
    public static synchronized void decodedFormat(AudioTrack track,MediaCodec codec){
        try{
            Entry e=navigation(track);long now=SystemClock.elapsedRealtime();
            if(e==null||codec==null||!available(now))return;
            MediaFormat format=codec.getOutputFormat();
            int rate=readFormat(format,"sample-rate"),channels=readFormat(format,"channel-count");
            if(rate==e.decoderRate&&channels==e.decoderChannels)return;
            e.decoderRate=rate;e.decoderChannels=channels;
            String match=rate<0||channels<0||e.rate<0||e.channels<0?"未知":rate==e.rate&&channels==e.channels?"一致":"不一致";
            emit(e,"解码格式 "+identity(e)+" 解码采样率="+value(rate)+" 解码通道数="+value(channels)+" 对比="+match);
        }catch(Throwable ignored){disabled=true;}
    }
    private static int readFormat(MediaFormat f,String key){
        try{return f!=null&&f.containsKey(key)?f.getInteger(key):-1;}catch(Throwable ignored){return -1;}
    }
    private static String db(double amplitude){return amplitude<=0?"-inf":String.format(Locale.US,"%.1f",20.0*Math.log10(amplitude/32768.0));}
    private static void emit(Entry e,String message){
        if(lines>=MAX_LINES||disabled)return;lines++;
        String text="[导航音量] "+message;
        try{Log.i("06Link-NavAudio",text);if(e.reporter!=null)e.reporter.invoke(text);}
        catch(Throwable ignored){disabled=true;}
    }
    private static void report(Entry e,long now,boolean closing){
        if(!e.signal||!available(now)||now<nextReport)return;
        nextReport=now+REPORT_MS;e.lastReport=now;
        String message=(closing?"结束输出 ":"输出 ")+identity(e)+" PCM峰值="+db(e.peak)+"dBFS 有声片段RMS="
            +db(Math.sqrt((double)e.squares/e.samples))+"dBFS 抽样="+e.samples
            +" 窗口毫秒="+Math.max(0,e.lastSample-e.firstSample)+levels(e);
        e.clearSamples();emit(e,message);
    }
    public static synchronized void release(AudioTrack track){
        try{
            Entry e=tracks.remove(track);
            // Short one-phrase tracks often end before the periodic ten-second summary.
            if(e!=null)report(e,SystemClock.elapsedRealtime(),true);
        }catch(Throwable ignored){disabled=true;}
    }
    /** Call only when the complete CarPlay media sink closes, never after one NAV phrase.
     * Renderers shut down asynchronously; clearing identities makes their late PCM/release inert.
     */
    public static synchronized void resetSession(){
        try{tracks.clear();deadline=0;nextReport=0;lines=0;registrations=0;serial=0;disabled=false;}
        catch(Throwable ignored){disabled=true;}
    }
    private E01NavigationAudioProbe(){}
}
