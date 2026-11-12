package com.shilapi.xcertplay;
import java.util.List;
import java.lang.reflect.Field;

public final class GpsLinkProbeTest {
    private static int cases;
    private static void check(boolean condition, String detail) {
        if (!condition) throw new AssertionError(detail+" events="+E01GpsDiagnostic.EVENTS);
    }
    private static int count(String event) {
        int count=0;
        for(String e:E01GpsDiagnostic.EVENTS) if(e.startsWith(event+":")) count++;
        return count;
    }
    private static void reset() {
        E01GpsDiagnostic.enabled=false;
        E01GpsLinkProbe.begin(new Object(),0,0,false);
        E01GpsDiagnostic.currentGeneration++;
        E01GpsDiagnostic.enabled=true;
        E01GpsDiagnostic.EVENTS.clear(); cases++;
    }
    private static class Run {
        final Object channel=new Object(), engine=new Object();
        final Object[] commands,packets;
        Run(int count,boolean position) {
            commands=new Object[count]; packets=new Object[count];
            E01GpsLinkProbe.begin(channel,0xfffb,count,position);
            for(int i=0;i<count;i++) {
                commands[i]=new Object(); packets[i]=new Object();
                E01GpsLinkProbe.queued(channel,commands[i]);
            }
        }
        void seal() { E01GpsLinkProbe.end(true); }
        void send(int i,int seq,int retries) {
            E01GpsLinkProbe.drain(engine,commands[i]);
            E01GpsLinkProbe.packet(engine,packets[i]);
            E01GpsLinkProbe.sent(engine,packets[i],seq,retries);
            E01GpsLinkProbe.drained();
        }
        void ack(int seq,int... indices) {
            E01GpsLinkProbe.acknowledgement(engine,seq);
            for(int i:indices) E01GpsLinkProbe.removed(engine,packets[i]);
        }
    }
    static final class EqualKey {
        @Override public boolean equals(Object other) { return other instanceof EqualKey; }
        @Override public int hashCode() { return 1; }
    }
    static final class Iap2UsbMuxTcpConnection { }
    public static void main(String[] args) throws Exception {
        reset(); Run r=new Run(1,true); r.seal(); r.send(0,22,3);
        check(count("link_acked")==0,"write is not ACK"); r.ack(22,0);
        check(count("link_acked")==1 && count("link_position_acked")==1,"single position complete");

        reset(); r=new Run(3,true); r.seal(); r.send(0,30,3); r.send(1,31,3); r.send(2,32,3);
        r.ack(31,0,1); check(count("link_acked")==0,"two of three must remain pending");
        r.ack(32,2); check(count("link_acked")==1,"cumulative all fragments");
        check(count("link_sent")==1,"once per message, not fragment");

        reset(); r=new Run(2,true); r.send(0,1,3); r.send(1,2,3); r.ack(2,0,1);
        check(count("link_acked")==0,"all ACK before caller seals"); r.seal();
        check(count("link_acked")==1,"seal after complete ACK");

        reset(); r=new Run(1,true); r.seal(); r.send(0,4,3);
        E01GpsLinkProbe.retry(r.engine,r.packets[0]); E01GpsLinkProbe.retry(r.engine,r.packets[0]);
        check(count("link_acked")==0 && count("link_retry")==2,"EAK/retry is not ACK");
        r.ack(4,0); r.ack(4,0);
        check(count("link_acked")==1,"duplicate ACK idempotent");

        reset(); r=new Run(3,true); r.seal(); r.send(0,254,3); r.send(1,255,3); r.send(2,0,3);
        r.ack(0,0,1,2); check(count("link_acked")==1,"8 bit wrap cumulative ACK");

        reset(); r=new Run(1,true); r.seal(); r.send(0,77,3);
        E01GpsLinkProbe.sent(r.engine,new Object(),78,3);
        r.ack(78,0); check(count("link_acked")==1,"unrelated control packet cumulative ACK");

        reset(); r=new Run(1,true); r.seal(); r.send(0,77,3); r.ack(200,0);
        check(count("link_acked")==0 && count("link_tracking_lost")==1,"unknown future ACK conservative");

        reset(); r=new Run(2,true); r.seal(); r.send(0,7,3); r.send(1,8,3); r.ack(7,0);
        E01GpsLinkProbe.close(r.channel); r.ack(8,1);
        check(count("link_acked")==0 && count("link_aborted")==1,"close invalidates pending ACK");

        reset(); r=new Run(1,true); r.seal(); r.send(0,11,3);
        E01GpsLinkProbe.removed(new Object(),r.packets[0]);
        check(count("link_acked")==0,"different engine cannot acknowledge"); r.ack(11,0);
        check(count("link_acked")==1,"correct engine can acknowledge");

        reset(); r=new Run(1,true); r.seal(); r.send(0,2,0); r.ack(2,0);
        check(count("link_no_ack")==1 && count("link_acked")==0,"max retransmissions zero is unsupported");

        reset(); r=new Run(1,false); r.seal(); r.send(0,3,3); r.ack(3,0);
        check(count("link_acked")==1 && count("link_position_acked")==0,"speed only never position confirmed");

        reset(); r=new Run(1,true); r.seal(); r.send(0,9,3); E01GpsDiagnostic.currentGeneration++; r.ack(9,0);
        check(count("link_acked")==0,"old generation rejected");

        reset(); r=new Run(1,true); E01GpsLinkProbe.end(false); r.send(0,9,3); r.ack(9,0);
        check(count("link_acked")==0 && count("link_aborted")==1,"partial submit failure");

        reset(); E01GpsLinkProbe.begin(new Object(),0xfffb,65,true);
        check(count("link_tracking_lost")==1,"fragment cap");
        for(int i=0;i<33;i++) { Run pending=new Run(1,true); pending.seal(); }
        check(count("link_tracking_lost")>=2,"message cap evicts conservatively");

        reset(); Object channel=new Object(),engine=new Object(),command=new EqualKey(),packet=new EqualKey();
        E01GpsLinkProbe.begin(channel,0xfffb,1,true); E01GpsLinkProbe.queued(channel,command); E01GpsLinkProbe.end(true);
        E01GpsLinkProbe.drain(engine,new EqualKey()); E01GpsLinkProbe.packet(engine,packet); E01GpsLinkProbe.sent(engine,packet,1,3);
        check(count("link_sent")==0,"identity not equals");
        E01GpsLinkProbe.drain(engine,command); E01GpsLinkProbe.packet(engine,packet); E01GpsLinkProbe.sent(engine,packet,1,3);
        E01GpsLinkProbe.acknowledgement(engine,1); E01GpsLinkProbe.removed(engine,packet);
        check(count("link_acked")==1,"same identity matches");

        reset(); r=new Run(1,true); r.seal(); r.send(0,5,3);
        Field messages=E01GpsLinkProbe.class.getDeclaredField("MESSAGES"); messages.setAccessible(true);
        Object m=((List<?>)messages.get(null)).get(0); Field created=m.getClass().getDeclaredField("created");
        created.setAccessible(true); created.setLong(m,System.nanoTime()-31000000000L);
        r.ack(5,0); check(count("link_acked")==0 && count("link_tracking_lost")==1,"expired metadata cannot confirm");

        reset(); r=new Run(1,true); r.seal(); r.send(0,6,3); E01GpsDiagnostic.enabled=false; r.ack(6,0);
        check(count("link_acked")==0,"disabled window clears old tracking");

        reset(); E01GpsLinkProbe.begin(new Object(),0x1234,1,false); E01GpsLinkProbe.end(true);
        check(E01GpsDiagnostic.EVENTS.isEmpty(),"unrelated CSM frames ignored");

        reset(); channel=new Object(); engine=new Object(); command=new Object(); packet=new Object();
        E01GpsLinkProbe.channel(channel,new Iap2UsbMuxTcpConnection());
        E01GpsLinkProbe.begin(channel,0xfffb,1,true); E01GpsLinkProbe.queued(channel,command); E01GpsLinkProbe.end(true);
        E01GpsLinkProbe.drain(engine,command); E01GpsLinkProbe.packet(engine,packet); E01GpsLinkProbe.sent(engine,packet,20,0);
        E01GpsLinkProbe.acknowledgement(engine,20); E01GpsLinkProbe.removed(engine,packet);
        check(count("link_tcp_message")==1 && count("link_tcp_no_ack")==1 && count("link_acked")==0,
                "TCP channel without link ACK explicitly classified");

        reset(); r=new Run(1,true); r.seal(); r.send(0,77,3); r.ack(77,0);
        for(int i=1;i<256;i++) E01GpsLinkProbe.sent(r.engine,new Object(),(77+i)&255,3);
        command=new Object(); packet=new Object();
        E01GpsLinkProbe.begin(r.channel,0xfffb,1,true); E01GpsLinkProbe.queued(r.channel,command); E01GpsLinkProbe.end(true);
        E01GpsLinkProbe.drain(r.engine,command); E01GpsLinkProbe.packet(r.engine,packet); E01GpsLinkProbe.sent(r.engine,packet,77,3);
        E01GpsLinkProbe.removed(r.engine,r.packets[0]);
        check(count("link_acked")==1,"old packet identity after full sequence cycle cannot acknowledge new message");
        E01GpsLinkProbe.acknowledgement(r.engine,77); E01GpsLinkProbe.removed(r.engine,packet);
        check(count("link_acked")==2,"current packet identity after full sequence cycle can complete");

        reset(); r=new Run(2,true); r.seal(); r.send(0,10,3); r.send(1,11,3); r.ack(11,0); r.ack(10,1);
        check(count("link_acked")==0 && count("link_tracking_lost")==1,"backward cumulative ACK cannot confirm pending fragment");
        System.out.println("PASS "+cases+" deterministic GPS link metadata cases");
    }
}
