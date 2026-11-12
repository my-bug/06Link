#!/usr/bin/env python3
"""Separate JVM restarts verify persistent history, UI visibility, rotation and clear."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from test_support import find_java, resolve
import importlib.util, json, subprocess, tempfile
ROOT=Path(__file__).resolve().parent.parent
FIXTURES=ROOT
spec=importlib.util.spec_from_file_location('fixtures',FIXTURES/'scripts/compile_stubs.py')
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
jdk=find_java()['java_home'] / 'bin'
import sys
sys.path.insert(0,str(ROOT/'tests/source_build'))
from contracts import assert_contract,method_for
patch=assert_contract('log-budget-SessionLogFile-21')
assert '->startSession(' in patch
assert '->rotate(' not in patch and '->writeText(' not in patch
assert '->closed:Z' in patch and 'monitor-exit' in patch
with tempfile.TemporaryDirectory(prefix='06link-persistence-') as d:
 p=Path(d)
 for name in ('android/content/res/Resources.java','android/util/DisplayMetrics.java','android/content/Context.java','android/content/Intent.java','android/content/SharedPreferences.java','android/content/ServiceConnection.java','android/content/ComponentName.java','android/os/IBinder.java','android/os/Parcel.java','android/content/pm/PackageManager.java','android/content/pm/PackageInfo.java','android/content/pm/Signature.java','com/shilapi/xcertplay/DiagnosticRedactor.java'):
  f=p/name;f.parent.mkdir(parents=True,exist_ok=True);f.write_text(m.STUBS[name])
 (p/'PersistenceTest.java').write_text(r'''
import com.shilapi.xcertplay.E01LogPolicy;
import java.io.*;import java.nio.file.*;import java.util.*;
public class PersistenceTest {
 static int checks;
 static void check(boolean value,String label){checks++;if(!value)throw new AssertionError(label);}
 static boolean contains(List<String[]> rows,String s){for(String[] r:rows)if(r[2].contains(s))return true;return false;}
 static long bytes(File root){long b=0;File[] fs=root.listFiles();if(fs!=null)for(File f:fs)b+=f.isDirectory()?bytes(f):f.length();return b;}
 public static void main(String[] args)throws Exception{
  final File root=new File(args[1]),internal=new File(root,"internal"),external=new File(root,"external");internal.mkdirs();external.mkdirs();
  final android.content.Context context=new android.content.Context(){public File getFilesDir(){return internal;}public File getExternalFilesDir(String ignored){return external;}};
  File logs=new File(internal,"logs");logs.mkdirs();File main=new File(logs,"06link.log");
  String mode=args[0];
  if(mode.equals("seed")){
   Files.write(new File(logs,"previous.log").toPath(),"LEGACY_PREVIOUS_DRIVE\n".getBytes("UTF-8"));
   Files.write(new File(internal,"settings-user.txt").toPath(),"untouched".getBytes("UTF-8"));
   E01LogPolicy.install(context);E01LogPolicy.startSession(main,"06Link log started first drive");
   E01LogPolicy.append(main,"FIRST_DRIVE_ERROR authentication failed");
   for(int i=0;i<400;i++)E01LogPolicy.append(main,"Drive event "+i);
   for(int i=0;i<10;i++)E01LogPolicy.startSession(main,"06Link log started Activity restart "+i);
   check(contains(E01LogPolicy.readUi(context),"FIRST_DRIVE_ERROR"),"ten Activity starts preserve prior evidence");
  }else if(mode.equals("restart")){
   E01LogPolicy.install(context);E01LogPolicy.startSession(main,"06Link log started after headunit reboot");
   List<String[]> rows=E01LogPolicy.readUi(context);
   check(contains(rows,"FIRST_DRIVE_ERROR"),"new JVM retains previous drive");
   check(contains(rows,"LEGACY_PREVIOUS_DRIVE"),"upgrade exposes existing previous.log");
   check(contains(rows,"Drive event 0")&&contains(rows,"Drive event 399"),"old and recent entries visible");
   check(rows.size()>400,"UI no longer discards everything before last 256 entries");
   boolean dated=false;for(String[] row:rows)if(row[2].contains("Drive event 399"))dated=row[2].matches("^[0-9]{4}-[0-9]{2}-[0-9]{2} .*");
   check(dated,"new retained records include date");
   check(bytes(root)<=E01LogPolicy.TOTAL_BYTES,"restart remains below total cap");
  }else if(mode.equals("rotation")){
   E01LogPolicy.install(context);
   for(int i=0;i<5000;i++)E01LogPolicy.append(main,"ROLL "+i+" low frequency bounded history example record, no navigation payload");
   List<String[]> rows=E01LogPolicy.readUi(context);
   check(main.length()<=E01LogPolicy.SESSION_BYTES,"current session size bound");
   File prev=new File(logs,"previous.log");check(prev.isFile()&&prev.length()<=E01LogPolicy.SESSION_BYTES,"archive size bound");
   check(contains(rows,"ROLL 4999"),"latest event survives size rotation");
   check(!contains(rows,"FIRST_DRIVE_ERROR"),"only size rotation evicts oldest evidence");
   check(bytes(root)<=E01LogPolicy.TOTAL_BYTES,"rotated history below total cap");
  }else if(mode.equals("clear")){
   E01LogPolicy.clear(context);check(E01LogPolicy.readUi(context).isEmpty(),"clear removes current and previous rows");
   check(new File(internal,"settings-user.txt").isFile(),"clear preserves unrelated data");
  }else if(mode.equals("after-clear")){
   E01LogPolicy.install(context);check(E01LogPolicy.readUi(context).isEmpty(),"fresh JVM cannot resurrect cleared rows");
   E01LogPolicy.startSession(main,"06Link log started clean reboot");
   List<String[]> rows=E01LogPolicy.readUi(context);
   check(rows.size()==1&&contains(rows,"clean reboot"),"new session writes after clear");
   check(bytes(root)<=E01LogPolicy.TOTAL_BYTES,"fresh session below budget");
  }else throw new IllegalArgumentException(mode);
  System.out.println(mode+": "+checks+" checks passed");
 }
}
''')
 subprocess.run([str(jdk/'javac'),'-d',str(p/'classes'),*[str(f) for f in p.rglob('*.java')],str(ROOT/'src/e01/com/shilapi/xcertplay/E01LogPolicy.java')],check=True)
 for mode in ['seed','restart','rotation','clear','after-clear']:
  subprocess.run([str(jdk/'java'),'-cp',str(p/'classes'),'PersistenceTest',mode,str(p/'storage')],check=True)
print('Persistence patch checks passed')
