package com.shilapi.xcertplay;
// Clock ownership/privilege behavior is tested separately by clock-java-tests.
final class E01DisplayClock {
 static final java.util.Map<Object,Integer> leases = new java.util.concurrent.ConcurrentHashMap<Object,Integer>();
 static final java.util.Map<Object,String> releaseThreads = new java.util.concurrent.ConcurrentHashMap<Object,String>();
 static volatile RuntimeException acquireFailure;
 static boolean enabled=true;
 static boolean enabled(android.content.Context c){return enabled;}
 static void acquire(android.content.Context c,Object owner,int fps) { if(fps>=60)leases.put(owner,fps);else leases.remove(owner);if(acquireFailure!=null)throw acquireFailure; }
 static void release(Object owner) { leases.remove(owner);releaseThreads.put(owner,Thread.currentThread().getName()); }
}
