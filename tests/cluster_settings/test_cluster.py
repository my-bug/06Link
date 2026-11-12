from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java, resolve
import subprocess,tempfile,json,sys
ROOT=Path(__file__).resolve().parents[2];HERE=Path(__file__).resolve().parent
JDK=find_java()['java_home']/'bin'
def fixture(p):
 e={'__file__':str(p),'__name__':'fixture'}
 body=p.read_text().split('with tempfile.TemporaryDirectory(',1)[0]
 exec(compile(body,str(p),'exec'),e);return e['files']
files=fixture(ROOT/'scripts/validation/cluster_independent_1_1_3/test_independent.py')
files.update(fixture(ROOT/'scripts/validation/critical_cluster_1_0_32/test_intro.py'))
for n in ['StartProbe','IntegrationProbe','E01ClusterIntro']:files.pop('com/shilapi/xcertplay/'+n+'.java',None)
files['android/content/SharedPreferences.java']='''package android.content;import java.util.Map;public interface SharedPreferences{Map<String,?> getAll();String getString(String k,String d);boolean getBoolean(String k,boolean d);Editor edit();void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener l);void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener l);interface OnSharedPreferenceChangeListener{void onSharedPreferenceChanged(SharedPreferences p,String k);}interface Editor{Editor putString(String k,String v);Editor putBoolean(String k,boolean v);Editor remove(String k);boolean commit();void apply();}}'''
files['android/content/Context.java']='''package android.content;import java.util.*;public class Context{
 public static final Map<String,Prefs> stores=new HashMap<String,Prefs>();public static final List<Boolean> albums=new ArrayList<Boolean>();
 public Context getApplicationContext(){return this;}public SharedPreferences getSharedPreferences(String s,int m){Prefs p=stores.get(s);if(p==null){p=new Prefs();stores.put(s,p);}return p;}
 public Intent registerReceiver(BroadcastReceiver r,IntentFilter f){return null;}public void unregisterReceiver(BroadcastReceiver r){}public void sendBroadcast(Intent i){albums.add(i.shown);}public java.io.File getExternalFilesDir(String s){return null;}public java.io.File getFilesDir(){return null;}
 public android.content.res.Resources getResources(){return new android.content.res.Resources();}
 public static class Prefs implements SharedPreferences,SharedPreferences.Editor{
  public final Map<String,Object> values=new HashMap<String,Object>();public final List<OnSharedPreferenceChangeListener> listeners=new ArrayList<OnSharedPreferenceChangeListener>();public boolean fail;public String dirty;
  public Map<String,?> getAll(){return new HashMap<String,Object>(values);}public String getString(String k,String d){Object v=values.get(k);return v instanceof String?(String)v:d;}public boolean getBoolean(String k,boolean d){Object v=values.get(k);return v instanceof Boolean?(Boolean)v:d;}
  public Editor edit(){return this;}public Editor putString(String k,String v){if(!fail)values.put(k,v);dirty=k;return this;}public Editor putBoolean(String k,boolean v){if(!fail)values.put(k,v);dirty=k;return this;}public Editor remove(String k){values.remove(k);dirty=k;return this;}
  public boolean commit(){if(!fail)for(OnSharedPreferenceChangeListener l:new ArrayList<OnSharedPreferenceChangeListener>(listeners))l.onSharedPreferenceChanged(this,dirty);return !fail;}public void apply(){commit();}
  public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener l){listeners.add(l);}public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener l){listeners.remove(l);}
 }}'''
