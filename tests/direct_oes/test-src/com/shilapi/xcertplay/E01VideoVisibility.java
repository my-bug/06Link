package com.shilapi.xcertplay;
// Actual visibility policy is exercised separately by tests/video_visibility.
final class E01VideoVisibility {
 static final java.util.Map<android.app.Activity,android.view.Surface> surfaces = java.util.Collections.synchronizedMap(new java.util.WeakHashMap<android.app.Activity,android.view.Surface>());
 static final java.util.Set<android.app.Activity> paused = java.util.Collections.newSetFromMap(new java.util.WeakHashMap<android.app.Activity,Boolean>());
 static synchronized boolean visible(android.app.Activity a,android.view.Surface s) { return a!=null&&!a.isFinishing()&&!a.isDestroyed()&&!paused.contains(a)&&s!=null&&s.isValid()&&surfaces.get(a)==s; }
 static void surfaceReady(android.app.Activity a,android.view.Surface s) { surfaces.put(a,s);E01DirectOutputClock.refresh(a); }
 static void surfaceLost(android.app.Activity a,android.view.Surface s) { if(surfaces.get(a)==s)surfaces.remove(a);E01DirectOutputClock.refresh(a); }
}
