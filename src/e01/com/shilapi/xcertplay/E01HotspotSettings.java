package com.shilapi.xcertplay;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.*;
import com.shilapi.xcertplay.network.FreeAutoHotspotName;

/** Inline hotspot editor. Uses the existing legacy AP apply/retry path at next connection. */
public final class E01HotspotSettings implements View.OnClickListener {
    private static final String PREFS = "free_auto_hotspot_name";
    private final Context context;
    private final EditText ssid, password;
    private final TextView status;

    public static String customName(Context context) {
        return context.getSharedPreferences(PREFS, 0).getString("custom_ssid", null);
    }

    public static boolean validPassword(String value) {
        if (value == null || value.length() < 8 || value.length() > 63) return false;
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            if (c < 32 || c > 126) return false;
        }
        return true;
    }

    public static String validationError(String name, String pass) {
        if (name == null || name.trim().length() == 0) return "请输入热点名称。";
        if (name.indexOf('\0') >= 0) return "热点名称含无效字符。";
        try {
            if (name.getBytes("UTF-8").length > 32) return "热点名称最多32字节。";
        } catch (java.io.UnsupportedEncodingException impossible) { throw new AssertionError(impossible); }
        if (!validPassword(pass)) return "密码需为8—63位字母、数字或符号。";
        return null;
    }

    public static boolean save(Context context, String name, String pass) {
        if (validationError(name, pass) != null) return false;
        // The existing AP name rule consumes these values before reading actual
        // credentials for iAP2. System-to-manual synchronization cannot erase them.
        boolean saved = context.getSharedPreferences(PREFS, 0).edit()
            .putString("custom_ssid", name).putString("password", pass)
            .putBoolean("password_renew_pending", true).commit();
        if (!saved) return false;
        AirPlayPersistence p = AirPlayPersistence.INSTANCE;
        p.saveManualHotspotSsid(context, name);
        p.saveManualHotspotPassphrase(context, pass);
        p.saveManualHotspotSecurity(context,
            com.shilapi.xcertplay.orchestration.ManualHotspotSecurity.WPA2);
        return true;
    }

    /** Shared lightweight action style for hotspot and local ADB controls. */
    public static void styleActionButton(Button button) {
        Context context = button.getContext();
        float density = context.getResources().getDisplayMetrics().density;
        Glass glass = Glass.INSTANCE;
        android.graphics.drawable.Drawable normal = glass.panel(context, Glass.Kind.CONTROL, 12f, glass.getCurrent());
        android.graphics.drawable.Drawable disabled = glass.panel(context, Glass.Kind.CONTROL, 12f, glass.getCurrent());
        disabled.setAlpha(100);
        android.graphics.drawable.StateListDrawable states = new android.graphics.drawable.StateListDrawable();
        states.addState(new int[] {-0x0101009e}, disabled);
        states.addState(new int[0], LegacyViewsKt.rippleCompat(
            android.content.res.ColorStateList.valueOf(glass.getRIPPLE()), normal, null));
        button.setBackgroundTintList(null);
        LegacyViewsKt.setBackgroundCompat(button, states);
        LegacyViewsKt.clearStateListAnimatorCompat(button);
        button.setElevation(0f);
        button.setTextColor(new android.content.res.ColorStateList(
            new int[][] {new int[] {-0x0101009e}, new int[0]},
            new int[] {glass.getMUTED(), glass.getTEXT()}));
        button.setAllCaps(false);
        button.setTextSize(17f);
        button.setTypeface(android.graphics.Typeface.create("sans-serif-medium", 0));
        button.setPadding(Math.round(16 * density), Math.round(10 * density),
                          Math.round(16 * density), Math.round(10 * density));
        button.setMinHeight(Math.round(54 * density));
        button.setMinimumHeight(Math.round(54 * density));
    }

    public static void add(Context context, LinearLayout parent) {
        new E01HotspotSettings(context, parent);
    }

    private TextView label(LinearLayout parent, String value, boolean muted) {
        TextView text = new TextView(context);
        text.setText(value);
        text.setTextSize(muted ? 16 : 19);
        text.setTextColor(muted ? Glass.INSTANCE.getMUTED() : Glass.INSTANCE.getTEXT());
        parent.addView(text);
        return text;
    }

    private E01HotspotSettings(final Context context, LinearLayout parent) {
        this.context = context;
        AirPlayPersistence p = AirPlayPersistence.INSTANCE;
        String name = customName(context);
        String pass;
        if (name == null) {
            p.syncManualHotspotFromSystem(context);
            name = p.loadManualHotspotSsid(context);
            if (name.length() == 0) name = FreeAutoHotspotName.INSTANCE.name(context, "");
            pass = p.loadManualHotspotPassphrase(context);
        } else {
            pass = FreeAutoHotspotName.INSTANCE.persistedPassword(context);
        }
        label(parent, "车机热点", false);
        label(parent, "保存后下次连接生效，iPhone需用蓝牙重连。", true);
        label(parent, "热点名称", false);
        ssid = new EditText(context);
        ssid.setHint("输入热点名称");
        ssid.setSingleLine();
        ssid.setInputType(0x80001);
        ssid.setTextSize(19);
        ssid.setTextColor(Glass.INSTANCE.getTEXT());
        ssid.setHintTextColor(Glass.INSTANCE.getMUTED());
        ssid.setText(name);
        parent.addView(ssid);
        label(parent, "热点密码", false);
        password = new EditText(context);
        password.setHint("8—63位字母、数字或符号");
        password.setSingleLine();
        password.setInputType(0x81);
        password.setTextSize(19);
        password.setTextColor(Glass.INSTANCE.getTEXT());
        password.setHintTextColor(Glass.INSTANCE.getMUTED());
        password.setText(pass == null ? "" : pass);
        parent.addView(password);
        CheckBox show = new CheckBox(context);
        show.setText("显示密码");
        show.setTextColor(Glass.INSTANCE.getTEXT());
        show.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton button, boolean checked) {
                password.setInputType(checked ? 0x91 : 0x81);
                password.setSelection(password.getText().length());
            }
        });
        parent.addView(show);
        Button save = new Button(context);
        styleActionButton(save);
        save.setText("保存热点");
        save.setOnClickListener(this);
        parent.addView(save);
        status = label(parent, "", true);
        Button system = new Button(context);
        styleActionButton(system);
        system.setText("打开系统热点设置");
        system.setOnClickListener(new View.OnClickListener() {
            public void onClick(View ignored) {
                try { context.startActivity(new Intent("android.settings.TETHER_SETTINGS")); }
                catch (RuntimeException unavailable) {
                    try { context.startActivity(new Intent("android.settings.WIRELESS_SETTINGS")); }
                    catch (RuntimeException missing) { status.setText("请从系统设置打开热点。 "); }
                }
            }
        });
        parent.addView(system);
    }

    public void onClick(View ignored) {
        String name = ssid.getText().toString().trim();
        String pass = password.getText().toString();
        String error = validationError(name, pass);
        if (error != null) { status.setText(error); return; }
        if (!save(context, name, pass)) { status.setText("保存失败，请重试。"); return; }
        ssid.clearFocus();
        password.clearFocus();
        status.setText("已保存，下次连接生效。请用蓝牙重连iPhone。");
    }
}
