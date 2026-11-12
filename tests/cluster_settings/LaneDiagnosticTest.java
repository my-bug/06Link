package com.shilapi.xcertplay;
import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Random;
public final class LaneDiagnosticTest {
 static int checks;
 static void check(boolean c,String name){checks++;if(!c)throw new AssertionError(name);}
 static byte[] b(int... n){byte[] a=new byte[n.length];for(int i=0;i<n.length;i++)a[i]=(byte)n[i];return a;}
 static byte[] tlv(int id,byte[] v){byte[] a=new byte[v.length+4];int n=a.length;a[0]=(byte)(n>>8);a[1]=(byte)n;a[2]=(byte)(id>>8);a[3]=(byte)id;System.arraycopy(v,0,a,4,v.length);return a;}
 static byte[] cat(byte[]...a){ByteArrayOutputStream o=new ByteArrayOutputStream();for(byte[] x:a)o.write(x,0,x.length);return o.toByteArray();}
 static String out(E01LaneDiagnostic d,long now,boolean end){String[] lines=d.poll(now,end);if(lines==null)return null;check(lines.length<=3,"at most three lines");StringBuilder s=new StringBuilder();for(String line:lines){check(line.length()<=512,"line fits logger: "+line.length());s.append(line).append('\n');}return s.toString();}
 static E01LaneDiagnostic fresh(){return new E01LaneDiagnostic(false,0,0);}
 public static void main(String[] args){
  E01LaneDiagnostic d=fresh();String s=out(d,0,false);
  check(s.contains("cap5204=false")&&s.contains("subscribe=未观测"),"no capability/subscription guess");
  check(out(d,60000,false)==null,"no timer-only log spam");
  d.accept(0x4155,b(1,2,3));check(out(d,120000,false)==null,"unrelated frame ignored");
  byte[] text="PRIVATE-ROAD-SECRET".getBytes(StandardCharsets.UTF_8);
  byte[] r=cat(tlv(0x10,b(0,42)),tlv(0x11,b(0,3)),tlv(0x12,b(1)),tlv(1,b(1)),tlv(3,text));
  d.accept(0x5201,r);s=out(d,180000,false);
  check(s.contains("routeRx=1")&&s.contains("index=42")&&s.contains("total=3")&&s.contains("showing=1"),"known selector fields");
  check(!s.contains("PRIVATE"),"route text not retained");
  byte[] lanes=cat(tlv(0,b(0,0)),tlv(1,b(2)),tlv(2,b(0xff,0xa6,0,0)),tlv(3,b(0xff,0xa6)),tlv(0,b(1)),tlv(1,b(0)),tlv(2,b(0,90)),tlv(99,text));
  byte[] m=cat(tlv(1,b(0,43)),tlv(2,lanes),tlv(3,text),tlv(0xfe,text));
  d.accept(0x5204,m);s=out(d,240000,false);
  check(s.contains("laneRx=1")&&s.contains("latestEvent=43")&&s.contains("index=42"),"future event not auto-selected");
  check(s.contains("groups=2")&&s.contains("[0,2,-90,2:-90,0];[1,0,1000,1:90]"),"numeric directions and status");
  check(s.contains("mapped=false")&&s.contains("unknown=2"),"no OEM map claim, unknown count");
  check(!s.contains("PRIVATE")&&s.contains("descBytes=19"),"description and unknown bodies omitted");
  check(out(d,240001,false)==null,"throttle immediate report");
  d.accept(0x5202,b());check(out(d,240002,false)==null,"new data not bypass throttle");
  d.accept(0x5204,cat(tlv(1,b(0,44)),tlv(2,b(0,8,0,0))));s=out(d,300000,false);
  check(s.contains("malformed=1")&&s.contains("latestEvent=43"),"malformed nested container is atomic");
  d.accept(0x5201,b(0,9,0,0));d.accept(0x5204,new byte[9000]);d.accept(0x5201,null);s=out(d,360000,false);
  check(s.contains("malformed=3")&&s.contains("oversize=1"),"invalid and oversize separately counted");
  d.accept(0x5201,cat(tlv(0x10,b(0)),tlv(0x11,b(0,0,2)),tlv(0x12,b(1,0))));s=out(d,420000,false);
  check(s.contains("badFields=3")&&s.contains("index=42"),"wrong known field widths not guessed");
  d.accept(0x5201,cat(tlv(0x12,b(0))));s=out(d,480000,false);
  check(s.contains("showing=0")&&s.contains("on/off=1/1")&&s.contains("latestEvent=43"),"hide is independent of cached observation");
  d.accept(0x5204,cat(tlv(1,b(0,44)),tlv(2,b())));s=out(d,540000,false);
  check(s.contains("groups=0")&&!s.contains("[0,2"),"explicit empty event clears snapshot");
  d.accept(0x5204,cat(tlv(1,b(3)),tlv(2,cat(tlv(1,b(1)),tlv(2,b(0,0))))));s=out(d,600000,false);
  check(s.contains("[-1,1,1000,1:0]"),"missing position and highlight remain unknown");
  byte[][] ten=new byte[10][];for(int i=0;i<10;i++)ten[i]=cat(tlv(0,b(i)),tlv(1,b(2)),tlv(2,new byte[100]));
  d.accept(0x5204,cat(tlv(1,b(0,45)),tlv(2,cat(ten))));s=out(d,660000,false);
  check(s.contains("groups=10")&&s.contains(",50:0,0,0,0]")&&s.length()<2300&&!s.contains(";[8,"),"lane/angle/field storage bounded");
  byte[] extremeAngles=new byte[32];for(int i=0;i<32;i+=2){extremeAngles[i]=(byte)0x80;extremeAngles[i+1]=0;}
  byte[][] extreme=new byte[8][];for(int i=0;i<8;i++)extreme[i]=cat(tlv(0,b(255,255)),tlv(1,b(255)),tlv(2,extremeAngles),tlv(3,b(128,0)));
  d.accept(0x5204,cat(tlv(1,b(255,255)),tlv(2,cat(extreme))));s=out(d,720000,false);
  check(s.contains("[65535,255,-32768,16:-32768,-32768,-32768,-32768]"),"worst width lane values stay <=512 per line");
  s=out(d,660001,true);check(s!=null&&s.contains("结束"),"one final line despite throttle");
  d.accept(0x5201,r);check(out(d,1000000,true)==null,"no events/logging after final");
  d=fresh();Random random=new Random(17);for(int i=0;i<10000;i++){byte[] x=new byte[random.nextInt(256)];random.nextBytes(x);d.accept(i%2==0?0x5201:0x5204,x);}check(out(d,1,true).length()<2300,"fuzz framing bounded and no crash");
  d=fresh();for(int i=0;i<100000;i++)d.accept(0x5201,r);check(out(d,1,true).contains("routeRx=100000"),"receive path accumulates not logs");
  System.out.println("PASS "+checks+" lane diagnostic checks; no phone/OEM claims");
 }
}
