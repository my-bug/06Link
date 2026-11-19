package com.shilapi.xcertplay;

import android.graphics.Bitmap;

/** Static, full-precision feather preparation. Never run on each video/lyric frame. */
final class E01InstrumentFeather {
    private E01InstrumentFeather() {}
    static float smooth(float value) {
        float t=Math.max(0,Math.min(1,value));return t*t*(3-2*t);
    }
    private static int channel(float value) {return Math.max(0,Math.min(255,Math.round(value)));}

    static Bitmap mapShadow(int width,int height,float sx,float sy) {
        Bitmap result=Bitmap.createBitmap(width,height,Bitmap.Config.ARGB_8888);
        int[] row=new int[width];
        for(int y=0;y<height;y++) {
            for(int x=0;x<width;x++) {
                // One rounded contour replaces the intersecting horizontal/vertical ramps.
                float d=distance(x/sx,y/sy,(width-1)/sx,(height-1)/sy,28);
                float a=1-smooth(Math.max(0,-d)/20);a*=a;
                int alpha=channel(a*255);
                row[x]=alpha==0?0:(alpha<<24)|0x141c26;
            }
            result.setPixels(row,0,width,0,y,width,1);
        }
        return result;
    }

    // Signed distance to one rounded opening: no overlapping corner shadows or GPU holes.
    private static float distance(float x,float y,float width,float height){return distance(x,y,width,height,12);}
    private static float distance(float x,float y,float width,float height,float radius){
        float qx=Math.abs(x-width*.5f)-(width*.5f-radius);
        float qy=Math.abs(y-height*.5f)-(height*.5f-radius);
        float ox=Math.max(qx,0),oy=Math.max(qy,0);
        return (float)Math.sqrt(ox*ox+oy*oy)+Math.min(Math.max(qx,qy),0)-radius;
    }
    private static int outside(float d){
        float fall=1-smooth(Math.max(0,d)/20),shade=.18f*fall*fall;
        return 0xff000000|(channel(60*(1-shade))<<16)
            |(channel(70*(1-shade))<<8)|channel(80*(1-shade));
    }
    static Bitmap reliefFrame(int width,int height,int padX,int padY,float sx,float sy){
        int w=width+2*padX,h=height+2*padY;
        Bitmap result=Bitmap.createBitmap(w,h,Bitmap.Config.ARGB_8888);int[] row=new int[w];
        for(int y=0;y<h;y++){
            for(int x=0;x<w;x++){
                float d=distance((x-padX)/sx,(y-padY)/sy,(width-1)/sx,(height-1)/sy);
                if(d>=0){
                    row[x]=outside(d);
                }else{
                    // Only a 6px inside rim. The central video is untouched and transparent.
                    float depth=-d,edge=1-smooth(depth/Math.max(1/sx,1/sy));
                    float a=Math.max(edge,.08f*(1-smooth(depth/6)));
                    if(a<=0){row[x]=0;continue;}
                    int alpha=channel(255*a);
                    row[x]=(alpha<<24)|(outside(0)&0xffffff);
                }
            }
            result.setPixels(row,0,w,0,y,w,1);
        }
        return result;
    }

    static void finishCover(Bitmap bitmap,float sx,float sy){finishCover(bitmap,sx,sy,"night");}
    static void finishCover(Bitmap bitmap,float sx,float sy,String style){finishCover(bitmap,sx,sy,style,null);}
    static void finishCover(Bitmap bitmap,float sx,float sy,String style,Bitmap backdrop) {
        int width=bitmap.getWidth(),height=bitmap.getHeight();int[] row=new int[width];
        boolean relief="relief".equals(style),sport="sport".equals(style);int background=E01InstrumentStyle.background(style);
        int[] behind=sport&&backdrop!=null?new int[width]:null;
        int bx=backdrop==null?0:Math.round(1515*backdrop.getWidth()/1920f),by=backdrop==null?0:Math.round(185*backdrop.getHeight()/720f);
        for(int y=0;y<height;y++) {
            bitmap.getPixels(row,0,width,0,y,width,1);
            if(behind!=null){java.util.Arrays.fill(behind,background);int n=Math.min(width,backdrop.getWidth()-bx);if(n>0&&by+y<backdrop.getHeight())backdrop.getPixels(behind,0,width,bx,by+y,n,1);}
            // Preserve contrast under text, without the former 90% blackening at the bottom.
            float shade=.68f*smooth((y/sy-170)/205);
            for(int x=0;x<width;x++) {
                int c=row[x],alpha=c>>>24;if(alpha==0)continue;
                // The calibrated cover begins 5px before the map boundary. Keep that overlap
                // transparent in the framed style so it cannot erase the live map or its rim.
                float globalX=1515+x/sx,globalY=185+y/sy;
                if((relief||sport)&&globalX<=1520){row[x]=0;continue;}
                int bg=behind!=null?behind[x]:relief?outside(distance(globalX-400,globalY-174,1120,420)):background;
                int br=(bg>>>16)&255,bgGreen=(bg>>>8)&255,bb=bg&255;
                float fade=smooth(x/(80*sx));
                float amount=fade*(1-shade);
                // Resolve to the actual instrument background before quantization. Keeping a
                // low-alpha dark cover would introduce another premultiply/unpremultiply step.
                // Keep equal tones equal; artificial grain can become visible on the cluster.
                row[x]=(alpha<<24)|(channel(br+(((c>>>16)&255)-br)*amount)<<16)
                    |(channel(bgGreen+(((c>>>8)&255)-bgGreen)*amount)<<8)
                    |channel(bb+((c&255)-bb)*amount);
            }
            bitmap.setPixels(row,0,width,0,y,width,1);
        }
    }
}
