package com.shilapi.xcertplay;
import java.util.Arrays;
/** Adapted from DiPlay FramePacer/PacingDelay at615b32ce (GPL-3.0). */
public final class E01PacingClock {
 private final long[] offsets=new long[240],needs=new long[120];
 private int count,next,frames,needCount,needNext,needFrames;private long offset=Long.MIN_VALUE,candidate,lastArrival,delay,goal;
 public E01PacingClock(int fps){delay=goal=(40+3000/Math.max(30,Math.min(60,fps)))*1000000L;}
 public static long senderNanos(byte[] header){if(header.length<16)return 0;long raw=0;for(int i=7;i>=0;i--)raw=(raw<<8)|(header[8+i]&255L);return(raw>>>32)*1000000000L+(((raw&0xffffffffL)*1000000000L)>>>32);}
 public long local(long sender,long arrival){
  if(sender<=0||arrival<=0)return 0;
  offsets[next]=arrival-sender;next=(next+1)%offsets.length;if(count<offsets.length)count++;
  boolean warm=frames<30;
  if(warm||frames%30==0){long[] sorted=Arrays.copyOf(offsets,count);Arrays.sort(sorted);candidate=sorted[(count-1)*5/100];}frames++;
  if(offset==Long.MIN_VALUE||warm||candidate-offset>500000000L||offset-candidate>100000000L)offset=candidate;
  else{long step=(long)(Math.max(0,arrival-lastArrival)*0.002);offset+=clamp(candidate-offset,-step,step);}lastArrival=arrival;
  long local=sender+offset;return local-arrival>=-1000000000L&&local-arrival<=100000000L?local:0;
 }
 public long delay(){return delay;}
 public void sample(long needed){needs[needNext]=clamp(needed,0,200000000L);needNext=(needNext+1)%needs.length;if(needCount<needs.length)needCount++;
  if(++needFrames%15==0){long[] sorted=Arrays.copyOf(needs,needCount);Arrays.sort(sorted);goal=clamp(sorted[(needCount-1)*90/100]+20000000L,30000000L,200000000L);}delay+=clamp(goal-delay,-500000L,1000000L);
 }
 static long clamp(long n,long lo,long hi){return Math.max(lo,Math.min(n,hi));}
}
