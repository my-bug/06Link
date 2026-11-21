#!/usr/bin/env python3
"""Offline hotspot settings checks; cached tools only, no APK or device operation."""
from pathlib import Path
import os
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "scripts"))
from test_support import resolve, build_dir


def main():
    tools = resolve(ROOT, download=False)
    java = tools["java_home"] / "bin"
    sdk = tools["android_jar"]
    dependencies = [sdk, build_dir(ROOT) / "compiled", build_dir(ROOT) / "deps"]
    for dependency in dependencies:
        if not dependency.exists():
            raise SystemExit("Missing cached compile dependency: " + str(dependency))
    source = ROOT / "src/e01/com/shilapi/xcertplay"
    settings = (source / "E01NativeSettings.java").read_text()
    strings = settings[settings.index('String string('):settings.index('void set(')]
    assert 'syncManualHotspotFromSystem' not in strings
    assert 'FreeAutoHotspotName' not in strings
    ui = (source / "E01NativeUi.java").read_text()
    refresh = ui[ui.index('private void refreshHotspot('):ui.index('private EditText editor(')]
    assert 'hotspotTarget==this&&root==pageRoot' in refresh
    assert 'ssid.addTextChangedListener(edits);pass.addTextChangedListener(edits)' in refresh
    assert 'E01HotspotSettings.customName(host)!=null)return' in refresh
    assert 'savedSsid.equals(getValue("ssid","06Link"))&&savedPass.equals(getValue("password",""))' in refresh
    with tempfile.TemporaryDirectory(prefix="06link-hotspot-snapshot-") as folder:
        tmp = Path(folder)
        production, stubs = tmp / "production", tmp / "stubs"
        production.mkdir()
        stubs.mkdir()
        cp = os.pathsep.join(map(str, dependencies))
        subprocess.run([str(java / "javac"), "-source", "8", "-target", "8", "-cp", cp,
                        "-d", str(production), str(source / "E01HotspotSnapshot.java"),
                        str(source / "E01NativeSettings.java")], check=True)
        def write(path, content):
            file = stubs / path
            file.parent.mkdir(parents=True, exist_ok=True)
            file.write_text(content)
        write("android/content/Context.java", '''package android.content;
public class Context {
 public final java.util.Map<String,SharedPreferences> prefs=new java.util.HashMap<>();
 public Context getApplicationContext(){return this;}
 public SharedPreferences getSharedPreferences(String name,int mode){return prefs.computeIfAbsent(name,k->com.shilapi.xcertplay.SnapshotTest.preferences());}
}''')
        write("android/app/Activity.java", "package android.app; public class Activity extends android.content.Context {}")
        write("android/os/Looper.java", "package android.os; public class Looper {public static Looper getMainLooper(){return new Looper();}}")
        write("android/os/Handler.java", '''package android.os;
public class Handler {
 public static final java.util.concurrent.BlockingQueue<Runnable> tasks=new java.util.concurrent.LinkedBlockingQueue<>();
 public Handler(Looper looper){}public boolean post(Runnable task){return tasks.offer(task);}
}''')
        write("com/shilapi/xcertplay/E01HotspotSettings.java", '''package com.shilapi.xcertplay;
public class E01HotspotSettings {public static String customName(android.content.Context c){return c.getSharedPreferences("free_auto_hotspot_name",0).getString("custom_ssid",null);}}''')
        write("com/shilapi/xcertplay/AirPlayPersistence.java", '''package com.shilapi.xcertplay;
public class AirPlayPersistence {
 public static final AirPlayPersistence INSTANCE=new AirPlayPersistence();
 public String ssid="",pass="saved-pass";
 public String loadManualHotspotSsid(android.content.Context c){return ssid;}
 public String loadManualHotspotPassphrase(android.content.Context c){return pass;}
 public boolean syncManualHotspotFromSystem(android.content.Context c){throw new AssertionError("system query on first display");}
}''')
        write("com/shilapi/xcertplay/network/FreeAutoHotspotName.java", '''package com.shilapi.xcertplay.network;
public class FreeAutoHotspotName {public static final FreeAutoHotspotName INSTANCE=new FreeAutoHotspotName();public String name(android.content.Context c,String current){throw new AssertionError("generated/committed a name while rendering");}}''')
        write("com/shilapi/xcertplay/network/SystemHotspotCredentials.java", '''package com.shilapi.xcertplay.network;
import java.util.concurrent.*;
public class SystemHotspotCredentials {
 public static final SystemHotspotCredentials INSTANCE=new SystemHotspotCredentials();
 public static CountDownLatch started=new CountDownLatch(1),release=new CountDownLatch(1);
 public static volatile Thread thread;public static int reads;
 public Credentials read(android.content.Context c){reads++;thread=Thread.currentThread();started.countDown();try{if(!release.await(3,TimeUnit.SECONDS))throw new AssertionError("service never released");}catch(InterruptedException e){throw new RuntimeException(e);}return new Credentials("system-name","system-pass");}
 public static class Credentials {private final String ssid,password;public Credentials(String s,String p){ssid=s;password=p;}public String getSsid(){return ssid;}public String getPassphrase(){return password;}}
}''')
        test = ROOT / "tests/hotspot_snapshot/SnapshotTest.java"
        runtime = os.pathsep.join([str(stubs), str(production), cp])
        subprocess.run([str(java / "javac"), "-source", "8", "-target", "8", "-cp", runtime,
                        "-d", str(stubs)] + list(map(str, stubs.rglob("*.java"))) + [str(test)], check=True)
        subprocess.run([str(java / "java"), "-ea", "-cp", runtime,
                        "com.shilapi.xcertplay.SnapshotTest"], check=True, timeout=15)


if __name__ == "__main__":
    main()
