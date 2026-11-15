package com.shilapi.xcertplay;
import android.graphics.*;
import java.lang.reflect.Field;
public final class ReliefProbe {
 static int checks;static void ok(boolean b,String s){checks++;if(!b)throw new AssertionError(s);}
 static Object field(Object o,String n)throws Exception{Field f=o.getClass().getDeclaredField(n);f.setAccessible(true);return f.get(o);}
 public static void main(String[] args)throws Exception{
  for(String style:new String[]{"card","full","night","relief","sport"})ok(style.equals(E01InstrumentStyle.fromLabel(E01InstrumentStyle.label(style))),"style selector label roundtrip");
  ok(E01InstrumentStyle.fromLabel("夜航仪表").equals("night"),"old label migration retained");
  ok(E01InstrumentStyle.normalize("mist").equals("night"),"legacy saved selection survives upgrade");
  String next="card";for(String expected:new String[]{"full","night","relief","sport","card"}){next=E01InstrumentStyle.next(next);ok(next.equals(expected),"quick selector reaches every style");}
  for(int width:new int[]{1920,1280,960}){
   int height=width*3/8;E01NightInstrument renderer=new E01NightInstrument("relief");renderer.resize(width,height);
   Object cache=field(renderer,"shadow");Canvas canvas=new Canvas(width,height);renderer.draw(canvas,true);renderer.resize(width,height);renderer.draw(canvas,true);
   ok(field(renderer,"shadow")==cache,"draw and unchanged size reuse cached frame");
   int[] bounds=E01MapCard.boundsFor(width,height,"relief");int l=bounds[0],t=bounds[1],w=bounds[2],h=bounds[3];
   ok(Math.abs(l*2+w-width)<=1&&Math.abs(t-height*174f/720)<1,"map stays centered and aligned with real photo");
   for(int y=t+20;y<t+h-20;y+=4)for(int x=l+20;x<l+w-20;x+=4)ok(canvas.image.getRGB(x,y)==0,"real video center never receives opaque paint or shadow");
   int bg=E01InstrumentStyle.background("relief")&255;
   ok((canvas.image.getRGB(l-1,t+h/2)&255)<bg,"contact shadow visible outside left boundary");
   ok((canvas.image.getRGB(l+w+1,t+h/2)&255)<bg,"contact shadow visible outside right boundary");
   ok((canvas.image.getRGB(l-40,t+h/2)&0xffffff)==0x3c4650,"shadow smoothly ends at background");
   renderer.setStyle("night");ok(field(renderer,"shadow")!=cache,"palette switch rebuilds only its cache");
  }
  Bitmap cover=Bitmap.createBitmap(370,380,Bitmap.Config.ARGB_8888);int[] row=new int[370];java.util.Arrays.fill(row,0xffb0b0b0);
  for(int y=5;y<375;y++)cover.setPixels(row,0,370,0,y,370,1);
  E01InstrumentFeather.finishCover(cover,1,1,"relief");
  for(int y=20;y<350;y+=5)for(int x=0;x<=5;x++)ok(cover.image.getRGB(x,y)==0,"album cannot obscure the five-pixel map overlap");
  E01NightInstrument renderer=new E01NightInstrument("relief");renderer.resize(1920,720);Canvas full=new Canvas(1920,720);renderer.draw(full,true);
  for(int y=20;y<140;y+=4){int edge=cover.image.getRGB(6,y),back=full.image.getRGB(1521,185+y);for(int shift:new int[]{0,8,16})ok(Math.abs(((edge>>>shift)&255)-((back>>>shift)&255))<=3,"album fade meets the actual outer shadow, without a flat vertical strip");}
  ok(cover.image.getRGB(200,100)==0xffb0b0b0,"artwork detail outside fades is retained");
  System.out.println("PASS "+checks+" relief integration/geometry/cache/shadow checks; host compositor only");
 }
}
