from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java, resolve
import importlib.util
import subprocess
import shutil

project = Path(__file__).resolve().parents[2]
here = project / 'build/cluster-card-fixture'
here.mkdir(parents=True, exist_ok=True)
fixture = here / 'fixture'
fixture.mkdir(exist_ok=True)
spec = importlib.util.spec_from_file_location('apis', project / 'scripts/compile_stubs.py')
module = importlib.util.module_from_spec(spec); spec.loader.exec_module(module)
apis = dict(module.STUBS)
apis.update({
'android/view/View.java': '''package android.view;
public class View {private android.content.Context context;private ViewGroup.LayoutParams params;public int placements;
 public View(){}public View(android.content.Context c){context=c;}public android.content.Context getContext(){return context;}
 public void setLayoutParams(ViewGroup.LayoutParams p){params=p;placements++;}public ViewGroup.LayoutParams getLayoutParams(){return params;}
 public void setFocusable(boolean b){}protected void onSizeChanged(int w,int h,int ow,int oh){}protected void onDraw(android.graphics.Canvas c){}
}''',
'android/view/ViewGroup.java': '''package android.view;public class ViewGroup extends View implements ViewParent {
 private final java.util.ArrayList<View> children=new java.util.ArrayList<View>();
 public int getChildCount(){return children.size();}public View getChildAt(int i){return children.get(i);}
 public void addView(View v){children.add(v);}public void addView(View v,LayoutParams p){v.setLayoutParams(p);children.add(v);}
 public void addView(View v,int i,LayoutParams p){v.setLayoutParams(p);children.add(i,v);}
 public static class LayoutParams{public int width,height;public LayoutParams(int w,int h){width=w;height=h;}}
 public static class MarginLayoutParams extends LayoutParams{public int leftMargin,topMargin,rightMargin,bottomMargin;public MarginLayoutParams(int w,int h){super(w,h);}}
}''',
'android/app/Presentation.java': '''package android.app;public class Presentation {private final android.content.Context c;private final android.view.Display d;public Presentation(android.content.Context c,int id){this.c=c;d=new android.view.Display(id);}public android.content.Context getContext(){return c;}public android.view.Display getDisplay(){return d;}}''',
'android/view/Display.java':'package android.view;public class Display {private final int id;public Display(int id){this.id=id;}public int getDisplayId(){return id;}}',
'android/view/SurfaceView.java':'''package android.view;public class SurfaceView extends View {public boolean onTop=true,mediaOverlay=true;public SurfaceView(android.content.Context c){super(c);}public void setZOrderOnTop(boolean b){onTop=b;}public void setZOrderMediaOverlay(boolean b){mediaOverlay=b;}}''',
'android/graphics/Path.java':'''package android.graphics;public class Path {
 public enum FillType{WINDING,EVEN_ODD,INVERSE_WINDING,INVERSE_EVEN_ODD}public enum Direction{CW,CCW}
 public java.awt.geom.Path2D.Float value=new java.awt.geom.Path2D.Float();
 public void reset(){value.reset();}public void setFillType(FillType t){value.setWindingRule(t==FillType.EVEN_ODD?java.awt.geom.Path2D.WIND_EVEN_ODD:java.awt.geom.Path2D.WIND_NON_ZERO);}
 public void moveTo(float x,float y){value.moveTo(x,y);}public void lineTo(float x,float y){value.lineTo(x,y);}
 public void cubicTo(float a,float b,float c,float d,float e,float f){value.curveTo(a,b,c,d,e,f);}public void close(){value.closePath();}
 public void addRect(float l,float t,float r,float b,Direction d){value.append(new java.awt.geom.Rectangle2D.Float(l,t,r-l,b-t),false);}public void addPath(Path p){value.append(p.value,false);}
}''',
'android/graphics/Shader.java':'package android.graphics;public class Shader {public java.awt.Paint value;public enum TileMode{CLAMP,REPEAT,MIRROR}}',
'android/graphics/LinearGradient.java':'''package android.graphics;public class LinearGradient extends Shader {public LinearGradient(float x0,float y0,float x1,float y1,int[] colors,float[] stops,TileMode mode){java.awt.Color[] c=new java.awt.Color[colors.length];for(int i=0;i<c.length;i++)c[i]=new java.awt.Color(colors[i],true);value=new java.awt.LinearGradientPaint(x0,y0,x1,y1,stops,c);}}''',
'android/graphics/Paint.java':'''package android.graphics;public class Paint {public enum Style{FILL,STROKE,FILL_AND_STROKE}public Style style=Style.FILL;public int color;public float width;public Shader shader;public Paint(int f){}public void setStyle(Style s){style=s;}public void setColor(int c){color=c;}public void setStrokeWidth(float w){width=w;}public Shader setShader(Shader s){Shader old=shader;shader=s;return old;}}''',
'android/graphics/Canvas.java':'''package android.graphics;public class Canvas {public final java.awt.image.BufferedImage image;public int draws;public Canvas(int w,int h){image=new java.awt.image.BufferedImage(w,h,java.awt.image.BufferedImage.TYPE_INT_ARGB);}public void drawPath(Path p,Paint b){draws++;java.awt.Graphics2D g=image.createGraphics();g.setRenderingHint(java.awt.RenderingHints.KEY_ANTIALIASING,java.awt.RenderingHints.VALUE_ANTIALIAS_ON);g.setPaint(b.shader==null?new java.awt.Color(b.color,true):b.shader.value);if(b.style==Paint.Style.STROKE){g.setStroke(new java.awt.BasicStroke(b.width));g.draw(p.value);}else g.fill(p.value);g.dispose();}}''',
})
# A Java2D adapter checks masking geometry, not Android compositor behavior.
apis['android/graphics/Path.java']=apis['android/graphics/Path.java'].rsplit('}',1)[0]+" public void addRoundRect(float l,float t,float r,float b,float rx,float ry,Direction d){value.append(new java.awt.geom.RoundRectangle2D.Float(l,t,r-l,b-t,rx*2,ry*2),false);}}"
apis['android/graphics/Canvas.java']='''package android.graphics;public class Canvas {
 public final java.awt.image.BufferedImage image;public int draws;
 public final java.util.ArrayDeque<java.awt.geom.Area> states=new java.util.ArrayDeque<java.awt.geom.Area>();
 private java.awt.geom.Area clip;
 public Canvas(int w,int h){image=new java.awt.image.BufferedImage(w,h,java.awt.image.BufferedImage.TYPE_INT_ARGB);clip=new java.awt.geom.Area(new java.awt.Rectangle(0,0,w,h));}
 public int save(){states.push(new java.awt.geom.Area(clip));return states.size();}
 public void restore(){clip=states.pop();}
 public boolean clipPath(Path p){clip.intersect(new java.awt.geom.Area(p.value));return !clip.isEmpty();}
 private void draw(java.awt.Shape shape,Paint b){draws++;java.awt.Graphics2D g=image.createGraphics();g.setClip(clip);g.setRenderingHint(java.awt.RenderingHints.KEY_ANTIALIASING,java.awt.RenderingHints.VALUE_ANTIALIAS_ON);g.setPaint(b.shader==null?new java.awt.Color(b.color,true):b.shader.value);if(b.style==Paint.Style.STROKE){g.setStroke(new java.awt.BasicStroke(b.width));g.draw(shape);}else g.fill(shape);g.dispose();}
 public void drawRect(float l,float t,float r,float b,Paint p){draw(new java.awt.geom.Rectangle2D.Float(l,t,r-l,b-t),p);}
 public void drawPath(Path p,Paint b){draw(p.value,b);}
}'''

