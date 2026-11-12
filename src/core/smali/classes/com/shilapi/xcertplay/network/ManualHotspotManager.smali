.class public final Lcom/shilapi/xcertplay/network/ManualHotspotManager;
.super Ljava/lang/Object;
.source "ManualHotspotManager.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/network/WirelessHotspotManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/ManualHotspotManager$Companion;,
        Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;,
        Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;,
        Lcom/shilapi/xcertplay/network/ManualHotspotManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManualHotspotManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManualHotspotManager.kt\ncom/shilapi/xcertplay/network/ManualHotspotManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,558:1\n1#2:559\n1761#3,3:560\n2746#3,3:577\n295#3,2:580\n1761#3,3:582\n1463#4,14:563\n*S KotlinDebug\n*F\n+ 1 ManualHotspotManager.kt\ncom/shilapi/xcertplay/network/ManualHotspotManager\n*L\n251#1:560,3\n302#1:577,3\n360#1:580,2\n278#1:582,3\n292#1:563,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\t\u0018\u0000 O2\u00020\u0001:\u0003MNOBM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0014\u0008\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\u000fH\u0016J\u0012\u0010$\u001a\u00020\u000f2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0002J\u0018\u0010\'\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"H\u0002J\n\u0010)\u001a\u0004\u0018\u00010*H\u0002J\u001a\u0010+\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010\u0005H\u0002J\u0018\u0010/\u001a\u00020\n2\u0006\u0010(\u001a\u00020\u00052\u0006\u00100\u001a\u000201H\u0002J\u000e\u00102\u001a\u0004\u0018\u000101*\u00020-H\u0002J\u000f\u00103\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0002\u00104J!\u00105\u001a\u0004\u0018\u00010\n2\u0006\u00106\u001a\u00020*2\u0008\u00107\u001a\u0004\u0018\u00010&H\u0002\u00a2\u0006\u0002\u00108J\u0017\u00109\u001a\u0004\u0018\u00010\n2\u0006\u00106\u001a\u00020*H\u0002\u00a2\u0006\u0002\u0010:J\n\u0010;\u001a\u0004\u0018\u00010&H\u0003J\n\u0010<\u001a\u0004\u0018\u00010&H\u0003J\n\u0010=\u001a\u0004\u0018\u00010&H\u0003J\u0010\u0010>\u001a\u00020\u001c2\u0006\u0010?\u001a\u00020\nH\u0002J\u0010\u0010@\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020AH\u0002J\u0010\u0010B\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\nH\u0002J\u0014\u0010D\u001a\u0004\u0018\u00010\u00052\u0008\u0010E\u001a\u0004\u0018\u00010\u0005H\u0002J\u000c\u0010F\u001a\u00020\u0005*\u00020GH\u0002J\u0010\u0010H\u001a\u00020\u000f2\u0006\u0010I\u001a\u00020\"H\u0002J\u0010\u0010J\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"H\u0002J\u0010\u0010K\u001a\u00020\"2\u0006\u0010L\u001a\u00020\"H\u0002R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006P"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/ManualHotspotManager;",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotManager;",
        "context",
        "Landroid/content/Context;",
        "ssid",
        "",
        "passphrase",
        "band",
        "Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;",
        "channel",
        "",
        "security",
        "Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;",
        "onDiagnostic",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;ILcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;Lkotlin/jvm/functions/Function1;)V",
        "appContext",
        "kotlin.jvm.PlatformType",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "wifiManager",
        "Landroid/net/wifi/WifiManager;",
        "expectedSsid",
        "expectedBand",
        "expectedChannel",
        "expectedSecurity",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "closed",
        "",
        "start",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;",
        "timeoutMillis",
        "",
        "close",
        "validateApConfiguration",
        "configuration",
        "Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;",
        "awaitIpv4",
        "name",
        "findLocalHotspotInterface",
        "Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;",
        "isUsableInterface",
        "networkInterface",
        "Ljava/net/NetworkInterface;",
        "primaryInterface",
        "interfaceScore",
        "address",
        "Ljava/net/InetAddress;",
        "hotspotAddress",
        "frequencyFromConnectionInfo",
        "()Ljava/lang/Integer;",
        "radioFrequency",
        "localInterface",
        "ap",
        "(Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;)Ljava/lang/Integer;",
        "frequencyFromScanResult",
        "(Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;)Ljava/lang/Integer;",
        "readApConfiguration",
        "readSoftApConfiguration",
        "readLegacyApConfiguration",
        "mapSoftApSecurity",
        "securityType",
        "mapWifiConfigurationSecurity",
        "Landroid/net/wifi/WifiConfiguration;",
        "bandLabel",
        "frequencyMHz",
        "unquote",
        "value",
        "toMacAddressString",
        "",
        "sleep",
        "nanos",
        "deadlineAfter",
        "remainingNanos",
        "deadlineNanos",
        "ManualApConfiguration",
        "LocalHotspotInterface",
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
.field private static final Companion:Lcom/shilapi/xcertplay/network/ManualHotspotManager$Companion;

