package com.shilapi.xcertplay;
public final class E01AudioRoute {
    public static boolean enabled=true;
    public static boolean supported(){return enabled;}
    public static int stream(String channel){
        if(!enabled)return -1;
        return "MEDIA".equals(channel)?3:"NAVIGATION".equals(channel)?10:"ASSISTANT".equals(channel)?9:"PHONE".equals(channel)?6:-1;
    }
}
