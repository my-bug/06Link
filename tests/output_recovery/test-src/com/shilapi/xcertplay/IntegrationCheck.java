package com.shilapi.xcertplay;
import android.app.*;import android.view.*;import android.media.*;import android.widget.*;
public class IntegrationCheck{
 static int checks;static void ok(boolean b){checks++;if(!b)throw new AssertionError("check "+checks);}
 public static class Sink{public int clears;public Surface old,active;public void clearSurface(int type,Surface s){if(type==110&&s==active){clears++;old=s;active=null;}}}
 public static class Owner extends Activity{public Surface currentSurface;public Object currentSurfaceTexture;public View videoView;public Sink sink=new Sink();public boolean sessionForce30Fps;public TextureView.SurfaceTextureListener textureListener=new TextureView.SurfaceTextureListener(){};int attaches,width,height;private void attachSurface(Surface s){if(s!=currentSurface)throw new AssertionError();attaches++;sink.active=s;}private void scheduleDisplaySize(int w,int h){width=w;height=h;}}
 public static class Decoder{private MediaCodec decoder;Decoder(MediaCodec c){decoder=c;}}
 static void prefs(Owner o,int fps){o.getSharedPreferences("xcertplay_airplay",0).values.put("display_fps_mode","manual");o.getSharedPreferences("xcertplay_airplay",0).values.put("display_fps",fps);}
 static byte[] header(){long n=2000000000L;byte[] b=new byte[128];for(int i=0;i<8;i++)b[8+i]=(byte)(n>>>(i*8));return b;}
 public static void main(String[] args){
  Owner owner=new Owner();prefs(owner,30);E01SmoothVideo.negotiatedFps(owner,30);View old=E01SmoothVideo.create(owner);owner.videoView=old;ok(old instanceof TextureView);ok(((TextureView)old).listener==owner.textureListener);ok(!E01SmoothVideo.recreateIfNeeded(owner));
  Surface texture=new Surface();E01SmoothVideo.registerTexture(owner,texture);MediaCodec normal=new MediaCodec();MediaFormat tuned=new MediaFormat();E01SmoothVideo.configure(normal,tuned,texture,true);ok(tuned.values.get("vdec-lowlatency")==1);ok(!E01SmoothVideo.STATES.containsKey(normal));E01SmoothVideo.releaseSurface(texture);ok(texture.released==1);
  MediaFormat minimal=new MediaFormat();E01SmoothVideo.configure(new MediaCodec(),minimal,texture,false);ok(minimal.values.isEmpty());MediaCodec qcom=new MediaCodec();qcom.name="OMX.qcom.video.decoder.avc";MediaFormat other=new MediaFormat();E01SmoothVideo.configure(qcom,other,texture,true);ok(other.values.isEmpty());
  owner.getSharedPreferences(E01SmoothVideo.PREF,0).values.put("smooth",true);ok(E01SmoothVideo.recreateIfNeeded(owner));ok(owner.recreates==1);
  FrameLayout main=(FrameLayout)E01SmoothVideo.create(owner);owner.videoView=main;ok(!E01SmoothVideo.recreateIfNeeded(owner));SurfaceView view=(SurfaceView)main.child;view.holder.callback.surfaceCreated(view.holder);view.holder.callback.surfaceChanged(view.holder,0,1920,720);Surface surface=view.holder.surface;ok(owner.currentSurface==surface&&owner.attaches==1&&owner.width==1920&&owner.height==720);
  MediaCodec paced=new MediaCodec();E01SmoothVideo.configure(paced,new MediaFormat(),surface,true);ok(E01SmoothVideo.STATES.get(paced).clock.delay()==140000000L);
  prefs(owner,60);E01SmoothVideo.negotiatedFps(owner,60);MediaCodec sixty=new MediaCodec();E01SmoothVideo.configure(sixty,new MediaFormat(),surface,true);ok(E01SmoothVideo.STATES.get(sixty).output.fps==60);ok(E01SmoothVideo.STATES.get(sixty).clock.delay()==90000000L);
  prefs(owner,30);E01SmoothVideo.negotiatedFps(owner,30);MediaCodec thirtyAgain=new MediaCodec();E01SmoothVideo.configure(thirtyAgain,new MediaFormat(),surface,true);ok(E01SmoothVideo.STATES.get(thirtyAgain).output.fps==30);ok(E01SmoothVideo.STATES.get(thirtyAgain).clock.delay()==140000000L);
  owner.getSharedPreferences("xcertplay_airplay",0).values.put("display_fps_mode","auto");E01SmoothVideo.negotiatedFps(owner,30);MediaCodec auto=new MediaCodec();E01SmoothVideo.configure(auto,new MediaFormat(),surface,true);ok(E01SmoothVideo.STATES.get(auto).output.fps==30);prefs(owner,60);
  // The clock must follow the negotiated fallback, even when manual preference is 60.
  E01SmoothVideo.negotiatedFps(owner,30);MediaCodec fallback=new MediaCodec();E01SmoothVideo.configure(fallback,new MediaFormat(),surface,true);ok(E01SmoothVideo.STATES.get(fallback).output.fps==30&&E01SmoothVideo.STATES.get(fallback).clock.delay()==140000000L);
  E01SmoothVideo.negotiatedFps(owner,60);MediaCodec retried=new MediaCodec();E01SmoothVideo.configure(retried,new MediaFormat(),surface,true);ok(E01SmoothVideo.STATES.get(retried).output.fps==60&&E01SmoothVideo.STATES.get(retried).clock.delay()==90000000L);
  // An existing codec keeps its own clock when settings for a later session change.
  ok(E01SmoothVideo.STATES.get(fallback).output.fps==30);
  byte[] frame=new byte[]{0,0,0,1,101};E01SmoothVideo.packet(header());E01SmoothVideo.stamp(frame);ok(E01SmoothVideo.STAMPS.containsKey(frame));long pts=E01SmoothVideo.presentation(new Decoder(sixty),frame);ok(!E01SmoothVideo.STAMPS.containsKey(frame));ok(E01SmoothVideo.STATES.get(sixty).entries.containsKey(pts));MediaCodec.BufferInfo info=new MediaCodec.BufferInfo();info.presentationTimeUs=pts;ok(E01SmoothVideo.take(sixty,info)==4);ok(E01SmoothVideo.take(normal,info)==99);E01SmoothVideo.release(sixty,4,true,info);ok(sixty.timedReleases==1&&sixty.boolReleases==0);ok(!E01SmoothVideo.STATES.get(sixty).entries.containsKey(pts));
  E01SmoothVideo.release(sixty,5,true,info);ok(sixty.boolReleases==1);E01SmoothVideo.release(sixty,6,false,info);ok(sixty.boolReleases==2);
  Surface cluster=new Surface();MediaCodec clusterCodec=new MediaCodec();MediaFormat clusterFormat=new MediaFormat();E01SmoothVideo.configure(clusterCodec,clusterFormat,cluster,true);ok(clusterFormat.values.isEmpty());ok(!E01SmoothVideo.STATES.containsKey(clusterCodec));
  E01SmoothVideo.releaseSurface(surface);ok(surface.released==0);
  // A late destroy callback must not detach a newer main surface.
  FrameLayout newer=(FrameLayout)E01SmoothVideo.create(owner);SurfaceView next=(SurfaceView)newer.child;next.holder.callback.surfaceCreated(next.holder);Surface current=owner.currentSurface;view.holder.callback.surfaceDestroyed(view.holder);ok(owner.currentSurface==current&&owner.sink.clears==0);next.holder.callback.surfaceDestroyed(next.holder);ok(owner.currentSurface==null&&owner.sink.clears==1&&owner.sink.old==current);
  owner.getSharedPreferences(E01SmoothVideo.PREF,0).values.put("mtk",false);MediaFormat off=new MediaFormat();E01SmoothVideo.configure(new MediaCodec(),off,texture,true);ok(off.values.isEmpty());
  System.out.println("PASS "+checks+" bridge/lifecycle/configuration checks (fake Android APIs; not device rendering)");
 }
}
