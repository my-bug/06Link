package com.shilapi.xcertplay;

import android.content.Context;
import android.os.SystemClock;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/** Actual diagnostic and actual transport probe, with no event adapter or ACK mock between them. */
public final class GpsDiagnosticLinkIntegrationTest {
    private static int assertions;
    public static void main(String[] args)throws Exception{
        Object provider=new Object(),reporter=new Object(),channel=new Object(),engine=new Object();
        try{
            E01GpsDiagnostic.attached(provider,new Context());Thread.awaitIdle();
            E01GpsDiagnostic.request(reporter,provider,1);
            Object state=state();
            Object position=new Object();
            E01GpsDiagnostic.framePrepared(reporter,position,sentence("GPRMC,120000.00,A,1234.5678,N,12345.6789,E,0,0,010100,,"));
            check(E01GpsDiagnostic.hasPosition(position),"real frame classifier provides true position marker");
            E01GpsDiagnostic.submitted(reporter);
            Transmission full=transmit(channel,engine,position,2,10,3);
            eq(1,value(state,"queued"),"real begin/queued/end reaches diagnostic queued counter");
            eq(1,value(state,"sent"),"real drain/packet/sent reaches diagnostic pending-send counter");
            eq(0,value(state,"acked"),"submission and full queuing never count as peer ACK");
            eq(0,value(state,"positionAcked"),"position marker alone never counts as peer position ACK");
            E01GpsLinkProbe.acknowledgement(engine,10);E01GpsLinkProbe.removed(engine,full.packets[0]);
            eq(0,value(state,"acked"),"real first-fragment ACK is not complete ACK");
            eq(0,value(state,"positionAcked"),"real first-fragment ACK is not position delivery");
            check(snapshot(state).contains("含位置ACK=0"),"real partial path remains unconfirmed in summary");
            E01GpsLinkProbe.acknowledgement(engine,11);E01GpsLinkProbe.removed(engine,full.packets[1]);
            eq(1,value(state,"acked"),"real complete ACK event accepted by diagnostic guard");
            eq(1,value(state,"positionAcked"),"real complete ACK retains captured position marker");
            check(snapshot(state).contains("含位置ACK=1"),"real complete path visible in summary");
            check(snapshot(state).contains("高德采用=未验证"),"complete link ACK does not confirm navigation app adoption");

            Object speed=new Object();E01GpsDiagnostic.framePrepared(reporter,speed,sentence("PASCD,120000.00,C,0,0.00"));
            check(!E01GpsDiagnostic.hasPosition(speed),"real speed-only classifier provides false position marker");
            Transmission speedOnly=transmit(channel,engine,speed,1,12,3);
            E01GpsLinkProbe.acknowledgement(engine,12);E01GpsLinkProbe.removed(engine,speedOnly.packets[0]);
            eq(2,value(state,"acked"),"real speed-only complete ACK counted separately");
            eq(1,value(state,"positionAcked"),"speed-only ACK cannot increase position delivery");

            E01GpsLinkProbe.channel(channel,new Iap2UsbMuxTcpConnection());
            Transmission local=transmit(channel,engine,position,1,13,0);
            eq(1,value(state,"noAck"),"actual no-ACK mode is diagnosed");
            eq(1,value(state,"tcpNoAck"),"actual TCP no-ACK event remains distinct");
            E01GpsLinkProbe.acknowledgement(engine,13);E01GpsLinkProbe.removed(engine,local.packets[0]);
            eq(2,value(state,"acked"),"local no-ACK removal never increases peer ACK");
            eq(1,value(state,"positionAcked"),"local no-ACK removal never increases position delivery");
            Thread.advanceTo(15000);
            String row=E01LogPolicy.rows().get(E01LogPolicy.rows().size()-1);
            check(row.contains("含位置ACK=1"),"real worker logs end-to-end position ACK evidence");
            check(!row.contains("1234.5678")&&!row.contains("12345.6789")&&!row.contains("GPRMC"),"end-to-end logging retains no position payload");
            eq(0,E01LogPolicy.violations().size(),"logging outside both diagnostic and link-probe locks, only on worker");
            System.out.println("PASS actual diagnostic/link-probe integration: "+assertions+" assertions");
        }finally{E01GpsLinkProbe.close(engine);E01GpsLinkProbe.close(channel);Thread.reset();}
    }
    private static Transmission transmit(Object channel,Object engine,Object frame,int count,int firstSequence,int retries){
        Transmission t=new Transmission(count);
        // This mirrors the production hook boundary: frame identity becomes one boolean at begin().
        E01GpsLinkProbe.begin(channel,0xfffb,count,E01GpsDiagnostic.hasPosition(frame));
        for(Object command:t.commands)E01GpsLinkProbe.queued(channel,command);
        E01GpsLinkProbe.end(true);
        for(int i=0;i<count;i++){
            E01GpsLinkProbe.drain(engine,t.commands[i]);E01GpsLinkProbe.packet(engine,t.packets[i]);E01GpsLinkProbe.drained();
            E01GpsLinkProbe.sent(engine,t.packets[i],firstSequence+i,retries);
        }
        return t;
    }
    private static final class Transmission {
        final Object[] commands,packets;
        Transmission(int count){commands=new Object[count];packets=new Object[count];for(int i=0;i<count;i++){commands[i]=new Object();packets[i]=new Object();}}
    }
    private static final class Iap2UsbMuxTcpConnection {}
    private static Object state()throws Exception{Field f=E01GpsDiagnostic.class.getDeclaredField("current");f.setAccessible(true);return f.get(null);}
    private static int value(Object s,String name)throws Exception{Field f=s.getClass().getDeclaredField(name);f.setAccessible(true);return f.getInt(s);}
    private static String snapshot(Object s)throws Exception{Method m=E01GpsDiagnostic.class.getDeclaredMethod("snapshot",s.getClass(),long.class,boolean.class);m.setAccessible(true);return (String)m.invoke(null,s,SystemClock.time,false);}
    private static String sentence(String body){int sum=0;for(int i=0;i<body.length();i++)sum^=body.charAt(i);return "$"+body+"*"+String.format(java.util.Locale.US,"%02X",sum)+"\r\n";}
    private static void eq(int expected,int actual,String message){check(expected==actual,message+": expected "+expected+", got "+actual);}
    private static void check(boolean condition,String message){assertions++;if(!condition)throw new AssertionError(message);}
}
