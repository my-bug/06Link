package com.shilapi.xcertplay;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Handler;
import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.io.*;
import java.lang.ref.WeakReference;
import java.lang.reflect.*;
import java.util.*;
import java.util.concurrent.*;
import com.shilapi.xcertplay.network.EcarxConnectedIphoneLookup;
import com.shilapi.xcertplay.network.EcarxConnectedDevice;
import com.shilapi.xcertplay.transport.GocSppTransport;
import com.shilapi.xcertplay.transport.BlockingDuplexByteStream;

/** System-owned OEM Bluetooth; app only queries and connects after explicit installation. */
public final class E01OemBluetooth {
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final ExecutorService OPERATIONS = Executors.newSingleThreadExecutor();
    private static volatile Context app;
    private static volatile EcarxConnectedIphoneLookup lookup;
    private static volatile List<EcarxConnectedDevice> devices = Collections.emptyList();
    private static volatile String address, localMac, status = "正在读取原车蓝牙状态";
    private static volatile boolean operation;
    private static volatile boolean migrationStarted, migrationReady;
    private static volatile String actionStatus="";
    private static volatile WeakReference<Activity> pendingConnect = new WeakReference<Activity>(null);
    private static volatile long pendingToken=-1;
    private static Thread poller, hotspotWorker;
    private static boolean hotspotAttempted;
    private static WeakReference<Activity> foreground = new WeakReference<Activity>(null);
    private static final Map<Object, Target> targets = new WeakHashMap<Object, Target>();
    private static final class Target {
        final int generation; final String phone, mac;
        E01PreparedConnection<GocSppTransport> pending;
        Target(int g, String p, String m) { generation=g; phone=p; mac=m; }
    }
    private E01OemBluetooth() { }

    public static void arm(Context context) {
        if (context == null) return;
        if (context instanceof Activity) foreground = new WeakReference<Activity>((Activity)context);
        app = context.getApplicationContext();
        if (Looper.myLooper() != Looper.getMainLooper()) { MAIN.post(() -> arm(app)); return; }
        synchronized (E01OemBluetooth.class) {
            if (poller != null) return;
            lookup = new EcarxConnectedIphoneLookup(app);
            lookup.ensureBound();
            poller = new Thread(() -> {
                for (;;) {
                    if(supported()){E01BtPersistent.refresh();E01ComponentLog.observe(app);}
                    maybeMigrate();
                    try {
                        List<EcarxConnectedDevice> fresh = lookup.connectedDevices(1200L);
                        devices = new ArrayList<EcarxConnectedDevice>(fresh);
                        String saved = app.getSharedPreferences("oem-bt-test", 0).getString("phone", "");
                        String chosen = null;
                        for (EcarxConnectedDevice d : fresh) if (validMac(d.getAddress()) && d.getAddress().equalsIgnoreCase(saved)) chosen = d.getAddress();
                        if (chosen == null && fresh.size() == 1 && validMac(fresh.get(0).getAddress())) chosen = fresh.get(0).getAddress();
                        address = chosen;
                        if(chosen!=null&&!chosen.equals(app.getSharedPreferences("oem-bt-test",0).getString("last-connected","")))
                            app.getSharedPreferences("oem-bt-test",0).edit().putString("last-connected",chosen).apply();

                        localMac = readLocalMac();
                        maybeStartHotspot();
                        maybeResumeConnect();
                        status = fresh.isEmpty() ? "请在原车蓝牙中连接 iPhone" : chosen == null ? "有多个设备，请选择 iPhone" : "原车蓝牙已连接";
                    } catch (Throwable e) { address = null; status = "原厂蓝牙查询失败：" + cause(e).getClass().getSimpleName(); }
                    E01WirelessAudioHandoff.maintain(app,lookup);
                    E01AudioScene.maintain();
                    try { Thread.sleep(2000L); } catch (InterruptedException e) { return; }
                }
            }, "06Link-oem-bt-state");
            poller.setDaemon(true); poller.start();
        }
    }

