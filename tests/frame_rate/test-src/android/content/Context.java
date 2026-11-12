package android.content;
import java.util.*;
public class Context {
    public final Map<String, Prefs> stores = new HashMap<String, Prefs>();
    public Prefs getSharedPreferences(String name, int mode) {
        if (!stores.containsKey(name)) stores.put(name, new Prefs());
        return stores.get(name);
    }
    public static final class Prefs implements SharedPreferences {
        public final Map<String, Object> values = new HashMap<String, Object>();
        public int writes;
        public String getString(String key, String fallback) { return values.containsKey(key) ? (String)values.get(key) : fallback; }
        public boolean getBoolean(String key, boolean fallback) { return values.containsKey(key) ? (Boolean)values.get(key) : fallback; }
        public int getInt(String key, int fallback) { return values.containsKey(key) ? (Integer)values.get(key) : fallback; }
        public boolean contains(String key) { return values.containsKey(key); }
        public Editor edit() {
            return new Editor() {
                final Set<String> removed = new HashSet<String>();
                public Editor remove(String key) { removed.add(key); return this; }
                public void apply() { for (String key : removed) values.remove(key); writes++; }
            };
        }
    }
}
