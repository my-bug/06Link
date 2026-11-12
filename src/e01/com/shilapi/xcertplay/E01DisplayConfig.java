package com.shilapi.xcertplay;
import android.os.Build;
import kotlin.Pair;
import com.shilapi.xcertplay.airplay.AirPlayDisplayConfig;
import com.shilapi.xcertplay.airplay.AirPlayInsets;

/** E01 card canvas; phone and local video dimensions share the same geometry. */
public final class E01DisplayConfig {
    private static final String MAP = "maps:/car/instrumentcluster/map";
    private static boolean target(int id) {
        return id == 1 && Build.VERSION.SDK_INT == 22 && "E01".equals(Build.MODEL) && "BX11QJ".equals(Build.DEVICE);
    }
    public static Pair<Integer,Integer> presentationSize(Pair<Integer,Integer> original, int id) {
        if (original == null || !target(id)) return original;
        return E01MapCard.streamSize(original.component1(), original.component2());
    }
    // Safety is relative to the card, not a second inset of the whole instrument panel.
    static AirPlayInsets safe(int width, int height) {
        return E01MapCard.safe(width, height);
    }
    public static AirPlayDisplayConfig adjust(AirPlayDisplayConfig a, int id) {
        if (a == null || !target(id) || a.getWidthPixels() <= 0 || a.getHeightPixels() <= 0) return a;
        Pair<Integer,Integer> size = E01MapCard.streamSize(a.getWidthPixels(), a.getHeightPixels());
        int width = size.component1(), height = size.component2();
        double scale=E01MapCard.scaleFor(E01InstrumentStyle.selected());
        int h = E01MapOptions.fullscreen()?99:E01InstrumentStyle.mist()?58:65; // 99 mm calibration scaled to the 66% card when DPI is unavailable.
        if (a.getHeightPhysicalMm() != null && a.getHeightPhysicalMm() > 0)
            h = Math.max(1, (int)Math.round(a.getHeightPhysicalMm() * 1.15 * scale));
        int w = Math.max(1, (int)Math.round(h * (double)width / height));
        E01ClusterMode.displayConfigured("instrument layout="+E01InstrumentStyle.selected()+" phone="+width+"x"+height+" scale="+scale+"; centered safe corridor x32..68; map-only");
        return new AirPlayDisplayConfig(width,height,w,h,a.getFps(),a.getPrimaryInputDevice(),null,safe(width,height),Boolean.TRUE,MAP,a.getFeatures());
    }
    /** Keep negotiated geometry; large full-panel streams use a smaller secondary-only frame budget. */
    static int clusterFps(String style, int width, int height, int requested) {
        if ("full".equals(style) && width > 0 && height > 0
            && (long)width * height > 1280L * 480L && requested > 15) return 15;
        return requested;
    }
    /** Restore saved cluster size after dual-display policy without changing the main display. */
    public static AirPlayDisplayConfig afterLoad(AirPlayDisplayConfig original, AirPlayDisplayConfig tuned) {
        if (!target(1) || original == null || tuned == null || original.getWidthPixels() <= 0
            || original.getHeightPixels() <= 0 || !MAP.equals(original.getInitialUrl()) || original.getViewArea() != null)
            return tuned;
        AirPlayInsets before = original.getSafeArea();
        AirPlayInsets expected = safe(original.getWidthPixels(),original.getHeightPixels());
        if (before == null || before.getLeft() != expected.getLeft() || before.getRight() != expected.getRight()
            || before.getTop() != expected.getTop() || before.getBottom() != expected.getBottom()) return tuned;
        int w = original.getWidthPixels(), h = original.getHeightPixels();
        if (w <= 0 || h <= 0) return tuned;
        AirPlayInsets area = safe(w,h);
        int fps = clusterFps(E01InstrumentStyle.selected(), w, h, tuned.getFps());
        E01ClusterMode.displayConfigured("instrument final phone=" + w + "x" + h + " fps=" + fps + " safeOrigin=" + area.getLeft() + "," + area.getTop()
            + " safeSize=" + (w-area.getLeft()-area.getRight()) + "x" + (h-area.getTop()-area.getBottom()) + "; selected resolution restored without a second 67% reduction; no surface shift");
        return new AirPlayDisplayConfig(w,h,tuned.getWidthPhysicalMm(),tuned.getHeightPhysicalMm(),fps,
            tuned.getPrimaryInputDevice(),tuned.getViewArea(),area,Boolean.TRUE,tuned.getInitialUrl(),tuned.getFeatures());
    }
    private E01DisplayConfig() {}
}
