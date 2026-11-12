"""Exercise the real intro with deterministic Android timing and recorded Canvas clips.

Geometry methods are extracted from E01MapCard to avoid unrelated media fixtures;
production E01InstrumentStyle and E01ClusterIntro compile unchanged.
"""
from pathlib import Path
import os
import subprocess
import tempfile

ROOT = Path(os.environ.get('LINK_TEST_ROOT', str(Path(__file__).resolve().parents[2])))
SOURCE = ROOT / 'src/e01/com/shilapi/xcertplay'
fixture = ROOT / 'tests/cluster_settings/test_cluster.py'
env = {'__file__': str(fixture), '__name__': 'fixture'}
exec(compile(fixture.read_text().split("source=ROOT/'src/e01/com/shilapi/xcertplay'", 1)[0], str(fixture), 'exec'), env)
files, JDK = env['files'], env['JDK']
files.pop('com/shilapi/xcertplay/Probe.java', None)
files.pop('com/shilapi/xcertplay/E01InstrumentStyle.java', None)
files['com/shilapi/xcertplay/E01ClusterMode.java'] = '''package com.shilapi.xcertplay;
public class E01ClusterMode { public static boolean allowed=true; public static boolean projectionAllowed(android.content.Context c){return allowed;} }
'''
# Use the exact production geometry source, not a duplicate formula in the fixture.
map_source = (SOURCE / 'E01MapCard.java').read_text()
def method(signature):
    start = map_source.index(signature)
    opening = map_source.index('{', start)
    level = 1
    i = opening + 1
    while level:
        level += (map_source[i] == '{') - (map_source[i] == '}')
        i += 1
    return map_source[start:i]
