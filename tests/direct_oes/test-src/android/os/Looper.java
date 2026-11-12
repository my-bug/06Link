package android.os;
import java.util.concurrent.*;import java.util.*;
public class Looper{
 public static final ThreadLocal<Looper> LOCAL=new ThreadLocal<>();final DelayQueue<Job> jobs=new DelayQueue<>();volatile boolean quit;public final Thread owner;
 public Looper(Thread t){owner=t;}public static Looper myLooper(){return LOCAL.get();}private static final class Main{static final HandlerThread T=new HandlerThread("fake-main");static{T.start();}}public static Looper getMainLooper(){return Main.T.getLooper();}
 void loop(){LOCAL.set(this);while(!quit){try{Job j=jobs.take();if(!quit&&!j.cancel)j.run.run();}catch(InterruptedException e){}catch(Throwable t){t.printStackTrace();}}}
 static final class Job implements Delayed{final Runnable run;final long due;volatile boolean cancel;Job(Runnable r,long ms){run=r;due=System.nanoTime()+ms*1000000;}public long getDelay(TimeUnit u){return u.convert(due-System.nanoTime(),TimeUnit.NANOSECONDS);}public int compareTo(Delayed o){return Long.compare(due,((Job)o).due);}}
}

