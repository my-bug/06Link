package com.shilapi.xcertplay;

import android.os.SystemClock;
import java.util.ArrayList;

/** Test-only deterministic sleep. The production source is compiled without edits.
 * Package lookup selects this class only in the virtual-time test compile.
 * A second compile of the helper excludes this class and uses java.lang.Thread.
 */
class Thread extends java.lang.Thread {
    private static final Object SCHEDULER=new Object();
    private static final ArrayList<Thread> ALL=new ArrayList<Thread>();
    private boolean sleeping, completed;
    private long due;
    Thread(Runnable body,String name){super(body,name);synchronized(SCHEDULER){ALL.add(this);}}
    @Override public void run(){try{super.run();}finally{synchronized(SCHEDULER){completed=true;SCHEDULER.notifyAll();}}}
    public static void sleep(long millis)throws InterruptedException {
        Thread self=(Thread)java.lang.Thread.currentThread();
        synchronized(SCHEDULER){
            self.due=SystemClock.time+millis;self.sleeping=true;SCHEDULER.notifyAll();
            try{while(SystemClock.time<self.due)SCHEDULER.wait();}
            finally{self.sleeping=false;SCHEDULER.notifyAll();}
        }
    }
    static void advanceTo(long time)throws Exception {
        if(time<SystemClock.time)throw new AssertionError("Clock cannot move backwards");
        synchronized(SCHEDULER){SystemClock.time=time;SCHEDULER.notifyAll();}
        awaitIdle();
    }
    static void awaitIdle()throws Exception {
        long timeout=System.nanoTime()+3000000000L;
        synchronized(SCHEDULER){
            while(true){
                boolean idle=true;
                for(Thread worker:ALL)if(!worker.completed&&!(worker.sleeping&&worker.due>SystemClock.time)){idle=false;break;}
                if(idle)return;
                if(System.nanoTime()>timeout)throw new AssertionError("Worker failed to reach virtual sleep/finish");
                SCHEDULER.wait(10);
            }
        }
    }
    static void reset()throws Exception {
        ArrayList<Thread> workers;
        synchronized(SCHEDULER){workers=new ArrayList<Thread>(ALL);}
        for(Thread worker:workers){worker.interrupt();worker.join(3000);if(worker.isAlive())throw new AssertionError("Worker leaked");}
        synchronized(SCHEDULER){ALL.clear();SystemClock.time=0;}
    }
}
