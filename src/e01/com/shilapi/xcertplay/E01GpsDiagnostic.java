package com.shilapi.xcertplay;

import android.Manifest;
import android.content.Context;
import android.content.pm.PackageManager;
import android.location.LocationManager;
import android.os.SystemClock;
import java.io.File;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

/** Passive, finite location-delivery evidence. Never retains positions or NMEA text. */
public final class E01GpsDiagnostic {
    static final long WINDOW_MS=180000, PERIOD_MS=15000;
    private static final Object LOCK=new Object();
    private static State current;
    private static long nextGeneration;
    private static final class Frame {
        final WeakReference<Object> object; final boolean position;
        Frame(Object o,boolean p){object=new WeakReference<Object>(o);position=p;}
    }
    private static final class State {
        final long generation, attachedAt;
        final Context context;
        final ArrayList<WeakReference<Object>> providers=new ArrayList<WeakReference<Object>>();
        final ArrayList<WeakReference<Object>> reporters=new ArrayList<WeakReference<Object>>();
        final ArrayList<Frame> frames=new ArrayList<Frame>();
        Thread worker; boolean finished, started, stopped, inherited;
        long requestedAt=-1, nextReportAt, fixAt=-1, fixAge;
        int requests, stops, issue, samples, submitted, noFix, positionFrames;
        int messages, queued, sent, acked, positionAcked, retries, noAck, aborted, lost, tcp, tcpNoAck;
        int summaries; String source="未知"; float accuracy=-1;
        State(Object provider,Context c,long now,long g){
            context=c;attachedAt=now;generation=g;add(providers,provider);
        }
    }
    private static long now(){return SystemClock.elapsedRealtime();}
    private static boolean has(ArrayList<WeakReference<Object>> refs,Object object){
        if(object==null)return false;
        for(Iterator<WeakReference<Object>> i=refs.iterator();i.hasNext();){Object p=i.next().get();if(p==null)i.remove();else if(p==object)return true;}
        return false;
    }
    private static void add(ArrayList<WeakReference<Object>> refs,Object object){
        if(object!=null&&!has(refs,object)){if(refs.size()==16)refs.remove(0);refs.add(new WeakReference<Object>(object));}
    }
    private static boolean alive(State s,long t){return s!=null&&!s.finished&&t-(s.requestedAt<0?s.attachedAt:s.requestedAt)<WINDOW_MS;}
    private static State provider(Object p){return alive(current,now())&&has(current.providers,p)?current:null;}
    private static State reporter(Object r){return collecting(current,now())&&has(current.reporters,r)?current:null;}
    private static boolean collecting(State s,long t){return s!=null&&!s.finished&&s.requestedAt>=0&&t-s.requestedAt<WINDOW_MS;}
    public static boolean isCollecting(){try{synchronized(LOCK){return collecting(current,now());}}catch(Throwable ignored){return false;}}
    public static long generation(){try{synchronized(LOCK){return current==null?0:current.generation;}}catch(Throwable ignored){return 0;}}

    public static void attached(Object provider,Context context){
        try{
            if(provider==null||context==null)return;
            Context app=context.getApplicationContext();if(app==null)app=context;
            final State state;
            synchronized(LOCK){
                if(current!=null){current.finished=true;if(current.worker!=null)current.worker.interrupt();}
                state=new State(provider,app,now(),++nextGeneration);current=state;
                state.worker=new Thread(new Runnable(){public void run(){observe(state);}},"06Link-GPS-diagnostic");
                state.worker.setDaemon(true);
            }
            state.worker.start();
        }catch(Throwable ignored){}
    }
    public static void providerAlias(Object outer,Object inner){try{synchronized(LOCK){State s=provider(inner);if(s!=null)add(s.providers,outer);}}catch(Throwable ignored){}}
    public static void request(Object reporter,Object provider,int action){
        try{synchronized(LOCK){State s=provider(provider);if(s==null)return;add(s.reporters,reporter);
            if(action==0){s.stops++;return;}
            if(action!=1&&action!=2)return;
            s.requests++;s.inherited|=action==2;
            if(s.requestedAt<0){s.requestedAt=now();s.nextReportAt=s.requestedAt+PERIOD_MS;}
        }}catch(Throwable ignored){}
    }
    public static void providerStarted(Object p,boolean started){try{synchronized(LOCK){State s=provider(p);if(s!=null){s.started=started;s.stopped=false;}}}catch(Throwable ignored){}}
    public static void providerStopped(Object p){try{synchronized(LOCK){State s=provider(p);if(s!=null){s.stopped=true;s.started=false;}}}catch(Throwable ignored){}}
    public static void providerIssue(Object p,String source,int reason){try{synchronized(LOCK){State s=provider(p);if(s!=null&&reason>=1&&reason<=4)s.issue=reason;}}catch(Throwable ignored){}}
    public static void fix(Object p,String source,long age,float accuracy,boolean hasAccuracy){try{synchronized(LOCK){State s=provider(p);if(collecting(s,now())){
        s.samples++;s.source=safeSource(source);s.fixAt=now();s.fixAge=Math.max(0,age);
        s.accuracy=hasAccuracy&&!Float.isNaN(accuracy)&&!Float.isInfinite(accuracy)&&accuracy>=0?Math.min(accuracy,999999):-1;
    }}}catch(Throwable ignored){}}
    private static String safeSource(String s){return "gps".equals(s)||"network".equals(s)||"fused".equals(s)?s:"其他";}
    public static void noFix(Object r){try{synchronized(LOCK){State s=reporter(r);if(s!=null)s.noFix++;}}catch(Throwable ignored){}}
    public static void submitted(Object r){try{synchronized(LOCK){State s=reporter(r);if(s!=null)s.submitted++;}}catch(Throwable ignored){}}

