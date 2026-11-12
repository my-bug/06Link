.class public final synthetic Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m()I
    .locals 1

    .line 0
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    return v0
.end method

.method public static bridge synthetic m(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/content/pm/ApplicationInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    return p0
.end method

.method public static bridge synthetic m(Landroid/content/pm/PackageInstaller;Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/hardware/usb/UsbConfiguration;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbConfiguration;->getId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/hardware/usb/UsbDevice;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[BIII)I
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/hardware/usb/UsbInterface;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/audiofx/AcousticEchoCanceler;Z)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/audiofx/NoiseSuppressor;Z)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/net/nsd/NsdServiceInfo;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/net/wifi/SoftApConfiguration;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/net/wifi/p2p/WifiP2pGroup;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/util/regex/Matcher;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->start(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/pm/PackageInstaller;I)Landroid/content/pm/PackageInstaller$Session;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/content/pm/PackageInstaller$Session;
    .locals 0

    .line 0
    check-cast p0, Landroid/content/pm/PackageInstaller$Session;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageInstaller;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/usb/UsbDevice;I)Landroid/hardware/usb/UsbConfiguration;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/hardware/usb/UsbConfiguration;
    .locals 0

    .line 0
    check-cast p0, Landroid/hardware/usb/UsbConfiguration;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/usb/UsbConfiguration;I)Landroid/hardware/usb/UsbInterface;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/usb/UsbDeviceConnection;J)Landroid/hardware/usb/UsbRequest;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait(J)Landroid/hardware/usb/UsbRequest;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 0

    .line 0
    invoke-static {p0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec;)Landroid/media/MediaCodecInfo;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec;)Landroid/media/MediaFormat;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(I)Landroid/media/audiofx/NoiseSuppressor;
    .locals 0

    .line 0
    invoke-static {p0}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/LinkProperties;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/MacAddress;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/String;)Landroid/net/MacAddress;
    .locals 0

    .line 0
    invoke-static {p0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/ConnectivityManager;)Landroid/net/Network;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/VpnService$Builder;Z)Landroid/net/VpnService$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/VpnService$Builder;->setBlocking(Z)Landroid/net/VpnService$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/net/nsd/NsdManager$DiscoveryListener;
    .locals 0

    .line 0
    check-cast p0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/net/nsd/NsdManager$RegistrationListener;
    .locals 0

    .line 0
    check-cast p0, Landroid/net/nsd/NsdManager$RegistrationListener;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/net/nsd/NsdManager$ResolveListener;
    .locals 0

    .line 0
    check-cast p0, Landroid/net/nsd/NsdManager$ResolveListener;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/net/nsd/NsdManager;
    .locals 0

    .line 0
    check-cast p0, Landroid/net/nsd/NsdManager;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/net/nsd/NsdServiceInfo;
    .locals 0

    .line 0
    check-cast p0, Landroid/net/nsd/NsdServiceInfo;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/wifi/SoftApConfiguration$Builder;)Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    .line 0
    check-cast p0, Landroid/net/wifi/SoftApConfiguration;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
    .locals 0

    .line 0
    check-cast p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;I)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->setGroupOperatingFrequency(I)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->setNetworkName(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->build()Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/wifi/SoftApConfiguration;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/pm/PackageInstaller$Session;Ljava/lang/String;JJ)Ljava/io/OutputStream;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/lang/Class;
    .locals 1

    .line 0
    const-class v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/MacAddress;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/ReflectiveOperationException;)Ljava/lang/Throwable;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/nsd/NsdServiceInfo;)Ljava/net/InetAddress;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/nsd/NsdServiceInfo;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getHostAddresses()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/nsd/NsdServiceInfo;)Ljava/util/Map;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getAttributes()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/pm/PackageInstaller$Session;Landroid/content/IntentSender;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/content/pm/PackageInstaller$Session;Ljava/io/OutputStream;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec;Landroid/view/Surface;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdManager$RegistrationListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/nsd/NsdManager;Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/nsd/NsdServiceInfo;Ljava/net/InetAddress;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo;->setHost(Ljava/net/InetAddress;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->close()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->startLocalOnlyHotspot(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$P2pStateListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pState(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$P2pStateListener;)V

    return-void
.end method

.method public static bridge synthetic m(Ljava/io/FileDescriptor;III)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public static bridge synthetic m(Ljavax/net/ssl/SSLParameters;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/content/pm/SigningInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbConfiguration;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbDeviceConnection;->setConfiguration(Landroid/hardware/usb/UsbConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbDeviceConnection;->setInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/location/LocationManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/audiofx/AcousticEchoCanceler;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    instance-of p0, p0, Landroid/net/wifi/SoftApConfiguration;

    return p0
.end method

.method public static bridge synthetic m(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/net/MacAddress;)[B
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/ConnectivityManager;)[Landroid/net/Network;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/hardware/usb/UsbConfiguration;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/net/wifi/p2p/WifiP2pGroup;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getSecurityType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Ljava/util/regex/Matcher;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->end(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 0

    .line 0
    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->setPassphrase(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1()Ljava/lang/Class;
    .locals 1

    .line 0
    const-class v0, Landroid/net/wifi/SoftApConfiguration;

    return-object v0
.end method

.method public static bridge synthetic m$1(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m$2()Ljava/lang/Class;
    .locals 1

    .line 0
    const-class v0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    return-object v0
.end method
