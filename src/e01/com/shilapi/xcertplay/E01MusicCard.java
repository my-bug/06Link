package com.shilapi.xcertplay;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Path;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.shilapi.xcertplay.iap2.wire.Iap2Frame;
import java.nio.charset.Charset;
import java.util.WeakHashMap;

/** Display-only music companion to the speed panel. No player, permissions, timers or file logs. */
public final class E01MusicCard extends View {
    static final Object LOCK = new Object();
    private static final Charset UTF8 = Charset.forName("UTF-8");
    private static final WeakHashMap<E01MusicCard,Boolean> VIEWS = new WeakHashMap<E01MusicCard,Boolean>();
    private static volatile State state = new State("", "", -1,-1,null);

    static final class State {
        final String title, artist;
        final int status,artworkId;
        final Bitmap artwork;
        State(String title, String artist, int status,int artworkId,Bitmap artwork) {
            this.title=title; this.artist=artist; this.status=status;this.artworkId=artworkId;this.artwork=artwork;
        }
    }

    private final Paint heading=new Paint(3), titlePaint=new Paint(3), artistPaint=new Paint(3);
    private final Paint icon=new Paint(7), stem=new Paint(3);
    private final Path coverClip=new Path();
    private final RectF coverBounds=new RectF();
    private final Rect coverSource=new Rect();
    private State rendered;
    private String headingText="音乐", titleText="暂无歌曲", titleSecond="", artistText="CarPlay 音乐";
    private float sx, sy;
    private final boolean immersive;
    private final String paletteStyle;
    private Bitmap preparedCover,preparedArtwork,backdrop;
    private final Rect preparedSource=new Rect();
    private final RectF preparedBounds=new RectF();
    private int coverWidth,coverHeight;
    private final Paint albumBase=new Paint(7);


    public E01MusicCard(Context context) {this(context,E01InstrumentStyle.selected(context));}
    E01MusicCard(Context context,boolean nightStyle) {this(context,nightStyle?"night":"card");}
    E01MusicCard(Context context,String style) {
        super(context);paletteStyle=E01InstrumentStyle.normalize(style);immersive=E01InstrumentStyle.isImmersive(style);setFocusable(false);
        heading.setColor(0xffe2edf7); titlePaint.setColor(0xffffffff); artistPaint.setColor(0xffe2edf7);
        heading.setTextAlign(Paint.Align.CENTER); titlePaint.setTextAlign(Paint.Align.CENTER);
        artistPaint.setTextAlign(Paint.Align.CENTER);
        titlePaint.setTypeface(Typeface.create("sans-serif-medium", 0));
        icon.setColor(0xfff0f7ff); stem.setColor(0xfff0f7ff);
    }

    void setBackdrop(Bitmap value){if(backdrop==value)return;backdrop=value;preparedCover=null;preparedArtwork=null;invalidate();}
    /** Fixed music region below RPM: x1515/y185, clear of OEM route and footer. */
    void place(int width, int height) {
        int[] bounds=E01InstrumentStyle.theme(paletteStyle).musicBounds(width,height);
        int left=bounds[0],top=bounds[1],w=bounds[2],h=bounds[3];
        ViewGroup.LayoutParams old=getLayoutParams();
        if (old instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams p=(FrameLayout.LayoutParams)old;
            if (p.width==w && p.height==h && p.leftMargin==left && p.topMargin==top && p.gravity==51) return;
        }
        FrameLayout.LayoutParams p=new FrameLayout.LayoutParams(w,h,51);
        p.leftMargin=left; p.topMargin=top; setLayoutParams(p);
    }

