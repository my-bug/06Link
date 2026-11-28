package com.shilapi.xcertplay;

import android.content.Context;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.SystemClock;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Collections;
import java.util.ArrayList;
import java.util.TreeSet;
import java.util.Set;
import java.util.concurrent.Callable;

/** Gives the E01 projection session exclusive use of the car's phone audio. */
public final class E01WirelessAudioHandoff {
    enum Profile {
        MUSIC("a2dpConnection", "A2dp"), CALL("hfpConnection", "Hfp");
        final String binding, nativeName;
        final NativeBinding hardware;
        Profile(String binding, String nativeName) {
            this.binding = binding; this.nativeName = nativeName;
            hardware = new NativeBinding(nativeName);
        }
    }

    private static final Coordinator coordinator = new Coordinator();

    static boolean pauseEnabled(Context context) {
        return context.getSharedPreferences("06link-video", 0).getBoolean("pause_oem_bluetooth", true);
    }

    static boolean supported() {
        return Build.VERSION.SDK_INT == 22 && "E01".equals(Build.MODEL) && "BX11QJ".equals(Build.DEVICE);
    }

    public static void start(Object owner, int generation, String phone, boolean handoffComplete) {
        if (supported() && owner != null) coordinator.start(owner, generation, phone, handoffComplete);
    }
    public static void stop(Object owner) {
        if (supported()) coordinator.stop(owner);
    }
    static boolean wirelessHandoffComplete() {
        Session current = coordinator.desired;
        return current != null && current.generation != -1 && current.handoffComplete;
    }
    static boolean restoringRadio(Context context) {
        return supported() && !wirelessHandoffComplete()
                && context.getSharedPreferences("06link-audio-handoff", 0).getBoolean("restore_oem_radio", false);
    }

    static void radioStateChanged() { coordinator.radioChanged.incrementAndGet(); }

    public static void maintain(Context context, Object lookup) {
        if (supported() && context != null && lookup != null)
            coordinator.maintain(new OemPort(context, lookup), SystemClock.elapsedRealtime());
    }

    /** Read the same hardware state used by audio handoff; the public profile cache can lag it. */
    static List<String> connectedPhones(Context context, Object lookup) throws Exception {
        if (!supported() || context == null || lookup == null) return Collections.emptyList();
        OemPort port = new OemPort(context, lookup);
        Set<String> phones = new TreeSet<>(String.CASE_INSENSITIVE_ORDER);
        Exception unavailable = null;
        for (Profile profile : Profile.values()) {
            try {
                for (Object device : port.connected(profile)) phones.add(port.address(device));
            } catch (Exception failure) { unavailable = failure; }
        }
        if (phones.isEmpty() && unavailable != null) throw unavailable;
        return new ArrayList<>(phones);
    }

    static void reconnectSelected(Context context, Object lookup, String phone, boolean explicitSwitch,
            Callable<Boolean> current) {
        if (!supported() || context == null || lookup == null || restoringRadio(context)) return;
        OemPort port = new OemPort(context, lookup);
        try {
            coordinator.reconnectSelected(port, phone, explicitSwitch, SystemClock.elapsedRealtime(), current);
        } catch (Exception failure) {
            port.log("等待已选择的 iPhone " + failure.getClass().getSimpleName());
        }
    }

    interface Port {
        boolean pauseSelected();
        boolean ownsRadio();
        boolean recordRadioOwnership(boolean owned);
        int radioState() throws Exception;
        boolean setRadio(boolean enabled) throws Exception;
        void restoreLegacyRenderer() throws Exception;
        List<?> connected(Profile profile) throws Exception;
        String address(Object device) throws Exception;
        boolean change(Profile profile, Object device, boolean connect) throws Exception;
        boolean callAudioConnected(Object device) throws Exception;
        boolean releaseCallAudio() throws Exception;
        boolean mayReconnect(String address) throws Exception;
        Object pairedDevice(String address) throws Exception;
        void log(String text);
    }

    private static final class Session {
        final Object owner;
        final int generation;
        final String phone;
        final boolean handoffComplete;
        Session(Object owner, int generation, String phone, boolean handoffComplete) {
            this.handoffComplete = handoffComplete;
            this.owner = owner;
            this.generation = generation;
            this.phone = phone;
        }
    }

