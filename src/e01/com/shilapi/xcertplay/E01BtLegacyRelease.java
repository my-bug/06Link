package com.shilapi.xcertplay;

import android.content.Context;
import android.os.SystemClock;
import java.io.*;

/** Bounded upgrade cleanup only. Never starts a daemon or changes /system. */
final class E01BtLegacyRelease {
    static void release(Context c) throws Exception {
        File dir=new File(c.getFilesDir(),"oem-bt-test1");
        if(!dir.exists())return;
        if(!dir.getAbsolutePath().matches("/(data/data|data/user/0)/com[.]sixlink[.]car/files/oem-bt-test1"))
            throw new IOException("旧组件目录不匹配");
        File active=new File(dir,"active");
        if(c.getSharedPreferences("oem-bt-migration",0).getBoolean("released-v1",false)&&!active.exists())return;
        // The already-running old runner/guardian owns restoration. Request its
        // normal exit; do not kill it, restart it, or delete its recovery assets.
        new File(dir,"stop").createNewFile();
        String oldBoot=read(new File(dir,"boot"));
        String boot=read(new File("/proc/sys/kernel/random/boot_id"));
        boolean previousBoot=!oldBoot.isEmpty()&&!boot.isEmpty()&&!oldBoot.equals(boot);
        long until=SystemClock.elapsedRealtime()+25000L;
        do {
            if(!active.exists()||previousBoot){
                String result=E01PrivilegedShell.execute(c,probe(dir,previousBoot));
                if(result.trim().equals("RELEASED")){
                    if(active.exists()&&!active.delete())throw new IOException("旧兼容状态目录无法清理");
                    if(!c.getSharedPreferences("oem-bt-migration",0).edit().putBoolean("released-v1",true).commit())
                        throw new IOException("无法保存旧兼容清理状态");
                    return;
                }
            }
            Thread.sleep(250);
        }while(SystemClock.elapsedRealtime()<until);
        throw new IOException("旧临时兼容仍在退出，请稍后重新打开应用；未修改系统组件");
    }
    static String probe(File dir,boolean previousBoot){
        String live="for p in /proc/[0-9]*; do x=$(busybox readlink \"$p/exe\" 2>/dev/null); " +
            "case \"$x\" in */com.sixlink.car/files/oem-bt-test1/gocsdk*) echo BUSY; exit;; esac; done; ";
        String stale=previousBoot?
            "old=$(cat "+dir+"/boot 2>/dev/null); now=$(cat /proc/sys/kernel/random/boot_id); " +
            "[ -n \"$old\" ] && [ -n \"$now\" ] && [ \"$old\" != \"$now\" ] || { echo BUSY; exit; }; " +
            "lease=$(cat /data/local/tmp/06link-oem-bt1.guard/lease 2>/dev/null); pid=${lease%%:*}; stamp=${lease#*:}; " +
            "case \"$pid:$stamp\" in *[!0-9:]*|:|*:|:*) echo BUSY; exit;; esac; " +
            "actual=$(busybox sed 's/.*) //' /proc/$pid/stat 2>/dev/null | busybox awk '$1 != \"Z\" && $1 != \"X\" {print $20}'); " +
            "[ \"$actual\" != \"$stamp\" ] || { echo BUSY; exit; }; " +
            "rm -f /data/local/tmp/06link-oem-bt1.guard/lease || { echo BUSY; exit; }; ":"echo BUSY; exit; ";
        return live+"if [ -e /data/local/tmp/06link-oem-bt1.guard/lease ]; then "+stale+"fi; echo RELEASED";
    }
    private static String read(File f){
        try(FileInputStream in=new FileInputStream(f)){
            byte[] b=new byte[512];int n=in.read(b);return n<0?"":new String(b,0,n,"UTF-8").trim();
        }catch(IOException e){return "";}
    }
    private E01BtLegacyRelease(){}
}
