package com.shilapi.xcertplay;

import android.content.Context;
import android.os.SystemClock;
import java.util.UUID;

/** Low-volume operation journal, written to the existing bounded application log. */
final class E01ComponentLog {
    private final Context context;
    private final String action, id;
    private final long started=SystemClock.elapsedRealtime();
    private String stage="准备";
    private int stages;
    private boolean ended;
    private static String observed;
    E01ComponentLog(Context context, boolean install) {
        this.context=context.getApplicationContext();
        action=install?"安装":"恢复";id=UUID.randomUUID().toString().substring(0,8);
        String version="未知";
        try{version=context.getPackageManager().getPackageInfo(context.getPackageName(),0).versionName;}catch(Exception ignored){}
        emit("开始 版本="+version+" "+E01BtPersistent.snapshot());
    }
    synchronized void stage(String next) {
        if(ended||next.equals(stage))return;
        stage=next;
        if(stages++<24)emit("阶段="+next);
    }
    synchronized void success() {
        if(ended)return;ended=true;
        emit("完成 "+E01BtPersistent.snapshot());
    }
    synchronized void failure(Throwable error) {
        if(ended)return;ended=true;
        Throwable cause=error;
        for(int n=0;n<4&&cause.getCause()!=null&&cause.getCause()!=cause;n++)cause=cause.getCause();
        String reason=String.valueOf(cause.getMessage());if(reason.length()>180)reason=reason.substring(0,180);
        emit("失败(error) 阶段="+stage+" 原因="+cause.getClass().getSimpleName()+": "+reason+" "+E01BtPersistent.snapshot());
    }
    private void emit(String message) {
        E01LogPolicy.component(context,"#"+id+" "+action+" 耗时="+Math.max(0,SystemClock.elapsedRealtime()-started)+"ms "+message);
    }
    static synchronized void observe(Context c) {
        E01BtPersistent.recoverReceipts(c);
        String current=E01BtPersistent.snapshot();
        if(current.equals(observed))return;
        observed=current;
        E01LogPolicy.component(c,(current.contains("系统=未知")||current.contains("系统=读取未确认")?"状态异常(error) ":"状态 ")+current);
    }
}
