package com.shilapi.xcertplay;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES11Ext;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.Locale;

/** Candidate only: one GL context, direct external-texture draw, owner-safe window retirement. */
public final class E01GlOutput {
    public interface Callback {
        void ready(Surface decoderSurface);
        void failed(Throwable error);
    }
    private final Context context;
    private final Surface window;
    private final Callback callback;
    final Object lock=new Object();
    private final HandlerThread workerThread;
    private final Handler worker;
    private volatile boolean closing,cleaned,windowRetired;
    private boolean pending,broken,failureDelivered,eglInitialized,tickScheduled;
    private Throwable failure;
    private int codecRefs,fps=60,windowWidth=1,windowHeight=1;
    private long generation,nextTickNs,formatCutoffNs,lastTimestamp=Long.MIN_VALUE;
    private EGLDisplay egl=EGL14.EGL_NO_DISPLAY;
    private EGLConfig config;
    private EGLContext eglContext=EGL14.EGL_NO_CONTEXT;
    private EGLSurface windowEgl=EGL14.EGL_NO_SURFACE,pbuffer=EGL14.EGL_NO_SURFACE;
    private int oes;
    private SurfaceTexture texture;
    private Surface input;
    private Quad quad;
    private final float[] transform=new float[16];
    // The existing evidence tools can snapshot these counters. copied/copyDone remain zero: there
    // is no intermediate RGBA copy in this arm. swapped counts unique input images.
    private long updated,copied,copyDone,swapped,callbacks,noSlot,overwritten,fenceMiss;
    private long updateMax,copyMax,swapMax,drawMax,tickMax,callbackGapMax,lastCallbackNs;
    private long frameEvents,mergedEvents,noFrameTicks,duplicateStamps,staleStamps;
    private long pendingSinceNs,pendingWaitTotalNs,pendingWaitMaxNs,pendingWaitCount,drawTotalNs,swapTotalNs,workOverruns;
    private long reportAt,reportUpdated,reportSwapped,reportCallbacks,reportEvents,reportMerged,reportEmpty,reportDuplicates,reportStale;
    private int reports;

