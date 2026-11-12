package com.shilapi.xcertplay;
import android.content.Context;
/** Presentation style preference only. Never owns a channel, stream or OEM publisher. */
public final class E01InstrumentStyle {
    private E01InstrumentStyle() {}
    public static String selected(Context c) {
        if(c==null)return "card";
        String v=c.getSharedPreferences("06link_instrument",0).getString("layout","card");
        return "full".equals(v)||"mist".equals(v)?v:"card";
    }
    public static String selected() {
        try{return selected((Context)Class.forName("android.app.ActivityThread").getMethod("currentApplication").invoke(null));}
        catch(Exception unavailable){return "card";}
    }
    public static boolean mist(){return "mist".equals(selected());}
    public static boolean mist(Context c){return "mist".equals(selected(c));}
}