files['com/shilapi/xcertplay/E01MapCard.java'] = 'package com.shilapi.xcertplay;public class E01MapCard{' + method('static double scaleFor(') + method('public static int[] boundsFor(') + '}'
files['android/os/Handler.java'] = files['android/os/Handler.java'].replace('public static boolean rejectDeadline;', 'public static boolean rejectDeadline;public static long lastDelay;').replace('if(rejectDeadline)return false;', 'lastDelay=ms;if(rejectDeadline)return false;')
files['android/graphics/Path.java'] = r'''package android.graphics;
import java.awt.geom.*;
public class Path {
 public static int allocations;public Path2D.Float shape=new Path2D.Float();public float radius;
 public enum FillType{WINDING,EVEN_ODD,INVERSE_WINDING,INVERSE_EVEN_ODD}public enum Direction{CW,CCW}
 public Path(){allocations++;}public void reset(){shape.reset();}public void setFillType(FillType t){shape.setWindingRule(t==FillType.EVEN_ODD?Path2D.WIND_EVEN_ODD:Path2D.WIND_NON_ZERO);}
 public void addRect(float l,float t,float r,float b,Direction d){shape.append(new Rectangle2D.Float(l,t,r-l,b-t),false);}public void addPath(Path p){shape.append(p.shape,false);}
 public void moveTo(float x,float y){shape.moveTo(x,y);}public void lineTo(float x,float y){shape.lineTo(x,y);}public void cubicTo(float a,float b,float c,float d,float e,float f){shape.curveTo(a,b,c,d,e,f);}public void close(){shape.closePath();}
 public void addRoundRect(float l,float t,float r,float b,float rx,float ry,Direction d){radius=rx;shape.append(new RoundRectangle2D.Float(l,t,r-l,b-t,rx*2,ry*2),false);}
 public void addRoundRect(RectF r,float x,float y,Direction d){addRoundRect(r.left,r.top,r.right,r.bottom,x,y,d);}
}'''
files['android/graphics/Paint.java'] = r'''package android.graphics;
public class Paint {
 public static int allocations;public int color,alpha=255;public float strokeWidth=1,textSize;public Shader shader;public Style style=Style.FILL;
 public enum Style{FILL,STROKE,FILL_AND_STROKE}public enum Align{LEFT,CENTER,RIGHT}public enum Cap{BUTT,ROUND,SQUARE}
 public Paint(int f){allocations++;}public void setStyle(Style s){style=s;}public void setColor(int c){color=c;alpha=c>>>24;}public void setStrokeWidth(float w){strokeWidth=w;}
 public Shader setShader(Shader s){Shader old=shader;shader=s;return old;}public void setTextAlign(Align a){}public void setTextSize(float s){textSize=s;}public Typeface setTypeface(Typeface t){return null;}
 public float measureText(String s){return s.length()*textSize/2;}public int breakText(String s,boolean f,float w,float[] m){return s.length();}public void setStrokeCap(Cap c){}public void setAlpha(int a){alpha=a;}public void setTextScaleX(float x){}
}'''
files['android/graphics/Canvas.java'] = r'''package android.graphics;
import java.awt.Shape;import java.awt.BasicStroke;import java.awt.geom.*;import java.util.*;
public class Canvas {
 static class State {Area clip=new Area(new Rectangle2D.Float(0,0,1920,720));AffineTransform matrix=new AffineTransform();int alpha=255;State copy(){State s=new State();s.clip=new Area(clip);s.matrix=new AffineTransform(matrix);s.alpha=alpha;return s;}}
 State state=new State();List<State> stack=new ArrayList<State>();public final Area painted=new Area();public final List<String> texts=new ArrayList<String>();public final List<Integer> colors=new ArrayList<Integer>();
 public int save(){stack.add(state.copy());return stack.size();}public void restore(){state=stack.remove(stack.size()-1);}public void restoreToCount(int n){while(stack.size()>=n)restore();}
 public int saveLayerAlpha(float l,float t,float r,float b,int a,int flags){int n=save();state.alpha=state.alpha*a/255;return n;}
 public void scale(float x,float y){state.matrix.scale(x,y);}public void translate(float x,float y){state.matrix.translate(x,y);}public boolean clipPath(Path p){state.clip.intersect(new Area(state.matrix.createTransformedShape(p.shape)));return !state.clip.isEmpty();}
 void paint(Shape s,Paint p){if(p.alpha<=0||state.alpha<=0)return;Area a=new Area(state.matrix.createTransformedShape(s));a.intersect(state.clip);painted.add(a);if(!a.isEmpty())colors.add(p.color);}
 public void drawPath(Path path,Paint p){paint(p.style==Paint.Style.STROKE?new BasicStroke(Math.max(.01f,p.strokeWidth)).createStrokedShape(path.shape):path.shape,p);}
 public void drawRect(float l,float t,float r,float b,Paint p){paint(new Rectangle2D.Float(l,t,r-l,b-t),p);}public void drawRect(RectF r,Paint p){drawRect(r.left,r.top,r.right,r.bottom,p);}
 public void drawLine(float x,float y,float xx,float yy,Paint p){paint(new BasicStroke(Math.max(.01f,p.strokeWidth)).createStrokedShape(new Line2D.Float(x,y,xx,yy)),p);}
 public void drawCircle(float x,float y,float radius,Paint p){paint(new Ellipse2D.Float(x-radius,y-radius,radius*2,radius*2),p);}
 public void drawText(String s,float x,float y,Paint p){texts.add(s);paint(new Rectangle2D.Float(x-p.measureText(s)/2,y-p.textSize,p.measureText(s),p.textSize),p);}
 public void drawBitmap(Bitmap b,Rect r,RectF f,Paint p){}
 public boolean inside(Shape limit){Area leaked=new Area(painted);leaked.subtract(new Area(limit));return leaked.isEmpty();}
}'''
files['com/shilapi/xcertplay/MistIntroProbe.java'] = r'''package com.shilapi.xcertplay;
import android.app.*;import android.content.*;import android.graphics.*;import android.os.*;import android.view.*;import android.widget.*;import android.animation.*;import java.lang.reflect.*;import java.util.*;
public class MistIntroProbe {
 static int checks;static Context c=new Context();static Presentation p;static View v;static SharedPreferences prefs=c.getSharedPreferences("06link_instrument",0);
 static void ok(boolean b,String message){checks++;if(!b)throw new AssertionError(message);}
 static Object field(Object o,String n)throws Exception{Field f=o.getClass().getDeclaredField(n);f.setAccessible(true);return f.get(o);}
 static void call(String method)throws Exception{Method m=v.getClass().getDeclaredMethod(method);m.setAccessible(true);m.invoke(v);}
 static Canvas draw()throws Exception{Canvas c=new Canvas();Method m=v.getClass().getDeclaredMethod("onDraw",Canvas.class);m.setAccessible(true);m.invoke(v,c);return c;}
 static void install(String style)throws Exception{E01ClusterIntro.ended();Handler.drain();Field f=E01ClusterIntro.class.getDeclaredField("views");f.setAccessible(true);((Map)f.get(null)).clear();prefs.edit().putString("layout",style).putBoolean("transition_enabled",true).commit();p=new Presentation();FrameLayout root=new FrameLayout(c);Point s=new Point();s.x=1920;s.y=720;E01ClusterIntro.install(p,root,s);v=root.getChildAt(0);}
 static void newSession(){E01ClusterIntro.ended();Handler.drain();E01ClusterIntro.connected();E01ClusterIntro.opened();Handler.drain();}
 static void hidden(String why){ok(v.visibility==View.GONE&&Handler.delayed.isEmpty(),why);}
 static void visible(String why){ok(v.visibility==View.VISIBLE,why);}
 public static void main(String[] args)throws Exception{
  install("card");RectF card=(RectF)field(v,"map");ok(card.left==326&&card.top==122&&card.right==1593&&card.bottom==597,"existing card bounds remain exact");ok(((Path)field(v,"mapPath")).radius==40,"card corner preserved");newSession();ok(draw().painted.contains(20,20),"card legacy full backdrop preserved");
  install("full");RectF full=(RectF)field(v,"map");ok(full.left==0&&full.top==0&&full.right==1920&&full.bottom==720,"full bounds preserved");ok(((Path)field(v,"mapPath")).radius==0,"full corner preserved");
  install("mist");RectF map=(RectF)field(v,"map");Path path=(Path)field(v,"mapPath");ok(map.left==400&&map.top==174&&map.right==1520&&map.bottom==594,"mist shares the 1120 by 420 map rectangle");ok(path.radius==28,"mist corner matches final bezel");
  Method geometry=v.getClass().getDeclaredMethod("geometry",int.class,int.class);geometry.setAccessible(true);geometry.invoke(v,960,360);ok(map.left==400&&map.top==174&&map.right==1520&&map.bottom==594,"half-resolution geometry transforms back to design coordinates");geometry.invoke(v,1920,720);
  E01ClusterIntro.connected();Handler.drain();ok(v.visibility==View.GONE,"connection alone never covers the instrument");E01ClusterIntro.opened();Handler.drain();visible("only accepted map open starts intro");ok(ValueAnimator.last.duration==5000&&Handler.lastDelay==5500,"five second animation and independent 5.5 second deadline retained");
  int paths=Path.allocations,paints=Paint.allocations;ValueAnimator running=ValueAnimator.last;int starts=ValueAnimator.starts;
  Canvas initial=draw();ok(initial.colors.get(0)==0xff63879c&&initial.painted.contains(960,384),"mist begins with fixed blue map-only cover");
  boolean brands=false;
  for(int i=0;i<500;i++){running.step(i/500f);Canvas frame=draw();ok(frame.inside(path.shape),"every mist frame stays inside rounded map, preserving OEM card/status/warnings");if(frame.texts.contains("LYNK & CO")&&frame.texts.contains("CarPlay"))brands=true;}
  ok(brands,"confirmed LYNK & CO and CarPlay intro retained");ok(Path.allocations==paths&&Paint.allocations==paints,"frame drawing allocates no paths or paints");running.step(.8f);ok(!draw().painted.contains(960,384),"opening actually uncovers the real map");
  E01ClusterIntro.connected();E01ClusterIntro.opened();Handler.drain();ok(ValueAnimator.starts==starts,"repeated connection/open does not replay within same session");running.done();hidden("normal completion removes cover and deadline");
  newSession();running=ValueAnimator.last;running.cancel();hidden("external animator cancel removes mask");running.step(.2f);hidden("stale cancelled update cannot resurrect mask");
  newSession();Handler.expire();hidden("stalled animator releases cover without any decoder or first-frame signal");
  newSession();SystemClock.now+=5500;draw();hidden("draw deadline removes mask when delayed callback has not run");
  Handler.rejectDeadline=true;newSession();hidden("deadline enqueue failure never shows cover");Handler.rejectDeadline=false;
  newSession();Runnable stale=(Runnable)field(v,"deadline");ValueAnimator staleAnimator=ValueAnimator.last;newSession();visible("fresh real reconnect may animate");stale.run();staleAnimator.done();visible("prior deadline and callback cannot cancel new session");
  E01ClusterIntro.ended();E01ClusterIntro.connected();E01ClusterIntro.opened();E01ClusterIntro.ended();Handler.drain();hidden("disconnect invalidates queued open");
  newSession();E01ClusterIntro.stopped(p);Handler.drain();hidden("presentation stop clears cover");
  newSession();p.showing=false;ValueAnimator.last.step(.4f);hidden("hidden instrument window removes cover");p.showing=true;
  call("onAttachedToWindow");newSession();prefs.edit().putBoolean("transition_enabled",false).commit();Handler.drain();hidden("external preference change cancels attached intro");starts=ValueAnimator.starts;prefs.edit().putBoolean("transition_enabled",true).commit();Handler.drain();ok(ValueAnimator.starts==starts,"enabling preference alone does not start intro");
  LinearLayout settings=new LinearLayout(c);E01ClusterIntro.addSettings(c,settings);Switch toggle=(Switch)((LinearLayout)settings.getChildAt(0)).getChildAt(2);newSession();toggle.setChecked(false);hidden("settings switch cancels immediately");newSession();hidden("disabled animation cannot start on reconnect");toggle.setChecked(true);newSession();visible("next enabled session can animate");
  ((Context.Prefs)prefs).fail=true;toggle.setChecked(false);ok(toggle.isChecked()&&v.visibility==View.VISIBLE,"failed preference save restores switch without cancelling valid intro");((Context.Prefs)prefs).fail=false;
  call("onDetachedFromWindow");hidden("detach removes all cover and timing work");
  newSession();E01ClusterMode.allowed=false;ValueAnimator.last.step(.5f);hidden("projection gate closes any active intro");E01ClusterMode.allowed=true;
  newSession();E01ClusterIntro.ended();Handler.drain();hidden("power-off/session-end hook cannot retain a mask");E01ClusterIntro.opened();Handler.drain();hidden("power recovery alone cannot animate without connected-session hook");
  newSession();visible("new post-recovery session may play");ValueAnimator.last.done();hidden("post-recovery completion is clean");
  System.out.println("PASS "+checks+" mist intro geometry, Canvas clipping, asset reuse and cancellation/deadline assertions; Android fixtures, no physical-device proof");
 }
}'''
with tempfile.TemporaryDirectory(prefix='06link-mist-intro-') as temp:
    d = Path(temp)
    for name, text in files.items():
        output = d / name
        output.parent.mkdir(parents=True, exist_ok=True)
        output.write_text(text)
    sources = [SOURCE / 'E01InstrumentStyle.java', Path(os.environ.get('LINK_INTRO_SOURCE', str(SOURCE / 'E01ClusterIntro.java')))]
    result = subprocess.run([str(JDK / 'javac'), '--release', '8', '-d', str(d / 'classes'), *map(str, d.rglob('*.java')), *map(str, sources)], text=True, capture_output=True)
    assert result.returncode == 0, result.stderr
    result = subprocess.run([str(JDK / 'java'), '-Djava.awt.headless=true', '-cp', str(d / 'classes'), 'com.shilapi.xcertplay.MistIntroProbe'], capture_output=True, text=True, timeout=20)
    print(result.stdout + result.stderr)
    raise SystemExit(result.returncode)
