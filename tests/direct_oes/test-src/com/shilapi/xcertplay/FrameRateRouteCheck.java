package com.shilapi.xcertplay;
import android.app.Activity;
import android.os.Build;
public final class FrameRateRouteCheck {
    static int checks;
    static void check(boolean b,String m){checks++;if(!b)throw new AssertionError(m);}
    public static void main(String[] args) {
        Build.MODEL="E01";Build.DEVICE="BX11QJ";Build.VERSION.SDK_INT=22;
        for(boolean legacyForce:new boolean[]{false,true}) {
            Activity a=new Activity();
            a.getSharedPreferences("xcertplay_airplay",0).values.put("display_fps",60);
            a.getSharedPreferences("xcertplay_airplay",0).values.put("display_fps_mode",legacyForce?"auto":"manual");
            a.getSharedPreferences("06link-video",0).values.put("force60",legacyForce);
            a.getSharedPreferences("xcertplay_airplay",0).values.put("display_fps60_unsustainable",true);
            check(E01SmoothVideo.fps(a)==60,"ordinary and legacy forced 60 share the same render preference");
            check(E01SmoothVideo.wantsDirect(a),"60 selects the existing E01 direct output route before negotiation");
            E01SmoothVideo.negotiatedFps(a,E01FrameRatePolicy.selectedFps(a));
            check(E01SmoothVideo.selectedFps(a)==60,"negotiation and rendering agree");
            E01FrameRatePolicy.save(a,30);
            check(E01SmoothVideo.selectedFps(a)==60,"saving for the next session does not change the current codec");
            E01SmoothVideo.negotiatedFps(a,E01FrameRatePolicy.selectedFps(a));
            check(!E01SmoothVideo.wantsDirect(a)&&E01SmoothVideo.selectedFps(a)==30,"manual30 applies at reconnect");
            E01FrameRatePolicy.save(a,60);
            E01SmoothVideo.negotiatedFps(a,E01FrameRatePolicy.selectedFps(a));
            check(E01SmoothVideo.wantsDirect(a)&&E01SmoothVideo.selectedFps(a)==60,"manual60 restores direct output without an extra force switch");
        }
        System.out.println("PASS "+checks+" production preference/negotiation/render route checks");
    }
}
