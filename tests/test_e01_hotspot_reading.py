"""Run E01 hotspot diagnostics against controlled driver readings without connecting a device."""
from pathlib import Path
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))
from test_support import find_java


def test_e01_hotspot_reading():
    core = ROOT / "src/core/smali/classes/com/shilapi/xcertplay"
    controller = (core / "orchestration/CarPlayController.smali").read_text()
    status = controller.split('new-instance v49, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;', 1)[1].split('-><init>', 1)[0]
    endpoint = controller.split('new-instance v38, Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;', 1)[1].split('-><init>', 1)[0]
    assert "WirelessHotspotInfo;->getStatusChannel()I" in status
    assert "WirelessHotspotInfo;->getChannel()I" in endpoint
    status_channel = (core / "network/WirelessHotspotInfo.smali").read_text().split(".method public final getStatusChannel()I", 1)[1].split(".end method", 1)[0]
    assert "->MANUAL_HOTSPOT:" in status_channel and "->isSupported()Z" in status_channel
    assert "->frequencyMHz:Ljava/lang/Integer;" in status_channel and "->statusChannel(Ljava/lang/Integer;)I" in status_channel
    assert (core / "CarPlayHostActivity.smali").read_text().count("E01HotspotReading;->statusChannelText(I)") == 2

    package = "com/shilapi/xcertplay/network/"
    java = find_java()["java_home"] / "bin"
    fake_radio = """package com.shilapi.xcertplay.network;
public final class LegacyHotspotRadio {
    public static final LegacyHotspotRadio INSTANCE = new LegacyHotspotRadio();
    static Integer frequency;
    static int calls;
    static boolean denied;
    public Reading read(String iface, String band, boolean inferFromChannel) {
        if (!"ap0".equals(iface) || band != null || !inferFromChannel) throw new AssertionError();
        calls++;
        if (denied) throw new SecurityException();
        return new Reading(frequency, frequency == null ? "driver frequency query errno=22" : null);
    }
    public static class Reading {
        private final Integer frequency;
        private final String error;
        public Reading(Integer frequency, String error) { this.frequency = frequency; this.error = error; }
        public Integer getFrequencyMHz() { return frequency; }
        public String getError() { return error; }
    }
}"""
    conversion = """package com.shilapi.xcertplay.network;
public final class WirelessHotspotManagerKt {
    public static Integer wifiFrequencyMhzToChannel(int value) {
        if (value == 5745) return 149;
        if (value == 2437) return 6;
        if (value == 2484) return 14;
        return null;
    }
}"""
    harness = """package com.shilapi.xcertplay.network;
import java.util.ArrayList;
import java.util.List;
public class CheckRadio {
    static final List<String> logs = new ArrayList<>();
    static void require(boolean condition) { if (!condition) throw new AssertionError(logs); }
    public static void main(String[] args) {
        LegacyHotspotRadio.frequency = 2437;
        E01HotspotReading r = E01HotspotReading.read("ap0", 149, logs::add);
        require(r.frequencyMHz == 2437 && r.iap2Channel == 6);
        require(E01HotspotReading.statusChannel(r.frequencyMHz) == 6);
        require(E01HotspotReading.statusChannelText(6).equals("6"));
        require(logs.get(0).contains("热点启动时，实测 2.4 GHz（信道 6，2437 MHz）"));
        require(logs.get(0).contains("系统配置信道 149，iAP2 提示信道 6"));
        LegacyHotspotRadio.frequency = 5745;
        r.onCarPlayConfirmed(logs::add);
        r.onCarPlayConfirmed(logs::add);
        require(LegacyHotspotRadio.calls == 2 && logs.size() == 2);
        require(logs.get(1).contains("手机已连上，实测 5 GHz（信道 149，5745 MHz）"));
        require(logs.get(1).contains("iAP2 提示信道 6"));
        LegacyHotspotRadio.frequency = null;
        r = E01HotspotReading.read("ap0", 149, logs::add);
        require(r.frequencyMHz == null && r.iap2Channel == 149);
        require(E01HotspotReading.statusChannel(r.frequencyMHz) == -1);
        require(E01HotspotReading.statusChannelText(-1).equals("未获取"));
        require(E01HotspotReading.statusChannelText(0).equals("0"));
        require(logs.get(2).contains("实际信道未知（驱动读取失败，errno=22）"));
        require(logs.get(2).contains("iAP2 提示信道 149"));
        LegacyHotspotRadio.denied = true;
        r.onCarPlayConfirmed(logs::add);
        require(logs.get(3).contains("手机已连上，实际信道未知（无权读取热点频率）"));
        r = E01HotspotReading.read("wlan0", null, logs::add);
        require(r.frequencyMHz == null && r.iap2Channel == 0 && LegacyHotspotRadio.calls == 4);
        require(logs.get(4).contains("实际信道未知（热点接口 ap0 不可用）"));
        require(logs.get(4).contains("系统配置信道 未知，iAP2 提示信道 自动"));
        LegacyHotspotRadio.denied = false;
        LegacyHotspotRadio.frequency = 5745;
        r = E01HotspotReading.read("ap0", 6, ignored -> { throw new IllegalStateException(); });
        require(r.iap2Channel == 149);
        r.onCarPlayConfirmed(ignored -> { throw new NoClassDefFoundError(); });
        LegacyHotspotRadio.frequency = 2484;
        r = E01HotspotReading.read("ap0", 0, logs::add);
        require(r.frequencyMHz == 2484 && r.iap2Channel == 14);
        require(logs.get(5).contains("实测 2.4 GHz（信道 14，2484 MHz）"));
        LegacyHotspotRadio.frequency = 2438;
        r = E01HotspotReading.read("ap0", 6, logs::add);
        require(r.frequencyMHz == null && r.iap2Channel == 6);
        require(logs.get(6).contains("实际信道未知") && !logs.get(6).contains("实测"));
        LegacyHotspotRadio.frequency = 5955;
        r = E01HotspotReading.read("ap0", null, logs::add);
        require(r.frequencyMHz == null && r.iap2Channel == 0);
        require(logs.get(7).contains("实际信道未知") && !logs.get(7).contains("5 GHz"));
    }
}"""
    function = "kotlin/jvm/functions/Function1.java"
    fixtures = {function: (ROOT / "tooling/compile-stubs" / function).read_text(),
                package + "LegacyHotspotRadio.java": fake_radio,
                package + "WirelessHotspotManagerKt.java": conversion,
                package + "CheckRadio.java": harness}
    with tempfile.TemporaryDirectory() as directory:
        out = Path(directory)
        for name, content in fixtures.items():
            source = out / name
            source.parent.mkdir(parents=True, exist_ok=True)
            source.write_text(content, encoding="utf-8")
        sources = [out / name for name in fixtures] + [ROOT / "src/e01" / package / "E01HotspotReading.java"]
        subprocess.run([java / "javac", "--release", "8", "-encoding", "UTF-8", "-d", out, *sources], check=True)
        subprocess.run([java / "java", "-cp", out, "com.shilapi.xcertplay.network.CheckRadio"], check=True)


if __name__ == "__main__":
    test_e01_hotspot_reading()
    print("E01 hotspot startup and connected radio readings passed")
