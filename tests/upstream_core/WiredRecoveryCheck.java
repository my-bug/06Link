package com.shilapi.xcertplay.transport;
public final class WiredRecoveryCheck {
    static final class Clock implements WiredStartRecovery.Clock {long ms=1000;public long now(){return ms*1_000_000L;}}
    static void check(boolean b){if(!b)throw new AssertionError();}
    static byte[] syn(int port,int flags){byte[] p=new byte[60];p[0]=0x60;p[5]=20;p[6]=6;p[42]=(byte)(port>>>8);p[43]=(byte)port;p[52]=0x50;p[53]=(byte)flags;return p;}
    static WiredStartRecovery state(Clock c){WiredStartRecovery s=new WiredStartRecovery(c);s.preparePort(7000);s.startSent();return s;}
    static void advertisementChecks() throws Exception {
        Clock clock = new Clock();
        WiredStartRecovery s = new WiredStartRecovery(clock);
        s.preparePort(7000);
        check(!s.takeAdvertisementAttempt());
        s.startSent(); clock.ms += 999; check(!s.takeAdvertisementAttempt());
        clock.ms++; check(s.takeAdvertisementAttempt()); check(!s.takeAdvertisementAttempt());
        clock.ms += 3999; check(!s.takeAdvertisementAttempt());
        clock.ms++; check(s.takeAdvertisementAttempt());
        clock.ms += 8000; check(s.takeAdvertisementAttempt());
        clock.ms += 8000; check(!s.takeAdvertisementAttempt());
        check(s.writeTimeout(500) == 20 && s.poll() == WiredStartRecovery.WAIT);
        for (int scenario = 0; scenario < 5; scenario++) {
            s = state(clock);
            if (scenario == 0) s.cancel();
            if (scenario == 1) s.sessionActive();
            if (scenario == 2) s.observeIpv6(syn(7000, 2), 0, 60);
            if (scenario == 3) s.acceptedWrite(false);
            if (scenario == 4) clock.ms += 30000;
            clock.ms += 1000; check(!s.takeAdvertisementAttempt());
        }
        byte[] mac = {2, 3, 4, 5, 6, 7};
        java.net.InetAddress local = java.net.InetAddress.getByName("fe80::1:2345");
        byte[] p = WiredStartRecovery.localAdvertisement(local, mac);
        check(p.length == 64 && p[0] == 0x60 && p[5] == 24 && p[6] == 58 && p[7] == -1);
        check(java.util.Arrays.equals(local.getAddress(), java.util.Arrays.copyOfRange(p, 8, 24)));
        check(java.util.Arrays.equals(local.getAddress(), java.util.Arrays.copyOfRange(p, 48, 64)));
        check(java.util.Arrays.equals(java.net.InetAddress.getByName("ff02::1").getAddress(), java.util.Arrays.copyOfRange(p, 24, 40)));
        check((p[40] & 255) == 136 && p[41] == 0 && p[44] == 0);
        check(WiredStartRecovery.localAdvertisement(java.net.InetAddress.getByName("::1"), mac) == null);
        check(WiredStartRecovery.localAdvertisement(local, new byte[6]) == null);
        mac[0] = 1; check(WiredStartRecovery.localAdvertisement(local, mac) == null);
    }
    public static void main(String[] args) throws Exception {
        advertisementChecks();
        Clock mock = new Clock();
        for (int mode=0; mode<3; mode++) {
            WiredStartRecovery s= new WiredStartRecovery(mock);
            if (mode==0) s.acceptedWrite(false);
            mock.ms+=100; s.startSent(); mock.ms+=1200;
            check(s.takeStartupSummary()==null);
            if (mode==1) {check(s.takeAdvertisementAttempt()); s.acceptedWrite(true); s.acceptedWrite(false);}
            s.sessionActive();
            String line=s.takeStartupSummary();
            check(line.equals("wired start: probes="+(mode==1?1:0)+" firstWrite="+
                new String[]{"traffic", "probe", "none"}[mode]+" firstWriteAfterInviteMs="+
                new String[]{"-100", "1200", "unknown"}[mode]+" inviteToActiveMs=1200"));
            check(s.takeStartupSummary()==null);
        }
        WiredStartRecovery stopped=state(mock); stopped.cancel(); stopped.sessionActive(); check(stopped.takeStartupSummary()==null);
        Clock c=new Clock();WiredStartRecovery s=state(c);
        check(s.writeTimeout(2000)==20 && s.writeTimeout(10)==10 && s.pollTimeout(30000)==500);
        c.ms+=22000;s.acceptedWrite(false);check(s.writeTimeout(2000)==2000);c.ms+=1999;check(s.poll()==0);
        c.ms++;check(s.poll()==1);s.sentAgain();check(s.poll()==0);c.ms+=29999;check(s.poll()==0);c.ms++;check(s.poll()==2);
        c=new Clock();s=new WiredStartRecovery(c);s.acceptedWrite(false);c.ms++;s.startSent();c.ms+=30000;check(s.poll()==2);
        c=new Clock();s=state(c);c.ms+=100;s.acceptedWrite(false);s.observeIpv6(syn(7000,2),0,60);c.ms+=3000;check(s.poll()==0);c.ms+=30000;check(s.poll()==2);
        c=new Clock();s=state(c);s.observeIpv6(syn(7000,2),0,60);c.ms+=22000;s.acceptedWrite(false);c.ms+=2000;check(s.poll()==1);
        c=new Clock();s=state(c);c.ms+=30000;check(s.poll()==3);c.ms+=200;s.acceptedWrite(false);c.ms+=2000;check(s.poll()==1);s.sentAgain();c.ms+=30000;check(s.poll()==2);
        c=new Clock();s=state(c);c.ms+=30000;check(s.poll()==3);c.ms+=15000;check(s.poll()==2);check(s.poll()==0);
        c=new Clock();s=state(c);c.ms+=50000;check(s.poll()==2);
        c=new Clock();s=state(c);c.ms+=20000;s.acceptedWrite(false);s.sessionActive();c.ms+=50000;check(s.poll()==0&&s.pollTimeout(30000)==30000);
        c=new Clock();s=state(c);s.cancel();c.ms+=50000;check(s.poll()==0);
        c=new Clock();s=state(c);c.ms+=20000;s.acceptedWrite(false);s.observeIpv6(syn(7001,2),0,60);s.observeIpv6(syn(7000,0x12),0,60);c.ms+=2000;check(s.poll()==1);
        c=new Clock();s=state(c);c.ms+=20000;s.acceptedWrite(false);byte[] p=syn(7000,2);p[5]=21;s.observeIpv6(p,0,60);s.observeIpv6(p,-1,60);s.observeIpv6(p,0,61);c.ms+=2000;check(s.poll()==1);
        c=new Clock();s=state(c);c.ms+=20000;s.acceptedWrite(false);p=new byte[68];p[0]=0x60;p[5]=28;p[6]=0;p[40]=6;System.arraycopy(syn(7000,2),40,p,48,20);s.observeIpv6(p,0,68);c.ms+=3000;check(s.poll()==0);
        c=new Clock();s=state(c);c.ms+=29000;s.startSent();c.ms+=1000;check(s.poll()==3); // Availability repeats cannot extend forever.
        c=new Clock();s=new WiredStartRecovery(c);c.ms+=60000;check(s.poll()==0 && s.pollTimeout(30000)==30000);
        c=new Clock();s=state(c);c.ms+=20000;s.acceptedWrite(false);c.ms+=2000;check(s.poll()==1&&s.canSendAgain());s.cancel();check(!s.canSendAgain());
        c=new Clock();s=state(c);c.ms+=20000;s.acceptedWrite(false);c.ms+=2000;check(s.poll()==1);s.sessionActive();check(!s.canSendAgain());
        c=new Clock();s=state(c);c.ms+=20000;s.acceptedWrite(false);c.ms+=2000;check(s.poll()==1);s.observeIpv6(syn(7000,2),0,60);check(!s.canSendAgain());
        c=new Clock();s=state(c);c.ms+=20000;s.acceptedWrite(false);c.ms+=2000;check(s.poll()==1);s.sentAgain();c.ms+=20000;s.sentAgain();c.ms+=10000;check(s.poll()==2);
        check(WiredConfigurationPolicy.choose(true,true,0,false)==0);
        check(WiredConfigurationPolicy.choose(true,true,0,true)==1);
        check(WiredConfigurationPolicy.choose(true,true,1,true)==0);
        check(WiredConfigurationPolicy.choose(true,false,0,false)==1);
        check(WiredConfigurationPolicy.choose(true,false,1,false)==0);
        check(WiredConfigurationPolicy.choose(false,false,1,false)==1);
        check(WiredConfigurationPolicy.choose(false,false,2,false)==2);
        UsbConfigView cfg=new UsbConfigView();cfg.interfaces.add(new UsbInterfaceView(255,253,1));
        check(WiredConfigurationPolicy.carPlayMode(cfg)&&!WiredConfigurationPolicy.fallback(cfg,"node1"));
        WiredConfigurationPolicy.started("node1");check(WiredConfigurationPolicy.fallback(cfg,"node1"));
        check(!WiredConfigurationPolicy.startedOn("node2"));cfg.interfaces.clear();check(WiredConfigurationPolicy.fallback(cfg,"node2"));
        System.out.println("PASS wired late-open/SYN/timing/cancel/configuration scenarios");
    }
}
