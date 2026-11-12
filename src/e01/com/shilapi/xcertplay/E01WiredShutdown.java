package com.shilapi.xcertplay;
import android.app.Activity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
/** Keep the wired host alive until controller and media teardown have completed. */
public final class E01WiredShutdown {
 public static Function0<Unit> finishWhenClosed(final Activity host) {
  return new Function0<Unit>() { public Unit invoke() {
   if(!host.isFinishing()) host.finish();
   return Unit.INSTANCE;
  }};
 }
 private E01WiredShutdown(){}
}
