package com.shilapi.xcertplay;

/** Initial timing windows plus one-minute summaries. No media contents or addresses. */
public final class E01IngressEvidence {
    static final long WINDOW_NS=10000000000L, LIMIT_NS=90000000000L;
    private static final long BASE_NS=System.nanoTime();
    private final int consumerTid;
    private final long started, base;
    private final String identity=E01VideoEvidence.identity();
    private final String screen;
    private final E01FrameTiming arrivalTiming=new E01FrameTiming(), senderTiming=new E01FrameTiming();
    private long summaryWindow, summaryFrames, summaryBytes, summaryReadMax, summaryArrivalMax, summarySenderMax, summaryEmpty, summaryFull;
    private long summarySenderAtGap=-1, summaryOver50, summaryOver100;
    private int summaryReadBytes, summaryReports;
    private Summary summary,timingSummary;
    static final class Summary {
        final String identity,screen;final int tid,readBytes;final long span,frames,bytes,arrival,sender,read,empty,full,senderAtGap,over50,over100;
        final E01FrameTiming.Snapshot arrivalTiming,senderTiming;
        Summary(E01IngressEvidence e,long now){
            identity=e.identity;screen=e.screen;tid=e.consumerTid;span=now-e.summaryWindow;frames=e.summaryFrames;bytes=e.summaryBytes;
            arrival=e.summaryArrivalMax;sender=e.summarySenderMax;read=e.summaryReadMax;empty=e.summaryEmpty;full=e.summaryFull;
            senderAtGap=e.summarySenderAtGap;over50=e.summaryOver50;over100=e.summaryOver100;readBytes=e.summaryReadBytes;
            arrivalTiming=e.arrivalTiming.snapshotAndReset();senderTiming=e.senderTiming.snapshotAndReset();
        }
        String format(){return identity+" reader="+tid+" spanMs="+millis(span)+" frames="+frames
            +" fps="+String.format(java.util.Locale.US,"%.1f",frames*1e9/span)
            +" bytes="+bytes+" arrivalMaxMs="+millis(arrival)+" senderStepMaxMs="+millis(sender)
            +" readMaxMs="+millis(read)+" emptyMs="+millis(empty)+" fullMs="+millis(full)
            +" senderAtGapMs="+millis(senderAtGap)+" gapsOver50="+over50+" gapsOver100="+over100+" readMaxBytes="+readBytes+" screen="+screen;}
        String timing(){return "timing "+identity+" reader="+tid+" screen="+screen+" spanMs="+millis(span)
            +" histUs=n/p95u/p99u/max/gt50/gt100 "+arrivalTiming.format("arrival")+" "+senderTiming.format("sender")
            +" arrivalMaxMs="+millis(arrival)+" senderAtGapMs="+millis(senderAtGap);}
    }
    private long window, lastSuccess, lastFrame, lastSender;
    private int reports;
    private long sourceCalls, bytes, sourceErrors, packets, frames, configs, other, bodyMax;
    private long missingPts, reversePts, senderStepMax, senderStepAtGap=-1;
    private final Metric read=new Metric(), sourceGap=new Metric(), empty=new Metric(), full=new Metric(), frameGap=new Metric();
    static final class Metric {
        long count,total,max,from,to;
        void add(long start,long end){if(start<=0||end<start)return;long n=end-start;count++;total+=n;if(n>max){max=n;from=start;to=end;}}
        long[] values(){return new long[]{count,total,max,from,to};}
        void reset(){count=total=max=from=to=0;}
    }
    public E01IngressEvidence(){this(0);}
    E01IngressEvidence(int screenType){this(android.os.Process.myTid(),System.nanoTime(),BASE_NS,screenType);}
    E01IngressEvidence(int tid,long now,long epoch){this(tid,now,epoch,0);}
    E01IngressEvidence(int tid,long now,long epoch,int screenType){consumerTid=tid;started=window=summaryWindow=now;base=epoch;screen=screenType==110||screenType==111?Integer.toString(screenType):"unknown";}
    private boolean collecting(long now){return now>=started;}
    public synchronized void sourceRead(long begin,long end,int count){
        if(!collecting(end))return;
        sourceCalls++;read.add(begin,end);
        if(end>=begin && end-begin>summaryReadMax){summaryReadMax=end-begin;summaryReadBytes=count;}
        if(count>0)summaryBytes+=count;
        if(count>0){bytes+=count;if(lastSuccess>0)sourceGap.add(lastSuccess,end);lastSuccess=end;}
        else if(count<-1)sourceErrors++;
    }
    public synchronized void emptyWait(long begin,long end){if(collecting(end)){empty.add(begin,end);if(end>=begin)summaryEmpty+=end-begin;}}
    public synchronized void fullWait(long begin,long end){if(collecting(end)){full.add(begin,end);if(end>=begin)summaryFull+=end-begin;}}
    public synchronized void packet(int type,long sender,int bodyLength,long now){
        if(!collecting(now))return;
        packets++;bodyMax=Math.max(bodyMax,Math.max(0,bodyLength));
        if(type==1){configs++;return;}if(type!=0){other++;return;}frames++;
        long step=-1;
        if(sender<=0)missingPts++;
        else if(lastSender>0){if(sender<=lastSender)reversePts++;else{step=sender-lastSender;senderStepMax=Math.max(senderStepMax,step);}}
        if(lastFrame>0){long gap=now-lastFrame;if(gap>frameGap.max)senderStepAtGap=step;frameGap.add(lastFrame,now);}
        summaryFrames++;
        if(lastFrame>0){long gap=now-lastFrame;
            // Complete-frame observations include the previous parser/listener work;
            // this is an arrival interval, not a network-only latency measurement.
            arrivalTiming.add(gap);
            if(gap>summaryArrivalMax){summaryArrivalMax=gap;summarySenderAtGap=step;}
            if(gap>50000000L)summaryOver50++;if(gap>100000000L)summaryOver100++;
        }
        if(step>0){summarySenderMax=Math.max(summarySenderMax,step);senderTiming.add(step);}
        lastFrame=now;lastSender=sender>0?sender:0;
    }
    /** Must be called outside the byte ring monitor; worker threads never call this. */
    public String reportIfDue(long now){
        final long[] values,r,g,e,f,v;final int sample;
        synchronized(this){
            if(!collecting(now))return null;
            // Match the decoder's three startup windows before reducing persistent IO.
            // A delayed observation produces one real elapsed window, never catch-up samples.
            long summaryInterval=summaryReports<3?WINDOW_NS:60000000000L;
            if(now-summaryWindow>=summaryInterval){
                summary=new Summary(this,now);timingSummary=summary;summaryReports++;
                summaryWindow=now;summaryFrames=summaryBytes=summaryReadMax=summaryArrivalMax=summarySenderMax=summaryEmpty=summaryFull=0;
                summarySenderAtGap=-1;summaryOver50=summaryOver100=0;summaryReadBytes=0;
            }
            long interval=reports<9&&now-started<=LIMIT_NS?WINDOW_NS:60000000000L;
            if(now-window<interval)return null;
            sample=++reports;
            values=new long[]{window,now,sourceCalls,bytes,sourceErrors,packets,frames,configs,other,bodyMax,missingPts,reversePts,senderStepMax,senderStepAtGap};
            r=read.values();g=sourceGap.values();e=empty.values();f=full.values();v=frameGap.values();
            window=now;sourceCalls=bytes=sourceErrors=packets=frames=configs=other=bodyMax=missingPts=reversePts=senderStepMax=0;senderStepAtGap=-1;
            read.reset();sourceGap.reset();empty.reset();full.reset();frameGap.reset();
        }
        // Formatting and the caller's Log.i both execute outside the statistics monitor.
        return "ingress tid="+consumerTid+" sample="+sample+" baseNs="+base+" winMs="+relative(values[0])+".."+relative(values[1])
            +" readCalls="+values[2]+" bytes="+values[3]+" readErrors="+values[4]
            +" readTotalMs="+millis(r[1])+" readMax="+range(r)+" sourceGap="+range(g)
            +" empty="+waits(e)+" full="+waits(f)
            +" packets="+values[5]+" frames="+values[6]+" configs="+values[7]+" other="+values[8]+" bodyMax="+values[9]
            +" frameGap="+range(v)+" senderStepAtGapMs="+millis(values[13])+" senderStepMaxMs="+millis(values[12])
            +" missingPts="+values[10]+" nonIncreasingPts="+values[11];
    }
    /** Consume on the existing stream worker, then persist outside both monitors. */
    String takeSummary(){
        final Summary value;synchronized(this){value=summary;summary=null;}
        return value==null?null:value.format();
    }
    /** Separate bounded line keeps the existing summary within the log line cap. */
    String takeTimingSummary(){
        final Summary value;synchronized(this){value=timingSummary;timingSummary=null;}
        return value==null?null:value.timing();
    }
    private String waits(long[] v){return v[0]+"/"+millis(v[1])+"/"+range(v);}
    private String range(long[] v){return millis(v[2])+"@"+(v[3]==0?"-":relative(v[3])+".."+relative(v[4]));}
    private long relative(long n){return(n-base)/1000000L;}
    private static long millis(long n){return n<0?-1:n/1000000L;}
}
