package com.shilapi.xcertplay;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.os.Build;
import android.widget.FrameLayout;
import com.shilapi.xcertplay.airplay.AirPlayDisplayConfig;
import com.shilapi.xcertplay.airplay.AirPlayInsets;
import java.lang.reflect.Field;
import java.util.Arrays;
import kotlin.Pair;
/** Production helpers with mocked Android/OEM transport; not compositor/vehicle proof. */
public final class GeometryProbe {
 static int checks;
 static final Context context=android.app.ActivityThread.application;
 static void ok(boolean b,String why){checks++;if(!b)throw new AssertionError(why);}
 static void style(String s){context.getSharedPreferences("06link_instrument",0).edit().putString("layout",s).commit();}
 static Object field(E01MusicCard v,String n)throws Exception{Field f=E01MusicCard.class.getDeclaredField(n);f.setAccessible(true);return f.get(v);}
 static AirPlayDisplayConfig config(int w,int h,Integer physical,int fps,int input,AirPlayInsets safe,String url,int features){return new AirPlayDisplayConfig(w,h,300,physical,fps,input,null,safe,Boolean.TRUE,url,features);}

 static boolean validUtf16(String value){
  for(int i=0;i<value.length();i++){
   char c=value.charAt(i);
   if(Character.isHighSurrogate(c)){if(i+1>=value.length()||!Character.isLowSurrogate(value.charAt(++i)))return false;}
   else if(Character.isLowSurrogate(c))return false;
  }
  return true;
 }
 static Canvas drawMusic(E01MusicCard view,int w,int h){Canvas c=new Canvas(w,h);view.onDraw(c);return c;}
 static void textAt(Canvas canvas,String expected,float baseline,float size,String why){
  boolean found=false;for(Canvas.TextDraw draw:canvas.texts)if(draw.text.equals(expected)&&Math.abs(draw.y-baseline)<.01&&Math.abs(draw.size-size)<.01)found=true;
  ok(found,why);
 }
 static void lyrics(String output)throws Exception{
  E01MusicCard.clear();style("mist");
  MusicCardProbe.send(MusicCardProbe.join(MusicCardProbe.tlv(0,MusicCardProbe.join(MusicCardProbe.str(1,"初始歌曲"),MusicCardProbe.str(12,"测试歌手"),MusicCardProbe.tlv(26,new byte[]{7}))),MusicCardProbe.tlv(1,MusicCardProbe.tlv(0,new byte[]{1}))));
  ArtworkProbe.image(7,ArtworkProbe.picture(128,128,0x227eea));
  android.graphics.Bitmap cover=MusicCardProbe.state().artwork;ok(cover!=null,"lyrics fixture receives actual decoded cover");
  E01MusicCard mist=new E01MusicCard(context);mist.place(1920,720);mist.onAttachedToWindow();mist.onSizeChanged(370,380,0,0);drawMusic(mist,370,380);
  String twoLines="风吹过夜晚的街角我们一起看星光落在海面";
  int before=mist.invalidates;
  MusicCardProbe.send(MusicCardProbe.tlv(0,MusicCardProbe.str(1,twoLines)));
  ok(mist.invalidates==before+1,"title lyric delta invalidates real attached mist view once");
  Canvas drawn=drawMusic(mist,370,380);String first=(String)field(mist,"titleText"),second=(String)field(mist,"titleSecond");
  ok(!first.isEmpty()&&!second.isEmpty(),"mist wraps received title into two visible lines");
  ok((first+second).equals(twoLines),"two-line title retains complete received lyric text");
  android.graphics.Paint paint=(android.graphics.Paint)field(mist,"titlePaint");
  ok(paint.measureText(first)<=310.01f&&paint.measureText(second)<=310.01f,"both lyric lines fit actual text width");
  textAt(drawn,first,232,22,"first lyric row is drawn at actual baseline and size");
  textAt(drawn,second,260,22,"second lyric row is drawn at actual baseline and size");
  textAt(drawn,"测试歌手",305,20,"artist is separated below lyric rows");
  javax.imageio.ImageIO.write(drawn.image,"png",new java.io.File(output));
  ok(MusicCardProbe.state().artwork==cover&&MusicCardProbe.state().artist.equals("测试歌手"),"lyric-only update retains artwork and artist");
  before=mist.invalidates;MusicCardProbe.send(MusicCardProbe.tlv(0,MusicCardProbe.str(1,twoLines)));ok(mist.invalidates==before,"identical lyric delta avoids redraw");
  StringBuilder longLine=new StringBuilder();for(int i=0;i<45;i++)longLine.append("歌😀");
  MusicCardProbe.send(MusicCardProbe.tlv(0,MusicCardProbe.str(1,longLine.toString())));drawMusic(mist,370,380);
  first=(String)field(mist,"titleText");second=(String)field(mist,"titleSecond");
  ok(!first.endsWith("…")&&second.endsWith("…"),"long lyric ellipsizes only the last visible row");
  ok(validUtf16(first)&&validUtf16(second),"two-row lyric never splits a surrogate pair");
  ok(longLine.toString().startsWith(first+second.substring(0,second.length()-1)),"long lyric rows preserve a contiguous text prefix");
  ok(paint.measureText(first)<=310.01f&&paint.measureText(second)<=310.01f,"ellipsized emoji lyric fits both rows");
  String previousFirst=first,previousSecond=second;
  for(int status:new int[]{2,1}){
   MusicCardProbe.send(MusicCardProbe.tlv(1,MusicCardProbe.tlv(0,new byte[]{(byte)status})));drawMusic(mist,370,380);
   ok(MusicCardProbe.state().artwork==cover,"pause/resume during lyric playback retains cover");
   ok(previousFirst.equals(field(mist,"titleText"))&&previousSecond.equals(field(mist,"titleSecond")),"pause/resume retains both lyric rows");
   ok((status==2?"已暂停":"正在播放").equals(field(mist,"headingText")),"playback heading continues to update beside lyrics");
  }
  ArtworkProbe.send(7,2,new byte[]{});
  MusicCardProbe.send(MusicCardProbe.tlv(0,MusicCardProbe.join(MusicCardProbe.str(1,twoLines),MusicCardProbe.tlv(26,new byte[]{7}))));drawMusic(mist,370,380);
  ok(MusicCardProbe.state().artwork==cover,"same artwork ID plus lyric retains displayed image after transfer cleanup");
  mist.onSizeChanged(247,253,370,380);drawMusic(mist,247,253);
  first=(String)field(mist,"titleText");second=(String)field(mist,"titleSecond");
  ok(!second.isEmpty()&&validUtf16(first)&&validUtf16(second),"scaled mist view retains valid two-line lyrics");
  ok(paint.measureText(first)<=310*247f/370+.01&&paint.measureText(second)<=310*247f/370+.01,"scaled lyric rows fit resized text area");
  MusicCardProbe.send(MusicCardProbe.tlv(0,MusicCardProbe.str(1,"短歌词")));drawMusic(mist,247,253);
  ok("短歌词".equals(field(mist,"titleText"))&&"".equals(field(mist,"titleSecond")),"short next lyric clears stale second row");
  style("card");E01MusicCard legacy=new E01MusicCard(context);legacy.place(1920,720);legacy.onAttachedToWindow();legacy.onSizeChanged(370,340,0,0);
  MusicCardProbe.send(MusicCardProbe.tlv(0,MusicCardProbe.str(1,longLine.toString())));drawMusic(legacy,370,340);
  ok(((String)field(legacy,"titleText")).endsWith("…")&&"".equals(field(legacy,"titleSecond")),"existing card keeps single-line ellipsis");
  ok(validUtf16((String)field(legacy,"titleText")),"legacy single line preserves Unicode pairs");
  ok(MusicCardProbe.state().artwork==cover,"legacy view creation does not replace shared retained artwork");
  legacy.onDetachedFromWindow();mist.onDetachedFromWindow();E01MusicCard.clear();
 }
 public static void main(String[] args)throws Exception{
  Build.MODEL="E01";Build.DEVICE="BX11QJ";Build.VERSION.SDK_INT=22;style("mist");
  ok("mist".equals(E01InstrumentStyle.selected()),"application preference selects mist");
  ok(Arrays.equals(E01MapCard.boundsFor(1920,720,"mist"),new int[]{400,174,1120,420}),"reference bounds match approved map");
  int[][] vectors={{1920,720,1152,432,221,87,35},{1600,600,960,360,184,72,29},{1280,480,768,288,148,58,24},{960,360,576,216,111,44,18}};
  for(int[] v:vectors){
   Pair<Integer,Integer> size=E01MapCard.streamSizeFor(v[0],v[1],"mist");int w=size.component1(),h=size.component2();
   ok(w==v[2]&&h==v[3],"encoded size aligned to 8x24 at "+v[0]);
   AirPlayInsets safe=E01MapCard.safeFor(w,h,"mist");
   ok(safe.getLeft()==v[4]&&safe.getRight()==v[4]&&safe.getTop()==v[5]&&safe.getBottom()==v[6],"insets use encoded dimensions "+w);
   double left=400+1120.0*safe.getLeft()/w,right=400+1120.0*(w-safe.getRight())/w;
   ok(left>=1920*.32&&left<1920*.32+1120.0/w,"left boundary rounds inward within one stream pixel");
   ok(right<=1920*.68&&right>1920*.68-1120.0/w,"right boundary rounds inward within one stream pixel");
   AirPlayDisplayConfig input=config(v[0],v[1],100,60,7,null,"other",8),adjusted=E01DisplayConfig.adjust(input,1);
   ok(adjusted.getWidthPixels()==w&&adjusted.getHeightPixels()==h,"phone uses aligned stream dimensions");
   ok(adjusted.getSafeArea().getLeft()==safe.getLeft()&&adjusted.getSafeArea().getTop()==safe.getTop(),"phone safety matches final stream");
   ok(adjusted.getHeightPhysicalMm()==67,"physical height uses 7/12 calibration");
   ok(adjusted.getFps()==60&&adjusted.getPrimaryInputDevice()==7&&adjusted.getFeatures()==8,"negotiated flags preserved");
   ok(adjusted.getViewArea()==null&&Boolean.TRUE.equals(adjusted.getSafeAreaDrawOutside())&&"maps:/car/instrumentcluster/map".equals(adjusted.getInitialUrl()),"map-only metadata retained");
   Pair<Integer,Integer> local=E01DisplayConfig.presentationSize(new Pair<Integer,Integer>(v[0],v[1]),1);
   ok(local.component1()==w&&local.component2()==h,"local presentation and phone agree");
   AirPlayDisplayConfig tuned=config(640,240,83,20,9,null,"maps:/car/instrumentcluster/map",4),restored=E01DisplayConfig.afterLoad(adjusted,tuned);
   ok(restored.getWidthPixels()==w&&restored.getHeightPixels()==h,"afterLoad does not shrink twice");
   ok(restored.getSafeArea().getLeft()==safe.getLeft()&&restored.getSafeArea().getTop()==safe.getTop(),"afterLoad safety uses final dimensions");
   ok(restored.getFps()==20&&restored.getPrimaryInputDevice()==9&&restored.getFeatures()==4&&restored.getHeightPhysicalMm()==83,"afterLoad retains tuned policy");
   ok(E01DisplayConfig.afterLoad(input,tuned)==tuned,"unmarked config is untouched");
   ok(E01DisplayConfig.adjust(input,2)==input,"main display untouched");
  }
  AirPlayDisplayConfig unknownPhysical=config(1920,720,null,30,0,null,"other",0);
  ok(E01DisplayConfig.adjust(unknownPhysical,1).getHeightPhysicalMm()==58,"fallback mm scales from full calibration");
  ok(Arrays.equals(E01MapCard.boundsFor(960,360,"mist"),new int[]{200,87,560,210}),"bounds scale independently of encoder alignment");
  style("card");ok(Arrays.equals(E01MapCard.boundsFor(1920,720,"card"),new int[]{326,122,1267,475}),"existing card bounds retained");
  Pair<Integer,Integer> card=E01MapCard.streamSize(1920,720);ok(card.component1()==1280&&card.component2()==480,"existing card stream retained");
  ok(E01MapCard.safe(1280,480).getLeft()==291,"existing card safe corridor retained");
  style("full");ok(Arrays.equals(E01MapCard.boundsFor(1920,720,"full"),new int[]{0,0,1920,720}),"full map remains full");
  ok(E01MapCard.streamSize(1920,720).component1()==1920,"full stream is not scaled");
  ok(E01MapCard.safe(1920,720).getLeft()==615&&E01MapCard.safe(1920,720).getTop()==159,"full safety retained");
  // Secondary load limits preserve the exact center/safe geometry and never raise a lower requested rate.
  for(int[] size:new int[][]{{1920,720},{1600,600},{1280,480}}){
   AirPlayDisplayConfig full=E01DisplayConfig.adjust(config(size[0],size[1],100,60,7,null,"other",8),1);
   AirPlayDisplayConfig policy=config(640,240,83,20,9,null,"maps:/car/instrumentcluster/map",4);
   AirPlayDisplayConfig limited=E01DisplayConfig.afterLoad(full,policy);
   ok(limited.getFps()==(size[0]>1280?15:20),"only large full-map video requests 15fps");
   ok(limited.getWidthPixels()==size[0]&&limited.getHeightPixels()==size[1],"secondary load limit preserves full resolution");
   ok(limited.getSafeArea().getLeft()==full.getSafeArea().getLeft()&&limited.getSafeArea().getTop()==full.getSafeArea().getTop(),"secondary load limit preserves centering and safety");
   ok(limited.getWidthPhysicalMm().equals(policy.getWidthPhysicalMm())&&limited.getHeightPhysicalMm().equals(policy.getHeightPhysicalMm()),"secondary load limit preserves physical size");
  }
  for(String layout:new String[]{"card","mist","full"})for(int requested:new int[]{0,10,15,20,30,60}){
   int result=E01DisplayConfig.clusterFps(layout,1920,720,requested);
   ok(result==("full".equals(layout)&&requested>15?15:requested),"budget applies only to large full-map stream");
  }
  ok(E01DisplayConfig.clusterFps("full",0,720,20)==20,"invalid dimensions do not enable secondary policy");
  style("unknown");ok("card".equals(E01InstrumentStyle.selected()),"unknown preference defaults to card");
  Build.MODEL="other";ok(E01DisplayConfig.adjust(unknownPhysical,1)==unknownPhysical,"non-E01 model unaffected");Build.MODEL="E01";
  for(String name:new String[]{"card","mist"}){
   style(name);E01MusicCard view=new E01MusicCard(context);view.place(1920,720);FrameLayout.LayoutParams p=(FrameLayout.LayoutParams)view.getLayoutParams();
   ok(p.leftMargin==1515&&p.topMargin==185&&p.width==370&&p.height==(name.equals("mist")?380:340),"actual music layout "+name);
   view.onAttachedToWindow();view.onSizeChanged(p.width,p.height,0,0);RectF cover=(RectF)field(view,"coverBounds");
   ok(Math.abs((cover.r-cover.l)-(cover.b-cover.t))<.01,"square album art "+name);
   Canvas drawn=new Canvas(p.width,p.height);view.onDraw(drawn);ok(drawn.draws>0,"music draws when enabled "+name);
   view.onSizeChanged(p.width/2,p.height/2,p.width,p.height);ok(field(view,"rendered")==null,"resize invalidates text cache "+name);
   context.getSharedPreferences("06link_instrument",0).edit().putBoolean("music_enabled",false).commit();
   Canvas hidden=new Canvas(p.width,p.height);view.onDraw(hidden);ok(hidden.draws==0,"visibility guard retained "+name);
   context.getSharedPreferences("06link_instrument",0).edit().putBoolean("music_enabled",true).commit();view.onDetachedFromWindow();
  }
  lyrics(args[0]);style("card");System.out.println("PASS "+checks+" geometry/display/music layout assertions; Android/OEM transport mocked");
 }
}
