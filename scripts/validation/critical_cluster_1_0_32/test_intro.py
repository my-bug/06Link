from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3] / 'scripts'))
from test_support import find_java, resolve
import importlib.util,tempfile,subprocess,json
HERE=Path(__file__).resolve().parent;ROOT=Path(__file__).resolve().parents[3]
spec=importlib.util.spec_from_file_location('s',ROOT/'scripts/compile_stubs.py');m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);files=dict(m.STUBS)
files['android/os/Build.java']='package android.os;public class Build{public static String MODEL="E01",DEVICE="BX11QJ";public static class VERSION{public static int SDK_INT=22;}}'
files['android/os/Handler.java']='''package android.os;public class Handler{public static final java.util.ArrayList<Runnable> queue=new java.util.ArrayList<Runnable>();public Handler(Looper l){}public boolean post(Runnable r){queue.add(r);return true;}public boolean postDelayed(Runnable r,long ms){return post(r);}public void removeCallbacks(Runnable r){queue.remove(r);}public static void one(){if(!queue.isEmpty())queue.remove(0).run();}public static void drain(){int n=0;while(!queue.isEmpty()){if(++n>100)throw new AssertionError("unbounded handler loop");one();}}}'''
files['android/content/Context.java']='''package android.content;public class Context{
 public static final Prefs prefs=new Prefs();public Context getApplicationContext(){return this;}
 public SharedPreferences getSharedPreferences(String s,int m){return prefs;}public android.content.res.Resources getResources(){return new android.content.res.Resources();}
 public static class Prefs implements SharedPreferences,SharedPreferences.Editor{
  public java.util.Map<String,Object> values=new java.util.HashMap<String,Object>();public boolean fail;
  public java.util.Map<String,?> getAll(){return new java.util.HashMap<String,Object>(values);}public String getString(String k,String d){Object v=values.get(k);return v instanceof String?(String)v:d;}
  public Editor edit(){return this;}public Editor putString(String k,String v){if(!fail)values.put(k,v);return this;}public Editor putBoolean(String k,boolean v){if(!fail)values.put(k,v);return this;}public Editor remove(String k){values.remove(k);return this;}public boolean commit(){return !fail;}public void apply(){}
 }
}'''
files['android/content/res/Resources.java']='package android.content.res;public class Resources{public android.util.DisplayMetrics getDisplayMetrics(){android.util.DisplayMetrics d=new android.util.DisplayMetrics();d.density=1;return d;}}'
files['android/view/View.java']='''package android.view;public class View{
 public static final int VISIBLE=0,GONE=8;public int visibility,invalidates;public android.content.Context context;public OnClickListener click;
 public View(){context=new android.content.Context();}public View(android.content.Context c){context=c;}public android.content.Context getContext(){return context;}
 public interface OnClickListener{void onClick(View v);}public void setOnClickListener(OnClickListener l){click=l;}
 public void setVisibility(int v){visibility=v;}public void invalidate(){invalidates++;}public int getWidth(){return 1920;}public int getHeight(){return 720;}
 public void setFocusable(boolean b){}public void setClickable(boolean b){}public void setImportantForAccessibility(int i){}public void setPadding(int a,int b,int c,int d){}public void setContentDescription(CharSequence s){}public void setBackgroundColor(int c){}public void setMinimumHeight(int h){}public void setMinimumWidth(int w){}
 protected void onSizeChanged(int a,int b,int c,int d){}protected void onDetachedFromWindow(){}protected void onAttachedToWindow(){}protected void onDraw(android.graphics.Canvas c){}
}'''
files['android/view/ViewGroup.java']='''package android.view;public class ViewGroup extends View{public final java.util.ArrayList<View> children=new java.util.ArrayList<View>();public ViewGroup(){}public ViewGroup(android.content.Context c){super(c);}public void addView(View v,LayoutParams p){children.add(v);}public void addView(View v){children.add(v);}public int getChildCount(){return children.size();}public View getChildAt(int n){return children.get(n);}public static class LayoutParams{public int width,height;public LayoutParams(int w,int h){width=w;height=h;}}public static class MarginLayoutParams extends LayoutParams{public MarginLayoutParams(int w,int h){super(w,h);}}}'''
files['android/widget/FrameLayout.java']='package android.widget;public class FrameLayout extends android.view.ViewGroup{public FrameLayout(android.content.Context c){super(c);}public static class LayoutParams extends android.view.ViewGroup.LayoutParams{public LayoutParams(int w,int h){super(w,h);}}}'
files['android/widget/LinearLayout.java']='''package android.widget;public class LinearLayout extends android.view.ViewGroup{public LinearLayout(android.content.Context c){super(c);}public void setOrientation(int i){}public void setGravity(int g){}public static class LayoutParams extends android.view.ViewGroup.LayoutParams{public LayoutParams(int w,int h){super(w,h);}public LayoutParams(int w,int h,float f){super(w,h);}}}'''
files['android/widget/Toast.java']='package android.widget;public class Toast{public static final int LENGTH_SHORT=0;public static Toast makeText(android.content.Context c,CharSequence s,int length){return new Toast();}public void show(){}}'
files['android/widget/TextView.java']='package android.widget;public class TextView extends android.view.View{public CharSequence text;public TextView(android.content.Context c){super(c);}public void setText(CharSequence s){text=s;}public void setTextSize(float s){}public void setTextColor(int c){}public void setGravity(int g){} }'
files['android/widget/CompoundButton.java']='''package android.widget;public class CompoundButton extends Button{public boolean checked;public OnCheckedChangeListener listener;public CompoundButton(android.content.Context c){super(c);}public interface OnCheckedChangeListener{void onCheckedChanged(CompoundButton b,boolean c);}public void setOnCheckedChangeListener(OnCheckedChangeListener l){listener=l;}public boolean isChecked(){return checked;}public void setChecked(boolean value){if(checked==value)return;checked=value;if(listener!=null)listener.onCheckedChanged(this,value);}}'''
files['android/app/Presentation.java']='package android.app;public class Presentation{public final android.view.Display display=new android.view.Display();public boolean showing=true;public android.view.Display getDisplay(){return display;}public android.content.Context getContext(){return new android.content.Context();}public boolean isShowing(){return showing;}}'
files['android/view/Display.java']='package android.view;public class Display{public int id=1;public int getDisplayId(){return id;}}'
files['android/view/Surface.java']='package android.view;public class Surface{public boolean valid=true;public boolean isValid(){return valid;}}'
files['android/view/Window.java']='package android.view;public class Window{public final View decor=new View();public View getDecorView(){return decor;}}'
files['android/app/Activity.java']='package android.app;public class Activity extends android.content.Context{public boolean finishing;public final android.view.Window window=new android.view.Window();public boolean isFinishing(){return finishing;}public android.view.Window getWindow(){return window;}public void setContentView(android.view.View v){}}'
files['android/graphics/RectF.java']='package android.graphics;public class RectF{public float left,top,right,bottom;public RectF(){}public void set(float l,float t,float r,float b){left=l;top=t;right=r;bottom=b;}}'
files['android/animation/ValueAnimator.java']='''package android.animation;public class ValueAnimator extends Animator{public static ValueAnimator last;public static int starts;public long duration;public float value;public AnimatorUpdateListener update;public AnimatorListener listener;public interface AnimatorUpdateListener{void onAnimationUpdate(ValueAnimator a);}public static ValueAnimator ofFloat(float...v){last=new ValueAnimator();return last;}public ValueAnimator setDuration(long n){duration=n;return this;}public void setInterpolator(TimeInterpolator i){}public void addUpdateListener(AnimatorUpdateListener l){update=l;}public void addListener(AnimatorListener l){listener=l;}public Object getAnimatedValue(){return Float.valueOf(value);}public void start(){starts++;if(listener!=null)listener.onAnimationStart(this);}public void cancel(){if(listener!=null){listener.onAnimationCancel(this);listener.onAnimationEnd(this);}}public void step(float v){value=v;if(update!=null)update.onAnimationUpdate(this);}public void done(){step(1);if(listener!=null)listener.onAnimationEnd(this);}}'''
files['com/shilapi/xcertplay/E01HotspotControl.java']='package com.shilapi.xcertplay;public class E01HotspotControl{public static boolean blocked;public static boolean allowed(){return !blocked;}}'
# Only compile contracts reachable by these helpers, avoiding unrelated stub bodies.
keys=['android/','com/shilapi/xcertplay/Glass.java','com/shilapi/xcertplay/LegacyViewsKt.java','com/shilapi/xcertplay/E01HotspotControl.java']
files={k:v for k,v in files.items() if any(k.startswith(prefix) for prefix in keys)}
files['com/shilapi/xcertplay/IntegrationProbe.java']='''package com.shilapi.xcertplay;
import android.app.*;import android.content.*;import android.os.Handler;import android.widget.*;import android.view.*;import android.animation.ValueAnimator;import java.lang.reflect.*;
public class IntegrationProbe{
 static int checks;static void ok(boolean v,String s){checks++;if(!v)throw new AssertionError(s);}
 static Object field(Object o,String n)throws Exception{Field f=o.getClass().getDeclaredField(n);f.setAccessible(true);return f.get(o);}
 public static class Sink{public int calls,type;public Surface surface;public void setSurface(int type,Surface surface){calls++;this.type=type;this.surface=surface;}}
 public static class Host extends Activity{private boolean inFront=true,menuOpen;private Object controller=new Object();private Sink sink=new Sink();private Surface currentSurface=new Surface();private View videoView=new View();}
 public static void main(String[] args)throws Exception{
  Context c=new Context();android.graphics.Point size=new android.graphics.Point();size.x=1920;size.y=720;
  Presentation p=new Presentation();FrameLayout root=new FrameLayout(c);E01ClusterIntro.install(p,root,size);ok(root.getChildCount()==1,"one isolated overlay installed");View overlay=root.getChildAt(0);ok(overlay.visibility==View.GONE,"not covering before real session");
  E01ClusterIntro.connected();Handler.drain();ok(overlay.visibility==View.VISIBLE&&ValueAnimator.starts==0,"prepare cover without opening or animating channel");
  E01ClusterIntro.opened();Handler.drain();ok(ValueAnimator.starts==1&&ValueAnimator.last.duration==5000,"accepted map open starts five-second intro");
  Class<?> overlayType=overlay.getClass();Method timeline=overlayType.getDeclaredMethod("timeline",float.class);timeline.setAccessible(true);
  float start=((Float)timeline.invoke(null,2820f/5000)).floatValue(),end=((Float)timeline.invoke(null,4760f/5000)).floatValue();
  ok(Math.abs(start-.47f)<.00001&&Math.abs(end-.96f)<.00001,"map unfolding shortened from 2940ms to 1940ms");
  float early=((Float)timeline.invoke(null,2000f/5000)).floatValue();ok(Math.abs(early-2000f/6000)<.00001,"first brand phase preserves original timing");
  float last=-1;for(int i=0;i<=500;i++){float t=((Float)timeline.invoke(null,i/500f)).floatValue();ok(t>=last&&t>=0&&t<=1,"timeline continuous monotone and bounded");last=t;}
  ValueAnimator.last.step(.55f);ok(overlay.invalidates>0,"real animation updates redraw overlay");
  Method draw=overlay.getClass().getDeclaredMethod("onDraw",android.graphics.Canvas.class);draw.setAccessible(true);draw.invoke(overlay,new android.graphics.Canvas());ok(true,"mask drawing has valid target API contracts");
  android.graphics.RectF map=(android.graphics.RectF)field(overlay,"map");ok(map.left==326f&&map.right==1593f&&map.top==122f&&map.bottom==597f,"overlay matches exact existing 66-percent map rounding");
  E01ClusterIntro.connected();E01ClusterIntro.opened();Handler.drain();ok(ValueAnimator.starts==1,"same-session return/repeated open cannot replay intro");
  ValueAnimator.last.done();ok(overlay.visibility==View.GONE,"overlay removed from rendering when finished");
  E01ClusterIntro.ended();Handler.drain();E01ClusterIntro.connected();E01ClusterIntro.opened();E01ClusterIntro.ended();Handler.drain();ok(ValueAnimator.starts==1&&overlay.visibility==View.GONE,"disconnect invalidates queued intro");
  LinearLayout settings=new LinearLayout(c);E01ClusterIntro.addSettings(c,settings);LinearLayout row=(LinearLayout)settings.getChildAt(0);Switch toggle=(Switch)row.getChildAt(2);ok(toggle.isChecked(),"native setting defaults enabled");
  E01ClusterIntro.connected();E01ClusterIntro.opened();Handler.drain();int starts=ValueAnimator.starts;ok(overlay.visibility==View.VISIBLE,"new real session can animate");
  toggle.setChecked(false);ok(Boolean.FALSE.equals(Context.prefs.values.get("transition_enabled"))&&overlay.visibility==View.GONE,"off persists and immediately cancels running intro");
  E01ClusterIntro.ended();Handler.drain();E01ClusterIntro.connected();E01ClusterIntro.opened();Handler.drain();ok(ValueAnimator.starts==starts&&overlay.visibility==View.GONE,"disabled connection reveals real video without intro");
  toggle.setChecked(true);ok(ValueAnimator.starts==starts,"enabling setting alone does not start animation");
  E01ClusterIntro.ended();Handler.drain();E01ClusterIntro.connected();E01ClusterIntro.opened();Handler.drain();ok(ValueAnimator.starts==starts+1,"enabled next session animates");
  Context.prefs.fail=true;toggle.setChecked(false);ok(toggle.isChecked(),"failed save restores toggle");Context.prefs.fail=false;
  E01ClusterIntro.stopped(p);Handler.drain();ok(overlay.visibility==View.GONE,"presentation stop removes mask");
  E01ClusterIntro.ended();Handler.drain();Context.prefs.values.put("layout","full");Presentation full=new Presentation();FrameLayout fullRoot=new FrameLayout(c);E01ClusterIntro.install(full,fullRoot,size);View fullOverlay=fullRoot.getChildAt(0);android.graphics.RectF fm=(android.graphics.RectF)field(fullOverlay,"map");ok(fm.left==0&&fm.right==1920&&fm.top==0&&fm.bottom==720,"full-map layout supported without changing stream size");
  Presentation wrong=new Presentation();wrong.display.id=0;FrameLayout untouched=new FrameLayout(c);E01ClusterIntro.install(wrong,untouched,size);ok(untouched.getChildCount()==0,"main screen never receives instrument animation");
  android.os.Build.VERSION.SDK_INT=33;Presentation other=new Presentation();E01ClusterIntro.install(other,untouched,size);ok(untouched.getChildCount()==0,"other platforms are not instrument targets");android.os.Build.VERSION.SDK_INT=22;
  Host h=new Host();E01VideoResume.resume(h);E01VideoResume.resume(h);ok(Handler.queue.size()==1,"duplicate lifecycle return coalesces");Handler.drain();ok(h.sink.calls==1&&h.sink.type==110&&h.sink.surface==h.currentSurface,"return rebinds only real main video surface");ok(h.videoView.invalidates==1&&h.window.decor.invalidates==1,"return schedules TextureView and window redraw");
  E01VideoResume.resume(h);E01VideoResume.paused(h);Handler.drain();ok(h.sink.calls==1,"leaving cancels queued return work");
  h.menuOpen=true;E01VideoResume.resume(h);Handler.drain();ok(h.sink.calls==1,"menu-visible state cannot rebind video");h.menuOpen=false;
  h.inFront=false;E01VideoResume.resume(h);Handler.drain();ok(h.sink.calls==1,"background host cannot rebind video");h.inFront=true;
  h.finishing=true;E01VideoResume.resume(h);Handler.drain();ok(h.sink.calls==1,"finishing host ignored");h.finishing=false;
  E01HotspotControl.blocked=true;E01VideoResume.resume(h);Handler.drain();ok(h.sink.calls==1,"manual stop remains authoritative");E01HotspotControl.blocked=false;
  h.currentSurface.valid=false;E01VideoResume.resume(h);Handler.drain();ok(h.sink.calls==1&&Handler.queue.isEmpty(),"invalid surface retries are bounded");
  E01VideoResume.resume(h);Handler.one();h.currentSurface.valid=true;Handler.drain();ok(h.sink.calls==2,"surface arriving after resume is recovered without touch");
  h.sink=null;E01VideoResume.resume(h);Handler.drain();ok(Handler.queue.isEmpty(),"missing sink does not loop forever");
  System.out.println("{\\"checks_passed\\":"+checks+",\\"scope\\":\\"actual intro/lifecycle/settings/resume helpers with deterministic Android/animator/handler fixtures; no real phone or instrument output\\"}");
 }
}'''
with tempfile.TemporaryDirectory(prefix='06link-intro-') as d:
 p=Path(d)
 for name,text in files.items():q=p/name;q.parent.mkdir(parents=True,exist_ok=True);q.write_text(text)
 helpers=[ROOT/'src/e01/com/shilapi/xcertplay'/n for n in ['E01ClusterIntro.java','E01VideoResume.java']]
 jdk=find_java()['java_home']/'bin'
 result=subprocess.run([str(jdk/'javac'),'--release','8','-d',str(p/'classes'),*map(str,p.rglob('*.java')),*map(str,helpers)],capture_output=True,text=True)
 if result.returncode:print(result.stderr);raise SystemExit(result.returncode)
 result=subprocess.run([str(jdk/'java'),'-cp',str(p/'classes'),'com.shilapi.xcertplay.IntegrationProbe'],capture_output=True,text=True,timeout=15);print(result.stdout+result.stderr)
 if result.returncode:raise SystemExit(result.returncode)
 (HERE/'integration-result.json').write_text(result.stdout)
