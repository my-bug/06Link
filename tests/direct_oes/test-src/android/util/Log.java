package android.util;
public class Log {
 public static java.util.function.Consumer<String> onInfo;
 public static int i(String tag,String message) {
  if (onInfo!=null) onInfo.accept(message);
  return 0;
 }
 public static int w(String a,String b){return 0;}
 public static int w(String a,String b,Throwable c){return 0;}
}
