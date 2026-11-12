package com.shilapi.xcertplay;
import android.app.Activity;
import android.os.Build;
import android.view.Surface;

/** Real direct-clock owner helper, with no privileged commands or real display changes. */
public final class DirectClockCheck {
 static int checks;
 static void ok(boolean value,String label){checks++;if(!value)throw new AssertionError(label);}
 static void visible(Activity a,Surface s){E01VideoVisibility.surfaceReady(a,s);E01DirectOutputClock.refresh(a);}
 public static void main(String[] args){
  Build.MODEL="E01";Build.DEVICE="BX11QJ";Build.VERSION.SDK_INT=22;
  Activity a=new Activity();Surface first=new Surface();visible(a,first);
  ok(E01DirectOutputClock.acquire(a,first,30)==null,"30 fps does not request a direct display-clock lease");
  Build.MODEL="tablet";ok(E01DirectOutputClock.acquire(a,first,60)==null,"other model excluded");Build.MODEL="E01";
  Build.VERSION.SDK_INT=23;ok(E01DirectOutputClock.acquire(a,first,60)==null,"other API excluded");Build.VERSION.SDK_INT=22;
  Build.DEVICE="other";ok(E01DirectOutputClock.acquire(a,first,60)==null,"other board excluded");Build.DEVICE="BX11QJ";
  ok(E01DirectOutputClock.acquire(null,first,60)==null&&E01DirectOutputClock.acquire(a,null,60)==null,"missing display owner is harmless");
  E01DirectOutputClock.Lease old=E01DirectOutputClock.acquire(a,first,60);
  ok(old!=null&&E01DisplayClock.leases.containsKey(old),"visible direct codec acquires its own owner identity");
  E01VideoVisibility.paused.add(a);E01DirectOutputClock.refresh(a);
  ok(E01DisplayClock.leases.isEmpty()&&!old.closed,"pause drops active lease but permits resumption");
  E01VideoVisibility.paused.remove(a);E01DirectOutputClock.refresh(a);
  ok(E01DisplayClock.leases.containsKey(old),"resume restores the same codec owner");
  Surface second=new Surface();visible(a,second);
  ok(!E01DisplayClock.leases.containsKey(old),"replacement surface retires old visible clock claim");
  E01DirectOutputClock.Lease next=E01DirectOutputClock.acquire(a,second,60);
  E01DirectOutputClock.release(old);E01DirectOutputClock.refresh(a);
  ok(old.closed&&E01DisplayClock.leases.size()==1&&E01DisplayClock.leases.containsKey(next),"delayed old codec cleanup cannot withdraw replacement lease");
  E01DirectOutputClock.Lease twin=E01DirectOutputClock.acquire(a,second,60);
  ok(E01DisplayClock.leases.size()==2&&next!=twin,"two codecs have independent leases even on one surface");
  E01DirectOutputClock.release(next);
  ok(E01DisplayClock.leases.size()==1&&E01DisplayClock.leases.containsKey(twin),"releasing one codec keeps the other lease");
  E01DirectOutputClock.release(next);E01DirectOutputClock.refresh(a);
  ok(E01DisplayClock.leases.size()==1,"repeat close never reacquires or disturbs live owner");
  a.finishing=true;E01DirectOutputClock.refresh(a);ok(E01DisplayClock.leases.isEmpty(),"finishing activity drops display clock");
  a.finishing=false;a.destroyed=true;E01DirectOutputClock.refresh(a);ok(E01DisplayClock.leases.isEmpty(),"destroyed activity remains unleased");
  a.destroyed=false;E01DirectOutputClock.refresh(a);ok(E01DisplayClock.leases.containsKey(twin),"valid owner can resume without rebuilding its codec");
  second.release();E01DirectOutputClock.refresh(a);ok(E01DisplayClock.leases.isEmpty(),"invalid native surface cannot hold display clock");
  E01DirectOutputClock.release(twin);visible(a,first);
  E01DisplayClock.enabled=false;E01DirectOutputClock.Lease off=E01DirectOutputClock.acquire(a,first,60);
  ok(off!=null&&E01DisplayClock.leases.isEmpty(),"disabled display option never issues a lease");
  E01DisplayClock.enabled=true;E01DirectOutputClock.refresh(a);ok(E01DisplayClock.leases.containsKey(off),"reenabling option restores a still-visible owner");
  E01DirectOutputClock.release(off);
  E01DisplayClock.acquireFailure=new IllegalStateException("synthetic partial registration");E01LogPolicy.messages.clear();
  E01DirectOutputClock.Lease failed=E01DirectOutputClock.acquire(a,first,60);
  ok(failed!=null&&failed.failed&&E01DisplayClock.leases.isEmpty(),"clock failure removes a partially inserted lease without failing video");
  ok(E01LogPolicy.messages.size()==1,"one bounded failure record");
  E01DisplayClock.acquireFailure=null;E01DirectOutputClock.refresh(a);E01DirectOutputClock.refresh(a);
  ok(E01DisplayClock.leases.isEmpty()&&E01LogPolicy.messages.size()==1,"uncertain failed request is not retried on every refresh");
  E01DirectOutputClock.release(failed);
  E01DirectOutputClock.Lease lost=E01DirectOutputClock.acquire(a,first,60);lost.surface.clear();E01DirectOutputClock.refresh(a);
  ok(lost.closed&&E01DisplayClock.leases.isEmpty(),"collected weak surface owner releases its claim");
  E01DirectOutputClock.release(lost);E01DirectOutputClock.release(null);
  ok(E01DisplayClock.leases.isEmpty(),"all owners cleaned without display-clock leak");
  System.out.println("PASS "+checks+" direct-clock visibility/owner replacement/pause/error/eligibility checks (fake display clock; no vehicle commands)");
 }
}
