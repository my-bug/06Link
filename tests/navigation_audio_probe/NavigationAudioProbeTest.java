package com.shilapi.xcertplay;
import android.media.*;
import android.os.SystemClock;
import android.util.Log;
import java.util.*;
import java.lang.reflect.*;
public final class NavigationAudioProbeTest {
 static int checks;
 static void check(boolean b,String why){checks++;if(!b)throw new AssertionError(why);}
 static AudioManager manager=new AudioManager();
 static byte[] pcm(int samples,int value){byte[] b=new byte[samples*2];for(int i=0;i<samples;i++){int v=i%2==0?value:-value;b[i*2]=(byte)v;b[i*2+1]=(byte)(v>>8);}return b;}
 static void register(AudioTrack t){E01NavigationAudioProbe.register(manager,t,10,null);}
 static void feed(AudioTrack t,int value){byte[] b=pcm(1000,value);E01NavigationAudioProbe.pcm(t,b,0,b.length);}
 static void tick(AudioTrack t,long delta){SystemClock.now+=delta;E01NavigationAudioProbe.tick(t);}
 static String last(){return Log.lines.get(Log.lines.size()-1);}
 static long field(AudioTrack t,String key)throws Exception{Field m=E01NavigationAudioProbe.class.getDeclaredField("tracks");m.setAccessible(true);Object e=((Map)m.get(null)).get(t);Field f=e.getClass().getDeclaredField(key);f.setAccessible(true);return f.getLong(e);}
 static void gates(){
  AudioTrack t=new AudioTrack();E01AudioRoute.enabled=false;register(t);feed(t,1000);tick(t,20000);check(t.reads==0&&manager.reads==0&&Log.lines.isEmpty(),"non-E01 entirely inert");
  E01AudioRoute.enabled=true;E01NavigationAudioProbe.register(manager,t,3,null);feed(t,1000);tick(t,20000);check(t.reads==0&&manager.reads==0&&Log.lines.isEmpty(),"media retained only as lifecycle marker");
  AudioTrack nav=new AudioTrack();register(nav);check(last().contains("实际声道=10")&&last().contains("采样率=24000")&&last().contains("通道数=1")&&last().contains("会话=7"),"records actual track metadata");
  register(nav);check(Log.lines.size()==1&&nav.reads==4,"duplicate registration does not re-read or consume budget");
  E01NavigationAudioProbe.release(nav);E01NavigationAudioProbe.release(t);
 }
 static void levels(){
  AudioTrack t=new AudioTrack();register(t);byte[] b=pcm(1000,16384),before=b.clone();E01NavigationAudioProbe.pcm(t,b,0,b.length);tick(t,9999);check(Log.lines.size()==1,"no summary before ten seconds");tick(t,1);
  check(last().contains("PCM峰值=-6.0dBFS 有声片段RMS=-6.0dBFS"),"known half-scale amplitude remains -6dBFS");check(last().contains("导航档=8/15 媒体档=6"),"uses current user indices");check(Arrays.equals(before,b),"PCM byte-for-byte unchanged");
  manager.nav=12;feed(t,4096);tick(t,10000);check(last().contains("PCM峰值=-18.1dBFS")&&last().contains("导航档=12/15"),"records independent PCM drop and user volume increase");
  E01NavigationAudioProbe.release(t);
 }
 static void sampling()throws Exception{
  AudioTrack t=new AudioTrack();register(t);byte[] b=pcm(200000,1000);for(int i=0;i<100;i++)E01NavigationAudioProbe.pcm(t,b,0,b.length);
  check(field(t,"samples")==256,"bounded contiguous sample count despite repeated writes");SystemClock.now+=99;feed(t,2000);check(field(t,"samples")==256,"100ms throttle excludes early packet");
  SystemClock.now++;feed(t,2000);check(field(t,"samples")==512,"eligible second fragment included");check(manager.reads==3,"PCM sampling never queries AudioManager");
  tick(t,10000);check(last().contains("抽样=512")&&last().contains("窗口毫秒=100"),"summary reports sampled count and interval");
 }
 static void silence(){
  AudioTrack t=new AudioTrack();register(t);feed(t,0);tick(t,10000);feed(t,16);tick(t,10000);check(Log.lines.size()==1,"silence and tiny numerical noise cause no summaries");
  feed(t,1000);tick(t,10000);check(Log.lines.size()==2,"voice creates one summary");tick(t,10000);check(Log.lines.size()==2,"no repeated report with no new samples");
 }
 static void budgets(){
  AudioTrack media=new AudioTrack();E01NavigationAudioProbe.register(manager,media,3,null);
  for(int i=0;i<20;i++){AudioTrack t=new AudioTrack();register(t);E01NavigationAudioProbe.release(t);}check(Log.lines.size()==8,"only eight registration records across nav rebuilds");
  AudioTrack nav=new AudioTrack();register(nav);MediaCodec codec=new MediaCodec();for(int i=0;i<100;i++){codec.format.setInteger("sample-rate",24000+i);codec.format.setInteger("channel-count",1);E01NavigationAudioProbe.decodedFormat(nav,codec);}check(Log.lines.size()==30,"all event kinds share a hard 30-line limit");
  feed(nav,1000);tick(nav,10000);check(Log.lines.size()==30,"no statistics exceed exhausted budget");
  E01NavigationAudioProbe.release(nav);E01NavigationAudioProbe.release(media);AudioTrack exhausted=new AudioTrack();register(exhausted);check(Log.lines.size()==30,"zero tracks alone never renews budget");E01NavigationAudioProbe.release(exhausted);E01NavigationAudioProbe.resetSession();AudioTrack again=new AudioTrack();register(again);check(Log.lines.size()==31,"explicit complete media-sink closure renews budget");
 }
 static void expiry()throws Exception{
  AudioTrack t=new AudioTrack();register(t);SystemClock.now+=300000;feed(t,16384);E01NavigationAudioProbe.tick(t);check(field(t,"samples")==0&&Log.lines.size()==1,"five-minute deadline disables hot-path sample scans");
  AudioTrack peer=new AudioTrack();register(peer);check(Log.lines.size()==1,"track rebuild cannot renew five-minute window");
 }
 static void formats(){
  AudioTrack t=new AudioTrack();register(t);MediaCodec c=new MediaCodec();c.format.setInteger("sample-rate",24000);c.format.setInteger("channel-count",1);E01NavigationAudioProbe.decodedFormat(t,c);check(last().contains("对比=一致"),"matches actual decoder format and actual track");
  E01NavigationAudioProbe.decodedFormat(t,c);check(Log.lines.size()==2,"unchanged decoder metadata deduplicated");c.format.setInteger("sample-rate",48000);E01NavigationAudioProbe.decodedFormat(t,c);check(last().contains("解码采样率=48000")&&last().contains("对比=不一致"),"real decoder format mismatch visible");check(t.rate==24000,"format diagnostic never recreates/relabels track");
  c.format.values.clear();E01NavigationAudioProbe.decodedFormat(t,c);check(last().contains("对比=未知"),"missing fields never falsely count as matching");
 }
 static void faults(){
  AudioTrack t=new AudioTrack();t.fail=true;manager.fail=true;register(t);check(last().contains("实际声道=未知")&&last().contains("导航档=未知/未知"),"getter errors isolated and marked unknown");
  feed(t,1000);tick(t,10000);check(last().contains("输出"),"failed metadata does not prevent numeric evidence");
  MediaCodec c=new MediaCodec();c.fail=true;E01NavigationAudioProbe.decodedFormat(t,c);feed(t,1000);tick(t,10000);check(Log.lines.size()==2,"codec exception disables diagnostic without escaping");
  E01NavigationAudioProbe.release(t);
 }
 static void overlap(){
  AudioTrack a=new AudioTrack(),b=new AudioTrack();register(a);register(b);feed(a,1000);feed(b,2000);tick(b,10000);check(Log.lines.size()==2,"older pending track has first summary turn");E01NavigationAudioProbe.tick(a);check(last().contains("输出 轨=1"),"first track identified");
  feed(a,3000);tick(a,10000);check(Log.lines.size()==3,"second pending track cannot be starved");E01NavigationAudioProbe.tick(b);check(last().contains("输出 轨=2"),"second track identified");
 }
 static void rebuild(){
  AudioTrack media=new AudioTrack();E01NavigationAudioProbe.register(manager,media,3,null);AudioTrack nav=new AudioTrack();register(nav);feed(nav,1000);tick(nav,10000);E01NavigationAudioProbe.release(nav);
  AudioTrack again=new AudioTrack();register(again);feed(again,1000);E01NavigationAudioProbe.tick(again);check(Log.lines.size()==3,"new NAV may log registration but cannot bypass statistic interval");tick(again,10000);check(last().contains("输出 轨=2"),"new NAV distinct ID under same session budget");
 }
 static void inputs()throws Exception{
  AudioTrack t=new AudioTrack();register(t);byte[] b=pcm(1000,32000);
  E01NavigationAudioProbe.pcm(t,null,0,10);E01NavigationAudioProbe.pcm(t,b,-1,10);E01NavigationAudioProbe.pcm(t,b,0,0);E01NavigationAudioProbe.pcm(t,b,b.length,10);E01NavigationAudioProbe.pcm(t,b,0,b.length+1);check(field(t,"samples")==0,"invalid inputs ignored safely");
  Arrays.fill(b,20,40,(byte)0);E01NavigationAudioProbe.pcm(t,b,20,20);tick(t,10000);check(Log.lines.size()==1,"uses accepted slice only, ignores nonzero unaccepted bytes");
  byte[] odd={(byte)0xff,0,0x40,0,0x40,(byte)0xff};SystemClock.now+=100;E01NavigationAudioProbe.pcm(t,odd,1,4);tick(t,10000);check(last().contains("PCM峰值=-6.0dBFS"),"nonzero offset correctly decodes S16 little endian");
 }
 static void shortTrack(){
  AudioTrack a=new AudioTrack();register(a);feed(a,1000);tick(a,3000);check(Log.lines.size()==1,"short phrase has no premature periodic report");E01NavigationAudioProbe.release(a);check(last().contains("结束输出 轨=1"),"short phrase produces closing summary");
  AudioTrack b=new AudioTrack();register(b);feed(b,2000);tick(b,3000);E01NavigationAudioProbe.release(b);check(Log.lines.size()==3,"next short phrase respects global ten-second summary throttle");
  for(int i=0;i<20;i++){AudioTrack t=new AudioTrack();register(t);E01NavigationAudioProbe.release(t);}check(Log.lines.size()==9,"NAV-only zero-track gaps cannot reset registration budget");
  AudioTrack old=new AudioTrack();register(old);E01NavigationAudioProbe.resetSession();AudioTrack fresh=new AudioTrack();register(fresh);check(Log.lines.size()==10,"explicit media-sink closure resets bounded diagnostics");
  feed(old,3000);tick(old,10000);E01NavigationAudioProbe.release(old);check(Log.lines.size()==10,"late old-renderer events do not enter new session");
  feed(fresh,4000);tick(fresh,10000);check(last().contains("输出 轨=1")&&Log.lines.size()==11,"late old release cannot reset or remove current evidence");
 }
 static void reporter(){
  AudioTrack t=new AudioTrack();final List<String> sent=new ArrayList<String>();E01NavigationAudioProbe.register(manager,t,10,v->{sent.add((String)v);return null;});feed(t,1000);tick(t,10000);check(sent.equals(Log.lines),"same bounded text enters app reporter");check(sent.get(0).startsWith("[导航音量]"),"bounded diagnostic prefix");
  E01NavigationAudioProbe.release(t);E01NavigationAudioProbe.resetSession();AudioTrack bad=new AudioTrack();E01NavigationAudioProbe.register(manager,bad,10,v->{throw new IllegalStateException();});feed(bad,1000);tick(bad,10000);check(Log.lines.size()==3,"reporter failure cannot interrupt audio and disables more work");
 }
 public static void main(String[] args)throws Exception{NavigationAudioProbeTest.class.getDeclaredMethod(args[0]).invoke(null);System.out.println("PASS "+args[0]+" "+checks);}
}
