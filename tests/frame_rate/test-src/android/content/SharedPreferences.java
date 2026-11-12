package android.content;
public interface SharedPreferences {
    String getString(String key, String fallback);
    boolean getBoolean(String key, boolean fallback);
    int getInt(String key, int fallback);
    boolean contains(String key);
    Editor edit();
    interface Editor { Editor remove(String key); void apply(); }
}
