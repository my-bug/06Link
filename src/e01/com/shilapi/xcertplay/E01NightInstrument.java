package com.shilapi.xcertplay;
import android.graphics.Canvas;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
/** Inset-theme materials used by E01InstrumentRenderer. No vehicle values or map screenshot.
 * Geometry comes from E01MapCard; feather bitmap rebuilds only when the window is resized. */
public final class E01NightInstrument {
    public static final int BACKGROUND=0xff141c26;
    private final Paint base=new Paint(7),feather=new Paint(7),line=new Paint(7),brand=new Paint(3);
    private Bitmap shadow;
    private final Rect shadowSource=new Rect();
    private final RectF shadowBounds=new RectF();
    private int width,height;
    private String style;
    private E01InstrumentStyle.Theme theme;
    private float l,t,r,b;
    public E01NightInstrument(){this("night");}
    public E01NightInstrument(String value){
        setStyle(value);
        line.setShader(new LinearGradient(145,0,295,0,new int[]{0x007fc6df,0x887fc6df,0x007fc6df},new float[]{0,.5f,1},Shader.TileMode.CLAMP));
        line.setStrokeWidth(1.5f);brand.setColor(0xffedf6ff);brand.setTextSize(24);brand.setTextAlign(Paint.Align.LEFT);
    }
    public void setStyle(String value){
        String next=E01InstrumentStyle.normalize(value);
        if(next.equals(style))return;style=next;theme=E01InstrumentStyle.theme(style);base.setColor(theme.background);
        int w=width,h=height;width=height=0;shadow=null;if(w>0&&h>0)resize(w,h);
    }
    Bitmap backdrop(){return theme.material==E01InstrumentStyle.Material.SPORT?shadow:null;}
    public void resize(int w,int h){
        if(width==w&&height==h)return;width=w;height=h;if(w<=0||h<=0)return;
        int[] bounds=E01MapCard.boundsFor(w,h,style);
        l=bounds[0]*1920f/w;t=bounds[1]*720f/h;r=(bounds[0]+bounds[2])*1920f/w;b=(bounds[1]+bounds[3])*720f/h;
        if(theme.material==E01InstrumentStyle.Material.SPORT){
            shadow=E01SportInstrument.create(w,h);shadowSource.set(0,0,w,h);shadowBounds.set(0,0,1920,720);
        }else if(theme.material==E01InstrumentStyle.Material.RELIEF){
            int px=Math.max(1,Math.round(32*w/1920f)),py=Math.max(1,Math.round(32*h/720f));
            shadow=E01InstrumentFeather.reliefFrame(bounds[2],bounds[3],px,py,w/1920f,h/720f);
            shadowSource.set(0,0,shadow.getWidth(),shadow.getHeight());
            shadowBounds.set(l-px*1920f/w,t-py*720f/h,r+px*1920f/w,b+py*720f/h);
        }else{
            shadow=E01InstrumentFeather.mapShadow(bounds[2],bounds[3],w/1920f,h/720f);
            shadowSource.set(0,0,bounds[2],bounds[3]);shadowBounds.set(l,t,r,b);
        }
    }
    public void draw(Canvas canvas,boolean showMusic){
        if(width<=0||height<=0)return;
        int saved=canvas.save();canvas.scale(width/1920f,height/720f);
        // Four disjoint rectangles leave the actual SurfaceView opening untouched.
        // Do not fill an EVEN_ODD compound path here: the E01 GPU covered its hole.
        if(theme.material!=E01InstrumentStyle.Material.SPORT){
            canvas.drawRect(0,0,1920,t,base);canvas.drawRect(0,b,1920,720,base);
            canvas.drawRect(0,t,l,b,base);canvas.drawRect(r,t,1920,b,base);
        }
        if(shadow!=null)canvas.drawBitmap(shadow,shadowSource,shadowBounds,feather);
        canvas.drawText("06LINK",64,61,brand);if(theme.material!=E01InstrumentStyle.Material.SPORT)canvas.drawLine(145,478,295,478,line);
        canvas.restoreToCount(saved);
    }
}
