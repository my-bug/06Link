package com.shilapi.xcertplay;
import android.content.Context;
import android.graphics.Canvas;
import com.shilapi.xcertplay.iap2.wire.Iap2Frame;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Field;
import java.nio.charset.StandardCharsets;
import java.util.Random;

public final class MusicCardProbe {
 static int checks;
 static void check(boolean value,String why){checks++;if(!value)throw new AssertionError(why);}
 static byte[] join(byte[]...values)throws Exception{ByteArrayOutputStream b=new ByteArrayOutputStream();for(byte[] a:values)b.write(a);return b.toByteArray();}
 static byte[] tlv(int id,byte[] value)throws Exception{int n=value.length+4;return join(new byte[]{(byte)(n>>8),(byte)n,(byte)(id>>8),(byte)id},value);}
 static byte[] str(int id,String value)throws Exception{return tlv(id,join(value.getBytes(StandardCharsets.UTF_8),new byte[]{0}));}
 static void send(byte[] data){E01MusicCard.onFrame(new Iap2Frame(0x5001,data));}
 static E01MusicCard.State state()throws Exception{Field f=E01MusicCard.class.getDeclaredField("state");f.setAccessible(true);return (E01MusicCard.State)f.get(null);}
 static String rendered(E01MusicCard v,String name)throws Exception{Field f=E01MusicCard.class.getDeclaredField(name);f.setAccessible(true);return (String)f.get(v);}
 public static void main(String[] args)throws Exception{
  E01MusicCard.clear();E01MusicCard view=new E01MusicCard(new Context());
  view.place(1920,720);int placements=view.placements;view.place(1920,720);
  check(view.placements==placements,"same music bounds do not relayout");
  view.onAttachedToWindow();view.onSizeChanged(270,306,0,0);
  send(join(tlv(0,join(str(1,"夜曲"),str(12,"周杰伦"))),tlv(1,tlv(0,new byte[]{1}))));
  check(state().title.equals("夜曲")&&state().artist.equals("周杰伦")&&state().status==1,"decode media and status groups");
  int invalidates=view.invalidates;E01MusicCard.State cached=state();
  send(tlv(1,tlv(1,new byte[]{0,0,0,10})));
  check(state()==cached&&view.invalidates==invalidates,"elapsed-only update neither erases song nor redraws card");
  send(tlv(1,tlv(0,new byte[]{2})));
  check(state().title.equals("夜曲")&&state().artist.equals("周杰伦")&&state().status==2,"pause delta retains metadata");
  check(view.invalidates==invalidates+1,"changed status redraws visible card once");
  send(tlv(1,tlv(0,new byte[]{2})));
  check(view.invalidates==invalidates+1,"duplicate status does not redraw");
  send(tlv(0,str(12,"新歌手")));
  check(state().title.equals("夜曲")&&state().artist.equals("新歌手"),"artist-only delta retains title");
  send(tlv(0,str(1,"新歌名")));
  check(state().artist.equals("新歌手")&&state().title.equals("新歌名"),"title-only delta retains artist");
  send(tlv(0,str(12,"")));
  check(state().artist.isEmpty()&&state().title.equals("新歌名"),"explicit empty field clears just that field");
  cached=state();invalidates=view.invalidates;
  send(join(tlv(0,str(1,"must not commit")),tlv(1,new byte[]{0,5,0,0})));
  check(state()==cached&&view.invalidates==invalidates,"malformed later group cannot partially commit earlier fields");
  send(tlv(1,tlv(0,new byte[]{})));
  check(state()==cached,"wrong status width ignored atomically");
  E01MusicCard.onFrame(new Iap2Frame(0x5201,tlv(0,str(1,"navigation"))));
  E01MusicCard.onFrame(null);E01MusicCard.onFrame(new Iap2Frame(0x5001,null));send(new byte[65536]);
  check(state()==cached,"navigation/null/oversize input ignored");
  Random rng=new Random(20261022);
  for(int i=0;i<1000;i++){
   byte[] malformed=new byte[4+rng.nextInt(128)];rng.nextBytes(malformed);malformed[0]=0;malformed[1]=3;
   send(malformed);check(state()==cached,"malformed TLV safely ignored");
  }
  StringBuilder huge=new StringBuilder();for(int i=0;i<300;i++)huge.append("歌😀");
  send(tlv(0,str(1,huge.toString())));
  check(state().title.codePointCount(0,state().title.length())==128,"bounded Unicode text without split surrogate");
  Canvas small=new Canvas(270,306);view.onDraw(small);String clipped=rendered(view,"titleText");
  check(clipped.endsWith("…")&&!Character.isHighSurrogate(clipped.charAt(clipped.length()-2)),"long display label ellipsized without dangling high surrogate");
  E01MusicCard.State repeated=state();view.onDraw(new Canvas(270,306));
  check(state()==repeated&&view.invalidates==invalidates+1,"draw does not publish state or schedule animation");
  send(tlv(0,join(str(1,"测试\n歌曲\r名称"),str(12,"测试歌手"))));
  check(!state().title.contains("\n")&&!state().title.contains("\r"),"remote newlines cannot escape card layout");
  send(join(tlv(0,join(str(1,"一路向北"),str(12,"周杰伦"))),tlv(1,tlv(0,new byte[]{1}))));
  Canvas preview=new Canvas(270,306);view.onDraw(preview);
  javax.imageio.ImageIO.write(preview.image,"png",new java.io.File(args[0]));
  check(rendered(view,"titleText").equals("一路向北")&&rendered(view,"headingText").equals("正在播放"),"display cache contains song and playing label");
  view.onDetachedFromWindow();invalidates=view.invalidates;
  E01MusicCard.clear();check(view.invalidates==invalidates,"detached view no longer receives updates");
  check(state().title.isEmpty()&&state().artist.isEmpty()&&state().status==-1,"session shutdown clears old song");
  E01MusicCard view2=new E01MusicCard(new Context());view2.onAttachedToWindow();view2.onSizeChanged(270,306,0,0);
  view2.onDraw(new Canvas(270,306));check(rendered(view2,"titleText").equals("暂无歌曲"),"new view cannot inherit previous phone song after clear");
  view2.onDetachedFromWindow();
  System.out.println("{\"checks_passed\":"+checks+",\"scope\":\"iAP2 incremental media parsing, malformed input, bounded Unicode, lifecycle and repaint suppression; phone music output not exercised\"}");
 }
}
