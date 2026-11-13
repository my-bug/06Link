package com.shilapi.xcertplay.transport;

/** Per-link wired startup state, following DiPlay #644, #962 and #1057.
 * Only the existing iAP2 worker polls; no background retries or persistent timers.
 */
public final class WiredStartRecovery {
    public static final int WAIT=0, SEND_AGAIN=1, TIMED_OUT=2, HOLD=3;
    interface Clock { long now(); }
    private final Clock clock;
    private volatile boolean opened, active, cancelled;
    private boolean armed, repeated, rearmed, held, sawSyn;
    private long openedAt, firstSentAt, deadline, lastSynAt;
    private int port;
    public WiredStartRecovery() { this(new Clock(){public long now(){return System.nanoTime();}}); }
    WiredStartRecovery(Clock clock) { this.clock=clock; }
    public int writeTimeout(int requested) { return opened ? requested : Math.min(requested,20); }
    public void acceptedWrite() {
        if(opened || cancelled)return;
        synchronized(this){if(!opened && !cancelled){openedAt=clock.now();opened=true;}}
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
