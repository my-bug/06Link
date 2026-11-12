package com.shilapi.xcertplay;
import android.graphics.*;
import java.util.ArrayList;
/** Approved fixed mist-blue instrument artwork. Contains no OEM text/icons or video controls.
 * Paths/paints/shaders are built once. Drawing follows existing window invalidation only.
 */
public final class E01MistInstrument {
    public static final int BACKGROUND=0xff63879c;
    private static final class Mark {final Path path;final Paint paint;Mark(Path p,Paint q){path=p;paint=q;}}
    private final ArrayList<Mark> marks=new ArrayList<Mark>();
    private final Path outside=new Path(),hole=new Path(),safe=new Path();
    private final Paint base=paint(false,0,BACKGROUND),edge=paint(true,1,0xff9ec9d7);
    private final Paint rim=paint(true,5,0xff4f7187);
    private int width,height;
    public E01MistInstrument(){
        safe.setFillType(Path.FillType.EVEN_ODD);safe.addRect(0,0,1920,720,Path.Direction.CW);
        // These are reserved positions, not remapped/repainted native data.
        reserve(555,20,1365,84);reserve(1408,64,1863,160);reserve(744,84,1224,173);
        reserve(75,274,367,441);reserve(200,597,1740,720);
        {Path p=new Path();p.moveTo(-92f,75f);p.cubicTo(189f,69f,224f,128f,423f,131f);p.cubicTo(622f,134f,657f,90f,726f,93f);add(p,paint(true,39f,0x12e0f1f5));}
        {Path p=new Path();p.moveTo(-90f,81f);p.cubicTo(170f,79f,233f,145f,422f,143f);p.cubicTo(611f,141f,645f,106f,719f,108f);add(p,paint(true,1f,0x38daf1f6));}
        {Path p=new Path();p.moveTo(1178f,169f);p.cubicTo(1414f,170f,1525f,162f,1980f,168f);add(p,paint(true,28f,0x0fe0f1f5));}
        {Path p=new Path();p.moveTo(60f,162f);p.cubicTo(202f,162f,247f,163f,316f,126f);p.quadTo(339f,112f,367f,112f);p.lineTo(690f,112f);add(p,gradient(p,true,1.2f,new int[]{0x00bddde8,0xa6d5f4f7,0x66b6ecf2,0x00d5f4f7},new float[]{0f,.22f,.65f,1f},0f,0f,1f,0f));}
        {Path p=new Path();p.moveTo(1243f,163f);p.lineTo(1856f,163f);add(p,gradient(p,true,1.2f,new int[]{0x00bddde8,0xa6d5f4f7,0x66b6ecf2,0x00d5f4f7},new float[]{0f,.22f,.65f,1f},0f,0f,1f,0f));}
        {Path p=new Path();p.moveTo(22f,562f);p.quadTo(204f,583f,355f,568f);p.moveTo(1565f,568f);p.quadTo(1725f,583f,1898f,562f);add(p,gradient(p,true,1f,new int[]{0x00bddde8,0xa6d5f4f7,0x66b6ecf2,0x00d5f4f7},new float[]{0f,.22f,.65f,1f},0f,0f,1f,0f));}
        {Path p=new Path();p.moveTo(115f,212f);p.cubicTo(17f,258f,16f,470f,115f,516f);p.moveTo(325f,212f);p.cubicTo(423f,258f,424f,470f,325f,516f);add(p,paint(true,7f,0x40446b83));}
        {Path p=new Path();p.moveTo(115f,212f);p.cubicTo(17f,258f,16f,470f,115f,516f);p.moveTo(325f,212f);p.cubicTo(423f,258f,424f,470f,325f,516f);add(p,gradient(p,true,2f,new int[]{0x0ac4edf6,0xb2cdf7f9,0x59bfe3f4,0x0ad7f2ff},new float[]{0f,.35f,.7f,1f},0f,0f,1f,1f));}
        {Path p=new Path();p.moveTo(1595f,212f);p.cubicTo(1497f,258f,1496f,470f,1595f,516f);p.moveTo(1805f,212f);p.cubicTo(1903f,258f,1904f,470f,1805f,516f);add(p,paint(true,7f,0x40446b83));}
        {Path p=new Path();p.moveTo(1595f,212f);p.cubicTo(1497f,258f,1496f,470f,1595f,516f);p.moveTo(1805f,212f);p.cubicTo(1903f,258f,1904f,470f,1805f,516f);add(p,gradient(p,true,2f,new int[]{0x0ac4edf6,0xb2cdf7f9,0x59bfe3f4,0x0ad7f2ff},new float[]{0f,.35f,.7f,1f},0f,0f,1f,1f));}
        {Path p=new Path();p.moveTo(84.9f,479.1f);p.lineTo(80.4f,483.1f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(63.4f,448.8f);p.lineTo(58.2f,451.7f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(48.8f,414.7f);p.lineTo(43.1f,416.5f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(41.7f,378.4f);p.lineTo(35.7f,378.9f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(42.3f,341.4f);p.lineTo(36.4f,340.7f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(50.8f,305.4f);p.lineTo(45.1f,303.4f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(66.6f,271.8f);p.lineTo(61.4f,268.7f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(84.9f,246.9f);p.lineTo(80.4f,242.9f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(355.1f,246.9f);p.lineTo(359.6f,242.9f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(376.6f,277.2f);p.lineTo(381.8f,274.3f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(391.2f,311.3f);p.lineTo(396.9f,309.5f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(398.3f,347.6f);p.lineTo(404.3f,347.1f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(397.7f,384.6f);p.lineTo(403.6f,385.3f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(389.2f,420.6f);p.lineTo(394.9f,422.6f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(373.4f,454.2f);p.lineTo(378.6f,457.3f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(355.1f,479.1f);p.lineTo(359.6f,483.1f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1564.9f,479.1f);p.lineTo(1560.4f,483.1f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1543.4f,448.8f);p.lineTo(1538.2f,451.7f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1528.8f,414.7f);p.lineTo(1523.1f,416.5f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1521.7f,378.4f);p.lineTo(1515.7f,378.9f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1522.3f,341.4f);p.lineTo(1516.4f,340.7f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1530.8f,305.4f);p.lineTo(1525.1f,303.4f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1546.6f,271.8f);p.lineTo(1541.4f,268.7f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1564.9f,246.9f);p.lineTo(1560.4f,242.9f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1835.1f,246.9f);p.lineTo(1839.6f,242.9f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1856.6f,277.2f);p.lineTo(1861.8f,274.3f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1871.2f,311.3f);p.lineTo(1876.9f,309.5f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1878.3f,347.6f);p.lineTo(1884.3f,347.1f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1877.7f,384.6f);p.lineTo(1883.6f,385.3f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1869.2f,420.6f);p.lineTo(1874.9f,422.6f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1853.4f,454.2f);p.lineTo(1858.6f,457.3f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(1835.1f,479.1f);p.lineTo(1839.6f,483.1f);add(p,paint(true,1f,0x73cbe9ef));}
        {Path p=new Path();p.moveTo(97f,537f);p.lineTo(112f,549f);p.lineTo(328f,549f);p.lineTo(343f,537f);p.moveTo(1577f,552f);p.lineTo(1588f,562f);p.lineTo(1812f,562f);p.lineTo(1823f,552f);add(p,gradient(p,true,1.2f,new int[]{0x00bddde8,0xa6d5f4f7,0x66b6ecf2,0x00d5f4f7},new float[]{0f,.22f,.65f,1f},0f,0f,1f,0f));}
        {Path p=new Path();p.moveTo(388f,207f);p.lineTo(388f,193f);p.quadTo(388f,162f,420f,162f);p.lineTo(450f,162f);p.moveTo(1470f,162f);p.lineTo(1500f,162f);p.quadTo(1532f,162f,1532f,193f);p.lineTo(1532f,207f);p.moveTo(388f,561f);p.lineTo(388f,575f);p.quadTo(388f,606f,420f,606f);p.lineTo(450f,606f);p.moveTo(1470f,606f);p.lineTo(1500f,606f);p.quadTo(1532f,606f,1532f,575f);p.lineTo(1532f,561f);add(p,gradient(p,true,1.8f,new int[]{0xd9defaff,0x2ec8edf8,0x80d3f4f9},new float[]{0f,.4f,1f},0f,0f,0f,1f));}
        {Path p=new Path();p.moveTo(460f,163f);p.lineTo(734f,163f);p.moveTo(1238f,163f);p.lineTo(1460f,163f);p.moveTo(480f,607f);p.lineTo(1440f,607f);add(p,gradient(p,true,1.3f,new int[]{0x00bddde8,0xa6d5f4f7,0x66b6ecf2,0x00d5f4f7},new float[]{0f,.22f,.65f,1f},0f,0f,1f,0f));}
        {Path p=new Path();p.addCircle(475f,163f,2f,Path.Direction.CW);add(p,paint(false,1f,0xffe1f5fa));}
        {Path p=new Path();p.addCircle(1445f,163f,2f,Path.Direction.CW);add(p,paint(false,1f,0xffe1f5fa));}
        {Path p=new Path();p.moveTo(710f,659f);p.lineTo(710f,697f);p.moveTo(1218f,659f);p.lineTo(1218f,697f);add(p,paint(true,1f,0x61c4e4ed));}
        {Path p=new Path();p.moveTo(220f,716f);p.lineTo(1700f,716f);add(p,gradient(p,true,1f,new int[]{0x00bddde8,0x3fd5f4f7,0x27b6ecf2,0x00d5f4f7},new float[]{0f,.22f,.65f,1f},0f,0f,1f,0f));}
    }
    private void reserve(float l,float t,float r,float b){safe.addRect(l,t,r,b,Path.Direction.CW);}
    private void add(Path p,Paint paint){marks.add(new Mark(p,paint));}
    private static Paint paint(boolean stroke,float width,int color){
        Paint p=new Paint(3);p.setStyle(stroke?Paint.Style.STROKE:Paint.Style.FILL);p.setStrokeWidth(width);
        p.setColor(color);p.setStrokeCap(Paint.Cap.ROUND);p.setStrokeJoin(Paint.Join.ROUND);return p;
    }
    private static Paint gradient(Path path,boolean stroke,float width,int[] colors,float[] positions,float x1,float y1,float x2,float y2){
        RectF b=new RectF();path.computeBounds(b,true);float w=Math.max(1,b.width()),h=Math.max(1,b.height());
        Paint p=paint(stroke,width,0xffffffff);p.setShader(new LinearGradient(b.left+x1*w,b.top+y1*h,b.left+x2*w,b.top+y2*h,colors,positions,Shader.TileMode.CLAMP));return p;
    }
    public void resize(int w,int h){
        if(w==width&&h==height)return;width=w;height=h;if(w<=0||h<=0)return;
        int[] b=E01MapCard.boundsFor(w,h,"mist");float x=1920f/w,y=720f/h;
        hole.reset();hole.addRoundRect(b[0]*x,b[1]*y,(b[0]+b[2])*x,(b[1]+b[3])*y,28,28,Path.Direction.CW);
        outside.reset();outside.setFillType(Path.FillType.EVEN_ODD);outside.addRect(0,0,1920,720,Path.Direction.CW);outside.addPath(hole);
    }
    public void draw(Canvas canvas,boolean showMusic){
        if(width<=0||height<=0)return;
        int root=canvas.save();canvas.scale(width/1920f,height/720f);
        int outsideSave=canvas.save();canvas.clipPath(outside);canvas.drawRect(0,0,1920,720,base);
        int ornaments=canvas.save();canvas.clipPath(safe);
        if(!showMusic)canvas.clipRect(1515,185,1920,590,Region.Op.DIFFERENCE);
        for(int i=0;i<marks.size();i++){Mark m=marks.get(i);canvas.drawPath(m.path,m.paint);}
        canvas.restoreToCount(ornaments);canvas.restoreToCount(outsideSave);
        canvas.drawPath(hole,rim);canvas.drawPath(hole,edge);canvas.restoreToCount(root);
    }
}
