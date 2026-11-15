package com.shilapi.xcertplay;
import android.graphics.Bitmap;
import javax.imageio.ImageIO;
import java.io.File;
public final class FeatherProbe {
    static int checks;
    static void ok(boolean value,String why){checks++;if(!value)throw new AssertionError(why);}
    static int alpha(Bitmap b,int x,int y){return b.image.getRGB(x,y)>>>24;}
    public static void main(String[] args)throws Exception {
        for(int w:new int[]{1120,560}) {
            int h=w*3/8;float scale=w/1120f;
            Bitmap map=E01InstrumentFeather.mapShadow(w,h,scale,scale);
            for(int x=0;x<w;x++){ok(alpha(map,x,0)==255,"top seals map boundary");ok(alpha(map,x,h-1)==255,"bottom seals boundary");}
            for(int y=0;y<h;y++){ok(alpha(map,0,y)==255,"left seals boundary");ok(alpha(map,w-1,y)==255,"right seals boundary");}
            for(int y=h/3;y<2*h/3;y+=5)for(int x=w/3;x<2*w/3;x+=5)ok(alpha(map,x,y)==0,"navigation center is entirely clear");
            int side=alpha(map,Math.round(64*scale),h/2),corner=alpha(map,Math.round(64*scale),Math.round(24*scale));
            ok(Math.abs(side-corner)<=2,"two 25% feather regions do not compound at corner");
            ok(side>=62&&side<=65,"halfway feather has only quarter opacity");
        }
        Bitmap cover=Bitmap.createBitmap(370,380,Bitmap.Config.ARGB_8888);
        int[] row=new int[370];java.util.Arrays.fill(row,0xffb0b0b0);
        for(int y=5;y<375;y++)cover.setPixels(row,0,370,0,y,370,1);
        E01InstrumentFeather.finishCover(cover,1,1);
        for(int y=5;y<375;y++)ok(cover.image.getRGB(0,y)==0xff141c26,"no seam at start of cover fade");
        ok(cover.image.getRGB(200,100)==0xffb0b0b0,"full-opacity artwork outside ramps is untouched");
        ok(cover.image.getRGB(200,0)==0,"transparent outer margin preserved");
        int diversified=0;
        for(int x=20;x<120;x++) {
            int low=255,high=0;java.util.Set<Integer> levels=new java.util.HashSet<Integer>();
            for(int y=20;y<150;y++) {
                int red=(cover.image.getRGB(x,y)>>>16)&255;low=Math.min(low,red);high=Math.max(high,red);levels.add(red>>3);
            }
            ok(high-low<=8,"dither remains subtle and bounded to one 5-bit channel step");
            if(levels.size()>1)diversified++;
        }
        ok(diversified>5,"simulated 5-bit output has spatially mixed steps instead of solid column bands");
        Bitmap again=Bitmap.createBitmap(370,380,Bitmap.Config.ARGB_8888);
        for(int y=5;y<375;y++)again.setPixels(row,0,370,0,y,370,1);
        E01InstrumentFeather.finishCover(again,1,1);
        for(int y=0;y<380;y+=7)for(int x=0;x<370;x+=7)ok(again.image.getRGB(x,y)==cover.image.getRGB(x,y),"fixed grain does not shimmer on rebuild");
        ImageIO.write(cover.image,"png",new File(args[0]));
        System.out.println("PASS "+checks+" feather/precision checks (quantization model, not physical panel proof)");
    }
}
