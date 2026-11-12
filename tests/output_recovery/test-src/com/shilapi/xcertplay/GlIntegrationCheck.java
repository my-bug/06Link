package com.shilapi.xcertplay;
import android.app.Activity;import android.media.*;import android.view.Surface;import android.opengl.FakeGpu;
public final class GlIntegrationCheck{
 static int checks;static void ok(boolean b,String m){checks++;if(!b)throw new AssertionError(m);}
 static class BrokenCodec extends MediaCodec{public void releaseOutputBuffer(int i,long t){throw new IllegalStateException("synthetic release failure");}}
 static MediaFormat format(){MediaFormat f=new MediaFormat();f.setInteger("width",1920);f.setInteger("height",720);return f;}
 public static void main(String[]args)throws Exception{
  FakeGpu.reset();GlCheck.Run run=new GlCheck.Run();Activity a=new Activity();Surface input=run.callback.input;
  E01SmoothVideo.OWNED_INPUTS.put(input,Boolean.TRUE);E01SmoothVideo.OUTPUTS.put(input,new E01SmoothVideo.Output(a,60,true,run.out));E01SmoothVideo.negotiatedFps(a,60);
  MediaCodec c=new MediaCodec();c.queued=true;E01SmoothVideo.configure(c,format(),input,true);E01SmoothVideo.State state=E01SmoothVideo.STATES.get(c);ok(E01SmoothVideo.dedicated(c),"GL uses independent output");
  long now=System.nanoTime();state.entries.put(1L,new E01SmoothVideo.Entry(now-500000000L,now-400000000L));state.entries.put(2L,new E01SmoothVideo.Entry(now-480000000L,now-380000000L));c.add(1,1,0);c.add(2,2,0);MediaCodec.BufferInfo info=new MediaCodec.BufferInfo();
  int index=E01SmoothVideo.take(c,info);ok(index==1&&state.decoded==1&&state.skipped==0,"GL does not coalesce first late frame before consumer");long before=System.nanoTime();E01SmoothVideo.release(c,index,true,info);long after=System.nanoTime();ok(c.target>=before&&c.target<=after,"GL intermediate timestamp immediate");ok(state.outputCount==1,"successful rendering counted");
  index=E01SmoothVideo.take(c,info);ok(index==2&&state.decoded==2&&state.skipped==0,"second late frame independently drains");E01SmoothVideo.release(c,index,false,info);ok(state.outputCount==1&&c.falseReleases==1,"false release never counted as rendered");
  BrokenCodec broken=new BrokenCodec();E01SmoothVideo.configure(broken,format(),input,true);try{E01SmoothVideo.release(broken,0,true,new MediaCodec.BufferInfo());throw new AssertionError("must fail");}catch(IllegalStateException expected){}ok(E01SmoothVideo.STATES.get(broken).outputCount==0,"failed native release never counted");E01SmoothVideo.forget(broken);
  try{E01SmoothVideo.configure(new MediaCodec(),new MediaFormat(),input,true);throw new AssertionError("missing format must fail");}catch(NullPointerException expected){}ok(true,"failed configure handled");
  E01SmoothVideo.negotiatedFps(a,30);E01SmoothVideo.configure(c,format(),input,true);ok(E01SmoothVideo.STATES.get(c).output.fps==30,"negotiated FPS updates bridge");
  E01SmoothVideo.releaseSurface(input);ok(!input.texture.released,"surface close waits for active codec");E01VideoOutput.release(c);GlCheck.await(()->input.texture.released,"codec release closes GL input");ok(c.releases==1&&c.stops==1,"native codec released exactly once before input");E01SmoothVideo.releaseSurface(input);ok(input.released==1,"late duplicate Surface release protected");try{E01SmoothVideo.configure(new MediaCodec(),format(),input,true);throw new AssertionError("retired input must reject configure");}catch(IllegalStateException expected){ok(true,"detached GL input cannot bypass bridge ownership");}
  GlCheck.await(()->FakeGpu.activeContexts.get()==0,"GL context cleanup after native codec");ok(FakeGpu.hazards.get()==0,"no integration GPU hazards");
  System.out.println("PASS "+checks+" GL codec integration/counter/format/refcount checks (fake Android APIs)");
 }
}
