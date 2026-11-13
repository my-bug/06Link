package android.content;
import java.util.*;
public final class Context {
 public final Map<String, Prefs> stores = new HashMap<String, Prefs>();
 public int reads;
 public Prefs getSharedPreferences(String name, int mode) {
  reads++;
  if (!stores.containsKey(name)) stores.put(name,new Prefs());
  return stores.get(name);
 }
 public static final class Prefs implements SharedPreferences {
  final Map<String, Boolean> values = new HashMap<String, Boolean>();
  public boolean canSave=true;
  public boolean getBoolean(String key,boolean fallback) { return values.containsKey(key)?values.get(key):fallback; }
  public Editor edit() {
   return new Editor() {
    String name;boolean value;
    public Editor putBoolean(String key,boolean enabled) { name=key;value=enabled;return this; }
    public boolean commit() { if(!canSave)return false;values.put(name,value);return true; }
   };
  }
 }
}
