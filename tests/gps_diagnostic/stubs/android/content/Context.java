package android.content;
import java.io.File;
import android.Manifest;
import android.location.LocationManager;
public class Context {
    public static final String LOCATION_SERVICE="location";
    public int finePermission=0, coarsePermission=0;
    public RuntimeException permissionFailure;
    public LocationManager manager=new LocationManager();
    public Context applicationContext=this;
    public File filesDir=new File(System.getProperty("java.io.tmpdir"));
    public File externalFilesDir;
    public Context getApplicationContext(){return applicationContext;}
    public int checkCallingOrSelfPermission(String permission){
        if(permissionFailure!=null)throw permissionFailure;
        return Manifest.permission.ACCESS_FINE_LOCATION.equals(permission)?finePermission:coarsePermission;
    }
    public Object getSystemService(String name){return manager;}
    public File getFilesDir(){return filesDir;}
    public File getExternalFilesDir(String type){return externalFilesDir;}
}
