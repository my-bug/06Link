package com.shilapi.xcertplay;

import android.opengl.FakeGpu;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.LockSupport;

/** Executes the real GL scheduler with a deterministic fake driver cost, not a device FPS benchmark. */
public final class GlEventCheck {
    static int checks;
    static void ok(boolean value,String message){checks++;if(!value)throw new AssertionError(message);}
    static void setDeadline(E01GlOutput output,long value)throws Exception{
        Field f=E01GlOutput.class.getDeclaredField("nextTickNs");f.setAccessible(true);
        synchronized(output.lock){f.setLong(output,value);}
    }
    static double busyDriver(long workNs,int fps)throws Exception{
        FakeGpu.reset();
        try(GlCheck.Run r=new GlCheck.Run(false)){
            r.out.setFormat(1920,720,fps);FakeGpu.drawDelayNs=workNs;
            AtomicBoolean stop=new AtomicBoolean();
            Thread producer=new Thread(()->{
                while(!stop.get()){
                    r.callback.input.texture.emit(System.nanoTime());
                    LockSupport.parkNanos(2000000L);
                }
            },"test-producer");
            producer.start();
            try{
                GlCheck.await(()->FakeGpu.swapped.get()>=5,"scheduler warms up");
                int before=FakeGpu.swapped.get();long start=System.nanoTime();
                Thread.sleep(1200);
                double rate=(FakeGpu.swapped.get()-before)*1e9/(System.nanoTime()-start);
                System.out.printf(java.util.Locale.US,"fake-driver work=%.1fms selected=%d rate=%.1f/s%n",workNs/1e6,fps,rate);
                return rate;
            }finally{
                stop.set(true);producer.join(1000);ok(!producer.isAlive(),"producer ends cleanly");
                FakeGpu.drawDelayNs=0;
            }
        }
    }
    public static void main(String[]args)throws Exception{
        FakeGpu.reset();
        try(GlCheck.Run r=new GlCheck.Run(true)){
            ok(r.worker.pendingDisplayTimers()==0,"idle GL has no 60Hz polling");
            r.emit(1);
            ok(r.worker.pendingDisplayTimers()==1&&r.worker.lastDisplayDelayMs()==0,"first available frame schedules immediately");
            r.tick();
            for(long work:new long[]{17000000L,20000000L}){
                long period=1000000000L/60;
                // The previous frame began work ago. Its deadline is now overdue.
                long now=System.nanoTime(),oldDeadline=now-work+period;
                setDeadline(r.out,oldDeadline);
                r.emit(work);
                ok(r.worker.lastDisplayDelayMs()==0,"over-budget work does not add an idle slot at "+work);
                long oldFuture=oldDeadline+((now-oldDeadline)/period+1)*period;
                ok(oldFuture-now>=13000000L,"old scheduler would waste another13-16ms");
                r.emit(work+1);
                ok(r.worker.pendingDisplayTimers()==1,"burst events coalesce into one queued draw");
                r.tick();
                ok(r.worker.pendingDisplayTimers()==0,"no catchup burst after overdue frame");
            }
            long before=GlCheck.number(r.out,"callbacks");
            Thread.sleep(80);r.tick();
            ok(GlCheck.number(r.out,"callbacks")==before,"stream pause does not poll or redraw");
            r.emit(30000000);ok(r.worker.lastDisplayDelayMs()==0,"late arrival after idle never waits anotherperiod");r.tick();
            for(int fps:new int[]{30,60,30,60}){
                r.out.setFormat(1920,720,fps);r.emit(40000000+fps);r.tick();
                ok(GlCheck.number(r.out,"nextTickNs")-GlCheck.number(r.out,"lastCallbackNs")==1000000000L/fps,"selected cap changes to "+fps);
            }
            r.out.retainCodec();r.emit(99999999);r.out.close();GlCheck.on(r.worker,()->{});
            // A queued frame may be rescheduled once to drain on the retired pbuffer.
            r.tick();ok(r.worker.pendingDisplayTimers()==0,"close leaves no recurring drain timer");
            int drained=FakeGpu.pbufferUpdates.get();
            r.emit(100000000);r.tick();
            ok(FakeGpu.pbufferUpdates.get()==drained+1,"late producer frame drains without an idle timer");
            r.out.releaseCodec();GlCheck.await(()->FakeGpu.activeContexts.get()==0,"last reference cleans up without a timer");
        }
        double seventeen=busyDriver(17000000L,60);
        double twenty=busyDriver(20000000L,60);
        ok(seventeen>43&&seventeen<=61,"17ms driver is no longer quantized to30fps");
        ok(twenty>40&&twenty<=52,"20ms driver approaches capacity without extra slot wait");
        double sixty=busyDriver(0,60),thirty=busyDriver(0,30);
        ok(sixty>50&&sixty<=61,"continuous burst input obeys60 upper bound");
        ok(thirty>26&&thirty<=31,"continuous burst input obeys30 upper bound");
        System.out.println("PASS "+checks+" real scheduler event wake/cap/overrun/cleanup checks (fake EGL driver; not vehicle FPS)");
    }
}
