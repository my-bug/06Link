package com.shilapi.xcertplay;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import java.io.File;
import java.lang.reflect.Field;
import javax.imageio.ImageIO;
public final class RendererProbe {
 static int checks;
 static void ok(boolean value,String why){checks++;if(!value)throw new AssertionError(why);}
 static Object field(Object o,String n)throws Exception{Field f=o.getClass().getDeclaredField(n);f.setAccessible(true);return f.get(o);}
 static int pixel(Canvas c,int x,int y){return c.image.getRGB(Math.round(x*c.image.getWidth()/1920f),Math.round(y*c.image.getHeight()/720f));}
 public static void main(String[] args)throws Exception{
  File out=new File(args[0]);out.mkdirs();Context context=android.app.ActivityThread.application;
  int[][] reserves={{661,34,1263,70},{1435,85,1835,138},{770,94,1187,175},{183,277,257,433},{329,662,755,696},{908,667,1086,703},{1210,652,1521,695}};
  for(int width:new int[]{1920,1280}){
   int height=width*3/8;E01NightInstrument renderer=new E01NightInstrument();renderer.resize(width,height);
   Canvas on=new Canvas(width,height),off=new Canvas(width,height);renderer.draw(on,true);renderer.draw(off,false);
   for(int y=242;y<526;y+=7)for(int x=615;x<1305;x+=7)ok((pixel(on,x,y)>>>24)==0,"safe central navigation remains fully transparent");
   for(int[] r:reserves)for(int y=r[1];y<r[3];y+=7)for(int x=r[0];x<r[2];x+=7)
    ok((pixel(on,x,y)>>>24)>100,"measured OEM readouts have dark contrast scrim");
   for(int y=10;y<710;y+=17)for(int x=10;x<1910;x+=17){
    if(x<400||x>=1520||y<174||y>=594)ok((pixel(on,x,y)>>>24)==255,"no map can leak into side/header/footer regions");
   }
   int edge=pixel(on,402,360)>>>24,shadow=pixel(on,500,360)>>>24,center=pixel(on,960,360)>>>24;
   ok(edge>245&&shadow>100&&shadow<155&&center==0,"central map retains soft side shadow rather than hard clipping");
   ok((pixel(on,960,178)>>>24)>230&&(pixel(on,960,210)>>>24)>80&&(pixel(on,960,590)>>>24)>230,"top and bottom map shadow retained");
   ok(on.texts.size()==1&&on.texts.get(0).text.equals("06LINK"),"runtime overlay never fabricates vehicle values or TBT");
   for(int y=0;y<720;y+=13)for(int x=0;x<1920;x+=13)ok(pixel(on,x,y)==pixel(off,x,y),"music toggle leaves the live map backdrop unchanged");
   ImageIO.write(on.image,"png",new File(out,"actual-night-"+width+".png"));
   context.getSharedPreferences("06link_instrument",0).edit().putString("layout","night").commit();
   E01InstrumentPreview preview=new E01InstrumentPreview(context,true);
   preview.onMeasure(View.MeasureSpec.EXACTLY|width,View.MeasureSpec.UNSPECIFIED);
   ok(preview.getWidth()==width&&preview.getHeight()==height,"preview maintains 1920:720 aspect");
   Context.Prefs prefs=(Context.Prefs)context.getSharedPreferences("06link_instrument",0);int before=prefs.listeners.size();
   preview.onAttachedToWindow();ok(prefs.listeners.size()==before+1,"preview registers music listener");
   for(String style:new String[]{"card","full","night"}){
    preview.setStyle(style);int[] bounds=E01MapCard.boundsFor(1920,720,style);android.graphics.RectF r=(android.graphics.RectF)field(preview,"map");
    ok(r.left==bounds[0]&&r.top==bounds[1]&&r.width()==bounds[2]&&r.height()==bounds[3],"preview shares production geometry "+style);
    Canvas c=new Canvas(width,height);preview.onDraw(c);ImageIO.write(c.image,"png",new File(out,"settings-"+style+"-"+width+".png"));
   }
   context.getSharedPreferences("06link_instrument",0).edit().putBoolean("music_enabled",false).commit();ok(Boolean.FALSE.equals(field(preview,"music")),"preview receives music toggle");
   preview.onDetachedFromWindow();ok(prefs.listeners.size()==before,"preview unregisters music listener");
   context.getSharedPreferences("06link_instrument",0).edit().putBoolean("music_enabled",true).commit();ok(Boolean.FALSE.equals(field(preview,"music")),"detached preview no longer updates");
  }
  System.out.println("PASS "+checks+" renderer pixel/preview lifecycle checks; Java2D adapter, not Android compositor");
 }
}
