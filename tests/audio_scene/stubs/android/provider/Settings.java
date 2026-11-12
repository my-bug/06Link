package android.provider;
import android.content.ContentResolver;
public class Settings {
    public static class System {
        public static Integer value;
        public static boolean fail;
        public static int reads,writes,lastDefault;
        public static ContentResolver lastResolver;
        public static String lastKey;
        public static int getInt(ContentResolver resolver,String key,int fallback){
            reads++;lastResolver=resolver;lastKey=key;lastDefault=fallback;
            if(fail)throw new SecurityException("setting unreadable");return value==null?fallback:value.intValue();
        }
        public static boolean putInt(ContentResolver resolver,String key,int value){writes++;throw new AssertionError("diagnostic must never change Settings");}
    }
}
