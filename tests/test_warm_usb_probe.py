"""Run the production USB probe against an independently scheduled handler and USB worker."""
import os
from pathlib import Path
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[1]
JAVA = Path(os.environ['JAVA_HOME']) / 'bin' if 'JAVA_HOME' in os.environ else Path('')
USB = 'android.hardware.usb'
TRANSPORT = 'com.shilapi.xcertplay.transport'
STUBS = {
    USB + '.UsbDevice': '''public class UsbDevice {
        public int vendor = 1452, product = 1; public String name = "/usb/003";
        public int getVendorId(){return vendor;} public int getProductId(){return product;}
        public String getDeviceName(){return name;}
    }''',
    USB + '.UsbDeviceConnection': '''public class UsbDeviceConnection {
        public int active=5, count=1, reads, closes; public boolean failure;
        public int controlTransfer(int type,int request,int value,int index,byte[] out,int len,int timeout) {
            if(type!=128 || request!=8 || value!=0 || index!=0 || len!=1 || timeout<=0)
                throw new AssertionError("Probe must only read GET_CONFIGURATION");
            reads++; if(failure) throw new SecurityException(); out[0]=(byte)active; return count;
        }
        public void close(){closes++;}
    }''',
    USB + '.UsbManager': '''public class UsbManager {
        public boolean allowed=true; public UsbDevice current=new UsbDevice();
        public UsbDeviceConnection read=new UsbDeviceConnection(); public int lists, opens;
        public java.util.HashMap<String, UsbDevice> getDeviceList() {lists++;
            java.util.HashMap<String, UsbDevice> m=new java.util.HashMap<>();
            if(current!=null)m.put(current.name,current);return m;}
        public boolean hasPermission(UsbDevice d){return allowed;}
        public UsbDeviceConnection openDevice(UsbDevice d){opens++; return read;}
    }''',
    'android.os.Handler': '''public class Handler {
        public Runnable due, next;
        public boolean postDelayed(Runnable r,long ms){if(ms<=0 || ms>=10000)throw new AssertionError();
            due=r;return true;}
        public boolean post(Runnable r){next=r;return true;}
    }''',
    TRANSPORT + '.UsbConfigView': '''public class UsbConfigView {
        public int getId(){return 5;}
        public java.util.List<UsbInterfaceView> getInterfaces(){return java.util.Arrays.asList(new UsbInterfaceView());}
    }''',
    TRANSPORT + '.UsbInterfaceView': '''public class UsbInterfaceView {
        public int getInterfaceClass(){return 255;} public int getInterfaceSubclass(){return 253;}
        public int getInterfaceProtocol(){return 1;}
    }''',
    TRANSPORT + '.IphoneCarPlayConfiguration': '''public class IphoneCarPlayConfiguration {
        public static final IphoneCarPlayConfiguration INSTANCE=new IphoneCarPlayConfiguration();
        public UsbConfigView view=new UsbConfigView();
        public UsbConfigView find(android.hardware.usb.UsbDevice d,android.hardware.usb.UsbManager m){return view;}
    }''',
    TRANSPORT + '.Check': '''import android.hardware.usb.*;
        import android.os.Handler;
        import java.util.concurrent.atomic.AtomicInteger;
        public class Check {
            static void require(boolean value){if(!value)throw new AssertionError();}
            public static void main(String[] args) {
                for(int mode=0;mode<15;mode++){
                    Handler h=new Handler(); UsbManager m=new UsbManager();
                    UsbDevice expected=new UsbDevice(), previous=new UsbDevice();
                    AtomicInteger g=new AtomicInteger(1), calls=new AtomicInteger();
                    Runnable[] work={null};
                    if(mode==1)previous=null;
                    if(mode==2)expected.vendor=3000;
                    if(mode==3)previous.name="/usb/002";
                    if(mode==4)m.current=null;
                    if(mode==5)m.allowed=false;
                    if(mode==6)m.read.active=1;
                    if(mode==7)m.read.count=-1;
                    if(mode==8)m.read.failure=true;
                    if(mode==13)m.current.product=2;
                    IphoneCarPlayConfiguration.INSTANCE.view=mode==14?null:new UsbConfigView();
                    WiredWarmReattach.remember(previous);
                    WiredWarmReattach.probe(h,r->work[0]=r,m,expected,g,1,device->{
                        require(device==m.current);calls.incrementAndGet(); return null;});
                    require(m.lists==0); // Caller and handler do no USB I/O.
                    if(mode==9)g.incrementAndGet();
                    if(h.due!=null)h.due.run();
                    require(m.lists==0);
                    if(mode==10)g.incrementAndGet();
                    if(work[0]!=null)work[0].run();
                    if(mode==11)g.incrementAndGet();
                    if(mode==12)WiredWarmReattach.remember(null);
                    if(h.next!=null)h.next.run();
                    require(calls.get()==(mode==0?1:0));
                    if(mode==1||mode==2||mode==3)require(h.due==null);
                    if(mode==4||mode==5||mode==13||mode==14)require(m.opens==0);
                    require(m.opens==m.read.closes);
                }
            }
        }'''
}

with tempfile.TemporaryDirectory() as output:
    work = Path(output)
    inputs = []
    for key, body in STUBS.items():
        stub = work / (key.replace('.', '/') + '.java')
        stub.parent.mkdir(parents=True, exist_ok=True)
        stub.write_text('package ' + key.rsplit('.', 1)[0] + ';\n' + body)
        inputs.append(stub)
    pkg = ROOT / 'src/e01/com/shilapi/xcertplay/transport'
    inputs += [pkg / 'WiredWarmReattach.java', pkg / 'WiredConfigurationPolicy.java',
               ROOT / 'tooling/compile-stubs/kotlin/jvm/functions/Function1.java']
    subprocess.run([str(JAVA / 'javac'), '-d', str(work), *inputs], check=True)
    subprocess.run([str(JAVA / 'java'), '-cp', str(work), TRANSPORT + '.Check'], check=True)
print('PASS warm USB reattach and stale/failed probe paths')