# Display-only music view fixture, with real text measurement but no Android compositor.
apis['android/view/View.java']=apis['android/view/View.java'].rsplit('}',1)[0]+" public int invalidates;public void postInvalidate(){invalidates++;}protected void onAttachedToWindow(){}protected void onDetachedFromWindow(){}}"
apis['com/shilapi/xcertplay/iap2/wire/Iap2Frame.java']='package com.shilapi.xcertplay.iap2.wire;public class Iap2Frame{private final int id;private final byte[] data;public Iap2Frame(int i,byte[] d){id=i;data=d;}public int getMessageId(){return id;}public byte[] getPayload(){return data;}}'
apis['android/graphics/Paint.java']=apis['android/graphics/Paint.java'].rsplit('}',1)[0]+'''
 public enum Align{LEFT,CENTER,RIGHT}public Align align=Align.LEFT;public float textSize=21;
 private static final java.awt.Font BASE=loadFont();
 private static java.awt.Font loadFont(){try{return java.awt.Font.createFont(java.awt.Font.TRUETYPE_FONT,new java.io.File("/System/Library/Fonts/STHeiti Light.ttc"));}catch(Exception e){return new java.awt.Font("Dialog",java.awt.Font.PLAIN,21);}}
 public java.awt.Font font(){return BASE.deriveFont(textSize);}
 public void setTextAlign(Align a){align=a;}public void setTextSize(float s){textSize=s;}
 public android.graphics.Typeface setTypeface(android.graphics.Typeface t){return null;}
 public float measureText(String s){return (float)font().getStringBounds(s,new java.awt.font.FontRenderContext(null,true,true)).getWidth();}
 public int breakText(String s,boolean forward,float limit,float[] measured){int end=0;while(end<s.length()){int n=end+Character.charCount(s.codePointAt(end));if(measureText(s.substring(0,n))>limit)break;end=n;}return end;}
}'''
apis['android/graphics/Canvas.java']=apis['android/graphics/Canvas.java'].rsplit('}',1)[0]+'''
 public void drawText(String text,float x,float y,Paint p){draws++;java.awt.Graphics2D g=image.createGraphics();g.setClip(clip);g.setRenderingHint(java.awt.RenderingHints.KEY_ANTIALIASING,java.awt.RenderingHints.VALUE_ANTIALIAS_ON);g.setFont(p.font());g.setColor(new java.awt.Color(p.color,true));float xx=x-(p.align==Paint.Align.CENTER?p.measureText(text)/2:p.align==Paint.Align.RIGHT?p.measureText(text):0);g.drawString(text,xx,y);g.dispose();}
 public void drawLine(float x,float y,float xx,float yy,Paint p){draw(new java.awt.BasicStroke(p.width).createStrokedShape(new java.awt.geom.Line2D.Float(x,y,xx,yy)),p);}
 public void drawCircle(float x,float y,float r,Paint p){draw(new java.awt.geom.Ellipse2D.Float(x-r,y-r,r*2,r*2),p);}
}'''

