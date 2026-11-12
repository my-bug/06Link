"""Exercise credential-free debug behavior without a device, network, or private files."""
from pathlib import Path
import hashlib,re,subprocess,sys,tempfile
ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/'scripts'))
from toolchain import find_java
from build import canonical_smali,methods,load_config,asset_inputs

STUBS={
'android/content/res/AssetManager.java':'''package android.content.res;
import java.io.*;
public final class AssetManager {
 public final boolean marker; public int reads;
 public AssetManager(boolean value){marker=value;}
 public InputStream open(String name) throws IOException {
  reads++; if(!name.equals("build-variant.json"))throw new AssertionError(name);
  if(!marker)throw new FileNotFoundException(name);
  return new ByteArrayInputStream("{}".getBytes("UTF-8"));
 }
}''',
'android/content/Context.java':'''package android.content;
public class Context {private final android.content.res.AssetManager assets;
 public Context(android.content.res.AssetManager value){assets=value;}
 public android.content.res.AssetManager getAssets(){return assets;}}
''',
'android/app/Activity.java':'''package android.app;
public class Activity extends android.content.Context {
 public Activity(android.content.res.AssetManager value){super(value);}}
''',
'com/shilapi/xcertplay/E01NativeSettings.java':'''package com.shilapi.xcertplay;
public final class E01NativeSettings {public static int cancelled;
 public static void cancelStartup(android.app.Activity a){cancelled++;}}
''',
'com/shilapi/xcertplay/E01NativeUi.java':'''package com.shilapi.xcertplay;
public final class E01NativeUi {public static int dialogs;public static String message;
 public static void confirm(android.app.Activity a,String title,String body,String button,Runnable action){
  dialogs++;message=body;
  if(!title.contains("调试版")||!button.equals("知道了"))throw new AssertionError("unclear debug notice");
 }}
''',
'DebugVariantTest.java':'''import android.app.Activity;
import android.content.res.AssetManager;
import com.shilapi.xcertplay.*;
public final class DebugVariantTest {
 static void reset()throws Exception{
  java.lang.reflect.Field f=E01BuildVariant.class.getDeclaredField("preview");f.setAccessible(true);f.set(null,null);
  E01NativeSettings.cancelled=0;E01NativeUi.dialogs=0;
 }
 public static void main(String[] args)throws Exception{
  reset();AssetManager releaseAssets=new AssetManager(false);Activity release=new Activity(releaseAssets);
  if(E01BuildVariant.isPreview(release)||E01BuildVariant.blockConnection(release))throw new AssertionError("release blocked");
  if(E01NativeSettings.cancelled!=0||E01NativeUi.dialogs!=0)throw new AssertionError("release side effect");
  if(releaseAssets.reads!=1)throw new AssertionError("release checks repeatedly read assets");
  reset();AssetManager debugAssets=new AssetManager(true);Activity debug=new Activity(debugAssets);
  if(!E01BuildVariant.isPreview(debug)||!E01BuildVariant.blockConnection(debug))throw new AssertionError("debug attempts authentication");
  if(E01NativeSettings.cancelled!=1||E01NativeUi.dialogs!=1)throw new AssertionError("missing cancellation/notice");
  if(!E01NativeUi.message.contains("MFi")||!E01NativeUi.message.contains("不能连接"))throw new AssertionError("misleading connection notice");
  if(debugAssets.reads!=1)throw new AssertionError("debug marker not cached");
  System.out.println("PASS debug denies credential-free connections explicitly; release remains unblocked");
 }
}'''
}
java=find_java()
with tempfile.TemporaryDirectory(prefix='06link-debug-guard-') as directory:
 p=Path(directory);sources=[]
 for name,text in STUBS.items():
  f=p/name;f.parent.mkdir(parents=True,exist_ok=True);f.write_text(text);sources.append(f)
 subprocess.run([str(java['javac']),'--release','8','-encoding','UTF-8','-d',str(p/'classes'),
                 *map(str,sources),str(ROOT/'src/e01/com/shilapi/xcertplay/E01BuildVariant.java')],check=True)
 subprocess.run([str(java['java']),'-cp',str(p/'classes'),'DebugVariantTest'],check=True)

# Remove only the new debug branch, then compare the entire original release
# method against its previous source hash. Guards must not rewrite any protocol.
entries=[
 ('DiPlayBootstrap.smali','ensure(Landroid/content/Context;)V',
  r'\n    invoke-static \{p1\}, Lcom/shilapi/xcertplay/E01BuildVariant;.*?^    :cond_0\n',
  '36fdc6d88a87e2b9bd832133b10c0cf0443a8d87a7585c29b4861b86ffb023f4'),
 ('DiPlayActivity.smali','connect(ZZ)V',
  r'\n    invoke-static \{v1\}, Lcom/shilapi/xcertplay/E01BuildVariant;.*?^    :cond_0\n',
  '3324cb5e374ac5c5bbdb48331339b4264227d255380db92ab6dc4e88c5b3a268'),
 ('orchestration/CarPlayController.smali','start()V',
  r'\n    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:.*?^    :cond_0\n',
  '9bdd6393dc1a5a280cb5168f0de59a39717135b6102ca42319776b12bf107f4b')]
for rel,signature,pattern,expected in entries:
 text=methods((ROOT/'src/core/smali/classes/com/shilapi/xcertplay'/rel).read_text())[signature]
 text,count=re.subn(pattern,'\n',text,count=1,flags=re.M|re.S)
 assert count==1,signature
 text=re.sub(r':cond_([0-9a-f]+)\b',lambda m:':cond_'+format(int(m[1],16)-1,'x'),text)
 assert hashlib.sha256(canonical_smali(text).encode()).hexdigest()==expected,signature
print('PASS bootstrap, manual connection and controller release bodies unchanged')

config=load_config(ROOT)
assert not any(x['source'].startswith('.private/') or x['entry'].startswith('assets/offline-mfi/')
               for x in asset_inputs(config,'debug'))
assert len([x for x in asset_inputs(config,'release') if x['entry'].startswith('assets/offline-mfi/')])==2
settings=(ROOT/'src/e01/com/shilapi/xcertplay/E01NativeSettings.java').read_text()
assert 'private static boolean automaticAllowed(Activity a){\n        if(E01BuildVariant.isPreview(a))return false;' in settings
assert 'public static void prepareStartup(Activity a){\n        if(E01BuildVariant.isPreview(a))return;' in settings
print('PASS debug excludes private assets and startup connection preparation')
