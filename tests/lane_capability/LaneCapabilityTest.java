package com.shilapi.xcertplay;

import android.app.ActivityThread;
import android.content.Context;
import android.os.Build;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;

public final class LaneCapabilityTest {
    private static int checks;
    private static final int[] BASE = {0xaa00,0xaa02,0xaa04,0xaa05,0xea00,0xea01,0x5001,0x5201,0x5202,0xae01,0x4158,0x4155,0x4300};
    private static void check(boolean value,String why) {checks++;if(!value)throw new AssertionError(why);}
    private static void enabled(boolean value) {
        Build.VERSION.SDK_INT=22;Build.MODEL="E01";Build.DEVICE="BX11QJ";
        ActivityThread.context=new Context();ActivityThread.context.enabled=value;
    }
    private static void finish(boolean expected) {
        check(E01LaneCapability.declareComponent()==expected,"component gate");
        E01LaneCapability.identificationBuilt();
        check(E01LaneCapability.declaration().advertised==expected,"completed declaration");
        check("identification-built".equals(E01LaneCapability.declaration().source),"source is not ACK");
    }
    private static void absent(String why) {
        E01LaneCapability.beginIdentification();
        check(E01LaneCapability.messagesReceived(BASE)==BASE,why+" untouched array");
        finish(false);
    }
    public static void main(String[] args)throws Exception {
        check(!E01LaneCapability.declaration().advertised,"no previous capability at startup");
        check("not-built".equals(E01LaneCapability.declaration().source),"startup unknown");
        E01LaneCapability.refreshDiagnostic(null);
        check(E01LaneCapability.messagesReceived(BASE)==BASE,"no pending identity");
        check(!E01LaneCapability.declareComponent(),"no pending component");
        enabled(false);absent("projection disabled");
        enabled(true);Build.MODEL="other";absent("model");
        enabled(true);Build.DEVICE="other";absent("device");
        enabled(true);Build.VERSION.SDK_INT=23;absent("API");
        enabled(true);ActivityThread.context=null;absent("no context");
        enabled(true);ActivityThread.context.fail=true;absent("preferences unavailable");

        enabled(true);E01LaneCapability.beginIdentification();
        E01LaneDiagnostic early=E01LaneCapability.newDiagnostic();
        String building=early.poll(0,false)[0];
        check(building.contains("cap5204=false")&&building.contains("capSource=building"),"early helper does not reuse previous identity");
        ActivityThread.context.enabled=false; // The complete body uses one immutable setting snapshot.
        int[] result=E01LaneCapability.messagesReceived(BASE);
        check(result.length==BASE.length+1&&result[BASE.length]==0x5204,"append lane receive ID");
        check(Arrays.equals(BASE,Arrays.copyOf(result,BASE.length)),"all original receive IDs unchanged");
        check(E01LaneCapability.messagesReceived(result)==result,"no duplicate ID");
        finish(true);
        check(!E01LaneCapability.declareComponent(),"pending state released after full frame");
        E01LaneCapability.refreshDiagnostic(early);
        String built=early.poll(60000,false)[0];
        check(built.contains("cap5204=true capDesc=64 capEvents=1"),"early helper refreshed after body built");
        check(built.contains("capSource=identification-built"),"no phone ACK assertion");
        check(built.contains("subscribe=未观测"),"subscription remains unknown");
        E01LaneCapability.refreshDiagnostic(early);
        check(early.poll(60001,false)==null,"no extra logging during same minute");
        check(E01LaneCapability.declaration().advertised,"later setting off does not falsify sent body");
        E01LaneDiagnostic ended=E01LaneCapability.newDiagnostic();
        check(ended.poll(60000,true)[0].contains("cap5204=true"),"end snapshot captured");

        E01LaneCapability.beginIdentification(); // The setting is now off.
        check(!E01LaneCapability.declaration().advertised,"new identity clears previous link capability");
        check("building".equals(E01LaneCapability.declaration().source),"new incomplete identity visible");
        check(E01LaneCapability.messagesReceived(BASE)==BASE,"off link baseline");
        finish(false);
        E01LaneCapability.refreshDiagnostic(ended);
        check(ended.poll(120000,false)==null,"ended diagnostic cannot be revived");
        E01LaneCapability.refreshDiagnostic(early);
        String disabled=early.poll(120000,false)[0];
        check(disabled.contains("cap5204=false capDesc=0 capEvents=0"),"built off distinct from early");
        check(disabled.contains("capSource=identification-built"),"built off source");

        enabled(true);E01LaneCapability.beginIdentification();
        check(E01LaneCapability.messagesReceived(null)==null,"null baseline stays null");
        finish(false);
        enabled(true);E01LaneCapability.beginIdentification();
        E01LaneCapability.messagesReceived(BASE);E01LaneCapability.identificationBuilt();
        check(!E01LaneCapability.declaration().advertised,"receive list alone is not full capability");
        check(!E01LaneCapability.declareComponent(),"incomplete build does not leave pending state");

        // GPS/vehicle/wireless extras stay in their original order, independently of transport.
        for(int mask=0;mask<8;mask++) {
            enabled(true);E01LaneCapability.beginIdentification();
            int[] input=Arrays.copyOf(BASE,BASE.length+Integer.bitCount(mask));int at=BASE.length;
            if((mask&1)!=0)input[at++]=0xfffa;if((mask&2)!=0)input[at++]=0xa100;if((mask&4)!=0)input[at++]=0x5702;
            int[] copy=input.clone(),output=E01LaneCapability.messagesReceived(input);
            check(Arrays.equals(input,copy),"input not mutated "+mask);
            check(Arrays.equals(copy,Arrays.copyOf(output,copy.length)),"existing capabilities preserved "+mask);
            check(output[copy.length]==0x5204,"single added capability "+mask);
            finish(true);
        }

        // A slow older build must not overwrite a more recent connection's declared state.
        enabled(true);final CountDownLatch firstReady=new CountDownLatch(1),secondDone=new CountDownLatch(1);
        final Throwable[] error=new Throwable[1];
        java.lang.Thread old=new java.lang.Thread(new Runnable(){public void run(){try{
            E01LaneCapability.beginIdentification();E01LaneCapability.messagesReceived(BASE);
            if(!E01LaneCapability.declareComponent())throw new AssertionError("thread snapshot");
            firstReady.countDown();secondDone.await();E01LaneCapability.identificationBuilt();
        }catch(Throwable e){error[0]=e;firstReady.countDown();}}});
        old.start();firstReady.await();
        ActivityThread.context.enabled=false;E01LaneCapability.beginIdentification();
        E01LaneCapability.messagesReceived(BASE);finish(false);
        long generation=E01LaneCapability.declaration().generation;
        secondDone.countDown();old.join();
        if(error[0]!=null)throw new AssertionError(error[0]);
        check(!E01LaneCapability.declaration().advertised,"late old thread cannot publish stale capability");
        check(E01LaneCapability.declaration().generation==generation,"latest generation stable");
        check(E01LaneCapability.DESCRIPTION_CAPACITY==64&&E01LaneCapability.EVENT_CAPACITY==1,"bounded capacity matches one-event diagnostic");
        E01LaneDiagnostic wide=E01LaneCapability.newDiagnostic();
        wide.setCapability(true,64,1,"identification-built",Long.MAX_VALUE);
        for(String name:new String[]{"routeFrames","maneuverFrames","laneFrames","badFrames","oversizedFrames"}){
            java.lang.reflect.Field f=E01LaneDiagnostic.class.getDeclaredField(name);f.setAccessible(true);f.setLong(wide,Long.MAX_VALUE);
        }
        for(String name:new String[]{"routeIndex","routeTotal","routeShowing","routeState","shownOnCount","shownOffCount"}){
            java.lang.reflect.Field f=E01LaneDiagnostic.class.getDeclaredField(name);f.setAccessible(true);f.setInt(wide,Integer.MAX_VALUE);
        }
        String[] lines=wide.poll(0,false);
        check(lines.length<=3,"maximum three lines with capability source");
        for(String line:lines)check(line.length()<=512,"maximum counters and source fit log line: "+line.length());
        System.out.println("lane capability Java assertions="+checks);
    }
}
