package com.shilapi.xcertplay;

/** Initial timing windows plus one-minute summaries. No media contents or addresses. */
public final class E01IngressEvidence {
    static final long WINDOW_NS=10000000000L, LIMIT_NS=90000000000L;
    private static final long BASE_NS=System.nanoTime();
    private final int consumerTid;
    private final long started, base;
    private final String identity=E01VideoEvidence.identity();
    private long summaryWindow, summaryFrames, summaryBytes, summaryReadMax, summaryArrivalMax, summarySenderMax, summaryEmpty, summaryFull;
    private String summary;
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
    public E01IngressEvidence(){this(android.os.Process.myTid(),System.nanoTime(),BASE_NS);}
    E01IngressEvidence(int tid,long now,long epoch){consumerTid=tid;started=window=summaryWindow=now;base=epoch;}
    private boolean collecting(long now){return now>=started;}
    public synchronized void sourceRead(long begin,long end,int count){
        if(!collecting(end))return;
        sourceCalls++;read.add(begin,end);
        if(end>=begin)summaryReadMax=Math.max(summaryReadMax,end-begin);
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
        if(lastFrame>0)summaryArrivalMax=Math.max(summaryArrivalMax,now-lastFrame);
        if(step>0)summarySenderMax=Math.max(summarySenderMax,step);
        lastFrame=now;lastSender=sender>0?sender:0;
    }
    /** Must be called outside the byte ring monitor; worker threads never call this. */
    public String reportIfDue(long now){
        final long[] values,r,g,e,f,v;final int sample;
        synchronized(this){
            if(!collecting(now))return null;
            if(now-summaryWindow>=60000000000L){
                long span=now-summaryWindow;
                summary=identity+" reader="+consumerTid+" spanMs="+millis(span)+" frames="+summaryFrames
                    +" fps="+String.format(java.util.Locale.US,"%.1f",summaryFrames*1e9/span)
                    +" bytes="+summaryBytes+" arrivalMaxMs="+millis(summaryArrivalMax)+" senderStepMaxMs="+millis(summarySenderMax)
                    +" readMaxMs="+millis(summaryReadMax)+" emptyMs="+millis(summaryEmpty)+" fullMs="+millis(summaryFull);
                summaryWindow=now;summaryFrames=summaryBytes=summaryReadMax=summaryArrivalMax=summarySenderMax=summaryEmpty=summaryFull=0;
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
    synchronized String takeSummary(){String value=summary;summary=null;return value;}
    private String waits(long[] v){return v[0]+"/"+millis(v[1])+"/"+range(v);}
    private String range(long[] v){return millis(v[2])+"@"+(v[3]==0?"-":relative(v[3])+".."+relative(v[4]));}
    private long relative(long n){return(n-base)/1000000L;}
    private static long millis(long n){return n<0?-1:n/1000000L;}
}
