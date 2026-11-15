package com.shilapi.xcertplay;
import android.content.Context;
/** Presentation preference only; the retired mist choice resolves to night on upgrade. */
public final class E01InstrumentStyle {
    private E01InstrumentStyle() {}
    public static String normalize(String value) {
        if("mist".equals(value)||"night".equals(value))return "night";
        if("relief".equals(value))return "relief";
        if("sport".equals(value))return "sport";
        return "full".equals(value)?"full":"card";
    }
    public static String selected(Context c) {
        return c==null?"card":normalize(c.getSharedPreferences("06link_instrument",0).getString("layout","card"));
    }
    public static String selected() {
        try{return selected((Context)Class.forName("android.app.ActivityThread").getMethod("currentApplication").invoke(null));}
        catch(Exception unavailable){return "card";}
    }
    public static boolean fullscreen(String style){String s=normalize(style);return "full".equals(s);}
    public static boolean isNight(String style){return "night".equals(normalize(style));}
    public static boolean isImmersive(String style){return isNight(style)||"relief".equals(normalize(style))||"sport".equals(normalize(style));}
    public static int background(String style){return "sport".equals(normalize(style))?0xff24272d:"relief".equals(normalize(style))?0xff3c4650:0xff141c26;}
    public static String label(String style){String s=normalize(style);return "sport".equals(s)?"竞速仪表":"relief".equals(s)?"浮影仪表":"night".equals(s)?"石墨仪表":"full".equals(s)?"全屏地图":"信息卡片";}
    public static String fromLabel(String value){return "竞速仪表".equals(value)?"sport":"浮影仪表".equals(value)?"relief":("石墨仪表".equals(value)||"夜航仪表".equals(value))?"night":"全屏地图".equals(value)?"full":"card";}
    public static String next(String style){String s=normalize(style);return "card".equals(s)?"full":"full".equals(s)?"night":"night".equals(s)?"relief":"relief".equals(s)?"sport":"card";}
    public static boolean night(Context c){return "night".equals(selected(c));}
}
