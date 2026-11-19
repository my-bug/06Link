package com.shilapi.xcertplay;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;
/** Native-resolution decorative skin. OEM numbers, warning icons and video are never drawn here. */
final class E01SportInstrument {
    private E01SportInstrument() {}
    static final int BACKGROUND=0xff24272d;
    private static Path polygon(float... xy){Path p=new Path();p.moveTo(xy[0],xy[1]);for(int i=2;i<xy.length;i+=2)p.lineTo(xy[i],xy[i+1]);p.close();return p;}
    private static void fill(Canvas c,Paint p,int color,float... xy){p.setShader(null);p.setStyle(Paint.Style.FILL);p.setColor(color);c.drawPath(polygon(xy),p);}
    static Bitmap create(int width,int height){
        Bitmap bitmap=Bitmap.createBitmap(width,height,Bitmap.Config.ARGB_8888);Canvas c=new Canvas(bitmap);Paint p=new Paint(7);
        int[] map=E01MapCard.boundsFor(width,height,"sport");
        float l=map[0]*1920f/width,t=map[1]*720f/height,r=(map[0]+map[2])*1920f/width,b=(map[1]+map[3])*720f/height;
        c.scale(width/1920f,height/720f);
        float[][] clips={{0,0,1920,t},{0,b,1920,720},{0,t,l,b},{r,t,1920,b}};
        // Four disjoint clips instead of an EVEN_ODD GPU hole. This bitmap's center stays clear.
        for(float[] clip:clips){int saved=c.save();c.clipRect(clip[0],clip[1],clip[2],clip[3]);
            p.setShader(null);p.setColor(BACKGROUND);c.drawRect(0,0,1920,720,p);
            p.setShader(new LinearGradient(0,0,640,340,new int[]{0xff3b4048,0xff17191e},null,Shader.TileMode.CLAMP));
            c.drawPath(polygon(0,0,620,0,276,176,166,181,0,388),p);
            fill(c,p,0xff1b1e23,0,0,310,0,0,268);
            fill(c,p,0xff333840,0,0,440,0,258,137,0,343);
            fill(c,p,0xffef493e,0,257,292,0,306,0,0,272);
            p.setShader(new LinearGradient(0,600,530,650,new int[]{0xff383c44,0xff191b20},null,Shader.TileMode.CLAMP));
            c.drawPath(polygon(0,600,378,473,414,519,0,651),p);
            fill(c,p,0xffe9453a,0,625,194,563,0,637);
            p.setShader(new LinearGradient(1350,720,1900,490,new int[]{0xff1b1d22,0xff343941},null,Shader.TileMode.CLAMP));
            c.drawPath(polygon(1150,720,1920,489,1920,720),p);
            fill(c,p,0xffed4438,1660,720,1920,558,1920,720);
            fill(c,p,0xfff0473c,164,60,181,33,188,33,172,60);
            fill(c,p,0xfff0473c,177,60,194,33,201,33,185,60);
            fill(c,p,0xffed4438,1422,48,1462,0,1474,0,1434,48);
            fill(c,p,0xffed4438,1442,48,1482,0,1494,0,1454,48);
            // Only the two short underlines remain; the rejected tall left chevron is absent.
            fill(c,p,0xfff0473c,118,466,220,464,326,466,218,472);
            fill(c,p,0xfff0473c,118,475,218,484,326,475,218,496);
            fill(c,p,0xfff0473c,l-40,b-24,l-4,b+14,l+23,b+14,l+5,b+8);
            fill(c,p,0xfff0473c,r+40,b-24,r+4,b+14,r-23,b+14,r-5,b+8);
            // Measured OEM RPM reserve is x1435..1835/y85..138; fascia surrounds it.
            Path rpm=polygon(1370,152,1418,77,1460,70,1888,70,1904,81,1870,146,1836,154);
            p.setShader(new LinearGradient(0,70,0,154,new int[]{0xff14161a,0xff20242a},null,Shader.TileMode.CLAMP));c.drawPath(rpm,p);
            p.setShader(null);p.setStyle(Paint.Style.STROKE);p.setStrokeWidth(1);p.setColor(0xff747b83);c.drawPath(rpm,p);
            fill(c,p,0xffee473d,1869,109,1880,93,1886,93,1875,109);
            c.restoreToCount(saved);
        }
        finishMap(bitmap,map);
        return bitmap;
    }
    private static float distance(float x,float y,float w,float h){
        float d=Math.max(Math.max(-x,x-w),Math.max(-y,y-h));
        float cut=12,diagonal=Math.max(Math.max(cut-x-y,x+y-w-h+cut),Math.max(x-y-w+cut,y-x-h+cut))*.70710678f;
        return Math.max(d,diagonal);
    }
    private static void finishMap(Bitmap bitmap,int[] map){
        int width=bitmap.getWidth(),height=bitmap.getHeight();float sx=width/1920f,sy=height/720f;
        int l=Math.max(0,map[0]-Math.round(32*sx)),r=Math.min(width,map[0]+map[2]+Math.round(32*sx));
        int top=Math.max(0,map[1]-Math.round(32*sy)),bottom=Math.min(height,map[1]+map[3]+Math.round(32*sy));int[] row=new int[r-l];
        for(int y=top;y<bottom;y++){
            bitmap.getPixels(row,0,row.length,l,y,row.length,1);
            for(int i=0;i<row.length;i++){
                int x=l+i;float d=distance((x-map[0])/sx,(y-map[1])/sy,(map[2]-1)/sx,(map[3]-1)/sy);
                if(d>=0){
                    int bg=(row[i]>>>24)==0?BACKGROUND:row[i];float fade=1-E01InstrumentFeather.smooth(d/20),shade=.18f*fade*fade;
                    row[i]=0xff000000|(E01InstrumentPrecision.channel(((bg>>>16)&255)*(1-shade))<<16)
                        |(E01InstrumentPrecision.channel(((bg>>>8)&255)*(1-shade))<<8)|E01InstrumentPrecision.channel((bg&255)*(1-shade));
                }else{
                    float depth=-d;
                    if(depth<1.2f){int a=E01InstrumentPrecision.channel(210*(1-depth/1.2f));row[i]=(a<<24)|0xabb2b8;}
                    else {float a=.07f*(1-E01InstrumentFeather.smooth((depth-1.2f)/6));int alpha=E01InstrumentPrecision.channel(255*a);row[i]=alpha==0?0:(alpha<<24)|0x11151a;}
                }
            }
            bitmap.setPixels(row,0,row.length,l,y,row.length,1);
        }
    }
}
