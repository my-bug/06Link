package com.shilapi.xcertplay;

import android.content.Context;
import android.media.AudioManager;
import android.provider.Settings;

public final class AudioMixDiagnosticTest {
    private static int checks;
    private static void check(boolean value,String why){checks++;if(!value)throw new AssertionError(why);}
    private static void initial(){
        AudioManager m=new AudioManager();String s=E01AudioMixDiagnostic.state(m);
        check(s.equals(" 原厂混音=未知 媒体档=6/15 导航档=8"),"null context does not invent mixing-switch value");
        check(Settings.System.reads==0&&m.reads.size()==3,"missing context skips only setting read");
        check(E01AudioMixDiagnostic.state(null).equals(" 原厂混音=未知 媒体档=未知/未知 导航档=未知"),"null manager and context are unknown, not zero");
    }
    private static void defaults(){
        Context activity=new Context(),app=new Context();activity.app=app;E01AudioMixDiagnostic.bind(activity);
        AudioManager m=new AudioManager();String s=E01AudioMixDiagnostic.state(m);
        check(s.equals(" 原厂混音=1 媒体档=6/15 导航档=8"),"missing switch uses OEM default1");
        check(Settings.System.lastDefault==1&&"NAVI_MIX_SWITCH".equals(Settings.System.lastKey),"exact OEM key/default");
        check(Settings.System.lastResolver==app.resolver&&activity.resolverReads==0,"only application context retained");
        Settings.System.value=0;check(E01AudioMixDiagnostic.state(m).contains("原厂混音=0"),"explicit zero preserved");
        Settings.System.value=1;check(E01AudioMixDiagnostic.state(m).contains("原厂混音=1"),"explicit one preserved");
        m.mediaVolume=m.navigationVolume=m.mediaMax=0;
        check(E01AudioMixDiagnostic.state(m).contains("媒体档=0/0 导航档=0"),"legitimate zero levels are not marked unknown");
        check(Settings.System.writes==0&&m.requests.isEmpty()&&m.abandoned.isEmpty(),"diagnostic causes no state writes or focus operations");
    }
    private static void errors(){
        Context c=new Context();E01AudioMixDiagnostic.bind(c);AudioManager m=new AudioManager();Settings.System.fail=true;
        check(E01AudioMixDiagnostic.state(m).equals(" 原厂混音=未知 媒体档=6/15 导航档=8"),"setting exception does not falsify default or hide readable volumes");
        Settings.System.fail=false;m.failMedia=true;
        check(E01AudioMixDiagnostic.state(m).equals(" 原厂混音=1 媒体档=未知/15 导航档=8"),"media getter failure isolated");
        m.failMedia=false;m.failMax=true;
        check(E01AudioMixDiagnostic.state(m).equals(" 原厂混音=1 媒体档=6/未知 导航档=8"),"maximum getter failure isolated");
        m.failMax=false;m.failNavigation=true;
        check(E01AudioMixDiagnostic.state(m).equals(" 原厂混音=1 媒体档=6/15 导航档=未知"),"navigation getter failure isolated");
        m.failMedia=m.failMax=true;Settings.System.fail=true;
        check(E01AudioMixDiagnostic.state(m).equals(" 原厂混音=未知 媒体档=未知/未知 导航档=未知"),"all read errors stay unknown");
        check(m.reads.size()==15&&Settings.System.reads==5,"each getter attempted independently exactly once per snapshot");
    }
    private static void unsupported(){
        E01AudioRoute.enabled=false;Context c=new Context();AudioManager m=new AudioManager();
        E01AudioMixDiagnostic.bind(c);check(E01AudioMixDiagnostic.state(m).equals(""),"non-E01 adds no diagnostic text");
        check(c.applicationReads==0&&c.resolverReads==0&&m.reads.isEmpty()&&Settings.System.reads==0,"non-E01 does not access platform state");
        E01AudioRoute.enabled=true;check(E01AudioMixDiagnostic.state(m).contains("原厂混音=未知"),"unsupported bind did not secretly retain context");
    }
    private static void contextFailures(){
        E01AudioMixDiagnostic.bind(null);Context c=new Context();c.failApplication=true;E01AudioMixDiagnostic.bind(c);
        check(E01AudioMixDiagnostic.state(null).contains("原厂混音=未知"),"failed bind stays unknown");
        c.failApplication=false;c.app=null;E01AudioMixDiagnostic.bind(c);check(E01AudioMixDiagnostic.state(null).contains("原厂混音=未知"),"null application context stays unknown");
        c.app=c;c.failResolver=true;E01AudioMixDiagnostic.bind(c);
        check(E01AudioMixDiagnostic.state(null).contains("原厂混音=未知"),"resolver failure stays unknown");
        check(Settings.System.reads==0&&Settings.System.writes==0,"failed context never fabricates a setting read");
    }
    public static void main(String[] args)throws Exception{
        AudioMixDiagnosticTest.class.getDeclaredMethod(args[0]).invoke(null);
        check(Settings.System.writes==0,"no settings write");
        System.out.println("PASS mix "+args[0]+" "+checks);
    }
}
