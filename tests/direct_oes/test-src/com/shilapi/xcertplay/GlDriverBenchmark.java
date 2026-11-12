package com.shilapi.xcertplay;
/** Same fake driver load may be run against the previous and new actual renderer source. */
public final class GlDriverBenchmark {
 public static void main(String[]args)throws Exception {
  GlEventCheck.busyDriver(17000000L,60);
  GlEventCheck.busyDriver(20000000L,60);
 }
}
