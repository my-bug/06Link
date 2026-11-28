package com.shilapi.xcertplay.network;

import kotlin.jvm.functions.Function1;

/** The E01 firmware starts hostapd on ap0. Keep its live radio reading separate from the iAP2 hint. */
public final class E01HotspotReading {
    public final Integer frequencyMHz;
    public final int iap2Channel;
    private final String iface;
    private final Integer configuredChannel;
    private boolean confirmed;

    private E01HotspotReading(String iface, Integer configuredChannel, Integer frequency, Integer channel) {
        this.iface = iface;
        this.configuredChannel = configuredChannel;
        frequencyMHz = channel == null ? null : frequency;
        iap2Channel = channel != null ? channel.intValue()
                : configuredChannel == null ? 0 : Math.max(0, configuredChannel.intValue());
    }

    public static E01HotspotReading read(String iface, Integer configuredChannel,
                                         Function1<String, ?> diagnostic) {
        LegacyHotspotRadio.Reading reading = sample(iface);
        Integer channel = channelOf(reading);
        E01HotspotReading radio = new E01HotspotReading(iface, configuredChannel, reading.getFrequencyMHz(), channel);
        radio.report("热点启动时", reading, channel, diagnostic);
        return radio;
    }

    public synchronized void onCarPlayConfirmed(Function1<String, ?> diagnostic) {
        if (confirmed) return;
        confirmed = true;
        LegacyHotspotRadio.Reading reading = sample(iface);
        report("手机已连上", reading, channelOf(reading), diagnostic);
    }

    private static LegacyHotspotRadio.Reading sample(String iface) {
        if (!"ap0".equals(iface)) return new LegacyHotspotRadio.Reading(null, "热点接口 ap0 不可用");
        try {
            return LegacyHotspotRadio.INSTANCE.read(iface, null, true);
        } catch (SecurityException denied) {
            return new LegacyHotspotRadio.Reading(null, "无权读取热点频率");
        } catch (RuntimeException unreadable) {
            return new LegacyHotspotRadio.Reading(null, "驱动未返回读数");
        } catch (LinkageError unavailable) {
            return new LegacyHotspotRadio.Reading(null, "驱动读取接口不可用");
        }
    }

    private static Integer channelOf(LegacyHotspotRadio.Reading reading) {
        return reading.getError() == null ? measuredChannel(reading.getFrequencyMHz()) : null;
    }

    private static Integer measuredChannel(Integer frequency) {
        if (frequency == null || frequency < 2412 || frequency > 5885) return null;
        return WirelessHotspotManagerKt.wifiFrequencyMhzToChannel(frequency.intValue());
    }

    /** Status uses -1 for an unavailable measurement. Zero already means automatic selection. */
    public static int statusChannel(Integer frequencyMHz) {
        Integer channel = measuredChannel(frequencyMHz);
        return channel == null ? -1 : channel.intValue();
    }

    public static String statusChannelText(int channel) {
        return channel == -1 ? "未获取" : Integer.toString(channel);
    }

    private void report(String phase, LegacyHotspotRadio.Reading reading, Integer channel,
                        Function1<String, ?> diagnostic) {
        Integer frequency = reading.getFrequencyMHz();
        String measured = channel == null ? "实际信道未知（" + reason(reading.getError()) + "）"
                : "实测 " + (frequency < 5000 ? "2.4 GHz" : "5 GHz")
                        + "（信道 " + channel + "，" + frequency + " MHz）";
        String message = "[热点频段] " + phase + "，" + measured
                + "。系统配置信道 " + display(configuredChannel)
                + "，iAP2 提示信道 " + display(iap2Channel) + "。";
        try {
            diagnostic.invoke(message);
        } catch (RuntimeException | LinkageError unavailable) {
            // A diagnostic sink can disappear while the wireless session is starting or closing.
        }
    }

    private static String reason(String error) {
        if (error == null) return "未读到有效频率";
        if (error.startsWith("driver frequency query errno=")) {
            return "驱动读取失败，" + error.substring(error.indexOf("errno="));
        }
        switch (error) {
            case "driver reader unavailable": return "驱动读取接口不可用";
            case "invalid AP interface": return "热点接口不可用";
            case "invalid driver response":
            case "unrecognized driver frequency": return "驱动未返回有效频率";
            default: return error;
        }
    }

    private static String display(Integer value) {
        if (value == null || value < 0) return "未知";
        return value == 0 ? "自动" : value.toString();
    }
}
