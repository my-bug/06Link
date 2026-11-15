package com.shilapi.xcertplay;
import android.graphics.*;
import java.lang.reflect.Field;
public final class SportProbe {
 static int checks;static void ok(boolean b,String s){checks++;if(!b)throw new AssertionError(s);}
 static boolean red(int c){return ((c>>>16)&255)>160&&((c>>>8)&255)<100;}
 static Object field(Object o,String n)throws Exception{Field f=o.getClass().getDeclaredField(n);f.setAccessible(true);return f.get(o);}
 public static void main(String[] args)throws Exception{
  for(int width:new int[]{1920,1280,960}){
   int height=width*3/8;E01NightInstrument renderer=new E01NightInstrument("sport");renderer.resize(width,height);Bitmap backdrop=renderer.backdrop();
   ok(backdrop!=null&&backdrop.getWidth()==width&&backdrop.getHeight()==height,"sport fascia is prepared at real output resolution");
   Canvas canvas=new Canvas(width,height);renderer.draw(canvas,true);renderer.resize(width,height);ok(backdrop==renderer.backdrop(),"stable layout reuses image, no per-frame rasterization");
   int[] b=E01MapCard.boundsFor(width,height,"sport");
   for(int y=b[1]+20;y<b[1]+b[3]-20;y+=4)for(int x=b[0]+20;x<b[0]+b[2]-20;x+=4)ok(canvas.image.getRGB(x,y)==0,"all central map pixels remain clear of fascia and shadows");
   ok(canvas.texts.size()==1&&canvas.texts.get(0).text.equals("06LINK"),"no fake OEM readings or tachometer added by skin");
   for(int y=300;y<445;y+=8)ok(!red(canvas.image.getRGB(Math.round(30*width/1920f),Math.round(y*height/720f))),"rejected tall red left chevron stays removed");
   E01MusicCard music=new E01MusicCard(android.app.ActivityThread.application,"sport");music.place(width,height);int cw=Math.round(370*width/1920f),ch=Math.round(380*height/720f);
   music.onSizeChanged(cw,ch,0,0);music.setBackdrop(backdrop);Canvas card=new Canvas(cw,ch);music.drawPreview(card);
   Object prepared=field(music,"preparedCover");music.drawPreview(card);ok(field(music,"preparedCover")==prepared,"preview/lyric redraw reuses cover and fascia sample");
   int bx=Math.round(1515*width/1920f),by=Math.round(185*height/720f);
   for(int y=20;y<ch-20;y+=11){int x=Math.round(6*width/1920f);int c=card.image.getRGB(x,y),bg=backdrop.image.getRGB(bx+x,by+y);for(int shift:new int[]{0,8,16})ok(Math.abs(((c>>>shift)&255)-((bg>>>shift)&255))<=4,"cover fade meets actual fascia pixels without a vertical flat strip");}
   for(int y=20;y<ch-20;y+=11)ok((card.image.getRGB(0,y)>>>24)==0,"music never overwrites map overlap");
   renderer.setStyle("relief");ok(renderer.backdrop()==null,"leaving sport releases the patterned backdrop");music.setBackdrop(null);ok(field(music,"preparedCover")==null,"backdrop changes invalidate the dependent cover cache");
  }
  System.out.println("PASS "+checks+" sport placement, transparent map, OEM isolation and cover seam checks");
 }
}
