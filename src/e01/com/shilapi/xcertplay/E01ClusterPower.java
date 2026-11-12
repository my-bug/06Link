package com.shilapi.xcertplay;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/** OEM power edges, not Android display state or an acknowledgement of visible pixels. */
final class E01ClusterPower implements InvocationHandler {
    static final String POWER_ON = "android.intent.action.POWER_ON";
    static final String POWER_OFF = "android.intent.action.POWER_OFF";
    static final int UNKNOWN = 0, ON = 1, OFF = 2;
    interface Sink {
        void changed(boolean off, boolean recover, String source, long sequence);
        void note(String message);
    }
    private final Sink sink;
    private int state = UNKNOWN;
    private boolean canSeen, lastCanOn, broadcastOnConsumed;
    private long sequence;
    private boolean receiverRegistered, rpcRegistered;
    private long retryAt;
    private String lastRegistration = "";
    private Object rpcListener;
    private final BroadcastReceiver receiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (intent != null) acceptAction(intent.getAction());
        }
    };

    E01ClusterPower(Sink sink) { this.sink = sink; }

    /** Called only on the existing navigation worker, never on a video/main callback. */
    void ensureRegistered(Context context, long now) {
        if (context == null || (receiverRegistered && rpcRegistered) || now < retryAt) return;
        retryAt = now + 30000;
        if (!receiverRegistered) try {
            IntentFilter filter = new IntentFilter();
            filter.addAction(POWER_OFF); filter.addAction(POWER_ON);
            context.registerReceiver(receiver, filter);
            receiverRegistered = true;
        } catch (RuntimeException unavailable) { }
        if (!rpcRegistered) try {
            Class<?> api = Class.forName("com.neusoft.alfus.RpcManager");
            Class<?> callback = Class.forName("com.neusoft.alfus.RpcManager$OnRpcListener");
            Object manager = api.getMethod("getInstance").invoke(null);
            if (manager != null) {
                Object listener = Proxy.newProxyInstance(callback.getClassLoader(), new Class<?>[]{callback}, this);
                api.getMethod("registerListener", int.class, byte.class, callback)
                    .invoke(manager, 0x71c, (byte)8, listener);
                rpcListener = listener; // Keep our own listener; do not replace wheel/OEM subscriptions.
                rpcRegistered = true;
            }
        } catch (Exception unavailable) { }
        String registration = "broadcast=" + receiverRegistered + " rpc071c08=" + rpcRegistered;
        if (!registration.equals(lastRegistration)) {
            lastRegistration = registration;
            sink.note("[仪表电源] listener " + registration);
        }
    }

    void acceptAction(String action) {
        if (POWER_OFF.equals(action)) transition(OFF, "oem-power-off", false, false);
        else if (POWER_ON.equals(action)) transition(ON, "oem-power-on", true, false);
    }

    void acceptPacket(int opcode, byte[] data) {
        if (opcode != 0x71c || data == null || data.length < 8 || (data[0] & 255) != 8 || data[7] != 1) return;
        int mode = data[6] & 255;
        // Only 2/4 have verified ACC-on meaning. Other valid modes are a separate group,
        // not an asserted power-off state: they do not close, block, or clear our output.
        transition((mode == 2 || mode == 4) ? ON : UNKNOWN, "rpc071c08", false, true);
    }

    private void transition(int next, String source, boolean broadcastOn, boolean can) {
        boolean notify = false, recover = false, off = false, leftOnGroup = false;
        long edgeSequence = 0;
        synchronized (this) {
            boolean canReturn = false;
            if (can) {
                boolean on = next == ON;
                canReturn = canSeen && !lastCanOn && on;
                if (!on) {
                    leftOnGroup = !canSeen || lastCanOn;
                    if (leftOnGroup) broadcastOnConsumed = false;
                }
                canSeen = true; lastCanOn = on;
                if (!on) next = state; // A non-on group is not a verified physical off event.
            }
            if (!can || lastCanOn) {
                if (next == OFF) {
                    if (state != OFF) {
                        state = OFF; broadcastOnConsumed = false; notify = true; off = true;
                    }
                } else if (next == ON) {
                    recover = state == OFF || (canReturn && !broadcastOnConsumed) || (broadcastOn && !broadcastOnConsumed);
                    if (recover || state != ON) {
                        state = ON; notify = true;
                        // Coalesce the RPC edge and corresponding POWER_ON broadcast.
                        if (recover) broadcastOnConsumed = true;
                    }
                }
            }
            if (notify) edgeSequence = ++sequence;
        }
        // Call the owner without this monitor. Sequence rejects out-of-order binder/receiver delivery.
        if (notify) {
            sink.changed(off, recover, source, edgeSequence);
            sink.note("[仪表电源] state=" + (off ? "off" : "on")
                + " source=" + source + " restore=" + recover);
        } else if (leftOnGroup) {
            sink.note("[仪表电源] rpc071c08 left-acc-on-group; output-unchanged");
        }
    }

    public Object invoke(Object proxy, Method method, Object[] args) {
        String name = method.getName();
        if ("hashCode".equals(name)) return Integer.valueOf(System.identityHashCode(proxy));
        if ("equals".equals(name)) return Boolean.valueOf(args != null && args.length == 1 && proxy == args[0]);
        if ("toString".equals(name)) return "06Link-cluster-power-listener";
        if ("onCallback".equals(name) && args != null && args.length == 2
            && args[0] instanceof Integer && args[1] instanceof byte[])
            acceptPacket(((Integer)args[0]).intValue(), (byte[])args[1]);
        return null;
    }
}
