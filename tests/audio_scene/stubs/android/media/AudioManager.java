package android.media;
import java.util.*;
public class AudioManager {
    public static final int AUDIOFOCUS_GAIN=1,AUDIOFOCUS_GAIN_TRANSIENT=2,AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK=3;
    public static final int AUDIOFOCUS_LOSS=-1,AUDIOFOCUS_LOSS_TRANSIENT=-2,AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK=-3;
    public static final int AUDIOFOCUS_REQUEST_FAILED=0,AUDIOFOCUS_REQUEST_GRANTED=1;
    public interface OnAudioFocusChangeListener {void onAudioFocusChange(int change);}
    public static final class Request {
        public final OnAudioFocusChangeListener listener;
        public final int stream,gain,result;
        Request(OnAudioFocusChangeListener l,int s,int g,int r){listener=l;stream=s;gain=g;result=r;}
    }
    public final List<Request> requests=new ArrayList<Request>();
    public final List<OnAudioFocusChangeListener> abandoned=new ArrayList<OnAudioFocusChangeListener>();
    public final Set<OnAudioFocusChangeListener> owners=Collections.newSetFromMap(new IdentityHashMap<OnAudioFocusChangeListener,Boolean>());
    public boolean reject,throwRequest,throwAbandon,rejectAbandon;
    public int rejectStream=-1;
    public int mediaVolume=6,navigationVolume=8,mediaMax=15;
    public boolean failMedia,failNavigation,failMax;
    public final List<String> reads=new ArrayList<String>();
    public int getStreamVolume(int stream){
        reads.add("volume:"+stream);
        if(stream==3){if(failMedia)throw new IllegalStateException("media unavailable");return mediaVolume;}
        if(stream==10){if(failNavigation)throw new IllegalStateException("navigation unavailable");return navigationVolume;}
        throw new AssertionError("unexpected stream read "+stream);
    }
    public int getStreamMaxVolume(int stream){reads.add("max:"+stream);if(stream!=3)throw new AssertionError("unexpected maximum read");if(failMax)throw new IllegalStateException("maximum unavailable");return mediaMax;}
    public int requestAudioFocus(OnAudioFocusChangeListener l,int stream,int gain){
        if(throwRequest)throw new IllegalStateException("focus request unavailable");
        int result=reject||stream==rejectStream?AUDIOFOCUS_REQUEST_FAILED:AUDIOFOCUS_REQUEST_GRANTED;
        requests.add(new Request(l,stream,gain,result));if(result==1)owners.add(l);return result;
    }
    public int abandonAudioFocus(OnAudioFocusChangeListener l){
        abandoned.add(l);if(rejectAbandon)return 0;owners.remove(l);if(throwAbandon)throw new IllegalStateException("focus abandon unavailable");return 1;
    }
    public void setStreamVolume(int stream,int value,int flags){throw new AssertionError("system volume must remain OEM controlled");}
    public void adjustStreamVolume(int stream,int direction,int flags){throw new AssertionError("system volume must remain OEM controlled");}
}
