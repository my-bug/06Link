package com.shilapi.xcertplay;

import static com.shilapi.xcertplay.E01WirelessAudioHandoff.Profile.*;
import java.net.InetAddress;
import java.util.*;
import android.content.Context;

public final class HandoffTest {
    static void check(boolean condition, String message) { if (!condition) throw new AssertionError(message); }
    static final String A="11:22:33:44:55:66", B="11:22:33:44:55:77";
    static final Device first=new Device(A), second=new Device(B);

    public static final class Device {
        private final String address;
        Device(String value) { address=value; }
        public String getAddress() { return address; }
    }
    public static final class Api {
        List<Device> devices = new ArrayList<>();
        int exits, entries, transfers, enables, legacyCommands;
        boolean sco, delayed, delayedConnect, accept=true;
        Runnable duringDisconnect;
        public List<Device> getConnectedDevices() { return new ArrayList<>(devices); }
        public boolean disconnect(Device device) { legacyCommands++; return false; }
        private boolean issueDisconnect(Device device) {
            exits++;
            if(duringDisconnect!=null) { duringDisconnect.run(); duringDisconnect=null; }
            if(!accept) return false;
            if(!delayed) devices.remove(device);
            return true;
        }
        public boolean connect(Device device) { legacyCommands++; return false; }
        private boolean issueConnect(String address) {
            entries++; Device device=A.equals(address)?first:second;
            if(!delayedConnect&&!devices.contains(device))devices.add(device); return true;
        }
        private String connectedAddress(){return devices.isEmpty()?"00:00:00:00:00:00":devices.get(0).getAddress();}
        public boolean isA2dpConnected(){return !devices.isEmpty();}
        public boolean isHfpConnected(){return !devices.isEmpty();}
        public String getA2dpConnectedAddress(){return connectedAddress();}
        public String getHfpConnectedAddress(){return connectedAddress();}
        public int getHfpAudioConnectionState(){return sco?140:110;}
        public boolean reqA2dpDisconnect(String address){
            if(address.equals(connectedAddress()))issueDisconnect(devices.get(0));
            return false; // Exact GOC behavior: the command was sent but the return is false.
        }
        public boolean reqHfpDisconnect(String address){
            if(address.equals(connectedAddress()))issueDisconnect(devices.get(0)); return true;
        }
        public boolean reqA2dpConnect(String address){issueConnect(address);return false;}
        public boolean reqHfpConnect(String address){return issueConnect(address);}
        public boolean reqHfpAudioTransferToPhone(){transfers++;sco=false;return true;}
        public boolean isAudioConnected(Device device) { return devices.contains(device) && sco; }
        public boolean disconnectAudio() { transfers++; sco=false; return true; }
        public void audioEnable() { enables++; android.os.SystemProperties.state="1"; }
    }
    public static final class Adapter {
        Device[] paired={first,second};
        public Device[] getBondedDevices() { return paired; }
    }
    public static final class Connection {
        Object api;
        Connection(Object api) { this.api=api; }
    }
    public static final class Lookup {
        private final Connection a2dpConnection, hfpConnection, adapterConnection;
        Lookup(Api music, Api call, Adapter adapter) {
            a2dpConnection=new Connection(music);hfpConnection=new Connection(call);adapterConnection=new Connection(adapter);
        }
    }

    private final Context context=new Context();
    private final Object owner=new Object(), otherOwner=new Object();
    private final Api music=new Api(), call=new Api();
    private final Adapter adapter=new Adapter();
    private final Lookup lookup=new Lookup(music,call,adapter);
    private long time;
    HandoffTest(){context.music=music;context.call=call;}
    void tick(long advance) {
        time+=advance;
        android.os.SystemClock.now=time;
        E01WirelessAudioHandoff.maintain(context,lookup);
    }
    void start(boolean full) { E01WirelessAudioHandoff.start(owner,7,A,full); }
    void stop() { E01WirelessAudioHandoff.stop(owner); }
    void profiles() { music.devices.add(first); call.devices.add(first); }