    private static void note(String text) {
        Context c=app; if(c==null)return;
        try { File dir=c.getExternalFilesDir(null); if(dir==null)dir=c.getFilesDir(); E01LogPolicy.session(new File(dir,"06link.log"),"OEMBT " + text); }
        catch (RuntimeException ignored) { }
    }
    public static void cancelHotspot() {
        pendingConnect=new WeakReference<Activity>(null);pendingToken=-1;
        synchronized (E01OemBluetooth.class) {
            hotspotAttempted=true;
            if(hotspotWorker!=null)hotspotWorker.interrupt();
        }
    }
    public static void explicitConnect(Context c) {
        E01HotspotControl.resume(); cancelHotspot();
        synchronized (E01OemBluetooth.class) { hotspotAttempted=false;if(!migrationReady&&!operation)migrationStarted=false; }
        arm(c);
    }
    private static boolean supported() {return Build.VERSION.SDK_INT==22&&"E01".equals(Build.MODEL)&&"BX11QJ".equals(Build.DEVICE);}
    private static void rememberMode(Context c,boolean enable) {
        if(!c.getSharedPreferences("oem-bt-test",0).edit().putBoolean("daily-enabled",enable).commit())throw new IllegalStateException("无法保存蓝牙模式，请重试");
    }
    private static void maybeMigrate() {
        final Context c=app;
        if(c==null||!supported())return;
        synchronized(E01OemBluetooth.class){
            if(migrationStarted||operation)return;
            migrationStarted=true;operation=true;
        }
        OPERATIONS.execute(() -> {
            try { E01BtPersistent.releasingLegacy(); E01BtLegacyRelease.release(c); migrationReady=true; }
            catch(Exception e){actionStatus="旧兼容退出未完成："+e.getMessage();note(actionStatus);E01LogPolicy.component(c,"准备失败(error) "+actionStatus);}
            finally{operation=false;}
        });
    }
    private static void maybeResumeConnect() {
        final Activity page=pendingConnect.get();final long token=pendingToken;
        if(page==null||page.isFinishing()||page.isDestroyed()||!E01HotspotControl.valid(token))return;
        if(migrationReady&&!operation&&!E01BtPersistent.installed()){
            MAIN.post(() -> {
                if(pendingConnect.get()!=page||pendingToken!=token||page.isFinishing()||page.isDestroyed()||!E01HotspotControl.valid(token))return;
                pendingConnect=new WeakReference<Activity>(null);pendingToken=-1;
                Toast.makeText(page,E01BtPersistent.description(),Toast.LENGTH_LONG).show();
            });
            return;
        }
        if(!enabled(page)||address==null)return;
        MAIN.post(() -> {
            if(pendingConnect.get()!=page||pendingToken!=token||page.isFinishing()||page.isDestroyed()||!E01HotspotControl.valid(token))return;
            pendingConnect=new WeakReference<Activity>(null);pendingToken=-1;
            try{Method m=page.getClass().getDeclaredMethod("connect",Boolean.TYPE,Boolean.TYPE);m.setAccessible(true);m.invoke(page,true,true);}
            catch(Exception e){note("pending connect="+cause(e).getClass().getSimpleName());}
        });
    }
    private static void maybeStartHotspot() {
        final Context c=app; final long token=E01HotspotControl.token();
        Activity page=foreground.get();
        if(c==null||page==null||page.isFinishing()||address==null||!enabled(c)||!E01HotspotControl.valid(token))return;
        synchronized(E01OemBluetooth.class) {
            if(hotspotAttempted||hotspotWorker!=null)return;
            hotspotAttempted=true;
            hotspotWorker=new Thread(() -> {
                try {
                    for(int attempt=0;attempt<2 && E01HotspotControl.valid(token);attempt++) {
                        if(address==null||!enabled(c))break;
                        String result=E01MapOptions.startHotspot(c,token);
                        note("hotspot result="+result);
                        if(!E01HotspotControl.valid(token)||!("REFUSED".equals(result)||"TIMED_OUT".equals(result)))break;
                        if(attempt==0)Thread.sleep(1000);
                    }
                } catch(InterruptedException e){Thread.currentThread().interrupt();}
                  catch(RuntimeException e){note("hotspot failed="+e.getClass().getSimpleName());}
                  finally{synchronized(E01OemBluetooth.class){if(hotspotWorker==Thread.currentThread())hotspotWorker=null;}}
            },"06Link-oem-hotspot");
            hotspotWorker.setDaemon(true);hotspotWorker.start();
        }
    }
    private static boolean validMac(String s) { return s != null && s.matches("(?i)([0-9a-f]{2}:){5}[0-9a-f]{2}") && !s.equals("00:00:00:00:00:00") && !s.equals("02:00:00:00:00:00"); }
    private static String readLocalMac() {
        try {
            Field field = lookup.getClass().getDeclaredField("adapterConnection"); field.setAccessible(true);
            Object connection = field.get(lookup);
            Field apiField = connection.getClass().getDeclaredField("api"); apiField.setAccessible(true);
            Object api = apiField.get(connection);
            if (api != null) for (String name : new String[]{"getAddress", "getBtLocalAddress"}) {
                try { Method m = api.getClass().getMethod(name); m.setAccessible(true); Object value = m.invoke(api); if (value instanceof String && validMac((String)value)) return (String)value; }
                catch (Exception ignored) { }
            }
        } catch (Exception ignored) { }
        return null;
    }
    public static String localAddress(Context c) { arm(c); return localMac; }
    public static boolean phoneReady(Context c) { arm(c); return address != null; }
    private static boolean listener() {
        try (BufferedReader r = new BufferedReader(new FileReader("/proc/net/unix"))) {
            String line; while ((line = r.readLine()) != null) if (line.trim().endsWith("/dev/socket/goc_spp")) return true;
        } catch (IOException ignored) { }
        return false;
    }
    private static boolean enabled(Context c) { return !operation&&migrationReady&&E01BtPersistent.ready()&&listener(); }
    public static String summary(Context c) {
        arm(c);
        if(!supported())return "当前设备不支持 E01 原车蓝牙；界面可正常预览。";
        String mode=operation?E01BtPersistent.progress():(actionStatus.startsWith("未完成")||actionStatus.startsWith("旧兼容退出未完成"))?actionStatus:enabled(c)?"原车蓝牙开机兼容已启用":E01BtPersistent.description();
        return mode+"\n"+status;
    }
    public static boolean hasPendingConnect() {
        Activity a=pendingConnect.get();
        return a!=null&&!a.isFinishing()&&!a.isDestroyed()&&E01HotspotControl.valid(pendingToken);
    }
    public static boolean hasPendingConnect(Activity a) {
        return pendingConnect.get()==a&&hasPendingConnect();
    }
    /** Cached state only: safe to call while rendering the home screen. */
    public static String pendingStatus(Activity a) {
        if(!hasPendingConnect(a))return "";
        if(!migrationReady||operation)return "正在等待原车蓝牙就绪";
        return address==null?"正在等待已配对的 iPhone":"检测到 iPhone，正在连接";
    }
    public static boolean canConnect(Activity a) {
        arm(a);
        if(!supported()){Toast.makeText(a,"此版本使用 E01 原车蓝牙",Toast.LENGTH_LONG).show();return false;}
        // Initial state is read on the poller, not assumed missing on the first tap.
        if(!migrationReady||operation){
            pendingConnect=new WeakReference<Activity>(a);pendingToken=E01HotspotControl.token();
            Toast.makeText(a,"正在读取原车蓝牙状态，就绪后自动连接",Toast.LENGTH_LONG).show();return false;
        }
        if(!E01BtPersistent.installed()){Toast.makeText(a,E01BtPersistent.description(),Toast.LENGTH_LONG).show();return false;}
        if(!enabled(a)||!phoneReady(a)){
            pendingConnect=new WeakReference<Activity>(a);pendingToken=E01HotspotControl.token();
            Toast.makeText(a,operation?"正在准备原车蓝牙，就绪后自动连接":"请在原车蓝牙连接 iPhone，就绪后自动连接",Toast.LENGTH_LONG).show();return false;
        }
        return true;
    }

