package com.shilapi.xcertplay;

import android.content.Context;

/** Theme registry shared by settings, video geometry, preview and the visual transition. */
public final class E01InstrumentStyle {
    public static final String PREFERENCES="06link_instrument";
    public static final boolean DEFAULT_INTRO=true, DEFAULT_MUSIC=true;
    public static final int WIDTH=1920, HEIGHT=720;
    public static final long INTRO_DURATION_MS=3000, INTRO_DEADLINE_MS=3500;
    public static final int INTRO_BACKGROUND=0xff20242a, INTRO_ACCENT=0xfff04436;

    public enum Material { GLASS, GRAPHITE, RELIEF, SPORT }
    public enum Layout {
        CARD(.66,40,340), FULL(1.0,0,340), INSET(7.0/12.0,0,380);
        public final double scale;
        public final int mapRadius, musicHeight;
        Layout(double scale,int radius,int musicHeight){this.scale=scale;this.mapRadius=radius;this.musicHeight=musicHeight;}
    }
    public static final class Theme {
        public final String id,label;
        public final Layout layout;
        public final Material material;
        public final int background,albumBackground;
        private Theme(String id,String label,Layout layout,Material material,int background,int albumBackground){
            this.id=id;this.label=label;this.layout=layout;this.material=material;
            this.background=background;this.albumBackground=albumBackground;
        }
        public boolean fullscreen(){return layout==Layout.FULL;}
        public boolean immersive(){return layout==Layout.INSET;}
        /** x/y/width/height, scaled from the photo-calibrated OEM panel. */
        public int[] musicBounds(int width,int height){
            return new int[]{Math.round(1515*width/(float)WIDTH),Math.round(185*height/(float)HEIGHT),
                Math.max(1,Math.round(370*width/(float)WIDTH)),Math.max(1,Math.round(layout.musicHeight*height/(float)HEIGHT))};
        }
        /** Shared full-screen transition bounds, independent of the final map layout. */
        public int[] introBounds(){return new int[]{0,0,WIDTH,HEIGHT};}
        public int[] backdropColors(){return material==Material.GLASS?new int[]{0xff319fbb,0xff3c83bb,0xff626ab1}:new int[]{background,background,background};}
    }
    private static final Theme[] THEMES={
        new Theme("card","信息卡片",Layout.CARD,Material.GLASS,0xff141c26,0xff27343e),
        new Theme("full","全屏地图",Layout.FULL,Material.GLASS,0xff141c26,0xff27343e),
        new Theme("night","石墨仪表",Layout.INSET,Material.GRAPHITE,0xff141c26,0xff27343e),
        new Theme("relief","浮影仪表",Layout.INSET,Material.RELIEF,0xff3c4650,0xff52606a),
        new Theme("sport","竞速仪表",Layout.INSET,Material.SPORT,0xff24272d,0xff34383e)
    };
    private E01InstrumentStyle() {}
    public static int count(){return THEMES.length;}
    public static Theme at(int index){return THEMES[index];}
    public static Theme theme(String value){
        if("mist".equals(value))value="night";
        for(Theme theme:THEMES)if(theme.id.equals(value))return theme;
        return THEMES[0];
    }
    public static String normalize(String value){return theme(value).id;}
    public static String selected(Context c){
        return c==null?THEMES[0].id:normalize(c.getSharedPreferences(PREFERENCES,0).getString("layout",THEMES[0].id));
    }
    public static String selected(){
        try{return selected((Context)Class.forName("android.app.ActivityThread").getMethod("currentApplication").invoke(null));}
        catch(Exception unavailable){return THEMES[0].id;}
    }
    public static boolean introEnabled(Context c){
        try{return c.getSharedPreferences(PREFERENCES,0).getBoolean("transition_enabled",DEFAULT_INTRO);}
        catch(RuntimeException unavailable){return false;}
    }
    public static boolean musicEnabled(Context c){return c.getSharedPreferences(PREFERENCES,0).getBoolean("music_enabled",DEFAULT_MUSIC);}
    public static boolean fullscreen(String style){return theme(style).fullscreen();}
    public static boolean isNight(String style){return theme(style).material==Material.GRAPHITE;}
    public static boolean isImmersive(String style){return theme(style).immersive();}
    public static int background(String style){return theme(style).background;}
    public static String label(String style){return theme(style).label;}
    public static String fromLabel(String value){
        if("夜航仪表".equals(value))value="石墨仪表";
        for(Theme theme:THEMES)if(theme.label.equals(value))return theme.id;
        return THEMES[0].id;
    }
}