    static final class Coordinator {
        private volatile Session desired;
        // Only the existing OEM state worker accesses the fields below.
        private Session previous;
        private final Object[] restore = new Object[Profile.values().length];
        private final long[] nextAttempt = new long[Profile.values().length];
        private final long[] disconnectMayFinishAt = new long[Profile.values().length];
        private long restoreUntil;
        private final String[] lastStatus = new String[Profile.values().length];
        private boolean legacyChecked;
        // command -> OEM state broadcast -> independent controller and GOC readback
        private final java.util.concurrent.atomic.AtomicInteger radioChanged = new java.util.concurrent.atomic.AtomicInteger();
        private int confirmedAtChange;
        private Session radioSession;
        private boolean attemptedPause, confirmedOff;
        private long settleUntil, nextRestore, nextRadioCheck, bindUntil, stableOnSince = -1;
        private String radioStatus;

        private void radioLog(Port port, String message) {
            if (!message.equals(radioStatus)) port.log(message);
            radioStatus = message;
        }

        private boolean maintainRadio(Port port, Session session, long now) {
            boolean want = session != null && session.generation != -1 && session.handoffComplete && port.pauseSelected();
            Session active = want ? session : null;
            if (radioSession != active) {
                radioSession = active;
                attemptedPause = false;
                confirmedOff = false;
                radioStatus = null;
                bindUntil = now + 4000;
                stableOnSince = -1;
                nextRestore = 0;
            }
            boolean owned = port.ownsRadio();
            if (!want && !owned) return false;
            int change = radioChanged.get();
            if (want && confirmedOff && change == confirmedAtChange && now < nextRadioCheck) return true;
            if (want && attemptedPause && !owned && !confirmedOff) return false;
            try {
                int state = port.radioState();
                if (!want) {
                    confirmedOff = false;
                    if (state == RADIO_ON) {
                        // An exit or process death can happen before the queued disable runs.
                        if (stableOnSince < 0) stableOnSince = now;
                        if (now < settleUntil || now - stableOnSince < 1500) return true;
                        if (!port.recordRadioOwnership(false)) return true;
                        radioLog(port, "原车蓝牙已恢复");
                        restoreUntil = now + 8000;
                        return false;
                    }
                    stableOnSince = -1;
                    if (state == RADIO_OFF && now >= nextRestore) {
                        nextRestore = now + 5000;
                        boolean sent = port.setRadio(true);
                        radioLog(port, sent ? "已请求恢复原车蓝牙" : "原车蓝牙恢复待重试");
                    }
                    return true;
                }
                if (state == RADIO_OFF) {
                    confirmedOff = true;
                    confirmedAtChange = change;
                    nextRadioCheck = now + 30000;
                    attemptedPause = true;
                    radioLog(port, owned ? "已确认原车蓝牙暂停" : "原车蓝牙原本已关闭");
                    return true;
                }
                if (state != RADIO_ON) return owned && now < settleUntil;
                if (confirmedOff) {
                    // A driver turned it back on during projection. Respect the switch.
                    if (owned && !port.recordRadioOwnership(false)) return true;
                    confirmedOff = false;
                    radioLog(port, "原车蓝牙已手动开启，保留音频交接");
                    return false;
                }
                if (owned && now < settleUntil) return true;
                if (attemptedPause) {
                    radioLog(port, "未确认原车蓝牙关闭，使用音频交接");
                    return false;
                }
                // The journal must survive process death between the request and readback.
                if (desired != session || !port.recordRadioOwnership(true)) return false;
                attemptedPause = true;
                settleUntil = now + 4000;
                if (!port.setRadio(false)) {
                    port.recordRadioOwnership(false);
                    radioLog(port, "原车拒绝暂停蓝牙，使用音频交接");
                    return false;
                }
                radioLog(port, "Wi-Fi 已接管，已请求暂停原车蓝牙");
                return true;
            } catch (Exception unavailable) {
                radioLog(port, "原车蓝牙总开关暂不可用 " + unavailable.getClass().getSimpleName());
                return (!want && owned) || (want && unavailable instanceof BindingPending && now < bindUntil);
            }
        }

        synchronized void start(Object owner, int generation, String phone, boolean handoffComplete) {
            if (desired != null && desired.owner == owner && desired.generation == generation
                    && (desired.handoffComplete || !handoffComplete)) return;
            desired = new Session(owner, generation, phone, handoffComplete);
        }
        synchronized void stop(Object owner) {
            if (desired != null && desired.owner == owner) desired = null;
        }

