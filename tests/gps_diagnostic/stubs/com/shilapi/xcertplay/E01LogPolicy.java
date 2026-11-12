package com.shilapi.xcertplay;
import android.content.Context;
import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
public final class E01LogPolicy {
    private static final List<String> ROWS=new ArrayList<String>();
    private static final List<String> VIOLATIONS=new ArrayList<String>();
    public static void install(Context context){checkWriter();}
    public static void append(File file,String text){
        checkWriter();
        synchronized(ROWS){ROWS.add(text);}
    }
    private static void checkWriter(){
        try{
            Field field=E01GpsDiagnostic.class.getDeclaredField("LOCK");field.setAccessible(true);
            if(java.lang.Thread.holdsLock(field.get(null)))violation("File logging while holding diagnostic lock");
            if(!"06Link-GPS-diagnostic".equals(java.lang.Thread.currentThread().getName()))violation("File logging on hook/caller thread");
            try{
                Class<?> probe=Class.forName("com.shilapi.xcertplay.E01GpsLinkProbe");
                Field probeLock=probe.getDeclaredField("LOCK");probeLock.setAccessible(true);
                if(java.lang.Thread.holdsLock(probeLock.get(null)))violation("File logging while holding link-probe lock");
            }catch(ClassNotFoundException absent){ /* Main suite intentionally isolates the helper. */ }
        }catch(ReflectiveOperationException failure){violation("Unable to inspect diagnostic lock");}
    }
    private static void violation(String text){synchronized(VIOLATIONS){VIOLATIONS.add(text);}}
    static List<String> rows(){synchronized(ROWS){return new ArrayList<String>(ROWS);}}
    static List<String> violations(){synchronized(VIOLATIONS){return new ArrayList<String>(VIOLATIONS);}}
    static void reset(){synchronized(ROWS){ROWS.clear();}synchronized(VIOLATIONS){VIOLATIONS.clear();}}
}
