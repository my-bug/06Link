package com.shilapi.xcertplay;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Typeface;

/** Shared full-screen racing transition. Cached vectors only; no video, textures or per-frame assets. */
final class E01RacingIntroRenderer {
    private static final int BG=E01InstrumentStyle.INTRO_BACKGROUND;
    private static final int RED=E01InstrumentStyle.INTRO_ACCENT;
    private static final int WHITE=0xfff2f4f5, FACET=0xff252a31;
    private final Paint fill=new Paint(3),brand=new Paint(3),subtitle=new Paint(3),edge=new Paint(3);
    private final Path screen=new Path();
    private final Path left=path(0,0,1060,0,860,720,0,720);
    private final Path right=path(1060,0,1920,0,1920,720,860,720);
    private final Path facetLeft=path(0,0,665,0,0,475),facetRight=path(1255,720,1920,245,1920,720);
    private final Path cornerLeft=path(0,0,400,0,0,230),cornerRight=path(1520,720,1920,490,1920,720);
    private final Path bracketTop=path(482,260,593,159,1390,159,603,176);
    private final Path bracketBottom=path(530,530,1355,530,1470,426,1345,511);
    private final Path bladeLeft=path(1012,0,1054,0,854,720,812,720);
    private final Path bladeRight=path(1066,0,1108,0,908,720,866,720);
    private final Path slashOne,slashTwo;
    private final Path[] streakLeft=new Path[3],streakRight=new Path[3],ticks=new Path[4];
    private final float wordX;
    private static final String[] SUBTITLE={"C","a","r","P","l","a","y"};
    private final float[] subtitleX=new float[SUBTITLE.length];

    E01RacingIntroRenderer(E01InstrumentStyle.Theme theme){
        int[] bounds=theme.introBounds();
        screen.addRect(bounds[0],bounds[1],bounds[2],bounds[3],Path.Direction.CW);
        brand.setTypeface(Typeface.create("sans-serif-black",3));brand.setTextSize(170);brand.setTextAlign(Paint.Align.LEFT);
        subtitle.setTypeface(Typeface.create("sans-serif",3));subtitle.setTextSize(44);subtitle.setTextAlign(Paint.Align.LEFT);
        float subtitleWidth=20*(SUBTITLE.length-1);
        for(String letter:SUBTITLE)subtitleWidth+=subtitle.measureText(letter);
        float subtitleStart=960-subtitleWidth/2;
        for(int i=0;i<SUBTITLE.length;i++){subtitleX[i]=subtitleStart;subtitleStart+=subtitle.measureText(SUBTITLE[i])+20;}
        edge.setStyle(Paint.Style.STROKE);edge.setStrokeWidth(3);edge.setColor(WHITE);
        float wordWidth=brand.measureText("06LINK");wordX=960-(wordWidth+249)/2;
        float x=wordX+wordWidth+40;
        slashOne=path(x,393,x+94,265,x+142,265,x+48,393);
        slashTwo=path(x+67,393,x+161,265,x+209,265,x+115,393);
        for(int i=0;i<3;i++){
            float y=170+i*76;
            streakLeft[i]=path(0,y+105,620,y-105,100,y+102);
            streakRight[i]=path(1920,720-y-105,1300,720-y+105,1820,720-y-102);
        }
        for(int i=0;i<2;i++){
            ticks[i]=path(65+i*29,644,96+i*29,615,107+i*29,615,77+i*29,644);
            ticks[i+2]=path(1755+i*29,105,1786+i*29,76,1797+i*29,76,1767+i*29,105);
        }
    }
    private static Path path(float... xy){
        Path p=new Path();p.moveTo(xy[0],xy[1]);
        for(int i=2;i<xy.length;i+=2)p.lineTo(xy[i],xy[i+1]);p.close();return p;
    }
    private static float clamp(float x){return Math.max(0,Math.min(1,x));}
    private static float smooth(float x){x=clamp(x);return x*x*(3-2*x);}
    private static float out(float x){float y=1-clamp(x);return 1-y*y*y;}
    private static int color(int rgb,float alpha){return (Math.round(255*clamp(alpha))<<24)|(rgb&0xffffff);}
    private void shape(Canvas c,Path path,int rgb,float alpha){if(alpha<=0)return;fill.setColor(color(rgb,alpha));c.drawPath(path,fill);}
    private void shifted(Canvas c,Path path,int rgb,float alpha,float x){
        int saved=c.save();c.translate(x,0);shape(c,path,rgb,alpha);c.restoreToCount(saved);
    }
    /** Time is in real milliseconds; the registry owns the only duration. */
    void draw(Canvas c,int width,int height,float elapsedMs){
        if(width<=0||height<=0)return;
        float t=clamp(elapsedMs/E01InstrumentStyle.INTRO_DURATION_MS);
        // Last 150ms are completely clear; removal of the overlay does not change the image.
        if(t>=.95f)return;
        int saved=c.save();
        try{
            c.scale(width/(float)E01InstrumentStyle.WIDTH,height/(float)E01InstrumentStyle.HEIGHT);
            c.clipPath(screen);
            float reveal=smooth((t-.525f)/.425f);
            if(reveal<=0)face(c,t);
            else {half(c,t,-1120*reveal,true);half(c,t,1120*reveal,false);}
        }finally{c.restoreToCount(saved);}
    }
    private void half(Canvas c,float t,float shift,boolean isLeft){
        int saved=c.save();
        try{
            c.translate(shift,0);c.clipPath(isLeft?left:right);face(c,t);
            shape(c,isLeft?bladeLeft:bladeRight,RED,1);
            c.drawLine(1060,0,860,720,edge);
        }finally{c.restoreToCount(saved);}
    }
    private void face(Canvas c,float t){
        fill.setColor(BG);c.drawRect(0,0,1920,720,fill);
        shape(c,facetLeft,FACET,1);shape(c,facetRight,FACET,1);
        float offset=(1-out(t/.235f))*480;
        shifted(c,cornerLeft,RED,1,-offset);shifted(c,cornerRight,RED,1,offset);
        float streakAlpha=1-smooth((t-.16f)/.125f);
        if(streakAlpha>0)for(int i=0;i<3;i++){
            float dx=(1-out((t-i*.0175f)/.19f))*660;int rgb=i==1?WHITE:RED;
            shifted(c,streakLeft[i],rgb,streakAlpha,-dx);shifted(c,streakRight[i],rgb,streakAlpha,dx);
        }
        float enter=out((t-.105f)/.145f),alpha=enter*(1-smooth((t-.525f)/.11f));
        if(alpha>0){
            int saved=c.save();
            c.translate(960+(1-enter)*95,360);float scale=1+(1-enter)*.05f;c.scale(scale,scale);c.translate(-960,-360);
            shape(c,bracketTop,RED,alpha);shape(c,bracketBottom,RED,alpha);
            brand.setColor(color(WHITE,alpha));c.drawText("06LINK",wordX,392,brand);
            shape(c,slashOne,RED,alpha);shape(c,slashTwo,RED,alpha);
            subtitle.setColor(color(WHITE,alpha));
            for(int i=0;i<SUBTITLE.length;i++)c.drawText(SUBTITLE[i],subtitleX[i],467,subtitle);
            c.restoreToCount(saved);
        }
        float tickAlpha=smooth((t-.15f)/.1f)*(1-smooth((t-.51f)/.125f));
        for(Path tick:ticks)shape(c,tick,WHITE,tickAlpha);
    }
}
