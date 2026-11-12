from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java
import subprocess,tempfile
HERE=Path(__file__).resolve().parent
JDK=find_java()['java_home']/'bin'
TEST=r'''package com.shilapi.xcertplay;
public class CardProbe {
 static int checks;
 static void ok(boolean value,String message){checks++;if(!value)throw new AssertionError(message);}
 static byte[] p(int sub,int value){return new byte[]{(byte)sub,(byte)value};}
 public static void main(String[] args)throws Exception{
  E01CardDiagnostic d=new E01CardDiagnostic();ok(d.poll(0)==null,"uninitialized is silent");
  d.observe(1,true,true,true,true);String s=d.poll(0);ok(s.contains("gen=1")&&s.contains("session=1"),"initial state emitted");
  d.observe(1,true,true,true,true);ok(d.poll(30000)==null,"same state no periodic heartbeat");
  d.rpc(0x76b,p(6,1),true);d.rpc(0x76c,p(1,1),true);d.rpc(0x76b,p(15,0),true);d.group(true,true,1,false);d.rpc(0x75d,p(74,1),true);
  s=d.poll(1000);ok(s.contains("init=1/1")&&s.contains("mapOn=1/1")&&s.contains("calcOn=1/1")&&s.contains("navOn=1/1")&&s.contains("running=1"),"initialization lifecycle counts");
  for(int i=0;i<1000;i++){d.rpc(0x76b,p(7,3),true);d.rpc(0x76b,p(15,0),true);d.group(false,true,2,false);ok(d.poll(1001+i)==null,"content must not create urgent logs");}
  s=d.poll(31000);ok(s.contains("update=1000/1000")&&s.contains("mapOn=1/1")&&s.contains("calcOn=1/1")&&s.contains("navOn=1/1")&&s.contains("running=1001"),"content only does not invent toggles");
  ok(s.length()<512,"normal summary fits policy line limit");ok(d.poll(61000)==null,"idle is silent");
  d.closing(E01CardDiagnostic.CLOSE_WINDOW);d.rpc(0x75d,p(74,2),true);d.rpc(0x76b,p(15,1),true);d.rpc(0x76b,p(6,0),false);d.rpc(0x76c,p(1,0),true);s=d.poll(32000);
  ok(s.contains("close=no-window")&&s.contains("mapOff=1/1")&&s.contains("calcOff=0/1")&&s.contains("end=1")&&s.contains("rpcRejected=1"),"cleanup counts attempted vs accepted and reason");
  ok(s.contains("屏显未确认"),"no physical display claim");
  d.rpc(0x72c,p(4,1),false);d.rpc(0x75d,p(5,1),false);d.rpc(0x76b,null,false);d.rpc(0x76b,new byte[]{6},false);ok(d.poll(62000)==null,"unknown irrelevant invalid packets ignored");
  d=new E01CardDiagnostic();int rows=0;for(long now=0;now<300000;now+=100){d.observe((int)now,true,true,(now%200)==0,true);d.rpc(0x75d,p(74,now%200==0?1:2),true);if(d.poll(now)!=null)rows++;}
  ok(rows<=50,"even 10Hz lifecycle churn bounded to <=5 rows per30s, got "+rows);
  s=d.poll(330000);ok(s!=null&&s.contains("mapOn=1500/1500")&&s.contains("mapOff=1500/1500"),"rate limiting preserves cumulative counts");
  d.observe(2,false,false,false,false);d.closing(99);s=d.poll(0);ok(s!=null&&s.contains("close=none"),"clock regression and invalid reason safe");
  String secret="A_PRIVATE_ROAD_NAME";byte[] body=new byte[secret.length()+2];body[0]=14;body[1]=(byte)secret.length();System.arraycopy(secret.getBytes(),0,body,2,secret.length());d.rpc(0x76b,body,true);d.group(false,true,0,false);s=d.poll(30000);ok(!s.contains(secret)&&s.contains("source=bootstrap"),"payload text not retained or emitted");
  for(java.lang.reflect.Field f:E01CardDiagnostic.class.getDeclaredFields())if(f.getType()==long.class&&!java.lang.reflect.Modifier.isStatic(f.getModifiers())&&!f.getName().equals("budgetAt")&&!f.getName().equals("lastEmit")){f.setAccessible(true);f.setLong(d,Long.MAX_VALUE);}
  d.rpc(0x76b,p(6,1),true);s=d.poll(60000);ok(s.length()<512&&s.contains("999999+")&&s.endsWith("屏显未确认"),"saturated counts stay bounded with visibility disclaimer intact");
  System.out.println("PASS "+checks+" card diagnostic checks; burst rows="+rows);
 }
}'''
with tempfile.TemporaryDirectory(prefix='06link-card-diag-') as t:
 d=Path(t);p=d/'com/shilapi/xcertplay/CardProbe.java';p.parent.mkdir(parents=True);p.write_text(TEST)
 r=subprocess.run([str(JDK/'javac'),'--release','8','-d',str(d/'classes'),str(HERE.parents[1]/'src/e01/com/shilapi/xcertplay/E01CardDiagnostic.java'),str(p)],text=True,capture_output=True);assert r.returncode==0,r.stderr
 r=subprocess.run([str(JDK/'java'),'-cp',str(d/'classes'),'com.shilapi.xcertplay.CardProbe'],capture_output=True,text=True,timeout=20)
 print(r.stdout+r.stderr);(HERE/'test-result.txt').write_text(r.stdout+r.stderr)
 raise SystemExit(r.returncode)
