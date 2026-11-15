package com.shilapi.xcertplay;
import android.graphics.Bitmap;
/** Fixed spatial dithering at final pixel size; no frame-time random noise. */
final class E01InstrumentPrecision {
    private E01InstrumentPrecision() {}
    private static final int[] RANK={0,8,2,10,12,4,14,6,3,11,1,9,15,7,13,5};
    static float noise(int x,int y){
        int hash=(x>>2)*374761393+(y>>2)*668265263;
        hash=(hash^(hash>>>13))*1274126177;
        int xx=(x&3)^((hash>>>5)&3),yy=(y&3)^((hash>>>9)&3);
        if((hash&1)!=0){int swap=xx;xx=yy;yy=swap;}
        return ((RANK[(yy<<2)|xx]^((hash>>>16)&15))+.5f)/8f-1;
    }
    static int channel(float value){return Math.max(0,Math.min(255,Math.round(value)));}
    static int tint(int color,float noise){
        return (color&0xff000000)|(channel(((color>>>16)&255)+noise)<<16)
            |(channel(((color>>>8)&255)+noise)<<8)|channel((color&255)+noise);
    }
    static void finishBackdrop(Bitmap bitmap){
        int w=bitmap.getWidth(),h=bitmap.getHeight();int[] row=new int[w];
        for(int y=0;y<h;y++){
            bitmap.getPixels(row,0,w,0,y,w,1);
            for(int x=0;x<w;x++){
                int c=row[x];if((c>>>24)!=255)continue;
                // Low-amplitude monochrome noise on dark fascia only, not red accents or video.
                int r=(c>>>16)&255,g=(c>>>8)&255,b=c&255;
                if(Math.max(r,Math.max(g,b))<100&&Math.abs(r-g)<25)row[x]=tint(c,3.75f*noise(x,y));
            }
            bitmap.setPixels(row,0,w,0,y,w,1);
        }
    }
}
