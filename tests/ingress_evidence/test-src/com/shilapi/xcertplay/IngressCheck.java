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
  String first=e.takeSummary();ok(first.contains("spanMs=10000 frames=2 fps=0.2 bytes=300"),"startup summary uses the real first ten-second window");
  ok(e.takeTimingSummary().contains("spanMs=10000"),"startup distribution uses the same captured window");
  ok(e.reportIfDue(base+10000000001L)==null&&e.takeSummary()==null&&e.takeTimingSummary()==null,"same window cannot report twice");
  e.sourceRead(base+11000000000L,base+11001000000L,-2);e.sourceRead(base+11002000000L,base+11003000000L,-1);
  e.packet(0,0,0,base+12000000000L);e.packet(0,5000000000L,1,base+13000000000L);e.packet(0,5000000000L,1,base+14000000000L);e.packet(0,4000000000L,1,base+15000000000L);
  s=e.reportIfDue(base+20000000000L);ok(s.contains("readCalls=2 bytes=0 readErrors=1"),"read failure and EOF do not create data");
  ok(s.contains("missingPts=1 nonIncreasingPts=2"),"missing repeated and reverse PTS counted without fabricating source cadence");
  ok(e.takeSummary().contains("spanMs=10000 frames=4")&&e.takeTimingSummary()!=null,"second startup summary does not reuse first-window counters");
  for(int n=3;n<=9;n++){
   ok(e.reportIfDue(base+n*10000000000L)!=null,"bounded report "+n);
   String window=e.takeSummary(),distribution=e.takeTimingSummary();
   if(n==3||n==9)ok(window.contains("spanMs="+(n==3?10000:60000)+" frames=0")&&distribution!=null,"third startup then independent one-minute summary "+n);
   else ok(window==null&&distribution==null,"detailed logcat window does not force persistent IO "+n);
  }
  ok(e.takeSummary()==null,"summary consumed once");
  e.sourceRead(base+90000000001L,base+91000000000L,999);e.packet(0,90000000000L,999,base+91000000000L);
  ok(e.reportIfDue(base+100000000000L)==null,"later detailed reports wait a minute");
  ok(e.reportIfDue(base+120000000000L)==null,"persistent summary independent of verbose report window");
  ok(e.takeSummary()==null&&e.takeTimingSummary()==null,"no early persistent report between minute boundaries");
  ok(e.reportIfDue(base+150000000000L)!=null,"detailed report survives long session at minute cadence");
  String minute=e.takeSummary();ok(minute.contains("spanMs=60000 frames=1")&&minute.contains("bytes=999"),"records data after first ninety seconds");
  E01IngressEvidence expiry=new E01IngressEvidence(1,base,base);expiry.packet(0,1,10,base+91000000000L);ok(expiry.reportIfDue(base+91000000000L)!=null&&expiry.takeSummary().contains("spanMs=91000 frames=1"),"late first packet retains real elapsed window");
  E01IngressEvidence hours=new E01IngressEvidence(2,base,base);int summaries=0;
  for(int n=1;n<=7200;n++){long now=base+n*1000000000L;hours.sourceRead(now-1000000L,now,10);hours.packet(0,now,10,now);hours.reportIfDue(now);String item=hours.takeSummary();if(item!=null){summaries++;int frames=summaries<=3?10:60;ok(item.contains("frames="+frames+" ")&&item.contains("bytes="+(frames*10)+" "),"two-hour window keeps accurate nonoverlapping counters");}}
  ok(summaries==122,"two hours produces three startup and 119 minute summaries, never per packet");
  E01IngressEvidence peer=new E01IngressEvidence(88,base+500000000L,base);ok(peer.reportIfDue(base+10500000000L).contains("winMs=500..10500"),"different sockets use same event epoch");
 }
 static void startupWindows(){
  long base=1000000000L,ten=10000000000L;
  E01IngressEvidence main=new E01IngressEvidence(101,base,base,110);
  E01IngressEvidence secondary=new E01IngressEvidence(102,base+5000000000L,base,111);
  for(int n=1;n<=3;n++){
   long end=base+n*ten;
   main.packet(0,end,12,end-1);main.sourceRead(end-2,end-1,12);
   main.reportIfDue(end-1);ok(main.takeSummary()==null&&main.takeTimingSummary()==null,"no persistent window before exact boundary "+n);
   main.reportIfDue(end);String text=main.takeSummary(),distribution=main.takeTimingSummary();
   ok(text.contains("spanMs=10000 frames=1 fps=0.1 bytes=12")&&text.endsWith("screen=110"),"exact startup boundary preserves real counts and FPS "+n);
   ok(distribution.contains("screen=110 spanMs=10000")&&distribution.contains("arrival="+(n==1?0:1)+"/"),"startup histogram resets but preserves cross-window interval "+n);
   main.reportIfDue(end+1);ok(main.takeSummary()==null&&main.takeTimingSummary()==null,"no catch-up or duplicate startup emission "+n);
   secondary.packet(0,end,7,end);secondary.reportIfDue(end);
   if(n==1)ok(secondary.takeSummary()==null&&secondary.takeTimingSummary()==null,"secondary stream does not inherit main startup clock");
   else ok(secondary.takeSummary().endsWith("screen=111")&&secondary.takeTimingSummary().contains("screen=111"),"secondary stream owns its counters and histogram "+n);
  }
  for(int n=4;n<=8;n++){main.reportIfDue(base+n*ten);ok(main.takeSummary()==null&&main.takeTimingSummary()==null,"startup completes without persistent ten-second logging "+n);}
  main.packet(0,base+90000000000L,9,base+90000000000L-1);
  main.reportIfDue(base+90000000000L-1);ok(main.takeSummary()==null&&main.takeTimingSummary()==null,"steady-state exact minute boundary remains exclusive");
  main.reportIfDue(base+90000000000L);ok(main.takeSummary().contains("spanMs=60000 frames=1")&&main.takeTimingSummary().contains("spanMs=60000"),"steady-state paired summaries begin after a complete minute");
  E01IngressEvidence late=new E01IngressEvidence(103,base,base,110);
  late.packet(0,base,1,base+91000000000L);late.reportIfDue(base+91000000000L);
  ok(late.takeSummary().contains("spanMs=91000 frames=1 fps=0.0")&&late.takeTimingSummary().contains("spanMs=91000"),"late startup keeps actual elapsed rather than manufacturing a ten-second FPS");
  late.reportIfDue(base+91000000001L);ok(late.takeSummary()==null&&late.takeTimingSummary()==null,"late startup emits one snapshot without catch-up bursts");
 }
 static void pairedSummary()throws Exception{
  long b=1000000000L;E01IngressEvidence e=new E01IngressEvidence(91,b,b);
  e.sourceRead(b,b+140000000L,1440);e.sourceRead(b+200000000L,b+210000000L,8000);
  e.packet(0,b,10,b+1000000000L);
  e.packet(0,b+33000000L,10,b+1130000000L);
  e.packet(1,0,10,b+1140000000L);
  e.packet(0,b+99000000L,10,b+1190000000L);
  e.packet(0,b+115000000L,10,b+1210000000L);
  e.reportIfDue(b+60000000000L);
  E01IngressEvidence.Summary snap=(E01IngressEvidence.Summary)object(e,"summary");
  final java.util.concurrent.atomic.AtomicReference<String> formatted=new java.util.concurrent.atomic.AtomicReference<String>();
  synchronized(e){Thread t=new Thread(()->formatted.set(snap.format()));t.start();t.join(2000);ok(!t.isAlive(),"minute summary formatting does not acquire ingress lock");}
  String value=e.takeSummary();ok(value.equals(formatted.get()),"published minute summary uses stable captured window");
  ok(value.contains("arrivalMaxMs=130")&&value.contains("senderStepMaxMs=66")&&value.contains("senderAtGapMs=33"),"largest arrival pairs with its own sender delta, not independent maximum");
  ok(value.contains("gapsOver50=2")&&value.contains("gapsOver100=1"),"threshold counts ignore config and distinguish frequency from one maximum");
  ok(value.contains("readMaxMs=140")&&value.contains("readMaxBytes=1440"),"slowest read preserves its returned byte count");
  e.reportIfDue(b+120000000000L);value=e.takeSummary();
  ok(value.contains("frames=0")&&value.contains("senderAtGapMs=-1")&&value.contains("gapsOver50=0")&&value.contains("readMaxBytes=0"),"new window resets correlation and counters without inventing a frame");
  e.packet(0,0,10,b+121000000000L);e.reportIfDue(b+180000000000L);
  ok(e.takeSummary().contains("senderAtGapMs=-1"),"missing sender timestamps remain unknown at a large arrival gap");
 }
 static void frameDistributions()throws Exception{
  long b=1000000000L;E01IngressEvidence e=new E01IngressEvidence(97,b,b,110);
  long arrival=b+1000000000L,pts=b;e.packet(0,pts,8,arrival);
  for(int n=1;n<=100;n++){
   arrival+=(n<=94?16000000L:n<=98?60000000L:130000000L);pts+=33000000L;
   e.packet(1,0,8,arrival-1);e.packet(0,pts,8,arrival);
  }
  e.reportIfDue(b+60000000000L);
  E01IngressEvidence.Summary snap=(E01IngressEvidence.Summary)object(e,"summary");
  ok(snap.arrivalTiming.count==100&&snap.arrivalTiming.p95UpperUs==66667&&snap.arrivalTiming.p99UpperUs==130000,"arrival histogram counts all frame intervals and reports bounded percentile estimates");
  ok(snap.arrivalTiming.over50==6&&snap.arrivalTiming.over100==2,"arrival histogram threshold counts match whole-window frame events");
  ok(snap.senderTiming.count==100&&snap.senderTiming.p95UpperUs==33000&&snap.senderTiming.p99UpperUs==33000,"sender distribution uses positive source deltas independently");
  final java.util.concurrent.atomic.AtomicReference<String> formatted=new java.util.concurrent.atomic.AtomicReference<String>();
  synchronized(e){Thread t=new Thread(()->formatted.set(snap.timing()));t.start();t.join(2000);ok(!t.isAlive(),"timing summary formats outside ingress lock");}
  String plain=e.takeSummary(),timing=e.takeTimingSummary();
  ok(timing.equals(formatted.get())&&timing.contains("histUs=n/p95u/p99u/max/gt50/gt100 arrival=100/66667/130000/130000/6/2"),"separate timing line states bucket-upper schema and immutable complete-window snapshot");
  ok(plain.endsWith("screen=110")&&timing.contains("reader=97 screen=110"),"real negotiated screen identity accompanies both summaries");
  ok(timing.contains("arrivalMaxMs=130 senderAtGapMs=33"),"arrival peak retains the source step of that same frame event");
  ok(e.takeTimingSummary()==null,"timing summary consumed once, never per frame");
  e.reportIfDue(b+120000000000L);e.takeSummary();timing=e.takeTimingSummary();
  ok(timing.contains("arrival=0/0/0/0/0/0 sender=0/0/0/0/0/0"),"empty window resets distributions instead of reusing stale percentiles");
  e.packet(0,0,8,b+121000000000L);e.packet(0,100,8,b+121016000000L);e.packet(0,100,8,b+121032000000L);e.packet(0,99,8,b+121048000000L);
  e.reportIfDue(b+180000000000L);e.takeSummary();timing=e.takeTimingSummary();
  ok(timing.contains("arrival=4/")&&timing.contains("sender=0/0/0/0/0/0"),"missing/repeated/reverse PTS never manufacture source distribution samples");
  ok(timing.contains("senderAtGapMs=-1"),"missing source timestamp at cross-window peak stays unknown");
  ok(snap.arrivalTiming.count==100&&snap.arrivalTiming.maxUs==130000,"old histogram snapshot is immutable after later resets");
  E01IngressEvidence secondary=new E01IngressEvidence(98,b,b,111);long now=b+1000000000L;secondary.packet(0,now,8,now);
  for(int n=1;n<=1200;n++){now+=50000000L;secondary.packet(0,now,8,now);}
  secondary.reportIfDue(now);plain=secondary.takeSummary();timing=secondary.takeTimingSummary();
  ok(plain.endsWith("screen=111")&&timing.contains("arrival=1200/50000/50000/50000/0/0"),"20fps secondary cadence is identified and exactly 50ms does not count as greater-than-50");
  for(int screen:new int[]{0,-1,112}){
   E01IngressEvidence unknown=new E01IngressEvidence(99,b,b,screen);unknown.reportIfDue(b+60000000000L);
   ok(unknown.takeSummary().endsWith("screen=unknown")&&unknown.takeTimingSummary().contains("screen=unknown"),"unknown screen is never guessed from frame rate "+screen);
  }
  E01IngressEvidence hours=new E01IngressEvidence(100,b,b,110);int distributions=0;
  for(int n=1;n<=7200;n++){now=b+n*1000000000L;hours.packet(0,now,8,now);hours.reportIfDue(now);hours.takeSummary();if(hours.takeTimingSummary()!=null)distributions++;}
  ok(distributions==122,"timing produces three startup lines then one per minute for two hours");
  // One hour of frame silence still fits the existing 512-character record cap.
  E01IngressEvidence longGap=new E01IngressEvidence(Integer.MAX_VALUE,b,b,110);longGap.packet(0,b,1,b);longGap.packet(0,b+3600000000000L,1,b+3600000000000L);longGap.reportIfDue(b+3600000000000L);
  for(String s:new String[]{plain,timing,longGap.takeSummary(),longGap.takeTimingSummary()})ok(("2026-11-20 00:00:00 [接收摘要] video "+s).length()<=512,"separate bounded diagnostics retain last field under line cap");
 }
 static void socketScreenIdentity()throws Exception{
  for(int screen:new int[]{110,111,0}){
   final java.util.concurrent.atomic.AtomicBoolean sourceClosed=new java.util.concurrent.atomic.AtomicBoolean();
   Socket socket=new Socket(){public InputStream getInputStream(){return new ByteArrayInputStream(new byte[]{7,8}){public void close(){sourceClosed.set(true);}};}};
   InputStream input=screen==0?E01VideoIngress.wrap(socket):E01VideoIngress.wrap(socket,screen);
   ok(input==E01VideoIngress.wrap(socket,111),"repeat wrap retains original stream identity "+screen);
   E01VideoIngress.Ahead a=(E01VideoIngress.Ahead)input;long now=System.nanoTime();
   set(a.evidence,"summaryWindow",now-60000000001L);a.evidence.reportIfDue(now);
   ok(a.evidence.takeSummary().endsWith("screen="+(screen==0?"unknown":screen)),"socket wrapper binds negotiated screen without guessing "+screen);
   E01VideoIngress.close(socket);ok(sourceClosed.get()&&a.terminated(2000),"diagnostic screen metadata preserves source cancellation "+screen);
  }
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
 static void minuteEmission()throws Exception{
  E01VideoIngress.Ahead a=new E01VideoIngress.Ahead(new ByteArrayInputStream(new byte[0]),32,111);
  android.util.Log.lines.clear();E01VideoEvidence.samples.clear();android.util.Log.forbiddenRing=a;android.util.Log.forbiddenStats=a.evidence;
  long now=System.nanoTime();set(a.evidence,"summaryWindow",now-61000000000L);
  E01VideoIngress.message(a,0,100,50);
  ok(E01VideoEvidence.samples.size()==2,"one due window persists original summary and separate timing record");
  ok(E01VideoEvidence.samples.get(0).endsWith("screen=111")&&E01VideoEvidence.samples.get(1).startsWith("timing run=1 configured=wireless reader="),"both persistent lines retain session and screen identity");
  for(int n=0;n<100;n++)E01VideoIngress.message(a,0,101+n,50);
  ok(E01VideoEvidence.samples.size()==2,"additional frames never trigger per-frame persistent records");
  a.close();android.util.Log.forbiddenRing=android.util.Log.forbiddenStats=null;
 }
 public static void main(String[] args)throws Exception{workerPriority();timing();startupWindows();pairedSummary();frameDistributions();socketScreenIdentity();byteEquality();waitsAndErrors();closeAndLogs();minuteEmission();System.out.println("PASS "+checks+" ingress evidence priority/denial/caller-isolation/timing/distribution/screen/quotas/type/byte-order/wrap/EOF/error/wait/close/log-lock checks (fake Android, no vehicle)");}
}
