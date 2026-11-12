package com.shilapi.xcertplay;

import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.SystemClock;
import android.util.Log;
import java.util.IdentityHashMap;
import kotlin.jvm.functions.Function1;

/** E01 OEM volume-key target and mixing, driven by committed S16 PCM playback.
 * Does not change PCM, user volume, phone volume, audio mode or native mixer parameters.
 * OEM stream 10 -> usage 12 drives onNaviTtsState / SetHintMessage in E01 framework.
 */
public final class E01AudioScene {
    private static final long TICK_MS=100, TAIL_MS=250, STALL_MS=2000;
    // A +/-17 S16 decoder residue used to keep NAV focus indefinitely. Keep PCM intact;
    // only the navigation focus detector uses a -54 dBFS noise floor.
    private static final int SILENCE_PEAK=16, NAVIGATION_FLOOR=64;
    private static final java.util.ArrayList<Lease> pendingAbandons=new java.util.ArrayList<Lease>();
    private static long nextAbandonRetry;
    private static final IdentityHashMap<AudioTrack, Entry> tracks=new IdentityHashMap<AudioTrack, Entry>();
    private static Lease media, auxiliary;
    private static boolean mediaBlocked;

    private static final class Entry {
        final AudioTrack track; final AudioManager manager; final int stream, frameBytes;
        final Function1 reporter;
        long bytes, audibleFrame, head, rawHead, lastProgress, nextTick, drainedAt=-1;
        boolean active, pending, committed, blocked;
        long promptEndAt=-1;
        boolean promptClosed;
        Entry(AudioManager m,AudioTrack t,int s,Function1 r){
            manager=m;track=t;stream=s;reporter=r;
            frameBytes=Math.max(1,t.getChannelCount())*2;
            rawHead=t.getPlaybackHeadPosition()&0xffffffffL;head=rawHead;
            lastProgress=SystemClock.elapsedRealtime();
        }
    }
    /** A new lease identity makes delayed callbacks from a released scene harmless. */
    private static final class Lease implements AudioManager.OnAudioFocusChangeListener {
        final AudioManager manager; final int stream; final Function1 reporter;
        boolean lost;
        int lastReportedFocus;
        String abandonFailure="";
        Lease(Entry e){manager=e.manager;stream=e.stream;reporter=e.reporter;}
        public void onAudioFocusChange(int change){focusChanged(this,change);}
    }

    public static boolean register(AudioManager m,AudioTrack t,String channel,int stream){
        return register(m,t,channel,stream,null);
    }
    public static synchronized boolean register(AudioManager m,AudioTrack t,String channel,int stream,Function1 reporter){
        if(!E01AudioRoute.supported() || E01AudioRoute.stream(channel)!=stream || stream<0)return false;
        if(m==null || t==null)return true;
        try{if(!tracks.containsKey(t)){tracks.put(t,new Entry(m,t,stream,reporter));E01NavigationAudioProbe.register(m,t,stream,reporter);}}
        catch(RuntimeException error){log(reporter,"注册失败 "+error.getClass().getSimpleName());}
        return true;
    }

    /** Called immediately before AudioTrack.write, while no part of this chunk is audible. */
    public static synchronized void beforeWrite(AudioTrack t,byte[] pcm,int offset,int count){
        Entry e=tracks.get(t);if(e==null || !valid(pcm,offset,count))return;
        boolean signal=e.stream==3 || signal(e,pcm,offset,count)>=0;
        if(e.stream==10 && e.promptClosed && SystemClock.elapsedRealtime()>=e.promptEndAt)return;
        if(!signal)return;
        boolean starting=!e.active;
        if(starting){e.active=true;e.blocked=false;e.drainedAt=-1;e.lastProgress=SystemClock.elapsedRealtime();}
        e.pending=true;
        if(starting)reconcile();
    }