files['android/content/Intent.java']='package android.content;public class Intent{public boolean shown;private final String action;public Intent(String s){action=s;}public String getAction(){return action;}public Intent setPackage(String s){return this;}public Intent putExtra(String s,boolean v){shown=v;return this;}}'
files['android/content/BroadcastReceiver.java']='package android.content;public abstract class BroadcastReceiver{public abstract void onReceive(Context c,Intent i);}'
files['android/content/IntentFilter.java']='package android.content;public class IntentFilter{public void addAction(String action){}}'
files['android/os/SystemClock.java']='package android.os;public class SystemClock{public static long now;public static long elapsedRealtime(){return now;}}'
files['android/os/Handler.java']='''package android.os;import java.util.*;public class Handler{public static final List<Runnable> queue=new ArrayList<Runnable>(),delayed=new ArrayList<Runnable>();public static boolean rejectDeadline;public Handler(Looper l){}public boolean post(Runnable r){queue.add(r);return true;}public boolean postDelayed(Runnable r,long ms){if(rejectDeadline)return false;delayed.add(r);return true;}public void removeCallbacks(Runnable r){queue.remove(r);delayed.remove(r);}public static void drain(){while(!queue.isEmpty())queue.remove(0).run();}public static void expire(){for(Runnable r:new ArrayList<Runnable>(delayed))r.run();delayed.clear();}}'''
files['com/neusoft/alfus/RpcManager.java']='''package com.neusoft.alfus;import java.util.*;public class RpcManager{public static final RpcManager INSTANCE=new RpcManager();public static final List<String> messages=new ArrayList<String>();public static String failKey,hookKey;public static Runnable hook;public static java.util.concurrent.CountDownLatch entered,release;public static RpcManager getInstance(){return INSTANCE;}public boolean sendMessage(int op,byte[] p){String k=Integer.toHexString(op)+":"+(p[0]&255)+":"+(p[1]&255);messages.add(k);if(k.equals(hookKey)&&hook!=null){Runnable h=hook;hook=null;h.run();}return !k.equals(failKey);}}'''
files['com/shilapi/xcertplay/Probe.java']='''package com.shilapi.xcertplay;
import android.app.*;import android.content.*;import android.os.*;import android.widget.*;import android.view.*;import android.animation.*;import java.lang.reflect.*;import java.util.*;import java.util.concurrent.*;import com.neusoft.alfus.RpcManager;
public class Probe {
 static int checks;static final Context c=new Context();static final List<Runnable> pending=new ArrayList<Runnable>();
 static void ok(boolean b,String why){checks++;if(!b)throw new AssertionError(why);}
 static Field field(String n)throws Exception{Field f=E01ClusterMode.class.getDeclaredField(n);f.setAccessible(true);return f;}
 static void set(String n,Object o)throws Exception{field(n).set(null,o);}static Object get(String n)throws Exception{return field(n).get(null);}
 static void tick()throws Exception{set("retryAt",0L);Method m=E01ClusterMode.class.getDeclaredMethod("tick");m.setAccessible(true);try{m.invoke(null);}catch(InvocationTargetException e){throw new AssertionError(e.getCause());}}
 static void ready()throws Exception{set("readyAt",0L);tick();}static int count(String k){int n=0;for(String m:RpcManager.messages)if(m.equals(k))n++;return n;}
 static void projection(boolean v){c.getSharedPreferences("xcertplay_airplay",0).edit().putBoolean("cluster_map_enabled",v).commit();}
 static View install(Presentation p){android.graphics.Point size=new android.graphics.Point();size.x=1920;size.y=720;FrameLayout root=new FrameLayout(c);E01ClusterIntro.install(p,root,size);return root.getChildAt(0);}
 static void draw(View v)throws Exception{Method m=v.getClass().getDeclaredMethod("onDraw",android.graphics.Canvas.class);m.setAccessible(true);m.invoke(v,new android.graphics.Canvas());}
 static void connect(Presentation p)throws Exception{E01ClusterMode.sessionStarted(c);E01ClusterMode.setVisible(p,true);E01ClusterMode.setActive(p,true);tick();ready();Handler.drain();}
 public static void main(String[] args)throws Exception{
  ScheduledThreadPoolExecutor worker=new ScheduledThreadPoolExecutor(1){public void execute(Runnable r){pending.add(r);}};set("worker",worker);set("route",new com.shilapi.xcertplay.hud.BydHudRouteState());
  Presentation p=new Presentation();View v=install(p);E01ClusterMode.initialize(c);connect(p);
  E01ClusterMode.maintainAmapOutput(Integer.MIN_VALUE);
  ok(RpcManager.messages.isEmpty(),"unset default false must suppress all OEM card/map RPC despite live placeholder and stream");
  ok(E01AmapOutput.ensures==0,"disabled must never pause factory navigation");ok(v.visibility==View.GONE&&ValueAnimator.starts==0,"disabled cannot show intro");
  projection(true);E01ClusterMode.setActive(p,true);E01AmapOutput.held=false;tick();
  ok(RpcManager.messages.get(0).equals("76b:15:0")&&RpcManager.messages.get(1).equals("76b:6:1")&&RpcManager.messages.get(2).equals("76c:1:1"),"original map init order kept without waiting on OEM pause service");
  ok(count("75d:74:1")==0,"original settle retained");ready();Handler.drain();
  ok(count("75d:74:1")==1&&v.visibility==View.VISIBLE,"enabled active stream opens once and accepted map starts intro");
  int starts=ValueAnimator.starts;projection(false);Handler.drain();ok(v.visibility==View.GONE,"disable invalidates covering intro immediately");tick();
  ok(count("75d:74:2")==1&&count("76b:15:1")==1&&count("76b:6:0")==1&&count("76c:1:0")==1,"disable closes owned picture and complete OEM navigation card");
  ok(count("76b:14:2")==1&&Context.albums.equals(Arrays.asList(false,true)),"disable includes road clear and restores only owned album hide");
  int n=RpcManager.messages.size();tick();ready();E01ClusterMode.setActive(p,true);tick();ok(RpcManager.messages.size()==n,"disabled stale callbacks/ticks cannot initialize or redundantly close native outputs");
  projection(true);tick();ready();ok(count("75d:74:1")==1,"reenable does not reuse disabled session stream-active state");E01ClusterMode.setActive(p,true);ready();Handler.drain();ok(count("75d:74:1")==2,"fresh stream resumes after reenable");
  projection(false);RpcManager.failKey="76b:6:0";for(int i=0;i<7;i++)tick();int closes=count("75d:74:2"),albumCount=Context.albums.size();
  ok(closes==2&&albumCount==4,"failed card cleanup never recloses already released picture or album");RpcManager.failKey=null;tick();ok(!(Boolean)get("navTouched")&&!(Boolean)get("mapTouched")&&!(Boolean)get("coverHidden"),"owned cleanup recovers even after five failed attempts");
  projection(true);E01ClusterMode.setActive(p,true);RpcManager.hookKey="76b:15:0";RpcManager.hook=new Runnable(){public void run(){projection(false);}};n=RpcManager.messages.size();tick();
  ok(RpcManager.messages.size()==n+1,"disable during first init RPC stops remaining init/content/open commands");tick();
  projection(true);E01ClusterMode.setActive(p,true);tick();RpcManager.hookKey="75d:74:1";RpcManager.hook=new Runnable(){public void run(){projection(false);}};starts=ValueAnimator.starts;ready();Handler.drain();ok(ValueAnimator.starts==starts&&v.visibility==View.GONE,"disable during accepted map open cannot animate stale request");tick();
  projection(true);E01ClusterMode.setActive(p,true);connect(p);Handler.drain();ok(v.visibility==View.VISIBLE,"new current session can animate");
  Handler.expire();ok(v.visibility==View.GONE,"stalled animator releases overlay by independent deadline");
  E01ClusterMode.endNow();tick();connect(p);Handler.drain();ok(v.visibility==View.VISIBLE,"reconnect can animate");SystemClock.now+=5501;draw(v);ok(v.visibility==View.GONE,"draw checks elapsed deadline even if delayed callback has not run");
  E01ClusterMode.endNow();tick();Handler.rejectDeadline=true;connect(p);Handler.drain();ok(v.visibility==View.GONE,"failed timeout enqueue cannot expose a covering view");Handler.rejectDeadline=false;
  E01ClusterMode.endNow();tick();connect(p);Handler.drain();p.showing=false;ValueAnimator.last.step(.5f);ok(v.visibility==View.GONE,"hidden presentation cancels animation on next frame");p.showing=true;
  E01ClusterMode.endNow();tick();connect(p);Handler.drain();E01ClusterMode.endNow();E01ClusterMode.sessionStarted(c);E01ClusterMode.setActive(p,true);Handler.drain();ok(v.visibility==View.GONE,"rapid reconnect cannot preserve old mask");tick();ready();Handler.drain();ok(v.visibility==View.VISIBLE,"rapid reconnect new accepted map may animate");
  E01AmapOutput.block=true;final int prior=E01ClusterMode.maintainAmapOutput(Integer.MIN_VALUE); // block is set below instead
  worker.shutdownNow();System.out.println("{\\"checks_passed\\":"+checks+",\\"scope\\":\\"actual cluster worker and intro; mocked Android/OEM transport, no physical vehicle proof\\"}");
 }
}'''
# Blocked-service race, using the existing fixture's separate transport worker.
files['com/shilapi/xcertplay/Probe.java']=files['com/shilapi/xcertplay/Probe.java'].replace('  E01AmapOutput.block=true;final int prior=E01ClusterMode.maintainAmapOutput(Integer.MIN_VALUE); // block is set below instead','''  E01AmapOutput.block=true;ExecutorService service=Executors.newSingleThreadExecutor();Future<Integer> result=service.submit(()->E01ClusterMode.maintainAmapOutput(Integer.MIN_VALUE));
  ok(E01AmapOutput.entered.await(2,TimeUnit.SECONDS),"service operation can be held independently");int beforeRestore=E01AmapOutput.finishes;projection(false);tick();E01AmapOutput.release.countDown();result.get(2,TimeUnit.SECONDS);ok(E01AmapOutput.finishes>beforeRestore,"disable during in-flight OEM pause restores ownership after completion");service.shutdownNow();''')
