package com.shilapi.xcertplay;
import android.content.Context;
import java.util.*;
public final class FrameRateCheck {
    static int checks;
    static void check(boolean value, String message) { checks++; if (!value) throw new AssertionError(message); }
    static Context.Prefs air(Context c) { return c.getSharedPreferences("xcertplay_airplay", 0); }
    static Context.Prefs video(Context c) { return c.getSharedPreferences("06link-video", 0); }
    static int fps(Context c) { return E01FrameRatePolicy.selectedFps(c); }
    static Context restart(Context previous) {
        Context c = new Context();
        for (Map.Entry<String, Context.Prefs> e : previous.stores.entrySet())
            c.getSharedPreferences(e.getKey(), 0).values.putAll(e.getValue().values);
        return c;
    }
    public static void main(String[] args) {
        Context c = new Context();
        check(fps(c) == 60, "fresh install selects 60");
        int writes = air(c).writes;
        for (int i=0;i<100;i++) check(fps(c)==60, "stable default");
        check(air(c).writes == writes, "normal reads never rewrite preferences");
        for (String mode : new String[]{null,"auto","manual"}) {
            for (int selected : new int[]{30,60}) for (boolean forced : new boolean[]{false,true}) {
                c = new Context();
                if (mode != null) air(c).values.put("display_fps_mode",mode);
                air(c).values.put("display_fps", selected);
                air(c).values.put("display_fps60_unsustainable",true);
                air(c).values.put("display_fps_auto_last","30 overload");
                air(c).values.put("display_scale_tenths",10);
                air(c).values.put("fix7_power_policy_applied",false);
                video(c).values.put("force60",forced);
                video(c).values.put("smooth",true); video(c).values.put("mtk",true);
                int expected = forced || "auto".equals(mode) ? 60 : selected;
                check(fps(c)==expected,"legacy choice migrated: "+mode+" "+selected+" forced="+forced);
                check(!air(c).contains("display_fps_mode") && !air(c).contains("display_fps60_unsustainable")
                    && !air(c).contains("display_fps_auto_last") && !video(c).contains("force60"),"retired settings removed");
                check(air(c).getInt("display_scale_tenths",0)==10 && video(c).getBoolean("smooth",false)
                    && video(c).getBoolean("mtk",false),"other picture options unchanged");
                check(fps(restart(c))==expected,"selection survives restart");
                // A stale global downgrade flag cannot override either transport's new selection.
                air(c).values.put("display_fps60_unsustainable",true);
                check(fps(c)==expected,"stale cap has no runtime reader");
            }
        }
        c = new Context(); video(c).values.put("force60",true);
        for (int selected : new int[]{60,30,60,30,60}) {
            check(E01FrameRatePolicy.save(c,selected),"save succeeds");
            check(fps(c)==selected && fps(restart(c))==selected,"explicit 30/60 survives reconnect and restart");
            check(!video(c).contains("force60"),"old force flag cannot override new manual 30");
        }
        writes=air(c).writes;
        for(int i=0;i<100;i++)check(fps(c)==60,"60 never falls back over repeated reads");
        check(air(c).writes==writes,"60 is not periodically rewritten");
        video(c).values.put("force60",true);
        air(c).values.put("display_fps",30);
        check(fps(c)==30,"completed migration ignores a late old override");
        check(E01FrameRatePolicy.save(c,60),"restore60");
        air(c).failCommit=true;
        check(!E01FrameRatePolicy.save(c,30),"failed save is reported");
        check(fps(c)==60,"failed save cannot silently apply 30");
        air(c).failCommit=false;
        try { E01FrameRatePolicy.save(c,45); throw new AssertionError("invalid rate accepted"); }
        catch(IllegalArgumentException expected) { checks++; }
        check(fps(c)==60,"invalid choice leaves current selection intact");
        System.out.println("PASS "+checks+" fixed FPS, migration, persistence and selection checks");
    }
}
