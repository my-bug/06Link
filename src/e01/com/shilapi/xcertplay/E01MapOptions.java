package com.shilapi.xcertplay;
import android.content.Context;
import android.widget.Button;
import android.widget.LinearLayout;
import android.view.View;
/** Two projection layouts; persisted independently from phone map density. */
public final class E01MapOptions implements View.OnClickListener {
    private final Context context;private final Button button;
    private E01MapOptions(Context c,Button b){context=c;button=b;refresh();}
    private static Context application(){try{return (Context)Class.forName("android.app.ActivityThread").getMethod("currentApplication").invoke(null);}catch(Exception e){return null;}}
    public static boolean fullscreen(){Context c=application();return c!=null&&"full".equals(c.getSharedPreferences("06link_instrument",0).getString("layout","card"));}
    private void refresh(){button.setText("投屏样式："+("full".equals(context.getSharedPreferences("06link_instrument",0).getString("layout","card"))?"全屏地图":"信息卡片")+"（重连生效）");}
    public static void add(Context c,LinearLayout parent){Button b=new Button(c);E01HotspotSettings.styleActionButton(b);b.setOnClickListener(new E01MapOptions(c,b));parent.addView(b);E01MapZoom.add(c,parent);E01ClusterIntro.addSettings(c,parent);}
    public void onClick(View v){boolean full="full".equals(context.getSharedPreferences("06link_instrument",0).getString("layout","card"));context.getSharedPreferences("06link_instrument",0).edit().putString("layout",full?"card":"full").commit();refresh();}
    /** E01's framework requires both network permission and STA-off before CMD_SET_AP. */
    static String startHotspot(Context c){return startHotspot(c,E01HotspotControl.token());}
    static String startHotspot(Context c,long token){
        if(!E01HotspotControl.valid(token))return "CANCELLED";
        if(android.os.Build.VERSION.SDK_INT!=22||!"E01".equals(android.os.Build.MODEL))return "UNSUPPORTED";
        synchronized(E01MapOptions.class){
            if(!E01HotspotControl.enter(token))return "CANCELLED";
            try{return startHotspotCurrent(c);}
            finally{E01HotspotControl.leave();}
        }
    }
    private static String startHotspotCurrent(Context c){
            android.net.wifi.WifiManager wifi=null;
            boolean restoreWifi=false;
            String result="ERROR";
            try{
                Context app=c.getApplicationContext();if(app==null)app=c;
                Object service=app.getSystemService("wifi");
                if(!(service instanceof android.net.wifi.WifiManager))return "UNSUPPORTED";
                wifi=(android.net.wifi.WifiManager)service;
                Integer ap=hotspotState(wifi);
                if(ap==null)return "UNSUPPORTED";
                if(!E01HotspotControl.allowed())return "CANCELLED";
                if(ap.intValue()==13||ap.intValue()==12)return requestHotspot(c);
                if(ap.intValue()==10)return "HOTSPOT_STOPPING";
                if(c.checkCallingOrSelfPermission("android.permission.CHANGE_NETWORK_STATE")!=0)return "NEEDS_NETWORK_STATE";
                int state=wifi.getWifiState();
                if(state==2||state==3){
                    restoreWifi=true;
                    if(!E01HotspotControl.disableWifi(wifi))result="WIFI_DISABLE_REFUSED";
                    else if(!awaitWifiOff(wifi))result="WIFI_DISABLE_TIMED_OUT";
                    else result=requestHotspot(c);
                }else if(state==0){
                    result=awaitWifiOff(wifi)?requestHotspot(c):"WIFI_DISABLE_TIMED_OUT";
                }else if(state==1){
                    result=requestHotspot(c);
                }else result="WIFI_STATE_UNKNOWN";
            }catch(InterruptedException e){Thread.currentThread().interrupt();result="INTERRUPTED";}
             catch(RuntimeException e){result="ERROR_"+e.getClass().getSimpleName();}
             catch(LinkageError e){result="ERROR_"+e.getClass().getSimpleName();}
            if(!E01HotspotControl.allowed())return "CANCELLED";
            if(restoreWifi&&!"SWITCHED_ON".equals(result)&&!"ALREADY_ON".equals(result)){
                // Restore only our own client-mode change, never interrupt a live or starting AP.
                Integer ap=hotspotState(wifi);
                if(ap!=null&&(ap.intValue()==11||ap.intValue()==14)){
                    try{if(!E01HotspotControl.restoreWifi(wifi))result+="_WIFI_RESTORE_REFUSED";}
                    catch(RuntimeException failure){result+="_WIFI_RESTORE_ERROR";}
                }
            }
            return result;
    }
    private static String requestHotspot(Context c){
        if(!E01HotspotControl.allowed())return "CANCELLED";
        String result=com.shilapi.xcertplay.network.LegacySoftApManager.Companion.switchOnSystemHotspot$default(
            com.shilapi.xcertplay.network.LegacySoftApManager.Companion,c,10000L,null,4,null).name();
        return E01HotspotControl.allowed()?result:"CANCELLED";
    }
    private static Integer hotspotState(android.net.wifi.WifiManager wifi){
        try{return (Integer)android.net.wifi.WifiManager.class.getMethod("getWifiApState").invoke(wifi);}
        catch(Exception unavailable){return null;}
    }
    private static boolean awaitWifiOff(android.net.wifi.WifiManager wifi)throws InterruptedException{
        long until=android.os.SystemClock.elapsedRealtime()+5000L;
        while(wifi.getWifiState()!=1){
            if(!E01HotspotControl.allowed()||android.os.SystemClock.elapsedRealtime()>=until)return false;
            Thread.sleep(100L);
        }
        return true;
    }
    public static void ensureHotspot(Context c){startHotspot(c);}
}