    void exclusive() {
        profiles(); tick(0); check(music.exits+call.exits==0,"waiting for phone");
        start(true); tick(0); check(music.devices.isEmpty()&&call.devices.isEmpty(),"both music and idle hands-free detached");
        for(int i=0;i<10;i++){start(true);tick(2000);}
        check(music.exits==1&&call.exits==1,"stable background session sends no repeated disconnect");
        music.devices.add(second);call.devices.add(second);tick(1);
        check(music.devices.isEmpty()&&call.devices.isEmpty(),"reappearing OEM audio from another phone released");
        stop();tick(1);
        check(music.devices.equals(Arrays.asList(first))&&call.devices.equals(Arrays.asList(first)),"restore original phone");
        tick(2000);check(music.entries+call.entries==2,"restore once");
    }
    void bootstrap() {
        profiles(); call.sco=true; start(false);tick(0);
        check(music.exits==1&&call.exits==0&&call.transfers==1,"media and live SCO released while bootstrap can still carry control");
        call.sco=true;tick(1001);check(call.transfers==2,"new SCO is released");
        start(true);start(false);tick(0);check(call.exits==1,"complete handoff cannot be downgraded by a late callback");
        stop();tick(0);check(music.entries==1&&call.entries==1,"both original profiles restored at actual end");
    }
    void nativeReturn() {
        profiles(); start(true);tick(0);tick(1);
        music.devices.add(first);call.devices.add(first);tick(1);
        check(music.exits==2&&call.exits==2,"native reconnect suppressed on both profiles");
        check(music.enables==0&&call.transfers==0,"no global mixer or forced phone audio transfer after handoff");
    }
    void asynchronous() {
        profiles();music.delayed=true;call.accept=false;start(true);tick(0);tick(1000);tick(1000);
        check(music.exits==1&&call.exits==1,"no storm while OEM call is pending or refused");
        music.devices.clear();call.accept=true;tick(1100);
        check(call.devices.isEmpty()&&music.exits==1,"refused profile retried independently");
    }
    void priorState() {
        call.devices.add(first);start(true);tick(0);stop();tick(100);
        check(music.entries==0&&call.entries==1,"previously disconnected profile not explicitly enabled");
    }
    void selection() {
        profiles();start(true);tick(0);context.getSharedPreferences("oem-bt-test",0).edit().putString("phone",B).commit();
        stop();tick(0);check(music.entries+call.entries==0,"explicit choice of B never reconnects A");
        E01WirelessAudioHandoff.reconnectSelected(context,lookup,B,true,() -> true);
        check(call.devices.equals(Arrays.asList(second)),"selected paired phone can bootstrap again");
    }
    void noStealing() {
        profiles();start(true);tick(0);stop();call.devices.add(second);tick(1);
        check(call.entries+music.entries==0,"ending session does not replace someone already connected");
        E01WirelessAudioHandoff.reconnectSelected(context,lookup,A,false,() -> true);
        check(call.entries==0,"automatic bootstrap cannot replace the other connected phone");
    }
    void lateDisconnect() {
        profiles();music.delayed=true;start(true);tick(0);stop();tick(1);
        check(music.entries==0,"allow an accepted disconnect to complete at exit");
        music.devices.clear();tick(2000);
        check(music.entries==1 && music.devices.contains(first),"restore after delayed disconnect");
        tick(7000);music.devices.clear();tick(10000);
        check(music.entries==1,"no ongoing reconnection after exit");
    }
    void unpaired() {
        profiles();start(true);tick(0);stop();adapter.paired=new Device[]{second};tick(1);
        check(call.entries+music.entries==0,"forgotten phone is not reconnected");
    }
    void cancelled() {
        profiles();start(true);stop();tick(0);check(call.exits+music.exits==0,"cancel before work");
        start(true);music.duringDisconnect=this::stop;tick(0);tick(1);
        check(call.exits==0&&music.entries==1,"cancel in flight restores only what was changed");
    }
    void generations() {
        profiles();start(true);tick(0);E01WirelessAudioHandoff.start(otherOwner,8,B,true);
        E01WirelessAudioHandoff.stop(owner);call.devices.add(second);tick(1);
        check(call.devices.isEmpty(),"late stop does not release new owner");
        E01WirelessAudioHandoff.stop(otherOwner);tick(1);
        check(call.devices.equals(Arrays.asList(second))&&music.devices.isEmpty(),"old phone is not reconnected");
    }
    void serviceAndUpgrade() {
        profiles();android.os.SystemProperties.state="0";
        context.getSharedPreferences("06link-audio-handoff",0).edit().putBoolean("restore_a2dp",true).commit();
        context.call=null;start(true);tick(0);
        check(music.exits==1&&music.enables==1&&call.exits==0,"old renderer setting recovered and music independent of unbound HFP");
        context.call=call;tick(5001);
        check(call.exits==1&&music.enables==1,"late binder and one-time upgrade recovery");
    }
    void hardwareReadback() {
        profiles(); music.delayed=true; start(true);tick(0);
        check(music.exits==1 && music.devices.contains(first),"submitted command is not treated as disconnected");
        tick(2000);check(music.exits==1,"wait before retry");
        tick(1001);check(music.exits==2,"still-connected profile retried despite misleading return");
        music.devices.clear();tick(3001);tick(3001);
        check(music.exits==2,"confirmed disconnection stops hardware commands");
        check(music.legacyCommands+call.legacyCommands==0,"never call public no-op audio disconnect/connect");
    }
    void serviceRestart() {
        profiles();start(true);tick(0);
        context.disconnectBindings();music.devices.add(first);call.devices.add(first);tick(4000);
        check(music.exits==1 && call.exits==1,"disconnected Binder is not reused");
        context.reconnectBindings();tick(1);
        check(music.exits==2 && call.exits==2,"existing binding resumes readback after OEM service restart");
    }
    void unsupported() {
        android.os.Build.MODEL="tablet";profiles();start(true);tick(0);check(call.exits+music.exits==0,"E01-specific OEM services");
    }
    void nativeReadiness() throws Exception {
        Api staleMusic=new Api(), staleCall=new Api();
        Lookup stale=new Lookup(staleMusic,staleCall,adapter);
        profiles();
        check(E01WirelessAudioHandoff.connectedPhones(context,stale).equals(Arrays.asList(A)),
                "hardware reconnection remains visible while public profiles are empty");
        music.devices.clear();call.devices.clear();staleMusic.devices.add(first);staleCall.devices.add(first);
        check(E01WirelessAudioHandoff.connectedPhones(context,stale).isEmpty(),
                "public cache cannot report a disconnected phone as ready");
        music.devices.add(new Device("aa:bb:cc:dd:ee:ff"));call.devices.add(new Device("AA:BB:CC:DD:EE:FF"));
        check(E01WirelessAudioHandoff.connectedPhones(context,stale).size()==1,
                "one phone on two profiles is not mistaken for multiple phones");
    }
    void partialReadiness() throws Exception {
        context.music=null;call.devices.add(first);
        check(E01WirelessAudioHandoff.connectedPhones(context,lookup).equals(Arrays.asList(A)),
                "a delayed music Binder does not hide an established HFP connection");
    }
    void reconnectAfterEnd() {
        start(true);tick(0);
        E01WirelessAudioHandoff.reconnectSelected(context,lookup,A,false,() -> true);
        check(call.entries+music.entries==0,"pending wireless does not re-enable audio during CarPlay");
        stop();tick(1);
        E01WirelessAudioHandoff.reconnectSelected(context,lookup,A,false,() -> true);
        check(call.entries==1&&call.devices.contains(first),"pending request retries after old session releases audio");
        start(true);tick(1);
        check(call.devices.isEmpty()&&call.exits==1,"next CarPlay session still disconnects restored Bluetooth audio");
    }
    void reconnectLateService() {
        context.call=null;
        E01WirelessAudioHandoff.reconnectSelected(context,lookup,A,false,() -> true);
        check(call.entries==0,"missing service must not be counted as successful reconnect");
        context.call=call;tick(5001);
        E01WirelessAudioHandoff.reconnectSelected(context,lookup,A,false,() -> true);
        check(call.entries==1,"next poll can reconnect after the service becomes ready");
    }
    void reconnectBackoff() {
        call.delayedConnect=true;
        for(int i=0;i<3;i++){
            E01WirelessAudioHandoff.reconnectSelected(context,lookup,A,false,() -> true);tick(1000);
        }
        check(call.entries==1,"repeated polls do not flood an in-flight HFP connect");
        E01WirelessAudioHandoff.reconnectSelected(context,lookup,A,false,() -> true);
        check(call.entries==2,"failed reconnect can retry after backoff");
        call.devices.add(first);tick(3001);
        E01WirelessAudioHandoff.reconnectSelected(context,lookup,A,false,() -> true);
        check(call.entries==2&&music.entries==0,"already connected phone is not disconnected/reconnected again");
    }
    void reconnectDuringRestore() {
        profiles();start(true);tick(0);music.delayedConnect=true;call.delayedConnect=true;stop();tick(1);
        E01WirelessAudioHandoff.reconnectSelected(context,lookup,A,false,() -> true);
        check(call.entries==1,"pending retry shares the exit restoration backoff");
    }
    void reconnectCancelled() {
        final int[] checks={0};
        E01WirelessAudioHandoff.reconnectSelected(context,lookup,A,false,() -> ++checks[0]==1);
        check(checks[0]==2&&call.entries==0,"cancelled or changed selection is rechecked before hardware command");
        adapter.paired=new Device[]{second};
        E01WirelessAudioHandoff.reconnectSelected(context,lookup,A,true,() -> true);
        check(call.entries==0,"explicit retry cannot reconnect a forgotten phone");
    }
    void peers() throws Exception {
        InetAddress a=InetAddress.getByAddress(new byte[]{10,0,0,1}), b=InetAddress.getByAddress(new byte[]{10,0,0,2});
        E01WirelessPeers gate=new E01WirelessPeers(A,new HashSet<>(Arrays.asList(A,B)));
        Object primary=new Object(), probe=new Object(), alternate=new Object();
        check(!gate.allows(alternate,b,B),"known second phone rejected before Bonjour reply");
        check(!gate.discovered(b,B)&&gate.discovered(a,A),"both discovery paths can exclude second phone");
        check(gate.allows(primary,a,"unrelated-AirPlay-ID")&&!gate.allows(alternate,b,null),"use peer identity on the right interface");
        InetAddress third=InetAddress.getByAddress(new byte[]{10,0,0,3});
        check(!gate.record(probe,third,null),"unknown phone cannot win over a discovered selection");
        check(gate.record(primary,a,A)&&gate.record(primary,a,A),"repeated RECORD idempotent");
        check(gate.hasActive()&&!gate.discovered(third,null),"ignore anonymous discovery during playback");
        check(!gate.ended(probe)&&!gate.record(alternate,b,B),"ending another socket cannot drop active owner");
        check(gate.allows(probe,a,null),"legitimate auxiliary connection");
        check(gate.ended(primary)&&gate.record(new Object(),a,A),"owner loss permits genuine reconnect");
        gate.close();check(!gate.allows(primary,a,A)&&!gate.discovered(a,A),"retired generation ignores late events");
        E01WirelessPeers fresh=new E01WirelessPeers(A,Collections.<String>emptySet());
        check(fresh.discovered(a,null)&&fresh.record(primary,a,null),"single phone without discovery TXT");
    }
    public static void main(String[] args) throws Exception {
        HandoffTest test=new HandoffTest();
        HandoffTest.class.getDeclaredMethod(args[0]).invoke(test);
        System.out.println("PASS "+args[0]);
    }
}
