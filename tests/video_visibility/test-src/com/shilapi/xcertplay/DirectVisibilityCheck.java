package com.shilapi.xcertplay;
import android.app.Activity;
import android.os.Build;
import android.os.SystemClock;
import android.view.Surface;

/** Production visibility policy and production direct-clock helper together. */
public final class DirectVisibilityCheck {
 static int checks;
 static void ok(boolean value,String label){checks++;if(!value)throw new AssertionError(label);}
 public static void main(String[] args){
  Build.MODEL="E01";Build.DEVICE="BX11QJ";Build.VERSION.SDK_INT=22;
  VisibilityCheck.Run r=new VisibilityCheck.Run();
  E01VideoVisibility.surfaceReady(r.owner,r.surface);
  E01DirectOutputClock.Lease lease=E01DirectOutputClock.acquire(r.owner,r.surface,60);
  ok(E01DisplayClock.leases.isEmpty(),"surface-ready before onResume cannot request display clock");
  E01VideoVisibility.resumed(r.owner);
  ok(E01DisplayClock.leases.containsKey(lease),"real resume hook activates existing lease");
  ok(!r.window()&&r.window(),"normal visible warmup retained with direct output clock");
  Object prior=r.decision();
  E01VideoVisibility.paused(r.owner);
  ok(E01DisplayClock.leases.isEmpty(),"opening settings immediately drops direct display clock");
  SystemClock.now+=60000;
  ok(!r.window()&&!E01VideoVisibility.allowSessionAdaptation(r.owner),"background zero-output cannot trigger FPS or session downgrade");
  ok(!E01VideoVisibility.takeDecision(r.owner,prior),"queued foreground downgrade is cancelled by settings");
  E01VideoVisibility.resumed(r.owner);
  ok(E01DisplayClock.leases.containsKey(lease),"return from settings restores direct display clock");
  ok(!r.window()&&r.window(),"return drops mixed interval and resumes real load judgement");
  Surface old=r.surface;r.surface=new Surface();E01VideoVisibility.surfaceReady(r.owner,r.surface);
  ok(!E01DisplayClock.leases.containsKey(lease),"ready hook removes lease whose exact Surface no longer matches");
  E01DirectOutputClock.Lease replacement=E01DirectOutputClock.acquire(r.owner,r.surface,60);
  E01VideoVisibility.surfaceLost(r.owner,old);E01DirectOutputClock.release(lease);
  ok(E01DisplayClock.leases.size()==1&&E01DisplayClock.leases.containsKey(replacement),"old Surface loss and delayed codec release preserve new owner");
  E01VideoVisibility.surfaceLost(r.owner,r.surface);
  ok(E01DisplayClock.leases.isEmpty()&&!r.window(),"current Surface loss removes clock and load eligibility together");
  E01VideoVisibility.surfaceReady(r.owner,r.surface);
  ok(E01DisplayClock.leases.containsKey(replacement),"current Surface return reacquires only its codec lease");
  E01VideoVisibility.destroyed(r.owner);
  ok(E01DisplayClock.leases.isEmpty()&&!r.window(),"destroy hook drops lease before removing Activity eligibility");
  E01DirectOutputClock.release(replacement);
  System.out.println("PASS "+checks+" direct-clock/actual-visibility settings-return/replacement integration checks (fake clock; real policies)");
 }
}
