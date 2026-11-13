package com.shilapi.xcertplay.network;

import java.net.InetAddress;
import java.net.Inet6Address;
import java.net.UnknownHostException;

/** DiPlay #972: JmDNS asks the address for its hostname even when supplied a service name. */
public final class BonjourAddress {
    public static InetAddress named(InetAddress address, String hostname) throws UnknownHostException {
        if (address instanceof Inet6Address) {
            Inet6Address v6 = (Inet6Address) address;
            return Inet6Address.getByAddress(hostname, v6.getAddress(), v6.getScopeId());
        }
        return InetAddress.getByAddress(hostname, address.getAddress());
    }
    private BonjourAddress() { }
}
