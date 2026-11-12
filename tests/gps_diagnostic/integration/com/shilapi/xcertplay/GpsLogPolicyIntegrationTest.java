package com.shilapi.xcertplay;

import android.content.Context;
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.List;

/** Exercises actual helper -> actual log policy -> files -> actual UI reader. */
public final class GpsLogPolicyIntegrationTest {
    private static int assertions;
    public static void main(String[] args)throws Exception {
        File root=new File(args[0]);root.mkdirs();
        Context context=new Context();context.filesDir=new File(root,"internal");context.externalFilesDir=new File(root,"external");
        File[] dirs={context.filesDir,new File(context.filesDir,"logs"),context.externalFilesDir,new File(context.externalFilesDir,"logs")};
        for(File dir:dirs)dir.mkdirs();
        try{
            E01LogPolicy.install(context);
            // Preload retained application logs close to the global budget across all four known locations.
            String row="12:00:00 [定位诊断] #0 统计 15s 手机请求=已收到 定位服务=已启动 有效取样=2 提交=2 含位置=2 入队=2 链路待发=2 完整ACK=0 含位置ACK=0；高德采用=未验证 "+repeat("统计",100);
            for(File dir:dirs){
                File file=new File(dir,"06link.log");
                fill(file,row,120000,dirs);E01LogPolicy.rotate(file);fill(file,row,120000,dirs);
                File cluster=new File(dir,"e01-cluster-diagnostic.txt");
                fill(cluster,"retained lifecycle "+repeat("x",200),12000,dirs);
                E01LogPolicy.rotate(cluster);fill(cluster,"retained lifecycle "+repeat("x",200),12000,dirs);
            }
            long nearBudget=bytes(dirs);check(nearBudget>700000,"fixture exercises global budget pressure");
            Object p=new Object(),r=new Object();
            E01GpsDiagnostic.attached(p,context);Thread.awaitIdle();E01GpsDiagnostic.request(r,p,1);
            for(int i=1;i<=12;i++){
                E01GpsDiagnostic.fix(p,"gps",1000,2,true);E01GpsDiagnostic.submitted(r);
                Thread.advanceTo(i*15000L);check(bytes(dirs)<=1000000,"actual diagnostic write respects global limit");
            }
            List<String[]> ui=E01LogPolicy.readUi(context);
            int diagnosticRows=0;boolean finalRow=false;
            for(String[] item:ui){
                if(item[2].contains("[定位诊断] #1 ")){diagnosticRows++;if(item[2].contains("结束 180s"))finalRow=true;}
                check(item[2].indexOf('\uFFFD')<0,"retained UTF-8 remains readable");
            }
            check(diagnosticRows==13,"UI exposes start, eleven summaries and final diagnostic row");
            check(finalRow,"UI exposes final 180s summary");
            File current=new File(context.filesDir,"06link.log");
            String actual=new String(Files.readAllBytes(current.toPath()),StandardCharsets.UTF_8);
            String summary=null;for(String line:actual.split("\n"))if(line.contains("[定位诊断] #1 "))summary=line;
            check(summary!=null,"real diagnostic summary exists on disk");
            for(int i=0;i<2000;i++){
                E01LogPolicy.append(current,summary);check(bytes(dirs)<=1000000,"summary flood remains within 1MB");
            }
            check(current.length()<=E01LogPolicy.SESSION_BYTES,"current file remains bounded");
            check(new File(context.filesDir,"previous.log").length()<=E01LogPolicy.SESSION_BYTES,"rotated file remains bounded");
            check(!E01LogPolicy.readUi(context).isEmpty(),"UI reader remains usable after summary flood");
            System.out.println("PASS real helper/log-policy integration: "+assertions+" assertions; retained known log bytes="+bytes(dirs)+" <= 1000000");
        }finally{Thread.reset();}
    }
    private static void fill(File file,String row,long minimum,File[] dirs)throws Exception{
        for(int i=0;i<2000&&file.length()<minimum;i++){
            E01LogPolicy.append(file,row);check(bytes(dirs)<=1000000,"prefill obeys global budget");
        }
        check(file.length()>=minimum,"prefill reached target");
    }
    private static long bytes(File[] dirs){long bytes=0;for(File dir:dirs){File[] files=dir.listFiles();if(files!=null)for(File file:files)if(file.isFile())bytes+=file.length();}return bytes;}
    private static String repeat(String s,int count){StringBuilder b=new StringBuilder();for(int i=0;i<count;i++)b.append(s);return b.toString();}
    private static void check(boolean condition,String message){assertions++;if(!condition)throw new AssertionError(message);}
}
