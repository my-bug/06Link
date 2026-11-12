package com.shilapi.xcertplay;
import java.util.Locale;
public final class E01MtkTuning {
 private E01MtkTuning(){}
 public static boolean requested(String name,boolean enabled,boolean tuned){return enabled&&tuned&&name!=null&&name.toUpperCase(Locale.ROOT).startsWith("OMX.MTK.");}
}
