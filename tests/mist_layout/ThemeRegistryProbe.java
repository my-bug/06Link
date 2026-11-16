package com.shilapi.xcertplay;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import java.lang.reflect.Field;
import java.util.HashSet;

/** The selector, production frame and preview must use the same theme definition. */
public final class ThemeRegistryProbe {
    static int checks;
    static void ok(boolean value,String message){checks++;if(!value)throw new AssertionError(message);}
    static Object field(Object o,String name)throws Exception{Field f=o.getClass().getDeclaredField(name);f.setAccessible(true);return f.get(o);}
    public static void main(String[] args)throws Exception{
        Context context=android.app.ActivityThread.application;
        android.content.SharedPreferences prefs=context.getSharedPreferences(E01InstrumentStyle.PREFERENCES,0);
        prefs.edit().remove("transition_enabled").commit();prefs.edit().remove("music_enabled").commit();
        ok(E01InstrumentStyle.introEnabled(context)==E01InstrumentStyle.DEFAULT_INTRO,"intro default shared with settings");
        ok(E01InstrumentStyle.musicEnabled(context)==E01InstrumentStyle.DEFAULT_MUSIC,"music default shared with settings");
        for(boolean enabled:new boolean[]{false,true}){
            prefs.edit().putBoolean("transition_enabled",enabled).commit();prefs.edit().putBoolean("music_enabled",enabled).commit();
            ok(E01InstrumentStyle.introEnabled(context)==enabled&&E01InstrumentStyle.musicEnabled(context)==enabled,"explicit choices win over defaults");
        }
        HashSet<String> ids=new HashSet<String>(),labels=new HashSet<String>();
        E01InstrumentPreview preview=new E01InstrumentPreview(context,true);
        preview.onMeasure(View.MeasureSpec.EXACTLY|1920,View.MeasureSpec.UNSPECIFIED);
        Object liveMusic=MusicCardProbe.state();
        for(int i=0;i<E01InstrumentStyle.count();i++){
            E01InstrumentStyle.Theme theme=E01InstrumentStyle.at(i);
            ok(ids.add(theme.id)&&labels.add(theme.label),"unique theme ID and label");
            ok(E01InstrumentStyle.theme(theme.id)==theme&&E01InstrumentStyle.fromLabel(theme.label).equals(theme.id),"registry identity and label roundtrip");
            preview.setStyle(theme.id);
            E01InstrumentRenderer renderer=(E01InstrumentRenderer)field(preview,"renderer");
            preview.setStyle(theme.id);ok(renderer==field(preview,"renderer"),"unchanged selection reuses preview assets");
            Canvas frame=new Canvas(1920,720);renderer.draw(frame,false);
            Canvas shown=new Canvas(1920,720);preview.onDraw(shown);
            // Away from illustrative map, OEM placeholders, logo and music: exact production chrome.
            for(int[] p:new int[][]{{20,200},{480,90},{600,710},{1860,600}}){
                if(!theme.fullscreen())ok(frame.image.getRGB(p[0],p[1])==shown.image.getRGB(p[0],p[1]),"preview uses actual bezel pixels: "+theme.id);
            }
            ok(frame.image.getRGB(960,360)==0,"live navigation center stays transparent: "+theme.id);
            if(theme.fullscreen())ok(frame.draws==0,"full map with music off has no overlay painting");
            E01MusicCard music=(E01MusicCard)field(preview,"previewMusic");
            int[] b=theme.musicBounds(1920,720);
            ok(b[0]==1515&&b[1]==185&&b[2]==370&&b[3]==theme.layout.musicHeight,"shared music placement");
            ok(field(music,"immersive").equals(theme.immersive()),"music renderer matches preview theme after switches");
            ok(((String)field(music,"titleText")).length()>0,"production music renderer draws example lyrics");
            ok(MusicCardProbe.state()==liveMusic,"preview never changes live song metadata");
            Canvas repeated=new Canvas(1920,720);renderer.resize(1920,720);renderer.draw(repeated,false);
            for(int[] p:new int[][]{{20,200},{480,90},{600,710},{1860,600},{960,360}})
                ok(frame.image.getRGB(p[0],p[1])==repeated.image.getRGB(p[0],p[1]),"resize and repeated drawing preserve chrome");
        }
        ok(E01InstrumentStyle.normalize("mist").equals("night"),"saved legacy theme migration");
        ok(E01InstrumentStyle.fromLabel("夜航仪表").equals("night"),"legacy display name migration");
        ok(E01InstrumentStyle.normalize(null).equals("card")&&E01InstrumentStyle.normalize("unknown").equals("card"),"unknown selection uses default");
        System.out.println("PASS "+checks+" theme registry, shared preview pixels, music and defaults checks");
    }
}
