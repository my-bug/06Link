package com.shilapi.xcertplay;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.lang.reflect.Field;
import static com.shilapi.xcertplay.MusicCardProbe.*;

public final class ArtworkProbe {
 static Object link=new Object();
 static int count;
 static void ok(boolean b,String reason){count++;if(!b)throw new AssertionError(reason);}
 static byte[] send(int id,int command,byte[] payload)throws Exception{
  return E01Artwork.onDatagram(link,join(new byte[]{(byte)id,(byte)command},payload));
 }
 static byte[] setup(int id,long size,int type)throws Exception{
  byte[] b=new byte[10];for(int i=0;i<8;i++)b[i]=(byte)(size>>>(56-8*i));b[8]=(byte)(type>>8);b[9]=(byte)type;
  return send(id,4,b);
 }
 static void reply(byte[] bytes,int id,int code,String why){ok(Arrays.equals(bytes,new byte[]{(byte)id,(byte)code}),why);}
 static void select(String title,int id)throws Exception{MusicCardProbe.send(tlv(0,join(str(1,title),tlv(26,new byte[]{(byte)id}))));}
 static ThreadPoolExecutor pool()throws Exception{Field f=E01Artwork.class.getDeclaredField("decoder");f.setAccessible(true);return(ThreadPoolExecutor)f.get(null);}
 static void idle()throws Exception{
  for(int i=0;i<300;i++){if(pool().getActiveCount()==0&&pool().getQueue().isEmpty()){Thread.sleep(20);if(pool().getActiveCount()==0&&pool().getQueue().isEmpty())return;}Thread.sleep(10);}
  throw new AssertionError("decoder did not become idle");
 }
 static byte[] picture(int w,int h,int color)throws Exception{
  java.awt.image.BufferedImage image=new java.awt.image.BufferedImage(w,h,java.awt.image.BufferedImage.TYPE_INT_RGB);
  java.awt.Graphics2D g=image.createGraphics();g.setColor(new java.awt.Color(color));g.fillRect(0,0,w,h);g.dispose();
  ByteArrayOutputStream out=new ByteArrayOutputStream();javax.imageio.ImageIO.write(image,"png",out);return out.toByteArray();
 }
 static void image(int id,byte[] data)throws Exception{reply(setup(id,data.length,2),id,1,"setup requests image");reply(send(id,0xc0,data),id,5,"complete image acknowledged");idle();}
 public static void main(String[] args)throws Exception{
  E01MusicCard.clear();byte[] blue=picture(800,600,0x227eea),red=picture(128,128,0xe54b66);
  MusicCardProbe.send(tlv(0,tlv(26,new byte[]{7})));image(7,blue);
  MusicCardProbe.send(tlv(0,str(1,"蓝色封面")));
  ok(state().artwork!=null,"initial title delta retains previously announced artwork ID");
  Bitmap first=state().artwork;ok(first!=null&&first.getWidth()==200&&first.getHeight()==150,"decode downsampled to <=256px off the link thread");
  E01MusicCard view=new E01MusicCard(new Context());view.onAttachedToWindow();view.onSizeChanged(270,306,0,0);
  Canvas rendered=new Canvas(270,306);view.onDraw(rendered);
  ok((rendered.image.getRGB(135,108)&0xffffff)==0x227eea,"actual decoded album image replaces symbol");
  ok((rendered.image.getRGB(79,52)>>>24)==0,"artwork corners clipped to rounded path");
  javax.imageio.ImageIO.write(rendered.image,"png",new java.io.File(args[0]));
  MusicCardProbe.send(tlv(1,tlv(0,new byte[]{2})));ok(state().artwork==first,"pause delta preserves artwork");
  send(7,2,new byte[]{});MusicCardProbe.send(tlv(0,str(1,"歌词第一行")));
  ok(state().artwork==first,"lyrics retain displayed cover after completed transfer cleanup");
  select("歌词第二行",7);ok(state().artwork==first,"same artwork ID retains displayed cover after cache cleanup");
  MusicCardProbe.send(tlv(0,str(1,"另一首歌")));ok(state().artwork==first&&state().artworkId==7,"lyric/title delta retains referenced cover until explicit new ID");
  image(8,red);ok(state().artwork==first,"unselected file does not change current view");
  select("红色封面",8);ok(state().artwork!=null,"picture received before metadata is selected later");
  select("同ID新歌",8);ok(state().artwork!=null,"explicit same ID references valid shared cover until a new setup replaces it");
  image(8,blue);ok(state().artwork!=null,"fresh same-ID transfer updates reused cover");
  reply(setup(8,red.length,2),8,1,"repeat setup requests fresh data instead of stale cache success");
  ok(state().artwork!=null,"replacement transfer keeps visible picture until successful decode");
  int split=red.length/2;ok(send(8,0x80,Arrays.copyOfRange(red,0,split))==null,"first fragment waits");
  reply(send(8,0x40,Arrays.copyOfRange(red,split,red.length)),8,5,"last fragment completes");idle();
  ok(state().artwork!=null&&(state().artwork.image.getRGB(30,30)&0xffffff)==0xe54b66,"multi-packet image is reassembled without headers");
  Bitmap resumed=state().artwork;
  for(int cycle=0;cycle<3;cycle++){
   MusicCardProbe.send(tlv(1,tlv(0,new byte[]{2})));ok(state().artwork==resumed,"pause retains cover");
   reply(setup(8,red.length,2),8,1,"resume repeated setup ACK unchanged");
   MusicCardProbe.send(tlv(1,tlv(0,new byte[]{1})));ok(state().artwork==resumed,"resume while cover retransmits retains cover");
   MusicCardProbe.send(tlv(0,tlv(26,new byte[]{8})));ok(state().artwork==resumed,"repeated artwork identifier before payload retains cover");
   send(8,2,new byte[]{});ok(state().artwork==resumed,"cancelled retransmission retains previous complete cover");
  }
  int invalidates=view.invalidates;MusicCardProbe.send(tlv(1,tlv(1,new byte[]{0,0,1,2})));
  ok(view.invalidates==invalidates,"elapsed updates do not decode or repaint cover");
  E01MusicCard.State previous=state();MusicCardProbe.send(tlv(0,tlv(26,new byte[]{1,2})));
  ok(state()==previous,"wrong artwork-ID width is rejected atomically");
  Bitmap validCover=state().artwork;image(8,picture(9000,1,0x115577));ok(state().artwork==validCover,"invalid replacement dimensions retain last valid image");
  image(8,new byte[]{0,1,2,3});ok(state().artwork==validCover,"corrupt replacement cannot clear a valid displayed image");
  reply(setup(1,E01Artwork.MAX_BYTES+1L,2),1,6,"oversized image rejected before allocation");
  reply(setup(1,-1L,2),1,6,"unsigned size overflow rejected");
  reply(setup(1,100,1),1,6,"unsupported file type rejected");
  reply(send(1,4,new byte[]{1}),1,6,"short setup rejected");
  reply(send(1,0xc0,red),1,6,"data without setup rejected");
  setup(1,3,2);reply(send(1,0xc0,new byte[]{1,2}),1,6,"truncated transfer rejected");
  setup(1,1,2);reply(send(1,0xc0,new byte[]{1,2}),1,6,"excess length rejected");
  setup(1,0,2);reply(send(1,0xc0,new byte[]{}),1,6,"empty artwork rejected");
  setup(1,red.length,2);reply(send(1,0,red),1,6,"continuation before first rejected");
  setup(1,red.length,2);send(1,0x80,new byte[]{1});reply(send(1,0x80,new byte[]{2}),1,6,"duplicate first rejected");
  setup(1,red.length,2);send(1,2,new byte[]{});reply(send(1,0x40,red),1,6,"cancel releases transfer");
  select("未知长度",4);setup(4,0,2);reply(send(4,0xc0,red),4,5,"bounded unknown-size transfer accepted");idle();ok(state().artwork!=null,"unknown-size image decoded");
  setup(1,100,2);setup(2,100,2);setup(3,100,2);reply(send(1,0xc0,red),1,6,"only two retained transfers");
  ok(E01Artwork.onDatagram(null,red)==null&&E01Artwork.onDatagram(link,null)==null&&E01Artwork.onDatagram(link,new byte[1])==null,"null and undersized input ignored");
  java.util.Random rng=new java.util.Random(23);for(int i=0;i<1000;i++){byte[] bad=new byte[2+rng.nextInt(200)];rng.nextBytes(bad);E01Artwork.onDatagram(link,bad);count++;}
  E01MusicCard.clear();select("队列上限",14);idle();
  final CountDownLatch queueBlock=new CountDownLatch(1),queueStarted=new CountDownLatch(1);
  pool().execute(new Runnable(){public void run(){queueStarted.countDown();try{queueBlock.await(3,TimeUnit.SECONDS);}catch(InterruptedException ignored){}}});
  ok(queueStarted.await(1,TimeUnit.SECONDS),"queue fixture running");
  for(int i=10;i<=14;i++){setup(i,red.length,2);send(i,0xc0,red);}
  ok(pool().getQueue().size()==1,"rapid transfers leave only newest pending decode");
  Field mapField=E01Artwork.class.getDeclaredField("transfers");mapField.setAccessible(true);
  ok(((Map)mapField.get(null)).size()==2,"completed and pending cache entries remain bounded");
  queueBlock.countDown();idle();ok(state().artwork!=null,"latest cover survives decode coalescing");
  E01MusicCard.clear();select("旧连接",9);idle();
  CountDownLatch blocked=new CountDownLatch(1),started=new CountDownLatch(1);
  pool().execute(new Runnable(){public void run(){started.countDown();try{blocked.await(3,TimeUnit.SECONDS);}catch(InterruptedException ignored){}}});
  ok(started.await(1,TimeUnit.SECONDS),"decoder blocking fixture running");
  setup(9,red.length,2);send(9,0xc0,red);E01MusicCard.clear();blocked.countDown();idle();
  ok(state().artwork==null&&state().artworkId==-1,"disconnect discards queued/in-flight picture");
  select("新连接",9);link=new Object();image(9,blue);ok(state().artwork!=null,"new link can receive artwork after clear");
  E01Artwork.closeLink(new Object());ok(state().artwork!=null,"old link cleanup cannot clear another connection");
  E01Artwork.closeLink(link);ok(state().artwork==null,"matching link cleanup clears picture");
  E01MusicCard.clear();select("无封面新会话",10);image(10,new byte[]{0,1,2});ok(state().artwork==null,"bad first image still shows fallback");
  image(10,red);ok(state().artwork!=null,"valid image still loads after malformed first image");
  select("新文件标识",11);ok(state().artwork==null,"different artwork ID does not borrow previous track cover");
  E01MusicCard.clear();view.onDetachedFromWindow();
  System.out.println("{\"checks_passed\":"+count+",\"scope\":\"session12 transfer, async bounded decode, metadata ordering, rounded image rendering, malformed packets and lifecycle; real iPhone not exercised\"}");
 }
}
