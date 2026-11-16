package com.shilapi.xcertplay;

import android.graphics.*;

/** Shared live/preview bezel renderer. Paths, shaders and bitmaps rebuild only on resize. */
final class E01InstrumentRenderer {
    private final Path hole = new Path(), outside = new Path();
    private final Path waveA = new Path(), waveB = new Path(), glint = new Path();
    private final Path[] panels = new Path[5], shadows = new Path[5];
    private final Paint base = new Paint(3), wavePaintA = new Paint(3), wavePaintB = new Paint(3);
    private final Paint glintPaint = new Paint(3), mapEdge = new Paint(3), tint = new Paint(3), shadow = new Paint(3);
    private final Paint[] highlights = new Paint[5], edges = new Paint[5];
    private int panelWidth, panelHeight;
    private final String style;
    private final boolean full;
    private final E01NightInstrument night;

    E01InstrumentRenderer(String value){
        style=E01InstrumentStyle.normalize(value);full=E01InstrumentStyle.fullscreen(style);
        night=E01InstrumentStyle.isImmersive(style)?new E01NightInstrument(style):null;
        wavePaintA.setColor(0x47b3e8da); wavePaintB.setColor(0x545b41a8);
        glintPaint.setStyle(Paint.Style.STROKE); glintPaint.setColor(0x40e0f6df);
        mapEdge.setStyle(Paint.Style.STROKE); mapEdge.setColor(0x99f1f6fb);
        tint.setColor(0x68133153); shadow.setColor(0x22103153);
        for (int i = 0; i < panels.length; i++) {
            panels[i] = new Path(); shadows[i] = new Path();
            highlights[i] = new Paint(3); edges[i] = new Paint(3);
            edges[i].setStyle(Paint.Style.STROKE);
        }
    }
    private void panel(int index, float x, float y, float w, float h, float radius, float sx, float sy) {
        float l=x*sx, t=y*sy, r=(x+w)*sx, b=(y+h)*sy;
        float rad=radius*Math.min(sx,sy), offset=5*sy;
        panels[index].reset(); panels[index].addRoundRect(l,t,r,b,rad,rad,Path.Direction.CW);
        shadows[index].reset(); shadows[index].addRoundRect(l,t+offset,r,b+offset,rad,rad,Path.Direction.CW);
        highlights[index].setShader(new LinearGradient(l,t,l+(r-l)*0.65f,b,
            new int[]{0x52ffffff,0x14ffffff,0x24ffffff},new float[]{0f,0.44f,1f},Shader.TileMode.CLAMP));
        edges[index].setShader(new LinearGradient(l,t,l+(r-l)*0.4f,b,
            new int[]{0xabffffff,0x1fffffff,0x42ffffff},new float[]{0f,0.42f,1f},Shader.TileMode.CLAMP));
        edges[index].setStrokeWidth(Math.max(1f,1.5f*sy));
    }


    void resize(int width,int height){
        if(width<=0||height<=0||(panelWidth==width&&panelHeight==height))return;
        panelWidth=width;panelHeight=height;
        if(night!=null){night.resize(width,height);return;}
        int[] b=E01MapCard.boundsFor(width,height,style); float radius=E01InstrumentStyle.theme(style).layout.mapRadius*height/720f;
        hole.reset(); hole.addRoundRect(b[0],b[1],b[0]+b[2],b[1]+b[3],radius,radius,Path.Direction.CW);
        outside.reset(); outside.setFillType(Path.FillType.EVEN_ODD);
        outside.addRect(0,0,width,height,Path.Direction.CW); outside.addPath(hole);
        base.setShader(new LinearGradient(0,0,width*0.5f,height,
            E01InstrumentStyle.theme(style).backdropColors(),new float[]{0f,0.5f,1f},Shader.TileMode.CLAMP));
        float sx=width/1920f, sy=height/720f;
        waveA.reset(); waveA.moveTo(-80*sx,530*sy);
        waveA.cubicTo(480*sx,-80*sy,1030*sx,-60*sy,1980*sx,160*sy);
        waveA.lineTo(1980*sx,335*sy);
        waveA.cubicTo(1320*sx,70*sy,700*sx,130*sy,-80*sx,710*sy); waveA.close();
        waveB.reset(); waveB.moveTo(-120*sx,710*sy);
        waveB.cubicTo(550*sx,340*sy,1170*sx,690*sy,2010*sx,290*sy);
        waveB.lineTo(2010*sx,490*sy);
        waveB.cubicTo(1220*sx,900*sy,680*sx,600*sy,-120*sx,820*sy); waveB.close();
        glint.reset(); glint.moveTo(-70*sx,534*sy);
        glint.cubicTo(540*sx,-40*sy,1100*sx,23*sy,1980*sx,189*sy);
        glintPaint.setStrokeWidth(Math.max(1f,4*sy)); mapEdge.setStrokeWidth(Math.max(1f,2*sy));
        panel(0,35,185,370,340,42,sx,sy);  // Photo-calibrated speed group center: 220,355.
        panel(1,555,20,810,64,24,sx,sy);   // Screen-centered top status: 960,52.
        panel(2,1408,64,455,96,26,sx,sy);  // Photo-calibrated tachometer center: 1635.5,112.
        // Extend the footer up to the map edge; 4 reference pixels of overlap hide a gap.
        float footerTop = (b[1] + b[3]) / sy - 4f;
        panel(3,205,footerTop,1510,718f-footerTop,27,sx,sy);
        int[] music=E01InstrumentStyle.theme(style).musicBounds(E01InstrumentStyle.WIDTH,E01InstrumentStyle.HEIGHT);
        panel(4,music[0],music[1],music[2],music[3],42,sx,sy);
        // The native route card is intentionally absent from this panel list.
    }

    Bitmap backdrop(){return night==null?null:night.backdrop();}
    private void backdrop(Canvas canvas) {
        canvas.drawRect(0,0,panelWidth,panelHeight,base);
        canvas.drawPath(waveA,wavePaintA); canvas.drawPath(waveB,wavePaintB);
        canvas.drawPath(glint,glintPaint);
    }

    void draw(Canvas canvas,boolean showMusic) {
        if (panelWidth <= 0 || panelHeight <= 0) return;
        if(night!=null){night.draw(canvas,showMusic);return;}
        if(!full){canvas.save(); canvas.clipPath(outside); backdrop(canvas); canvas.restore();
        canvas.drawPath(hole,mapEdge);}
        for (int i=full?4:0; i<panels.length; i++) {
            if(i==4&&!showMusic)continue;
            canvas.drawPath(shadows[i],shadow);
            canvas.save(); canvas.clipPath(panels[i]);
            // Sample our static backdrop, so moving map lines never run under OEM white text.
            backdrop(canvas);
            canvas.drawPath(panels[i],tint); canvas.drawPath(panels[i],highlights[i]);
            canvas.restore(); canvas.drawPath(panels[i],edges[i]);
        }
    }
}
