#!/usr/bin/env python3
"""Current-source navigation timing tests and isolated Host Smali assembly; no APK/device."""
from pathlib import Path
import hashlib
import json
import os
import shutil
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'scripts'))
from test_support import find_java
from build import canonical_smali, methods

STUBS = {
    'android/content/Context.java': '''package android.content; public class Context {
      public Context getApplicationContext(){return this;} public java.io.File getFilesDir(){return new java.io.File("/app");} }''',
    'android/app/Activity.java': '''package android.app; public class Activity extends android.content.Context {
      public boolean finishing,destroyed,failLifecycle,failWindow; public final android.content.Context app=new android.content.Context();
      public boolean isFinishing(){if(failLifecycle)throw new IllegalStateException();return finishing;} public boolean isDestroyed(){return destroyed;}
      public android.content.Context getApplicationContext(){return app;}
      public final android.view.Window window=new android.view.Window(); public android.view.Window getWindow(){if(failWindow)throw new IllegalStateException();return window;} }''',
    'android/os/Looper.java': '''package android.os; public class Looper { static final Looper MAIN=new Looper();
      public static boolean main=true; public static Looper getMainLooper(){return MAIN;} public static Looper myLooper(){return main?MAIN:null;} }''',
    'android/os/SystemClock.java': '''package android.os; public class SystemClock {public static long now=10000;public static long uptimeMillis(){return now;} }''',
    'android/os/Handler.java': '''package android.os; public class Handler {
      public static final java.util.List<Runnable> pending=new java.util.ArrayList<Runnable>(); public Handler(Looper l){}
      public boolean postDelayed(Runnable r,long delay){if(delay!=10000)throw new AssertionError("unbounded timeout");pending.add(r);return true;}
      public void removeCallbacks(Runnable r){pending.remove(r);} }''',
    'android/view/Window.java': '''package android.view; public class Window {public final View view=new View();public View getDecorView(){return view;} }''',
    'android/os/Build.java': 'package android.os; public class Build {public static class VERSION {public static int SDK_INT=22;}}',
    'android/util/DisplayMetrics.java': 'package android.util; public class DisplayMetrics { public float density=1f; }',
    'android/content/res/Resources.java': '''package android.content.res; public class Resources {
      public android.util.DisplayMetrics getDisplayMetrics(){return new android.util.DisplayMetrics();} }''',
    'android/util/Log.java': 'package android.util; public class Log {public static int i(String tag,String msg){return 0;}}',
    'android/view/MotionEvent.java': '''package android.view; public class MotionEvent {
      public static final int ACTION_DOWN=0,ACTION_UP=1,ACTION_MOVE=2,ACTION_CANCEL=3,ACTION_POINTER_DOWN=5,ACTION_POINTER_UP=6;
      private final int action,count,x,y;
      public MotionEvent(int action,int count,int x,int y){this.action=action;this.count=count;this.x=x;this.y=y;}
      public int getPointerCount(){return count;} public int getActionMasked(){return action;}
      public float getX(int p){return x + p * 8;} public float getY(int p){return y + p * 4;}
      public static String actionToString(int action){return Integer.toString(action);} }''',
    'android/view/View.java': '''package android.view; public class View {
      public android.content.res.Resources getResources(){return new android.content.res.Resources();}
      public interface OnAttachStateChangeListener {void onViewAttachedToWindow(View v);void onViewDetachedFromWindow(View v);}
      public final ViewTreeObserver tree=new ViewTreeObserver();public final java.util.List<OnAttachStateChangeListener> attach=new java.util.ArrayList<OnAttachStateChangeListener>();
      public boolean failAttach;public ViewTreeObserver getViewTreeObserver(){return tree;}public void addOnAttachStateChangeListener(OnAttachStateChangeListener l){attach.add(l);if(failAttach)throw new IllegalStateException();}
      public void removeOnAttachStateChangeListener(OnAttachStateChangeListener l){attach.remove(l);}
      public void detach(){for(OnAttachStateChangeListener l:new java.util.ArrayList<OnAttachStateChangeListener>(attach))l.onViewDetachedFromWindow(this);} }''',
    'android/view/ViewTreeObserver.java': '''package android.view; public class ViewTreeObserver {
      public interface OnPreDrawListener {boolean onPreDraw();} public boolean alive=true,failAdd;
      public final java.util.List<OnPreDrawListener> listeners=new java.util.ArrayList<OnPreDrawListener>();
      public boolean isAlive(){return alive;}public void addOnPreDrawListener(OnPreDrawListener l){listeners.add(l);if(failAdd)throw new IllegalStateException();}
      public void removeOnPreDrawListener(OnPreDrawListener l){listeners.remove(l);}
      public void draw(){for(OnPreDrawListener l:new java.util.ArrayList<OnPreDrawListener>(listeners))if(!l.onPreDraw())throw new AssertionError("draw blocked");} }''',
    'com/shilapi/xcertplay/E01LogPolicy.java': '''package com.shilapi.xcertplay; public class E01LogPolicy {
      public static final java.util.List<String> lines=new java.util.ArrayList<String>();public static boolean fail;
      public static void queueSession(java.io.File file,String text){if(!file.toString().equals("/app/logs/06link.log"))throw new AssertionError("wrong log");if(fail)throw new IllegalStateException();lines.add(text);} }''',
}


