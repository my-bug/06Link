from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java, resolve
import subprocess,tempfile,sys
ROOT=Path(__file__).resolve().parents[2];HERE=Path(__file__).resolve().parent;JDK=find_java()['java_home']/'bin'
source=Path(sys.argv[1]) if len(sys.argv)>1 else ROOT/'src/e01/com/shilapi/xcertplay/E01ClusterMode.java'
s=source.read_text();method=s[s.index('    static int maintainAmapOutput('):s.index('    private static void tick()')]
java='''package com.shilapi.xcertplay;
import java.util.*;import android.content.Context;
public class LifecycleProbe{
static final Object lock=new Object();static Context context=new Context();static int generation;static boolean connected,projectionEnabled;static final Map<Object,Boolean> visible=new HashMap<>();static final Output amapOutput=new Output();static void refreshProjectionLocked(){}static int checks;
static class Output{boolean held;boolean restoreOk=true;int pauses,restores;Runnable after;boolean ensure(Context c){if(!held){held=true;pauses++;}if(after!=null){Runnable r=after;after=null;r.run();}return true;}boolean finish(Context c){if(held){restores++;if(!restoreOk)return false;held=false;}return true;}}
'''+method+'''
static void ck(boolean v,String why){checks++;if(!v)throw new AssertionError(why+" pause="+amapOutput.pauses+" restore="+amapOutput.restores);}public static void main(String[]args){
int prev=Integer.MIN_VALUE;Object window=new Object();connected=true;projectionEnabled=true;visible.put(window,true);prev=maintainAmapOutput(prev);ck(amapOutput.pauses==1&&amapOutput.restores==0,"initial pause");
generation++;prev=maintainAmapOutput(prev);ck(amapOutput.pauses==1&&amapOutput.restores==0,"render generation cannot restore competing publisher");
visible.clear();generation++;prev=maintainAmapOutput(prev);ck(amapOutput.held&&amapOutput.restores==0,"window gap does not release pause");visible.put(new Object(),true);prev=maintainAmapOutput(prev);ck(amapOutput.pauses==1,"new presentation does not repause");
amapOutput.after=()->{visible.clear();generation++;};prev=maintainAmapOutput(prev);ck(amapOutput.restores==0,"window loss during async ensure is not Stop");
projectionEnabled=false;generation++;prev=maintainAmapOutput(prev);ck(!amapOutput.held&&amapOutput.restores==1,"disable restores once");prev=maintainAmapOutput(prev);ck(amapOutput.restores==1,"disabled idle is no-op");
projectionEnabled=true;generation++;prev=maintainAmapOutput(prev);ck(amapOutput.held&&amapOutput.pauses==2,"enabled current session may pause before surface appears");
amapOutput.after=()->{connected=false;generation++;};prev=maintainAmapOutput(prev);ck(!amapOutput.held&&amapOutput.restores==2,"actual stop during ensure restores");
connected=true;generation++;prev=maintainAmapOutput(prev);ck(amapOutput.held&&amapOutput.pauses==3,"new session pauses");connected=false;generation++;amapOutput.restoreOk=false;int old=prev;prev=maintainAmapOutput(prev);ck(amapOutput.held&&prev==old,"failed restore keeps obligation and previous token");amapOutput.restoreOk=true;prev=maintainAmapOutput(prev);ck(!amapOutput.held&&prev==generation,"restore recovery completes");
context=null;ck(maintainAmapOutput(123)==123,"missing context no-op");
System.out.println("PASS "+checks+" extracted actual maintainAmapOutput lifecycle checks");}}
'''
with tempfile.TemporaryDirectory(prefix='nav-lifecycle-') as d:
 p=Path(d);(p/'Context.java').write_text('package android.content;public class Context{}');(p/'LifecycleProbe.java').write_text(java)
 subprocess.run([str(JDK/'javac'),'--release','8','-d',str(p/'classes'),str(p/'Context.java'),str(p/'LifecycleProbe.java')],check=True)
 r=subprocess.run([str(JDK/'java'),'-cp',str(p/'classes'),'com.shilapi.xcertplay.LifecycleProbe'],capture_output=True,text=True);print(r.stdout+r.stderr);raise SystemExit(r.returncode)
