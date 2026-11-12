package com.shilapi.xcertplay;

import android.app.ActivityThread;
import android.content.Context;
import com.shilapi.xcertplay.transport.*;
import com.shilapi.xcertplay.iap2.wire.*;
import com.shilapi.xcertplay.iap2.body.Iap2BodyBuilder;
import com.shilapi.xcertplay.iap2.catalog.*;
import java.nio.file.*;
import java.util.*;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/** Runs the APK's converted real core, not a reimplementation of its TLV builder. */
public final class LaneCoreRuntimeTest {
    private static int checks;
    private static void check(boolean ok,String why){checks++;if(!ok)throw new AssertionError(why);}
    private static int u16(byte[] data,int at){return (data[at]&255)*256+(data[at+1]&255);}
    private static LinkedHashMap<Integer,byte[]> fields(byte[] data){
        LinkedHashMap<Integer,byte[]> result=new LinkedHashMap<Integer,byte[]>();
        for(int i=0;i<data.length;){int n=u16(data,i);check(n>=4&&i+n<=data.length,"valid TLV length");
            int tag=u16(data,i+2);check(!result.containsKey(tag),"non-repeated fixture field");
            result.put(tag,Arrays.copyOfRange(data,i+4,i+n));i+=n;}
        return result;
    }
    public static void main(String[] args)throws Exception{
        boolean patched="patched".equals(args[0]);Path output=Paths.get(args[1]);Files.createDirectories(output);
        ActivityThread.context=new Context();
        for(int mask=0;mask<16;mask++)for(int requested=0;requested<2;requested++){
            ActivityThread.context.enabled=requested!=0;
            Iap2WirelessIdentification wireless=(mask&1)==0?null:new Iap2WirelessIdentification("02:11:22:33:44:55","06Link-Test");
            Iap2IdentificationConfig config=new Iap2IdentificationConfig("06Link","E01","LYNKCO","TEST-SERIAL","1.2.test","E01",2,"com.sixlink.car","zh",wireless,(mask&2)!=0,(mask&4)!=0,EvChargingConnectors.GB_T,(mask&8)!=0);
            Iap2Frame frame=Iap2IdentificationClient.Companion.identificationInformation(config);
            check(frame.getMessageId()==0x1d01,"Identification message ID");
            Map<Integer,byte[]> body=fields(frame.getPayload());
            byte[] received=body.get(7);int laneCount=0;
            for(int p=0;p<received.length;p+=2)if(u16(received,p)==0x5204)laneCount++;
            boolean expected=patched&&requested!=0;
            check(laneCount==(expected?1:0),"receive list actual wire");
            Map<Integer,byte[]> component=fields(body.get(0x1e));
            check(component.containsKey(7)==expected&&component.containsKey(8)==expected,"component actual wire gate");
            if(expected){check(u16(component.get(7),0)==64,"description actual wire");check(u16(component.get(8),0)==1,"events actual wire");}
            check(u16(component.get(0),0)==42&&u16(component.get(2),0)==64&&u16(component.get(4),0)==64&&u16(component.get(6),0)==8,"existing component values");
            Files.write(output.resolve(mask+"-"+requested+".bin"),frame.getPayload());
        }
        // New schema fields are optional; arbitrary fields still fail the original validator.
        boolean rejected=false;
        try{
            Iap2BodyBuilder builder=Iap2BodyBuilder.Companion.of(Iap2Endpoints.INSTANCE.getIDENTIFICATION_INFORMATION());
            builder.group(0x1e,new Function1(){public Object invoke(Object argument){
                Iap2BodyBuilder child=(Iap2BodyBuilder)argument;
                child.u16(0,42);child.string(1,"RouteGuidance");child.u16(9,1);return Unit.INSTANCE;
            }});
        }catch(Exception expected){rejected=expected instanceof Iap2ProtocolException;}
        check(rejected,"unknown child field still rejected");
        Iap2Frame lane=new Iap2Frame(0x5204,new byte[0]);
        java.util.List result=new Iap2CsmFramer().offer(lane.encodedFrame());
        check(result.size()==1&&((Iap2Frame)result.get(0)).getMessageId()==0x5204,"actual framer accepts lane message");
        System.out.println(args[0]+" real APK core assertions="+checks);
    }
}
