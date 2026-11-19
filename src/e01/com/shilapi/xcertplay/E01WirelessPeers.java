package com.shilapi.xcertplay;

import java.net.InetAddress;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/** A new instance belongs to one wireless connection attempt. */
public final class E01WirelessPeers {
    public interface Listener { E01WirelessPeers peers(); }

    private final String selected;
    private final Set<String> knownPhones;
    private final Map<InetAddress, String> advertised = new HashMap<>();
    private boolean closed;
    private Object active;
    private InetAddress activeAddress;

    E01WirelessPeers(String selected, Set<String> knownPhones) {
        this.selected = selected;
        this.knownPhones = knownPhones;
    }

    public synchronized boolean discovered(InetAddress address, String bluetoothId) {
        if (closed) return false;
        if (address == null || !E01OemBluetooth.validMac(bluetoothId))
            return active == null || activeAddress.equals(address);
        advertised.put(address, bluetoothId);
        return selected.equalsIgnoreCase(bluetoothId);
    }

    public synchronized boolean allows(Object session, InetAddress address, String setupId) {
        if (closed) return false;
        if (active == session) return true;
        String known = advertised.get(address);
        if (known != null) return selected.equalsIgnoreCase(known);
        if (selected.equalsIgnoreCase(setupId)) return true;
        for (String other : knownPhones)
            if (setupId != null && setupId.equalsIgnoreCase(other)) return false;
        for (String other : advertised.values())
            if (setupId != null && setupId.equalsIgnoreCase(other)) return false;
        if (active != null) return activeAddress.equals(address);
        // Some phones omit the Bluetooth ID in SETUP. Prefer a selected endpoint
        // already advertised on this address family, retaining the single-phone fallback.
        for (Map.Entry<InetAddress, String> entry : advertised.entrySet())
            if (address != null && address.getClass() == entry.getKey().getClass()
                    && selected.equalsIgnoreCase(entry.getValue())) return false;
        return address != null;
    }

    public synchronized boolean record(Object session, InetAddress address, String setupId) {
        if (address == null || (active != null && active != session)) return false;
        if (!allows(session, address, setupId)) return false;
        active = session;
        activeAddress = address;
        return true;
    }

    synchronized boolean hasActive() { return active != null; }

    synchronized void close() {
        closed = true;
        active = null;
        activeAddress = null;
        advertised.clear();
    }

    public synchronized boolean ended(Object session) {
        if (active != session) return false;
        active = null;
        activeAddress = null;
        return true;
    }
}
