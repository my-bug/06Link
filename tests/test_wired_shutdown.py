from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from test_support import find_java, resolve
import tempfile,subprocess,json,re
R=Path(__file__).resolve().parents[1]
J=find_java()['java_home'] / 'bin'
with tempfile.TemporaryDirectory() as d:
 p=Path(d)
 files={
 'android/app/Activity.java':'package android.app; public class Activity {public int finishes; public boolean isFinishing(){return finishes>0;} public void finish(){finishes++;}}',
 'kotlin/Unit.java':'package kotlin; public final class Unit {public static final Unit INSTANCE=new Unit();}',
 'kotlin/jvm/functions/Function0.java':'package kotlin.jvm.functions; public interface Function0<T>{T invoke();}',
 'Test.java':'''import android.app.Activity;import com.shilapi.xcertplay.E01WiredShutdown;public class Test {public static void main(String[] a){Activity h=new Activity();kotlin.jvm.functions.Function0<kotlin.Unit> done=E01WiredShutdown.finishWhenClosed(h);if(h.finishes!=0)throw new AssertionError("early finish");done.invoke();if(h.finishes!=1)throw new AssertionError("missing finish");done.invoke();if(h.finishes!=1)throw new AssertionError("double finish");System.out.println("PASS no finish before teardown callback; one finish after completion");}}'''}
 for n,s in files.items():q=p/n;q.parent.mkdir(parents=True,exist_ok=True);q.write_text(s)
 src=R/'src/e01/com/shilapi/xcertplay/E01WiredShutdown.java'
 subprocess.run([str(J/'javac'),'-d',str(p),str(src)]+[str(p/n) for n in files],check=True)
 subprocess.run([str(J/'java'),'-cp',str(p),'Test'],check=True)
import sys
sys.path.insert(0,str(R/'tests/source_build'))
from contracts import assert_contract,method_for
body=assert_contract('wired-shutdown-order')
assert 'E01WiredShutdown;->finishWhenClosed(' in body
print('PASS actual wired integration contract and behavior tests')
