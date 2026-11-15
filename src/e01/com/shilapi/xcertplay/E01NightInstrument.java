package com.shilapi.xcertplay;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
/** Central live map with dark feathered edges. No vehicle values or map screenshot.
 * Geometry comes from E01MapCard; shaders rebuild only when the window is resized. */
public final class E01NightInstrument {
    public static final int BACKGROUND=0xff071522;
    private final Paint base=new Paint(3),top=new Paint(3),bottom=new Paint(3),left=new Paint(3),right=new Paint(3),line=new Paint(3),brand=new Paint(3);
    private int width,height;
    private float l,t,r,b;
    public E01NightInstrument(){
        base.setColor(BACKGROUND);
        line.setShader(new LinearGradient(145,0,295,0,new int[]{0x007fc6df,0x887fc6df,0x007fc6df},new float[]{0,.5f,1},Shader.TileMode.CLAMP));
        line.setStrokeWidth(1.5f);brand.setColor(0xffedf6ff);brand.setTextSize(24);brand.setTextAlign(Paint.Align.LEFT);
    }
    public void resize(int w,int h){
        if(width==w&&height==h)return;width=w;height=h;if(w<=0||h<=0)return;
        int[] bounds=E01MapCard.boundsFor(w,h,"night");
        l=bounds[0]*1920f/w;t=bounds[1]*720f/h;r=(bounds[0]+bounds[2])*1920f/w;b=(bounds[1]+bounds[3])*720f/h;
        // Opaque at the window boundary, transparent towards its center: no hard map edge.
        left.setShader(new LinearGradient(l,0,l+200,0,new int[]{BACKGROUND,0x00071522},null,Shader.TileMode.CLAMP));
        right.setShader(new LinearGradient(r-200,0,r,0,new int[]{0x00071522,BACKGROUND},null,Shader.TileMode.CLAMP));
        top.setShader(new LinearGradient(0,t,0,t+66,new int[]{BACKGROUND,0x00071522},null,Shader.TileMode.CLAMP));
        bottom.setShader(new LinearGradient(0,b-66,0,b,new int[]{0x00071522,BACKGROUND},null,Shader.TileMode.CLAMP));
    }
    public void draw(Canvas canvas,boolean showMusic){
        if(width<=0||height<=0)return;
        int saved=canvas.save();canvas.scale(width/1920f,height/720f);
        // Four disjoint rectangles leave the actual SurfaceView opening untouched.
        // Do not fill an EVEN_ODD compound path here: the E01 GPU covered its hole.
        canvas.drawRect(0,0,1920,t,base);canvas.drawRect(0,b,1920,720,base);
        canvas.drawRect(0,t,l,b,base);canvas.drawRect(r,t,1920,b,base);
        canvas.drawRect(l,t,l+200,b,left);canvas.drawRect(r-200,t,r,b,right);
        canvas.drawRect(l,t,r,t+66,top);canvas.drawRect(l,b-66,r,b,bottom);
        canvas.drawText("06LINK",46,47,brand);canvas.drawLine(145,478,295,478,line);
        canvas.restoreToCount(saved);
    }
}
