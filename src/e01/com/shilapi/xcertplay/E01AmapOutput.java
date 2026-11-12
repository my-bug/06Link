package com.shilapi.xcertplay;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.SystemClock;

/** Direct OEM navigation-output control. No ADB, lease, heartbeat or detached process. */
final class E01AmapOutput {
    private static final String PREF = "06link-oem-navigation";
    private static final String RESTORE = "restore_output";
    private static final String RECEIVER = "com.autonavi.amapauto/com.autonavi.amapauto.adapter.internal.AmapAutoBroadcastReceiver";
    private Context commandContext;
    private boolean paused;
    private boolean touched;
    private boolean bypass;
    private boolean serviceChecked;
    private boolean legacyRemoved;
    private long retryAt;
    private long restoreAt;
    private String lastFailure = "";
    private String lastPackage = "";
    private String lastProcessNote = "";
    private String packageState = "unknown";
    private String phase = "idle";
    private String processIdentity;
    private int processChanges;
    private volatile String diagnosticSnapshot = "requested=none phase=idle package=unknown actual_output=unverified";
    private long nextProcessCheck;
    private static final long PROCESS_CHECK_MS = 30000;
    // Exact package main-process identity, including start ticks to detect PID reuse.
    private static final String PROCESS_COMMAND =
        "name=com.autonavi.amapauto; ids=$(busybox pidof \"$name\" 2>/dev/null); rc=$?; "
        + "if [ \"$rc\" -gt 1 ]; then echo UNKNOWN; exit; fi; out=; "
        + "for p in $ids; do case \"$p\" in ''|*[!0-9]*) echo UNKNOWN; exit;; esac; "
        + "cmd=$(busybox tr '\\000' '\\n' 2>/dev/null < /proc/$p/cmdline | busybox head -n 1); "
        + "[ \"$cmd\" = \"$name\" ] || continue; "
        + "s=$(cat /proc/$p/stat 2>/dev/null) || { echo UNKNOWN; exit; }; "
        + "s=${s##*) }; set -- $s; start=${20}; "
        + "case \"$start\" in ''|*[!0-9]*) echo UNKNOWN; exit;; esac; out=\"$out $p:$start\"; done; "
        + "if [ -n \"$out\" ]; then printf '%s\\n' \"$out\" | busybox tr ' ' '\\n' | busybox sort; else echo NONE; fi";

    synchronized boolean ensure(Context context) {
        bindCommandContext(context);
        if (!E01ClusterMode.projectionAllowed(context)) return false;
        if (paused) { checkPublisherProcess(context); return true; }
        if (bypass) return true;
        if (SystemClock.elapsedRealtime() < retryAt) return false;
        retryAt = SystemClock.elapsedRealtime() + 3000;
        try {
            phase = "service";
            requireService();
            phase = "legacy-cleanup";
            if (!removeLegacy()) throw new OutputFailure("legacy_cleanup_incomplete");
            // A lost reply / abnormal previous exit is resolved before another pause.
            if (touched || preferences(context).getBoolean(RESTORE, false)) {
                if (!finish(context)) return false;
            }
            phase = "package";
            if (!publisherPresent(context)) {
                bypass = true;
                note("state=bypass package=absent; no pause broadcast sent");
                return true;
            }
            if (!E01ClusterMode.projectionAllowed(context)) return false;
            phase = "save-restore-obligation";
            if (!preferences(context).edit().putBoolean(RESTORE, true).commit())
                throw new OutputFailure("restore_obligation_save_failed");
            touched = true;
            phase = "pause-dispatch";
            setOutput(false);
            paused = true;
            retryAt = 0;
            lastFailure = "";
            phase = "pause-dispatched";
            note("state=pause-requested key=13032 output=0 dispatch=ack actual_output=unverified");
            capturePublisherProcess();
            return true;
        } catch (Exception error) {
            serviceChecked = false;
            failure("pause", error);
            return false;
        }
    }

    synchronized boolean finish(Context context) {
        bindCommandContext(context);
        paused = false;
        bypass = false;
        processIdentity = null; nextProcessCheck = 0; lastProcessNote = "";
        boolean pending = touched || preferences(context).getBoolean(RESTORE, false);
        // A disabled/idle app must not contact the OEM service or toggle its output.
        // Only a saved restoration obligation or our live ownership permits restoration.
        if (!pending) { phase = "idle"; updateSnapshot(); return true; }
        if (SystemClock.elapsedRealtime() < restoreAt) return false;
        restoreAt = SystemClock.elapsedRealtime() + 3000;
        try {
            phase = "service";
            requireService();
            phase = "legacy-cleanup";
            if (!removeLegacy()) throw new OutputFailure("legacy_cleanup_incomplete");
            if (!pending) { restoreAt = 0; return true; }
            phase = "restore-dispatch";
            setOutput(true);
            phase = "clear-restore-obligation";
            if (!preferences(context).edit().remove(RESTORE).commit())
                throw new OutputFailure("restore_obligation_clear_failed");
            touched = false;
            retryAt = 0;
            restoreAt = 0;
            phase = "restore-dispatched"; lastFailure = "";
            note("state=restore-requested key=13032 output=1 dispatch=ack actual_output=unverified");
            return true;
        } catch (Exception error) {
            serviceChecked = false;
            failure("restore", error);
            return false;
        }
    }