        // Called by the OEM poller, after maintain(). Share its restore backoff so
        // a new wireless attempt cannot submit a second HFP connect during exit.
        synchronized void reconnectSelected(Port port, String phone, boolean explicitSwitch,
                long now, Callable<Boolean> current) throws Exception {
            if (desired != null || !current.call()) return;
            Object paired = port.pairedDevice(phone);
            if (paired == null) return;
            for (Profile profile : Profile.values())
                for (Object device : port.connected(profile))
                    if (phone.equalsIgnoreCase(port.address(device))) return;
            int i = Profile.CALL.ordinal();
            if (now < nextAttempt[i]) return;
            if ((explicitSwitch || port.mayReconnect(phone)) && desired == null && current.call()) {
                nextAttempt[i] = now + 3000;
                port.change(Profile.CALL, paired, true);
            }
        }

        void maintain(Port port, long now) {
            Session session = desired;
            if (!legacyChecked) {
                try {
                    port.restoreLegacyRenderer();
                    legacyChecked = true;
                } catch (Exception ignored) { /* Retry when the original service has bound. */ }
            }
            if (previous != session) {
                if (session == null) restoreUntil = now + 8000;
                for (Profile profile : Profile.values()) {
                    int i = profile.ordinal();
                    nextAttempt[i] = 0;
                    lastStatus[i] = null;
                    if (restore[i] != null && session != null && (previous == null || session.phone == null
                            || !session.phone.equalsIgnoreCase(previous.phone))) restore[i] = null;
                }
                previous = session;
            }
            if (maintainRadio(port, session, now)) return;
            for (Profile profile : Profile.values()) {
                int i = profile.ordinal();
                if (desired != session || (session == null && restore[i] == null)) continue;
                try {
                    if (session != null) {
                        List<?> devices = port.connected(profile);
                        if (devices.isEmpty()) {
                            nextAttempt[i] = 0;
                            report(port, profile, "已断开");
                            continue;
                        }
                        if (profile == Profile.CALL && !session.handoffComplete) {
                            // The E01 drops the classic data link with HFP. Release SCO alone
                            // until Wi-Fi takes control, including when a call is already active.
                            for (Object device : devices) {
                                if (port.callAudioConnected(device) && desired == session) {
                                    if (now >= nextAttempt[i]) {
                                        nextAttempt[i] = now + 1000;
                                        report(port, profile, port.releaseCallAudio() ? "已请求释放通话音频" : "释放通话音频待重试");
                                    }
                                    break;
                                }
                            }
                            continue;
                        }
                        if (now < nextAttempt[i]) continue;
                        nextAttempt[i] = now + 3000;
                        for (Object device : devices) {
                            String address = port.address(device);
                            if (desired != session) break;
                            // The stock HFP command can drop this phone's entire classic link.
                            // This runs only after the projection has taken over the control link.
                            if (port.change(profile, device, false)) {
                                if (session.phone != null && session.phone.equalsIgnoreCase(address)) {
                                    restore[i] = device;
                                    disconnectMayFinishAt[i] = now + 3000;
                                }
                                report(port, profile, "已请求断开");
                            } else report(port, profile, "断开请求未被接受");
                        }
                    } else {
                        if (now > restoreUntil) { restore[i] = null; continue; }
                        Object device = restore[i];
                        String address = port.address(device);
                        // Stock HFP connect can replace another phone. Recheck the selection,
                        // pairing and both connected profiles immediately before any restore.
                        if (!port.mayReconnect(address)) { restore[i] = null; continue; }
                        if (contains(port, profile, address)) {
                            // A disconnect accepted just before exit can still be in flight.
                            if (now >= disconnectMayFinishAt[i]) restore[i] = null;
                            continue;
                        }
                        if (now < nextAttempt[i] || desired != null) continue;
                        nextAttempt[i] = now + 3000;
                        if (!port.change(profile, device, true))
                            report(port, profile, "恢复连接待重试");
                    }
                } catch (Exception failure) {
                    report(port, profile, "原车服务暂不可用 " + failure.getClass().getSimpleName());
                }
            }
        }
        private boolean contains(Port port, Profile profile, String address) throws Exception {
            for (Object device : port.connected(profile))
                if (address.equalsIgnoreCase(port.address(device))) return true;
            return false;
        }
        private void report(Port port, Profile profile, String message) {
            int i = profile.ordinal();
            if (!message.equals(lastStatus[i])) {
                lastStatus[i] = message;
                port.log((profile == Profile.MUSIC ? "蓝牙音乐 " : "蓝牙免提 ") + message);
            }
        }
    }

