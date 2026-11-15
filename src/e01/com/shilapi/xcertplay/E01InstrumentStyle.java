package com.shilapi.xcertplay;
import android.content.Context;
/** Presentation preference only; the retired mist choice resolves to night on upgrade. */
public final class E01InstrumentStyle {
    private E01InstrumentStyle() {}
    public static String normalize(String value) {
        if("mist".equals(value)||"night".equals(value))return "night";
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
    public static boolean night(Context c){return "night".equals(selected(c));}
}