    private void requireService() throws Exception {
        if (!serviceChecked) {
            if (!"0".equals(E01PrivilegedShell.execute(commandContext, "busybox id -u")))
                throw new OutputFailure("service_uid_not_privileged");
            serviceChecked = true;
        }
    }

    private void setOutput(boolean enabled) throws Exception {
        String value = enabled ? "1" : "0";
        String command = "r=$(am broadcast -n " + RECEIVER
            + " -a AUTONAVI_STANDARD_BROADCAST_RECV --ei KEY_TYPE 13032"
            + " --ei EXTRA_GUIDEINFO_OUTPUT " + value + " 2>&1) && "
            + "echo \"$r\" | busybox grep -q 'Broadcast completed: result=0' && echo OUTPUT_OK";
        if (!"OUTPUT_OK".equals(E01PrivilegedShell.execute(commandContext, command)))
            throw new OutputFailure("broadcast_ack_missing");
    }

    /** One-time removal of an old release's navigation process; never launches its script. */
    private boolean removeLegacy() throws Exception {
        if (legacyRemoved) return true;
        String command = "d=/data/local/tmp/06link-e01-amap-output-v1; "
            + "if [ -L \"$d\" ]; then echo UNSAFE; "
            + "elif [ ! -d \"$d\" ]; then echo CLEAN; "
            + "else for q in /proc/[0-9]*; do "
            + "if busybox tr '\\000' ' ' 2>/dev/null < \"$q/cmdline\" | busybox grep -Fq \"$d/guard.sh\"; then "
            + "kill -9 \"${q##*/}\" 2>/dev/null || true; fi; done; echo RESTORE; fi";
        String result = E01PrivilegedShell.execute(commandContext, command);
        if ("RESTORE".equals(result)) {
            setOutput(true);
            String clean = E01PrivilegedShell.execute(commandContext, "d=/data/local/tmp/06link-e01-amap-output-v1; "
                + "rm -f \"$d/guard.sh\" \"$d/guard.new\" \"$d/token\" \"$d/pid\" \"$d/start\" "
                + "\"$d/owner\" \"$d/owner-start\" \"$d/lease\" \"$d/lease.new\" \"$d/stop\" "
                + "\"$d/state\" \"$d/result\"; rmdir \"$d/recovery\" 2>/dev/null; "
                + "rmdir \"$d\" 2>/dev/null; [ ! -d \"$d\" ] && echo CLEAN");
            if (!"CLEAN".equals(clean)) return false;
        } else if (!"CLEAN".equals(result)) return false;
        legacyRemoved = true;
        return true;
    }

    private boolean publisherPresent(Context context) throws Exception {
        try {
            PackageInfo info = context.getPackageManager().getPackageInfo("com.autonavi.amapauto", 0);
            String protocol = verifiedProtocol(info);
            packageState = "name=com.autonavi.amapauto version=" + safeVersion(info.versionName)
                + " code=" + info.versionCode + " protocol=" + protocol;
            packageNote(packageState + " verified=" + !"unverified".equals(protocol));
            if ("unverified".equals(protocol)) throw new OutputFailure("package_version_unverified");
            return true;
        } catch (android.content.pm.PackageManager.NameNotFoundException missing) {
            String inventory = E01PrivilegedShell.execute(commandContext, "p=$(pm list packages -u) && "
                + "if echo \"$p\" | busybox grep -q '^package:android$'; then "
                + "if echo \"$p\" | busybox grep -q '^package:com[.]autonavi[.]amapauto$'; then "
                + "echo PRESENT; else echo ABSENT; fi; else echo UNKNOWN; fi");
            packageState = "ABSENT".equals(inventory) ? "absent" : "unknown";
            packageNote("state=" + packageState);
            if (!"ABSENT".equals(inventory)) throw new OutputFailure("package_inventory_unknown");
            return false;
        }
    }

    /** Both receivers are in the same package. The stock E01 APK is NOT the 7.5 upgrade.
     * Checked against the complete E01 system image: 4.3 vr -> pk -> nativeCloseGuideInfo,
     * libhsl GuideInfoExport flag +0x240 gates route, cruise and location-guide output.
     * 7.5 uses ReqGuideInfoOutputModel / protocol 80099 and flag +0x438 instead.
     * This identifies a supported request, not proof of delivery or stopped publication.
     */
    private static String verifiedProtocol(PackageInfo info) {
        if (info.versionCode == 400004 && "4.3.7.603046".equals(info.versionName))
            return "e01-stock43-native13032";
        if (info.versionCode == 21000001 && "7.5.0.600082".equals(info.versionName))
            return "e01-upgrade75-json13032";
        return "unverified";
    }

    synchronized String repairAccess(Context context) { return accessMessage(context, false); }
    synchronized String accessMessage(Context context, boolean ignored) {
        bindCommandContext(context);
        try {
            requireService();
            return paused ? "暂停请求已发送，实际停发需结合日志核验。" : "原厂服务可用，可控制导航输出。";
        } catch (Exception error) { return "原厂服务暂不可用，请稍后重试。"; }
    }