    /** Only bytes actually accepted by AudioTrack count, including partial writes. */
    public static synchronized void afterWrite(AudioTrack t,byte[] pcm,int offset,int written){
        Entry e=tracks.get(t);if(e==null)return;
        e.pending=false;
        if(written>0 && valid(pcm,offset,written)){
            if(e.stream==10)E01NavigationAudioProbe.pcm(t,pcm,offset,written);
            long start=e.bytes;e.bytes+=written;
            int last=(e.stream==3)?written-1:signal(e,pcm,offset,written);
            if(e.stream==10 && e.promptClosed && SystemClock.elapsedRealtime()>=e.promptEndAt)last=-1;
            if(last>=0){
                e.committed=true;e.active=true;
                e.audibleFrame=(start+last+1+e.frameBytes-1)/e.frameBytes;
                e.drainedAt=-1;
            }
        }
        // A failed/zero write or a partial write of only leading silence must not latch focus.
        if(!e.committed && e.active){e.active=false;e.blocked=false;reconcile();}
    }

    /** Uses the renderer's existing maintenance loop; no extra thread or recurring timer. */
    public static synchronized void tick(AudioTrack t){
        if(retryAbandons())reconcile();
        Entry e=tracks.get(t);if(e==null)return;
        if(e.stream==10)E01NavigationAudioProbe.tick(t);
        if(!e.active || e.stream==3)return;
        long now=SystemClock.elapsedRealtime();if(now<e.nextTick)return;e.nextTick=now+TICK_MS;
        try{
            if(e.stream==10 && e.promptClosed && now>=e.promptEndAt){end(e,"协议播报结束");return;}
            if(t.getState()!=AudioTrack.STATE_INITIALIZED){end(e,"音轨已关闭");return;}
            long raw=t.getPlaybackHeadPosition()&0xffffffffL;
            long delta=(raw-e.rawHead)&0xffffffffL;
            // A real reset/flush is a small backward move, not a 32-bit playback-head wrap.
            if(delta>0x80000000L){e.bytes=0;e.head=raw;e.rawHead=raw;end(e,"播放头重置");return;}
            e.rawHead=raw;e.head+=delta;
            if(delta>0)e.lastProgress=now;
            if(e.committed && e.head>=e.audibleFrame && !e.pending){
                if(e.drainedAt<0)e.drainedAt=now;
                if(now-e.drainedAt>=(e.stream==6?5000:TAIL_MS)){end(e,"播报结束");return;}
            }else e.drainedAt=-1;
            // A stopped/unstarted or broken track must not hold OEM mixing indefinitely.
            if(!e.pending && now-e.lastProgress>=(e.stream==6?6000:STALL_MS))end(e,"播放停滞");
        }catch(RuntimeException error){end(e,"音轨不可用");}
    }

    /** Existing OEM state worker also retries cleanup after the last renderer has stopped. */
    public static synchronized void maintain(){
        if(E01AudioRoute.supported()&&retryAbandons())reconcile();
    }

    public static synchronized boolean release(AudioTrack t){
        if(!E01AudioRoute.supported())return false;
        Entry e=tracks.remove(t);if(e==null)return true;
        E01NavigationAudioProbe.release(t);
        reconcile();
        if(tracks.isEmpty())mediaBlocked=false;
        return true;
    }

    private static void end(Entry e,String reason){
        e.active=false;e.pending=false;e.committed=false;e.blocked=false;e.drainedAt=-1;
        if(e.stream==10)log(e.reporter,"播报结束 声道=10 原因="+reason);
        reconcile();
    }
    private static boolean valid(byte[] pcm,int offset,int count){
        return pcm!=null && offset>=0 && count>0 && offset<=pcm.length && count<=pcm.length-offset;
    }
    /** Last audible sample's high-byte offset, S16 LE. No allocations and no PCM mutation. */
    private static int signal(Entry e,byte[] pcm,int offset,int count){
        return lastSignal(pcm,offset,count,e.stream==10?NAVIGATION_FLOOR:SILENCE_PEAK);
    }
    private static int lastSignal(byte[] pcm,int offset,int count,int floor){
        for(int i=(count&~1)-2;i>=0;i-=2){
            int sample=(short)((pcm[offset+i]&255)|(pcm[offset+i+1]<<8));
            if(sample>floor || sample<-floor)return i+1;
        }
        return -1;
    }
    private static int priority(int stream){return stream==6?3:stream==9?2:stream==10?1:0;}
    private static int gain(int stream){return stream==3?AudioManager.AUDIOFOCUS_GAIN:
        stream==10?AudioManager.AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:AudioManager.AUDIOFOCUS_GAIN_TRANSIENT;}