    /** The original service accepted bindService and has yet to deliver its Binder. */
    private static final class BindingPending extends IllegalStateException { }

    /** The public Ecarx A2DP Binder is a no-op on this firmware. Bind the same
     * hardware service used by the factory phone app; callbacks stay on Android's
     * main loop and the existing OEM worker performs the requests/readback.
     */
    private static final class NativeBinding implements ServiceConnection {
        final String pkg, component, stub;
        Object service;
        Method asInterface;
        Context context;
        boolean bound;
        long retryAt;
        NativeBinding(String profile) {
            this("com.nforetek.bt", "com.nforetek.bt.service.NfService" + profile,
                    "com.nforetek.bt.aidl.INfCommand" + profile + "$Stub");
        }
        NativeBinding(String pkg, String component, String stub) {
            this.pkg = pkg;
            this.component = component;
            this.stub = stub;
        }

        synchronized Object api(Context source) throws Exception {
            if (service != null) return service;
            long now = SystemClock.elapsedRealtime();
            if (!bound && now >= retryAt) {
                retryAt = now + 5000;
                context = source.getApplicationContext();
                ClassLoader loader = context.createPackageContext(pkg,
                        Context.CONTEXT_INCLUDE_CODE | Context.CONTEXT_IGNORE_SECURITY).getClassLoader();
                asInterface = Class.forName(stub, true, loader)
                        .getMethod("asInterface", IBinder.class);
                Intent intent = new Intent().setComponent(new ComponentName(pkg, component));
                bound = context.bindService(intent, this, Context.BIND_AUTO_CREATE);
            }
            if (service == null && bound) throw new BindingPending();
            if (service == null) throw new IllegalStateException("原车蓝牙服务尚未连接");
            return service;
        }
        public synchronized void onServiceConnected(ComponentName component, IBinder binder) {
            try {
                service = asInterface.invoke(null, binder);
                E01OemBluetooth.wakePoller();
            }
            catch (Exception unavailable) {
                service = null;
                try { context.unbindService(this); } catch (RuntimeException ignored) { }
                bound = false;
            }
        }
        public synchronized void onServiceDisconnected(ComponentName component) {
            service = null; // Android reconnects an existing binding after service restart.
        }
    }

    private static final int RADIO_OFF = 10, RADIO_ON = 12;
    private static final NativeBinding manager = new NativeBinding("ecarx.bluetooth.service",
            "ecarx.bluetooth.service.BtService", "ecarx.bluetooth.IBluetoothManager$Stub");
    private static final NativeBinding controller = new NativeBinding("Bluetooth");
    private static final class OemPort implements Port {
        final Context context;
        final Object lookup;
        OemPort(Context context, Object lookup) { this.context = context; this.lookup = lookup; }

