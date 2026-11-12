#!/usr/bin/env python3
"""Numeric-only NAV probe checks; deterministic Android fakes, no real audio/device."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import find_java, resolve
import json,os,subprocess,tempfile
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
JDK=find_java()['java_home']
STUBS={
'android/os/SystemClock.java':'''package android.os;public final class SystemClock{public static long now=10000;public static long elapsedRealtime(){return now;}}''',
'android/util/Log.java':'''package android.util;public final class Log{public static final java.util.List<String> lines=new java.util.ArrayList<String>();public static int i(String tag,String text){lines.add(text);return 0;}}''',
'android/media/AudioTrack.java':'''package android.media;public class AudioTrack{public int stream=10,rate=24000,channels=1,session=7,reads;public boolean fail;private int read(int x){reads++;if(fail)throw new IllegalStateException();return x;}public int getStreamType(){return read(stream);}public int getSampleRate(){return read(rate);}public int getChannelCount(){return read(channels);}public int getAudioSessionId(){return read(session);}}''',
'android/media/AudioManager.java':'''package android.media;public class AudioManager{public int nav=8,max=15,media=6,reads;public boolean fail;public int getStreamVolume(int s){reads++;if(fail)throw new IllegalStateException();return s==10?nav:media;}public int getStreamMaxVolume(int s){reads++;if(fail)throw new IllegalStateException();return max;}}''',
'android/media/MediaFormat.java':'''package android.media;public class MediaFormat{public final java.util.Map<String,Integer> values=new java.util.HashMap<String,Integer>();public boolean containsKey(String k){return values.containsKey(k);}public int getInteger(String k){return values.get(k);}public void setInteger(String k,int v){values.put(k,v);}}''',
'android/media/MediaCodec.java':'''package android.media;public class MediaCodec{public MediaFormat format=new MediaFormat();public boolean fail;public MediaFormat getOutputFormat(){if(fail)throw new IllegalStateException();return format;}}''',
'kotlin/jvm/functions/Function1.java':'''package kotlin.jvm.functions;public interface Function1{Object invoke(Object value);}''',
'com/shilapi/xcertplay/E01AudioRoute.java':'''package com.shilapi.xcertplay;public final class E01AudioRoute{public static boolean enabled=true;public static boolean supported(){return enabled;}}'''}
CASES=['gates','levels','sampling','silence','budgets','expiry','formats','faults','overlap','rebuild','inputs','shortTrack','reporter']
with tempfile.TemporaryDirectory(prefix='06link-nav-audio-') as d:
 d=Path(d)
 for name,text in STUBS.items():
  p=d/'src'/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(text)
 sources=[ROOT/'src/e01/com/shilapi/xcertplay/E01NavigationAudioProbe.java',HERE/'NavigationAudioProbeTest.java',*sorted((d/'src').rglob('*.java'))]
 subprocess.run([str(JDK/'bin/javac'),'--release','8','-d',str(d/'classes'),*map(str,sources)],check=True)
 results=[]
 for case in CASES:
  p=subprocess.run([str(JDK/'bin/java'),'-Xmx32m','-cp',str(d/'classes'),'com.shilapi.xcertplay.NavigationAudioProbeTest',case],capture_output=True,text=True,timeout=15)
  print(p.stdout+p.stderr,end='');results.append({'case':case,'passed':p.returncode==0})
 assert all(v['passed'] for v in results),results
print('PASS',len(results),'actual numeric-only probe scenarios; no real vehicle or HAL gain evidence')
