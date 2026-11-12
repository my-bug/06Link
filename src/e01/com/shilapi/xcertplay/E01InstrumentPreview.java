package com.shilapi.xcertplay;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.view.View;

/** Settings-only preview: production mist artwork with explicitly illustrative content. */
public final class E01InstrumentPreview extends View {
    private static final int WIDTH=1920,HEIGHT=720;
    private final E01MistInstrument mist=new E01MistInstrument();
    private final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path mapClip=new Path(),route=new Path(),roads=new Path(),arrow=new Path();
    private final RectF map=new RectF();
    private final SharedPreferences preferences;
    private final Shader legacyBackground=new LinearGradient(0,0,960,720,
        new int[]{0xff319fbb,0xff3c83bb,0xff626ab1},new float[]{0f,.5f,1f},Shader.TileMode.CLAMP);
    private final DashPathEffect reservedDash=new DashPathEffect(new float[]{7,8},0);
    private final Typeface regular=Typeface.create("sans-serif",Typeface.NORMAL);
    private final Typeface light=Typeface.create("sans-serif-light",Typeface.NORMAL);
    private String style;
    private boolean night,music;
    private final Runnable refreshMusic=new Runnable(){public void run(){music=preferences.getBoolean("music_enabled",true);invalidate();}};
    private final SharedPreferences.OnSharedPreferenceChangeListener changes=(prefs,key)->{
        if("music_enabled".equals(key))post(refreshMusic);
    };

    public E01InstrumentPreview(Context context,boolean night){
        super(context);this.night=night;preferences=context.getSharedPreferences("06link_instrument",0);
        music=preferences.getBoolean("music_enabled",true);mist.resize(WIDTH,HEIGHT);
        paint.setStrokeCap(Paint.Cap.ROUND);paint.setStrokeJoin(Paint.Join.ROUND);
        roads.moveTo(-30,110);roads.lineTo(1150,110);roads.moveTo(-30,270);roads.lineTo(1150,270);
        roads.moveTo(180,-30);roads.lineTo(180,450);roads.moveTo(390,-30);roads.lineTo(390,450);
        roads.moveTo(805,-30);roads.lineTo(805,450);roads.moveTo(1010,-30);roads.lineTo(1010,450);
        route.moveTo(560,450);route.lineTo(560,164);route.quadTo(560,110,614,110);route.lineTo(805,110);route.lineTo(805,-30);
        arrow.moveTo(560,210);arrow.lineTo(539,258);arrow.lineTo(560,247);arrow.lineTo(581,258);arrow.close();
        setStyle(E01InstrumentStyle.selected(context));
    }

    public void setStyle(String value){
        style="mist".equals(value)?"mist":"full".equals(value)?"full":"card";
        int[] bounds=E01MapCard.boundsFor(WIDTH,HEIGHT,style);
        map.set(bounds[0],bounds[1],bounds[0]+bounds[2],bounds[1]+bounds[3]);
        mapClip.reset();float radius="full".equals(style)?0:"mist".equals(style)?28:40;
        mapClip.addRoundRect(map,radius,radius,Path.Direction.CW);
        setContentDescription(("mist".equals(style)?"雾蓝仪表":"full".equals(style)?"全屏地图":"信息卡片")
            +"预览，地图、读数和音乐仅为示意，原厂导航卡片仅预留位置");invalidate();
    }

    public void setNight(boolean value){night=value;invalidate();}

    @Override protected void onAttachedToWindow(){
        super.onAttachedToWindow();preferences.registerOnSharedPreferenceChangeListener(changes);refreshMusic.run();
    }
    @Override protected void onDetachedFromWindow(){
        preferences.unregisterOnSharedPreferenceChangeListener(changes);removeCallbacks(refreshMusic);super.onDetachedFromWindow();
    }
    @Override protected void onMeasure(int widthSpec,int heightSpec){
        int width=MeasureSpec.getMode(widthSpec)==MeasureSpec.UNSPECIFIED?WIDTH:MeasureSpec.getSize(widthSpec);
        int height=Math.round(width*(HEIGHT/(float)WIDTH));
        if(MeasureSpec.getMode(heightSpec)==MeasureSpec.EXACTLY)height=MeasureSpec.getSize(heightSpec);
        else if(MeasureSpec.getMode(heightSpec)==MeasureSpec.AT_MOST)height=Math.min(height,MeasureSpec.getSize(heightSpec));
        setMeasuredDimension(width,height);
    }

