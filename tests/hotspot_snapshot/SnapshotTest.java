package com.shilapi.xcertplay;

import android.content.SharedPreferences;
import com.shilapi.xcertplay.network.SystemHotspotCredentials;
import java.lang.reflect.Proxy;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public final class SnapshotTest {
    private static int checks;
    private static void check(boolean value, String message) {
        checks++; if (!value) throw new AssertionError(message);
    }
    public static SharedPreferences preferences() {
        Map<String,Object> values = new HashMap<String,Object>();
        final Object[] editor = {null};
        editor[0] = Proxy.newProxyInstance(SnapshotTest.class.getClassLoader(),
            new Class[]{SharedPreferences.Editor.class}, (object, method, args) -> {
                String name=method.getName();
                if(name.startsWith("put")){values.put((String)args[0],args[1]);return editor[0];}
                if(name.equals("commit"))return true;
                if(name.equals("apply"))return null;
                throw new AssertionError(name);
            });
        return (SharedPreferences)Proxy.newProxyInstance(SnapshotTest.class.getClassLoader(),
            new Class[]{SharedPreferences.class}, (object, method, args) -> {
                if(method.getName().equals("edit"))return editor[0];
                if(method.getName().startsWith("get"))return values.getOrDefault(args[0],args[1]);
                throw new AssertionError(method.getName());
            });
    }
    private static final class Tasks implements Executor {
        final Queue<Runnable> tasks = new ArrayDeque<Runnable>();
        public void execute(Runnable task) { tasks.add(task); }
        void next() { check(!tasks.isEmpty(), "missing task"); tasks.remove().run(); }
    }
    private static final class Target implements E01HotspotSnapshot.Target {
        boolean current = true, unchanged = true;
        int updates; String ssid = "saved", password = "saved-pass";
        public boolean current() { return current; }
        public boolean savedStateUnchanged() { return unchanged; }
        public void update(E01HotspotSnapshot.Values values) {
            updates++; ssid = values.ssid; password = values.password;
        }
    }
    private static E01HotspotSnapshot.Values fresh() {
        return new E01HotspotSnapshot.Values("system", "system-pass");
    }
    private static void firstDisplay() throws Exception {
        android.app.Activity activity = new android.app.Activity();
        E01NativeSettings settings = new E01NativeSettings(activity);
        check("06Link".equals(settings.string("ssid","")), "empty cache should use display default");
        AirPlayPersistence.INSTANCE.ssid = "manual-name";
        check("manual-name".equals(settings.string("ssid","")), "manual name was ignored");
        check("saved-pass".equals(settings.string("password","")), "manual password was ignored");
        Target old = new Target(), latest = new Target();
        E01HotspotSnapshot.Binding oldBinding = new E01HotspotSnapshot.Binding(old);
        E01HotspotSnapshot.Binding newBinding = new E01HotspotSnapshot.Binding(latest);
        Thread caller = Thread.currentThread();
        E01HotspotSnapshot.request(activity, oldBinding);
        check(SystemHotspotCredentials.started.await(1, TimeUnit.SECONDS), "background service did not start");
        check(SystemHotspotCredentials.thread != caller, "service queried on the caller thread");
        for(int i=0;i<50;i++)E01HotspotSnapshot.request(activity,newBinding);
        check("manual-name".equals(settings.string("ssid","")), "blocked service prevented cached display");
        check(SystemHotspotCredentials.reads == 1, "slow service accumulated queries");
        activity.getSharedPreferences("free_auto_hotspot_name",0).edit()
            .putString("custom_ssid","custom-name").putString("password","custom-pass").commit();
        check("custom-name".equals(settings.string("ssid","")), "custom name precedence changed");
        check("custom-pass".equals(settings.string("password","")), "custom password precedence changed");
        check(old.updates == 0 && latest.updates == 0, "updated before service reply");
        SystemHotspotCredentials.release.countDown();
        Runnable delivery = android.os.Handler.tasks.poll(1,TimeUnit.SECONDS);
        check(delivery != null, "missing main-thread delivery"); delivery.run();
        check(old.updates == 0 && latest.updates == 1, "coalescing did not target only latest page");
        check("custom-name".equals(settings.string("ssid","")), "read-only refresh rewrote saved credentials");
    }
    private static void invalidation() {
        Target target = new Target();
        E01HotspotSnapshot.Binding binding = new E01HotspotSnapshot.Binding(target);
        binding.edited(); binding.received(fresh());
        check(target.updates == 0, "reply overwrote user edits");
        target = new Target(); binding = new E01HotspotSnapshot.Binding(target);
        target.unchanged=false; binding.received(fresh());
        check(target.updates == 0, "reply overwrote new saved settings");
        target = new Target(); binding = new E01HotspotSnapshot.Binding(target);
        target.current=false; binding.received(fresh());
        check(target.updates == 0, "reply updated a destroyed/replaced page");
        target = new Target(); binding = new E01HotspotSnapshot.Binding(target);
        binding.received(null);
        binding.received(new E01HotspotSnapshot.Values(null,"pass"));
        binding.received(new E01HotspotSnapshot.Values("", "pass"));
        binding.received(new E01HotspotSnapshot.Values("name",null));
        check(target.updates == 0 && target.ssid.equals("saved"), "empty result erased cached inputs");
        binding.received(new E01HotspotSnapshot.Values("open-network", ""));
        check(target.updates == 1 && target.password.isEmpty(), "open network result was rejected");
    }
    private static void staleAndFailure() {
        Tasks worker = new Tasks(), main = new Tasks();
        int[] reads = {0}, old = {0}, latest = {0};
        E01HotspotSnapshot.Loader loader = new E01HotspotSnapshot.Loader(() -> {
            reads[0]++; return fresh();
        }, worker, main);
        loader.request(value -> old[0]++); worker.next();
        loader.request(value -> latest[0]++);
        main.next(); check(old[0] == 0, "queued old delivery survived a new request");
        worker.next(); main.next();
        check(latest[0] == 1 && reads[0] == 2, "fresh delivery failed");
        Target target = new Target();
        E01HotspotSnapshot.Binding binding = new E01HotspotSnapshot.Binding(target);
        reads[0] = 0;
        loader = new E01HotspotSnapshot.Loader(() -> {
            if (++reads[0] == 1) throw new java.io.IOException("service unavailable");
            return reads[0] == 2 ? null : fresh();
        }, worker, main);
        loader.request(binding); worker.next(); main.next();
        loader.request(binding); worker.next(); main.next();
        check(target.updates == 0 && target.ssid.equals("saved"), "failure/null erased first display");
        loader.request(binding); worker.next(); main.next();
        check(target.updates == 1, "failure left the loader permanently busy");
    }
    public static void main(String[] args) throws Exception {
        firstDisplay(); invalidation(); staleAndFailure();
        System.out.println("PASS " + checks + " hotspot snapshot checks (cached UI, one blocked query, stale/edit/save/page guards, null/failure)");
    }
}