.field private static final EXCLUDED_INTERFACE_PREFIXES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERFACE_POLL_NANOS:J

.field private static final IPV4_WAIT_MILLIS:J = 0x1388L

.field public static final NANOS_PER_MILLISECOND:J = 0xf4240L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "xcertplay-usb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final appContext:Landroid/content/Context;

.field private volatile closed:Z

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final expectedBand:Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

.field private final expectedChannel:I

.field private final expectedSecurity:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

.field private final expectedSsid:Ljava/lang/String;

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

.field private final passphrase:Ljava/lang/String;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$TVgxncRE-qD8ay_6mt9SMEZIKjs(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W51VE8LrU-n5Ri7v18aUFKIV0S8(Lcom/shilapi/xcertplay/network/ManualHotspotManager;Ljava/net/NetworkInterface;)Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->findLocalHotspotInterface$lambda$28(Lcom/shilapi/xcertplay/network/ManualHotspotManager;Ljava/net/NetworkInterface;)Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WrlFu9zO9Nbefw8FUb9Mn0FOMCo(Ljava/net/Inet4Address;Lcom/shilapi/xcertplay/network/ManualHotspotManager;Ljava/net/NetworkInterface;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->findLocalHotspotInterface$lambda$24(Ljava/net/Inet4Address;Lcom/shilapi/xcertplay/network/ManualHotspotManager;Ljava/net/NetworkInterface;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$X1Zh-lapUV0TTfc66tEBwxtOTDI(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->toMacAddressString$lambda$34(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZHnTUBJiTN9ikmgyYssaLTaAOSk(Lcom/shilapi/xcertplay/network/ManualHotspotManager;Ljava/lang/String;Ljava/net/NetworkInterface;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->findLocalHotspotInterface$lambda$21(Lcom/shilapi/xcertplay/network/ManualHotspotManager;Ljava/lang/String;Ljava/net/NetworkInterface;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->Companion:Lcom/shilapi/xcertplay/network/ManualHotspotManager$Companion;

    .line 527
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->INTERFACE_POLL_NANOS:J

    const/16 v0, 0x9

    .line 537
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lo"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "dummy"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "rmnet"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "r_rmnet"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "tun"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "ppp"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "sit"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "ip6"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "bond"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 528
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->EXCLUDED_INTERFACE_PREFIXES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;ILcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;",
            "I",
            "Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ssid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passphrase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "band"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "security"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiagnostic"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p7, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->appContext:Landroid/content/Context;

    .line 46
    const-string p7, "appContext"

    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 47
    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p7, Landroid/net/wifi/WifiManager;

    invoke-static {p1, p7}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_a

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 49
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedSsid:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->passphrase:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedBand:Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

    .line 52
    iput p5, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedChannel:I

    .line 53
    # invokes: Lcom/shilapi/xcertplay/network/ManualHotspotManagerKt;->toIap2Security(Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    invoke-static {p6}, Lcom/shilapi/xcertplay/network/ManualHotspotManagerKt;->access$toIap2Security(Lcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedSecurity:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    .line 59
    move-object p4, p2

    check-cast p4, Ljava/lang/CharSequence;

    invoke-static {p4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_9

    .line 60
    check-cast p2, Ljava/lang/CharSequence;

    const/4 p4, 0x0

    const/4 p6, 0x2

    const/4 p7, 0x0

    invoke-static {p2, p4, p4, p6, p7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 61
    move-object p2, p3

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2, p4, p4, p6, p7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    .line 62
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/16 p4, 0x8

    if-gt p4, p3, :cond_6

    const/16 p4, 0x40

    if-ge p3, p4, :cond_6

    :goto_0
    if-ltz p5, :cond_5

    const/16 p3, 0xc5

    if-ge p5, p3, :cond_5

    .line 66
    sget-object p3, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    if-eq p1, p3, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "passphrase is required for secured manual hotspots"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_2
    :goto_1
    sget-object p3, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    if-ne p1, p3, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "passphrase must be empty for open manual hotspots"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void

    .line 65
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "channel must be 0 or in 1..196"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "passphrase must be empty or between 8 and 63 characters"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "passphrase must not contain U+0000"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "ssid must not contain U+0000"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "ssid must not be blank"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "WifiManager is unavailable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;ILcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda3;-><init>()V

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 35
    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;ILcom/shilapi/xcertplay/orchestration/ManualHotspotSecurity;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$getEXCLUDED_INTERFACE_PREFIXES$cp()Ljava/util/List;
    .locals 1

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->EXCLUDED_INTERFACE_PREFIXES:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getINTERFACE_POLL_NANOS$cp()J
    .locals 2

    .line 35
    sget-wide v0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->INTERFACE_POLL_NANOS:J

    return-wide v0
.end method

.method private final awaitIpv4(Ljava/lang/String;J)Z
    .locals 5

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {p2, p3, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p2

    add-long/2addr v0, p2

    :goto_0
    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 249
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/network/ManualHotspotManager;

    .line 250
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 251
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "list(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 560
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 561
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 251
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/net/Inet4Address;

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 252
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 249
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 253
    :goto_3
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v3

    :cond_3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    return p2

    .line 255
    :cond_4
    iget-boolean p2, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->closed:Z

    if-nez p2, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-ltz p2, :cond_5

    goto :goto_4

    :cond_5
    const-wide/16 p2, 0xc8

    .line 256
    invoke-static {p2, p3}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    :cond_6
    :goto_4
    return p3
.end method

.method private final bandLabel(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x960

    if-gt v0, p1, :cond_0

    const/16 v0, 0x9c5

    if-ge p1, v0, :cond_0

    .line 467
    const-string p1, "2.4 GHz"

    return-object p1

    :cond_0
    const/16 v0, 0x141e

    if-gt v0, p1, :cond_1

    const/16 v0, 0x1708

    if-ge p1, v0, :cond_1

    .line 468
    const-string p1, "5 GHz"

    return-object p1

    :cond_1
    const/16 v0, 0x1725

    if-gt v0, p1, :cond_2

    const/16 v0, 0x1bd6

    if-ge p1, v0, :cond_2

    .line 469
    const-string p1, "6 GHz"

    return-object p1

    .line 470
    :cond_2
    const-string p1, "Unknown band"

    return-object p1
.end method

.method private final deadlineAfter(J)J
    .locals 7

    .line 498
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

.method private final findLocalHotspotInterface()Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;
    .locals 5

    const/4 v0, 0x0

    .line 262
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 268
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 269
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v3, v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 273
    :goto_1
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/network/ManualHotspotManager;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_3
    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v0

    :cond_3
    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/shilapi/xcertplay/network/ManualHotspotManagerKt;->wifiInfoIpv4(I)Ljava/net/Inet4Address;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v0

    .line 274
    :goto_4
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v4, "list(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 275
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 276
    new-instance v4, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v2}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/network/ManualHotspotManager;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 277
    new-instance v2, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, v3, p0}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda5;-><init>(Ljava/net/Inet4Address;Lcom/shilapi/xcertplay/network/ManualHotspotManager;)V

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 280
    new-instance v2, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda6;-><init>(Lcom/shilapi/xcertplay/network/ManualHotspotManager;)V

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 563
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 564
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_5

    .line 565
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 566
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_5

    .line 567
    :cond_6
    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;

    .line 292
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getScore()I

    move-result v2

    .line 569
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 570
    move-object v4, v3

    check-cast v4, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;

    .line 292
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getScore()I

    move-result v4

    if-ge v2, v4, :cond_8

    move-object v0, v3

    move v2, v4

    .line 575
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 576
    :goto_5
    check-cast v0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;

    return-object v0
.end method

.method private static final findLocalHotspotInterface$lambda$21(Lcom/shilapi/xcertplay/network/ManualHotspotManager;Ljava/lang/String;Ljava/net/NetworkInterface;)Z
    .locals 0

    .line 276
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->isUsableInterface(Ljava/net/NetworkInterface;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final findLocalHotspotInterface$lambda$24(Ljava/net/Inet4Address;Lcom/shilapi/xcertplay/network/ManualHotspotManager;Ljava/net/NetworkInterface;)Z
    .locals 2

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    .line 278
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v1, "list(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    .line 582
    instance-of v1, p2, Ljava/util/Collection;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 583
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 278
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p0, p2

    :cond_3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    :cond_4
    return p1
.end method

.method private static final findLocalHotspotInterface$lambda$28(Lcom/shilapi/xcertplay/network/ManualHotspotManager;Ljava/net/NetworkInterface;)Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;
    .locals 6

    .line 281
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->hotspotAddress(Ljava/net/NetworkInterface;)Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 283
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v4}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->toMacAddressString([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 286
    :goto_1
    invoke-static {v4}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, v1

    :cond_1
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v5, "02:00:00:00:00:00"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "00:00:00:00:00:00"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v4

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    .line 287
    :cond_4
    sget-object v1, Lcom/shilapi/xcertplay/network/HotspotInterfaceBssid;->INSTANCE:Lcom/shilapi/xcertplay/network/HotspotInterfaceBssid;

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/shilapi/xcertplay/network/HotspotInterfaceBssid;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    :goto_3
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->interfaceScore(Ljava/lang/String;Ljava/net/InetAddress;)I

    move-result p0

    .line 282
    new-instance p1, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-object p1

    :cond_5
    return-object v1
.end method

.method private final frequencyFromConnectionInfo()Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 334
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedSsid:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 336
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    return-object v0

    .line 337
    :cond_2
    invoke-static {v1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/wifi/WifiInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_3

    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method private final frequencyFromScanResult(Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;)Ljava/lang/Integer;
    .locals 6

    .line 354
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getHardwareAddress()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 356
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 580
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 361
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v5, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedSsid:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 362
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 363
    iget v3, v3, Landroid/net/wifi/ScanResult;->frequency:I

    if-lez v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 360
    :goto_0
    check-cast v2, Landroid/net/wifi/ScanResult;

    if-eqz v2, :cond_3

    iget p1, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_0
    :cond_3
    return-object v0
.end method

.method private final hotspotAddress(Ljava/net/NetworkInterface;)Ljava/net/InetAddress;
    .locals 2

    .line 326
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "list(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->getIndexCompat(Ljava/net/NetworkInterface;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/network/WirelessHostAddressKt;->wirelessHostAddress(Ljava/util/List;I)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method private final interfaceScore(Ljava/lang/String;Ljava/net/InetAddress;)I
    .locals 6

    .line 309
    const-string v0, "ap"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v5, "softap"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    const-string v0, "p2p"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x50

    goto :goto_1

    .line 311
    :cond_1
    const-string/jumbo v0, "wlan"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x46

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p1, 0x64

    .line 314
    :goto_1
    instance-of v0, p2, Ljava/net/Inet4Address;

    if-eqz v0, :cond_5

    .line 315
    move-object v0, p2

    check-cast v0, Ljava/net/Inet4Address;

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v2

    .line 317
    aget-byte v1, v2, v1

    const/16 v3, -0x40

    if-ne v1, v3, :cond_4

    aget-byte v1, v2, v4

    const/16 v2, -0x58

    if-ne v1, v2, :cond_4

    add-int/lit8 p1, p1, 0x1e

    goto :goto_2

    .line 318
    :cond_4
    invoke-virtual {v0}, Ljava/net/Inet4Address;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 p1, p1, 0x14

    .line 321
    :cond_5
    :goto_2
    instance-of v0, p2, Ljava/net/Inet6Address;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/net/Inet6Address;

    invoke-virtual {p2}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result p2

    if-eqz p2, :cond_6

    add-int/lit8 p1, p1, 0xf

    :cond_6
    return p1
.end method

.method private final isUsableInterface(Ljava/net/NetworkInterface;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 299
    :try_start_0
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 300
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result p2

    if-nez p2, :cond_3

    .line 301
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 302
    sget-object p2, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->EXCLUDED_INTERFACE_PREFIXES:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 577
    instance-of v1, p2, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v0, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_3
    :goto_1
    return v0
.end method

.method private final mapSoftApSecurity(I)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 447
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA_WPA2:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    .line 446
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA3_ONLY:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    .line 445
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA3_TRANSITION:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    .line 443
    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA_WPA2:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    .line 442
    :cond_3
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1
.end method

.method private final mapWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 3

    .line 453
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-nez p1, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 454
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v1, 0x4

    .line 455
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/16 v2, 0x8

    .line 456
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 458
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 459
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA3_TRANSITION:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    :cond_2
    if-eqz v1, :cond_3

    .line 460
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA_WPA2:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    .line 461
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA3_ONLY:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    .line 462
    :cond_4
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA_WPA2:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1
.end method

.method private final radioFrequency(Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;)Ljava/lang/Integer;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 341
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getChannel()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    return-object v0

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedBand:Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

    sget-object v2, Lcom/shilapi/xcertplay/network/ManualHotspotManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    if-eqz p2, :cond_3

    .line 345
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getBand()Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiBandLabel(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 342
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 344
    :cond_5
    const-string p2, "5 GHz"

    goto :goto_2

    .line 343
    :cond_6
    const-string p2, "2.4 GHz"

    :goto_2
    move-object v2, p2

    .line 347
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;->INSTANCE:Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;->read$default(Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;

    move-result-object p2

    .line 348
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getName()Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "unknown"

    :cond_7
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;->getError()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, "none"

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Manual hotspot driver frequency iface="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " frequency="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " error="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private final readApConfiguration()Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;
    .locals 1

    .line 369
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->readSoftApConfiguration()Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->readLegacyApConfiguration()Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final readLegacyApConfiguration()Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;
    .locals 10

    const/4 v0, 0x0

    .line 414
    :try_start_0
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "getWifiApConfiguration"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 415
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    .line 417
    :cond_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    return-object v0

    .line 419
    :cond_2
    :try_start_1
    const-class v2, Landroid/net/wifi/WifiConfiguration;

    const-string v3, "apChannel"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v2

    goto :goto_1

    :catch_0
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 424
    :goto_1
    :try_start_2
    const-class v2, Landroid/net/wifi/WifiConfiguration;

    const-string v3, "apBand"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->legacyHotspotBandToSoftApBand(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v2

    goto :goto_2

    :catch_1
    move-object v5, v0

    .line 428
    :goto_2
    :try_start_3
    new-instance v3, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;

    .line 432
    invoke-static {v6, v5}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiChannelToFrequencyMhz(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    .line 433
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->mapWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v8

    .line 434
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 428
    invoke-direct/range {v3 .. v9}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Integer;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v3

    :catchall_0
    return-object v0
.end method

.method private final readSoftApConfiguration()Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;
    .locals 10

    .line 373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 375
    :cond_0
    :try_start_0
    const-class v0, Landroid/net/wifi/WifiManager;

    const-string v1, "getSoftApConfiguration"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    return-object v2

    .line 378
    :cond_2
    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    return-object v2

    .line 380
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x24

    const/4 v5, 0x0

    if-lt v1, v3, :cond_6

    .line 381
    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/SoftApConfiguration;)Landroid/util/SparseIntArray;

    move-result-object v1

    const-string v3, "getChannels(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    :goto_1
    move-object v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_5

    .line 386
    :cond_6
    invoke-static {}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1()Ljava/lang/Class;

    move-result-object v1

    .line 387
    const-string v3, "getBand"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 388
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 386
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_7

    check-cast v1, Ljava/lang/Number;

    goto :goto_2

    :cond_7
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_8

    .line 389
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_8
    move-object v1, v2

    .line 390
    :goto_3
    invoke-static {}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1()Ljava/lang/Class;

    move-result-object v3

    .line 391
    const-string v6, "getChannel"

    invoke-virtual {v3, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 392
    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 390
    instance-of v6, v3, Ljava/lang/Number;

    if-eqz v6, :cond_9

    check-cast v3, Ljava/lang/Number;

    goto :goto_4

    :cond_9
    move-object v3, v2

    :goto_4
    if-eqz v1, :cond_4

    if-nez v3, :cond_a

    goto :goto_1

    .line 393
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_b

    .line 396
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_6

    :cond_b
    move-object v3, v2

    :goto_6
    if-eqz v1, :cond_c

    .line 397
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v5

    move v6, v5

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    :goto_7
    move-object v5, v3

    .line 398
    new-instance v3, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;

    .line 402
    invoke-static {v6, v5}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiChannelToFrequencyMhz(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    .line 403
    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/SoftApConfiguration;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->mapSoftApSecurity(I)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v8

    .line 404
    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;

    move-result-object v9

    .line 398
    invoke-direct/range {v3 .. v9}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Integer;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    return-object v2
.end method

.method private final remainingNanos(J)J
    .locals 2

    .line 504
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final sleep(J)V
    .locals 1

    .line 490
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 492
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 493
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Interrupted while waiting for the manual hotspot"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final toMacAddressString([B)Ljava/lang/String;
    .locals 10

    .line 486
    const-string v0, ":"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda7;

    invoke-direct {v7}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda7;-><init>()V

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

.method private static final toMacAddressString$lambda$34(B)Ljava/lang/CharSequence;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    .line 486
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02X"

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

    .line 475
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

    .line 476
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

.method private final validateApConfiguration(Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;)V
    .locals 6

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 205
    :cond_0
    iget v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedChannel:I

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getChannel()I

    move-result v0

    if-lez v0, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getChannel()I

    move-result v0

    iget v1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedChannel:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 209
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getChannel()I

    move-result p1

    .line 210
    iget v1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedChannel:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Manual hotspot channel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not match configured channel "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getBand()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_3

    goto :goto_1

    .line 214
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_4

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;->GHZ_2_4:Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

    goto :goto_3

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    goto :goto_2

    .line 215
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;->GHZ_5:Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    .line 218
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedBand:Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

    sget-object v4, Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;->AUTO:Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

    if-eq v3, v4, :cond_8

    .line 219
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedBand:Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

    if-eq v0, v3, :cond_8

    .line 221
    new-instance v0, Ljava/io/IOException;

    .line 222
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getBand()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiBandLabel(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    .line 223
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedBand:Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

    sget-object v4, Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;->GHZ_2_4:Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

    if-ne v3, v4, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiBandLabel(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Manual hotspot band "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match configured band "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_8
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v0

    sget-object v3, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedSecurity:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    sget-object v5, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    if-ne v3, v5, :cond_a

    const/4 v4, 0x1

    :cond_a
    if-ne v0, v4, :cond_11

    .line 234
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 235
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedBand:Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

    sget-object v3, Lcom/shilapi/xcertplay/network/ManualHotspotManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v2, :cond_e

    if-eq v0, v1, :cond_c

    const/4 p1, 0x3

    if-ne v0, p1, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_c
    const/16 v0, 0x141e

    if-gt v0, p1, :cond_d

    const/16 v0, 0x1708

    if-ge p1, v0, :cond_d

    return-void

    .line 240
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Manual hotspot is not running on 5 GHz"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    const/16 v0, 0x960

    if-gt v0, p1, :cond_f

    const/16 v0, 0x9c5

    if-ge p1, v0, :cond_f

    return-void

    .line 237
    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Manual hotspot is not running on 2.4 GHz"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    :goto_5
    return-void

    .line 229
    :cond_11
    new-instance v0, Ljava/io/IOException;

    .line 230
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object p1

    .line 231
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedSecurity:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Manual hotspot security "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not match configured security "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .locals 1

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->closed:Z

    return-void
.end method

.method public onCarPlayConfirmed()V
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager$-CC;->$default$onCarPlayConfirmed(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)V

    return-void
.end method

.method public start(J)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;
    .locals 22

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 75
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_28

    .line 80
    invoke-direct/range {p0 .. p2}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->deadlineAfter(J)J

    move-result-wide v6

    .line 81
    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->readApConfiguration()Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 85
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedSsid:Ljava/lang/String;

    :cond_1
    move-object v10, v0

    if-eqz v8, :cond_2

    .line 86
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedSsid:Ljava/lang/String;

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    iget-object v9, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedSsid:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 88
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Manual hotspot name saved in 06Link (length "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") differs from the hotspot configuration (length "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "); using the hotspot configuration"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 87
    invoke-interface {v0, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v8, :cond_3

    .line 91
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;

    invoke-direct {v1, v8}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->validateApConfiguration(Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v9, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Manual hotspot setting differs from the hotspot configuration, using the hotspot: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v9, 0x0

    .line 98
    :goto_1
    iget-boolean v11, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->closed:Z

    if-nez v11, :cond_27

    .line 99
    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->findLocalHotspotInterface()Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;

    move-result-object v11

    if-eqz v11, :cond_4

    if-nez v9, :cond_4

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 106
    invoke-virtual {v11}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v6, v7}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->remainingNanos(J)J

    move-result-wide v15

    const v0, 0xf4240

    move-wide/from16 v18, v4

    int-to-long v4, v0

    div-long v4, v15, v4

    move-wide/from16 v20, v13

    const-wide/16 v12, 0x1388

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-direct {v1, v9, v4, v5}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->awaitIpv4(Ljava/lang/String;J)Z

    move-result v0

    .line 107
    iget-object v4, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v11}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v11, v11, v20

    .line 108
    sget-object v9, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    iget-object v13, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->appContext:Landroid/content/Context;

    const-string v14, "appContext"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->apState(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v9

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Manual hotspot iface="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ipv4Ready="

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " afterMs="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " apState="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v4, v18

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    move-wide/from16 v18, v4

    if-eqz v11, :cond_25

    .line 112
    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->frequencyFromConnectionInfo()Ljava/lang/Integer;

    move-result-object v0

    .line 115
    invoke-direct {v1, v11}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->frequencyFromScanResult(Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    .line 116
    invoke-direct {v1, v11, v8}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->radioFrequency(Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    if-eqz v8, :cond_6

    .line 118
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getChannel()I

    move-result v3

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-eqz v8, :cond_7

    .line 121
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 117
    :goto_3
    invoke-static {v3, v0, v2, v5}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->observedManualHotspotChannel(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v13

    if-eqz v8, :cond_8

    .line 124
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_9

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    :cond_9
    if-nez v0, :cond_b

    if-nez v2, :cond_a

    const/4 v14, 0x0

    goto :goto_6

    :cond_a
    move-object v14, v2

    goto :goto_6

    :cond_b
    :goto_5
    move-object v14, v0

    :goto_6
    if-eqz v8, :cond_c

    .line 129
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedSecurity:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    :cond_d
    move-object v12, v0

    if-eqz v8, :cond_10

    .line 130
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    if-ne v12, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    :goto_7
    iget-object v2, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedSecurity:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    sget-object v3, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    if-ne v2, v3, :cond_f

    const/4 v2, 0x1

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_8
    if-eq v0, v2, :cond_10

    .line 131
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    iget-object v2, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedSecurity:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Manual hotspot security in 06Link is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but the hotspot uses "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; using the hotspot"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    if-eqz v8, :cond_11

    .line 137
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-gt v3, v2, :cond_11

    const/16 v3, 0x40

    if-ge v2, v3, :cond_11

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    :goto_9
    if-eqz v8, :cond_12

    .line 138
    sget-object v2, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    if-ne v12, v2, :cond_12

    .line 139
    const-string v2, ""

    goto :goto_a

    :cond_12
    if-eqz v0, :cond_13

    .line 140
    iget-object v2, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->passphrase:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 141
    iget-object v2, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    const-string v3, "Manual hotspot passphrase saved in 06Link differs from the hotspot configuration; sending the configured hotspot passphrase"

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    goto :goto_a

    .line 145
    :cond_13
    iget-object v2, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->passphrase:Ljava/lang/String;

    .line 147
    :goto_a
    iget-object v3, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    if-eqz v8, :cond_14

    const/4 v5, 0x1

    goto :goto_b

    :cond_14
    const/4 v5, 0x0

    :goto_b
    if-eqz v0, :cond_15

    const/4 v6, 0x1

    goto :goto_c

    :cond_15
    const/4 v6, 0x0

    :goto_c
    if-lez v13, :cond_16

    const/4 v7, 0x1

    goto :goto_d

    :cond_16
    const/4 v7, 0x0

    .line 150
    :goto_d
    invoke-virtual {v11}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getHardwareAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v9, 0x1

    goto :goto_e

    :cond_17
    const/4 v9, 0x0

    .line 153
    :goto_e
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/network/ManualHotspotManager;

    sget-object v0, Lcom/shilapi/xcertplay/network/HotspotInterfaceBssid;->INSTANCE:Lcom/shilapi/xcertplay/network/HotspotInterfaceBssid;

    invoke-virtual {v11}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/network/HotspotInterfaceBssid;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v11}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getHardwareAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x1

    invoke-static {v0, v4, v15}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_f

    :cond_18
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_10

    :catchall_1
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_10
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v0, 0x0

    .line 154
    :cond_19
    invoke-virtual {v11}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getName()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual {v11}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v15

    instance-of v15, v15, Ljava/net/Inet6Address;

    if-eqz v15, :cond_1a

    const-string v15, "IPv6"

    goto :goto_11

    :cond_1a
    const-string v15, "IPv4"

    :goto_11
    move-object/from16 v16, v2

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v20, v8

    const-string v8, "Manual hotspot configReadable="

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " passphraseReadable="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " security="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " channelKnown="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " hardwareAddressKnown="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " macSourcesAgree="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " iface="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " family="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    if-eq v12, v0, :cond_1c

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_12

    .line 157
    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Manual hotspot is secured but no passphrase was provided"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_12
    if-nez v13, :cond_1d

    .line 165
    iget v0, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedChannel:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not read the active hotspot channel from Android public APIs; reporting iAP2 channel 0 (auto) instead of configured channel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string/jumbo v2, "xcertplay-usb"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-eqz v20, :cond_1e

    .line 168
    invoke-virtual/range {v20 .. v20}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$ManualApConfiguration;->getBand()Ljava/lang/Integer;

    move-result-object v4

    goto :goto_13

    :cond_1e
    const/4 v4, 0x0

    :goto_13
    invoke-static {v4}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiBandLabel(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {v11}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getHardwareAddress()Ljava/lang/String;

    move-result-object v15

    move-object v2, v11

    move-object/from16 v11, v16

    .line 176
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getName()Ljava/lang/String;

    move-result-object v16

    .line 177
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v17

    .line 178
    iget-object v2, v1, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->expectedBand:Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;

    sget-object v3, Lcom/shilapi/xcertplay/network/ManualHotspotManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotBand;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_23

    const/4 v3, 0x2

    if-eq v2, v3, :cond_22

    const/4 v3, 0x3

    if-ne v2, v3, :cond_21

    if-eqz v14, :cond_20

    .line 182
    move-object v2, v14

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->bandLabel(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    goto :goto_14

    :cond_1f
    move-object/from16 v18, v2

    goto :goto_16

    :cond_20
    :goto_14
    if-nez v0, :cond_24

    const-string v0, "Auto"

    goto :goto_15

    .line 178
    :cond_21
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 180
    :cond_22
    const-string v0, "5 GHz"

    goto :goto_15

    .line 179
    :cond_23
    const-string v0, "2.4 GHz"

    :cond_24
    :goto_15
    move-object/from16 v18, v0

    .line 184
    :goto_16
    sget-object v19, Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;->MANUAL_HOTSPOT:Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    .line 169
    new-instance v9, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    invoke-direct/range {v9 .. v19}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;)V

    return-object v9

    :cond_25
    move-object/from16 v20, v8

    .line 188
    invoke-direct {v1, v6, v7}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->remainingNanos(J)J

    move-result-wide v4

    cmp-long v0, v4, v18

    if-lez v0, :cond_26

    .line 195
    sget-wide v11, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->INTERFACE_POLL_NANOS:J

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->sleep(J)V

    move-wide/from16 v4, v18

    move-object/from16 v8, v20

    goto/16 :goto_1

    .line 190
    :cond_26
    new-instance v0, Ljava/io/IOException;

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Timed out after "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms waiting for the manual hotspot: local hotspot interface was not found"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ManualHotspotManager is closed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "timeoutMillis must be positive"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ManualHotspotManager.start must not run on the main thread"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_18

    :goto_17
    throw v0

    :goto_18
    goto :goto_17
.end method