    @Override protected void onDraw(Canvas canvas){
        super.onDraw(canvas);float scale=Math.min(getWidth()/(float)WIDTH,getHeight()/(float)HEIGHT);
        if(scale<=0)return;
        canvas.save();canvas.translate((getWidth()-WIDTH*scale)/2,(getHeight()-HEIGHT*scale)/2);canvas.scale(scale,scale);
        canvas.clipRect(0,0,WIDTH,HEIGHT);
        boolean modern="mist".equals(style),full="full".equals(style);
        if(!modern&&!full){fill(Color.WHITE);paint.setShader(legacyBackground);canvas.drawRect(0,0,WIDTH,HEIGHT,paint);paint.setShader(null);}
        drawMap(canvas);
        if(modern)mist.draw(canvas,music);else drawLegacyPanels(canvas,full);
        drawOemPlaceholders(canvas);
        if(music)drawMusicPlaceholder(canvas,modern);
        canvas.restore();
    }

    private void drawMap(Canvas canvas){
        canvas.save();canvas.clipPath(mapClip);canvas.translate(map.left,map.top);canvas.scale(map.width()/1120f,map.height()/420f);
        // One neutral sample map remains the same in both text modes; phone map appearance is independent.
        fill(0xffe1ece7);canvas.drawRect(0,0,1120,420,paint);
        fill(0xffc9ded1);
        for(int row=0;row<3;row++)for(int col=0;col<6;col++){
            float x=col*210-12,y=row*160-34;canvas.drawRoundRect(x,y,x+166,y+122,15,15,paint);
        }
        stroke(0xfff9fcf6,18);canvas.drawPath(roads,paint);
        stroke(0xffffffff,30);canvas.drawPath(route,paint);stroke(0xff117ab2,18);canvas.drawPath(route,paint);stroke(0xff24bbd3,11);canvas.drawPath(route,paint);
        fill(Color.WHITE);canvas.drawPath(arrow,paint);stroke(0xff117ab2,3);canvas.drawPath(arrow,paint);
        label(canvas,"地图示意",990,383,24,0xff627c77);canvas.restore();
    }

    private void drawLegacyPanels(Canvas canvas,boolean full){
        if(!full){
            stroke(0x99f1f6fb,2);canvas.drawPath(mapClip,paint);
            legacyPanel(canvas,35,185,370,340,42);legacyPanel(canvas,555,20,810,64,24);
            legacyPanel(canvas,1408,64,455,96,26);legacyPanel(canvas,205,HEIGHT*.83f-4,1510,HEIGHT*.17f+2,27);
        }
        if(music)legacyPanel(canvas,1515,185,370,340,42);
    }

    private void legacyPanel(Canvas canvas,float x,float y,float width,float height,float radius){
        fill(0xff3c83bb);paint.setShader(legacyBackground);canvas.drawRoundRect(x,y,x+width,y+height,radius,radius,paint);paint.setShader(null);
        fill(0x68133153);canvas.drawRoundRect(x,y,x+width,y+height,radius,radius,paint);
        fill(0x20ffffff);canvas.drawRoundRect(x,y,x+width,y+height,radius,radius,paint);
        stroke(0x75ffffff,1.5f);canvas.drawRoundRect(x,y,x+width,y+height,radius,radius,paint);
    }

