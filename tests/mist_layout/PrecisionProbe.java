package com.shilapi.xcertplay;
import android.graphics.*;
import javax.imageio.ImageIO;
import java.io.File;
public final class PrecisionProbe{
 static int checks;static void ok(boolean b,String s){checks++;if(!b)throw new AssertionError(s);}
 public static void main(String[] args)throws Exception{
  for(int cy=0;cy<16;cy++)for(int cx=0;cx<16;cx++){
   float total=0;java.util.Set<Float> ranks=new java.util.HashSet<Float>();
   for(int y=0;y<4;y++)for(int x=0;x<4;x++){float n=E01InstrumentPrecision.noise(cx*4+x,cy*4+y);total+=n;ranks.add(n);ok(Math.abs(n)<1,"noise amplitude bounded");}
   ok(Math.abs(total)<.0001&&ranks.size()==16,"local tile has zero mean and all sixteen levels, no brightness drift");
  }
  // Spatially averaged output after a coarse display quantizer: a uniform ramp must
  // retain its slope, not lock whole columns to identical brightness levels.
  for(int bits:new int[]{5,6}){
   int step=1<<(8-bits);double oldError=0,newError=0;int mixed=0;
   for(int x=0;x<256;x++){
    float ideal=16+x*40f/255;double sum=0;java.util.Set<Integer> values=new java.util.HashSet<Integer>();
    for(int y=0;y<64;y++){
     int v=E01InstrumentPrecision.channel(ideal+4*E01InstrumentPrecision.noise(x,y));int q=(v/step)*step+step/2;sum+=q;values.add(q);
    }
    int original=(Math.round(ideal)/step)*step+step/2;
    oldError+=Math.abs(original-ideal);newError+=Math.abs(sum/64-ideal);if(values.size()>1)mixed++;
   }
   ok(newError<oldError,"dithering reduces spatially averaged quantization error at "+bits+" bits");
   ok(mixed>100,"coarse output does not preserve long uniform column bands at "+bits+" bits");
  }
  Bitmap strip=Bitmap.createBitmap(512,160,Bitmap.Config.ARGB_8888);int[] row=new int[512];
  for(int y=0;y<160;y++){
   for(int x=0;x<512;x++){
    float base=16+x*40f/511;int v=E01InstrumentPrecision.channel(base+(y>=80?4*E01InstrumentPrecision.noise(x,y):0));int q=(v/8)*8+4;
    row[x]=0xff000000|(q<<16)|(q<<8)|q;
   }strip.setPixels(row,0,512,0,y,512,1);
  }
  ImageIO.write(strip.image,"png",new File(args[0]));
  System.out.println("PASS "+checks+" balanced dither and 5/6-bit display model checks; not a measurement of the vehicle panel");
 }
}
