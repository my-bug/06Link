package com.shilapi.xcertplay.transport;

/** Per-link wired startup state, following DiPlay #644, #962 and #1057.
 * Only the existing iAP2 worker polls; no background retries or persistent timers.
 */
public final class WiredStartRecovery {
    public static final int WAIT=0, SEND_AGAIN=1, TIMED_OUT=2, HOLD=3;
    interface Clock { long now(); }
    private final Clock clock;
    private volatile boolean opened, active, cancelled;
    private volatile boolean armed;
    private boolean repeated, rearmed, held, sawSyn;
    private long openedAt, firstSentAt, deadline, lastSynAt;
    private int port;
    private boolean openedByAdvertisement, summaryReported;
    private int advertisementAttempts;
    private long lastAdvertisementAt;

    // A quiet NCM link may produce no ordinary outbound packet after StartSession.
    // Use the idle bridge reader to try one local-address announcement at a time.
    public boolean awaitingStartupWrite() {
        return armed && !opened && !active && !cancelled;
    }

    public synchronized boolean takeAdvertisementAttempt() {
        if (!armed || opened || active || cancelled || sawSyn || advertisementAttempts >= 3) return false;
        long now = clock.now();
        if (now - deadline >= 0 || now - firstSentAt < 1_000_000_000L) return false;
        if (advertisementAttempts > 0 && now - lastAdvertisementAt < advertisementAttempts * 4_000_000_000L) return false;
        advertisementAttempts++;
        lastAdvertisementAt = now;
        return true;
    }

    /** RFC 4861 unsolicited NA for the address just assigned to this USB tunnel.
     * EthernetIpv6Codec adds the target MAC option and computes the ICMPv6 checksum.
     */
    public static byte[] localAdvertisement(java.net.InetAddress local, byte[] mac) {
        if (!(local instanceof java.net.Inet6Address) || !local.isLinkLocalAddress()
                || mac == null || mac.length != 6 || (mac[0] & 1) != 0) return null;
        int bits = 0;
        for (byte octet : mac) bits |= octet;
        if (bits == 0) return null;
        byte[] address = local.getAddress();
        byte[] ipv6 = new byte[64];
        ipv6[0] = 0x60;
        ipv6[5] = 24;
        ipv6[6] = 58;             // ICMPv6
        ipv6[7] = (byte) 255;
        System.arraycopy(address, 0, ipv6, 8, 16);
        ipv6[24] = (byte) 0xff;   // ff02::1, all nodes on this link
        ipv6[25] = 2;
        ipv6[39] = 1;
        ipv6[40] = (byte) 136;    // Unsolicited, non-router, no override
        System.arraycopy(address, 0, ipv6, 48, 16);
        return ipv6;
    }
    public WiredStartRecovery() { this(new Clock(){public long now(){return System.nanoTime();}}); }
    WiredStartRecovery(Clock clock) { this.clock=clock; }
    public int writeTimeout(int requested) { return opened ? requested : Math.min(requested,20); }
    public void acceptedWrite(boolean advertisement) {
        if (opened || cancelled) return;
        synchronized (this) {
            if (opened || cancelled) return;
            openedAt = clock.now();
            openedByAdvertisement = advertisement;
            opened = true;
        }
    }

    /** At most one summary on session activation. A negative delta means USB opened before the invitation. */
    public synchronized String takeStartupSummary() {
        if (!active || !armed || cancelled || summaryReported) return null;
        summaryReported = true;
        String source = !opened ? "none" : (openedByAdvertisement ? "probe" : "traffic");
        String delay = opened ? Long.toString((openedAt - firstSentAt) / 1_000_000L) : "unknown";
        return "wired start: probes=" + advertisementAttempts + " firstWrite=" + source
            + " firstWriteAfterInviteMs=" + delay + " inviteToActiveMs=" + (clock.now() - firstSentAt) / 1_000_000L;
    }
    public synchronized void preparePort(int value) { port=value; }
    public synchronized void startSent() {
        if(armed || active || cancelled)return;
        armed=true;firstSentAt=clock.now();deadline=firstSentAt+30_000_000_000L;
    }
    public synchronized void sentAgain() {
        if(repeated && !rearmed && !active && !cancelled){
            rearmed=true;deadline=clock.now()+30_000_000_000L;
        }
    }
    /** Recheck after polling: stop, an active session or a new SYN cancels the pending resend. */
    public synchronized boolean canSendAgain() {
        return repeated && !rearmed && !active && !cancelled
            && (!sawSyn || lastSynAt-openedAt<0);
    }
    public void sessionActive() { active=true; }
    public void cancel() { cancelled=true; }
    public synchronized long pollTimeout(long requested) {
        return armed && !active && !cancelled ? Math.min(requested,500L) : requested;
    }
    private boolean canRepeat() {
        return !repeated && (!opened || (openedAt-firstSentAt>=0 && (!sawSyn || lastSynAt-openedAt<0)));
    }
    public synchronized int poll() {
        if(!armed || active || cancelled)return WAIT;
        long now=clock.now();
        if(now-deadline>=0){
            if(!held && !repeated && canRepeat() && now-firstSentAt<45_000_000_000L){
                held=true;deadline=firstSentAt+45_000_000_000L;return HOLD;
            }
            cancelled=true;return TIMED_OUT;
        }
        if(canRepeat() && opened && now-openedAt>=2_000_000_000L){
            repeated=true;return SEND_AGAIN;
        }
        return WAIT;
    }
    /** Ignore video/media traffic once connected. Inspect only complete IPv6 TCP SYN headers. */
    public void observeIpv6(byte[] packet,int offset,int length) {
        if(active || cancelled || packet==null || offset<0 || length<40 || offset>packet.length-length)return;
        if((packet[offset]&0xf0)!=0x60)return;
        int payload=u16(packet,offset+4);
        if(payload>length-40)return;
        int end=offset+40+payload,next=packet[offset+6]&255,pos=offset+40;
        for(int count=0;count<8 && next!=6;count++){
            if(next==0 || next==43 || next==60){
                if(pos>end-2)return;
                int size=((packet[pos+1]&255)+1)*8;
                if(size>end-pos)return;
                next=packet[pos]&255;pos+=size;
            } else if(next==44){
                if(pos>end-8 || (u16(packet,pos+2)&0xfff9)!=0)return;
                next=packet[pos]&255;pos+=8;
            } else return;
        }
        if(next!=6 || pos>end-20)return;
        int header=((packet[pos+12]&255)>>>4)*4;
        if(header<20 || header>end-pos || (packet[pos+13]&0x12)!=2)return;
        int destination=u16(packet,pos+2);
        synchronized(this){if(!active && !cancelled && destination==port){lastSynAt=clock.now();sawSyn=true;}}
    }
    private static int u16(byte[] b,int p){return (b[p]&255)*256+(b[p+1]&255);}
}
