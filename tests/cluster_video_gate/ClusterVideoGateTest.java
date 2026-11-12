package com.shilapi.xcertplay;
import android.content.*;
import android.os.Build;
import java.util.*;
import java.lang.reflect.*;
import java.lang.ref.WeakReference;
public final class ClusterVideoGateTest {
 static int checks;
 static void check(boolean value,String message){checks++;if(!value)throw new AssertionError(message);}
 static final class Prefs implements SharedPreferences {
  Boolean enabled=true;int reads,registers,unregisters;boolean failRead,failRegister,disableDuringRegister;
  final Set<OnSharedPreferenceChangeListener> listeners=new HashSet<OnSharedPreferenceChangeListener>();
  public boolean getBoolean(String key,boolean fallback){check("cluster_map_enabled".equals(key),"correct preference key");reads++;if(failRead)throw new IllegalStateException();return enabled==null?fallback:enabled;}
  public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener l){registers++;if(failRegister)throw new IllegalStateException();listeners.add(l);if(disableDuringRegister)enabled=false;}
  public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener l){unregisters++;listeners.remove(l);}
  void notifyKey(String key){for(OnSharedPreferenceChangeListener l:new ArrayList<OnSharedPreferenceChangeListener>(listeners))l.onSharedPreferenceChanged(this,key);}
  void set(boolean value){enabled=value;notifyKey("cluster_map_enabled");}
 }
 static final class Ctx extends Context {
  final Prefs prefs;Context app;int prefsReads;boolean fail;
  Ctx(Prefs prefs){this.prefs=prefs;app=this;}
  public Context getApplicationContext(){return app;}
  public SharedPreferences getSharedPreferences(String name,int mode){prefsReads++;check("xcertplay_airplay".equals(name)&&mode==0,"correct private preference file");if(fail)throw new IllegalStateException();return prefs;}
 }
 static Prefs prefs=new Prefs();static Ctx context=new Ctx(prefs);static Object sink=new Object();
 static void bind(){E01ClusterVideoGate.bind(sink,context);}
 static boolean drop(){return E01ClusterVideoGate.drop(sink,111);}
 static void enabled(){bind();int reads=prefs.reads,ctx=context.prefsReads;for(int i=0;i<100000;i++)check(!drop(),"enabled frames pass");check(reads==prefs.reads&&ctx==context.prefsReads,"no per-frame preference or context reads");prefs.failRead=true;check(!drop(),"temporary read failure cannot affect cached frames");}
 static void disabled(){prefs.enabled=false;bind();check(drop(),"explicit disabled switch discards substream");check(!E01ClusterVideoGate.drop(sink,110),"main stream still passes");check(!E01ClusterVideoGate.drop(new Object(),111),"unbound stream fails open");}
 static void toggle(){bind();check(!drop(),"initially enabled");prefs.set(false);check(drop(),"disable blocks current session immediately");prefs.set(true);check(drop(),"enable waits for reconnect, never resumes old prediction frames");}
 static void types(){prefs.enabled=false;bind();for(int type=-10;type<260;type++)check(E01ClusterVideoGate.drop(sink,type)==(type==111),"only screen 111 is filtered");E01ClusterVideoGate.close(sink);check(!E01ClusterVideoGate.drop(sink,110),"close never gates primary screen");}
 static void reconnect(){bind();prefs.set(false);prefs.set(true);Object next=new Object();E01ClusterVideoGate.bind(next,context);check(!E01ClusterVideoGate.drop(next,111),"new connected sink resumes enabled projection");check(drop(),"old sink still blocked");E01ClusterVideoGate.close(sink);check(drop()&&!E01ClusterVideoGate.drop(next,111),"old close and late frames cannot close new session");}
 static void duplicate(){bind();prefs.set(false);prefs.set(true);int reads=prefs.reads;bind();check(drop()&&reads==prefs.reads,"duplicate binding cannot release latched disabled session");check(prefs.registers==1,"one listener per preference file");}
 static void clear(){bind();prefs.enabled=null;prefs.notifyKey(null);check(drop(),"clear uses same false default as application");}
 static void irrelevant(){bind();int reads=prefs.reads;prefs.enabled=false;prefs.notifyKey("cluster_style");check(!drop()&&reads==prefs.reads,"style changes do not query or close projection");}
 static void unsupported(){Build.MODEL="OTHER";bind();Build.MODEL="E01";Build.DEVICE="OTHER";bind();Build.DEVICE="BX11QJ";Build.VERSION.SDK_INT=23;bind();check(prefs.reads==0&&context.prefsReads==0&&!drop(),"all unsupported devices remain untouched");}
 static void nulls(){E01ClusterVideoGate.bind(null,context);E01ClusterVideoGate.bind(sink,null);check(!drop()&&!E01ClusterVideoGate.drop(null,111),"missing binding fails open");check(prefs.registers==0,"no registration without context");}
 static void faults(){context.fail=true;bind();check(!drop(),"failed preference lookup fails open");context.fail=false;prefs.failRegister=true;bind();check(!drop(),"failed listener registration fails open");prefs.failRegister=false;prefs.failRead=true;bind();check(!drop()&&prefs.listeners.isEmpty(),"failed initial read cleans unused listener and fails open");prefs.failRead=false;bind();prefs.failRead=true;prefs.notifyKey("cluster_map_enabled");check(!drop(),"failed callback cannot fabricate disable");prefs.failRead=false;prefs.set(false);check(drop(),"later real disable still succeeds");prefs.failRead=true;prefs.notifyKey("cluster_map_enabled");check(drop(),"failed callback does not undo known disable");}
 static void weakOwnership()throws Exception{bind();Field f=E01ClusterVideoGate.class.getDeclaredField("latest");f.setAccessible(true);Object state=f.get(null);Field owner=state.getClass().getDeclaredField("owner");owner.setAccessible(true);check(owner.get(state) instanceof WeakReference,"hot-path ownership is weak");check(((WeakReference)owner.get(state)).get()==sink,"weak owner identifies current sink");for(Field field:state.getClass().getDeclaredFields())check(field.getType().isPrimitive()||field.getType()==WeakReference.class,"state cannot retain a Context, Surface, decoder or sink");Field map=E01ClusterVideoGate.class.getDeclaredField("states");map.setAccessible(true);check(map.get(null) instanceof WeakHashMap,"secondary sessions have weak keys");}
 static void race(){prefs.disableDuringRegister=true;bind();check(drop(),"initial read after listener registration observes concurrent disable");}
 static void context(){Ctx activity=new Ctx(new Prefs());activity.app=context;E01ClusterVideoGate.bind(sink,activity);check(activity.prefsReads==0&&context.prefsReads==1,"uses application preferences, not activity");Object second=new Object();Ctx nullApp=new Ctx(prefs);nullApp.app=null;E01ClusterVideoGate.bind(second,nullApp);check(!E01ClusterVideoGate.drop(second,111),"already-application context fallback works");}
 static void closeListener(){bind();Object second=new Object();E01ClusterVideoGate.bind(second,context);check(prefs.listeners.size()==1&&prefs.registers==1,"two live sinks share one listener");E01ClusterVideoGate.close(sink);check(prefs.listeners.size()==1,"older sink close retains active session listener");E01ClusterVideoGate.close(second);check(prefs.listeners.isEmpty()&&prefs.unregisters==1,"final close unregisters listener");check(drop()&&E01ClusterVideoGate.drop(second,111),"late substream frames stay closed without preferences");Object third=new Object();E01ClusterVideoGate.bind(third,context);check(prefs.listeners.size()==1&&prefs.registers==2&&!E01ClusterVideoGate.drop(third,111),"new session re-registers and reads enabled value");E01ClusterVideoGate.close(second);check(prefs.listeners.size()==1,"duplicate old close never unregisters current listener");}
 static void parallel()throws Exception{bind();final boolean[] failed={false};Thread frames=new Thread(new Runnable(){public void run(){for(int i=0;i<200000;i++)if(E01ClusterVideoGate.drop(sink,110))failed[0]=true;}});frames.start();prefs.set(false);frames.join();check(!failed[0]&&drop(),"UI disable publishes state without interfering with concurrent main frames");}
 public static void main(String[] args)throws Exception{Method method=ClusterVideoGateTest.class.getDeclaredMethod(args[0]);method.invoke(null);System.out.println("PASS "+args[0]+" ("+checks+" assertions)");}
}