    /** Inspect only the validity marker; retain the frame identity and a boolean, never the text. */
    public static void framePrepared(Object reporter,Object frame,String nmea){try{
        final State observed;
        synchronized(LOCK){observed=reporter(reporter);if(!collecting(observed,now())||frame==null)return;}
        boolean position=containsPosition(nmea);
        synchronized(LOCK){State s=current;if(s!=observed||!collecting(s,now()))return;
            for(Iterator<Frame> i=s.frames.iterator();i.hasNext();)if(i.next().object.get()==null)i.remove();
            if(s.frames.size()==64)s.frames.remove(0);s.frames.add(new Frame(frame,position));if(position)s.positionFrames++;
        }
    }catch(Throwable ignored){}}
    public static boolean hasPosition(Object frame){try{synchronized(LOCK){State s=current;if(!collecting(s,now()))return false;
        for(Frame f:s.frames)if(f.object.get()==frame)return f.position;
    }}catch(Throwable ignored){}return false;}
    static boolean containsPosition(String text){
        if(text==null||text.length()>16384)return false;
        int offset=0;
        for(int sentences=0;sentences<16&&offset<text.length();sentences++){
            int end=text.indexOf('\n',offset);if(end<0)end=text.length();
            String line=text.substring(offset,end);offset=end+1;
            if(line.endsWith("\r"))line=line.substring(0,line.length()-1);
            if(line.length()<12||line.length()>256||line.charAt(0)!='$')continue;
            int star=line.indexOf('*');if(star<0||star+3!=line.length())continue;
            int a=Character.digit(line.charAt(star+1),16),b=Character.digit(line.charAt(star+2),16);
            if(a<0||b<0)continue;
            int checksum=0;for(int i=1;i<star;i++)checksum^=line.charAt(i);
            if(checksum!=(a*16+b))continue;
            String[] fields=line.substring(1,star).split(",",-1);
            if(fields.length<7)continue;
            if((fields[0].equals("GPRMC")||fields[0].equals("GNRMC"))&&fields[2].equals("A")
                &&coordinate(fields[3],fields[4],true)&&coordinate(fields[5],fields[6],false))return true;
            if((fields[0].equals("GPGGA")||fields[0].equals("GNGGA"))&&fields[6].length()==1
                &&fields[6].charAt(0)>='1'&&fields[6].charAt(0)<='8'
                &&coordinate(fields[2],fields[3],true)&&coordinate(fields[4],fields[5],false))return true;
        }return false;
    }
    private static boolean coordinate(String value,String direction,boolean latitude){
        if(!(latitude?("N".equals(direction)||"S".equals(direction)):("E".equals(direction)||"W".equals(direction))))return false;
        int digits=latitude?4:5,dot=value.indexOf('.');
        if(value.length()>20||(dot>=0?(dot!=digits||dot==value.length()-1):value.length()!=digits))return false;
        for(int i=0;i<value.length();i++)if(i!=dot&&(value.charAt(i)<'0'||value.charAt(i)>'9'))return false;
        try{double x=Double.parseDouble(value);int degrees=(int)(x/100);double minutes=x-degrees*100;
            return minutes>=0&&minutes<60&&degrees<=(latitude?90:180)&&(degrees!=(latitude?90:180)||minutes==0);
        }catch(NumberFormatException ignored){return false;}
    }
    public static void linkEvent(String event,long generation,long messageId,int fragments,int acked,int sequence){
        try{synchronized(LOCK){State s=current;if(!collecting(s,now())||generation!=s.generation)return;
            if("link_message".equals(event))s.messages++;
            else if("link_queued".equals(event))s.queued++;
            else if("link_sent".equals(event))s.sent++;
            else if("link_acked".equals(event)&&fragments>0&&fragments==acked)s.acked++;
            else if("link_position_acked".equals(event)&&fragments>0&&fragments==acked)s.positionAcked++;
            else if("link_retry".equals(event))s.retries++;
            else if("link_no_ack".equals(event))s.noAck++;
            else if("link_aborted".equals(event))s.aborted++;
            else if("link_tracking_lost".equals(event))s.lost++;
            else if("link_tcp_message".equals(event))s.tcp++;
            else if("link_tcp_no_ack".equals(event))s.tcpNoAck++;
            // Partial ACK is deliberately not counted as delivery of a position message.
        }}catch(Throwable ignored){}
    }
    private static String environment(Context context){
        try{
            boolean fine=context.checkCallingOrSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION)==PackageManager.PERMISSION_GRANTED;
            boolean coarse=context.checkCallingOrSelfPermission(Manifest.permission.ACCESS_COARSE_LOCATION)==PackageManager.PERMISSION_GRANTED;
            LocationManager m=(LocationManager)context.getSystemService(Context.LOCATION_SERVICE);
            boolean gps=m!=null&&m.isProviderEnabled("gps"),network=m!=null&&m.isProviderEnabled("network");
            return "权限="+(fine?"精确":coarse?"粗略":"无")+" GPS="+(gps?"开":"关")+" 网络定位="+(network?"开":"关");
        }catch(Throwable ignored){return "定位系统状态=读取失败";}
    }
    private static String snapshot(State s,long t,boolean end){
        String fix=s.fixAt<0?"尚无有效位置":s.source+" 样本龄="+Math.min(9999999,s.fixAge+Math.max(0,t-s.fixAt))+"ms 精度="+(s.accuracy<0?"未知":Math.round(s.accuracy)+"m");
        String error=s.issue==1?"订阅失败":s.issue==2?"权限拒绝":s.issue==3?"编码失败":s.issue==4?"启动异常":"无";
        return (end?"结束 ":"统计 ")+(Math.max(0,t-(s.requestedAt<0?s.attachedAt:s.requestedAt))/1000)+"s 手机请求="+(s.requests==0?"未收到":s.inherited?"已继承":"已收到")+
            " 停止请求="+s.stops+" 定位服务="+(s.stopped?"已停":s.started?"已启动":"未启动")+" "+fix+
            " 有效取样="+s.samples+" 无位置="+s.noFix+" 提交="+s.submitted+" 含位置="+s.positionFrames+
            " 入队="+s.queued+" 链路待发="+s.sent+" 完整ACK="+s.acked+" 含位置ACK="+s.positionAcked+
            " 无ACK链路="+s.noAck+" 重传="+s.retries+" 中止="+s.aborted+" 跟踪丢失="+s.lost+" 错误="+error+"；高德采用=未验证";
    }
    private static void observe(State s){
        try{
            write(s,"开始 等待手机定位请求（最长180s）；收到后统计180s。"+environment(s.context));
            while(true){
                String row=null;boolean end;long delay;
                synchronized(LOCK){
                    if(current!=s||s.finished)return;
                    long t=now();long start=s.requestedAt<0?s.attachedAt:s.requestedAt;
                    long deadline=start+WINDOW_MS;
                    end=t>=deadline;
                    if(end){row=snapshot(s,deadline,true);s.finished=true;s.frames.clear();}
                    else if(s.requestedAt>=0&&t>=s.nextReportAt&&s.summaries<11){
                        row=snapshot(s,t,false);s.summaries++;s.nextReportAt=t+PERIOD_MS;
                    }
                    long target=s.requestedAt<0?Math.min(deadline,t+PERIOD_MS):Math.min(deadline,s.nextReportAt);
                    delay=Math.max(1,target-t);
                }
                if(row!=null)write(s,row);
                if(end)return;
                Thread.sleep(delay);
            }
        }catch(InterruptedException ignored){
            // Replaced connection generation: no stale evidence is written into the new session.
        }catch(Throwable ignored){
        }finally{synchronized(LOCK){s.finished=true;s.frames.clear();}}
    }
    private static void write(State s,String text){
        // This method is called only by the bounded worker, never under a transport/state lock.
        E01LogPolicy.install(s.context);
        String time=new SimpleDateFormat("HH:mm:ss",Locale.US).format(new Date());
        E01LogPolicy.append(new File(s.context.getFilesDir(),"06link.log"),time+" [定位诊断] #"+s.generation+" "+text);
    }
    private E01GpsDiagnostic(){}
}
