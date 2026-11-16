package com.shilapi.xcertplay;
import android.graphics.*;
import java.io.File;
import javax.imageio.ImageIO;
public final class RacingIntroProbe {
 static int checks;static void ok(boolean value,String why){checks++;if(!value)throw new AssertionError(why);}
 public static void main(String[] args)throws Exception {
  for(int index=0;index<E01InstrumentStyle.count();index++)for(int width:new int[]{1920,1280,960}){
   E01RacingIntroRenderer intro=new E01RacingIntroRenderer(E01InstrumentStyle.at(index));int height=width*3/8;
   Canvas first=new Canvas(width,height);intro.draw(first,width,height,0);
   for(int y=0;y<height;y+=13)for(int x=0;x<width;x+=17)ok((first.image.getRGB(x,y)>>>24)==255,"initial transition covers whole viewport at all supported sizes");
   Canvas middle=new Canvas(width,height);intro.draw(middle,width,height,2160);
   ok((middle.image.getRGB(width/2,height/2)>>>24)==0,"central opening exposes live content");
   ok((middle.image.getRGB(width/32,height/2)>>>24)==255&&(middle.image.getRGB(width*31/32,height/2)>>>24)==255,"both retreating shutters remain opaque");
   Canvas tail=new Canvas(width,height);intro.draw(tail,width,height,2850);intro.draw(tail,width,height,3000);
   ok(tail.draws==0,"tail and completed transition draw nothing");
  }
  E01InstrumentPreview preview=new E01InstrumentPreview(android.app.ActivityThread.application,true);preview.setStyle("sport");preview.width=1920;preview.height=720;
  E01RacingIntroRenderer intro=new E01RacingIntroRenderer(E01InstrumentStyle.theme("sport"));
  for(int ms:new int[]{300,1200,2175,3000}){
   Canvas image=new Canvas(1920,720);preview.onDraw(image);intro.draw(image,1920,720,ms);
   ImageIO.write(image.image,"png",new File(new File(args[0]).getParentFile(),"racing-intro-"+ms+".png"));
  }
  System.out.println("PASS "+checks+" shared racing renderer full coverage, shutter opening and transparent tail checks; host pixels only");
 }
}
