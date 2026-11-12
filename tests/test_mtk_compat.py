from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from test_support import find_java, resolve
import subprocess, tempfile, json, re, hashlib
R=Path(__file__).resolve().parents[1]
J=find_java()['java_home'] / 'bin'
with tempfile.TemporaryDirectory() as d:
 p=Path(d)
 files={
 'android/content/Context.java':'package android.content; public class Context {}',
 'com/shilapi/xcertplay/E01VideoEvidence.java':'package com.shilapi.xcertplay; public class E01VideoEvidence {public static void decision(android.content.Context c,String s){}}',
 'android/os/Build.java':'package android.os; public class Build {public static String MODEL="E01", DEVICE="BX11QJ"; public static class VERSION {public static int SDK_INT=22;}}',
 'android/util/Log.java':'package android.util; public class Log {public static int i(String t,String s){return 0;}}',
 'android/media/MediaFormat.java':'''package android.media; import java.util.*;import java.nio.*; public class MediaFormat {public final Map<String,Object> values=new HashMap<>(); public void setInteger(String k,int v){values.put(k,v);} public String getString(String k){return (String)values.get(k);} public ByteBuffer getByteBuffer(String k){return (ByteBuffer)values.get(k);}}''',
 'Test.java':r'''
import com.shilapi.xcertplay.*;
import java.nio.*;import java.io.*;import java.util.*;
import android.media.MediaFormat;import android.os.Build;
public class Test {
 static int checks;
 static void check(boolean v,String label){checks++;if(!v)throw new AssertionError(label);}
 static class Writer {
  StringBuilder bits=new StringBuilder();
  void b(int n,int v){for(int i=n-1;i>=0;i--)bits.append((v>>>i)&1);}
  void ue(int v){int n=32-Integer.numberOfLeadingZeros(v+1);b(n-1,0);b(n,v+1);}
  byte[] end(){b(1,1);while(bits.length()%8!=0)b(1,0);ByteArrayOutputStream out=new ByteArrayOutputStream();out.write(0x67);int zeros=0;for(int i=0;i<bits.length();i+=8){int v=Integer.parseInt(bits.substring(i,i+8),2);if(zeros==2&&v<=3){out.write(3);zeros=0;}out.write(v);zeros=v==0?zeros+1:0;}return out.toByteArray();}
 }
 static byte[] sps(int profile,int reorder,boolean extra){
  Writer w=new Writer();w.b(8,profile);w.b(8,0);w.b(8,40);w.ue(0);
  if(profile==100){w.ue(1);w.ue(0);w.ue(0);w.b(1,0);w.b(1,0);}
  w.ue(0);w.ue(0);w.ue(0);w.ue(1);w.b(1,0);w.ue(119);w.ue(44);w.b(1,1);w.b(1,1);w.b(1,0);
  w.b(1,reorder<0?0:1);if(reorder<0)return w.end();
  w.b(1,extra?1:0);if(extra){w.b(8,255);w.b(16,1);w.b(16,1);}
  w.b(1,0);w.b(1,0);w.b(1,0);w.b(1,extra?1:0);
  if(extra){w.b(32,1);w.b(32,120);w.b(1,1);}
  w.b(1,extra?1:0);if(extra){w.ue(0);w.b(8,0);w.ue(0);w.ue(0);w.b(1,0);w.b(20,0);}
  w.b(1,0);if(extra)w.b(1,0);w.b(1,0);w.b(1,1);w.b(1,1);
  w.ue(2);w.ue(1);w.ue(16);w.ue(16);w.ue(reorder);w.ue(Math.max(1,reorder));return w.end();
 }
 static byte[] join(byte[]...arrays){ByteArrayOutputStream o=new ByteArrayOutputStream();for(byte[]a:arrays)o.write(a,0,a.length);return o.toByteArray();}
 static boolean permits(byte[] a){return E01AvcReorder.permitsNoReorder(ByteBuffer.wrap(a));}
 static MediaFormat format(byte[] a){MediaFormat f=new MediaFormat();f.values.put("mime","video/avc");f.values.put("csd-0",ByteBuffer.wrap(a));return f;}
 public static void main(String[] args){
  byte[] real={(byte)0x67,(byte)0x4d,(byte)0x40,(byte)0x2a,(byte)0xda,(byte)0x01,(byte)0xe0,(byte)0x16,(byte)0xec,(byte)0x04,(byte)0x40,(byte)0x00,(byte)0x00,(byte)0x03,(byte)0x00,(byte)0x40,(byte)0x00,(byte)0x00,(byte)0x1e,(byte)0x23,(byte)0xc6,(byte)0x0c,(byte)0xa8};
  check(permits(real),"actual ffmpeg benchmark SPS max_num_reorder_frames=0");
  byte[] zero=sps(77,0,false), reorder=sps(77,2,false), unknown=sps(77,-1,false), prefix={0,0,0,1};
  for(int profile:new int[]{66,77,100})for(boolean extra:new boolean[]{false,true}){
   check(permits(sps(profile,0,extra)),"zero VUI "+profile+extra);
   check(!permits(sps(profile,2,extra)),"reordered "+profile+extra);
   check(!permits(sps(profile,-1,extra)),"unknown "+profile+extra);
  }
  check(permits(join(prefix,zero,new byte[]{0,0,1,0x68,1,2})),"AnnexB SPS/PPS");
  check(!permits(join(prefix,zero,prefix,reorder)),"mixed SPS");
  check(!permits(join(prefix,zero,prefix,unknown)),"unknown second SPS");
  check(!permits(new byte[]{0,0,1,0x68,0}),"PPS alone");
  check(!permits(sps(255,0,false)),"unknown profile");
  check(!permits(new byte[8193]),"bounded CSD");check(!E01AvcReorder.permitsNoReorder(null),"null CSD");
  for(int i=0;i<zero.length;i++)check(!permits(Arrays.copyOf(zero,i)),"truncated "+i);
  ByteBuffer direct=ByteBuffer.allocateDirect(zero.length+6);direct.position(3);direct.put(zero);direct.limit(direct.position());direct.position(3);ByteBuffer readOnly=direct.asReadOnlyBuffer();
  check(E01AvcReorder.permitsNoReorder(readOnly)&&readOnly.position()==3&&readOnly.limit()==zero.length+3,"direct readonly slice unchanged");
  Random random=new Random(106);for(int i=0;i<3000;i++){byte[] a=new byte[random.nextInt(150)];random.nextBytes(a);permits(a);}
  MediaFormat f=format(zero);E01MtkCompat.configure(f,null);check(Integer.valueOf(1).equals(f.values.get("vdec-lowlatency"))&&Integer.valueOf(1).equals(f.values.get("vdec-no-record")),"E01 two options");
  for(byte[] a:new byte[][]{reorder,unknown,new byte[0]}){f=format(a);E01MtkCompat.configure(f,null);check(!f.values.containsKey("vdec-no-record"),"unknown/reorder omitted not zero");}
  Build.MODEL="other";f=format(zero);E01MtkCompat.configure(f,null);check(!f.values.containsKey("vdec-no-record"),"other model");Build.MODEL="E01";
  Build.VERSION.SDK_INT=23;f=format(zero);E01MtkCompat.configure(f,null);check(!f.values.containsKey("vdec-no-record"),"other SDK");Build.VERSION.SDK_INT=22;
  Build.DEVICE="other";f=format(zero);E01MtkCompat.configure(f,null);check(!f.values.containsKey("vdec-no-record"),"other device");Build.DEVICE="BX11QJ";
  f=format(zero);f.values.put("mime","video/hevc");E01MtkCompat.configure(f,null);check(!f.values.containsKey("vdec-no-record"),"HEVC excluded");
  f=new MediaFormat();E01MtkCompat.configure(f,null);check(!f.values.containsKey("vdec-no-record"),"missing fields");
  System.out.println("PASS "+checks+" checks, 3000 bounded malformed CSD samples; AVC Main/Baseline/High, VUI, HRD, emulation prevention, multi-SPS, buffer ownership and device gates");
 }
}'''}
 for n,s in files.items():q=p/n;q.parent.mkdir(parents=True,exist_ok=True);q.write_text(s)
 sources=[R/'src/e01/com/shilapi/xcertplay'/n for n in ['E01AvcReorder.java','E01MtkCompat.java']]
 subprocess.run([str(J/'javac'),'--release','8','-d',str(p),*map(str,sources),*[str(p/n)for n in files]],check=True)
 out=subprocess.run([str(J/'java'),'-cp',str(p),'Test'],check=True,text=True,capture_output=True);print(out.stdout)
 import sys
 sys.path.insert(0,str(R/'tests/source_build'))
 from contracts import assert_contract
 method=assert_contract('mtk-no-reorder')
 assert 'E01MtkTuning;->requested' in method and method.count('E01MtkCompat;->configure')==1
 (R/'tests/mtk-compat-results.json').write_text(json.dumps({'passed':out.stdout.splitlines()+['actual configured MTK integration retained'],'vehicle':False},indent=2)+'\n')
