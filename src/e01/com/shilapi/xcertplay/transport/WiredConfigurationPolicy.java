package com.shilapi.xcertplay.transport;

/** Descriptor and warm-session decisions from DiPlay #644 / WiredSessionMemory (#335). */
public final class WiredConfigurationPolicy {
    private static volatile String startedNode;
    public static void started(String node) { startedNode=node; }
    public static boolean startedOn(String node) { return node!=null && node.equals(startedNode); }
    public static boolean carPlayMode(UsbConfigView config) {
        if(config==null)return false;
        for(UsbInterfaceView i:config.getInterfaces())
            if(i.getInterfaceClass()==255 && i.getInterfaceSubclass()==253 && i.getInterfaceProtocol()==1)return true;
        return false;
    }
    public static boolean shouldTransition(UsbConfigView config,String node,int tried) {
        return choose(config!=null,carPlayMode(config),tried,startedOn(node))==1;
    }
    /** 0 use, 1 request CarPlay mode, 2 reject. */
    public static int choose(boolean found,boolean carplay,int tried,boolean previous) {
        if(found && carplay && previous && tried==0)return 1;
        if(found && carplay)return 0;
        if(found && tried>0)return 0;
        return tried<2?1:2;
    }
    public static boolean fallback(UsbConfigView config,String node) {
        return config!=null && (!carPlayMode(config) || startedOn(node));
    }
    private WiredConfigurationPolicy() { }
}