    @Override protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        synchronized (LOCK) { VIEWS.put(this,Boolean.TRUE); }
        postInvalidate();
    }

    @Override protected void onDetachedFromWindow() {
        synchronized (LOCK) { VIEWS.remove(this); }
        preparedCover=null;preparedArtwork=null;
        super.onDetachedFromWindow();
    }

    @Override protected void onSizeChanged(int width,int height,int oldWidth,int oldHeight) {
        super.onSizeChanged(width,height,oldWidth,oldHeight);
        if(immersive){
            preparedCover=null;preparedArtwork=null;coverWidth=width;coverHeight=height;
            preparedSource.set(0,0,width,height);preparedBounds.set(0,0,width,height);
            sx=width/370f;sy=height/380f;rendered=null;
            titlePaint.setTextSize(28*sy);artistPaint.setTextSize(24*sy);
            stem.setStrokeWidth(Math.max(1,5*Math.min(sx,sy)));
            heading.setTextAlign(Paint.Align.LEFT);titlePaint.setTextAlign(Paint.Align.LEFT);artistPaint.setTextAlign(Paint.Align.LEFT);
            heading.setColor(0xffd8e7f2);titlePaint.setColor(0xffffffff);artistPaint.setColor(0xffbdcbd5);
            coverBounds.set(0,5*sy,370*sx,375*sy);coverClip.reset();
            coverClip.addRoundRect(coverBounds,12*sx,12*sy,Path.Direction.CW);
            albumBase.setColor(0xff173043);
            return;
        }
        sx=width/270f; sy=sx; // Uniform enlargement keeps covers square and fits 370x340 card.
        rendered=null;
        heading.setTextSize(21*sy); titlePaint.setTextSize(20*sy); artistPaint.setTextSize(17*sy);
        stem.setStrokeWidth(Math.max(1,5*Math.min(sx,sy)));
        coverBounds.set(79*sx,52*sy,191*sx,164*sy);coverClip.reset();
        coverClip.addRoundRect(79*sx,52*sy,191*sx,164*sy,16*sx,16*sy,Path.Direction.CW);
    }

    /** Existing iAP2 subscription already asks for media group0 title1/artist12/artworkId26 and playback group1 status0.
     * Field mapping cross-checked against xcertplay Iap2Messages.kt, revision1298fb35e29ee30e7bd849cb0e751b52aa22a13f.
     * Merge deltas; playback-only messages must not erase a song. Validate before committing.
     */
    public static void onFrame(Iap2Frame frame) {
        if (frame==null || frame.getMessageId()!=0x5001) return;
        byte[] data=frame.getPayload();
        if (data==null || data.length>65535 || !valid(data,0,data.length)) return;
        synchronized (LOCK) {
            State before=state; String title=before.title, artist=before.artist; int status=before.status,artworkId=before.artworkId;boolean hasArtworkId=false;
            for (int p=0;p<data.length;) {
                int size=u16(data,p), group=u16(data,p+2), end=p+size;
                if (group==0 || group==1) {
                    if (!valid(data,p+4,end)) return;
                    for (int q=p+4;q<end;) {
                        int n=u16(data,q), tag=u16(data,q+2);
                        if (group==0 && tag==1) title=text(data,q+4,n-4);
                        if (group==0 && tag==12) artist=text(data,q+4,n-4);
                        if (group==0 && tag==26) {
                            if(n!=5)return;artworkId=data[q+4]&255;hasArtworkId=true;
                        }
                        if (group==1 && tag==0) {
                            if (n!=5) return;
                            int value=data[q+4]&255;
                            status=value<=4?value:-1;
                        }
                        q+=n;
                    }
                }
                p=end;
            }
            // Lyrics may update title; only explicit artwork IDs select a different image.
            Bitmap artwork=before.artwork;
            if(hasArtworkId) {
                Bitmap received=E01Artwork.select(artworkId);
                if(received!=null||artworkId!=before.artworkId)artwork=received;
            }
            if (title.equals(before.title) && artist.equals(before.artist) && status==before.status && artworkId==before.artworkId && artwork==before.artwork) return;
            state=new State(title,artist,status,artworkId,artwork);
            notifyViews();
        }
    }

    /** Called on real session shutdown; don't show the previous phone's song on the next connection. */
    public static void clear() {
        synchronized (LOCK) {
            E01Artwork.clear();
            if (state.title.isEmpty() && state.artist.isEmpty() && state.status==-1 && state.artworkId==-1 && state.artwork==null) return;
            state=new State("","",-1,-1,null); notifyViews();
        }
    }

    static void artworkChanged(Bitmap bitmap) {
        State before=state;if(before.artwork==bitmap)return;
        state=new State(before.title,before.artist,before.status,before.artworkId,bitmap);notifyViews();
    }

    private static void notifyViews() {
        for (E01MusicCard view:VIEWS.keySet()) if (view!=null) view.postInvalidate();
    }

    private static boolean valid(byte[] data,int start,int end) {
        for (int p=start;p<end;) {
            if (end-p<4) return false;
            int n=u16(data,p); if (n<4 || n>end-p) return false;
            p+=n;
        }
        return true;
    }
    private static int u16(byte[] data,int p) { return ((data[p]&255)<<8)|(data[p+1]&255); }
    private static String text(byte[] data,int start,int length) {
        int end=start; while (end<start+length && data[end]!=0) end++;
        String value=new String(data,start,end-start,UTF8).replace('\n',' ').replace('\r',' ').trim();
        int count=value.codePointCount(0,value.length());
        return count>128?value.substring(0,value.offsetByCodePoints(0,128)):value;
    }

    private static String fit(String value,Paint paint,float width) {
        if (width<=0) return "";
        if (paint.measureText(value)<=width) return value;
        float room=Math.max(0,width-paint.measureText("…"));
        int n=paint.breakText(value,true,room,null);
        if (n>0 && n<value.length() && Character.isHighSurrogate(value.charAt(n-1))) n--;
        return value.substring(0,n)+"…";
    }

    /** Some music apps publish live lyrics in the existing title field. Preserve that feed;
     * display it on two lines in the new style instead of inventing a second lyric protocol. */
    private void updateTitle(String value){
        titleSecond="";
        if(!immersive){titleText=fit(value,titlePaint,230*sx);return;}
        float width=286*sx;
        int n=titlePaint.breakText(value,true,width,null);
        if(n>=value.length()){titleText=value;return;}
        if(n>0&&Character.isHighSurrogate(value.charAt(n-1)))n--;
        if(n<=0){titleText=fit(value,titlePaint,width);return;}
        titleText=value.substring(0,n);titleSecond=fit(value.substring(n).trim(),titlePaint,width);
    }

    @Override protected void onDraw(Canvas canvas) {
        super.onDraw(canvas); if (sx<=0 || sy<=0 || !E01NativeSettings.musicVisible(getContext())) return;
        drawState(canvas,state);
    }
    private void drawState(Canvas canvas,State current){
        if (current!=rendered) {
            headingText=current.status==1?"正在播放":current.status==2?"已暂停":current.status==0?"已停止":
                current.status==3?"正在快进":current.status==4?"正在快退":"音乐";
            String title=current.title.isEmpty()?(current.status==1?"等待歌曲信息":"暂无歌曲"):current.title;
            updateTitle(title);
            artistText=fit(current.artist.isEmpty()?"CarPlay 音乐":current.artist,artistPaint,(immersive?286:230)*sx);
            rendered=current;
        }
        if(immersive){drawImmersive(canvas,current);return;}
        canvas.drawText(headingText,135*sx,39*sy,heading);
        if(current.artwork!=null) {
            int w=current.artwork.getWidth(),h=current.artwork.getHeight(),side=Math.min(w,h);
            coverSource.set((w-side)/2,(h-side)/2,(w+side)/2,(h+side)/2);
            canvas.save();canvas.clipPath(coverClip);
            canvas.drawBitmap(current.artwork,coverSource,coverBounds,icon);canvas.restore();
        } else {
        // Preserve the note fallback without inventing progress or discarding retained artwork.
        int noteSave=canvas.save();
        canvas.drawLine(130*sx,62*sy,130*sx,129*sy,stem);
        canvas.drawLine(162*sx,53*sy,162*sx,119*sy,stem);
        canvas.drawLine(130*sx,62*sy,162*sx,53*sy,stem);
        canvas.drawLine(130*sx,73*sy,162*sx,64*sy,stem);
        canvas.drawCircle(118*sx,129*sy,12*Math.min(sx,sy),icon);
        canvas.drawCircle(150*sx,119*sy,12*Math.min(sx,sy),icon);
        canvas.restoreToCount(noteSave);
        }
        canvas.drawText(titleText,135*sx,195*sy,titlePaint);
        canvas.drawText(artistText,135*sx,235*sy,artistPaint);
    }
    void drawPreview(Canvas canvas){
        drawState(canvas,PREVIEW);
    }
    private static final State PREVIEW=new State("沿着熟悉的街道慢慢向前","歌曲名称 / 歌手",1,-1,null);

    private void prepareCover(Bitmap artwork){
        if(preparedCover!=null&&preparedArtwork==artwork)return;
        if(coverWidth<=0||coverHeight<=0)return;
        // Software composition avoids GPU masking and repeated low-alpha quantization on E01.
        // Cache by image identity and size: lyric-only updates never recompose/upload artwork.
        Bitmap result=Bitmap.createBitmap(coverWidth,coverHeight,Bitmap.Config.ARGB_8888);
        albumBase.setColor(E01InstrumentStyle.theme(paletteStyle).albumBackground);
        Canvas canvas=new Canvas(result);
        int saved=canvas.save();
        canvas.clipPath(coverClip);canvas.drawRect(coverBounds,albumBase);
        if(artwork!=null){
            int w=artwork.getWidth(),h=artwork.getHeight(),side=Math.min(w,h);
            coverSource.set((w-side)/2,(h-side)/2,(w+side)/2,(h+side)/2);
            canvas.drawBitmap(artwork,coverSource,coverBounds,icon);
        }else{
            canvas.drawLine(222*sx,72*sy,222*sx,162*sy,stem);
            canvas.drawLine(222*sx,72*sy,263*sx,60*sy,stem);
            canvas.drawCircle(207*sx,162*sy,15*Math.min(sx,sy),icon);
        }
        canvas.restoreToCount(saved);
        E01InstrumentFeather.finishCover(result,sx,sy,paletteStyle,backdrop);
        preparedCover=result;preparedArtwork=artwork;
    }

    private void drawImmersive(Canvas canvas,State current){
        prepareCover(current.artwork);
        if(preparedCover!=null)canvas.drawBitmap(preparedCover,preparedSource,preparedBounds,icon);
        canvas.drawText(titleText,64*sx,252*sy,titlePaint);
        if(!titleSecond.isEmpty())canvas.drawText(titleSecond,64*sx,290*sy,titlePaint);
        canvas.drawText(artistText,64*sx,342*sy,artistPaint);
    }

}
