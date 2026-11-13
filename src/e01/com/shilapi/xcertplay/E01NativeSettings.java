package com.shilapi.xcertplay;

import android.app.Activity;
import android.content.*;
import java.lang.reflect.*;
import java.util.*;

/** UI bindings to the existing production stores. No preview settings or fake devices. */
public final class E01NativeSettings {
    final Activity host;
    final SharedPreferences ui;
    E01NativeSettings(Activity a){host=a;ui=a.getSharedPreferences("06link-native-ui",0);}
    static Object singleton(String name){try{return Class.forName("com.shilapi.xcertplay."+name).getField("INSTANCE").get(null);}catch(Exception e){throw new IllegalStateException(name,e);}}
    static Object call(Object owner,String name,Object...args){
        Class<?> cls=owner instanceof Class?(Class<?>)owner:owner.getClass();
        for(Class<?> k=cls;k!=null;k=k.getSuperclass())for(Method m:k.getDeclaredMethods()){
            if(!m.getName().equals(name)||m.getParameterTypes().length!=args.length)continue;
            Class<?>[] types=m.getParameterTypes();boolean match=true;
            for(int i=0;i<args.length;i++){Class<?> t=types[i];if(t==boolean.class)t=Boolean.class;else if(t==int.class)t=Integer.class;else if(t==long.class)t=Long.class;
                if(args[i]!=null&&!t.isInstance(args[i]))match=false;}
            if(!match)continue;
            try{m.setAccessible(true);return m.invoke(owner instanceof Class?null:owner,args);}catch(Exception e){throw new IllegalStateException(name,e);}
        }
        throw new IllegalArgumentException("Missing binding "+cls.getName()+"."+name);
    }
    static Object field(Object o,String name){try{Field f=o.getClass().getDeclaredField(name);f.setAccessible(true);return f.get(o);}catch(Exception e){throw new IllegalStateException(name,e);}}
    static void field(Object o,String name,Object v){try{Field f=o.getClass().getDeclaredField(name);f.setAccessible(true);f.set(o,v);}catch(Exception e){throw new IllegalStateException(name,e);}}
    static Object value(String type,String name){try{return Class.forName("com.shilapi.xcertplay."+type).getField(name).get(null);}catch(Exception e){throw new IllegalStateException(name,e);}}
    Object load(String suffix){return call(singleton("AirPlayPersistence"),"load"+suffix,host);}
    void save(String suffix,Object v){call(singleton("AirPlayPersistence"),"save"+suffix,host,v);}
    SharedPreferences video(){return host.getSharedPreferences("06link-video",0);}
    SharedPreferences instrument(){return host.getSharedPreferences("06link_instrument",0);}
    boolean bool(String key,boolean ignored){switch(key){
        case "cluster":return (Boolean)load("ClusterMapEnabled");
        case "auto_connect":return (Boolean)call(singleton("DiPlayPreferences"),"autoConnect",host);
        case "location":return (Boolean)load("LocationReportingEnabled");
        case "hevc":return (Boolean)load("HevcEnabled");
        case "immersive":return (Boolean)load("HideTopBar")&&(Boolean)load("HideBottomBar");
        case "audio_focus":return (Boolean)load("AudioFocusEnabled");
        case "wired_navigation_hd":return E01NavigationVoice.enabled(host);
        case "smooth":return video().getBoolean("smooth",false);
        case "mtk":return video().getBoolean("mtk",true);
        case "display60":return E01DisplayClock.enabled(host);
        case "intro":return instrument().getBoolean("transition_enabled",true);
        case "music":return instrument().getBoolean("music_enabled",true);
        case "tracks":E01WheelKeys.init(host);return E01WheelKeys.isEnabled();
        case "play":E01WheelKeys.init(host);return E01WheelKeys.isPlayPauseEnabled();
        case "siri":E01SiriKey.init(host);return E01SiriKey.isEnabled();
        default:throw new IllegalArgumentException(key);
    }}
    String string(String key,String ignored){switch(key){
        case "default_connection":return ui.getString(key,"无线");
        case "phone":return E01OemBluetooth.selectedPhoneName(host);
        case "ssid":String ssid=E01HotspotSettings.customName(host);if(ssid!=null)return ssid;call(singleton("AirPlayPersistence"),"syncManualHotspotFromSystem",host);ssid=String.valueOf(load("ManualHotspotSsid"));return ssid.isEmpty()?String.valueOf(call(singleton("network.FreeAutoHotspotName"),"name",host,"")):ssid;
        case "password":String pass=host.getSharedPreferences("free_auto_hotspot_name",0).getString("password",null);return pass!=null?pass:load("ManualHotspotPassphrase").toString();
        case "layout":String layout=instrument().getString("layout","card");return "mist".equals(layout)?"雾蓝仪表":"full".equals(layout)?"全屏地图":"信息卡片";
        case "map_size":int scale=(Integer)load("ClusterMapScalePercent");return scale==100?"标准":scale==83?"较大":scale==67?"最大":scale+"%";
        case "fps":if(force60(host))return "强制 60 帧";return (Boolean)load("FpsAuto")?"自动 · 30 帧":load("Fps")+" 帧";
        case "quality":int q=(Integer)load("DisplayScaleTenths");return q==10?"原始分辨率":q==8?"均衡":q==6?"低负载":(q*10)+"%";
        case "size":int sz=(Integer)load("UiScalePercent");return sz==100?"标准":sz==85?"较小":sz==115?"较大":sz+"%";
        case "rotation":String rot=call(singleton("ScreenRotation"),"saved",host).toString();return rot.equals("AUTO")?"自动":rot.substring(1)+"°";
        case "appearance":String mode=call(singleton("Appearance"),"mode",host).toString();return mode.equals("LIGHT")?"白天":mode.equals("DARK")?"夜间":"跟随系统";
        case "driver":return (Boolean)load("RightHandDrive")?"右侧":"左侧";
        case "buffer":int b=(Integer)load("MediaBufferMillis");return b==100?"最低":b==300?"标准":b==500?"较大":b+" ms";
        case "current":return E01WiredUi.current(host)==500?"0.5 A":E01WiredUi.current(host)==1500?"1.5 A":"2.4 A";
        default:throw new IllegalArgumentException(key);
    }}
    void set(String key,Object v){boolean ok=true;switch(key){
        case "default_connection":ok=ui.edit().putString(key,(String)v).commit();break;
        case "auto_connect":call(singleton("DiPlayPreferences"),"saveAutoConnect",host,v);break;
        case "cluster":save("ClusterMapEnabled",v);call(singleton("GenericClusterPlaceholder"),"ensure",host);break;
        case "location":save("LocationReportingEnabled",v);break;
        case "hevc":save("HevcEnabled",v);break;
        case "audio_focus":save("AudioFocusEnabled",v);break;
        case "wired_navigation_hd":ok=E01NavigationVoice.save(host,(Boolean)v);break;
        case "immersive":save("HideTopBar",v);save("HideBottomBar",v);call(singleton("CarDisplay"),"fullScreen",host);break;
        case "smooth":case "mtk":case "display60":ok=video().edit().putBoolean(key,(Boolean)v).commit();break;
        case "intro":ok=instrument().edit().putBoolean("transition_enabled",(Boolean)v).commit();break;
        case "music":ok=instrument().edit().putBoolean("music_enabled",(Boolean)v).commit();break;
        case "tracks":ok=E01WheelKeys.setEnabled(host,(Boolean)v);break;
        case "play":ok=E01WheelKeys.setPlayPauseEnabled(host,(Boolean)v);break;
        case "siri":ok=E01SiriKey.setEnabled(host,(Boolean)v);break;
        case "layout":ok=instrument().edit().putString("layout",v.equals("雾蓝仪表")?"mist":v.equals("全屏地图")?"full":"card").commit();break;
        case "map_size":save("ClusterMapScalePercent",v.equals("标准")?100:v.equals("较大")?83:67);break;
        case "quality":save("DisplayScaleTenths",v.equals("原始分辨率")?10:v.equals("均衡")?8:6);break;
        case "size":save("UiScalePercent",v.equals("标准")?100:v.equals("较小")?85:115);break;
        case "buffer":save("MediaBufferMillis",v.equals("最低")?100:v.equals("标准")?300:500);break;
        case "driver":save("RightHandDrive",v.equals("右侧"));break;
        case "current":ok=E01WiredUi.save(host,v.equals("0.5 A")?500:v.equals("1.5 A")?1500:2400);break;
        case "rotation":call(singleton("ScreenRotation"),"save",host,value("ScreenRotation$Choice",v.equals("自动")?"AUTO":"R"+v.toString().replace("°","")));call(singleton("CarDisplay"),"fullScreen",host);host.recreate();break;
        case "appearance":call(singleton("Appearance"),"save",host,value("Appearance$Mode",v.equals("白天")?"LIGHT":v.equals("夜间")?"DARK":"AUTO"));call(host,"applyAppearance");break;
        case "fps":boolean force=v.equals("强制 60 帧");ok=video().edit().putBoolean("force60",force).commit();if(v.equals("自动 · 30 帧"))call(singleton("AirPlayPersistence"),"saveFpsAuto",host);else save("ManualFps",v.equals("30 帧")?30:60);break;
        default:throw new IllegalArgumentException(key);
    }if(!ok)throw new IllegalStateException("保存失败");}
    public static Object appearance(Context c){String name=c.getSharedPreferences("06link-native-ui",0).getString("appearance_mode","AUTO");if(!name.equals("LIGHT")&&!name.equals("DARK"))name="AUTO";return value("Appearance$Mode",name);}
    public static void saveAppearance(Context c,Object mode){c.getSharedPreferences("06link-native-ui",0).edit().putString("appearance_mode",mode.toString()).apply();}
    public static boolean force60(Context c){return E01FrameRatePolicy.force60(c);}
    public static Object filterAdaptation(Context c,Object a){if(!force60(c)||!(Boolean)call(a,"getTo30Fps"))return a;if(!(Boolean)call(a,"getToH264"))return null;try{return a.getClass().getConstructor(boolean.class,boolean.class,String.class).newInstance(false,true,call(a,"getWhy"));}catch(Exception e){throw new IllegalStateException(e);}}
    public static boolean reduceFps(Context c,boolean requested){return requested&&!force60(c);}
    public static boolean musicVisible(Context c){return c.getSharedPreferences("06link_instrument",0).getBoolean("music_enabled",true);}
    private static final Map<Activity,Boolean> startupModes=new WeakHashMap<Activity,Boolean>();
    private static String startupMode(Activity a){return a.getSharedPreferences("06link-native-ui",0).getString("default_connection","无线");}
    private static boolean connectionActive(){
        String phase=call(call(singleton("ConnectionProgress"),"getState"),"getPhase").toString();
        return phase.equals("CONNECTING")||phase.equals("RECONNECTING")||phase.equals("CONNECTED")
            ||(Boolean)call(singleton("CarPlayBackgroundSession"),"hasSession")
            ||(Boolean)call(singleton("HostLaunch"),"connecting");
    }
    private static boolean automaticAllowed(Activity a){
        if(E01BuildVariant.isPreview(a))return false;
        if(a.isFinishing()||a.isDestroyed()||E01HotspotControl.userStopped(false))return false;
        if(!(Boolean)call(singleton("DiPlayPreferences"),"autoConnect",a))return false;
        String mode=startupMode(a);
        return (mode.equals("无线")||mode.equals("有线"))
            && !(Boolean)call(singleton("HostLaunch"),"getUserStopped")&&!connectionActive();
    }
    /** Eligibility is based on the saved startup intent, not Android's unrelated bonded list. */
    public static boolean startupEligible(Activity a){
        return automaticAllowed(a)&&!(Boolean)field(a,"autoStartWaiting")&&!E01OemBluetooth.hasPendingConnect();
    }
    /** An idle non-wireless default must not let the OEM poller warm up a hotspot. */
    public static void prepareStartup(Activity a){
        if(E01BuildVariant.isPreview(a))return;
        if(a.isFinishing()||a.isDestroyed()||E01HotspotControl.userStopped(false)
                ||connectionActive()||(Boolean)field(a,"autoStartWaiting")||E01OemBluetooth.hasPendingConnect())return;
        if(!startupMode(a).equals("无线")){
            if(E01HotspotControl.automaticConnection(false))E01StartupHotspot.cancel();
        }
    }
    public static void defaultConnection(Activity a){
        if(field(a,"pendingAutoConnect")==null)return;
        if(!startupEligible(a)){field(a,"pendingAutoConnect",null);return;}
        boolean wireless=startupMode(a).equals("无线");
        field(a,"pendingAutoConnect",wireless);
        startupModes.put(a,wireless);
        field(a,"autoStartWaiting",true);
    }
    /** A posted launch may have been superseded by Stop, a manual start, or a live session. */
    public static boolean continueStartup(Activity a){
        if(!(Boolean)field(a,"autoStartWaiting"))return false;
        if(automaticAllowed(a))return true;
        field(a,"autoStartWaiting",false);return false;
    }
    /** Called after the original automatic-connect stop/session checks. */
    public static boolean beforeAutomaticConnect(Activity a,boolean wireless){
        return E01WiredUi.beforeAutomaticConnect(a,wireless);
    }
    /** Pure memory reads for the home screen; the poller owns all readiness queries. */
    public static String startupStatus(Activity a){
        String pending=E01OemBluetooth.pendingStatus(a);
        if(!pending.isEmpty())return pending;
        return (Boolean)field(a,"autoStartWaiting")?"正在准备启动连接":"";
    }
    public static boolean startupWireless(Activity a){
        if(E01OemBluetooth.hasPendingConnect(a))return true;
        Boolean wireless=startupModes.get(a);return wireless==null||wireless;
    }
    public static void cancelStartup(Activity a){
        field(a,"autoStartWaiting",false);field(a,"pendingAutoConnect",null);
        startupModes.remove(a);E01HotspotControl.pause();
    }
}
