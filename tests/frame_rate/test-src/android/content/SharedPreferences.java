package android.content;
public interface SharedPreferences {
    String getString(String key, String fallback);
    boolean getBoolean(String key, boolean fallback);
    int getInt(String key, int fallback);
    boolean contains(String key);
    Editor edit();
    interface Editor {
        Editor remove(String key);
        Editor putInt(String key, int value);
        Editor putBoolean(String key, boolean value);
        void apply();
        boolean commit();
    }
}
