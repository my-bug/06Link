#!/usr/bin/env python3
"""Compile production mist/display/music helpers and render them on the host; no device calls."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java, resolve
import argparse, importlib.util, os, subprocess, tempfile

HERE=Path(__file__).resolve().parent
parser=argparse.ArgumentParser(description=__doc__)
parser.add_argument('--root',type=Path,default=HERE.parents[1])
parser.add_argument('--output',type=Path)
args=parser.parse_args();ROOT=args.root.resolve()
# Reuse the existing Java2D image/text adapters, stopping before any fixture files are written.
legacy=ROOT/'scripts/validation/test_cluster_card.py'
body=legacy.read_text();body=body[body.index('spec = '):body.index('# Avoid unrelated UI fixture')]
env={'project':ROOT,'Path':Path,'importlib':importlib};exec(compile(body,str(legacy),'exec'),env)
apis=env['apis']
def extend(name,source):apis[name]=apis[name].rsplit('}',1)[0]+source+'}'
apis['android/content/SharedPreferences.java']='''package android.content;import java.util.Map;public interface SharedPreferences{
 Map<String,?> getAll();String getString(String k,String d);boolean getBoolean(String k,boolean d);Editor edit();
 void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener l);void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener l);
 interface OnSharedPreferenceChangeListener{void onSharedPreferenceChanged(SharedPreferences p,String k);}
 interface Editor{Editor putString(String k,String v);Editor putBoolean(String k,boolean v);Editor remove(String k);boolean commit();void apply();}}
'''
apis['android/content/Context.java']='''package android.content;import java.util.*;public class Context{
 private static final Map<String,Prefs> stores=new HashMap<String,Prefs>();
 public Context getApplicationContext(){return this;}public android.content.res.Resources getResources(){return new android.content.res.Resources();}
 public SharedPreferences getSharedPreferences(String n,int mode){Prefs p=stores.get(n);if(p==null){p=new Prefs();stores.put(n,p);}return p;}
 public static class Prefs implements SharedPreferences,SharedPreferences.Editor{
  private final Map<String,Object> values=new HashMap<String,Object>();public final List<OnSharedPreferenceChangeListener> listeners=new ArrayList<OnSharedPreferenceChangeListener>();private String dirty;
  public Map<String,?> getAll(){return values;}public String getString(String k,String d){Object v=values.get(k);return v instanceof String?(String)v:d;}public boolean getBoolean(String k,boolean d){Object v=values.get(k);return v instanceof Boolean?(Boolean)v:d;}
  public Editor edit(){return this;}public Editor putString(String k,String v){values.put(k,v);dirty=k;return this;}public Editor putBoolean(String k,boolean v){values.put(k,v);dirty=k;return this;}public Editor remove(String k){values.remove(k);dirty=k;return this;}
  public boolean commit(){for(OnSharedPreferenceChangeListener l:new ArrayList<OnSharedPreferenceChangeListener>(listeners))l.onSharedPreferenceChanged(this,dirty);return true;}public void apply(){commit();}
  public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener l){listeners.add(l);}public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener l){listeners.remove(l);}
 }}'''
apis['android/view/TextureView.java']='package android.view;public class TextureView extends View{public TextureView(android.content.Context c){super(c);}}'
apis['android/widget/TextView.java']='package android.widget;public class TextView extends android.view.View{public TextView(android.content.Context c){super(c);}}'
apis['android/app/ActivityThread.java']='package android.app;public class ActivityThread{public static final android.content.Context application=new android.content.Context();public static android.content.Context currentApplication(){return application;}}'
apis['android/content/res/Configuration.java']='package android.content.res;public class Configuration{public int uiMode=32;}'
apis['android/content/res/Resources.java']='package android.content.res;public class Resources{public Configuration getConfiguration(){return new Configuration();}}'
extend('android/view/View.java','''
 public static final int VISIBLE=0,GONE=8;public int visibility,width,height;public void setVisibility(int v){visibility=v;}public int getWidth(){return width;}public int getHeight(){return height;}
 public boolean post(Runnable r){r.run();return true;}public boolean removeCallbacks(Runnable r){return true;}public void invalidate(){invalidates++;}
 public android.content.res.Resources getResources(){return getContext().getResources();}protected void onConfigurationChanged(android.content.res.Configuration c){}
 public void setContentDescription(CharSequence c){}protected void onMeasure(int w,int h){}public void setMeasuredDimension(int w,int h){width=w;height=h;}
 public static class MeasureSpec{public static final int UNSPECIFIED=0,EXACTLY=1073741824,AT_MOST=-2147483648;public static int getMode(int s){return s&-1073741824;}public static int getSize(int s){return s&1073741823;}}
''')
extend('android/graphics/Path.java','''
 public void quadTo(float x,float y,float a,float b){value.quadTo(x,y,a,b);}
 public void addCircle(float x,float y,float r,Direction d){value.append(new java.awt.geom.Ellipse2D.Float(x-r,y-r,2*r,2*r),false);}
 public void computeBounds(RectF b,boolean exact){java.awt.geom.Rectangle2D r=value.getBounds2D();b.set((float)r.getX(),(float)r.getY(),(float)r.getMaxX(),(float)r.getMaxY());}
 public void addRoundRect(RectF b,float rx,float ry,Direction d){addRoundRect(b.left,b.top,b.right,b.bottom,rx,ry,d);}
''')
apis['android/graphics/RectF.java']='''package android.graphics;public class RectF{public float l,t,r,b,left,top,right,bottom;public void set(float l,float t,float r,float b){this.l=this.left=l;this.t=this.top=t;this.r=this.right=r;this.b=this.bottom=b;}public float width(){return right-left;}public float height(){return bottom-top;}}'''
extend('android/graphics/Paint.java','''public static final int ANTI_ALIAS_FLAG=1;public enum Cap{BUTT,ROUND,SQUARE}public enum Join{MITER,ROUND,BEVEL}public int cap=0,join=0;public void setStrokeCap(Cap c){cap=c==Cap.ROUND?1:c==Cap.SQUARE?2:0;}public void setStrokeJoin(Join j){join=j==Join.ROUND?1:j==Join.BEVEL?2:0;}public void setPathEffect(DashPathEffect effect){}''')
apis['android/graphics/Color.java']='package android.graphics;public class Color{public static final int WHITE=0xffffffff;}'
apis['android/graphics/DashPathEffect.java']='package android.graphics;public class DashPathEffect{public DashPathEffect(float[] intervals,float phase){}}'
apis['android/graphics/Region.java']='package android.graphics;public class Region{public enum Op{DIFFERENCE}}'
apis['android/graphics/Typeface.java']='package android.graphics;public class Typeface{public static final int NORMAL=0;public static Typeface create(String name,int style){return new Typeface();}}'
apis['android/graphics/Canvas.java']='''package android.graphics;import java.awt.*;import java.awt.geom.*;import java.awt.image.*;import java.util.*;
public class Canvas{
 public static final class TextDraw{public final String text;public final float x,y,size;public TextDraw(String text,float x,float y,float size){this.text=text;this.x=x;this.y=y;this.size=size;}}
 public final java.util.List<TextDraw> texts=new java.util.ArrayList<TextDraw>();
 public final BufferedImage image;public int draws;private Graphics2D g;private final ArrayDeque<Graphics2D> states=new ArrayDeque<Graphics2D>();
 public Canvas(int w,int h){image=new BufferedImage(w,h,BufferedImage.TYPE_INT_ARGB);g=image.createGraphics();g.setClip(0,0,w,h);g.setRenderingHint(RenderingHints.KEY_ANTIALIASING,RenderingHints.VALUE_ANTIALIAS_ON);g.setRenderingHint(RenderingHints.KEY_INTERPOLATION,RenderingHints.VALUE_INTERPOLATION_BILINEAR);}
 public int save(){states.push(g);g=(Graphics2D)g.create();return states.size();}public void restore(){g.dispose();g=states.pop();}public void restoreToCount(int count){while(states.size()>=count)restore();}
 public void scale(float x,float y){g.scale(x,y);}public void translate(float x,float y){g.translate(x,y);}public boolean clipPath(Path p){g.clip(p.value);return true;}
 public boolean clipRect(float l,float t,float r,float b){g.clip(new Rectangle2D.Float(l,t,r-l,b-t));return true;}
 public boolean clipRect(float l,float t,float r,float b,Region.Op op){Area area=new Area(g.getClip());area.subtract(new Area(new Rectangle2D.Float(l,t,r-l,b-t)));g.setClip(area);return true;}
 private void draw(Shape s,Paint p){draws++;g.setPaint(p.shader==null?new java.awt.Color(p.color,true):p.shader.value);g.setStroke(new BasicStroke(Math.max(.01f,p.width),p.cap,p.join));if(p.style==Paint.Style.STROKE)g.draw(s);else g.fill(s);}
 public void drawRect(float l,float t,float r,float b,Paint p){draw(new Rectangle2D.Float(l,t,r-l,b-t),p);}public void drawRect(RectF r,Paint p){drawRect(r.left,r.top,r.right,r.bottom,p);}
 public void drawRoundRect(float l,float t,float r,float b,float rx,float ry,Paint p){draw(new RoundRectangle2D.Float(l,t,r-l,b-t,2*rx,2*ry),p);}
 public void drawPath(Path p,Paint b){draw(p.value,b);}public void drawCircle(float x,float y,float r,Paint p){draw(new Ellipse2D.Float(x-r,y-r,2*r,2*r),p);}
 public void drawLine(float x,float y,float xx,float yy,Paint p){draw(new BasicStroke(Math.max(.01f,p.width),p.cap,p.join).createStrokedShape(new Line2D.Float(x,y,xx,yy)),p);}
 public void drawText(String s,float x,float y,Paint p){texts.add(new TextDraw(s,x,y,p.textSize));draws++;g.setFont(p.font());g.setColor(new java.awt.Color(p.color,true));float dx=p.align==Paint.Align.CENTER?p.measureText(s)/2:p.align==Paint.Align.RIGHT?p.measureText(s):0;g.drawString(s,x-dx,y);}
 public void drawBitmap(Bitmap bitmap,Rect s,RectF d,Paint p){draws++;g.drawImage(bitmap.image,Math.round(d.l),Math.round(d.t),Math.round(d.r),Math.round(d.b),s.l,s.t,s.r,s.b,null);}
}'''
apis['com/shilapi/xcertplay/E01NativeSettings.java']='''package com.shilapi.xcertplay;public class E01NativeSettings{static Object singleton(String n){return null;}static Object call(Object o,String n,Object...args){return Boolean.TRUE;}static boolean musicVisible(android.content.Context c){return c.getSharedPreferences("06link_instrument",0).getBoolean("music_enabled",true);}}'''
apis['com/shilapi/xcertplay/E01ClusterMode.java']='package com.shilapi.xcertplay;public class E01ClusterMode{public static void displayConfigured(String s){}}'
apis['com/shilapi/xcertplay/E01MapOptions.java']='package com.shilapi.xcertplay;public class E01MapOptions{public static boolean fullscreen(){return "full".equals(E01InstrumentStyle.selected());}}'
needed={
 'android/app/Presentation.java','android/app/ActivityThread.java','android/view/Display.java','android/content/Context.java','android/os/Build.java',
 'android/content/SharedPreferences.java','android/content/res/Configuration.java','android/content/res/Resources.java',
 'android/view/View.java','android/view/ViewGroup.java','android/view/ViewParent.java','android/view/SurfaceView.java','android/view/TextureView.java','android/widget/TextView.java','android/widget/FrameLayout.java',
 'android/graphics/Point.java','android/graphics/Canvas.java','android/graphics/Path.java','android/graphics/Paint.java','android/graphics/Shader.java','android/graphics/LinearGradient.java',
 'android/graphics/Bitmap.java','android/graphics/BitmapFactory.java','android/graphics/Rect.java','android/graphics/RectF.java','android/graphics/Typeface.java','android/graphics/Region.java','android/graphics/Color.java','android/graphics/DashPathEffect.java',
 'com/shilapi/xcertplay/E01MapOptions.java','com/shilapi/xcertplay/iap2/wire/Iap2Frame.java','kotlin/Pair.java','com/shilapi/xcertplay/airplay/AirPlayInsets.java','com/shilapi/xcertplay/airplay/AirPlayDisplayConfig.java','com/shilapi/xcertplay/E01NativeSettings.java','com/shilapi/xcertplay/E01ClusterMode.java'}
jdk=find_java()['java_home']
with tempfile.TemporaryDirectory(prefix='06link-mist-') as temporary:
 tmp=Path(temporary);output=args.output.resolve() if args.output else tmp/'rendered';output.mkdir(parents=True,exist_ok=True)
 for name in needed:
  file=tmp/'src'/name;file.parent.mkdir(parents=True,exist_ok=True);file.write_text(apis[name])
 production=[ROOT/'src/e01/com/shilapi/xcertplay'/(n+'.java') for n in ['E01MapCard','E01DisplayConfig','E01MusicCard','E01Artwork','E01InstrumentStyle','E01MistInstrument','E01InstrumentPreview']]
 probes=[HERE/'GeometryProbe.java',HERE/'RendererProbe.java',HERE/'InstallerProbe.java']+[ROOT/'scripts/validation/session_fixes_1_0_29'/(n+'.java') for n in ['MusicCardProbe','ArtworkProbe']]
 compile_result=subprocess.run([str(jdk/'bin/javac'),'--release','8','-d',str(tmp/'classes'),*map(str,sorted((tmp/'src').rglob('*.java'))),*map(str,production+probes)],capture_output=True,text=True)
 assert compile_result.returncode==0,compile_result.stderr
 for name in ['GeometryProbe','RendererProbe','InstallerProbe','MusicCardProbe','ArtworkProbe']:
  target=output if name=='RendererProbe' else output/(name+'.png')
  result=subprocess.run([str(jdk/'bin/java'),'-Djava.awt.headless=true','-cp',str(tmp/'classes'),'com.shilapi.xcertplay.'+name,str(target)],capture_output=True,text=True,timeout=30)
  print(result.stdout,end='');assert result.returncode==0,result.stderr
 if args.output:print('Host-rendered previews:',output)
