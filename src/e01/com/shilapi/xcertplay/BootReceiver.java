package com.shilapi.xcertplay;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.io.File;

/** Opens the home screen; radio preparation and first-use consent belong to the activity. */
public final class BootReceiver extends BroadcastReceiver {
    private static final String AUTO_START = "com.sixlink.car.extra.AUTO_START";

    private static String startupEvent(String action) {
        if ("android.intent.action.BOOT_COMPLETED".equals(action)) return "开机完成";
        if ("android.intent.action.QUICKBOOT_POWERON".equals(action)
                || "com.htc.intent.action.QUICKBOOT_POWERON".equals(action)
                || "android.intent.action.ACTION_BOOT_IPO".equals(action)) return "快速开机";
        if ("android.intent.action.MY_PACKAGE_REPLACED".equals(action)) return "应用更新完成";
        return null;
    }

    @Override public void onReceive(Context context, Intent intent) {
        if (context == null || intent == null) return;
        String event = startupEvent(intent.getAction());
        if (event == null) return;
        try {
            if (!AirPlayPersistence.INSTANCE.loadAutoStartOnBoot(context)) {
                record(context, event + "；开机自启已关闭，跳过");
                return;
            }
            if (CarPlayBackgroundSession.INSTANCE.hasSession()
                    || CarPlayBackgroundSession.INSTANCE.getActive()) {
                record(context, event + "；CarPlay 会话已存在，跳过");
                return;
            }
            // Do not require Bluetooth, hotspot, root or first-use acknowledgement
            // just to open the app. The home screen retains its connection/notice gates.
            record(context, event + "；开机自启已开启，准备打开首页");
            Intent home = new Intent().setClassName(context.getPackageName(),
                    "com.shilapi.xcertplay.DiPlayActivity");
            home.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP
                    | Intent.FLAG_ACTIVITY_SINGLE_TOP);
            home.putExtra(AUTO_START, true);
            context.startActivity(home);
            record(context, "已向系统提交首页启动请求");
        } catch (RuntimeException failure) {
            record(context, "打开首页失败(error)：" + failure.getClass().getSimpleName());
            Log.w("xcertplay-boot", "06Link 开机自启失败", failure);
        }
    }

    /** Called after the activity has rendered, independently of automatic connection. */
    public static void homeCreated(Activity activity) {
        Intent intent = activity.getIntent();
        if (intent != null && intent.getBooleanExtra(AUTO_START, false)) {
            record(activity, "首页已创建");
        }
    }

    private static void record(Context context, String message) {
        try {
            String line = "[开机自启] " + message;
            Log.i("xcertplay-boot", line);
            // Internal storage is available before external storage has mounted.
            E01LogPolicy.session(new File(context.getFilesDir(), "06link.log"), line);
        } catch (RuntimeException ignored) {
            // Diagnostic storage must not prevent opening the app.
        }
    }
}
