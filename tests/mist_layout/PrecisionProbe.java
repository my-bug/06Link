package com.shilapi.xcertplay;
import android.graphics.*;
/** Exercise actual style surfaces, not a hypothetical panel quantizer. */
public final class PrecisionProbe {
 static int checks;static void ok(boolean b,String s){checks++;if(!b)throw new AssertionError(s);}
 public static void main(String[] args)throws Exception {
  for(String style:new String[]{"night","relief","sport"}) {
   E01NightInstrument renderer=new E01NightInstrument(style);renderer.resize(1920,720);
   Canvas canvas=new Canvas(1920,720);renderer.draw(canvas,true);
   int flat=canvas.image.getRGB(180,300);
   for(int y=300;y<430;y++)for(int x=180;x<260;x++)
    ok(canvas.image.getRGB(x,y)==flat,style+" flat fascia stays uniform without grain");
   // Same distance along a straight map edge must give the same shadow color and opacity.
   for(int x=370;x<550;x++)for(int y=280;y<410;y++)
    ok(canvas.image.getRGB(x,y)==canvas.image.getRGB(x,280),style+" straight shadow has no speckled texture");
   for(int tone:new int[]{0xff101010,0xff606060,0xffeeeeee}) {
    Bitmap cover=Bitmap.createBitmap(370,380,Bitmap.Config.ARGB_8888);int[] row=new int[370];java.util.Arrays.fill(row,tone);
    for(int y=0;y<380;y++)cover.setPixels(row,0,370,0,y,370,1);
    E01InstrumentFeather.finishCover(cover,1,1,style,renderer.backdrop());
    for(int x=6;x<370;x++)for(int y=20;y<140;y++)
     ok(cover.image.getRGB(x,y)==cover.image.getRGB(x,20),style+" constant cover has uniform rows through its fade");
    // Away from the frame, a flat source must approach its own color monotonically.
    for(int shift:new int[]{0,8,16}) {
     int target=(tone>>>shift)&255,previous=255;
     for(int x=45;x<=130;x++) {
      int distance=Math.abs(((cover.image.getRGB(x,40)>>>shift)&255)-target);
      ok(distance<=previous,style+" cover gradient has no grain-induced reversals");previous=distance;
     }
    }
   }
  }
  System.out.println("PASS "+checks+" actual style flat-field, shadow and cover uniformity checks; physical display pending");
 }
}
