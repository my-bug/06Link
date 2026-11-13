package com.shilapi.xcertplay;

import android.content.Context;
import java.util.*;

public final class NavigationVoiceCheck {
 private static int checks;
 private static void check(boolean value,String message) {
  checks++;if(!value)throw new AssertionError(message);
 }
 private static Map<String,Object> format(int type,String role,Number output,Number input) {
  Map<String,Object> entry=new LinkedHashMap<String,Object>();
  entry.put("type",type);entry.put("audioType",role);entry.put("audioOutputFormats",output);
  if(input!=null)entry.put("audioInputFormats",input);
  entry.put("futureMetadata","retained");return Collections.unmodifiableMap(entry);
 }
 private static Map<String,Object> offer(boolean rate48,boolean opus,boolean microphone) {
  int pcm=rate48?0xc3fc:0xffc,mono=rate48?0x4154:0x554,op=opus?0x70000000:0;
  Integer input=microphone?Integer.valueOf(mono):null;
  Integer voiceInput=microphone?Integer.valueOf(mono|op):null;
  List<Map<String,Object>> formats=new ArrayList<Map<String,Object>>();
  formats.add(format(100,"compatibility",pcm,input));
  formats.add(format(101,"compatibility",pcm,null));
  formats.add(format(100,"default",pcm|op,voiceInput));
  formats.add(format(100,"alert",pcm|op,null));
  formats.add(format(100,"media",pcm,null));
  formats.add(format(100,"telephony",mono|op,voiceInput));
  formats.add(format(100,"speechRecognition",mono|op,voiceInput));
  formats.add(format(101,"default",pcm|op,null));
  formats.add(format(102,"media",rate48?0x800000:0x400000,null));
  formats.add(format(101,"alert",pcm|op,null)); // No existing such role: do not broaden scope.
  formats.add(format(103,"default",pcm|op,null));
  Map<String,Object> info=new LinkedHashMap<String,Object>();
  info.put("audioFormats",Collections.unmodifiableList(formats));
  info.put("audioLatencies",Collections.singletonList(32));
  info.put("displays",Collections.singletonMap("fps",60));
  info.put("name","06Link");
  return Collections.unmodifiableMap(info);
 }
 @SuppressWarnings("unchecked") private static List<Map<String,Object>> formats(Map<String,Object> info) {
  return (List<Map<String,Object>>)info.get("audioFormats");
 }
 public static void main(String[] args) {
  Context context=new Context();
  check(!E01NavigationVoice.enabled(context),"new installations default off");
  check(!E01NavigationVoice.forConnection(context,false),"wired disabled by default");
  check(E01NavigationVoice.save(context,true),"save enabled");
  boolean firstWired=E01NavigationVoice.forConnection(context,false);
  check(firstWired,"new wired session snapshots enabled");
  int reads=context.reads;
  check(!E01NavigationVoice.forConnection(context,true),"wireless never uses clearer PCM offer");
  check(context.reads==reads,"wireless does not read preference");
  check(E01NavigationVoice.save(context,false),"save disabled");
  check(firstWired,"saved toggle does not mutate existing session snapshot");
  check(!E01NavigationVoice.forConnection(context,false),"next wired session snapshots disabled");
  context.getSharedPreferences("06link-audio",0).canSave=false;
  check(!E01NavigationVoice.save(context,true),"failed save is reported to settings");
  check(!E01NavigationVoice.enabled(context),"failed save does not pretend enabled");
  check(E01NavigationVoice.status(false,true).contains("开启"),"active log");
  check(E01NavigationVoice.status(false,false).contains("关闭"),"disabled log");
  check(E01NavigationVoice.status(true,false).contains("无线"),"wireless log");
  for(boolean rate48:new boolean[]{false,true})for(boolean opus:new boolean[]{false,true})for(boolean mic:new boolean[]{false,true}) {
   Map<String,Object> original=offer(rate48,opus,mic);
   check(E01NavigationVoice.apply(original,false)==original,"disabled exact original object");
   Map<String,Object> filtered=E01NavigationVoice.apply(original,firstWired);
   check(filtered!=original,"new info map when enabled");
   check(filtered.get("displays")==original.get("displays"),"video capabilities unchanged");
   check(filtered.get("audioLatencies")==original.get("audioLatencies"),"audio latencies unchanged");
   List<Map<String,Object>> before=formats(original),after=formats(filtered);
   check(before.size()==after.size(),"format entries/order retained");
   for(int n=0;n<before.size();n++) {
    Map<String,Object> a=before.get(n),b=after.get(n);
    if(n==2||n==3||n==7) {
     int expected=(rate48?0xc3c0:0xfc0)|(opus?0x70000000:0);
     check(b.get("audioOutputFormats").equals(Integer.valueOf(expected)),"only speech output rates removed");
     check((expected&0x3c)==0&&(expected&0x3c0)==0x3c0,"8/16 absent, 24/32 still offered");
     check(a.get("audioInputFormats")==b.get("audioInputFormats"),"microphone offer unchanged");
     Map<String,Object> restored=new LinkedHashMap<String,Object>(b);
     restored.put("audioOutputFormats",a.get("audioOutputFormats"));
     check(restored.equals(a),"no other per-stream fields modified");
     check((((Number)a.get("audioOutputFormats")).intValue()&0x3c)==0x3c,"original shared entry not mutated");
    } else check(a==b,"music/calls/Siri/compatibility/unknown stream untouched");
   }
   check(E01NavigationVoice.apply(filtered,true)==filtered,"repeated info filtering is idempotent");
   check(E01NavigationVoice.apply(original,false)==original,"next disabled connection restores low rates");
  }
  Map<String,Object> wide=new LinkedHashMap<String,Object>();
  wide.put("audioFormats",Collections.singletonList(format(101,"default",Long.valueOf(0x10000c3fcL),Long.valueOf(0x4154))));
  Map<String,Object> filteredWide=formats(E01NavigationVoice.apply(wide,true)).get(0);
  check(filteredWide.get("audioOutputFormats").equals(Long.valueOf(0x10000c3c0L)),"64-bit format metadata preserved");
  Map<String,Object> noAudio=Collections.singletonMap("displays",(Object)"screen");
  check(E01NavigationVoice.apply(noAudio,true)==noAudio,"disabled audio output info untouched");
  Map<String,Object> unknown=Collections.singletonMap("audioFormats",(Object)Arrays.asList("future",Collections.singletonMap("type",100)));
  check(E01NavigationVoice.apply(unknown,true)==unknown,"unknown formats passed through");
  System.out.println("PASS "+checks+" navigation-format, preference, isolation and reconnect checks");
 }
}