    private void bindCommandContext(Context c) {
        Context app = c.getApplicationContext();
        commandContext = app != null ? app : c;
    }

    private SharedPreferences preferences(Context context) { return context.getSharedPreferences(PREF, 0); }
    /** Pure memory snapshot for bounded diagnostic summaries; no service or disk access. */
    String diagnosticState() { return diagnosticSnapshot; }
    private void updateSnapshot() {
        diagnosticSnapshot = "requested=" + (paused ? "pause" : bypass ? "bypass" : "none")
            + " phase=" + phase + " package=" + packageState + " actual_output=unverified";
    }

    private void capturePublisherProcess() {
        nextProcessCheck = SystemClock.elapsedRealtime() + PROCESS_CHECK_MS;
        try {
            processIdentity = readPublisherProcess();
            processNote("state=" + ("NONE".equals(processIdentity) ? "absent-after-dispatch" : "tracked") + " actual_output=unverified");
        } catch (Exception e) {
            processIdentity = null; serviceChecked = false;
            processNote("state=identity-unavailable reason=" + reason(e) + " actual_output=unverified");
        }
    }

    /** Existing compatibility worker only: no new timer, process or repeated pause heartbeat. */
    private void checkPublisherProcess(Context context) {
        long now = SystemClock.elapsedRealtime();
        if (now < nextProcessCheck) return;
        nextProcessCheck = now + PROCESS_CHECK_MS;
        try {
            phase = "process-check";
            String observed = readPublisherProcess();
            if (observed.equals(processIdentity)) {
                phase = "pause-dispatched"; updateSnapshot();
                if (!lastFailure.isEmpty()) {
                    lastFailure = "";
                    processNote("state=identity-unchanged; prior request retained; actual_output=unverified");
                }
                return;
            }
            if ("NONE".equals(observed)) {
                processIdentity = observed;
                processNote("state=not-running; no broadcast; package_not_inferred_absent");
                return;
            }
            // A restart resets the native output flag. Reapply only on an observed identity
            // change (or first available identity), after rechecking the known package version.
            phase = "restart-package";
            if (!publisherPresent(context)) {
                processNote("state=package-absent-after-identity-change; no broadcast"); return;
            }
            if (!E01ClusterMode.projectionAllowed(context)) return;
            phase = "restart-pause-dispatch";
            setOutput(false);
            processIdentity = observed; lastFailure = ""; phase = "pause-dispatched";
            processNote("state=identity-changed change=" + (++processChanges) + " key=13032 output=0 dispatch=ack actual_output=unverified");
        } catch (Exception e) {
            serviceChecked = false;
            failure("restart-check", e);
        }
    }

    private String readPublisherProcess() throws Exception {
        String result = E01PrivilegedShell.execute(commandContext, PROCESS_COMMAND).trim();
        if ("NONE".equals(result)) return result;
        if (result.length() == 0 || result.length() > 1024) throw new OutputFailure("process_identity_unavailable");
        String[] entries = result.split("\\s+");
        if (entries.length > 16) throw new OutputFailure("process_identity_unavailable");
        for (String entry : entries) if (!entry.matches("[0-9]+:[0-9]+"))
            throw new OutputFailure("process_identity_unavailable");
        java.util.Arrays.sort(entries);
        return java.util.Arrays.toString(entries);
    }

    private static final class OutputFailure extends Exception {
        OutputFailure(String reason) { super(reason); }
    }
    private static String safeVersion(String v) {
        if (v == null) return "null";
        String value = v.replaceAll("[^0-9A-Za-z._+-]", "?");
        return value.length() > 64 ? value.substring(0,64) : value;
    }
    private static String reason(Exception e) {
        if (e instanceof java.util.concurrent.ExecutionException && e.getCause() instanceof Exception)
            return reason((Exception)e.getCause());
        if (e instanceof OutputFailure) return e.getMessage();
        String m = e.getMessage();
        if ("OEM command timeout".equals(m)) return "service_timeout";
        if ("OEM command still running".equals(m)) return "service_busy";
        if ("OEM service unavailable".equals(m)) return "service_unavailable";
        if ("OEM service refused".equals(m)) return "service_refused";
        if ("OEM reply missing".equals(m)) return "service_reply_missing";
        return e.getClass().getSimpleName();
    }
    private void failure(String operation, Exception e) {
        String value = "operation=" + operation + " phase=" + phase + " reason=" + reason(e);
        if (!value.equals(lastFailure)) { note("failure " + value + " actual_output=unverified"); lastFailure = value; }
    }
    private void packageNote(String message) {
        if (!message.equals(lastPackage)) { note("package " + message); lastPackage = message; }
    }
    private void processNote(String message) {
        if (!message.equals(lastProcessNote)) { note("process " + message); lastProcessNote = message; }
    }
    private void note(String message) {
        updateSnapshot();
        E01ClusterMode.displayConfigured("[原厂引导] " + message);
    }
}
