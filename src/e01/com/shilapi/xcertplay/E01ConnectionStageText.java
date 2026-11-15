package com.shilapi.xcertplay;

/** Both connection views use the same cached port state; no UI-side device I/O. */
public final class E01ConnectionStageText {
    public static String title(boolean wireless, int step, String fallback) {
        if (wireless || step != 3) return fallback;
        String state = E01WiredPort.dataModeStatus();
        if ("ready".equals(state)) return "USB 数据模式已就绪，等待识别 iPhone";
        if ("wait".equals(state)) return "正在准备 USB 数据模式";
        if ("failed".equals(state)) return "USB 数据模式未就绪";
        return fallback;
    }
    private E01ConnectionStageText() { }
}
