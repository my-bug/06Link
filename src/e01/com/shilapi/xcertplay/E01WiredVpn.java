package com.shilapi.xcertplay;
import android.net.VpnService;
public final class E01WiredVpn {
 public static void scope(VpnService.Builder b){try{b.addAllowedApplication("com.sixlink.car");}catch(android.content.pm.PackageManager.NameNotFoundException e){throw new IllegalStateException("06Link VPN scope unavailable",e);}}
 private E01WiredVpn(){}
}