    private static boolean stale(Object controller, int generation) throws Exception {
        Method m = controller.getClass().getDeclaredMethod("isStaleWirelessRun", Integer.TYPE); m.setAccessible(true);
        return Boolean.TRUE.equals(m.invoke(controller, generation)) || Thread.currentThread().isInterrupted();
    }
    /** Called in runWireless BEFORE any automatic hotspot mutation. */
    public static void prepare(Context c, Object controller, int generation) throws Exception {
        arm(c);
        // Wait for one-time legacy release and the system-owned service; never restart it.
        long readyDeadline = SystemClock.elapsedRealtime() + 90000L;
        while (true) {
            if (stale(controller, generation)) throw new IOException("连接已取消");
            if (!E01BtPersistent.installed()) throw new IOException("请先在蓝牙设置中安装开机兼容");
            if (enabled(c)) break;
            if (SystemClock.elapsedRealtime() >= readyDeadline)
                throw new IOException(actionStatus.isEmpty() ? "原厂蓝牙仍未就绪，请查看蓝牙状态" : actionStatus);
            Thread.sleep(200L);
        }
        if (!enabled(c)) throw new IOException("开机兼容尚未就绪，请查看蓝牙状态");
        synchronized(targets){Target selected=targets.get(controller);if(selected!=null&&selected.generation==generation){if(stale(controller,generation))throw new IOException("原车蓝牙连接已取消");return;}}
        long end = SystemClock.elapsedRealtime() + 45000L;
        while (address == null && SystemClock.elapsedRealtime() < end) {
            if (stale(controller, generation)) throw new IOException("原车蓝牙连接已取消");
            if (!enabled(c)) throw new IOException("原车蓝牙尚未就绪，请查看蓝牙状态");
            Thread.sleep(200L);
        }
        if (stale(controller, generation)) throw new IOException("原车蓝牙连接已取消");
        String phone=address;
        if (phone == null) throw new IOException("请用 iPhone 连接原车蓝牙；多个设备时先在蓝牙设置选择 iPhone");
        synchronized(targets){if(stale(controller,generation))throw new IOException("原车蓝牙连接已取消");Target previous=targets.put(controller,new Target(generation,phone,localMac));if(previous!=null&&previous.pending!=null)previous.pending.cancel();}
        note("bootstrap prepared; identity="+(localMac==null?"stable-device-id":"factory-address"));
    }
    /** Called once after target confirmation, before AP/network preparation. */
    public static void preconnect(Context c, Object controller, int generation) throws Exception {
        if(stale(controller,generation))throw new IOException("原车蓝牙连接已取消");
        synchronized(targets){
            Target target=targets.get(controller);
            if(target==null||target.generation!=generation)throw new IOException("蓝牙目标未确认");
            if(target.pending==null){
                final String phone=target.phone;
                target.pending=new E01PreparedConnection<GocSppTransport>(() -> GocSppTransport.connect(phone));
            }
        }
        // Recheck after publishing, so a concurrent stop cannot leave an unowned socket.
        if(stale(controller,generation)){cancelPreparedGeneration(controller,generation);throw new IOException("原车蓝牙连接已取消");}
    }
    private static void cancelPreparedGeneration(Object controller,int generation) {
        synchronized(targets){Target target=targets.get(controller);if(target!=null&&target.generation==generation){targets.remove(controller);if(target.pending!=null)target.pending.cancel();}}
    }
    public static void wirelessAudioReady(Object controller,int generation) {
        synchronized(targets){
            Target target=targets.get(controller);
            if(target!=null&&target.generation==generation)E01WirelessAudioHandoff.start(controller,generation,target.phone);
        }
    }
    public static void cancelPrepared(Object controller) {
        E01WirelessAudioHandoff.stop(controller);
        synchronized(targets){Target target=targets.remove(controller);if(target!=null&&target.pending!=null)target.pending.cancel();}
    }
    public static BlockingDuplexByteStream open(Context c, Object controller, int generation) throws Exception {
        prepare(c, controller, generation);
        String phone; E01PreparedConnection<GocSppTransport> pending;
        synchronized(targets){Target t=targets.get(controller);if(t!=null&&t.generation!=generation)t=null;phone=t==null?null:t.phone;pending=t==null?null:t.pending;}
        if (phone == null) throw new IOException("原车蓝牙手机已断开");
        note("opening goc_spp");
        GocSppTransport stream = pending == null ? GocSppTransport.connect(phone) : pending.take(() -> stale(controller,generation));
        note("goc_spp connected");
        if (stale(controller, generation)) { stream.close(); throw new IOException("原车蓝牙连接已取消"); }
        return stream;
    }

