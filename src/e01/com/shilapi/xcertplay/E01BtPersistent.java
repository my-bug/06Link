package com.shilapi.xcertplay;

import android.content.Context;
import android.os.SystemClock;
import java.io.*;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.UUID;

/** System state is determined by bytes, never by an old UI preference or status file. */
final class E01BtPersistent {
    static final String HASH="1f0c60e5d292ef9be94b92fe530d8550846dea614234c6d324eb1c740387b130";
    private static final File BACKUP=new File("/data/local/06link-oem-bt/gocsdk.stock");
    private static final File SYSTEM=new File("/system/bin/gocsdk");
    private static volatile String readError="", actualHash="", progress="正在读取原车蓝牙组件";
    private static volatile boolean running, serviceKnown, checked;
    private static long checkedAt, hashedAt, modified=-1, size=-1;
    private static boolean applying;
    static synchronized void refresh() { refresh(false); }
    private static synchronized void refresh(boolean force) {
        long now=SystemClock.elapsedRealtime();
        if(!force&&checked&&now-checkedAt<2000)return;
        checkedAt=now;
        // Service state is independent of whether the app UID can read the binary.
        try{Object state=Class.forName("android.os.SystemProperties").getMethod("get",String.class).invoke(null,"init.svc.gocsdk");running="running".equals(state);serviceKnown=state!=null&&!state.toString().isEmpty();}
        catch(Exception e){running=false;serviceKnown=false;}
        try {
            long m=SYSTEM.lastModified(),s=SYSTEM.length();
            if(force||!checked||m!=modified||s!=size||now-hashedAt>=15000){actualHash=readSystemHash(SYSTEM);modified=m;size=s;hashedAt=now;}
            checked=true;readError="";
        }catch(Exception e){actualHash="";checked=false;readError=e.getClass().getSimpleName()+": "+String.valueOf(e.getMessage());}
    }
    static boolean installed(){return HASH.equals(actualHash);}
    static boolean ready(){return installed()&&running;}
    static String description(){
        if(!checked)return "原车组件尚未确认，请稍后重试";
        if(installed())return running?"系统已安装开机兼容":"开机兼容已安装，等待蓝牙服务启动";
        return "当前为本机原有组件，可安装开机兼容";
    }
    private static long receiptCheck=-15000;
    private static final java.util.LinkedHashMap<String,String> seenReceipts=new java.util.LinkedHashMap<String,String>();
    /** Recover terminal root replies left by a previous process; no shell calls or deletion. */
    static synchronized void recoverReceipts(Context c){
        long now=SystemClock.elapsedRealtime();
        if(applying||now-receiptCheck<15000)return;
        receiptCheck=now;
        File[] files=new File(c.getFilesDir(),"oem-bt-permanent").listFiles();
        if(files==null)return;
        java.util.Arrays.sort(files,(a,b)->Long.compare(b.lastModified(),a.lastModified()));
        int count=0;
        for(File file:files){
            if(!file.getName().matches("result(?:-[a-f0-9]{32})?")||!file.isFile()||file.length()>1024)continue;
            if(++count>32)break;
            String value=read(file);
            if(!value.startsWith("ready:")&&!value.startsWith("failed:"))continue;
            if(value.equals(seenReceipts.get(file.getName())))continue;
            if(seenReceipts.size()>=32)seenReceipts.remove(seenReceipts.keySet().iterator().next());
            seenReceipts.put(file.getName(),value);
            E01LogPolicy.component(c,"补记系统回执 "+value+"（不等同于本次验证） "+snapshot());
        }
    }
    static String progress(){return progress;}
    static synchronized String snapshot(){
        String kind=!checked?"读取未确认":installed()?"兼容":"本机原有组件";
        return "系统="+kind+" 哈希="+(actualHash.isEmpty()?"不可读":actualHash.substring(0,Math.min(12,actualHash.length())))+" 蓝牙服务="+(!serviceKnown?"未确认":running?"运行":"未运行")+(readError.isEmpty()?"":" 读取异常="+readError);
    }
    static void releasingLegacy(){progress="正在退出旧版临时兼容";}
    static void invalidate(){refresh(true);}
    static String apply(Context c,boolean install) throws Exception {
        E01ComponentLog trace=new E01ComponentLog(c,install);
        try{String result=apply(c,install,trace);trace.success();return result;}
        catch(Exception e){trace.failure(e);throw e;}
    }
    static String apply(Context c,boolean install,E01ComponentLog trace) throws Exception {
        synchronized(E01BtPersistent.class){if(applying)throw new IOException("组件操作仍在进行，请等待完成");applying=true;}
        try{return applyOnce(c,install,trace);}finally{synchronized(E01BtPersistent.class){applying=false;}}
    }
    private static String applyOnce(Context c,boolean install,E01ComponentLog trace) throws Exception {
        trace.stage("核对系统组件");invalidate();trace.stage("开始校验 "+snapshot());
        progress=install?"正在备份本机原有组件":"正在读取本机备份";
        File dir=new File(c.getFilesDir(),"oem-bt-permanent");
        if(!dir.exists()&&!dir.mkdirs())throw new IOException("无法准备常驻组件目录");
        String path=dir.getAbsolutePath();
        if(!path.matches("/(data/data|data/user/0)/com[.]sixlink[.]car/files/oem-bt-permanent"))throw new IOException("组件目录不匹配");
        String token=UUID.randomUUID().toString().replace("-","");
        File script=new File(dir,"persistent-"+token+".sh"), result=new File(dir,"result-"+token);
        // Each operation has its own immutable script and result; the root lock serializes writes.
        File payload=new File(dir,"gocsdk");
        writeScript(c,script,install,payload,result);
        if(install && (!payload.isFile() || !HASH.equals(sha(payload)))){
            File next=new File(dir,"payload-"+token);
            copy(c,"gocsdk",next);
            if(!HASH.equals(sha(next))){next.delete();throw new IOException("常驻组件校验失败");}
            if(!next.renameTo(payload)){next.delete();throw new IOException("无法准备组件文件");}
        }
        trace.stage("提交系统操作");
        // ExtraUtilsService silently truncates its command at 255 bytes. Parameters live
        // in this immutable per-operation script, not in the Binder command line.
        String command="/system/bin/sh "+script.getAbsolutePath()+" </dev/null >/dev/null 2>&1 & echo SUBMITTED";
        int wireBytes=("busybox timeout -t 3 /system/bin/sh -c '"+command+"'").getBytes("UTF-8").length;
        if(wireBytes>255)throw new IOException("组件启动命令超过原厂接口长度限制");
        trace.stage("提交短指令 字节="+wireBytes);
        String ack=E01PrivilegedShell.execute(command);
        if(!"SUBMITTED".equals(ack.trim()))throw new IOException("系统未确认接收操作，请保留现场；未自动重试");
        trace.stage("已提交，等待系统回执");
        long until=SystemClock.elapsedRealtime()+150000;
        String action=install?"install":"restore";
        while(SystemClock.elapsedRealtime()<until){
            String state=read(result);
            if(state.startsWith("ready:")){
                try{
                    trace.stage("复核完成回执与系统文件");invalidate();
                    if(!state.equals("ready:"+action))throw new IOException("组件回执与本次操作不符");
                    if(!(install?HASH:readSystemHash(BACKUP)).equals(actualHash))throw new IOException("系统组件复核不一致，不能确认完成");
                    if(!running)throw new IOException("系统文件已更新，但蓝牙服务未运行");
                    progress=install?"开机兼容安装完成":"本机备份组件恢复完成";
                    return install?"开机兼容已安装并校验，系统蓝牙已启动":"已恢复并核对本机备份组件";
                }finally{script.delete();result.delete();}
            }
            if(state.startsWith("failed:")){trace.stage("系统失败回执 "+state.substring(7));script.delete();result.delete();invalidate();throw new IOException("组件操作未完成："+state.substring(7));}
            if(state.startsWith("working:")){progress=stage(state.substring(8));trace.stage(progress+" ["+state.substring(8)+"]");}
            Thread.sleep(300);
        }
        invalidate();throw new IOException("系统操作尚未确认结束（"+progress+"），请勿重复操作");
    }
    private static String stage(String s){
        if(s.equals("checking"))return "正在校验系统组件与备份";
        if(s.equals("backup"))return "正在保存本机组件备份";
        if(s.equals("staging"))return "正在准备组件文件";
        if(s.equals("restarting-bluetooth-once"))return "正在停止原车蓝牙服务";
        if(s.equals("starting"))return "正在启动蓝牙并确认服务就绪";
        if(s.equals("finishing"))return "正在收尾：恢复系统只读并释放操作锁";
        if(s.equals("rolling-back"))return "正在恢复操作前的组件";
        return "正在处理原车蓝牙组件";
    }
    private static String read(File f){try(FileInputStream in=new FileInputStream(f)){byte[] b=new byte[1024];int n=in.read(b);return n<0?"":new String(b,0,n,"UTF-8").trim();}catch(IOException e){return "";}}
    private static void writeScript(Context c,File script,boolean install,File payload,File result)throws Exception{
        // All paths come from the strict application directory and UUID whitelist above.
        // Keep arguments and the transaction together; concurrent/restarted operations
        // never share a mutable launcher or a result file.
        String header="#!/system/bin/sh\nset -- "+(install?"install":"restore")+" "+payload.getAbsolutePath()+" "+result.getAbsolutePath()+"\n";
        try(InputStream in=c.getAssets().open("oem-bt-permanent/persistent.sh");FileOutputStream out=new FileOutputStream(script)){
            out.write(header.getBytes("UTF-8"));
            byte[] b=new byte[16384];int n;while((n=in.read(b))!=-1)out.write(b,0,n);out.getFD().sync();
        }
        script.setReadable(true,true);script.setExecutable(true,true);
    }
    private static void copy(Context c,String name,File f)throws Exception{
        try(InputStream in=c.getAssets().open("oem-bt-permanent/"+name);FileOutputStream out=new FileOutputStream(f)){byte[] b=new byte[16384];int n;while((n=in.read(b))!=-1)out.write(b,0,n);out.getFD().sync();}
        f.setReadable(true,true);f.setExecutable(true,true);
    }
    private static String readSystemHash(File f)throws Exception{
        try{return sha(f);}catch(IOException unreadable){
            if(!SYSTEM.equals(f)&&!BACKUP.equals(f))throw unreadable;
            String value=E01PrivilegedShell.execute("busybox sha256sum "+f.getAbsolutePath());
            String hash=value==null?"":value.trim().split("\\s+",2)[0];
            if(!hash.matches("[a-f0-9]{64}"))throw new IOException("原厂接口未能读取组件文件："+f.getAbsolutePath());
            return hash;
        }
    }
    private static String sha(File f)throws Exception{
        MessageDigest d=MessageDigest.getInstance("SHA-256");try(InputStream in=new FileInputStream(f)){byte[] b=new byte[32768];int n;while((n=in.read(b))!=-1)d.update(b,0,n);}
        StringBuilder out=new StringBuilder();for(byte v:d.digest())out.append(String.format(Locale.ROOT,"%02x",v&255));return out.toString();
    }
    private E01BtPersistent(){}
}
