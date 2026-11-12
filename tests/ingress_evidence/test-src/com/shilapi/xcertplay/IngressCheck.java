package com.shilapi.xcertplay;
import java.io.*;import java.lang.reflect.*;import java.net.*;import java.util.*;import java.util.concurrent.*;
public final class IngressCheck {
 static int checks;
 static void ok(boolean v,String m){checks++;if(!v)throw new AssertionError(m);}
 static long field(Object o,String n)throws Exception{Field f=o.getClass().getDeclaredField(n);f.setAccessible(true);return f.getLong(o);}
 static void set(Object o,String n,long value)throws Exception{Field f=o.getClass().getDeclaredField(n);f.setAccessible(true);f.setLong(o,value);}
 static Object object(Object o,String n)throws Exception{Field f=o.getClass().getDeclaredField(n);f.setAccessible(true);return f.get(o);}
 static void await(java.util.function.BooleanSupplier c,String m)throws Exception{long end=System.nanoTime()+2000000000L;while(!c.getAsBoolean()&&System.nanoTime()<end)Thread.sleep(1);ok(c.getAsBoolean(),m);}
 static byte[] drain(InputStream in,int step)throws Exception{ByteArrayOutputStream b=new ByteArrayOutputStream();byte[] x=new byte[step];for(int n;(n=in.read(x))>=0;)b.write(x,0,n);return b.toByteArray();}
 static void workerPriority()throws Exception{
  final long caller=Thread.currentThread().getId();
  for(final boolean denied:new boolean[]{false,true}){
   android.os.Process.reset();android.os.Process.seed(caller,7);android.os.Process.failPriority=denied;
   final java.util.concurrent.atomic.AtomicLong workerId=new java.util.concurrent.atomic.AtomicLong(-1);
   final java.util.concurrent.atomic.AtomicBoolean beforeRead=new java.util.concurrent.atomic.AtomicBoolean(true),sourceClosed=new java.util.concurrent.atomic.AtomicBoolean();
   byte[] expected=new byte[41];new Random(619).nextBytes(expected);
   InputStream source=new ByteArrayInputStream(expected){
    public synchronized int read(byte[] b,int o,int n){long id=Thread.currentThread().getId();workerId.set(id);if(android.os.Process.callCount(id)!=1||android.os.Process.requested(id)!=-4||android.os.Process.priority(id)!=(denied?0:-4))beforeRead.set(false);return super.read(b,o,n);}
    public void close(){sourceClosed.set(true);}
   };
   E01VideoIngress.Ahead a=new E01VideoIngress.Ahead(source,7);
   ok(android.os.Process.totalCalls()==0,"construction never changes caller priority "+denied);
   a.start();ok(Arrays.equals(expected,drain(a,5)),"priority denied="+denied+" preserves all bytes");
   ok(a.read()==-1&&a.terminated(2000),"priority denied="+denied+" retains EOF and worker completion");
   a.close();ok(sourceClosed.get(),"priority denied="+denied+" closes original source");
   long tid=workerId.get();ok(tid!=-1&&tid!=caller,"source reads run only on worker "+denied);
   ok(beforeRead.get(),"one display priority attempt precedes every source read "+denied);
   ok(android.os.Process.totalCalls()==1&&android.os.Process.callCount(tid)==1,"priority attempted once per worker, never per packet "+denied);
   ok(android.os.Process.priority(caller)==7&&android.os.Process.callCount(caller)==0,"caller priority untouched "+denied);
  }
  // A denied priority hint must also permit cancellation while the real source is blocked.
  android.os.Process.reset();android.os.Process.failPriority=true;
  CountDownLatch entered=new CountDownLatch(1);final java.util.concurrent.atomic.AtomicBoolean sourceClosed=new java.util.concurrent.atomic.AtomicBoolean();
  InputStream blocked=new InputStream(){boolean ended;public synchronized int read()throws IOException{entered.countDown();while(!ended)try{wait();}catch(InterruptedException e){throw new InterruptedIOException();}throw new IOException("closed");}public int read(byte[] b,int o,int n)throws IOException{return read();}public synchronized void close(){ended=true;sourceClosed.set(true);notifyAll();}};
  E01VideoIngress.Ahead a=new E01VideoIngress.Ahead(blocked,32);a.start();ok(entered.await(2,TimeUnit.SECONDS),"priority denial still reaches blocking source read");
  a.close();ok(a.terminated(2000)&&sourceClosed.get(),"priority denial never prevents cancellation/source close");
  ok(android.os.Process.totalCalls()==1,"cancelled worker has one priority attempt");android.os.Process.reset();
 }
 static void timing(){
  long base=1000000000L;E01IngressEvidence e=new E01IngressEvidence(77,base,base);
  e.sourceRead(base+1000000L,base+21000000L,100);e.sourceRead(base+21000000L,base+1021000000L,200);
  e.emptyWait(base+22000000L,base+1021000000L);e.fullWait(base+2000000000L,base+2030000000L);
  e.packet(0,2000000000L,100,base+3000000000L);e.packet(1,0,5,base+3500000000L);e.packet(7,0,0,base+3600000000L);e.packet(0,2016666667L,200,base+4000000000L);
  ok(e.reportIfDue(base+9999999999L)==null,"no report before ten seconds");String s=e.reportIfDue(base+10000000000L);
  ok(s.contains("tid=77 sample=1 baseNs=1000000000 winMs=0..10000"),"identity and shared-relative window");
  ok(s.contains("readCalls=2 bytes=300 readErrors=0 readTotalMs=1020")&&s.contains("readMax=1000@21..1021")&&s.contains("sourceGap=1000@21..1021"),"source read and success completion gap exact bounds");
  ok(s.contains("empty=1/999/999@22..1021")&&s.contains("full=1/30/30@2000..2030"),"empty/full waits separate total count maximum event bounds");
  ok(s.contains("packets=4 frames=2 configs=1 other=1 bodyMax=200"),"only type zero increments frames");
  ok(s.contains("frameGap=1000@3000..4000")&&s.contains("senderStepAtGapMs=16 senderStepMaxMs=16"),"arrival gap paired with the same source timestamp delta");
  ok(e.reportIfDue(base+10000000001L)==null,"same window cannot report twice");
  e.sourceRead(base+11000000000L,base+11001000000L,-2);e.sourceRead(base+11002000000L,base+11003000000L,-1);
  e.packet(0,0,0,base+12000000000L);e.packet(0,5000000000L,1,base+13000000000L);e.packet(0,5000000000L,1,base+14000000000L);e.packet(0,4000000000L,1,base+15000000000L);
  s=e.reportIfDue(base+20000000000L);ok(s.contains("readCalls=2 bytes=0 readErrors=1"),"read failure and EOF do not create data");
  ok(s.contains("missingPts=1 nonIncreasingPts=2"),"missing repeated and reverse PTS counted without fabricating source cadence");
  for(int n=3;n<=9;n++)ok(e.reportIfDue(base+n*10000000000L)!=null,"bounded report "+n);
  e.sourceRead(base+90000000001L,base+91000000000L,999);e.packet(0,90000000000L,999,base+91000000000L);
  ok(e.reportIfDue(base+100000000000L)==null,"never a tenth report");
  E01IngressEvidence expiry=new E01IngressEvidence(1,base,base);expiry.packet(0,1,10,base+91000000000L);ok(expiry.reportIfDue(base+91000000000L)==null,"no late start after first ninety seconds");
  E01IngressEvidence peer=new E01IngressEvidence(88,base+500000000L,base);ok(peer.reportIfDue(base+10500000000L).contains("winMs=500..10500"),"different sockets use same event epoch");
 }
 static void byteEquality()throws Exception{
  byte[] expected=new byte[131173];new Random(912).nextBytes(expected);
  for(int capacity:new int[]{1,7,32768}){
   E01VideoIngress.Ahead a=new E01VideoIngress.Ahead(new ByteArrayInputStream(expected),capacity);a.start();byte[] got=drain(a,997);
   ok(Arrays.equals(expected,got),"byte order/length unchanged across wrapping capacity "+capacity);ok(a.read()==-1,"stable EOF");ok(a.terminated(2000),"pump ends after EOF");a.close();
  }
  InputStream zero=new ByteArrayInputStream(expected){boolean first=true;public synchronized int read(byte[] b,int o,int n){if(first){first=false;return 0;}return super.read(b,o,n);}};
  E01VideoIngress.Ahead a=new E01VideoIngress.Ahead(zero,17);a.start();ok(Arrays.equals(expected,drain(a,53)),"zero-return fallback preserves byte zero and all data");a.close();ok(a.terminated(2000),"zero-read worker closes");
 }
 static void waitsAndErrors()throws Exception{
  CountDownLatch readEntered=new CountDownLatch(1),go=new CountDownLatch(1);byte[] expected={1,2,3,4,5,6,7,8,9};
  InputStream gated=new ByteArrayInputStream(expected){boolean first=true;public synchronized int read(byte[] b,int o,int n){if(first){first=false;readEntered.countDown();try{go.await();}catch(InterruptedException ex){throw new IllegalStateException(ex);}}return super.read(b,o,n);}};
  E01VideoIngress.Ahead a=new E01VideoIngress.Ahead(gated,4);a.start();ok(readEntered.await(2,TimeUnit.SECONDS),"source read blocked independently");
  final int[] result={-9};Thread consumer=new Thread(()->{try{result[0]=a.read();}catch(Exception x){throw new RuntimeException(x);}});consumer.start();await(()->consumer.getState()==Thread.State.WAITING,"empty consumer waits");go.countDown();consumer.join(2000);ok(result[0]==1,"waiting consumer resumed on data");
  await(()->a.available()==4,"ring reaches full");Thread.sleep(5);byte[] rest=drain(a,3);ok(Arrays.equals(rest,new byte[]{2,3,4,5,6,7,8,9}),"full wait never overwrites unread bytes");
  ok(field(object(a.evidence,"empty"),"count")>=1,"empty wait counted");ok(field(object(a.evidence,"full"),"count")>=1,"full wait counted");a.close();ok(a.terminated(2000),"wait worker terminates");
  IOException original=new IOException("private test detail");InputStream broken=new InputStream(){boolean first=true;public int read(){return -1;}public int read(byte[] b,int o,int n)throws IOException{if(first){first=false;b[o]=42;return 1;}throw original;}};
  E01VideoIngress.Ahead bad=new E01VideoIngress.Ahead(broken,4);bad.start();ok(bad.read()==42,"completed byte delivered before deferred error");try{bad.read();throw new AssertionError("lost failure");}catch(IOException got){ok(got==original,"original read exception identity preserved");}bad.close();ok(bad.terminated(2000),"failed worker terminates");
 }
 static void closeAndLogs()throws Exception{
  InputStream blocked=new InputStream(){boolean ended;public synchronized int read()throws IOException{while(!ended)try{wait();}catch(InterruptedException e){throw new InterruptedIOException();}throw new IOException("closed");}public int read(byte[] b,int o,int n)throws IOException{return read();}public synchronized void close(){ended=true;notifyAll();}};
  E01VideoIngress.Ahead a=new E01VideoIngress.Ahead(blocked,32);a.start();final boolean[] ended={false};Thread c=new Thread(()->{try{a.read();}catch(IOException expected){ended[0]=true;}});c.start();await(()->c.getState()==Thread.State.WAITING,"consumer waiting before close");a.close();c.join(2000);ok(ended[0]&&a.terminated(2000),"close releases consumer and source worker");
  E01VideoIngress.Ahead logs=new E01VideoIngress.Ahead(new ByteArrayInputStream(new byte[0]),32);long now=System.nanoTime();set(logs.evidence,"started",now-11000000000L);set(logs.evidence,"window",now-11000000000L);
  android.util.Log.forbiddenRing=logs;android.util.Log.forbiddenStats=logs.evidence;E01VideoIngress.message(logs,0,100,50);ok(android.util.Log.lines.size()==1&&android.util.Log.lines.get(0).startsWith("06Link-Ingress ingress"),"only consumer message hook logs, outside both locks");
  E01VideoIngress.message(new ByteArrayInputStream(new byte[0]),0,100,50);ok(android.util.Log.lines.size()==1,"foreign stream ignored");set(logs.evidence,"window",System.nanoTime()-11000000000L);android.util.Log.fail=true;E01VideoIngress.message(logs,0,101,50);ok(true,"logging failure does not interrupt media");android.util.Log.fail=false;logs.close();
 }
 public static void main(String[] args)throws Exception{workerPriority();timing();byteEquality();waitsAndErrors();closeAndLogs();System.out.println("PASS "+checks+" ingress evidence priority/denial/caller-isolation/timing/quotas/type/byte-order/wrap/EOF/error/wait/close/log-lock checks (fake Android, no vehicle)");}
}
