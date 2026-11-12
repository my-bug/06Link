package com.shilapi.xcertplay;
public final class DirectInFlightCheck {
 static int checks;
 static final byte[] IDR={0,0,0,1,0x65,1}, DELTA={0,0,1,0x41,2};
 static final byte[] CONFIG={0,0,0,1,0x67,2,0,0,1,0x68,3};
 static void ok(boolean value,String label){checks++;if(!value)throw new AssertionError(label);}
 public static void main(String[] args){
  E01DirectInFlight slots=new E01DirectInFlight(4);
  ok(slots.pending()==0&&!slots.full(),"new session has all four credits");
  ok(!slots.queued(1,CONFIG)&&!slots.queued(2,new byte[]{0,0,1,6,1})&&slots.pending()==0,"SPS/PPS/SEI packets never consume picture credits");
  ok(slots.queued(10,IDR)&&slots.queued(11,DELTA),"3/4-byte Annex B picture prefixes accepted");
  ok(!slots.queued(10,IDR)&&slots.pending()==2,"repeated input PTS is not double-counted");
  ok(slots.queued(12,new byte[]{0,0,1,0x41,2,0,0,0,1,0x41,3})&&slots.pending()==3,"multiple slices in one access unit count as one picture");
  ok(slots.queued(13,new byte[]{0,0,1,0x67,2,0,0,1,0x65,3})&&slots.full(),"combined config and picture counts once and reaches cap4");
  ok(!slots.decoded(999,0)&&slots.full(),"unknown output PTS does not create an input credit");
  ok(!slots.decoded(10,2)&&!slots.decoded(10,4)&&!slots.decoded(10,6)&&slots.full(),"codec-config/EOS output cannot falsely retire a picture");
  ok(slots.decoded(10,1)&&slots.pending()==3&&!slots.full(),"matching keyframe output retires exactly one input");
  ok(!slots.decoded(10,0)&&slots.pending()==3,"repeated decoded PTS cannot retire another input");
  ok(slots.cancel(11)&&slots.pending()==2,"queue failure can explicitly cancel its own picture reservation");
  ok(!slots.cancel(11)&&!slots.cancel(999)&&slots.pending()==2,"repeated/unknown rollback cannot free unrelated slots");
  slots.reset();ok(slots.pending()==0&&!slots.full(),"teardown or replacement resets all stale credits");
  ok(!slots.decoded(12,0)&&slots.pending()==0,"late retired-session output cannot make credit count negative");
  ok(!E01DirectInFlight.hasPicture(null)&&!E01DirectInFlight.hasPicture(new byte[0]),"missing input is not a frame");
  ok(!E01DirectInFlight.hasPicture(new byte[]{0,0,1})&&!E01DirectInFlight.hasPicture(new byte[]{0,0,0,1}),"truncated start codes are ignored safely");
  ok(!E01DirectInFlight.hasPicture(new byte[]{0,0,0,2,0x65})&&!E01DirectInFlight.hasPicture(new byte[]{0,0,1,9,3}),"non-Annex-B and access-unit delimiters do not count");
  for(int type=1;type<=5;type++)ok(E01DirectInFlight.hasPicture(new byte[]{0,0,1,(byte)type,1}),"AVC VCL type "+type+" counted");
  try{new E01DirectInFlight(0);throw new AssertionError("invalid cap accepted");}catch(IllegalArgumentException expected){checks++;}
  System.out.println("PASS "+checks+" cap4 AVC access-unit/PTS/config/EOS/rollback/reset checks (pure Java)");
 }
}
