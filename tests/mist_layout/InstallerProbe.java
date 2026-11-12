package com.shilapi.xcertplay;
import android.app.Presentation;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.os.Build;
import android.view.*;
import android.widget.*;
import java.lang.reflect.Method;
import java.util.Arrays;
/** Exercises real installation against both Presentation shapes and wrapper variants. */
public final class InstallerProbe {
 static int checks;
 static final Context context=android.app.ActivityThread.application;
 static void ok(boolean pass,String why){checks++;if(!pass)throw new AssertionError(why);}
 static void invoke(View view,String name,Class<?>[] types,Object...args)throws Exception{Method m=view.getClass().getDeclaredMethod(name,types);m.setAccessible(true);m.invoke(view,args);}
 static int[] box(View v){FrameLayout.LayoutParams p=(FrameLayout.LayoutParams)v.getLayoutParams();return new int[]{p.leftMargin,p.topMargin,p.width,p.height};}
 static void style(String value){context.getSharedPreferences("06link_instrument",0).edit().putString("layout",value).putBoolean("music_enabled",true).commit();}
 static View bezel(FrameLayout root){for(int i=0;i<root.getChildCount();i++)if(root.getChildAt(i).getClass().getSimpleName().equals("Bezel"))return root.getChildAt(i);throw new AssertionError("missing bezel");}
 static void exercise(String style,int shape)throws Exception {
  style(style);FrameLayout root=new FrameLayout(context);View renderer=shape==3?new TextureView(context):new SurfaceView(context),content=renderer;
  if(shape==0||shape==2){FrameLayout frame=new FrameLayout(context);if(shape==2){frame.addView(new View(context));FrameLayout nested=new FrameLayout(context);nested.addView(renderer);frame.addView(nested);}else frame.addView(renderer);content=frame;}
  if(shape==2)root.addView(new View(context));
  root.addView(content,new FrameLayout.LayoutParams(-1,-1));
  if(shape==3)root.addView(new View(context)); // Existing TextureView contrast overlay.
  TextView waiting=shape==4?null:new TextView(context);if(waiting!=null)root.addView(waiting,new FrameLayout.LayoutParams(-1,-1));
  int original=root.getChildCount();E01MapCard.install(new Presentation(context,1),root,new Point(1920,720));
  ok(root.getChildCount()==original+2,"decor installed for "+style+" shape "+shape);
  View b=bezel(root);ok(root.getChildAt(original)==b,"bezel above existing content and contrast overlay");
  ok(root.getChildAt(original+1) instanceof E01MusicCard,"music above static bezel");
  if(renderer instanceof SurfaceView){SurfaceView surface=(SurfaceView)renderer;ok(!surface.onTop&&!surface.mediaOverlay,"video cannot bypass bezel z order");}
  if(!style.equals("full")){ok(Arrays.equals(box(content),E01MapCard.boundsFor(1920,720,style)),"unchanged map geometry");if(waiting!=null)ok(Arrays.equals(box(content),box(waiting)),"waiting label shares map bounds");}
  else ok(content.getLayoutParams().width==-1&&content.getLayoutParams().height==-1,"full map layout unmodified");
  invoke(b,"onSizeChanged",new Class<?>[]{int.class,int.class,int.class,int.class},1920,720,0,0);
  Canvas c=new Canvas(1920,720);invoke(b,"onDraw",new Class<?>[]{Canvas.class},c);ok(c.draws>0,"installed bezel actually draws "+style);
  if(!style.equals("full")){ok((c.image.getRGB(10,10)>>>24)>0,"card backdrop visible outside map");ok((c.image.getRGB(960,360)>>>24)==0,"map center remains transparent");}
  Context.Prefs prefs=(Context.Prefs)context.getSharedPreferences("06link_instrument",0);int listeners=prefs.listeners.size();invoke(b,"onAttachedToWindow",new Class<?>[]{});ok(prefs.listeners.size()==listeners+1,"one settings listener");
  E01MapCard.install(new Presentation(context,1),root,new Point(1920,720));ok(root.getChildCount()==original+2,"repeated install cannot stack bezel or music");ok(prefs.listeners.size()==listeners+1,"repeated install cannot duplicate listeners");
  prefs.edit().putBoolean("music_enabled",false).commit();ok(root.getChildAt(original+1).visibility==View.GONE,"full/card/mist music respects same switch");
  invoke(b,"onDetachedFromWindow",new Class<?>[]{});ok(prefs.listeners.size()==listeners,"listener removed on detach");
 }
 public static void main(String[] args)throws Exception {
  Build.VERSION.SDK_INT=22;Build.MODEL="E01";Build.DEVICE="BX11QJ";
  ok(E01MapCard.target(1),"production route recognizes exact E01 display1");ok(!E01MapCard.target(0)&&!E01MapCard.target(2),"device predicate never widens display IDs");
  Build.VERSION.SDK_INT=23;ok(!E01MapCard.target(1),"route does not affect another Android release");Build.VERSION.SDK_INT=22;
  Build.DEVICE="OTHER";ok(!E01MapCard.target(1),"route does not affect another device");Build.DEVICE="BX11QJ";
  Build.MODEL="OTHER";ok(!E01MapCard.target(1),"route does not affect another model");Build.MODEL="E01";
  for(String s:new String[]{"card","mist","full"})for(int shape=0;shape<5;shape++)exercise(s,shape);
  FrameLayout root=new FrameLayout(context);root.addView(new View(context));int n=root.getChildCount();E01MapCard.install(new Presentation(context,1),root,new Point(1920,720));ok(root.getChildCount()==n,"missing renderer left intact");
  root.addView(new SurfaceView(context));n=root.getChildCount();E01MapCard.install(new Presentation(context,0),root,new Point(1920,720));ok(root.getChildCount()==n,"primary display left intact");E01MapCard.install(new Presentation(context,1),root,new Point(0,0));ok(root.getChildCount()==n,"invalid display size left intact");
  Build.MODEL="OTHER";E01MapCard.install(new Presentation(context,1),root,new Point(1920,720));ok(root.getChildCount()==n,"other vehicle left intact");
  System.out.println("PASS "+checks+" Presentation installation/render-order/lifecycle checks; host layout adapter, not vehicle compositor");
 }
}
