package com.shilapi.xcertplay;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/** Bounded iAP2 session-12 Now Playing artwork receiver. No disk cache, polling or logs.
 * Protocol cross-checked with xcertplay Iap2FileTransferReceiver.kt, revision
 * 1298fb35e29ee30e7bd849cb0e751b52aa22a13f (GPL-3.0). Link ordering/ACKs stay in the existing engine.
 */
public final class E01Artwork {
    static final int MAX_BYTES=2*1024*1024;
    private static final LinkedHashMap<Integer,Transfer> transfers=new LinkedHashMap<Integer,Transfer>();
    private static WeakReference<Object> owner=new WeakReference<Object>(null);
    private static long generation;
    private static int selected=-1;
    private static final ThreadPoolExecutor decoder=new ThreadPoolExecutor(0,1,10,TimeUnit.SECONDS,
        new ArrayBlockingQueue<Runnable>(1),new WorkerFactory(),new ThreadPoolExecutor.DiscardOldestPolicy());

    private static final class WorkerFactory implements ThreadFactory {
        WorkerFactory() {}
        public Thread newThread(Runnable job) {
            Thread t=new Thread(job,"06Link-artwork"); t.setDaemon(true); t.setPriority(Thread.NORM_PRIORITY-1); return t;
        }
    }
    private static final class Transfer {
        final int id,expected; final long started,epoch;
        boolean receiving,complete; ByteArrayOutputStream data; Bitmap bitmap;
        Transfer(int id,int expected,long now) {
            this.id=id;this.expected=expected;started=now;epoch=generation;
            data=new ByteArrayOutputStream(Math.min(expected,65536));
        }
    }
    private static final class Decode implements Runnable {
        final Transfer transfer; final byte[] bytes;
        Decode(Transfer transfer,byte[] bytes){this.transfer=transfer;this.bytes=bytes;}
        public void run() {
            synchronized(E01MusicCard.LOCK) { if(!current(transfer))return; }
            Bitmap bitmap=null;
            try {
                BitmapFactory.Options bounds=new BitmapFactory.Options();bounds.inJustDecodeBounds=true;
                BitmapFactory.decodeByteArray(bytes,0,bytes.length,bounds);
                int w=bounds.outWidth,h=bounds.outHeight;
                if(w>0&&h>0&&w<=8192&&h<=8192&&(long)w*h<=32000000L) {
                    BitmapFactory.Options options=new BitmapFactory.Options();options.inScaled=false;
                    int sample=1;while((w+sample-1)/sample>256||(h+sample-1)/sample>256)sample*=2;
                    options.inSampleSize=sample;
                    bitmap=BitmapFactory.decodeByteArray(bytes,0,bytes.length,options);
                }
            } catch(RuntimeException ignored) {} catch(OutOfMemoryError ignored) {}
            synchronized(E01MusicCard.LOCK) {
                if(!current(transfer))return;
                transfer.bitmap=bitmap;
                if(transfer.id==selected&&bitmap!=null) {
                    E01MusicCard.artworkChanged(bitmap);
                }
            }
        }
    }
    private static boolean current(Transfer t) {return t.epoch==generation&&transfers.get(t.id)==t;}
    private static byte[] response(int id,int command){return new byte[]{(byte)id,(byte)command};}
    private static byte[] fail(int id){transfers.remove(id);return response(id,6);}

    /** Invoked only for in-order file-transfer datagrams, never for control or EA packets. */
    public static byte[] onDatagram(Object link,byte[] datagram) {
        if(link==null||datagram==null||datagram.length<2)return null;
        try { return receive(link,datagram); }
        catch(RuntimeException ignored) {} catch(OutOfMemoryError ignored) {}
        // A cover failure must not tear down the phone's control/connection channel.
        synchronized(E01MusicCard.LOCK) { return fail(datagram[0]&255); }
    }
    private static byte[] receive(Object link,byte[] datagram) {
        synchronized(E01MusicCard.LOCK) {
            if(owner.get()!=link) {
                reset(); owner=new WeakReference<Object>(link);E01MusicCard.artworkChanged(null);
            }
            long now=System.nanoTime()/1000000L;
            for(Iterator<Map.Entry<Integer,Transfer>> it=transfers.entrySet().iterator();it.hasNext();) {
                Transfer t=it.next().getValue();if(!t.complete&&now-t.started>=30000)it.remove();
            }
            int id=datagram[0]&255, command=datagram[1]&255;
            if(command==4) {
                transfers.remove(id);
                // A repeated transfer is not a request to clear the displayed cover.
                // Keep it until the replacement has passed image validation/decoding.
                if(datagram.length<12||datagram[10]!=0||datagram[11]!=2)return fail(id);
                long length=0;
                for(int i=2;i<10;i++) {
                    length=(length<<8)|(datagram[i]&255);
                    if(length>MAX_BYTES)return fail(id); // rejects unsigned overflow before it can occur
                }
                while(transfers.size()>=2)transfers.remove(transfers.keySet().iterator().next());
                transfers.put(id,new Transfer(id,(int)length,now));return response(id,1);
            }
            if(command==2){transfers.remove(id);return null;}
            if(command==3)return null;
            if(command!=0&&command!=0x80&&command!=0x40&&command!=0xc0)return null;
            Transfer t=transfers.get(id);
            if(t==null)return response(id,6);
            if(t.complete)return fail(id);
            boolean first=(command&0x80)!=0,last=(command&0x40)!=0;
            if(first==t.receiving)return fail(id);
            t.receiving=true;
            int count=datagram.length-2;
            if(count>MAX_BYTES-t.data.size()||(t.expected>0&&count>t.expected-t.data.size()))return fail(id);
            t.data.write(datagram,2,count);
            if(!last)return null;
            if((t.expected>0&&t.expected!=t.data.size())||t.data.size()==0)return fail(id);
            byte[] bytes=t.data.toByteArray();t.data=null;t.complete=true;
            decoder.execute(new Decode(t,bytes));return response(id,5);
        }
    }

    /** Shared monitor with the music state; metadata can arrive before or after the picture. */
    static Bitmap select(int id) {
        selected=id;Transfer t=transfers.get(id);
        return t==null?null:t.bitmap;
    }
    private static void reset() {generation++;transfers.clear();decoder.getQueue().clear();}
    static void clear() {reset();selected=-1;owner.clear();}
    public static void closeLink(Object link) {
        synchronized(E01MusicCard.LOCK) {
            if(owner.get()==link){clear();E01MusicCard.artworkChanged(null);}
        }
    }
}
