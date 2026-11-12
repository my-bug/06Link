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
 static void baseRegion(Canvas c,int[] r,String reason){for(int y=r[1]+5;y<r[3]-5;y+=3)for(int x=r[0]+5;x<r[2]-5;x+=3)ok(pixel(c,x,y)==E01MistInstrument.BACKGROUND,reason+" at "+x+","+y);}
 public static void main(String[] args)throws Exception{
  File out=new File(args[0]);out.mkdirs();Context context=android.app.ActivityThread.application;
  int[][] reserves={{555,20,1365,84},{1408,64,1863,160},{744,84,1224,173},{75,274,367,441},{200,597,1740,720}};
  for(int width:new int[]{1920,1280}){
   int height=width*3/8;E01MistInstrument renderer=new E01MistInstrument();renderer.resize(width,height);
   Canvas on=new Canvas(width,height),off=new Canvas(width,height);renderer.draw(on,true);renderer.draw(off,false);
   for(int y=210;y<560;y+=7)for(int x=440;x<1480;x+=7)ok((pixel(on,x,y)>>>24)==0,"actual map opening transparent");
   for(int[] r:reserves)baseRegion(on,r,"OEM reserved area keeps uniform base");
   baseRegion(off,new int[]{1540,190,1910,585},"music off hides right ornaments");
   int differences=0;for(int y=195;y<580;y++)for(int x=1540;x<1900;x++)if(pixel(on,x,y)!=pixel(off,x,y))differences++;
   ok(differences>500,"music toggle changes actual right ornament pixels");
   for(int y=200;y<550;y+=11)for(int x=20;x<380;x+=11)ok(pixel(on,x,y)==pixel(off,x,y),"music toggle preserves left speed ornament");
   ImageIO.write(on.image,"png",new File(out,"actual-mist-"+width+".png"));ImageIO.write(off.image,"png",new File(out,"actual-mist-music-off-"+width+".png"));
   context.getSharedPreferences("06link_instrument",0).edit().putString("layout","mist").commit();
   E01InstrumentPreview preview=new E01InstrumentPreview(context,true);
   preview.onMeasure(View.MeasureSpec.EXACTLY|width,View.MeasureSpec.UNSPECIFIED);
   ok(preview.getWidth()==width&&preview.getHeight()==height,"preview maintains 1920:720 aspect");
   Context.Prefs prefs=(Context.Prefs)context.getSharedPreferences("06link_instrument",0);int before=prefs.listeners.size();
   preview.onAttachedToWindow();ok(prefs.listeners.size()==before+1,"preview registers music listener");
   for(String style:new String[]{"card","full","mist"}){
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
