.class public final Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;
.super Ljava/lang/Object;
.source "LocalOnlyHotspotManager.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/network/WirelessHotspotManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;,
        Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$Companion;,
        Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;,
        Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalOnlyHotspotManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalOnlyHotspotManager.kt\ncom/shilapi/xcertplay/network/LocalOnlyHotspotManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,912:1\n1#2:913\n1#2:949\n1#2:976\n1374#3:914\n1460#3,5:915\n1563#3:920\n1634#3,3:921\n669#3,11:924\n774#3:935\n865#3,2:936\n808#3,11:952\n774#3:963\n865#3,2:964\n1617#3,9:966\n1869#3:975\n1870#3:977\n1626#3:978\n808#3,11:979\n18#4:938\n11546#5,9:939\n13472#5:948\n13473#5:950\n11555#5:951\n*S KotlinDebug\n*F\n+ 1 LocalOnlyHotspotManager.kt\ncom/shilapi/xcertplay/network/LocalOnlyHotspotManager\n*L\n640#1:949\n644#1:976\n73#1:914\n73#1:915,5\n618#1:920\n618#1:921,3\n626#1:924,11\n630#1:935\n630#1:936,2\n643#1:952,11\n644#1:963\n644#1:964,2\n644#1:966,9\n644#1:975\n644#1:977\n644#1:978\n649#1:979,11\n639#1:938\n640#1:939,9\n640#1:948\n640#1:950\n640#1:951\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ce\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 n2\u00020\u0001:\u0004klmnB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u0007H\u0002J\u0017\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020$H\u0002\u00a2\u0006\u0002\u0010%J2\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010(\u001a\u00020\u00182\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020\u001fH\u0002J\u0008\u0010/\u001a\u00020\u0007H\u0016J\u0010\u00100\u001a\u00020$2\u0006\u0010-\u001a\u00020\u0012H\u0002J$\u00101\u001a\u00060\u0014R\u00020\u000e2\u0006\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0014\u00102\u001a\u00060\u0016R\u00020\u000e2\u0006\u0010-\u001a\u00020\u0012H\u0002J\u0014\u00103\u001a\u00020,2\n\u0010\u0013\u001a\u00060\u0014R\u00020\u000eH\u0002J\u0010\u00104\u001a\u00020,2\u0006\u0010+\u001a\u000205H\u0003J\u0010\u00106\u001a\u00020,2\u0006\u0010+\u001a\u000207H\u0002J\u0012\u00108\u001a\u0004\u0018\u0001092\u0006\u0010:\u001a\u00020\u0006H\u0002J\u001c\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u00060<2\u0006\u0010+\u001a\u000205H\u0003J\u001c\u0010=\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u00060<2\u0006\u0010+\u001a\u000205H\u0003J\u0010\u0010>\u001a\u00020\"2\u0006\u0010+\u001a\u000207H\u0002J\u0018\u0010?\u001a\u00020\u00062\u0006\u0010+\u001a\u0002072\u0006\u0010@\u001a\u00020\"H\u0002J\u0018\u0010A\u001a\u00020\u00062\u0006\u0010+\u001a\u0002052\u0006\u0010@\u001a\u00020\"H\u0003J>\u0010B\u001a\u00020*2\u0008\u0010C\u001a\u0004\u0018\u0001092\u000c\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u00060E2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u00060E2\u0006\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020\u001fH\u0002J0\u0010G\u001a\u0004\u0018\u00010H2\u0008\u0010C\u001a\u0004\u0018\u0001092\u000c\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u00060E2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u00060EH\u0002J\u000e\u0010I\u001a\u0008\u0012\u0004\u0012\u00020H0JH\u0002J\u000e\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u00060EH\u0002J\u0012\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u00060E*\u00020HH\u0002J\u000e\u0010M\u001a\u0004\u0018\u00010\u0006*\u00020HH\u0002J\u000e\u0010N\u001a\u0004\u0018\u00010O*\u00020HH\u0002J\u0010\u0010P\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u0012H\u0002J\u0010\u0010Q\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u0012H\u0002J\u001e\u0010R\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u00122\u000c\u0010\u0015\u001a\u0008\u0018\u00010\u0016R\u00020\u000eH\u0002J\u0010\u0010S\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\u001fH\u0002J\u0010\u0010U\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0012\u0010V\u001a\u00020\u00062\u0008\u0010:\u001a\u0004\u0018\u00010\u0006H\u0002J\u001a\u0010W\u001a\u00020\u00062\u0006\u0010X\u001a\u00020Y2\u0008\u0010:\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010Z\u001a\u00020Y2\u0006\u0010[\u001a\u00020\"H\u0003J\u0010\u0010\\\u001a\u00020Y2\u0006\u0010+\u001a\u000207H\u0002J\u0018\u0010]\u001a\u00020\"2\u0006\u0010@\u001a\u00020\"2\u0006\u0010^\u001a\u00020\u0006H\u0002J \u0010]\u001a\u00020\"2\u0006\u0010@\u001a\u00020\"2\u0006\u0010^\u001a\u00020\u00062\u0006\u0010_\u001a\u00020\u001aH\u0002J\u000c\u0010`\u001a\u00020\u0006*\u000209H\u0002J\u000e\u0010a\u001a\u0004\u0018\u00010\u0006*\u00020bH\u0002J\u0010\u0010c\u001a\u00020\u00062\u0006\u0010d\u001a\u00020\"H\u0002J\u0010\u0010e\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\"H\u0002J\u0014\u0010f\u001a\u0004\u0018\u00010\u00062\u0008\u0010:\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010g\u001a\u00020\u00062\u0006\u0010h\u001a\u00020\"H\u0002J\u0016\u0010i\u001a\u00020\u00072\u000c\u0010j\u001a\u0008\u0018\u00010\u0016R\u00020\u000eH\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0018\u00010\u0014R\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0018\u00010\u0016R\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006o"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotManager;",
        "context",
        "Landroid/content/Context;",
        "onDiagnostic",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V",
        "appContext",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "wifiManager",
        "Landroid/net/wifi/WifiManager;",
        "stateLock",
        "Ljava/lang/Object;",
        "startAttempt",
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;",
        "reservation",
        "Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;",
        "multicastLock",
        "Landroid/net/wifi/WifiManager$MulticastLock;",
        "radioObserver",
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;",
        "stopped",
        "",
        "closed",
        "start",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;",
        "timeoutMillis",
        "",
        "disconnectTwoPointFourStation",
        "requestHotspot",
        "",
        "callback",
        "Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;",
        "(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)Ljava/lang/Integer;",
        "awaitRadioInfo",
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;",
        "observer",
        "ap",
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;",
        "configuration",
        "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;",
        "attempt",
        "deadlineNanos",
        "close",
        "createCallback",
        "awaitStart",
        "acquireMulticastLock",
        "readConfiguration",
        "readSoftApConfiguration",
        "Landroid/net/wifi/SoftApConfiguration;",
        "readWifiConfiguration",
        "Landroid/net/wifi/WifiConfiguration;",
        "parseMac",
        "",
        "value",
        "readConfiguredChannel",
        "Lkotlin/Pair;",
        "readLegacySoftApChannel",
        "readWifiConfigurationChannel",
        "readWifiConfigurationBandLabel",
        "channel",
        "readLegacySoftApBandLabel",
        "awaitApInterface",
        "bssid",
        "previousAddresses",
        "",
        "previousUpstreams",
        "findInterface",
        "Ljava/net/NetworkInterface;",
        "activeInterfaces",
        "",
        "upstreamInterfaceNames",
        "siteLocalIpv4Addresses",
        "interfaceBssid",
        "hotspotAddress",
        "Ljava/net/InetAddress;",
        "ensureStartActive",
        "ensureStartActiveLocked",
        "cleanupFailedStart",
        "waitNanos",
        "nanos",
        "deadlineAfter",
        "validateSsid",
        "validatePassphrase",
        "security",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "mapSoftApSecurity",
        "securityType",
        "mapWifiConfigurationSecurity",
        "requireChannel",
        "source",
        "allowAuto",
        "toMacAddressString",
        "toEui64MacAddress",
        "Ljava/net/Inet6Address;",
        "softApBandLabel",
        "band",
        "legacyBandLabel",
        "unquote",
        "failureReason",
        "reason",
        "releaseMulticastLock",
        "lock",
        "StartAttempt",
        "HotspotConfiguration",
        "ApInterface",
        "Companion",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Companion:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$Companion;

