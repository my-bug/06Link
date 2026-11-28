package com.shilapi.xcertplay.network;
public final class LegacyHotspotRadio {
    public static final LegacyHotspotRadio INSTANCE = new LegacyHotspotRadio();
    public Reading read(String iface, String band, boolean inferFromChannel) { return null; }
    public static final class Reading {
        public Reading(Integer frequency, String error) {}
        public Integer getFrequencyMHz() { return null; }
        public String getError() { return null; }
    }
}