    private static void reconcile(){
        retryAbandons();
        Entry music=null,voice=null;
        for(Entry e:tracks.values()){
            if(!e.active)continue;
            if(e.stream==3){if(music==null)music=e;}
            else if(!e.blocked && (voice==null || priority(e.stream)>priority(voice.stream)))voice=e;
        }
        // A transiently displaced foreground owner waits for the OEM's GAIN callback.
        // Keep that lease as the recovery anchor while another voice is pending, rather
        // than changing its listener/stream and stealing focus from a factory call.
        if(auxiliary!=null && auxiliary.lost && voice!=null)return;
        // Drop the old foreground scene first. Otherwise Alfus prefers a stale mix (NAV) target.
        if(auxiliary!=null && (voice==null || auxiliary.stream!=voice.stream)){
            Lease old=auxiliary;auxiliary=null;abandon(old);
        }
        if(music==null){
            if(media!=null){Lease old=media;media=null;abandon(old);}
            mediaBlocked=false;
        }
        // Media also receives transient loss for our own Siri/call. Once the foreground
        // lease is gone, its asynchronous GAIN is the signal to resume pending cues.
        if(!pendingAbandons.isEmpty())return;
        if(auxiliary==null && media!=null && media.lost)return;
        // Never steal focus from an already-playing foreground cue when music is (re)created.
        if(music!=null && media==null && !mediaBlocked && auxiliary==null){
            Lease next=new Lease(music);media=next;
            if(!request(next)){if(media==next)media=null;mediaBlocked=true;}
        }
        // At most one try per foreground stream (PHONE, Siri, NAV). A refused higher
        // scene must not strand the still-audible lower scene that we just released.
        for(int attempt=0;voice!=null && auxiliary==null && pendingAbandons.isEmpty() && attempt<3;attempt++){
            Lease next=new Lease(voice);auxiliary=next;
            if(request(next))break;
            if(auxiliary==next)auxiliary=null;
            for(Entry e:tracks.values())if(e.active && e.stream==next.stream)e.blocked=true;
            voice=null;
            for(Entry e:tracks.values())if(e.active && e.stream!=3 && !e.blocked
                && (voice==null || priority(e.stream)>priority(voice.stream)))voice=e;
        }
    }
    private static boolean request(Lease lease){
        try{
            int result=lease.manager.requestAudioFocus(lease,lease.stream,gain(lease.stream));
            log(lease.reporter,"申请 声道="+lease.stream+" 焦点="+gain(lease.stream)+" 结果="+result+(lease.stream==10?E01AudioMixDiagnostic.state(lease.manager):""));
            if(result==AudioManager.AUDIOFOCUS_REQUEST_GRANTED)return true;
            // Ordinary API22 requests are not queued, but abandon also clears OEM deferred entries.
            abandon(lease);
        }catch(RuntimeException error){
            log(lease.reporter,"申请失败 声道="+lease.stream+" "+error.getClass().getSimpleName());
            abandon(lease);
        }
        return false;
    }
    private static void abandon(Lease lease){
        if(tryAbandon(lease))return;
        if(!pendingAbandons.contains(lease))pendingAbandons.add(lease);
        nextAbandonRetry=SystemClock.elapsedRealtime()+500;
    }
    private static boolean tryAbandon(Lease lease){
        try{
            int result=lease.manager.abandonAudioFocus(lease);
            if(result==AudioManager.AUDIOFOCUS_REQUEST_GRANTED){
                log(lease.reporter,"归还 声道="+lease.stream+" 结果="+result);return true;
            }
            abandonFailure(lease,"结果="+result);
        }catch(RuntimeException error){abandonFailure(lease,error.getClass().getSimpleName());}
        return false;
    }
    private static void abandonFailure(Lease lease,String reason){
        if(!reason.equals(lease.abandonFailure)){
            lease.abandonFailure=reason;log(lease.reporter,"归还待重试 声道="+lease.stream+" "+reason);
        }
    }
    /** Existing renderer loop only; no timer and no new focus owner until old leases clear. */
    private static boolean retryAbandons(){
        if(pendingAbandons.isEmpty()||SystemClock.elapsedRealtime()<nextAbandonRetry)return false;
        boolean changed=false;
        nextAbandonRetry=SystemClock.elapsedRealtime()+5000;
        java.util.Iterator<Lease> it=pendingAbandons.iterator();
        while(it.hasNext())if(tryAbandon(it.next())){it.remove();changed=true;}
        return changed;
    }
    /** Protocol events are scoped to tracks in this actual media sink, not global NAV state.
     * Upstream DiPlay allows 1s after unduckAudio for the final buffered PCM to play.
     */
    public static void prompt(Object sink,String command){
        if(!E01AudioRoute.supported()||sink==null||!("duckAudio".equals(command)||"unduckAudio".equals(command)))return;
        try{
            java.lang.reflect.Field mapField=sink.getClass().getDeclaredField("audioRenderers");mapField.setAccessible(true);
            Object map=mapField.get(sink);if(!(map instanceof java.util.Map))return;
            for(Object renderer:((java.util.Map<?,?>)map).values()){
                if(renderer==null)continue;
                java.lang.reflect.Field field=renderer.getClass().getDeclaredField("track");field.setAccessible(true);
                Object value=field.get(renderer);if(value instanceof AudioTrack)promptTrack((AudioTrack)value,"unduckAudio".equals(command));
            }
        }catch(ReflectiveOperationException|RuntimeException ignored){}
    }
    private static synchronized void promptTrack(AudioTrack track,boolean ended){
        Entry e=tracks.get(track);if(e==null||e.stream!=10)return;
        if(ended&&e.promptClosed)return; // Duplicate end must not keep extending the deadline.
        e.promptClosed=ended;e.promptEndAt=ended?SystemClock.elapsedRealtime()+1000:-1;
        if(!ended)e.blocked=false;
        log(e.reporter,ended?"导航结束通知，等待尾音排空":"导航开始通知");
    }
    private static synchronized void focusChanged(Lease lease,int change){
        if(lease!=media && lease!=auxiliary)return;
        if(change==AudioManager.AUDIOFOCUS_GAIN){lease.lastReportedFocus=0;lease.lost=false;reconcile();return;}
        if(change==AudioManager.AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK){
            if(lease.lastReportedFocus!=change)log(lease.reporter,"允许压低 声道="+lease.stream);
            lease.lastReportedFocus=change;
            // E01 framework already sends set_source_change / SetHintMessage to its mixer.
            // Applying the old all-track x0.2 here would also attenuate NAV/Siri themselves.
            return;
        }
        if(change!=AudioManager.AUDIOFOCUS_LOSS && change!=AudioManager.AUDIOFOCUS_LOSS_TRANSIENT)return;
        lease.lost=true;log(lease.reporter,"失焦 声道="+lease.stream+" 事件="+change);
        if(change==AudioManager.AUDIOFOCUS_LOSS_TRANSIENT)return; // Wait for OEM GAIN, never per-packet reacquire.
        if(lease==media){media=null;mediaBlocked=true;}
        else{
            auxiliary=null;
            for(Entry e:tracks.values())if(e.active && e.stream!=3)e.blocked=true;
        }
        abandon(lease);
    }
    private static void log(Function1 reporter,String message){
        String value="[音频场景] "+message;
        try{Log.i("06Link-AudioScene",value);if(reporter!=null)reporter.invoke(value);}catch(RuntimeException ignored){}
    }
    private E01AudioScene(){}
}