    public static String controllerLocalAddress(Context c,Object controller,int generation) throws Exception {
        prepare(c,controller,generation);
        synchronized(targets){Target t=targets.get(controller);return t==null?null:t.mac;}
    }
    private static String restore(Context c,E01ComponentLog trace) throws Exception {
        cancelHotspot();
        trace.stage("退出旧版临时兼容");
        E01BtPersistent.releasingLegacy(); E01BtLegacyRelease.release(c);
        migrationReady=true;
        E01BtPersistent.refresh();
        return E01BtPersistent.apply(c,false,trace);
    }
    private static Throwable cause(Throwable t) { while (t instanceof InvocationTargetException && t.getCause() != null) t = t.getCause(); return t; }
    private static boolean sessionActive() {
        try { Class<?> c = Class.forName("com.shilapi.xcertplay.CarPlayBackgroundSession"); return Boolean.TRUE.equals(c.getMethod("hasSession").invoke(c.getField("INSTANCE").get(null))); }
        catch (Exception e) { return true; }
    }
    private static void restorePermanent(Activity a, TextView detail) {
        if(operation)return;
        if(sessionActive()){detail.setText("请先停止 CarPlay，再恢复备份组件");return;}
        try{rememberMode(a,false);}catch(RuntimeException e){detail.setText(e.getMessage());return;}
        E01HotspotControl.pause();cancelHotspot();operation=true;actionStatus="";
        detail.setText("正在恢复备份组件…");
        OPERATIONS.execute(() -> {
            String result;
            E01ComponentLog trace=new E01ComponentLog(a,false);
            try { result=restore(a.getApplicationContext(),trace);trace.success(); }
            catch(Exception e){trace.failure(cause(e));result="未完成："+cause(e).getMessage();}
            final String message=result;
            operation=false;actionStatus=message;
            MAIN.post(() -> {if(!a.isFinishing())detail.setText(message);});
        });
    }
    public static String selectedPhoneName(Context c){String chosen=c.getSharedPreferences("oem-bt-test",0).getString("phone",address);for(EcarxConnectedDevice d:devices)if(chosen!=null&&chosen.equals(d.getAddress()))return d.getName()==null?"已连接的 iPhone":d.getName();return "选择已连接的 iPhone";}
    public static void choosePhone(Activity a) {
        final List<EcarxConnectedDevice> list = new ArrayList<EcarxConnectedDevice>(devices);
        if (list.isEmpty()) { Toast.makeText(a, "请先在原车蓝牙中连接 iPhone", Toast.LENGTH_LONG).show(); return; }
        String[] names = new String[list.size()];
        for (int i = 0; i < names.length; i++) { String name = list.get(i).getName(); names[i] = name == null || name.isEmpty() ? "已连接设备 " + (i + 1) : name; }
        E01NativeUi.select(a,"选择 CarPlay 手机",names,n -> {
            String selected = list.get(n).getAddress();
            a.getSharedPreferences("oem-bt-test", 0).edit().putString("phone", selected).apply(); address = selected;
        });
    }
    public static void settings(Activity a, LinearLayout parent) {
        arm(a);
        TextView state = new TextView(a); state.setTextSize(17); state.setText(summary(a)); parent.addView(state);
        TextView detail = new TextView(a); detail.setTextSize(15); detail.setText("首次安装会备份本车当前组件。恢复时还原这份备份，并关闭自动启用。");
        int pad = (int)(12 * a.getResources().getDisplayMetrics().density); detail.setPadding(0,pad,0,pad); parent.addView(detail);
        Button stop = button(a, parent, "恢复备份组件");
        Button phone = button(a, parent, "选择 iPhone");
        Button permanent = button(a, parent, "安装开机兼容");
        permanent.setOnClickListener(v -> E01NativeUi.confirm(a,"安装开机兼容","将备份本车当前 gocsdk 并安装开机兼容，蓝牙会短暂断开。已有备份不会覆盖；恢复时还原首次备份。请停车并结束通话、CarPlay。","安装",()->installPermanent(a,detail)));
        stop.setOnClickListener(v -> E01NativeUi.confirm(a,"恢复备份组件","将恢复本车首次安装前备份的蓝牙组件，蓝牙会短暂断开。","恢复",()->restorePermanent(a,detail)));
        phone.setOnClickListener(v -> choosePhone(a));
        E01Dialogs.page(parent);
        E01Dialogs.button(stop,false);E01Dialogs.button(phone,false);E01Dialogs.button(permanent,false);
        stop.setEnabled(supported()&&!operation);phone.setEnabled(supported());permanent.setEnabled(supported()&&!operation&&!E01BtPersistent.installed());
        Runnable refresh = new Runnable() { public void run() { if (a.isFinishing() || !state.isAttachedToWindow()) return; String next=summary(a);if(!next.contentEquals(state.getText()))state.setText(next);if(operation){String phase=E01BtPersistent.progress();if(!phase.contentEquals(detail.getText()))detail.setText(phase);}stop.setEnabled(supported()&&!operation);permanent.setEnabled(supported()&&!operation&&!E01BtPersistent.installed());MAIN.postDelayed(this, 1500L); } };
        MAIN.postDelayed(refresh, 1500L);
    }
    private static void installPermanent(Activity a,TextView detail) {
        if(operation)return;
        if(sessionActive()){detail.setText("请先停止 CarPlay，再安装开机兼容");return;}
        operation=true;actionStatus="";E01HotspotControl.pause();cancelHotspot();
        detail.setText("正在备份并安装开机兼容…");
        OPERATIONS.execute(()->{
            String message;
            E01ComponentLog trace=new E01ComponentLog(a,true);
            try{
                trace.stage("保存选择，退出旧版临时兼容");
                rememberMode(a,false);
                E01BtPersistent.releasingLegacy(); E01BtLegacyRelease.release(a.getApplicationContext());
                migrationReady=true;
                message=E01BtPersistent.apply(a.getApplicationContext(),true,trace);
                rememberMode(a,true);trace.success();
            }catch(Throwable e){trace.failure(cause(e));message="未完成："+cause(e).getMessage();}
            final String result=message;
            operation=false;actionStatus=result;
            MAIN.post(()->{if(!a.isFinishing())detail.setText(result);});
        });
    }
    private static Button button(Activity a, LinearLayout parent, String text) {
        Button b = new Button(a); b.setText(text); b.setAllCaps(false); b.setTextSize(16);
        int dp = (int)(48 * a.getResources().getDisplayMetrics().density);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2); lp.topMargin = dp / 6;
        b.setMinimumHeight(dp); parent.addView(b, lp); return b;
    }
}
