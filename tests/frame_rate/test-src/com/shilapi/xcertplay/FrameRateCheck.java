package com.shilapi.xcertplay;
import android.content.Context;
import java.util.*;
public final class FrameRateCheck {
    static int checks;
    static void check(boolean value, String message) { checks++; if (!value) throw new AssertionError(message); }
    static Context.Prefs air(Context context) { return context.getSharedPreferences("xcertplay_airplay", 0); }
    static Context.Prefs video(Context context) { return context.getSharedPreferences("06link-video", 0); }
    static int connect(Context context, boolean reduced) {
        return E01FrameRatePolicy.connectionFps(context, E01FrameRatePolicy.automatic(context),
                air(context).getInt("display_fps", 30), reduced);
    }
    static Context restart(Context previous) {
        Context context = new Context();
        for (Map.Entry<String, Context.Prefs> entry : previous.stores.entrySet())
            context.getSharedPreferences(entry.getKey(), 0).values.putAll(entry.getValue().values);
        return context;
    }
    public static void main(String[] args) {
        Context context = new Context();
        check(E01FrameRatePolicy.automatic(context), "fresh install defaults to auto");
        check(connect(context, false) == 30, "auto remains 30");
        check(air(context).values.isEmpty() && air(context).writes == 0, "reading settings must not write defaults");

        air(context).values.put("display_fps_mode", "manual");
        air(context).values.put("display_fps", 60);
        air(context).values.put("display_fps60_unsustainable", true);
        air(context).values.put("fix7_power_policy_applied", false);
        air(context).values.put("display_scale_tenths", 10);
        video(context).values.put("smooth", true);
        video(context).values.put("display60", true);
        check(!E01FrameRatePolicy.automatic(context), "missing migration flag cannot reset manual selection");
        check(connect(context, false) == 60, "old overload cannot cap a new manual 60 connection");
        check(!air(context).contains("display_fps60_unsustainable") && air(context).writes == 1, "old cap retired once");
        check(air(context).getInt("display_fps", 0) == 60 && "manual".equals(air(context).getString("display_fps_mode", "")), "selection preserved");
        check(air(context).getInt("display_scale_tenths", 0) == 10 && video(context).getBoolean("smooth", false)
                && video(context).getBoolean("display60", false), "other video settings unchanged");
        check(connect(context, true) == 30, "genuine foreground overload may reduce current normal session");
        check(connect(context, true) == 30 && air(context).writes == 1, "automatic recovery keeps session fallback without writing global cap");
        check(connect(context, false) == 60, "explicit new attempt retries selected 60");
        check(connect(restart(context), false) == 60, "restart never inherits transient session downgrade");

        for (boolean oldMigration : new boolean[]{false, true}) {
            context = new Context();
            air(context).values.put("display_fps", 60);
            air(context).values.put("fix7_power_policy_applied", oldMigration);
            check(!E01FrameRatePolicy.automatic(context) && connect(context, false) == 60, "legacy explicit rate preserved regardless of migration marker");
        }
        air(context).values.put("display_fps_mode", "auto");
        check(connect(context, false) == 30, "explicit auto wins over old saved numeric 60");
        air(context).values.put("display_fps_mode", "manual");
        air(context).values.put("display_fps", 30);
        check(connect(context, false) == 30, "manual 30 preserved");
        air(context).values.put("display_fps", 45);
        check(connect(context, false) == 45, "legacy sanitized intermediate rate preserved");

        video(context).values.put("force60", true);
        air(context).values.put("display_fps_mode", "auto");
        air(context).values.put("display_fps60_unsustainable", true);
        check(connect(context, true) == 60, "force 60 overrides session fallback and inconsistent old mode");
        check(E01FrameRatePolicy.force60(context), "force switch read consistently");
        video(context).values.put("force60", false);
        check(connect(context, false) == 30, "turning force off restores auto setting");
        check(!E01FrameRatePolicy.force60(context), "force can be disabled");
        System.out.println("PASS " + checks + " frame-rate preference and connection lifecycle checks");
    }
}
