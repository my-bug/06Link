package com.shilapi.xcertplay;
/** Final 8-bit channel rounding for cached instrument surfaces, without artificial grain. */
final class E01InstrumentPrecision {
    private E01InstrumentPrecision() {}
    static int channel(float value){return Math.max(0,Math.min(255,Math.round(value)));}
}
