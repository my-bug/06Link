package com.shilapi.xcertplay;

import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.SystemClock;
import java.util.*;

/** Independent behavioral cases; each starts in a fresh JVM, no private-state reset. */
public final class AudioSceneTest {
    private static int checks;
    private static void check(boolean condition,String why){checks++;if(!condition)throw new AssertionError(why);}
    private static byte[] pcm(int frames,int value){byte[] data=new byte[frames*2];for(int i=0;i<data.length;i+=2){data[i]=(byte)value;data[i+1]=(byte)(value>>8);}return data;}
    private static AudioTrack track(AudioManager manager,String channel,int stream){
        AudioTrack track=new AudioTrack();check(E01AudioScene.register(manager,track,channel,stream),"valid E01 register "+channel);return track;
    }
    private static void write(AudioTrack track,byte[] pcm){E01AudioScene.beforeWrite(track,pcm,0,pcm.length);E01AudioScene.afterWrite(track,pcm,0,pcm.length);}
    private static void step(AudioTrack track,long millis,int head){SystemClock.now+=millis;track.head=head;E01AudioScene.tick(track);}
    private static int requests(AudioManager manager,int stream){int n=0;for(AudioManager.Request r:manager.requests)if(r.stream==stream)n++;return n;}
    private static AudioManager.Request last(AudioManager manager){return manager.requests.get(manager.requests.size()-1);}
    private static boolean held(AudioManager manager,int stream){for(AudioManager.Request r:manager.requests)if(r.stream==stream&&manager.owners.contains(r.listener))return true;return false;}
    private static void gates(){
        AudioManager manager=new AudioManager();AudioTrack t=new AudioTrack();E01AudioRoute.enabled=false;
        check(!E01AudioScene.register(manager,t,"NAVIGATION",10),"non-E01 untouched");
        write(t,pcm(100,100));E01AudioScene.tick(t);check(!E01AudioScene.release(t),"unregistered release falls through");
        check(manager.requests.isEmpty(),"non-E01 no focus");E01AudioRoute.enabled=true;
        check(!E01AudioScene.register(manager,t,"NAVIGATION",3),"wrong fixed stream not intercepted");
        check(!E01AudioScene.register(manager,t,"UNKNOWN",10),"unknown channel not intercepted");
        check(manager.requests.isEmpty(),"register never requests focus");
    }
    private static void silence(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"NAVIGATION",10);
        for(int i=0;i<100;i++){write(t,pcm(100,i%2==0?16:-16));step(t,100,(i+1)*100);}
        check(manager.requests.isEmpty(),"silence and threshold samples do not acquire navigation focus");
        check(android.util.Log.entries.isEmpty(),"silent PCM does not produce scene logs");
        write(t,pcm(2,65));check(requests(manager,10)==1&&last(manager).gain==3,"positive threshold navigation may-duck");
        check(E01AudioScene.release(t),"registered track release handled");
        check(!held(manager,10),"release yields focus");
        AudioTrack negative=track(manager,"ASSISTANT",9);write(negative,pcm(1,-32768));
        check(requests(manager,9)==1&&last(manager).gain==2,"minimum signed sample is audible Siri transient");E01AudioScene.release(negative);
    }
    private static void drain(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"NAVIGATION",10);write(t,pcm(100,100));
        check(held(manager,10),"navigation owns focus during real PCM");
        step(t,500,50);check(held(manager,10),"queued audible PCM retains focus");
        step(t,100,100);check(held(manager,10),"playback head reaching last sound begins grace");
        step(t,200,100);check(held(manager,10),"before grace expiry retains focus");
        step(t,100,100);check(!held(manager,10),"drained navigation returns focus after grace");
        check(requests(manager,10)==1,"polling does not reacquire focus");
        E01AudioScene.release(t);check(manager.abandoned.size()==1,"release after drain is idempotent");
    }
    private static void continuousSilence(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"ASSISTANT",9);write(t,pcm(100,100));
        for(int i=0;i<7;i++){write(t,pcm(100,0));step(t,100,(i+1)*100);}
        check(!held(manager,9),"continued silent buffers cannot hold assistant focus");
        check(requests(manager,9)==1,"silent tail does not reopen assistant scene");
        write(t,pcm(100,100));check(requests(manager,9)==2&&held(manager,9),"next audible phrase independently acquires");E01AudioScene.release(t);
    }
    private static void failedWrite(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"NAVIGATION",10);byte[] sound=pcm(100,100);
        E01AudioScene.beforeWrite(t,sound,0,sound.length);check(held(manager,10),"focus acquired before hardware write");
        E01AudioScene.afterWrite(t,sound,0,-6);check(!held(manager,10),"failed first write rolls back uncommitted focus");
        E01AudioScene.beforeWrite(t,sound,0,sound.length);E01AudioScene.afterWrite(t,sound,0,0);
        check(!held(manager,10),"zero-byte first write rolls back candidate");
        write(t,sound);check(held(manager,10),"later successful write can recover");
        int abandoned=manager.abandoned.size();E01AudioScene.beforeWrite(t,sound,0,sound.length);E01AudioScene.afterWrite(t,sound,0,-6);
        check(held(manager,10)&&manager.abandoned.size()==abandoned,"failed later write does not discard already queued speech");E01AudioScene.release(t);
    }
    private static void partialWrite(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"NAVIGATION",10);
        byte[] tail=new byte[]{0,0,0,0,100,0,100,0};
        E01AudioScene.beforeWrite(t,tail,0,tail.length);E01AudioScene.afterWrite(t,tail,0,4);
        check(!held(manager,10),"unwritten audible tail is not committed speech");
        E01AudioScene.beforeWrite(t,tail,4,4);E01AudioScene.afterWrite(t,tail,4,2);
        check(held(manager,10),"partial successful audible sample owns focus");
        step(t,100,3);step(t,300,3);check(!held(manager,10),"last audible position uses written count and offset");E01AudioScene.release(t);
    }
    private static void mediaPhone(){
        AudioManager manager=new AudioManager();AudioTrack media=track(manager,"MEDIA",3),phone=track(manager,"PHONE",6);
        check(manager.requests.isEmpty(),"register is not playback");write(media,pcm(20,0));
        check(requests(manager,3)==1&&last(manager).gain==1,"media first PCM establishes persistent base");
        write(phone,pcm(20,0));check(requests(manager,6)==0,"reserved silent phone track does not steal focus");
        write(phone,pcm(20,100));check(requests(manager,6)==1&&last(manager).gain==2,"audible phone uses independent transient focus");
        step(phone,4000,40);check(held(manager,6),"phone tolerates longer conversational pause");
        check(held(manager,3),"phone does not release media owner");E01AudioScene.release(phone);
        check(!held(manager,6)&&held(manager,3),"phone release preserves music base");E01AudioScene.release(media);
        check(manager.owners.isEmpty(),"all focus returned after session closes");
    }
    private static void songChange(){
        AudioManager manager=new AudioManager();AudioTrack old=track(manager,"MEDIA",3),nav=track(manager,"NAVIGATION",10);
        write(old,pcm(100,100));write(nav,pcm(100,100));AudioManager.Request auxiliary=last(manager);
        AudioTrack next=track(manager,"MEDIA",3);write(next,pcm(100,100));E01AudioScene.release(old);
        check(held(manager,10)&&manager.owners.contains(auxiliary.listener),"music replacement cannot evict navigation owner");
        check(held(manager,3),"new music track keeps base alive");
        check(requests(manager,10)==1,"changing music does not re-request speech");
        check(requests(manager,3)==1,"overlapping media tracks share one base owner");
        E01AudioScene.release(next);check(held(manager,10),"stopping music leaves navigation independent");E01AudioScene.release(nav);
    }
    private static void overlap(){
        AudioManager manager=new AudioManager();AudioTrack nav=track(manager,"NAVIGATION",10),siri=track(manager,"ASSISTANT",9),call=track(manager,"PHONE",6);
        write(nav,pcm(100,100));AudioManager.Request oldNav=last(manager);
        write(siri,pcm(100,100));check(!held(manager,10)&&held(manager,9),"Siri preempts navigation auxiliary");
        AudioManager.Request oldSiri=last(manager);write(call,pcm(100,100));
        check(held(manager,6)&&!held(manager,9)&&manager.owners.size()==1,"call is sole highest auxiliary");
        oldNav.listener.onAudioFocusChange(-1);oldSiri.listener.onAudioFocusChange(-1);
        check(held(manager,6),"late lower-priority callbacks cannot kill call");
        E01AudioScene.release(call);check(held(manager,9),"ending call resumes still-pending Siri");
        E01AudioScene.release(siri);check(held(manager,10),"ending Siri resumes still-pending navigation");
        E01AudioScene.release(nav);check(manager.owners.isEmpty(),"overlap cleanup complete");
    }
    private static void stuck(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"NAVIGATION",10);write(t,pcm(100,100));
        step(t,1800,0);check(held(manager,10),"brief scheduling stall does not instantly lose focus");
        step(t,300,0);check(!held(manager,10),"stalled playback releases within two-second fallback");E01AudioScene.release(t);
    }
    private static void duck(){
        AudioManager manager=new AudioManager();AudioTrack music=track(manager,"MEDIA",3),nav=track(manager,"NAVIGATION",10);
        write(music,pcm(100,100));AudioManager.Request m=last(manager);write(nav,pcm(100,100));AudioManager.Request n=last(manager);
        m.listener.onAudioFocusChange(-3);n.listener.onAudioFocusChange(-3);
        check(held(manager,3)&&held(manager,10),"system duck does not abandon owners");
        check(manager.requests.size()==2,"duck callback does not steal focus back");
        // The AudioTrack/AudioManager fakes fail if any PCM or system-volume setter is called.
        m.listener.onAudioFocusChange(1);n.listener.onAudioFocusChange(1);
        check(manager.requests.size()==2,"system gain callback does not duplicate requests");E01AudioScene.release(nav);E01AudioScene.release(music);
    }
    private static void permanentLoss(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"NAVIGATION",10);write(t,pcm(100,100));
        AudioManager.Request request=last(manager);request.listener.onAudioFocusChange(-1);manager.owners.remove(request.listener);
        for(int i=0;i<5;i++){write(t,pcm(20,100));step(t,100,20*i);}
        check(requests(manager,10)==1,"external permanent loss cannot be fought within active phrase");
        step(t,100,200);step(t,300,200);
        write(t,pcm(20,100));check(requests(manager,10)==2,"new phrase after drained blocked phrase can acquire");E01AudioScene.release(t);
    }
    private static void transientLoss(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"ASSISTANT",9);write(t,pcm(100,100));
        AudioManager.Request request=last(manager);request.listener.onAudioFocusChange(-2);
        for(int i=0;i<3;i++){write(t,pcm(20,100));step(t,100,20*i);}
        check(requests(manager,9)==1,"transient loss waits for system GAIN");request.listener.onAudioFocusChange(1);
        write(t,pcm(20,100));check(requests(manager,9)==1,"system gain reuses existing focus owner");
        E01AudioScene.release(t);int before=manager.requests.size();request.listener.onAudioFocusChange(1);
        check(manager.requests.size()==before&&manager.owners.isEmpty(),"old gain after release cannot resurrect track");
    }
    private static void refusal(){
        AudioManager manager=new AudioManager();manager.reject=true;AudioTrack t=track(manager,"NAVIGATION",10);
        write(t,pcm(100,100));check(!held(manager,10),"rejected focus does not become held");
        E01AudioScene.release(t);check(manager.owners.isEmpty(),"rejected focus cleanup");
        manager.reject=false;AudioTrack next=track(manager,"NAVIGATION",10);write(next,pcm(100,100));
        check(held(manager,10),"later scene can request after denial");E01AudioScene.release(next);
    }
    private static void exceptions(){
        AudioManager manager=new AudioManager();manager.throwRequest=true;AudioTrack t=track(manager,"NAVIGATION",10);
        write(t,pcm(100,100));check(manager.owners.isEmpty(),"request exception contained");E01AudioScene.release(t);
        manager.throwRequest=false;AudioTrack next=track(manager,"ASSISTANT",9);write(next,pcm(100,100));
        manager.throwAbandon=true;check(E01AudioScene.release(next),"abandon exception contained");
        manager.throwAbandon=false;SystemClock.now+=600;AudioTrack last=track(manager,"NAVIGATION",10);write(last,pcm(100,100));
        check(held(manager,10),"cleanup exception does not poison next scene");E01AudioScene.release(last);
    }
    private static void quietLogs(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"NAVIGATION",10);write(t,pcm(10,100));
        int logged=android.util.Log.entries.size(),requested=manager.requests.size(),diagnostics=E01AudioMixDiagnostic.calls;
        for(int i=0;i<1000;i++){write(t,pcm(10,100));E01AudioScene.tick(t);}
        check(manager.requests.size()==requested,"PCM hot path does not repeatedly request focus");
        check(diagnostics==1&&E01AudioMixDiagnostic.calls==diagnostics,"mix diagnostic reads once on NAV request, never per PCM");
        check(android.util.Log.entries.size()==logged,"PCM hot path does not flood logs");E01AudioScene.release(t);
    }
    private static void musicStartsDuringSpeech(){
        AudioManager manager=new AudioManager();AudioTrack nav=track(manager,"NAVIGATION",10);write(nav,pcm(100,100));
        AudioManager.Request original=last(manager);AudioTrack music=track(manager,"MEDIA",3);write(music,pcm(100,100));
        check(manager.owners.contains(original.listener)&&requests(manager,10)==1,"starting music must not disturb ongoing speech");
        check(requests(manager,3)==0,"defer new media focus while foreground speech owns it");
        E01AudioScene.release(nav);check(held(manager,3)&&requests(manager,3)==1,"media base established after speech yields");E01AudioScene.release(music);
    }
    private static void refusedPreemption(){
        AudioManager manager=new AudioManager();AudioTrack nav=track(manager,"NAVIGATION",10);write(nav,pcm(100,100));
        AudioTrack siri=track(manager,"ASSISTANT",9);manager.rejectStream=9;write(siri,pcm(100,100));
        // The denied scene must not be reported as held or spin on its next PCM.
        check(!held(manager,9),"denied higher scene not held");int tried=requests(manager,9);
        check(held(manager,10),"denied higher scene immediately returns to still-audible lower scene");
        manager.rejectStream=-1;write(siri,pcm(100,100));
        check(requests(manager,9)==tried,"same denied phrase does not fight system per packet");
        check(held(manager,10),"eligible queued lower speech recovers while higher phrase stays blocked");
        E01AudioScene.release(siri);E01AudioScene.release(nav);
    }
    private static void transientPreemption(){
        AudioManager manager=new AudioManager();AudioTrack nav=track(manager,"NAVIGATION",10);write(nav,pcm(100,100));
        AudioManager.Request original=last(manager);original.listener.onAudioFocusChange(-2);
        AudioTrack siri=track(manager,"ASSISTANT",9);write(siri,pcm(100,100));
        check(requests(manager,9)==0,"higher scene waits rather than stealing during external transient loss");
        original.listener.onAudioFocusChange(1);E01AudioScene.tick(siri);write(siri,pcm(10,100));
        check(held(manager,9)&&requests(manager,9)==1,"after system GAIN pending higher scene may take focus");
        E01AudioScene.release(siri);E01AudioScene.release(nav);
    }
    private static void sameStream(){
        AudioManager manager=new AudioManager();AudioTrack first=track(manager,"NAVIGATION",10),second=track(manager,"NAVIGATION",10);
        write(first,pcm(100,100));write(second,pcm(100,100));check(requests(manager,10)==1,"same-stream overlap shares one lease");
        step(first,100,100);step(first,300,100);check(held(manager,10),"first drained track cannot release still-active peer");
        E01AudioScene.release(first);check(held(manager,10)&&manager.abandoned.isEmpty(),"removing first track preserves peer owner");
        step(second,100,100);step(second,300,100);check(!held(manager,10)&&manager.abandoned.size()==1,"last peer drain releases shared lease exactly once");E01AudioScene.release(second);
    }
    private static void stereoTail(){
        AudioManager manager=new AudioManager();AudioTrack t=new AudioTrack();t.channels=2;
        check(E01AudioScene.register(manager,t,"ASSISTANT",9),"stereo Siri registration");
        byte[] data=new byte[40];data[34]=100; // Right channel of frame 9, then one silent stereo frame.
        write(t,data);step(t,100,8);check(held(manager,9),"stereo last sound frame not yet consumed");
        step(t,100,9);step(t,300,9);check(!held(manager,9),"silent stereo tail does not extend audible endpoint");E01AudioScene.release(t);
    }
    private static void headWrap(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"NAVIGATION",10);
        byte[] block=pcm(1<<18,100);long written=0;
        // More than 2^32 frames without allocating hours of PCM or mutating helper internals.
        for(int i=0;i<(1<<14);i++){
            write(t,block);written+=(1<<18);step(t,100,(int)(written-256));
        }
        check(written==(1L<<32)&&held(manager,10),"long-running unsigned playback head stays active before wrap");
        write(t,pcm(512,100));written+=512;step(t,100,(int)(written-128));
        check(held(manager,10)&&requests(manager,10)==1,"32-bit wrap is forward playback, not reset or new focus");
        step(t,100,(int)written);step(t,300,(int)written);
        check(!held(manager,10)&&manager.abandoned.size()==1,"wrapped final audible endpoint drains normally");E01AudioScene.release(t);
    }
    private static void headReset(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"NAVIGATION",10);write(t,pcm(200,100));
        step(t,100,100);step(t,100,0);check(!held(manager,10),"small playback-head rewind is a reset and releases old scene");
        write(t,pcm(100,100));check(held(manager,10),"new cue works after reset");
        step(t,100,100);step(t,300,100);check(!held(manager,10),"post-reset written counter is rebased");E01AudioScene.release(t);
    }
    private static void unavailableTrack(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"NAVIGATION",10);t.playState=AudioTrack.PLAYSTATE_STOPPED;write(t,pcm(100,100));
        step(t,2100,0);check(!held(manager,10),"never-started queued audio cannot retain focus beyond stall timeout");E01AudioScene.release(t);
        AudioTrack bad=track(manager,"ASSISTANT",9);write(bad,pcm(100,100));bad.throwHead=true;
        SystemClock.now+=100;E01AudioScene.tick(bad);check(!held(manager,9),"head-query failure ends unusable scene");E01AudioScene.release(bad);
    }
    private static void transientEnds(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"NAVIGATION",10);write(t,pcm(100,100));
        AudioManager.Request old=last(manager);old.listener.onAudioFocusChange(-2);
        step(t,100,100);step(t,300,100);check(!held(manager,10),"phrase ending during transient loss returns owner");
        write(t,pcm(100,100));check(requests(manager,10)==2&&held(manager,10),"fresh phrase can acquire after lost phrase ended");
        AudioManager.Request fresh=last(manager);old.listener.onAudioFocusChange(1);old.listener.onAudioFocusChange(-1);
        check(manager.owners.contains(fresh.listener)&&requests(manager,10)==2,"late old callbacks cannot alter fresh scene");E01AudioScene.release(t);
    }
    private static void mediaTransient(){
        AudioManager manager=new AudioManager();AudioTrack music=track(manager,"MEDIA",3);write(music,pcm(100,100));
        AudioManager.Request owner=last(manager);owner.listener.onAudioFocusChange(-2);
        AudioTrack nav=track(manager,"NAVIGATION",10);write(nav,pcm(100,100));
        check(requests(manager,10)==0,"new auxiliary does not steal focus during base transient loss");
        owner.listener.onAudioFocusChange(1);check(held(manager,10)&&requests(manager,10)==1,"system restores base then pending navigation obtains foreground");
        E01AudioScene.release(nav);E01AudioScene.release(music);
    }
    private static void phoneQuietTail(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"PHONE",6);write(t,pcm(100,100));
        step(t,100,100);for(int i=1;i<=4;i++){write(t,pcm(100,0));step(t,1000,100+i*100);}
        check(held(manager,6),"phone retains scene across four-second conversational gap");
        write(t,pcm(100,0));step(t,1000,600);check(!held(manager,6),"five-second drained silence releases reserved phone scene");
        for(int i=0;i<10;i++){write(t,pcm(100,0));step(t,1000,700+i*100);}
        check(requests(manager,6)==1&&!held(manager,6),"long-running silent phone PCM cannot permanently own highest priority");
        write(t,pcm(100,100));check(requests(manager,6)==2&&held(manager,6),"actual speech after idle reopens phone scene");E01AudioScene.release(t);
    }
    private static void phoneStall(){
        AudioManager manager=new AudioManager();AudioTrack t=track(manager,"PHONE",6);write(t,pcm(100,100));
        step(t,5900,0);check(held(manager,6),"phone tolerates pause before stall limit");
        step(t,200,0);check(!held(manager,6),"six-second nonprogressing phone playback releases focus");E01AudioScene.release(t);
    }
    private static void reporter(){
        final List<String> lines=new ArrayList<String>();AudioManager manager=new AudioManager();AudioTrack t=new AudioTrack();
        check(E01AudioScene.register(manager,t,"NAVIGATION",10,new kotlin.jvm.functions.Function1<Object,Object>(){
            public Object invoke(Object value){lines.add(String.valueOf(value));return null;}
        }),"production reporter overload registers");
        check(lines.isEmpty(),"idle registration has no scene report");write(t,pcm(10,100));
        check(lines.size()==1&&lines.get(0).startsWith("[音频场景]"),"actual focus request enters bounded report path");
        for(int i=0;i<1000;i++)write(t,pcm(10,100));check(lines.size()==1,"reporter not called per PCM");
        E01AudioScene.release(t);check(lines.size()==2,"one release transition reported");
        AudioTrack faulty=new AudioTrack();check(E01AudioScene.register(manager,faulty,"ASSISTANT",9,new kotlin.jvm.functions.Function1<Object,Object>(){
            public Object invoke(Object value){throw new IllegalStateException("log receiver unavailable");}
        }),"throwing reporter registers");
        write(faulty,pcm(10,100));check(held(manager,9),"reporting exception cannot break granted audio scene");E01AudioScene.release(faulty);
        check(manager.owners.isEmpty(),"reporting exception cannot prevent focus cleanup");
    }
    private static void allRefused(){
        AudioManager manager=new AudioManager();AudioTrack nav=track(manager,"NAVIGATION",10);write(nav,pcm(100,100));
        AudioTrack siri=track(manager,"ASSISTANT",9);manager.reject=true;write(siri,pcm(100,100));
        check(!held(manager,9)&&!held(manager,10),"all denied candidates remain unowned");
        int count=manager.requests.size();check(count<=3,"one higher and one fallback attempt, bounded in same transition");
        for(int i=0;i<1000;i++){write(nav,pcm(10,100));write(siri,pcm(10,100));}
        check(manager.requests.size()==count,"all-denied phrases cannot retry on every PCM packet");
        E01AudioScene.release(siri);E01AudioScene.release(nav);manager.reject=false;
        AudioTrack fresh=track(manager,"NAVIGATION",10);write(fresh,pcm(10,100));check(held(manager,10),"future phrase remains usable after full denial");E01AudioScene.release(fresh);
    }
    private static void diagnosticScope(){
        AudioManager manager=new AudioManager();AudioTrack media=track(manager,"MEDIA",3),siri=track(manager,"ASSISTANT",9),phone=track(manager,"PHONE",6);
        write(media,pcm(100,100));write(siri,pcm(100,100));write(phone,pcm(100,100));
        check(E01AudioMixDiagnostic.calls==0,"media/Siri/phone focus do not poll mixing settings");
        E01AudioScene.release(phone);E01AudioScene.release(siri);E01AudioScene.release(media);
        AudioTrack nav=track(manager,"NAVIGATION",10);write(nav,pcm(100,100));check(E01AudioMixDiagnostic.calls==1,"NAV transition reads evidence");
        AudioManager.Request owner=last(manager);int initial=android.util.Log.entries.size();
        for(int i=0;i<100;i++)owner.listener.onAudioFocusChange(-3);
        check(android.util.Log.entries.size()==initial+1,"repeated CAN_DUCK logs once per lease state");
        owner.listener.onAudioFocusChange(1);owner.listener.onAudioFocusChange(-3);
        check(android.util.Log.entries.size()==initial+2,"GAIN resets focus-event diagnostic suppression");
        check(E01AudioMixDiagnostic.calls==1,"focus callbacks do not reread Settings");E01AudioScene.release(nav);
    }

    private static final class Renderer { final AudioTrack track;Renderer(AudioTrack t){track=t;} }
    private static final class Sink { final java.util.Map<Integer,Renderer> audioRenderers=new java.util.concurrent.ConcurrentHashMap<Integer,Renderer>(); }
    private static Sink sink(AudioTrack... values){Sink s=new Sink();for(int i=0;i<values.length;i++)s.audioRenderers.put(i,new Renderer(values[i]));return s;}
    private static void quietNavigationTail(){
        AudioManager m=new AudioManager();AudioTrack nav=track(m,"NAVIGATION",10);write(nav,pcm(100,1000));
        for(int i=1;i<=1200;i++){write(nav,pcm(100,17));step(nav,100,i*100);}
        check(!held(m,10)&&requests(m,10)==1,"two minutes of decoder residue must neither hold nor reopen NAV focus");
        write(nav,pcm(100,100));check(held(m,10)&&requests(m,10)==2,"quiet but valid next voice still acquires focus");E01AudioScene.release(nav);
        AudioTrack assistant=track(m,"ASSISTANT",9);write(assistant,pcm(100,17));check(held(m,9),"Siri detector floor unchanged");E01AudioScene.release(assistant);
    }
    private static void promptEnd(){
        AudioManager m=new AudioManager();AudioTrack nav=track(m,"NAVIGATION",10),music=track(m,"MEDIA",3);Sink s=sink(nav,music);
        write(music,pcm(100,1000));write(nav,pcm(100,1000));E01AudioScene.prompt(s,"unduckAudio");
        step(nav,500,50);check(held(m,10),"protocol end preserves buffered tail during one-second grace");
        for(int i=1;i<=20;i++){E01AudioScene.prompt(s,"unduckAudio");write(nav,pcm(100,100));step(nav,100,50+i*100);}
        check(!held(m,10)&&held(m,3),"duplicate unduck cannot extend noisy tail forever and leaves media owner");
        int before=requests(m,10);E01AudioScene.prompt(s,"duckAudio");write(nav,pcm(100,1000));
        check(held(m,10)&&requests(m,10)==before+1,"next duck/PCM opens next phrase normally");E01AudioScene.release(nav);E01AudioScene.release(music);
    }
    private static void promptOverlap(){
        AudioManager m=new AudioManager();AudioTrack nav=track(m,"NAVIGATION",10);Sink first=sink(nav);
        write(nav,pcm(100,100));E01AudioScene.prompt(first,"unduckAudio");SystemClock.now+=500;E01AudioScene.prompt(first,"duckAudio");
        for(int i=1;i<=15;i++){write(nav,pcm(100,100));step(nav,100,i*100);}
        check(held(m,10)&&requests(m,10)==1,"back-to-back next duck cancels old scheduled end without focus churn");
        E01AudioScene.prompt(sink(),"unduckAudio");E01AudioScene.prompt(new Object(),"unduckAudio");E01AudioScene.prompt(first,"modesChanged");
        write(nav,pcm(100,100));step(nav,1500,1500);check(held(m,10),"empty old sink and unrelated commands do not end current NAV");
        AudioTrack siri=track(m,"ASSISTANT",9);write(siri,pcm(100,100));E01AudioScene.prompt(sink(siri),"unduckAudio");
        write(siri,pcm(100,100));step(siri,1500,50);check(held(m,9),"NAV unduck does not shorten Siri");E01AudioScene.release(siri);E01AudioScene.release(nav);
    }
    private static void idleAbandonRetry(){
        AudioManager m=new AudioManager();AudioTrack nav=track(m,"NAVIGATION",10);write(nav,pcm(100,100));m.rejectAbandon=true;E01AudioScene.release(nav);
        check(held(m,10),"cleanup failure retains old owner after final track closes");m.rejectAbandon=false;SystemClock.now+=600;E01AudioScene.maintain();
        check(m.owners.isEmpty(),"existing OEM worker can retry with no renderer left");
        int count=m.abandoned.size();E01AudioScene.maintain();check(m.abandoned.size()==count,"idle maintenance is inert after cleanup succeeds");
    }
    private static void abandonReturn(){
        AudioManager m=new AudioManager();AudioTrack nav=track(m,"NAVIGATION",10);write(nav,pcm(100,100));m.rejectAbandon=true;E01AudioScene.release(nav);
        check(held(m,10),"failed abandon result must not be called success");
        AudioTrack next=track(m,"NAVIGATION",10);write(next,pcm(100,100));check(requests(m,10)==1,"do not acquire a second NAV while failed owner still needs cleanup");
        m.rejectAbandon=false;step(next,600,0);check(requests(m,10)==2&&held(m,10),"existing loop retries old release before new phrase takes ownership");E01AudioScene.release(next);check(m.owners.isEmpty(),"recovered session leaves no focus owner");
    }

    public static void main(String[] args)throws Exception{
        AudioSceneTest.class.getDeclaredMethod(args[0]).invoke(null);
        System.out.println("PASS "+args[0]+" "+checks);
    }
}