        private Object api(String binding) throws Exception {
            Field field = lookup.getClass().getDeclaredField(binding);
            field.setAccessible(true);
            Object connection = field.get(lookup);
            field = connection.getClass().getDeclaredField("api");
            field.setAccessible(true);
            Object service = field.get(connection);
            if (service == null) throw new IllegalStateException(binding);
            return service;
        }
        private Object call(Object service, String name, String... argument) throws Exception {
            Method method = argument.length == 0 ? service.getClass().getMethod(name)
                    : service.getClass().getMethod(name, String.class);
            method.setAccessible(true);
            return method.invoke(service, (Object[]) argument);
        }
        private Object hardware(Profile profile) throws Exception {
            return profile.hardware.api(context);
        }
        public boolean pauseSelected() { return pauseEnabled(context); }
        public boolean ownsRadio() {
            return context.getSharedPreferences("06link-audio-handoff", 0).getBoolean("restore_oem_radio", false);
        }
        public boolean recordRadioOwnership(boolean owned) {
            SharedPreferences.Editor edit = context.getSharedPreferences("06link-audio-handoff", 0).edit();
            return (owned ? edit.putBoolean("restore_oem_radio", true) : edit.remove("restore_oem_radio")).commit();
        }
        public int radioState() throws Exception {
            int hardware = (Integer)call(controller.api(context), "getBtState");
            manager.api(context); // Bind the command service before journaling a change.
            int adapter = (Integer)call(api("adapterConnection"), "getState");
            // GOC reports 300 even while opening/closing. Require the factory adapter's
            // matching stable state; its transitional states are 11 and 13.
            if (hardware == 302 && adapter == RADIO_ON) return RADIO_ON;
            if (hardware == 300 && adapter == RADIO_OFF) return RADIO_OFF;
            return -1;
        }
        public boolean setRadio(boolean enabled) throws Exception {
            Object service = manager.api(context);
            if (enabled) return Boolean.TRUE.equals(call(service, "enable"));
            // Ecarx IBluetoothManager.disable(false) is temporary: preserve the OEM boot setting.
            Method disable = service.getClass().getMethod("disable", Boolean.TYPE);
            disable.setAccessible(true);
            try {
                return Boolean.TRUE.equals(disable.invoke(service, false));
            } catch (java.lang.reflect.InvocationTargetException failure) {
                if (failure.getCause() instanceof SecurityException) return false;
                throw failure; // An interrupted IPC can still have delivered the request.
            }
        }
        public List<?> connected(Profile profile) throws Exception {
            Object service = hardware(profile);
            if (!Boolean.TRUE.equals(call(service, "is" + profile.nativeName + "Connected")))
                return Collections.emptyList();
            String address = (String) call(service, "get" + profile.nativeName + "ConnectedAddress");
            if (!E01OemBluetooth.validMac(address) || "00:00:00:00:00:00".equals(address))
                throw new IllegalStateException("原车蓝牙音频地址不可用");
            return Collections.singletonList(address);
        }
        public String address(Object device) throws Exception {
            return device instanceof String ? (String) device : (String) call(device, "getAddress");
        }
        public boolean change(Profile profile, Object device, boolean connect) throws Exception {
            String address = address(device);
            if (!E01OemBluetooth.validMac(address)) return false;
            Object service = hardware(profile);
            if (!connect && !address.equalsIgnoreCase((String)
                    call(service, "get" + profile.nativeName + "ConnectedAddress"))) return false;
            call(service, "req" + profile.nativeName + (connect ? "Connect" : "Disconnect"), address);
            // GOC A2DP returns false even after sending its hardware command. This only
            // means submitted: Coordinator confirms the real state on its next read.
            return true;
        }
        public boolean callAudioConnected(Object device) throws Exception {
            Object service = hardware(Profile.CALL);
            return address(device).equalsIgnoreCase((String) call(service, "getHfpConnectedAddress"))
                    && Integer.valueOf(140).equals(call(service, "getHfpAudioConnectionState"));
        }
        public boolean releaseCallAudio() throws Exception {
            call(hardware(Profile.CALL), "reqHfpAudioTransferToPhone");
            return true;
        }
        public boolean mayReconnect(String address) throws Exception {
            String chosen = context.getSharedPreferences("oem-bt-test", 0).getString("phone", "");
            if (!chosen.isEmpty() && !chosen.equalsIgnoreCase(address)) return false;
            for (Profile profile : Profile.values())
                for (Object device : connected(profile))
                    if (!address.equalsIgnoreCase(address(device))) return false;
            return pairedDevice(address) != null;
        }
        public Object pairedDevice(String address) throws Exception {
            Object paired = call(api("adapterConnection"), "getBondedDevices");
            for (int i = 0; paired != null && i < Array.getLength(paired); i++)
                if (address.equalsIgnoreCase(address(Array.get(paired, i)))) return Array.get(paired, i);
            return null;
        }
        public void restoreLegacyRenderer() throws Exception {
            SharedPreferences prefs = context.getSharedPreferences("06link-audio-handoff", 0);
            if (!prefs.getBoolean("restore_a2dp", false)) return;
            Method get = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class);
            String key = "bluetooth.audiotrack.enable";
            if (!"1".equals(get.invoke(null, key, ""))) call(api(Profile.MUSIC.binding), "audioEnable");
            if (!"1".equals(get.invoke(null, key, "")) || !prefs.edit().remove("restore_a2dp").commit())
                throw new IllegalStateException("恢复旧版蓝牙音乐设置");
        }
        public void log(String text) {
            File dir = context.getExternalFilesDir(null);
            if (dir == null) dir = context.getFilesDir();
            E01LogPolicy.session(new File(dir, "06link.log"), "[音源交接] " + text);
        }
    }
    private E01WirelessAudioHandoff() {}
}
