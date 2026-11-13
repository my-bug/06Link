import com.shilapi.xcertplay.airplay.AudioPacketSize;
import com.shilapi.xcertplay.network.BonjourAddress;
import java.net.*;import java.util.Arrays;
public final class ParameterCheck {
    static void check(boolean b){if(!b)throw new AssertionError();}
    public static void main(String[] args)throws Exception {
        int[] rates={8000,16000,24000,32000,44100,48000};
        for(int rate:rates)for(int channels=1;channels<=2;channels++){
            int ms=AudioPacketSize.pcmFrameMillis(rate,channels);
            check(ms==20||ms==10||ms==5);
            check((long)rate*ms/1000*channels*2+84<=1500);
        }
        check(AudioPacketSize.pcmFrameMillis(48000,1)==10);
        check(AudioPacketSize.pcmFrameMillis(48000,2)==5);
        check(AudioPacketSize.pcmFrameMillis(24000,1)==20);
        check(AudioPacketSize.opusClockRate(0x10000000L)==16000);
        check(AudioPacketSize.opusClockRate(0x20000000L)==24000);
        check(AudioPacketSize.opusClockRate(0x40000000L)==48000);
        check(AudioPacketSize.opusClockRate(0x70000000L)==48000);
        byte[] v4={(byte)192,(byte)168,43,1};
        InetAddress named=BonjourAddress.named(InetAddress.getByAddress(v4),"carplay-test");
        check(named.getHostName().equals("carplay-test")&&Arrays.equals(named.getAddress(),v4));
        byte[] v6=new byte[16];v6[0]=(byte)0xfe;v6[1]=(byte)0x80;v6[15]=2;
        Inet6Address input=Inet6Address.getByAddress(null,v6,7);
        Inet6Address out=(Inet6Address)BonjourAddress.named(input,"carplay-test");
        check(out.getScopeId()==7&&Arrays.equals(out.getAddress(),v6)&&out.getHostName().equals("carplay-test"));
        System.out.println("PASS packet sizes, Opus clocks and DNS-free IPv4/IPv6 naming");
    }
}
