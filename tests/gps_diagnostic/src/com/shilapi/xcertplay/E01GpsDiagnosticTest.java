package com.shilapi.xcertplay;

import android.content.Context;
import android.os.SystemClock;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/** No Android device, filesystem log writes, network, sleeps of real seconds or external libraries. */
public final class E01GpsDiagnosticTest {
    private static int assertions, scenarios;
    private static final String POSITION=sentence("GPRMC,120000.00,A,1234.5678,N,12345.6789,E,0.00,0.00,010100,,");
    private static final String SPEED=sentence("PASCD,120000.00,C,0,0.00");
    private static final String SECRET="PRIVATE-COORDINATE-1234.5678-12345.6789\nSECRET-EXCEPTION";
    private interface Test {void run()throws Exception;}

    public static void main(String[] args)throws Exception {
        try{
            run("provider and reporter identity, aliases and bounded weak identities",new Test(){public void run()throws Exception{identities();}});
            run("request, inherited request, stop and provider lifecycle",new Test(){public void run()throws Exception{lifecycle();}});
            run("strict 180s boundaries and repeated requests cannot extend collection",new Test(){public void run()throws Exception{deadlines();}});
            run("bounded weak frame cache and speed-only classification",new Test(){public void run()throws Exception{frames();}});
            run("old generations and callbacks cannot alter new connection",new Test(){public void run()throws Exception{generations();}});
            run("NMEA vectors, checksum, validity markers and parser bounds",new Test(){public void run()throws Exception{nmea();}});
            run("submission, transmission and partial ACK never imply position ACK",new Test(){public void run()throws Exception{ackEvidence();}});
            run("source, exception and coordinate data are absent from log",new Test(){public void run()throws Exception{privacy();}});
            run("worker-only logging, bounded wait/active windows and final summaries",new Test(){public void run()throws Exception{boundedLogging();}});
            System.out.println("PASS: "+scenarios+" scenarios, "+assertions+" assertions");
        }finally{Thread.reset();}
    }
    private static void run(String name,Test test)throws Exception{
        reset();test.run();Thread.awaitIdle();
        eq(0,E01LogPolicy.violations().size(),"all log calls obey thread/lock contract");
        scenarios++;System.out.println("PASS "+name);
    }
    private static void reset()throws Exception{
        Thread.reset();setStatic("current",null);setStatic("nextGeneration",Long.valueOf(0));E01LogPolicy.reset();
    }
    private static Object attach(Object provider,Context context)throws Exception{
        E01GpsDiagnostic.attached(provider,context);Thread.awaitIdle();return state();
    }
    private static Object attach(Object provider)throws Exception{return attach(provider,new Context());}
    private static Object active(Object provider,Object reporter)throws Exception{
        Object state=attach(provider);E01GpsDiagnostic.request(reporter,provider,1);return state;
    }
    private static void identities()throws Exception{
        Object provider=new EqualObject(),equalProvider=new EqualObject();
        Object reporter=new EqualObject(),equalReporter=new EqualObject();
        Object s=attach(provider),outer=new Object();
        E01GpsDiagnostic.providerStarted(equalProvider,true);
        eq(false,get(s,"started"),"equals() does not establish provider identity");
        E01GpsDiagnostic.request(reporter,equalProvider,1);
        eq(false,E01GpsDiagnostic.isCollecting(),"unregistered provider cannot start collection");
        E01GpsDiagnostic.providerAlias(outer,equalProvider);
        E01GpsDiagnostic.request(reporter,outer,1);
        eq(false,E01GpsDiagnostic.isCollecting(),"alias requires recognized inner identity");
        E01GpsDiagnostic.providerAlias(outer,provider);
        E01GpsDiagnostic.providerStarted(outer,true);
        E01GpsDiagnostic.request(reporter,outer,1);
        eq(true,E01GpsDiagnostic.isCollecting(),"outer provider alias starts collection");
        E01GpsDiagnostic.noFix(equalReporter);E01GpsDiagnostic.submitted(equalReporter);
        E01GpsDiagnostic.framePrepared(equalReporter,new Object(),POSITION);
        eq(0,get(s,"noFix"),"equals() does not establish reporter identity");
        eq(0,get(s,"submitted"),"unregistered reporter submission ignored");
        eq(0,list(s,"frames").size(),"unregistered reporter frame ignored");
        E01GpsDiagnostic.noFix(reporter);E01GpsDiagnostic.submitted(reporter);
        eq(1,get(s,"noFix"),"registered reporter records no fix");
        eq(1,get(s,"submitted"),"registered reporter records submission");
        Object inner=outer;
        ArrayList<Object> live=new ArrayList<Object>();
        for(int i=0;i<80;i++){
            Object alias=new Object();live.add(alias);E01GpsDiagnostic.providerAlias(alias,inner);inner=alias;
            Object nextReporter=new Object();live.add(nextReporter);E01GpsDiagnostic.request(nextReporter,inner,1);
        }
        eq(16,list(s,"providers").size(),"provider identities bounded");
        eq(16,list(s,"reporters").size(),"reporter identities bounded");
        for(Object reference:list(s,"providers"))check(reference instanceof WeakReference,"provider reference is weak");
        for(Object reference:list(s,"reporters"))check(reference instanceof WeakReference,"reporter reference is weak");
        long generation=E01GpsDiagnostic.generation();
        E01GpsDiagnostic.attached(null,new Context());E01GpsDiagnostic.attached(provider,null);
        eq(generation,E01GpsDiagnostic.generation(),"invalid attachment preserves generation");
    }
    private static void lifecycle()throws Exception{
        Object p=new Object(),r=new Object(),s=attach(p);
        E01GpsDiagnostic.fix(p,"gps",0,2,true);
        eq(0,get(s,"samples"),"pre-request fix ignored");
        E01GpsDiagnostic.request(r,p,0);
        eq(false,E01GpsDiagnostic.isCollecting(),"stop does not start collection");
        eq(0,get(s,"requests"),"stop is not a request");eq(1,get(s,"stops"),"stop is observable");
        E01GpsDiagnostic.request(r,p,99);
        eq(false,E01GpsDiagnostic.isCollecting(),"unknown action does not start collection");
        E01GpsDiagnostic.request(r,p,1);
        eq(true,E01GpsDiagnostic.isCollecting(),"explicit request starts collection");
        eq(false,get(s,"inherited"),"explicit request distinct from inherited request");
        check(snapshot(s).contains("手机请求=已收到"),"snapshot labels explicit request");
        E01GpsDiagnostic.providerStarted(p,true);eq(true,get(s,"started"),"provider starts");
        E01GpsDiagnostic.providerStopped(p);eq(true,get(s,"stopped"),"provider stop observed");
        E01GpsDiagnostic.providerStarted(p,false);eq(false,get(s,"stopped"),"new start attempt clears stopped state");
        E01GpsDiagnostic.request(r,p,0);eq(2,get(s,"stops"),"active-window stop observed");
        eq(1,get(s,"requests"),"active-window stop not request");
        E01GpsDiagnostic.providerIssue(p,SECRET,3);eq(3,get(s,"issue"),"recognized issue retained as number");
        E01GpsDiagnostic.providerIssue(p,SECRET,999);eq(3,get(s,"issue"),"unrecognized issue not retained");
        reset();p=new Object();r=new Object();s=attach(p);
        E01GpsDiagnostic.request(r,p,2);
        eq(true,E01GpsDiagnostic.isCollecting(),"inherited request starts collection");
        eq(true,get(s,"inherited"),"inherited request marked");
        check(snapshot(s).contains("手机请求=已继承"),"snapshot labels inheritance");
    }
    private static void deadlines()throws Exception{
        Object p=new Object(),r=new Object(),s=attach(p);
        SystemClock.time=180000; // Deliberately leave worker asleep: hook boundaries must enforce expiry themselves.
        E01GpsDiagnostic.request(r,p,1);
        eq(-1L,get(s,"requestedAt"),"request at wait deadline rejected before worker runs");
        eq(false,E01GpsDiagnostic.isCollecting(),"wait deadline is exclusive");
        Thread.advanceTo(180000);eq(true,get(s,"finished"),"wait deadline finishes worker");
        reset();p=new Object();r=new Object();s=attach(p);
        Thread.advanceTo(179999);E01GpsDiagnostic.request(r,p,1);
        eq(179999L,get(s,"requestedAt"),"last-millisecond request accepted");
        Thread.advanceTo(194999);E01GpsDiagnostic.request(r,p,1);E01GpsDiagnostic.request(r,p,2);
        eq(179999L,get(s,"requestedAt"),"repeated and inherited requests cannot extend deadline");
        Thread.advanceTo(359998);eq(true,E01GpsDiagnostic.isCollecting(),"active just before deadline");
        int requests=((Integer)get(s,"requests")).intValue();
        int samples=((Integer)get(s,"samples")).intValue();
        SystemClock.time=359999;
        E01GpsDiagnostic.request(r,p,1);E01GpsDiagnostic.fix(p,"gps",0,2,true);
        E01GpsDiagnostic.submitted(r);E01GpsDiagnostic.framePrepared(r,new Object(),POSITION);
        E01GpsDiagnostic.linkEvent("link_acked",E01GpsDiagnostic.generation(),1,1,1,7);
        eq(false,E01GpsDiagnostic.isCollecting(),"active deadline is exclusive");
        eq(requests,get(s,"requests"),"deadline request cannot restart collection");
        eq(samples,get(s,"samples"),"deadline fix rejected");
        eq(0,get(s,"submitted"),"deadline submission rejected");eq(0,get(s,"acked"),"deadline ACK rejected");
        eq(0,list(s,"frames").size(),"deadline frame rejected");
        Thread.advanceTo(400000);
        eq(true,get(s,"finished"),"late wake finishes current window");
        String last=lastLog();check(last.contains("结束 180s"),"late wake clamps end summary to 180s");
        int rows=E01LogPolicy.rows().size();Thread.advanceTo(800000);
        eq(rows,E01LogPolicy.rows().size(),"finished window never logs again");
    }
    private static void frames()throws Exception{
        Object p=new Object(),r=new Object(),s=active(p,r);
        ArrayList<Object> keepAlive=new ArrayList<Object>();
        for(int i=0;i<65;i++){Object f=new EqualObject();keepAlive.add(f);E01GpsDiagnostic.framePrepared(r,f,POSITION);}
        eq(64,list(s,"frames").size(),"frame cache bounded to 64");
        eq(false,E01GpsDiagnostic.hasPosition(keepAlive.get(0)),"oldest frame evicted");
        eq(true,E01GpsDiagnostic.hasPosition(keepAlive.get(64)),"latest frame retained");
        eq(false,E01GpsDiagnostic.hasPosition(new EqualObject()),"frame identity does not use equals()");
        Object frameRecord=list(s,"frames").get(0);
        check(get(frameRecord,"object") instanceof WeakReference,"frame object weakly held");
        for(Field field:frameRecord.getClass().getDeclaredFields())check(field.getType()!=String.class,"frame record never stores NMEA text");
        ((WeakReference<?>)get(frameRecord,"object")).clear(); // Deterministic weak-reference reclamation; no GC timing dependency.
        Object speed=new Object();E01GpsDiagnostic.framePrepared(r,speed,SPEED);
        eq(64,list(s,"frames").size(),"dead frame reclaimed before bounded insertion");
        eq(false,E01GpsDiagnostic.hasPosition(speed),"speed-only frame does not contain position");
        Object invalid=new Object();E01GpsDiagnostic.framePrepared(r,invalid,POSITION.replace("*", "*00"));
        eq(false,E01GpsDiagnostic.hasPosition(invalid),"bad-checksum frame rejected as position");
        eq(65,get(s,"positionFrames"),"only valid position frames counted");
        E01GpsDiagnostic.framePrepared(r,null,POSITION);eq(64,list(s,"frames").size(),"null frame ignored");
        Thread.advanceTo(180000);eq(0,list(s,"frames").size(),"terminal window releases frame cache");
        eq(false,E01GpsDiagnostic.hasPosition(keepAlive.get(64)),"old cache not queryable after expiry");
    }
    private static void generations()throws Exception{
        Object oldProvider=new Object(),oldReporter=new Object(),old=active(oldProvider,oldReporter);
        Object oldFrame=new Object();E01GpsDiagnostic.framePrepared(oldReporter,oldFrame,POSITION);
        long oldGeneration=E01GpsDiagnostic.generation();
        java.lang.Thread oldWorker=(java.lang.Thread)get(old,"worker");
        Object p=new Object(),r=new Object(),s=attach(p);
        E01GpsDiagnostic.request(r,p,1);oldWorker.join(3000);
        eq(false,oldWorker.isAlive(),"replaced worker interrupted and joined");
        eq(true,get(old,"finished"),"old generation finished");eq(0,list(old,"frames").size(),"old frame cache cleared");
        eq(false,get(s,"finished"),"old worker finally does not finish new generation");
        check(E01GpsDiagnostic.generation()>oldGeneration,"new generation strictly increases");
        E01GpsDiagnostic.fix(oldProvider,SECRET,0,1,true);E01GpsDiagnostic.noFix(oldReporter);
        E01GpsDiagnostic.submitted(oldReporter);E01GpsDiagnostic.framePrepared(oldReporter,new Object(),POSITION);
        E01GpsDiagnostic.providerStopped(oldProvider);E01GpsDiagnostic.providerAlias(new Object(),oldProvider);
        E01GpsDiagnostic.linkEvent("link_acked",oldGeneration,1,1,1,0);
        E01GpsDiagnostic.linkEvent("link_position_acked",oldGeneration,1,1,1,0);
        eq(0,get(s,"samples"),"old provider fix discarded");eq(0,get(s,"noFix"),"old reporter no-fix discarded");
        eq(0,get(s,"submitted"),"old reporter submission discarded");eq(0,list(s,"frames").size(),"old reporter frame discarded");
        eq(false,E01GpsDiagnostic.hasPosition(oldFrame),"old frame not carried to new connection");
        eq(0,get(s,"acked"),"old ACK discarded");eq(0,get(s,"positionAcked"),"old position ACK discarded");
        eq(false,get(s,"stopped"),"old provider stop discarded");
        E01GpsDiagnostic.fix(p,"gps",0,1,true);eq(1,get(s,"samples"),"new generation remains writable");
        Thread.advanceTo(15000);check(lastLog().contains("#"+E01GpsDiagnostic.generation()+" "),"new worker writes own generation");
    }
    private static void nmea()throws Exception{
        for(GeneratedNmeaVectors.Vector v:GeneratedNmeaVectors.ALL)eq(v.position,E01GpsDiagnostic.containsPosition(v.nmea),"NMEA vector "+v.name);
        eq(false,E01GpsDiagnostic.containsPosition(null),"null NMEA");
        eq(true,E01GpsDiagnostic.containsPosition(POSITION),"synthetic non-zero coordinate position");
        eq(true,E01GpsDiagnostic.containsPosition(sentence("GNRMC,120000.00,A,9000.0000,N,18000.0000,W,0,0,010100,,")),"GN talker and coordinate endpoints");
        eq(true,E01GpsDiagnostic.containsPosition(sentence("GNGGA,120000.00,1234.0000,S,12345.0000,W,8,08,1.0,0,M,0,M,,")),"GN GGA quality eight");
        String[] invalidBodies={
            "GPRMC,120000.00,V,1234.5678,N,12345.6789,E,0,0,010100,,",
            "GPRMC,120000.00,A,9000.0001,N,12345.0000,E,0,0,010100,,",
            "GPRMC,120000.00,A,1260.0000,N,12345.0000,E,0,0,010100,,",
            "GPRMC,120000.00,A,1234.0000,N,18000.0001,E,0,0,010100,,",
            "GPRMC,120000.00,A,1234.0000,E,12345.0000,N,0,0,010100,,",
            "GPRMC,120000.00,A,+1234.0000,N,12345.0000,E,0,0,010100,,",
            "GPRMC,120000.00,A,1e03,N,12345.0000,E,0,0,010100,,",
            "GPRMC,120000.00,A,NaN,N,Infinity,E,0,0,010100,,",
            "GPRMC,120000.00,A,1234.,N,12345.0000,E,0,0,010100,,",
            "GPGGA,120000.00,1234.0000,N,12345.0000,E,0,08,1.0,0,M,0,M,,",
            "GPGGA,120000.00,1234.0000,N,12345.0000,E,9,08,1.0,0,M,0,M,,",
            "GPGGA,120000.00,1234.0000,N,12345.0000,E,01,08,1.0,0,M,0,M,,"
        };
        for(int i=0;i<invalidBodies.length;i++)eq(false,E01GpsDiagnostic.containsPosition(sentence(invalidBodies[i])),"invalid shape/validity "+i);
        eq(false,E01GpsDiagnostic.containsPosition(POSITION.substring(0,POSITION.indexOf('*'))),"checksum required");
        eq(false,E01GpsDiagnostic.containsPosition(POSITION.replace("*", "*Z")),"checksum must contain two hex digits");
        eq(false,E01GpsDiagnostic.containsPosition(POSITION.trim()+"junk"),"trailing garbage rejected");
        eq(false,E01GpsDiagnostic.containsPosition("prefix"+POSITION),"sentence must start at line boundary");
        eq(true,E01GpsDiagnostic.containsPosition(repeat(SPEED,15)+POSITION),"sixteenth sentence considered");
        eq(false,E01GpsDiagnostic.containsPosition(repeat(SPEED,16)+POSITION),"seventeenth sentence outside bounded scan");
        eq(false,E01GpsDiagnostic.containsPosition(repeat("x",16385)+POSITION),"oversized input rejected");
        eq(false,E01GpsDiagnostic.containsPosition(sentence("GPRMC,120000.00,A,1234.5678,N,12345.6789,E,"+repeat("0",260))),"oversized sentence rejected");
    }
    private static void ackEvidence()throws Exception{
        Object p=new Object(),r=new Object(),s=active(p,r);long g=E01GpsDiagnostic.generation();
        E01GpsDiagnostic.submitted(r);E01GpsDiagnostic.framePrepared(r,new Object(),POSITION);
        E01GpsDiagnostic.linkEvent("link_message",g,1,2,0,0);
        E01GpsDiagnostic.linkEvent("link_queued",g,1,2,0,0);
        E01GpsDiagnostic.linkEvent("link_sent",g,1,2,0,0);
        E01GpsDiagnostic.linkEvent("link_fragment_ack",g,1,2,1,7);
        eq(1,get(s,"submitted"),"submission counted independently");eq(1,get(s,"sent"),"sent counted independently");
        eq(0,get(s,"acked"),"submission, queued, sent and partial ACK never imply complete ACK");
        eq(0,get(s,"positionAcked"),"position submission never implies position ACK");
        E01GpsDiagnostic.linkEvent("link_acked",g,1,2,1,7);
        E01GpsDiagnostic.linkEvent("link_position_acked",g,1,2,1,7);
        E01GpsDiagnostic.linkEvent("link_acked",g,1,0,0,7);
        E01GpsDiagnostic.linkEvent("link_position_acked",g,1,0,0,7);
        E01GpsDiagnostic.linkEvent("link_acked",g,1,2,3,7);
        eq(0,get(s,"acked"),"malformed full-ACK event fails closed");
        eq(0,get(s,"positionAcked"),"malformed position-ACK event fails closed");
        E01GpsDiagnostic.linkEvent("link_acked",g,2,1,1,8);
        eq(1,get(s,"acked"),"complete speed message ACK counted");
        eq(0,get(s,"positionAcked"),"ordinary complete ACK is not a position ACK");
        E01GpsDiagnostic.linkEvent("link_acked",g,3,2,2,10);
        E01GpsDiagnostic.linkEvent("link_position_acked",g,3,2,2,10);
        eq(2,get(s,"acked"),"complete position message ACK counted");eq(1,get(s,"positionAcked"),"explicit complete position ACK counted");
        String[] events={"link_retry","link_no_ack","link_aborted","link_tracking_lost","link_tcp_message","link_tcp_no_ack"};
        String[] fields={"retries","noAck","aborted","lost","tcp","tcpNoAck"};
        for(int i=0;i<events.length;i++){E01GpsDiagnostic.linkEvent(events[i],g,4,1,0,0);eq(1,get(s,fields[i]),events[i]+" remains distinct");}
        check(snapshot(s).contains("高德采用=未验证"),"even complete position ACK never confirms app adoption");
    }
    private static void privacy()throws Exception{
        Context context=new Context();context.permissionFailure=new SecurityException(SECRET);
        Object p=new Object(),r=new Object(),s=attach(p,context);E01GpsDiagnostic.request(r,p,1);
        E01GpsDiagnostic.fix(p,SECRET,0,Float.NaN,true);E01GpsDiagnostic.providerIssue(p,SECRET,2);
        E01GpsDiagnostic.framePrepared(r,new Object(),POSITION);
        eq("其他",get(s,"source"),"source restricted to allowlist");eq(-1.0f,get(s,"accuracy"),"NaN accuracy discarded");
        Thread.advanceTo(15000);Thread.advanceTo(180000);
        String logs=join(E01LogPolicy.rows());
        check(logs.contains("定位系统状态=读取失败"),"environment exception has fixed safe marker");
        check(logs.contains("错误=权限拒绝"),"issue rendered from fixed vocabulary");
        check(!logs.contains(SECRET),"source and exception text absent");
        check(!logs.contains("PRIVATE")&&!logs.contains("SECRET"),"privacy sentinels absent");
        check(!logs.contains("1234.5678")&&!logs.contains("12345.6789"),"synthetic coordinates absent");
        check(!logs.contains("GPRMC")&&!logs.contains("$"),"raw NMEA absent");
        for(Field field:s.getClass().getDeclaredFields())if(field.getType()==String.class){field.setAccessible(true);eq("source",field.getName(),"only safe source string retained");eq("其他",field.get(s),"no arbitrary text retained");}
        reset();p=new Object();r=new Object();s=active(p,r);
        E01GpsDiagnostic.fix(p,"gps",-1,Float.POSITIVE_INFINITY,true);
        eq(0L,get(s,"fixAge"),"negative age clamped");eq(-1.0f,get(s,"accuracy"),"infinite accuracy discarded");
        E01GpsDiagnostic.fix(p,"network",2,1000000f,true);eq(999999.0f,get(s,"accuracy"),"accuracy bounded");
        E01GpsDiagnostic.fix(p,"fused",2,3,false);eq(-1.0f,get(s,"accuracy"),"missing accuracy remains unknown");
    }
    private static void boundedLogging()throws Exception{
        Object p=new Object(),s=attach(p);
        for(int i=1;i<=12;i++)Thread.advanceTo(i*15000L);
        eq(2,E01LogPolicy.rows().size(),"unrequested session logs only start and end");
        check(lastLog().contains("手机请求=未收到"),"wait-only final summary explicit");
        eq(true,get(s,"finished"),"wait-only worker stops");
        reset();p=new Object();Object r=new Object();s=attach(p);
        for(int i=1;i<12;i++)Thread.advanceTo(i*15000L);
        eq(1,E01LogPolicy.rows().size(),"waiting period emits no periodic rows");
        Thread.advanceTo(179999);E01GpsDiagnostic.request(r,p,1);
        long generation=E01GpsDiagnostic.generation();
        for(int i=1;i<=11;i++){
            int before=E01LogPolicy.rows().size();
            for(int j=0;j<1000;j++){
                E01GpsDiagnostic.fix(p,"gps",0,1,true);E01GpsDiagnostic.submitted(r);E01GpsDiagnostic.noFix(r);
                E01GpsDiagnostic.providerIssue(p,SECRET,1);
                E01GpsDiagnostic.linkEvent("link_retry",generation,j,2,0,0);
            }
            eq(before,E01LogPolicy.rows().size(),"hook flood emits no synchronous logs");
            Thread.advanceTo(179999+i*15000L);
        }
        eq(12,E01LogPolicy.rows().size(),"start plus exactly eleven active summaries");
        Thread.advanceTo(359999);eq(13,E01LogPolicy.rows().size(),"wait plus active windows bounded to thirteen log rows");
        check(lastLog().contains("结束 180s"),"final active summary exactly 180 seconds");
        eq(11,get(s,"summaries"),"summary counter bounded");eq(true,get(s,"finished"),"worker stops at active deadline");
        Thread.advanceTo(999999);eq(13,E01LogPolicy.rows().size(),"no logs after finite window");
        eq(0,E01LogPolicy.violations().size(),"logging never under state lock or on hook callers");
    }
    private static Object state()throws Exception{return getStatic("current");}
    private static Object getStatic(String name)throws Exception{Field f=E01GpsDiagnostic.class.getDeclaredField(name);f.setAccessible(true);return f.get(null);}
    private static void setStatic(String name,Object value)throws Exception{Field f=E01GpsDiagnostic.class.getDeclaredField(name);f.setAccessible(true);f.set(null,value);}
    private static Object get(Object o,String name)throws Exception{Field f=o.getClass().getDeclaredField(name);f.setAccessible(true);return f.get(o);}
    private static List<?> list(Object o,String name)throws Exception{return (List<?>)get(o,name);}
    private static String snapshot(Object s)throws Exception{Method m=E01GpsDiagnostic.class.getDeclaredMethod("snapshot",s.getClass(),long.class,boolean.class);m.setAccessible(true);return (String)m.invoke(null,s,SystemClock.time,false);}
    private static String lastLog(){List<String> rows=E01LogPolicy.rows();return rows.get(rows.size()-1);}
    private static String join(List<String> rows){StringBuilder b=new StringBuilder();for(String row:rows)b.append(row).append('\n');return b.toString();}
    private static String repeat(String s,int count){StringBuilder b=new StringBuilder();for(int i=0;i<count;i++)b.append(s);return b.toString();}
    private static String sentence(String body){int sum=0;for(int i=0;i<body.length();i++)sum^=body.charAt(i);return "$"+body+"*"+String.format(java.util.Locale.US,"%02X",sum)+"\r\n";}
    private static void check(boolean condition,String label){assertions++;if(!condition)throw new AssertionError(label);}
    private static void eq(Object expected,Object actual,String label){assertions++;if(expected==null?actual!=null:!expected.equals(actual))throw new AssertionError(label+": expected "+expected+", got "+actual);}
    private static final class EqualObject {public boolean equals(Object other){return other instanceof EqualObject;}public int hashCode(){return 1;}}
}