# Real image decoding in the JVM fixture; Android remains the runtime decoder.
apis['android/graphics/Bitmap.java']='package android.graphics;public class Bitmap{public final java.awt.image.BufferedImage image;public Bitmap(java.awt.image.BufferedImage i){image=i;}public int getWidth(){return image.getWidth();}public int getHeight(){return image.getHeight();}}'
apis['android/graphics/BitmapFactory.java']='package android.graphics;public class BitmapFactory{\n public static class Options{public boolean inJustDecodeBounds,inScaled;public int outWidth,outHeight,inSampleSize;}\n public static Bitmap decodeByteArray(byte[] b,int o,int n,Options p){try{\n javax.imageio.stream.ImageInputStream input=javax.imageio.ImageIO.createImageInputStream(new java.io.ByteArrayInputStream(b,o,n));\n java.util.Iterator<javax.imageio.ImageReader> readers=javax.imageio.ImageIO.getImageReaders(input);if(!readers.hasNext()){input.close();return null;}\n javax.imageio.ImageReader r=readers.next();try{r.setInput(input);p.outWidth=r.getWidth(0);p.outHeight=r.getHeight(0);if(p.inJustDecodeBounds)return null;\n javax.imageio.ImageReadParam param=r.getDefaultReadParam();int sample=Math.max(1,p.inSampleSize);param.setSourceSubsampling(sample,sample,0,0);return new Bitmap(r.read(0,param));\n }finally{r.dispose();input.close();}}catch(java.io.IOException e){return null;}}\n}'
apis['android/graphics/Rect.java']='package android.graphics;public class Rect{public int l,t,r,b;public void set(int l,int t,int r,int b){this.l=l;this.t=t;this.r=r;this.b=b;}}'
apis['android/graphics/RectF.java']='package android.graphics;public class RectF{public float l,t,r,b;public void set(float l,float t,float r,float b){this.l=l;this.t=t;this.r=r;this.b=b;}}'
apis['android/graphics/Canvas.java']=apis['android/graphics/Canvas.java'].rsplit('}',1)[0]+'\n public void drawBitmap(Bitmap bitmap,Rect s,RectF d,Paint p){draws++;java.awt.Graphics2D g=image.createGraphics();g.setClip(clip);g.setRenderingHint(java.awt.RenderingHints.KEY_INTERPOLATION,java.awt.RenderingHints.VALUE_INTERPOLATION_BILINEAR);g.drawImage(bitmap.image,Math.round(d.l),Math.round(d.t),Math.round(d.r),Math.round(d.b),s.l,s.t,s.r,s.b,null);g.dispose();}\n}'