files['com/shilapi/xcertplay/E01InstrumentStyle.java']=(ROOT/'src/e01/com/shilapi/xcertplay/E01InstrumentStyle.java').read_text()
files['com/shilapi/xcertplay/E01MapCard.java']='package com.shilapi.xcertplay;public class E01MapCard {public static int[] boundsFor(int w,int h,String style){if("full".equals(style))return new int[]{0,0,w,h};double scale="mist".equals(style)?7.0/12.0:.66;int x=(int)Math.round(w*scale),y=(int)Math.round(h*scale);return new int[]{(w-x)/2,"mist".equals(style)?Math.round(h*174f/720f):(h-y)/2,x,y};}}'
source=ROOT/'src/e01/com/shilapi/xcertplay'
# Compile production source; temporary Android/RPC fixtures remain outside the repository.
with tempfile.TemporaryDirectory(prefix='06link-cluster-regression-') as temp:
 d=Path(temp)
 for n,t in files.items():p=d/n;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(t)
 sources=[source/'E01ClusterMode.java',source/'E01ClusterIntro.java',ROOT/'src/e01/com/shilapi/xcertplay/E01RouteSummary.java',ROOT/'src/e01/com/shilapi/xcertplay/E01TbtPackets.java']
 sources += [source/'E01CardDiagnostic.java',source/'E01LaneDiagnostic.java',source/'E01ClusterPower.java',source/'E01LaneCapability.java']
 r=subprocess.run([str(JDK/'javac'),'--release','8','-d',str(d/'classes'),*map(str,d.rglob('*.java')),*map(str,sources)],text=True,capture_output=True);assert r.returncode==0,r.stderr
 r=subprocess.run([str(JDK/'java'),'-cp',str(d/'classes'),'com.shilapi.xcertplay.Probe'],capture_output=True,text=True,timeout=20)
 print(r.stdout+r.stderr)
 (HERE/'cluster-result.json').write_text(r.stdout+r.stderr)
 if r.returncode:raise SystemExit(r.returncode)
