package android.location;
public class LocationManager {
    public boolean gps=true, network=true;
    public RuntimeException failure;
    public boolean isProviderEnabled(String provider){
        if(failure!=null)throw failure;
        return "gps".equals(provider)?gps:network;
    }
}