apis['com/shilapi/xcertplay/E01MapOptions.java']='package com.shilapi.xcertplay;public class E01MapOptions{public static boolean full;public static boolean fullscreen(){return full;}}'

# Avoid unrelated UI fixture implementations; only resolve APIs reachable from these two helpers.
needed = {'android/app/Presentation.java','android/view/Display.java','android/content/Context.java',
'android/content/Intent.java','android/os/Build.java','android/content/ComponentName.java',
'android/content/ServiceConnection.java','android/os/IBinder.java','android/os/Parcel.java',
'android/content/pm/PackageManager.java','android/content/pm/PackageInfo.java','android/content/pm/Signature.java',
'android/content/SharedPreferences.java','android/content/res/Resources.java','android/util/DisplayMetrics.java',
'android/view/View.java','android/view/ViewGroup.java','android/view/ViewParent.java','android/view/SurfaceView.java',
'android/widget/FrameLayout.java','android/graphics/Point.java','android/graphics/Canvas.java','android/graphics/Path.java',
'android/graphics/Paint.java','android/graphics/Shader.java','android/graphics/LinearGradient.java',
'android/graphics/Bitmap.java','android/graphics/BitmapFactory.java','android/graphics/Rect.java','android/graphics/RectF.java',
'android/graphics/Typeface.java','com/shilapi/xcertplay/iap2/wire/Iap2Frame.java',
'com/shilapi/xcertplay/E01MapOptions.java','kotlin/Pair.java','com/shilapi/xcertplay/airplay/AirPlayInsets.java',
'com/shilapi/xcertplay/airplay/AirPlayDisplayConfig.java','com/shilapi/xcertplay/E01ClusterMode.java'}
for name in needed:
    p=fixture/'src'/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(apis[name])
for name in ['E01MapCard.java','E01DisplayConfig.java','E01MusicCard.java','E01Artwork.java']:
    shutil.copyfile(project/'src/e01/com/shilapi/xcertplay'/name,fixture/'src/com/shilapi/xcertplay'/name)
probe=Path(__file__).with_name('CardGeometryProbe.java')
shutil.copyfile(probe,fixture/'src/com/shilapi/xcertplay/CardGeometryProbe.java')
shutil.copyfile(Path(__file__).with_name('MusicCardProbe.java'),fixture/'src/com/shilapi/xcertplay/MusicCardProbe.java')
shutil.copyfile(Path(__file__).with_name('ArtworkProbe.java'),fixture/'src/com/shilapi/xcertplay/ArtworkProbe.java')
jdk=find_java()['java_home']/'bin'
classes=fixture/'classes';classes.mkdir(exist_ok=True)
subprocess.run([str(jdk/'javac'),'--release','8','-d',str(classes),*map(str,sorted((fixture/'src').rglob('*.java')))],check=True,capture_output=True)
result=subprocess.run([str(jdk/'java'),'-Djava.awt.headless=true','-cp',str(classes),'com.shilapi.xcertplay.CardGeometryProbe',str(here/'actual-bezel.png')],check=True,capture_output=True,text=True)
(here/'fixture-result.json').write_text(result.stdout)
print(result.stdout)

music_result=subprocess.run([str(jdk/'java'),'-Djava.awt.headless=true','-cp',str(classes),'com.shilapi.xcertplay.MusicCardProbe',str(here/'actual-music-card.png')],check=True,capture_output=True,text=True)
(here/'music-fixture-result.json').write_text(music_result.stdout)
print(music_result.stdout)

art_result=subprocess.run([str(jdk/'java'),'-Djava.awt.headless=true','-cp',str(classes),'com.shilapi.xcertplay.ArtworkProbe',str(here/'actual-artwork-card.png')],check=True,capture_output=True,text=True)
(here/'artwork-fixture-result.json').write_text(art_result.stdout)
print(art_result.stdout)
