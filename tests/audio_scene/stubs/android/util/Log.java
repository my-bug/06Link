package android.util;
public final class Log {
    public static final java.util.List<String> entries=new java.util.ArrayList<String>();
    public static int i(String tag,String text){entries.add(tag+":"+text);return 0;}
    public static int w(String tag,String text){entries.add(tag+":"+text);return 0;}
    public static int w(String tag,String text,Throwable e){return w(tag,text);}
}