.field private static final INTERFACE_POLL_NANOS:J

.field public static final MULTICAST_LOCK_TAG:Ljava/lang/String; = "xcertplay-local-only-hotspot-mdns"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NANOS_PER_MILLISECOND:J = 0xf4240L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final appContext:Landroid/content/Context;

.field private closed:Z

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private final onDiagnostic:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private radioObserver:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;

.field private reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

.field private startAttempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

.field private final stateLock:Ljava/lang/Object;

.field private stopped:Z

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$DTqxGm-mtrZ4nMtr23Qq7p79ETs(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->readWifiConfiguration$lambda$24(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$m8UvEsX9eUXVC-JikXOKnnYapd0(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->requestHotspot$lambda$12(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oaDKnSjUuS3Wiucjb77pBnWrj-Q(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xmAopetseu7I4VecR_9ydaMQ0s4(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->toMacAddressString$lambda$40(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->Companion:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$Companion;

    .line 871
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->INTERFACE_POLL_NANOS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiagnostic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    move-object p2, p1

    :cond_0
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->appContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "getApplicationContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-static {p2, v1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 41
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;

    return-void

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "WifiManager is unavailable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 35
    new-instance p2, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$$ExternalSyntheticLambda23;

    invoke-direct {p2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$$ExternalSyntheticLambda23;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$failureReason(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;I)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->failureReason(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClosed$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->closed:Z

    return p0
.end method

.method public static final synthetic access$getINTERFACE_POLL_NANOS$cp()J
    .locals 2

    .line 35
    sget-wide v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->INTERFACE_POLL_NANOS:J

    return-wide v0
.end method

.method public static final synthetic access$getMulticastLock$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    return-object p0
.end method

.method public static final synthetic access$getReservation$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    return-object p0
.end method

.method public static final synthetic access$getStartAttempt$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->startAttempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    return-object p0
.end method

.method public static final synthetic access$getStateLock$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Ljava/lang/Object;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$releaseMulticastLock(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;Landroid/net/wifi/WifiManager$MulticastLock;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->releaseMulticastLock(Landroid/net/wifi/WifiManager$MulticastLock;)V

    return-void
.end method

.method public static final synthetic access$setMulticastLock$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;Landroid/net/wifi/WifiManager$MulticastLock;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    return-void
.end method

.method public static final synthetic access$setStopped$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stopped:Z

    return-void
.end method

.method private final acquireMulticastLock(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 2

    .line 412
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->ensureStartActive(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)V

    .line 413
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v1, "xcertplay-local-only-hotspot-mdns"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 414
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 416
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 417
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :try_start_1
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->ensureStartActiveLocked(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)V

    .line 419
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    :try_start_2
    monitor-exit v1

    .line 420
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 417
    monitor-exit v1

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 422
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->releaseMulticastLock(Landroid/net/wifi/WifiManager$MulticastLock;)V

    .line 423
    throw p1
.end method

.method private final activeInterfaces()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .line 630
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    .line 935
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 936
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/net/NetworkInterface;

    .line 632
    :try_start_0
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    .line 936
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 937
    :cond_3
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final awaitApInterface([BLjava/util/Set;Ljava/util/Set;Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;J)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;",
            "J)",
            "Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;"
        }
    .end annotation

    .line 583
    :goto_0
    invoke-direct {p0, p4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->ensureStartActive(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)V

    .line 584
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->findInterface([BLjava/util/Set;Ljava/util/Set;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 586
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->hotspotAddress(Ljava/net/NetworkInterface;)Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 587
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->interfaceBssid(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_0

    if-nez v2, :cond_0

    goto :goto_1

    .line 591
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;

    .line 592
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getName(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    invoke-direct {p1, p2, v1, v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object p1

    .line 599
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, p5, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 604
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v3, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->INTERFACE_POLL_NANOS:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 606
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 607
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Interrupted while waiting for the LocalOnlyHotspot interface"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 601
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "LocalOnlyHotspot started but its AP interface/address could not be identified"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final awaitRadioInfo(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;J)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;
    .locals 16

    move-object/from16 v1, p0

    .line 247
    new-instance v0, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Settled;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Settled;-><init>()V

    .line 248
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 v4, p4

    .line 250
    :goto_0
    invoke-direct {v1, v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->ensureStartActive(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;->getBssid()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBssid()Ljava/lang/String;

    move-result-object v5

    :cond_0
    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->settledForBssid(Ljava/lang/String;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;

    move-result-object v5

    if-eqz v5, :cond_1

    return-object v5

    .line 252
    :cond_1
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->getUnavailableReason()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 253
    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getChannel()I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_2

    return-object v8

    .line 254
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x21

    if-ge v7, v9, :cond_e

    .line 255
    sget-object v10, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;->INSTANCE:Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;

    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBandLabel()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;->read$default(Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;

    move-result-object v5

    .line 256
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    const v11, 0xf4240

    int-to-long v11, v11

    div-long/2addr v9, v11

    invoke-virtual {v0, v7, v9, v10}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Settled;->observe(Ljava/lang/Integer;J)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 258
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiFrequencyMhzToChannel(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LocalOnlyHotspot legacy AP radio iface="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " frequency="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "MHz channel="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;

    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;->getBssid()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBssid()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 261
    :cond_4
    sget-object v7, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;->INSTANCE:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v9}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;->systemChoosesEverything(I)Z

    move-result v7

    .line 262
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v2

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 263
    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBandLabel()Ljava/lang/String;

    move-result-object v12

    const-string v13, "5 GHz"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v14, 0x1770

    goto :goto_2

    :cond_6
    :goto_1
    const-wide/16 v14, 0x5dc

    .line 262
    :goto_2
    invoke-virtual {v11, v14, v15}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    cmp-long v14, v9, v11

    if-ltz v14, :cond_f

    .line 266
    const-string v0, "LocalOnlyHotspot: Android "

    const-string v2, "radio did not settle"

    if-eqz v7, :cond_8

    .line 269
    iget-object v3, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 270
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;->getError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    move-object v2, v5

    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBandLabel()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not report the local hotspot\'s channel ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "); advertising channel 0 (auto), band "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8

    .line 273
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBandLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 280
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;->getError()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    move-object v2, v3

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LocalOnlyHotspot: 5 GHz band confirmed by configuration; live channel unreadable ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "); advertising the requested channel without live verification"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8

    .line 283
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBandLabel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.4 GHz"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne v0, v2, :cond_b

    .line 290
    new-instance v0, Ljava/io/IOException;

    const-string v2, "LocalOnlyHotspot: this Android 10 firmware always places the local hotspot on 2.4 GHz; use the Car hotspot or Wi-Fi Direct"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "LocalOnlyHotspot: this firmware placed the hotspot on 2.4 GHz while the car\'s Wi-Fi client was using a 2.4 GHz network; turn the car\'s Wi-Fi client off and try again, or choose the Car hotspot"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_c
    new-instance v3, Ljava/io/IOException;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;->getError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    goto :goto_5

    :cond_d
    move-object v2, v5

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot read the AP channel ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "); choose a 5 GHz Car hotspot or Wi-Fi Direct"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 302
    :cond_e
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LocalOnlyHotspot: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; cannot advertise automatic channel 0 to CarPlay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v7, p5, v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_10

    .line 308
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v9, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->INTERFACE_POLL_NANOS:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 310
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 311
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted while waiting for the LocalOnlyHotspot channel"

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 306
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v2, "LocalOnlyHotspot did not report its live channel; cannot advertise automatic channel 0 to CarPlay"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private final awaitStart(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;JJ)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    .locals 6

    .line 391
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->closed:Z

    if-nez v1, :cond_4

    .line 394
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->getFailure()Ljava/io/IOException;

    move-result-object v1

    if-nez v1, :cond_3

    .line 395
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->getStopped()Z

    move-result v1

    if-nez v1, :cond_2

    .line 398
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->getReservation()Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 391
    monitor-exit v0

    return-object v1

    .line 400
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long v1, p2, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 406
    invoke-direct {p0, v1, v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->waitNanos(J)V

    goto :goto_0

    .line 402
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 403
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Timed out after "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms waiting for LocalOnlyHotspot"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 402
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 396
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "LocalOnlyHotspot stopped before startup completed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_3
    throw v1

    .line 393
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "LocalOnlyHotspot manager closed while starting"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 391
    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final cleanupFailedStart(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;Landroid/net/wifi/WifiManager$MulticastLock;)V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 688
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->startAttempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->startAttempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    :cond_0
    const/4 v1, 0x1

    .line 689
    invoke-virtual {p1, v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->setStopped(Z)V

    .line 690
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 691
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->getReservation()Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    move-result-object p1

    .line 692
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    monitor-exit v0

    .line 693
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->releaseMulticastLock(Landroid/net/wifi/WifiManager$MulticastLock;)V

    if-eqz p1, :cond_1

    .line 694
    sget-object p2, Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;->INSTANCE:Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;->released$shared_release()V

    :cond_1
    if-eqz p1, :cond_2

    .line 695
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 687
    monitor-exit v0

    throw p1
.end method

.method private final createCallback(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
    .locals 1

    .line 340
    new-instance v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;-><init>(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)V

    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    move-result-object p1

    return-object p1
.end method

.method private final deadlineAfter(J)J
    .locals 7

    .line 710
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    const-wide v2, 0x7fffffffffffffffL

    sub-long v4, v2, v0

    cmp-long v6, v4, p1

    if-gez v6, :cond_0

    return-wide v2

    :cond_0
    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final disconnectTwoPointFourStation()V
    .locals 4

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-gt v1, v0, :cond_2

    const/16 v1, 0x21

    if-ge v0, v1, :cond_2

    .line 167
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_1

    goto :goto_2

    .line 171
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    .line 172
    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/wifi/WifiInfo;)I

    move-result v1

    const/16 v2, 0x96c

    if-gt v2, v1, :cond_2

    const/16 v2, 0x9b5

    if-ge v1, v2, :cond_2

    .line 174
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    .line 175
    invoke-static {v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/wifi/WifiInfo;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LocalOnlyHotspot: car Wi-Fi client is associated on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " MHz (2.4 GHz); disconnecting it so the hotspot can use 5 GHz"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LocalOnlyHotspot: could not disconnect the Wi-Fi client ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "); if the hotspot lands on 2.4 GHz, turn the car\'s Wi-Fi switch off"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    return-void
.end method

.method private final ensureStartActive(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->ensureStartActiveLocked(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)V

    .line 673
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final ensureStartActiveLocked(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)V
    .locals 1

    .line 677
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->closed:Z

    if-nez v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->startAttempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    if-ne v0, p1, :cond_1

    .line 679
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->getStopped()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "LocalOnlyHotspot stopped while starting"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 678
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "LocalOnlyHotspot startup was cancelled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 677
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "LocalOnlyHotspot manager closed while starting"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final failureReason(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reason "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 833
    :cond_0
    const-string/jumbo p1, "tethering disallowed"

    return-object p1

    .line 832
    :cond_1
    const-string p1, "incompatible Wi-Fi mode"

    return-object p1

    .line 831
    :cond_2
    const-string p1, "generic error"

    return-object p1

    .line 830
    :cond_3
    const-string p1, "no channel available"

    return-object p1
.end method

.method private final findInterface([BLjava/util/Set;Ljava/util/Set;)Ljava/net/NetworkInterface;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/NetworkInterface;"
        }
    .end annotation

    .line 617
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->activeInterfaces()Ljava/util/List;

    move-result-object v0

    .line 618
    check-cast v0, Ljava/lang/Iterable;

    .line 920
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 921
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 922
    check-cast v3, Ljava/net/NetworkInterface;

    .line 619
    new-instance v4, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getName(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->siteLocalIpv4Addresses(Ljava/net/NetworkInterface;)Ljava/util/Set;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->interfaceBssid(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V

    .line 922
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 923
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 622
    sget-object v2, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy;->INSTANCE:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->upstreamInterfaceNames()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v3, p3, v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy;->excludedUpstreams(ILjava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p3

    .line 623
    sget-object v2, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy;->INSTANCE:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy;

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 624
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->toMacAddressString([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v3

    .line 623
    :goto_1
    invoke-virtual {v2, v1, p2, p3, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy;->select(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v3

    .line 926
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    move-object v0, v3

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 927
    move-object v2, v1

    check-cast v2, Ljava/net/NetworkInterface;

    .line 626
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotInterfacePolicy$Candidate;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    const/4 p3, 0x1

    move-object v0, v1

    goto :goto_2

    :cond_5
    if-nez p3, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, v0

    .line 934
    :goto_3
    check-cast v3, Ljava/net/NetworkInterface;

    return-object v3
.end method

.method private final hotspotAddress(Ljava/net/NetworkInterface;)Ljava/net/InetAddress;
    .locals 6

    .line 654
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 655
    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Ljava/net/Inet6Address;

    invoke-virtual {v4}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 656
    invoke-virtual {v4}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v4

    invoke-static {p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Ljava/net/NetworkInterface;)I

    move-result v5

    if-ne v4, v5, :cond_1

    return-object v3

    .line 658
    :cond_1
    :try_start_0
    check-cast v3, Ljava/net/Inet6Address;

    invoke-virtual {v3}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v3

    invoke-static {v1, v3, p1}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    nop

    goto :goto_0

    .line 663
    :cond_2
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/net/Inet4Address;

    invoke-virtual {v4}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private final interfaceBssid(Ljava/net/NetworkInterface;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 647
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->toMacAddressString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 648
    const-string v2, "02:00:00:00:00:00"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "00:00:00:00:00:00"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v1, v0

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_3

    .line 649
    :cond_4
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "list(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 979
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 988
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/net/Inet6Address;

    if-eqz v3, :cond_5

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 989
    :cond_6
    check-cast v1, Ljava/util/List;

    .line 979
    check-cast v1, Ljava/lang/Iterable;

    .line 650
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->toEui64MacAddress(Ljava/net/Inet6Address;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    :goto_3
    move-object v0, v1

    :cond_8
    return-object v0
.end method

.method private final legacyBandLabel(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_0

    const/16 v0, 0xf

    if-ge p1, v0, :cond_0

    .line 815
    const-string p1, "2.4 GHz"

    return-object p1

    :cond_0
    const/16 v0, 0x20

    if-gt v0, p1, :cond_1

    const/16 v0, 0xb2

    if-ge p1, v0, :cond_1

    .line 816
    const-string p1, "5 GHz"

    return-object p1

    .line 817
    :cond_1
    const-string p1, "Unknown band"

    return-object p1
.end method

.method private final mapSoftApSecurity(I)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 748
    new-instance v0, Ljava/io/IOException;

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported LocalOnlyHotspot security type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 748
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unsupported LocalOnlyHotspot security type: OWE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 744
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA3_ONLY:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    .line 743
    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA3_TRANSITION:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    .line 741
    :cond_3
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA_WPA2:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    .line 740
    :cond_4
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1
.end method

.method private final mapWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 4

    .line 756
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 758
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v1, 0x4

    .line 759
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/16 v2, 0x8

    .line 760
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    const/16 v3, 0x9

    .line 761
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 765
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 766
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA3_TRANSITION:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    .line 767
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA_WPA2:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    :cond_2
    if-eqz v2, :cond_3

    .line 768
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA3_ONLY:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    .line 769
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported LocalOnlyHotspot key management: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 769
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unsupported LocalOnlyHotspot security type: OWE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 757
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "LocalOnlyHotspot did not report its key management"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final parseMac(Ljava/lang/String;)[B
    .locals 7

    .line 490
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    new-array v1, p1, [C

    const/4 p1, 0x0

    const/16 v2, 0x3a

    aput-char v2, v1, p1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 491
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    return-object v2

    .line 492
    :cond_0
    new-array v1, v3, [B

    :goto_0
    if-ge p1, v3, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ltz v5, :cond_1

    const/16 v6, 0x100

    if-ge v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    return-object v1
.end method

.method private final readConfiguration(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;
    .locals 2

    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 431
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    const-string v0, "getSoftApConfiguration(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->readSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;

    move-result-object p1

    return-object p1

    .line 434
    :cond_0
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 436
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->readWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;

    move-result-object p1

    return-object p1

    .line 435
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "LocalOnlyHotspot did not provide a Wi-Fi configuration"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final readConfiguredChannel(Landroid/net/wifi/SoftApConfiguration;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/SoftApConfiguration;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 497
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/SoftApConfiguration;)Landroid/util/SparseIntArray;

    move-result-object p1

    const-string v0, "getChannels(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 501
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 503
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    .line 504
    const-string v0, "SoftApConfiguration.channels"

    .line 502
    invoke-direct {p0, p1, v0, v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->requireChannel(ILjava/lang/String;Z)I

    move-result p1

    .line 507
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->softApBandLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 499
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected one LocalOnlyHotspot channel, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final readLegacySoftApBandLabel(Landroid/net/wifi/SoftApConfiguration;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 567
    :try_start_0
    invoke-static {}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBand"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 568
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    nop

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 572
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->softApBandLabel(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->legacyBandLabel(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private final readLegacySoftApChannel(Landroid/net/wifi/SoftApConfiguration;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/SoftApConfiguration;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 513
    :try_start_0
    invoke-static {}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getChannel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 514
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    :cond_0
    if-eqz v2, :cond_1

    .line 517
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 518
    const-string v1, "SoftApConfiguration.getChannel"

    const/4 v2, 0x1

    .line 516
    invoke-direct {p0, v0, v1, v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->requireChannel(ILjava/lang/String;Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->readLegacySoftApBandLabel(Landroid/net/wifi/SoftApConfiguration;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 515
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SoftApConfiguration.getChannel returned no channel"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 522
    new-instance v0, Ljava/io/IOException;

    .line 523
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Android "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not expose SoftApConfiguration.getChannel"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    check-cast p1, Ljava/lang/Throwable;

    .line 522
    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final readSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;
    .locals 10

    .line 443
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->validateSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/SoftApConfiguration;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->mapSoftApSecurity(I)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v4

    .line 445
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->validatePassphrase(Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 446
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_0

    .line 447
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->readConfiguredChannel(Landroid/net/wifi/SoftApConfiguration;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    .line 449
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->readLegacySoftApChannel(Landroid/net/wifi/SoftApConfiguration;)Lkotlin/Pair;

    move-result-object v0

    .line 451
    :goto_0
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/MacAddress;

    move-result-object p1

    .line 453
    new-instance v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;

    .line 457
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    .line 458
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/MacAddress;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    if-eqz p1, :cond_2

    .line 459
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/MacAddress;)[B

    move-result-object v6

    .line 460
    :cond_2
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    .line 453
    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;ILjava/lang/String;[BLjava/lang/String;)V

    return-object v1
.end method

.method private final readWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;
    .locals 14

    .line 466
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->validateSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->mapWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v4

    .line 468
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->validatePassphrase(Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 470
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 471
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v0, v6, :cond_1

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;

    invoke-static {v1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/MacAddress;)[B

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v5

    :cond_0
    check-cast v0, [B

    goto :goto_1

    .line 472
    :cond_1
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->parseMac(Ljava/lang/String;)[B

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    move-object v7, v0

    goto :goto_2

    .line 474
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocalOnlyHotspot reported an invalid BSSID (length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object v7, v5

    .line 476
    :goto_2
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->readWifiConfigurationChannel(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 478
    new-instance v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;

    if-eqz v7, :cond_4

    .line 483
    const-string v5, ":"

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    new-instance v11, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$$ExternalSyntheticLambda22;

    invoke-direct {v11}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$$ExternalSyntheticLambda22;-><init>()V

    const/16 v12, 0x1e

    const/4 v13, 0x0

    move-object v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v5

    goto :goto_3

    :cond_4
    move-object v6, v5

    .line 485
    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->readWifiConfigurationBandLabel(Landroid/net/wifi/WifiConfiguration;I)Ljava/lang/String;

    move-result-object v8

    move v5, v0

    .line 478
    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;ILjava/lang/String;[BLjava/lang/String;)V

    return-object v1
.end method

.method private static final readWifiConfiguration$lambda$24(B)Ljava/lang/CharSequence;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    .line 483
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final readWifiConfigurationBandLabel(Landroid/net/wifi/WifiConfiguration;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 549
    :try_start_0
    const-class v1, Landroid/net/wifi/WifiConfiguration;

    const-string v2, "apBand"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 550
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    nop

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 555
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "2.4 GHz"

    goto :goto_4

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    .line 556
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const-string p1, "5 GHz"

    goto :goto_4

    .line 557
    :cond_5
    :goto_3
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->legacyBandLabel(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method private final readWifiConfigurationChannel(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4

    .line 532
    :try_start_0
    const-class v0, Landroid/net/wifi/WifiConfiguration;

    const-string v1, "apChannel"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    const-string v0, "WifiConfiguration.apChannel"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->requireChannel(ILjava/lang/String;Z)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 534
    new-instance v0, Ljava/io/IOException;

    .line 535
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Android "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not expose WifiConfiguration.apChannel"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    check-cast p1, Ljava/lang/Throwable;

    .line 534
    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final releaseMulticastLock(Landroid/net/wifi/WifiManager$MulticastLock;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 840
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private final requestHotspot(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)Ljava/lang/Integer;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 195
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 196
    new-instance v4, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$$ExternalSyntheticLambda21;

    invoke-direct {v4, v3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$$ExternalSyntheticLambda21;-><init>(Landroid/os/Handler;)V

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    const/16 v6, 0x24

    const/4 v7, 0x0

    if-eq v0, v5, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_7

    .line 199
    :cond_0
    :try_start_0
    new-instance v5, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v5}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    .line 202
    invoke-static {}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v8, "setSsid"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v0, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 203
    sget-object v8, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->INSTANCE:Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;

    iget-object v10, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->appContext:Landroid/content/Context;

    invoke-virtual {v8, v10, v7}, Lcom/shilapi/xcertplay/network/FreeAutoHotspotName;->name(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v8, v10, v12

    invoke-virtual {v0, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v8, "setPassphrase"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v9

    invoke-virtual {v0, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 205
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v8, "toString(...)"

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "-"

    const-string v15, ""

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x14

    invoke-static {v8, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v8, v13, v12

    aput-object v11, v13, v9

    invoke-virtual {v0, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 210
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;

    iget-object v0, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/wifi/WifiInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v7

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v0, v7

    :cond_2
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 211
    move-object v8, v0

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    const/16 v11, 0x1428

    if-gt v11, v8, :cond_3

    const/16 v11, 0x1708

    if-ge v8, v11, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v7

    :goto_2
    if-eqz v0, :cond_4

    .line 212
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiFrequencyMhzToChannel(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 211
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :cond_4
    const/16 v0, 0x24

    .line 214
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v8

    const-string v11, "setChannel"

    new-array v13, v10, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v12

    aput-object v14, v13, v9

    invoke-virtual {v8, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v11, v14, v12

    aput-object v13, v14, v9

    invoke-virtual {v8, v5, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 219
    :catch_0
    :try_start_4
    invoke-static {}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v8

    const-string v11, "setBand"

    new-array v13, v9, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v12

    invoke-virtual {v8, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 220
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v11, v13, v12

    invoke-virtual {v8, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :goto_4
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v6, :cond_5

    const-string/jumbo v6, "startLocalOnlyHotspotWithConfiguration"

    goto :goto_5

    :cond_5
    const-string/jumbo v6, "startLocalOnlyHotspot"

    .line 223
    :goto_5
    const-class v8, Landroid/net/wifi/WifiManager;

    invoke-static {}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1()Ljava/lang/Class;

    move-result-object v11

    .line 224
    invoke-static {}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$2()Ljava/lang/Class;

    move-result-object v13

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    aput-object v11, v15, v12

    const-class v11, Ljava/util/concurrent/Executor;

    aput-object v11, v15, v9

    aput-object v13, v15, v10

    .line 223
    invoke-virtual {v8, v6, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 224
    iget-object v8, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v5}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/SoftApConfiguration$Builder;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v5

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v5, v11, v12

    aput-object v4, v11, v9

    aput-object v2, v11, v10

    invoke-virtual {v6, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    :catch_1
    move-exception v0

    .line 227
    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/ReflectiveOperationException;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/ReflectiveOperationException;)Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/SecurityException;

    if-nez v4, :cond_7

    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/ReflectiveOperationException;)Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/UnsupportedOperationException;

    if-eqz v4, :cond_6

    goto :goto_6

    .line 228
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "LocalOnlyHotspot custom startup failed"

    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/ReflectiveOperationException;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 236
    :catch_2
    :cond_7
    :goto_6
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v2, v3}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Landroid/os/Handler;)V

    return-object v7
.end method

.method private static final requestHotspot$lambda$12(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final requireChannel(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 776
    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->requireChannel(ILjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method private final requireChannel(ILjava/lang/String;Z)I
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    if-nez p3, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    return p1

    .line 781
    :cond_1
    new-instance p3, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " returned invalid channel: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private final siteLocalIpv4Addresses(Ljava/net/NetworkInterface;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/NetworkInterface;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 643
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "list(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 961
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 962
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 952
    check-cast v0, Ljava/lang/Iterable;

    .line 963
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 964
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/net/Inet4Address;

    .line 644
    invoke-virtual {v2}, Ljava/net/Inet4Address;->isSiteLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 964
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 965
    :cond_3
    check-cast p1, Ljava/util/List;

    .line 963
    check-cast p1, Ljava/lang/Iterable;

    .line 966
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 975
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 974
    check-cast v1, Ljava/net/Inet4Address;

    .line 644
    invoke-virtual {v1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 974
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 978
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 966
    check-cast v0, Ljava/lang/Iterable;

    .line 644
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private final softApBandLabel(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown band ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 810
    :cond_0
    const-string p1, "60 GHz"

    return-object p1

    .line 809
    :cond_1
    const-string p1, "6 GHz"

    return-object p1

    .line 808
    :cond_2
    const-string p1, "5 GHz"

    return-object p1

    .line 807
    :cond_3
    const-string p1, "2.4 GHz"

    return-object p1
.end method

.method private final toEui64MacAddress(Ljava/net/Inet6Address;)Ljava/lang/String;
    .locals 8

    .line 790
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 791
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result p1

    if-eqz p1, :cond_1

    array-length p1, v0

    const/16 v1, 0x10

    if-ne p1, v1, :cond_1

    const/16 p1, 0xb

    aget-byte p1, v0, p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const/16 p1, 0xc

    .line 792
    aget-byte p1, v0, p1

    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 797
    aget-byte p1, v0, p1

    const/4 v1, 0x2

    xor-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v2, 0x9

    .line 798
    aget-byte v2, v0, v2

    const/16 v3, 0xa

    .line 799
    aget-byte v3, v0, v3

    const/16 v4, 0xd

    .line 800
    aget-byte v4, v0, v4

    const/16 v5, 0xe

    .line 801
    aget-byte v5, v0, v5

    const/16 v6, 0xf

    .line 802
    aget-byte v0, v0, v6

    const/4 v6, 0x6

    new-array v6, v6, [B

    const/4 v7, 0x0

    aput-byte p1, v6, v7

    const/4 p1, 0x1

    aput-byte v2, v6, p1

    aput-byte v3, v6, v1

    const/4 p1, 0x3

    aput-byte v4, v6, p1

    const/4 p1, 0x4

    aput-byte v5, v6, p1

    const/4 p1, 0x5

    aput-byte v0, v6, p1

    .line 803
    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->toMacAddressString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final toMacAddressString([B)Ljava/lang/String;
    .locals 10

    .line 787
    const-string v0, ":"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$$ExternalSyntheticLambda24;

    invoke-direct {v7}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$$ExternalSyntheticLambda24;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final toMacAddressString$lambda$40(B)Ljava/lang/CharSequence;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    .line 787
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 822
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 823
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method private final upstreamInterfaceNames()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->connectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;)[Landroid/net/Network;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 938
    new-array v0, v2, [Landroid/net/Network;

    .line 939
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 948
    array-length v4, v0

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    .line 640
    iget-object v6, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v6, :cond_2

    invoke-static {v6, v5}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v5}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    if-eqz v5, :cond_3

    .line 947
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 951
    :cond_4
    check-cast v3, Ljava/util/List;

    .line 939
    check-cast v3, Ljava/lang/Iterable;

    .line 640
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private final validatePassphrase(Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    .line 728
    const-string p2, ""

    .line 729
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    if-eq p1, v0, :cond_2

    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 730
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "LocalOnlyHotspot did not report a passphrase for secured Wi-Fi"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 732
    :cond_2
    :goto_0
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object p2

    .line 733
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "LocalOnlyHotspot passphrase contains U+0000"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final validateSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 716
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 717
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "<unknown ssid>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 720
    invoke-static {v0, v3, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "LocalOnlyHotspot SSID contains U+0000"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 718
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "LocalOnlyHotspot did not report a usable SSID"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final waitNanos(J)V
    .locals 4

    const-wide/32 v0, 0xf4240

    .line 699
    div-long v2, p1, v0

    .line 700
    rem-long/2addr p1, v0

    long-to-int p2, p1

    .line 702
    :try_start_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3, p2}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 704
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 705
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Interrupted while waiting for LocalOnlyHotspot"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public associatedClients()Ljava/lang/Integer;
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager$-CC;->$default$associatedClients(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 5

    .line 320
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 322
    :try_start_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->closed:Z

    .line 323
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->startAttempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->setStopped(Z)V

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 325
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 326
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 327
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->radioObserver:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;

    const/4 v4, 0x0

    .line 328
    iput-object v4, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->radioObserver:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;

    .line 329
    iput-object v4, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 330
    iput-object v4, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 331
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    monitor-exit v0

    .line 333
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->releaseMulticastLock(Landroid/net/wifi/WifiManager$MulticastLock;)V

    if-eqz v3, :cond_2

    .line 334
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->close()V

    :cond_2
    if-eqz v1, :cond_3

    .line 335
    sget-object v0, Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;->INSTANCE:Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/OwnLocalOnlyHotspot;->released$shared_release()V

    :cond_3
    if-eqz v1, :cond_4

    .line 336
    invoke-static {v1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 320
    monitor-exit v0

    throw v1
.end method

.method public onCarPlayConfirmed()V
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager$-CC;->$default$onCarPlayConfirmed(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)V

    return-void
.end method

.method public start(J)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;
    .locals 20

    move-object/from16 v1, p0

    .line 55
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_16

    .line 60
    new-instance v5, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    invoke-direct {v5}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;-><init>()V

    .line 61
    iget-object v2, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 62
    :try_start_0
    iget-boolean v0, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->closed:Z

    if-nez v0, :cond_15

    .line 63
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->startAttempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-nez v0, :cond_14

    .line 66
    iput-object v5, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->startAttempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    .line 67
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 61
    monitor-exit v2

    .line 70
    new-instance v8, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;

    iget-object v0, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v8, v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;-><init>(Landroid/net/wifi/WifiManager;)V

    .line 72
    invoke-direct/range {p0 .. p2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->deadlineAfter(J)J

    move-result-wide v6

    .line 73
    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->activeInterfaces()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 914
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 915
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 916
    check-cast v3, Ljava/net/NetworkInterface;

    .line 73
    invoke-direct {v1, v3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->siteLocalIpv4Addresses(Ljava/net/NetworkInterface;)Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 917
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 919
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 914
    check-cast v2, Ljava/lang/Iterable;

    .line 73
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 74
    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->upstreamInterfaceNames()Ljava/util/Set;

    move-result-object v9

    .line 77
    :try_start_1
    invoke-direct {v1, v5}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->ensureStartActive(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)V

    .line 78
    iget-object v2, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    iget-object v3, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LocalOnlyHotspot starting with Wi-Fi client enabled="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->disconnectTwoPointFourStation()V

    .line 80
    invoke-direct {v1, v5}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->createCallback(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->requestHotspot(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)Ljava/lang/Integer;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v2, v5

    move-wide v3, v6

    move-wide/from16 v5, p1

    .line 82
    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->awaitStart(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;JJ)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object v5, v2

    move-wide v6, v3

    .line 83
    :try_start_3
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->start()V

    .line 84
    invoke-direct {v1, v5}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->acquireMulticastLock(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 85
    :try_start_4
    invoke-direct {v1, v13}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->readConfiguration(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;

    move-result-object v15

    .line 86
    iget-object v2, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v15}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBandLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getChannel()I

    move-result v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LocalOnlyHotspot reservation band="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " channel="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v15}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBssidBytes()[B

    move-result-object v2

    move-object v3, v0

    move-object v4, v9

    .line 87
    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->awaitApInterface([BLjava/util/Set;Ljava/util/Set;Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;J)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v4, v15

    .line 94
    :try_start_5
    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->awaitRadioInfo(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;J)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;

    move-result-object v0

    .line 96
    sget-object v6, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;->INSTANCE:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;->getFrequencyMHz()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :cond_1
    const/4 v8, 0x0

    :goto_1
    :try_start_7
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBandLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;->accepts(ILjava/lang/Integer;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 99
    sget-object v6, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;->INSTANCE:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;->systemChoosesEverything(I)Z

    move-result v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v6, :cond_2

    .line 100
    :try_start_8
    iget-object v6, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBandLabel()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LocalOnlyHotspot: Android "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " chose the band ("

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "), the name and the password itself; 06Link sends them to the iPhone over Bluetooth (expected, not an error)"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 104
    :cond_2
    :try_start_9
    iget-object v6, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 105
    :try_start_a
    invoke-direct {v1, v5}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->ensureStartActiveLocked(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)V

    .line 106
    iput-object v13, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 107
    iput-object v14, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 108
    iput-object v2, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->radioObserver:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    const/4 v8, 0x0

    .line 110
    :try_start_b
    iput-object v8, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->startAttempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    const/4 v9, 0x0

    .line 111
    iput-boolean v9, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stopped:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 113
    :try_start_c
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 104
    :try_start_d
    monitor-exit v6

    .line 114
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;->getBssid()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBssid()Ljava/lang/String;

    move-result-object v6

    :cond_3
    iget-object v9, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v6, v9}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->watch(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    if-eqz v0, :cond_8

    .line 121
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;->getFrequencyMHz()I

    move-result v6

    invoke-static {v6}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiFrequencyMhzToChannel(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_4

    :goto_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_4

    .line 122
    :cond_4
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getChannel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-lez v9, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v8

    :goto_3
    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v12, :cond_7

    .line 121
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_4

    :cond_7
    const/16 v6, 0x24

    const/16 v13, 0x24

    goto :goto_5

    .line 123
    :cond_8
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getChannel()I

    move-result v6

    if-lez v6, :cond_9

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getChannel()I

    move-result v6

    :goto_4
    move v13, v6

    goto :goto_5

    :cond_9
    if-eqz v12, :cond_a

    .line 124
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_4

    .line 126
    :cond_a
    sget-object v6, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;->INSTANCE:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v9}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotBandPolicy;->unreadChannel(I)I

    move-result v6

    goto :goto_4

    :goto_5
    if-nez v0, :cond_b

    .line 128
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getChannel()I

    move-result v6

    if-nez v6, :cond_b

    .line 129
    iget-object v6, v1, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBandLabel()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LocalOnlyHotspot: advertising channel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " (band "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") without live verification"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_b
    new-instance v9, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    .line 133
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v10

    .line 134
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v11

    .line 135
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v12

    if-eqz v0, :cond_c

    .line 137
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;->getFrequencyMHz()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v14, v6

    goto :goto_6

    :cond_c
    move-object v14, v8

    .line 138
    :goto_6
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;->getBssid()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBssid()Ljava/lang/String;

    move-result-object v6

    :cond_d
    move-object v15, v6

    .line 139
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;->getName()Ljava/lang/String;

    move-result-object v16

    .line 140
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$ApInterface;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v17

    if-eqz v0, :cond_e

    .line 141
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo$Radio;->getFrequencyMHz()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :cond_e
    move-object v0, v8

    .line 142
    :goto_7
    new-instance v3, Lkotlin/ranges/IntRange;

    const/16 v6, 0x96c

    const/16 v7, 0x9b4

    invoke-direct {v3, v6, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v0, "2.4 GHz"

    :goto_8
    move-object/from16 v18, v0

    goto :goto_9

    .line 143
    :cond_f
    new-instance v3, Lkotlin/ranges/IntRange;

    const/16 v6, 0x1428

    const/16 v7, 0x1707

    invoke-direct {v3, v6, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v0, "5 GHz"

    goto :goto_8

    .line 144
    :cond_10
    new-instance v3, Lkotlin/ranges/IntRange;

    const/16 v6, 0x1743

    const/16 v7, 0x1bcb

    invoke-direct {v3, v6, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "6 GHz"

    goto :goto_8

    .line 145
    :cond_11
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$HotspotConfiguration;->getBandLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 147
    :goto_9
    sget-object v19, Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;->LOCAL_ONLY_HOTSPOT:Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    .line 132
    invoke-direct/range {v9 .. v19}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    return-object v9

    :catchall_1
    move-exception v0

    const/4 v10, 0x1

    goto :goto_13

    :catch_1
    move-exception v0

    move-object v11, v8

    const/4 v10, 0x1

    goto :goto_12

    :catchall_2
    move-exception v0

    move-object v11, v8

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v11, v14

    :goto_a
    const/4 v10, 0x1

    goto :goto_b

    :catchall_4
    move-exception v0

    const/4 v9, 0x0

    move-object v11, v14

    const/4 v10, 0x0

    .line 104
    :goto_b
    :try_start_e
    monitor-exit v6

    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catch_2
    move-exception v0

    goto :goto_12

    :cond_12
    const/4 v9, 0x0

    .line 97
    :try_start_f
    new-instance v0, Ljava/io/IOException;

    const-string v3, "This firmware did not provide the requested 5 GHz local hotspot; choose Wi-Fi Direct or Car hotspot"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catchall_5
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v2, v8

    :goto_c
    const/4 v9, 0x0

    :goto_d
    move-object v11, v14

    goto :goto_11

    :catch_5
    move-exception v0

    move-object v5, v2

    goto :goto_10

    :catchall_6
    move-exception v0

    move-object v2, v8

    :goto_e
    const/4 v9, 0x0

    :goto_f
    const/4 v10, 0x0

    goto :goto_13

    :catch_6
    move-exception v0

    :goto_10
    move-object v2, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v11, v8

    :goto_11
    const/4 v10, 0x0

    .line 150
    :goto_12
    :try_start_10
    move-object v3, v11

    check-cast v3, Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-direct {v1, v5, v11}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->cleanupFailedStart(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;Landroid/net/wifi/WifiManager$MulticastLock;)V

    .line 151
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    move-exception v0

    :goto_13
    if-nez v10, :cond_13

    .line 153
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotRadioInfo;->close()V

    :cond_13
    throw v0

    .line 64
    :cond_14
    :try_start_11
    const-string v0, "A LocalOnlyHotspot is already starting or active"

    .line 63
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_15
    const-string v0, "LocalOnlyHotspotManager is closed"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :catchall_8
    move-exception v0

    .line 61
    monitor-exit v2

    throw v0

    .line 58
    :cond_16
    const-string/jumbo v0, "timeoutMillis must be positive"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_17
    const-string v0, "LocalOnlyHotspotManager.start must not run on the main thread"

    .line 55
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :goto_14
    throw v2

    :goto_15
    goto :goto_14
.end method