    private void drawOemPlaceholders(Canvas canvas){
        int text=night?0xfff7fbff:0xff252c32;
        label(canvas,"舒适",703,62,30,text);label(canvas,"--°C",853,62,30,text);
        label(canvas,"--",980,62,35,text);label(canvas,"--:--",1160,62,31,text);
        fill(0xff66e6ba);canvas.drawRect(598,47,626,57,paint);canvas.drawRect(1295,47,1323,57,paint);
        stroke(0xff66e6ba,5);canvas.drawLine(602,40,588,52,paint);canvas.drawLine(588,52,602,64,paint);
        canvas.drawLine(1318,40,1332,52,paint);canvas.drawLine(1332,52,1318,64,paint);
        label(canvas,"-- ×1000 r/min",1615,110,26,text);
        stroke(0xffb6d1df,5);canvas.drawLine(1436,133,1835,133,paint);
        fill(text);paint.setTypeface(light);paint.setTextSize(145);paint.setTextAlign(Paint.Align.CENTER);canvas.drawText("--",220,390,paint);
        label(canvas,"km/h",220,431,29,text);
        stroke(0x80d5e6ee,2);paint.setPathEffect(reservedDash);canvas.drawRoundRect(744,84,1224,173,16,16,paint);paint.setPathEffect(null);
        label(canvas,"原厂导航卡片预留",984,135,24,text);
        // Original vehicle-status icon position is reserved above the bottom readouts.
        stroke(0xff65d4e8,3);canvas.drawRoundRect(233,609,260,651,9,9,paint);
        canvas.drawLine(238,620,255,620,paint);canvas.drawLine(238,640,255,640,paint);
        canvas.drawLine(229,618,229,631,paint);canvas.drawLine(264,618,264,631,paint);
        canvas.drawLine(241,605,241,609,paint);canvas.drawLine(252,605,252,609,paint);
        label(canvas,"AUTOHOLD",541,647,19,text);label(canvas,"-- km",445,679,29,text);
        label(canvas,"ODO   ------ km",960,687,29,text);label(canvas,"--°C",1366,683,30,text);
        // Icon colours are fixed, just as in the OEM layer; only the text changes for night preview.
        stroke(0xfff9fcff,3);canvas.drawRect(330,660,351,697,paint);canvas.drawRect(334,666,347,678,paint);
        canvas.drawLine(328,699,355,699,paint);canvas.drawLine(351,668,364,680,paint);canvas.drawLine(364,680,364,696,paint);
        canvas.drawLine(1468,659,1468,686,paint);canvas.drawCircle(1468,691,8,paint);canvas.drawLine(1473,666,1481,666,paint);
        canvas.drawLine(1473,677,1481,677,paint);canvas.drawLine(388,697,507,697,paint);
    }

    private void drawMusicPlaceholder(Canvas canvas,boolean modern){
        int text=night?0xfff7fbff:0xff252c32;float cx=modern?1700:1698,albumTop=modern?223:214,size=modern?152:120;
        fill(0xff416e85);canvas.drawRoundRect(cx-size/2,albumTop,cx+size/2,albumTop+size,20,20,paint);
        label(canvas,"♪",cx,albumTop+size*.7f,size*.6f,0xffcbe9ef);
        label(canvas,"音乐示意",cx,modern?201:205,16,text);
        if(modern){
            label(canvas,"沿着海岸，慢慢向前",cx,417,22,text);
            label(canvas,"让熟悉的旋律陪着我",cx,445,22,text);
            label(canvas,"歌手 / 专辑",cx,490,20,text);
        }else{
            label(canvas,"歌曲名称",cx,384,30,text);label(canvas,"歌手 / 专辑",cx,417,20,text);
        }
    }

    private void fill(int color){paint.setStyle(Paint.Style.FILL);paint.setColor(color);paint.setShader(null);paint.setPathEffect(null);}
    private void stroke(int color,float width){fill(color);paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(width);}
    private void label(Canvas canvas,String text,float x,float y,float size,int color){
        fill(color);paint.setTypeface(regular);paint.setTextSize(size);paint.setTextAlign(Paint.Align.CENTER);canvas.drawText(text,x,y,paint);
    }
}
