package com.shilapi.xcertplay;

import android.content.Context;
import android.media.AudioManager;
import android.provider.Settings;

/** Read-only, per-navigation-segment evidence. No settings/volume writes or polling. */
public final class E01AudioMixDiagnostic {
    private static volatile Context context;
    public static void bind(Context c){
        if(!E01AudioRoute.supported() || c==null)return;
        try{context=c.getApplicationContext();}catch(RuntimeException ignored){}
    }
    public static String state(AudioManager manager){
        if(!E01AudioRoute.supported())return "";
        String mix="未知",music="未知",max="未知",navigation="未知";
        Context c=context;
        if(c!=null)try{mix=Integer.toString(Settings.System.getInt(c.getContentResolver(),"NAVI_MIX_SWITCH",1));}catch(RuntimeException ignored){}
        if(manager!=null){
            try{music=Integer.toString(manager.getStreamVolume(3));}catch(RuntimeException ignored){}
            try{max=Integer.toString(manager.getStreamMaxVolume(3));}catch(RuntimeException ignored){}
            try{navigation=Integer.toString(manager.getStreamVolume(10));}catch(RuntimeException ignored){}
        }
        return " 原厂混音="+mix+" 媒体档="+music+"/"+max+" 导航档="+navigation;
    }
    private E01AudioMixDiagnostic(){}
}