def assemble(work, java):
    spec = json.loads((ROOT / 'tooling/manifest.json').read_text())['downloads']['smali']
    cache = Path(os.environ.get('SIXLINK_TOOLCHAIN_CACHE', ROOT / 'tooling/cache'))
    candidates = [cache / spec['file'], *(ROOT / p for p in spec.get('local_candidates', []))]
    tool = next((p for p in candidates if p.is_file() and hashlib.sha256(p.read_bytes()).hexdigest() == spec['sha256']), None)
    if tool is None:
        raise SystemExit('Pinned Smali tool not cached; this test never downloads tools.')
    source = ROOT / 'src/core/smali/classes/com/shilapi/xcertplay/CarPlayHostActivity.smali'
    sources = work / 'smali'
    sources.mkdir()
    shutil.copy2(source, sources / source.name)
    subprocess.run([str(java), '-cp', str(tool), 'com.android.tools.smali.smali.Main', 'assemble',
                    '--api', '22', '--jobs', '1', str(sources), '-o', str(work / 'host.dex')], check=True)
    subprocess.run([str(java), '-cp', str(tool), 'com.android.tools.smali.baksmali.Main', 'disassemble',
                    '--use-locals', '--sequential-labels', str(work / 'host.dex'), '-o', str(work / 'verified')], check=True)
    emitted = methods((work / 'verified/com/shilapi/xcertplay/CarPlayHostActivity.smali').read_text())
    touch = emitted['onHostTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z']
    assert touch.index('->onTouch(') < touch.index('->getEventTime()J') < touch.index('->gesture(') < touch.index('->applyGesture(')
    swipe_input = 'invoke-static {p2, p1, p0}, Lcom/shilapi/xcertplay/E01SwipeInput;->observe(Landroid/view/MotionEvent;Ljava/lang/Object;Landroid/app/Activity;)V'
    assert touch.index('->contacts(') < touch.index(swipe_input) < touch.index('->applyGesture(')
    apply = emitted['applyGesture(Lcom/shilapi/xcertplay/CarPlayGestures$Decision;Ljava/util/List;)Z']
    assert apply.index('->RELEASE_CARPLAY:') < apply.index('->emptyList()') < apply.index('->sendTouch(')
    assert 'gestureTimer' not in source.read_text() and 'heldTouches' not in source.read_text()
    gate = touch[touch.index('->OPEN_MENU:'):touch.index('->gesture(')]
    assert 'if-ne v0, v1,' in gate and 'invoke-static {p0, v2, v3}' in gate
    assert '->opening(' in emitted['openSettingsMenu()V']
    home = emitted['showDiPlayHome(Ljava/lang/String;Z)V']
    assert home.index('->paused(') < home.index('->requested(') < home.index('->startActivity(')
    assert '->destroyed(Landroid/app/Activity;)V' in emitted['onDestroy()V']
    ui = (ROOT / 'src/e01/com/shilapi/xcertplay/E01NativeUi.java').read_text()
    show = ui[ui.index('public static void show('):ui.index('public static void update(')]
    assert show.index('buildStarted') < show.index('instance(a)') < show.index('ui.render()') < show.index('finally') < show.index('buildFinished')
    path = ROOT / 'tests/source_build/contracts.json'
    contracts = json.loads(path.read_text())
    for key in ('video-visibility-home', 'video-visibility-destroy'):
        actual = hashlib.sha256(canonical_smali(emitted[contracts[key]['method']]).encode()).hexdigest()
        if '--update-contracts' in sys.argv:
            contracts[key]['sha256'] = actual
        else:
            assert contracts[key]['sha256'] == actual, key
    if '--update-contracts' in sys.argv:
        path.write_text(json.dumps(contracts, ensure_ascii=False, indent=2) + '\n')
    print('PASS isolated API 22 Host assembly/readback: gesture gate, stage ordering and two integration contracts')


def main():
    java = find_java()['java_home'] / 'bin'
    with tempfile.TemporaryDirectory(prefix='06link-settings-timing-') as directory:
        work = Path(directory)
        sources = []
        for name, text in STUBS.items():
            path = work / 'src' / name
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(text)
            sources.append(str(path))
        classes = work / 'classes'
        subprocess.run([str(java / 'javac'), '--release', '8', '-d', str(classes), *sources,
                        str(ROOT / 'src/e01/com/shilapi/xcertplay/E01SettingsTiming.java'),
                        str(ROOT / 'src/e01/com/shilapi/xcertplay/CarPlayGestures.java'),
                        str(Path(__file__).with_name('GestureCheck.java')),
                        str(Path(__file__).with_name('SettingsTimingCheck.java'))], check=True)
        subprocess.run([str(java / 'java'), '-cp', str(classes), 'com.shilapi.xcertplay.SettingsTimingCheck'], check=True, timeout=30)
        subprocess.run([str(java / 'java'), '-cp', str(classes), 'com.shilapi.xcertplay.GestureCheck'], check=True)
        assemble(work, java / 'java')


if __name__ == '__main__':
    main()
