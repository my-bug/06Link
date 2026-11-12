package android.media;
public class AudioTrack {
    public static final int STATE_UNINITIALIZED=0, STATE_INITIALIZED=1;
    public static final int PLAYSTATE_STOPPED=1, PLAYSTATE_PAUSED=2, PLAYSTATE_PLAYING=3;
    public int state=STATE_INITIALIZED, playState=PLAYSTATE_PLAYING;
    public int head, sampleRate=1000, channels=1;
    public boolean throwHead;
    public int getState(){return state;}
    public int getPlayState(){return playState;}
    public int getPlaybackHeadPosition(){if(throwHead)throw new IllegalStateException("head unavailable");return head;}
    public int getSampleRate(){return sampleRate;}
    public int getChannelCount(){return channels;}
    public int setVolume(float v){throw new AssertionError("scene must not change PCM gain");}
    public int setStereoVolume(float a,float b){throw new AssertionError("scene must not change PCM gain");}
}
