package com.shilapi.xcertplay;

import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Arrays;

/** Wire-shaped events and observable OEM messages, with no Android/device dependency. */
public final class LaneStateOutputTest {
    private static int checks;
    static void check(boolean value,String why) { checks++; if(!value)throw new AssertionError(why); }
    static byte[] cat(byte[]... parts) { ByteArrayOutputStream b=new ByteArrayOutputStream();for(byte[] p:parts)b.write(p,0,p.length);return b.toByteArray(); }
    static byte[] u16(int n) { return new byte[]{(byte)(n>>8),(byte)n}; }
    static byte[] tlv(int tag,byte[] value) { return cat(u16(value.length+4),u16(tag),value); }
    static byte[] one(int tag,int n) { return tlv(tag,new byte[]{(byte)n}); }
    static byte[] two(int tag,int n) { return tlv(tag,u16(n)); }
    static byte[] lane(int pos,int status,int highlight,int... angles) {
        ByteArrayOutputStream b=new ByteArrayOutputStream();for(int angle:angles){byte[] v=u16(angle);b.write(v,0,v.length);}
        return cat(two(0,pos),one(1,status),tlv(2,b.toByteArray()),two(3,highlight));
    }
    static byte[] event(int index,byte[]... lanes) { return cat(two(0,42),two(1,index),tlv(2,cat(lanes))); }
    static byte[] select(int index,int visible) { return cat(two(0,42),two(0x10,index),one(0x12,visible)); }
    static E01LaneState seeded() {
        E01LaneState s=new E01LaneState();s.accept(0x5204,event(7,lane(0,1,0,0)));s.accept(0x5201,select(7,1));return s;
    }
    static void rejected(byte[] bytes,String why) {
        E01LaneState s=seeded();check(!s.accept(0x5204,bytes),why+" rejected");
        check(s.snapshot().count()==0&&s.cachedEvents()==1&&s.rejected()==1,why+" no partial commit or stale display");
    }
    static final class Sink implements E01LaneOutput.Sink {
        final ArrayList<byte[]> packets=new ArrayList<byte[]>();final ArrayList<String> notes=new ArrayList<String>();
        int failSub=-1;public boolean send(byte[] p){packets.add(p.clone());return (p[0]&255)!=failSub;}
        public void note(String s){notes.add(s);}
    }
    public static void main(String[] args) {
        E01LaneState s=new E01LaneState();
        check(s.accept(0x5204,event(7,lane(2,0,1000,0,90),lane(0,2,0,-90,0),lane(1,1,0,0))),"prefetch accepted");
        check(s.snapshot().count()==0,"prefetch alone never selects a lane event");
        check(s.accept(0x5201,cat(one(1,1),two(0x11,1),select(7,1))),"explicit current index and visibility");
        E01LaneState.Snapshot first=s.snapshot();
        check(first.eventIndex==7&&first.count()==3,"event total is not lane count");
        check(first.lane(0).position==0&&first.lane(1).position==1&&first.lane(2).position==2,"sort physical lane positions");
        check(Arrays.equals(first.lane(0).angles(),new int[]{-90,0})&&first.lane(2).highlight==1000,"signed angles and unknown highlight preserved");
        int[] copy=first.lane(0).angles();copy[0]=88;check(first.lane(0).angles()[0]==-90,"snapshot array immutable");
        s.accept(0x5204,event(8,lane(0,1,0,0)));check(s.snapshot().eventIndex==7,"future event cannot replace current");
        s.accept(0x5201,two(13,8));check(s.snapshot().eventIndex==7,"maneuver index is independent");
        s.accept(0x5201,select(8,1));check(s.snapshot().eventIndex==8,"selector chooses prefetched event");
        s.accept(0x5201,one(0x12,0));check(s.snapshot().count()==0,"visibility off clears immediately");
        s.accept(0x5201,one(0x12,1));check(s.snapshot().eventIndex==8,"visibility-only delta can show selected cached event");
        s.accept(0x5201,two(0x10,9));check(s.snapshot().count()==0,"uncached index never borrows older event");
        s.accept(0x5204,event(9,lane(0,1,0,0)));check(s.snapshot().eventIndex==9,"event arriving after selector becomes available");
        s.accept(0x5204,event(9));check(s.snapshot().count()==0,"empty event explicitly clears");
        s=seeded();s.accept(0x5201,two(0x11,0));check(s.cachedEvents()==0&&s.snapshot().count()==0,"zero total invalidates route cache");
        for(int state:new int[]{0,2}) {s=seeded();s.accept(0x5201,one(1,state));check(s.cachedEvents()==0&&s.snapshot().count()==0,"route end "+state);s.accept(0x5201,select(7,1));check(s.snapshot().count()==0,"end cannot resurrect cached event");}
        s=seeded();s.clear();s.accept(0x5201,select(7,1));check(s.snapshot().count()==0,"session clear forgets lane data");
        s=seeded();for(int n=10;n<30;n++)s.accept(0x5204,event(n,lane(0,1,0,0)));
        check(s.cachedEvents()==8&&s.snapshot().eventIndex==7,"bounded event cache protects selected event");
        s.accept(0x5201,select(10,1));check(s.snapshot().count()==0,"evicted event remains hidden");
        s=seeded();s.accept(0x5204,cat(two(0,99),two(1,7),tlv(2,lane(0,0,1000,90))));
        check(s.snapshot().lane(0).status==1&&s.rejected()==0,"different component cannot overwrite ours");
        s.accept(0x5201,cat(two(0,99),one(0x12,0)));check(s.snapshot().count()==1,"other component selector ignored");
        check(!s.accept(0x5202,new byte[]{1})&&s.snapshot().count()==1,"maneuvers do not affect lane cache");
        rejected(null,"null");rejected(new byte[]{0,3,0,1},"short TLV");rejected(cat(event(7,lane(0,1,0,0)),new byte[]{0}),"trailing byte");
        rejected(cat(two(1,7),tlv(2,cat(lane(0,1,0,0),new byte[]{0,9,0,2}))),"nested truncation");
        rejected(event(7,cat(one(1,1),two(2,0))),"missing lane position");
        rejected(event(7,cat(two(0,0),two(2,0))),"missing lane status");
        rejected(event(7,cat(two(0,0),one(1,1))),"missing lane angle");
        rejected(event(7,cat(two(0,0),one(1,1),one(2,90))),"ambiguous byte angle");
        rejected(event(7,lane(0,3,0,0)),"unknown status");
        rejected(event(7,lane(0,1,0,0),lane(0,2,0,0)),"duplicate position");
        rejected(event(7,lane(0,1,0,0),lane(2,2,0,0)),"missing physical lane position");
        rejected(event(7,lane(2,1,0,0)),"unknown position origin");
        s=seeded();s.accept(0x5204,event(7,lane(2,1,0,0),lane(1,2,0,0)));check(s.snapshot().count()==2&&s.snapshot().lane(0).position==1,"complete one-based position sequence retains physical order");
        rejected(cat(two(1,7),two(1,8),tlv(2,lane(0,1,0,0))),"duplicate event index");
        rejected(event(7,cat(lane(0,1,0,0),one(1,2))),"duplicate lane status");
        rejected(event(7,cat(lane(0,1,0,0),two(3,0))),"duplicate highlight");
        rejected(event(7,lane(65535,1,0,0)),"undefined position");
        byte[][] nine=new byte[9][];for(int i=0;i<9;i++)nine[i]=lane(i,1,0,0);rejected(event(7,nine),"too many lanes");
        rejected(new byte[8193],"oversized");
        s=seeded();check(!s.accept(0x5201,cat(select(7,1),one(0x12,0)))&&s.snapshot().count()==0,"duplicate route selector fails closed");
        s.accept(0x5201,select(7,1));check(s.snapshot().count()==1,"valid explicit selection restores intact cache");
        check(E01LaneState.selectionOnly(select(7,1)),"lane selectors recognized separately");
        check(!E01LaneState.selectionOnly(cat(one(1,1),select(7,1)))&&!E01LaneState.selectionOnly(two(0,42)),"route states and empty selectors retain existing route semantics");
        check(!E01LaneState.selectionOnly(new byte[]{0}),"malformed selector cannot suppress regular validation");

        Sink sink=new Sink();E01LaneOutput output=new E01LaneOutput(new E01LaneOutput.Mapping(){public int icon(int status,int highlight,int[] angles){return angles.length==1&&angles[0]==0?status+10:-1;}},sink);
        E01LaneState.Snapshot known=seeded().snapshot();
        output.update(known,false,false,false,0);check(sink.packets.isEmpty(),"no ownership emits nothing");
        output.update(known,true,true,true,0);check(sink.packets.isEmpty(),"suspended emits nothing");
        output.update(known,true,true,false,0);check(sink.packets.size()==9&&output.touched()&&output.mapped(),"mapped current event publishes all OEM lane slots");
        check(Arrays.equals(sink.packets.get(0),new byte[]{0x3a,1})&&Arrays.equals(sink.packets.get(1),new byte[]{0x3b,11}),"actual count and icon bytes");
        for(int i=2;i<9;i++)check(Arrays.equals(sink.packets.get(i),new byte[]{(byte)(0x3a+i),0x7f}),"unused slot cleared "+i);
        output.update(known,true,true,false,1000);check(sink.packets.size()==9,"unchanged lane state sends nothing");
        s=seeded();s.accept(0x5204,event(7,lane(0,1,0,0),lane(1,1,90,90)));output.update(s.snapshot(),true,true,false,1001);
        check(sink.packets.size()==18&&!output.mapped()&&!output.touched()&&(sink.packets.get(9)[1]&255)==0,"one unsupported lane hides entire group without dropping positions");
        output.update(known,true,true,false,1002);check(output.touched(),"known new event restores lanes");
        output.update(known,false,false,false,1003);check(!output.touched()&&(sink.packets.get(27)[1]&255)==0,"disconnect clears owned lanes");
        int count=sink.packets.size();output.update(known,false,false,false,9999);check(sink.packets.size()==count,"cleanup never repeats after release");
        sink.failSub=0x3c;output.update(known,true,true,false,10000);check(output.touched()&&sink.packets.size()==count+3,"partial failure retains cleanup obligation");
        count=sink.packets.size();output.update(known,true,true,false,10001);check(sink.packets.size()==count,"failed frame obeys retry backoff");
        sink.failSub=-1;output.update(E01LaneState.HIDDEN,true,true,false,10002);check(sink.packets.size()==count+9&&!output.touched(),"hide request bypasses old event retry delay");
        output.update(known,true,true,false,10003);count=sink.packets.size();output.invalidated();output.update(known,true,true,true,10004);
        check(sink.packets.size()==count&&output.touched(),"power reset preserves ownership without off-time writes");
        output.update(E01LaneState.HIDDEN,true,true,false,10005);check(sink.packets.size()==count+9&&!output.touched(),"power recovery clears old recommendation");
        for(byte[] p:sink.packets)check(p.length==2&&(p[0]&255)>=0x3a&&(p[0]&255)<=0x42,"lane output never emits navigation/map/window command");
        for(String note:sink.notes)check(note.startsWith("[车道诊断]")&&note.length()<256,"bounded numeric output diagnostics");
        System.out.println("PASS "+checks+" lane event, framing, cache, OEM output and retry assertions");
    }
}
