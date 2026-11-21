package com.shilapi.xcertplay;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

/** Read-only settings refresh. Connecting and saving remain the credential owners. */
final class E01HotspotSnapshot {
    static final class Values {
        final String ssid, password;
        Values(String ssid, String password) { this.ssid = ssid; this.password = password; }
    }
    interface Source { Values read() throws Exception; }
    interface Receiver { void received(Values values); }
    interface Target {
        boolean current();
        boolean savedStateUnchanged();
        void update(Values values);
    }
    static final class Binding implements Receiver {
        private final WeakReference<Target> target;
        private boolean edited;
        Binding(Target target) { this.target = new WeakReference<Target>(target); }
        void edited() { edited = true; }
        public void received(Values values) {
            Target view = target.get();
            if (values == null || values.ssid == null || values.ssid.isEmpty()
                    || values.password == null || edited || view == null
                    || !view.current() || !view.savedStateUnchanged()) return;
            view.update(values);
        }
    }

    /** At most one service read and one latest receiver, even if the service stalls. */
    static final class Loader {
        private final Source source;
        private final Executor worker, delivery;
        private Receiver latest;
        private boolean reading;
        private long generation;
        Loader(Source source, Executor worker, Executor delivery) {
            this.source = source; this.worker = worker; this.delivery = delivery;
        }
        void request(Receiver receiver) {
            synchronized (this) {
                latest = receiver; generation++;
                if (reading) return;
                reading = true;
            }
            try { worker.execute(new Runnable() { public void run() { read(); } }); }
            catch (RuntimeException unavailable) {
                synchronized (this) { reading = false; latest = null; }
            }
        }
        private void read() {
            Values result = null;
            try { result = source.read(); } catch (Exception unavailable) { }
            final Values values = result;
            final Receiver receiver;
            final long ticket;
            synchronized (this) {
                receiver = latest; latest = null; ticket = generation; reading = false;
            }
            if (receiver == null) return;
            try { delivery.execute(new Runnable() { public void run() {
                synchronized (Loader.this) { if (ticket != generation) return; }
                receiver.received(values);
            } }); } catch (RuntimeException unavailable) { }
        }
    }

    private static Loader loader;
    static void request(Context context, Receiver receiver) {
        Loader current;
        synchronized (E01HotspotSnapshot.class) {
            if (loader == null) {
                final Context app = context.getApplicationContext();
                final Handler main = new Handler(Looper.getMainLooper());
                loader = new Loader(new Source() { public Values read() {
                    Object value = E01NativeSettings.call(
                        E01NativeSettings.singleton("network.SystemHotspotCredentials"), "read", app);
                    return value == null ? null : new Values(
                        (String) E01NativeSettings.call(value, "getSsid"),
                        (String) E01NativeSettings.call(value, "getPassphrase"));
                } }, new Executor() { public void execute(Runnable task) {
                    Thread thread = new Thread(task, "06Link-hotspot-ui");
                    thread.setDaemon(true); thread.start();
                } }, new Executor() { public void execute(Runnable task) { main.post(task); } });
            }
            current = loader;
        }
        current.request(receiver);
    }
    private E01HotspotSnapshot() { }
}