    public E01GlOutput(Context context,Surface window,Callback callback){
        if(window==null||callback==null)throw new IllegalArgumentException("Missing output owner");
        this.context=context.getApplicationContext();this.window=window;this.callback=callback;
        workerThread=new HandlerThread("06Link-direct-oes",android.os.Process.THREAD_PRIORITY_DISPLAY);
        workerThread.setDaemon(true);workerThread.start();worker=new Handler(workerThread.getLooper());
        worker.post(new Runnable(){public void run(){start();}});
    }
    public void resizeWindow(int width,int height){
        if(width<=0||height<=0)return;
        synchronized(lock){windowWidth=width;windowHeight=height;}
    }
    public void setFormat(int width,int height,int fps){
        if(width<=0||height<=0)throw new IllegalArgumentException("Invalid video size");
        synchronized(lock){
            generation++;this.fps=fps>=60?60:30;lastTimestamp=Long.MIN_VALUE;formatCutoffNs=System.nanoTime();
            reports=0;reportAt=0;reportUpdated=updated;reportSwapped=swapped;reportCallbacks=callbacks;
            reportEvents=frameEvents;reportMerged=mergedEvents;reportEmpty=noFrameTicks;reportDuplicates=duplicateStamps;reportStale=staleStamps;
            updateMax=0;drawMax=0;swapMax=0;tickMax=0;callbackGapMax=0;lastCallbackNs=0;
            pendingWaitTotalNs=0;pendingWaitMaxNs=0;pendingWaitCount=0;drawTotalNs=0;swapTotalNs=0;workOverruns=0;
        }
        // Codec controls the SurfaceTexture buffer size; do not substitute the view size.
        synchronized(lock){if(!closing&&!cleaned)E01DisplayClock.acquire(context,this,this.fps);}
    }
    public void retainCodec(){
        synchronized(lock){if(closing||cleaned)throw new IllegalStateException("OES surface is retiring");codecRefs++;}
    }
    public void releaseCodec(){
        synchronized(lock){if(codecRefs<=0)throw new IllegalStateException("OES codec ownership underflow");codecRefs--;}
        // Clock restoration follows pending window work on the GL owner thread.
        worker.post(new Runnable(){public void run(){
            synchronized(lock){if(codecRefs==0&&!closing)E01DisplayClock.release(E01GlOutput.this);}
            if(closing)finishIfPossible();
        }});
    }
    /** Nonblocking. The codec input stays alive until its owner stops/releases it. */
    public void close(){requestStop(null,false);}
    public void abort(Throwable error){requestStop(error==null?new IllegalStateException("OES aborted"):error,false);}
    private void requestStop(Throwable error,boolean consumerFault){
        synchronized(lock){
            if(error!=null&&!closing&&failure==null)failure=error;
            if(consumerFault)broken=true;
            closing=true;
        }
        worker.post(new Runnable(){public void run(){retireWindow();}});
    }
    private void start(){
        if(closing){retireWindow();return;}
        try{
            egl=EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY);
            if(egl==EGL14.EGL_NO_DISPLAY)throw new IllegalStateException("OES EGL display");
            int[] values=new int[2];check(EGL14.eglInitialize(egl,values,0,values,1),"OES EGL initialize");eglInitialized=true;
            if(!createContext(3))check(createContext(2),"OES EGL context");
            // Same context can keep consuming codec input after its window disconnects.
            pbuffer=EGL14.eglCreatePbufferSurface(egl,config,new int[]{EGL14.EGL_WIDTH,1,EGL14.EGL_HEIGHT,1,EGL14.EGL_NONE},0);
            if(pbuffer==EGL14.EGL_NO_SURFACE)throw new IllegalStateException("OES drain pbuffer");
            windowEgl=EGL14.eglCreateWindowSurface(egl,config,window,new int[]{EGL14.EGL_NONE},0);
            if(windowEgl==EGL14.EGL_NO_SURFACE)throw new IllegalStateException("OES EGL window");
            check(EGL14.eglMakeCurrent(egl,windowEgl,windowEgl,eglContext),"OES EGL current");
            check(EGL14.eglSwapInterval(egl,0),"OES interval0");
            int[] size=new int[1];
            if(EGL14.eglQuerySurface(egl,windowEgl,EGL14.EGL_WIDTH,size,0))synchronized(lock){windowWidth=Math.max(1,size[0]);}
            if(EGL14.eglQuerySurface(egl,windowEgl,EGL14.EGL_HEIGHT,size,0))synchronized(lock){windowHeight=Math.max(1,size[0]);}
            GLES20.glGenTextures(1,size,0);oes=size[0];GLES20.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES,oes);
            GLES20.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES,GLES20.GL_TEXTURE_MIN_FILTER,GLES20.GL_LINEAR);
            GLES20.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES,GLES20.GL_TEXTURE_MAG_FILTER,GLES20.GL_LINEAR);
            GLES20.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES,GLES20.GL_TEXTURE_WRAP_S,GLES20.GL_CLAMP_TO_EDGE);
            GLES20.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES,GLES20.GL_TEXTURE_WRAP_T,GLES20.GL_CLAMP_TO_EDGE);
            quad=new Quad();texture=new SurfaceTexture(oes);
            texture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener(){
                public void onFrameAvailable(SurfaceTexture ignored){
                    synchronized(lock){if(cleaned||broken)return;frameEvents++;if(pending)mergedEvents++;else pendingSinceNs=System.nanoTime();pending=true;}
                    scheduleNext();
                }
            },worker);
            input=new Surface(texture);
            if(closing){retireWindow();return;}
            callback.ready(input);
            E01VideoEvidence.decision(context,"GL ready path=oes context=single interval=0 driver=frame-event noRGBAcopy noExplicitFence");
            nextTickNs=0;scheduleNext();
        }catch(Throwable error){requestStop(error,false);}
    }
    private boolean createContext(int version){
        int[] attrs={EGL14.EGL_RED_SIZE,8,EGL14.EGL_GREEN_SIZE,8,EGL14.EGL_BLUE_SIZE,8,EGL14.EGL_ALPHA_SIZE,8,
            EGL14.EGL_RENDERABLE_TYPE,version==3?0x40:EGL14.EGL_OPENGL_ES2_BIT,
            EGL14.EGL_SURFACE_TYPE,EGL14.EGL_WINDOW_BIT|EGL14.EGL_PBUFFER_BIT,EGL14.EGL_NONE};
        EGLConfig[] found=new EGLConfig[1];int[] count=new int[1];
        if(!EGL14.eglChooseConfig(egl,attrs,0,found,0,1,count,0)||count[0]==0)return false;
        EGLContext candidate=EGL14.eglCreateContext(egl,found[0],EGL14.EGL_NO_CONTEXT,
            new int[]{EGL14.EGL_CONTEXT_CLIENT_VERSION,version,EGL14.EGL_NONE},0);
        if(candidate==EGL14.EGL_NO_CONTEXT)return false;config=found[0];eglContext=candidate;return true;
    }
    // The GL worker owns the one queued tick. A ready frame wakes it directly; an idle
    // stream has no polling timer. Cap render starts, not work-completion + another slot.
    private void scheduleNext(){
        long now=System.nanoTime(),due;
        synchronized(lock){
            if(cleaned||broken||(closing&&codecRefs==0)||!pending||tickScheduled)return;
            due=Math.max(now,nextTickNs);tickScheduled=true;
        }
        worker.postDelayed(tick,(due-now+999999)/1000000);
    }
    private final Runnable tick=new Runnable(){public void run(){
        long start=System.nanoTime(),period;
        synchronized(lock){
            tickScheduled=false;
            if(cleaned||broken)return;
            if(!pending){noFrameTicks++;return;}
            period=1000000000L/fps;nextTickNs=start+period;callbacks++;
            if(lastCallbackNs!=0)callbackGapMax=Math.max(callbackGapMax,start-lastCallbackNs);lastCallbackNs=start;
        }
        if(closing&&finishIfPossible())return;
        try{
            renderIfPending();
            synchronized(lock){long work=System.nanoTime()-start;tickMax=Math.max(tickMax,work);if(work>period)workOverruns++;}
            report();
        }catch(Throwable error){requestStop(error,true);return;}
        // If work ran past the limit, the next ready frame runs immediately ONCE.
        // Never skip forward to a future slot or replay old missed deadlines.
        scheduleNext();
    }};
    private void renderIfPending(){
        int width,height;long currentGeneration;
        synchronized(lock){
            if(!pending){noFrameTicks++;return;}
            pending=false;width=windowWidth;height=windowHeight;currentGeneration=generation;
            long age=Math.max(0,System.nanoTime()-pendingSinceNs);pendingWaitTotalNs+=age;pendingWaitMaxNs=Math.max(pendingWaitMaxNs,age);pendingWaitCount++;
        }
        long start=System.nanoTime();texture.updateTexImage();
        long timestamp=texture.getTimestamp();texture.getTransformMatrix(transform);long now=System.nanoTime();
        synchronized(lock){
            updateMax=Math.max(updateMax,now-start);
            if(currentGeneration!=generation)return;
            // This bridge's owner releases codec output with System.nanoTime(), not
            // stream PTS. Drop already-queued input from the preceding configure.
            if(timestamp<formatCutoffNs){staleStamps++;return;}
            if(timestamp==lastTimestamp){duplicateStamps++;return;}
            lastTimestamp=timestamp;
            if(reportAt==0){reportAt=now;reportCallbacks=callbacks;reportEvents=frameEvents;reportEmpty=noFrameTicks;reportMerged=mergedEvents;}
            updated++;if(closing)return;
        }
        start=System.nanoTime();GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER,0);
        GLES20.glViewport(0,0,width,height);quad.draw(oes,transform);
        checkGl("OES draw");long swapStart=System.nanoTime();
        check(EGL14.eglSwapBuffers(egl,windowEgl),"OES swap");long end=System.nanoTime();
        synchronized(lock){swapped++;drawTotalNs+=swapStart-start;swapTotalNs+=end-swapStart;drawMax=Math.max(drawMax,swapStart-start);swapMax=Math.max(swapMax,end-swapStart);}
    }
    private void report(){
        long now=System.nanoTime();String text,timing;
        synchronized(lock){long span=now-reportAt;if(reportAt==0||reports>=3||span<10000000000L)return;
            text=String.format(Locale.US,"GL sample=%d path=oes gen=%d fps=%d spanMs=%d updatedFps=%.1f swapFps=%.1f cbFps=%.1f events=%d merged=%d empty=%d duplicate=%d stale=%d",
                reports+1,generation,fps,span/1000000,(updated-reportUpdated)*1e9/span,(swapped-reportSwapped)*1e9/span,(callbacks-reportCallbacks)*1e9/span,
                frameEvents-reportEvents,mergedEvents-reportMerged,noFrameTicks-reportEmpty,duplicateStamps-reportDuplicates,staleStamps-reportStale);
            timing=String.format(Locale.US,"GL timing=%d path=oes gen=%d updateMaxMs=%d drawMaxMs=%d swapMaxMs=%d tickMaxMs=%d gapMaxMs=%d eventWaitAvgMs=%.1f eventWaitMaxMs=%d drawAvgMs=%.1f swapAvgMs=%.1f workOverruns=%d",
                reports+1,generation,
                updateMax/1000000,drawMax/1000000,swapMax/1000000,tickMax/1000000,callbackGapMax/1000000,
                pendingWaitTotalNs/1e6/Math.max(1,pendingWaitCount),pendingWaitMaxNs/1000000,
                drawTotalNs/1e6/Math.max(1,swapped-reportSwapped),swapTotalNs/1e6/Math.max(1,swapped-reportSwapped),workOverruns);
            reports++;reportAt=now;reportUpdated=updated;reportSwapped=swapped;reportCallbacks=callbacks;
            reportEvents=frameEvents;reportMerged=mergedEvents;reportEmpty=noFrameTicks;reportDuplicates=duplicateStamps;reportStale=staleStamps;
            updateMax=0;drawMax=0;swapMax=0;tickMax=0;callbackGapMax=0;
            pendingWaitTotalNs=0;pendingWaitMaxNs=0;pendingWaitCount=0;drawTotalNs=0;swapTotalNs=0;workOverruns=0;
        }
        E01VideoEvidence.decision(context,text);
        E01VideoEvidence.decision(context,timing);
        E01DisplayState.captureOnce(context);
    }
    /** Runs only on worker. Disconnect window before failed(), even with live codecs. */
    private void retireWindow(){
        if(cleaned)return;
        if(!windowRetired){
            worker.removeCallbacks(tick);tickScheduled=false;
            try{
                if(eglContext!=EGL14.EGL_NO_CONTEXT){
                    // Complete this context's prior reads before moving to the drain surface.
                    GLES20.glFinish();
                    if(pbuffer==EGL14.EGL_NO_SURFACE||!EGL14.eglMakeCurrent(egl,pbuffer,pbuffer,eglContext))
                        throw new IllegalStateException("OES drain current");
                }
            }catch(Throwable error){
                // A normal close must not turn into a fallback callback. Existing
                // startup/render/abort failures were already saved by requestStop.
                synchronized(lock){broken=true;}
                if(egl!=EGL14.EGL_NO_DISPLAY)EGL14.eglMakeCurrent(egl,EGL14.EGL_NO_SURFACE,EGL14.EGL_NO_SURFACE,EGL14.EGL_NO_CONTEXT);
            }finally{
                if(windowEgl!=EGL14.EGL_NO_SURFACE){
                    EGL14.eglDestroySurface(egl,windowEgl);windowEgl=EGL14.EGL_NO_SURFACE;
                }
                windowRetired=true;
                E01DisplayClock.release(this);
            }
        }
        // A failed updateTexImage cannot drain. Abandon only after the window is gone
        // so native stop/dequeue can fail promptly, then let the owner release its codec.
        if(broken)releaseInput();
        Throwable reason;
        synchronized(lock){reason=!failureDelivered?failure:null;if(reason!=null)failureDelivered=true;}
        if(reason!=null)try{callback.failed(reason);}catch(Throwable ignored){}
        if(!finishIfPossible()&&!broken){
            worker.removeCallbacks(tick);tickScheduled=false;nextTickNs=0;scheduleNext();
        }
    }
    private boolean finishIfPossible(){
        synchronized(lock){
            if(cleaned)return true;
            if(!closing||!windowRetired||codecRefs!=0)return false;
            cleaned=true;
        }
        worker.removeCallbacks(tick);tickScheduled=false;
        try{
            if(eglContext!=EGL14.EGL_NO_CONTEXT&&pbuffer!=EGL14.EGL_NO_SURFACE){
                EGL14.eglMakeCurrent(egl,pbuffer,pbuffer,eglContext);GLES20.glFinish();
            }
            releaseInput();if(quad!=null)quad.close();if(oes!=0)GLES20.glDeleteTextures(1,new int[]{oes},0);
        }catch(Throwable ignored){}
        finally{
            releaseInput();
            if(egl!=EGL14.EGL_NO_DISPLAY){
                EGL14.eglMakeCurrent(egl,EGL14.EGL_NO_SURFACE,EGL14.EGL_NO_SURFACE,EGL14.EGL_NO_CONTEXT);
                if(windowEgl!=EGL14.EGL_NO_SURFACE)EGL14.eglDestroySurface(egl,windowEgl);
                if(pbuffer!=EGL14.EGL_NO_SURFACE)EGL14.eglDestroySurface(egl,pbuffer);
                if(eglContext!=EGL14.EGL_NO_CONTEXT)EGL14.eglDestroyContext(egl,eglContext);
                if(eglInitialized){EGL14.eglTerminate(egl);eglInitialized=false;}
            }
            windowEgl=EGL14.EGL_NO_SURFACE;pbuffer=EGL14.EGL_NO_SURFACE;eglContext=EGL14.EGL_NO_CONTEXT;
            workerThread.quitSafely();
        }
        return true;
    }
    private void releaseInput(){
        if(texture!=null){try{texture.setOnFrameAvailableListener(null);}catch(Throwable ignored){}
            try{texture.release();}catch(Throwable ignored){}texture=null;}
        if(input!=null){try{input.release();}catch(Throwable ignored){}input=null;}
    }
    private static void check(boolean ok,String stage){if(!ok)throw new IllegalStateException(stage+" error=0x"+Integer.toHexString(EGL14.eglGetError()));}
    private static void checkGl(String stage){int e=GLES20.glGetError();if(e!=GLES20.GL_NO_ERROR)throw new IllegalStateException(stage+" error=0x"+Integer.toHexString(e));}
    private static final class Quad {
        final int program,position,uv,matrix,sampler;
        final FloatBuffer positions=buffer(new float[]{-1,-1,1,-1,-1,1,1,1});
        final FloatBuffer coords=buffer(new float[]{0,0,1,0,0,1,1,1});
        Quad(){
            String vertex="attribute vec2 aPosition;attribute vec2 aUV;uniform mat4 uMatrix;varying vec2 vUV;void main(){gl_Position=vec4(aPosition,0.0,1.0);vUV=(uMatrix*vec4(aUV,0.0,1.0)).xy;}";
            String fragment="#extension GL_OES_EGL_image_external : require\nprecision highp float;varying vec2 vUV;uniform samplerExternalOES uTexture;void main(){gl_FragColor=texture2D(uTexture,vUV);}";
            int vs=shader(GLES20.GL_VERTEX_SHADER,vertex),fs=0,p=0;
            try{fs=shader(GLES20.GL_FRAGMENT_SHADER,fragment);p=GLES20.glCreateProgram();GLES20.glAttachShader(p,vs);GLES20.glAttachShader(p,fs);GLES20.glLinkProgram(p);
                int[] status=new int[1];GLES20.glGetProgramiv(p,GLES20.GL_LINK_STATUS,status,0);if(status[0]==0)throw new IllegalStateException("OES shader link");
            }catch(RuntimeException e){if(p!=0)GLES20.glDeleteProgram(p);throw e;}
            finally{GLES20.glDeleteShader(vs);if(fs!=0)GLES20.glDeleteShader(fs);}
            program=p;position=GLES20.glGetAttribLocation(p,"aPosition");uv=GLES20.glGetAttribLocation(p,"aUV");matrix=GLES20.glGetUniformLocation(p,"uMatrix");sampler=GLES20.glGetUniformLocation(p,"uTexture");
        }
        void draw(int texture,float[] transform){
            GLES20.glUseProgram(program);GLES20.glActiveTexture(GLES20.GL_TEXTURE0);GLES20.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES,texture);
            GLES20.glUniform1i(sampler,0);GLES20.glUniformMatrix4fv(matrix,1,false,transform,0);positions.position(0);coords.position(0);
            GLES20.glEnableVertexAttribArray(position);GLES20.glEnableVertexAttribArray(uv);
            GLES20.glVertexAttribPointer(position,2,GLES20.GL_FLOAT,false,0,positions);GLES20.glVertexAttribPointer(uv,2,GLES20.GL_FLOAT,false,0,coords);
            GLES20.glDrawArrays(GLES20.GL_TRIANGLE_STRIP,0,4);GLES20.glDisableVertexAttribArray(position);GLES20.glDisableVertexAttribArray(uv);
        }
        void close(){GLES20.glDeleteProgram(program);}
        private static int shader(int type,String source){int s=GLES20.glCreateShader(type);GLES20.glShaderSource(s,source);GLES20.glCompileShader(s);int[] status=new int[1];GLES20.glGetShaderiv(s,GLES20.GL_COMPILE_STATUS,status,0);if(status[0]==0){GLES20.glDeleteShader(s);throw new IllegalStateException("OES shader compile");}return s;}
        private static FloatBuffer buffer(float[] values){FloatBuffer b=ByteBuffer.allocateDirect(values.length*4).order(ByteOrder.nativeOrder()).asFloatBuffer();b.put(values).position(0);return b;}
    }
}
