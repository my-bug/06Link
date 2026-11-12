.class public final Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;
.super Ljava/lang/Object;
.source "WifiP2pGroupManager.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/network/WirelessHotspotManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Companion;,
        Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;,
        Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;,
        Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;,
        Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifiP2pGroupManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WifiP2pGroupManager.kt\ncom/shilapi/xcertplay/network/WifiP2pGroupManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,950:1\n1#2:951\n1069#3,2:952\n*S KotlinDebug\n*F\n+ 1 WifiP2pGroupManager.kt\ncom/shilapi/xcertplay/network/WifiP2pGroupManager\n*L\n508#1:952,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00dc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0018\u0000 \u0084\u00012\u00020\u0001:\n\u0080\u0001\u0081\u0001\u0082\u0001\u0083\u0001\u0084\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u00103\u001a\u0002042\u0006\u00105\u001a\u000206H\u0016J\u0008\u00107\u001a\u00020\u0007H\u0016J\u000f\u00108\u001a\u0004\u0018\u00010.H\u0016\u00a2\u0006\u0002\u00109J\u0008\u0010:\u001a\u00020\u0007H\u0016J\u0010\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020*H\u0002J\u0018\u0010>\u001a\u00020?2\u0006\u0010=\u001a\u00020*2\u0006\u0010@\u001a\u00020AH\u0002J\u0018\u0010B\u001a\u00020\u00072\u0006\u0010=\u001a\u00020*2\u0006\u0010C\u001a\u00020DH\u0002J(\u0010E\u001a\u00020\u00072\u0006\u0010=\u001a\u00020*2\u0006\u0010@\u001a\u00020A2\u0006\u0010F\u001a\u0002062\u0006\u00105\u001a\u000206H\u0002J2\u0010G\u001a\u0002042\u0006\u0010=\u001a\u00020*2\u0006\u0010#\u001a\u00020$2\u0008\u0010H\u001a\u0004\u0018\u00010I2\u0006\u0010F\u001a\u0002062\u0006\u00105\u001a\u000206H\u0002J\'\u0010J\u001a\u00020\t2\u0006\u0010#\u001a\u00020$2\u0008\u0010K\u001a\u0004\u0018\u00010.2\u0006\u0010L\u001a\u00020\u0006H\u0002\u00a2\u0006\u0002\u0010MJ \u0010N\u001a\u00020\u00072\u0006\u0010=\u001a\u00020*2\u0006\u0010#\u001a\u00020$2\u0006\u0010F\u001a\u000206H\u0002J\"\u0010O\u001a\u0004\u0018\u00010P2\u0006\u0010=\u001a\u00020*2\u0006\u0010Q\u001a\u00020\u00062\u0006\u0010R\u001a\u000206H\u0002J\u0012\u0010S\u001a\u0004\u0018\u00010\u00062\u0006\u0010Q\u001a\u00020\u0006H\u0002J\u0017\u0010T\u001a\u0004\u0018\u00010.2\u0006\u0010Q\u001a\u00020\u0006H\u0002\u00a2\u0006\u0002\u0010UJ,\u0010V\u001a\u0004\u0018\u00010W2\u0006\u0010=\u001a\u00020*2\u0006\u0010#\u001a\u00020$2\u0006\u0010X\u001a\u0002062\u0008\u0008\u0002\u0010Y\u001a\u00020\tH\u0002J\"\u0010Z\u001a\u0004\u0018\u00010[2\u0006\u0010=\u001a\u00020*2\u0006\u0010#\u001a\u00020$2\u0006\u0010X\u001a\u000206H\u0002J\u0018\u0010\\\u001a\u00020\t2\u0006\u0010]\u001a\u00020^2\u0006\u0010X\u001a\u000206H\u0002J\u0012\u0010_\u001a\u0004\u0018\u00010[2\u0006\u0010Q\u001a\u00020\u0006H\u0002J\"\u0010`\u001a\u0004\u0018\u00010[2\u0006\u0010=\u001a\u00020*2\u0006\u0010Q\u001a\u00020\u00062\u0006\u0010R\u001a\u000206H\u0002J\u0008\u0010a\u001a\u00020bH\u0002J\u0018\u0010c\u001a\u00020\u00072\u0006\u0010d\u001a\u00020b2\u0006\u0010e\u001a\u00020\tH\u0002J\u0018\u0010f\u001a\u00020\u00072\u0006\u0010=\u001a\u00020*2\u0006\u0010#\u001a\u00020$H\u0003J\u0012\u0010g\u001a\u0004\u0018\u00010\u00062\u0006\u0010Q\u001a\u00020\u0006H\u0002J\u0012\u0010h\u001a\u0004\u0018\u00010i2\u0006\u0010Q\u001a\u00020\u0006H\u0002J\u0010\u0010j\u001a\u00020k2\u0006\u0010l\u001a\u00020WH\u0002J\u0008\u0010m\u001a\u00020IH\u0002J\u0010\u0010n\u001a\u00020\u00062\u0006\u0010o\u001a\u00020.H\u0002J\u0010\u0010p\u001a\u00020\u00072\u0006\u0010=\u001a\u00020*H\u0002J\u0010\u0010q\u001a\u00020\u00072\u0006\u0010=\u001a\u00020*H\u0002J\u0010\u0010r\u001a\u00020\u00072\u0006\u0010=\u001a\u00020*H\u0002J\u001c\u0010s\u001a\u00020\u00072\u0006\u0010#\u001a\u00020$2\n\u0008\u0002\u0010t\u001a\u0004\u0018\u00010\u0006H\u0002J$\u0010u\u001a\u00020\u00072\u0006\u0010#\u001a\u00020$2\u0006\u0010v\u001a\u00020\t2\n\u0008\u0002\u0010t\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010w\u001a\u00020\u00072\u0006\u0010F\u001a\u000206H\u0002J\u0010\u0010x\u001a\u00020\u00072\u0006\u0010y\u001a\u000206H\u0002J\u0010\u0010z\u001a\u0002062\u0006\u00105\u001a\u000206H\u0002J\u0010\u0010{\u001a\u0002062\u0006\u0010F\u001a\u000206H\u0002J\u0010\u0010|\u001a\u00020\u00062\u0006\u0010}\u001a\u00020.H\u0002J\u0010\u0010~\u001a\u00020\t2\u0006\u0010\u007f\u001a\u00020.H\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \u000e*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\n \u000e*\u0004\u0018\u00010\u001d0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001e\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008\u001f\u0010 R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010/R\u000e\u00100\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0085\u0001"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotManager;",
        "context",
        "Landroid/content/Context;",
        "diagnostic",
        "Lkotlin/Function1;",
        "",
        "",
        "askBesideSoftAp",
        "",
        "forgetPersistentGroupOnClose",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;ZZ)V",
        "appContext",
        "kotlin.jvm.PlatformType",
        "p2pManager",
        "Landroid/net/wifi/p2p/WifiP2pManager;",
        "stateLock",
        "Ljava/lang/Object;",
        "random",
        "Ljava/security/SecureRandom;",
        "configurationMemory",
        "Lcom/shilapi/xcertplay/network/P2pConfigurationMemory;",
        "rememberedAttempt",
        "Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;",
        "pendingSuccess",
        "Lkotlin/Function0;",
        "carPlayConfirmed",
        "ownership",
        "Landroid/content/SharedPreferences;",
        "ssidPrefix",
        "getSsidPrefix",
        "()Ljava/lang/String;",
        "ssidPrefix$delegate",
        "Lkotlin/Lazy;",
        "channel",
        "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
        "callbackThread",
        "Landroid/os/HandlerThread;",
        "created",
        "closed",
        "startAttempt",
        "Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;",
        "observedCreatedName",
        "requestedName",
        "forcedChannel",
        "",
        "Ljava/lang/Integer;",
        "channelRestricted",
        "frameworkGroupName",
        "persistentNetId",
        "start",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;",
        "timeoutMillis",
        "",
        "onCarPlayConfirmed",
        "associatedClients",
        "()Ljava/lang/Integer;",
        "close",
        "createChannelListener",
        "Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;",
        "attempt",
        "createActionListener",
        "Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;",
        "request",
        "Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;",
        "failAttempt",
        "failure",
        "Ljava/io/IOException;",
        "awaitGroupCreated",
        "deadlineNanos",
        "awaitUsableGroup",
        "credentials",
        "Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;",
        "forceChannel",
        "oc",
        "why",
        "(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Integer;Ljava/lang/String;)Z",
        "awaitForcedGroup",
        "awaitLinkLocal",
        "Ljava/net/Inet6Address;",
        "interfaceName",
        "startupDeadlineNanos",
        "disableIpv6",
        "legacyGroupFrequency",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "requestGroupInfo",
        "Landroid/net/wifi/p2p/WifiP2pGroup;",
        "timeoutNanos",
        "requireResponse",
        "requestConnectionAddress",
        "Ljava/net/InetAddress;",
        "await",
        "latch",
        "Ljava/util/concurrent/CountDownLatch;",
        "interfaceAddress",
        "awaitInterfaceAddress",
        "readStation",
        "Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;",
        "checkPrerequisites",
        "station",
        "legacy",
        "logP2pState",
        "interfaceHardwareAddress",
        "networkInterface",
        "Ljava/net/NetworkInterface;",
        "groupSecurity",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;",
        "group",
        "randomCredentials",
        "randomToken",
        "length",
        "ensureStartActive",
        "ensureStartActiveLocked",
        "cleanupFailedStart",
        "removeGroupBlocking",
        "expectedName",
        "removeGroup",
        "waitForCallback",
        "pauseBeforeRetry",
        "waitNanos",
        "nanos",
        "deadlineAfter",
        "remainingNanos",
        "failureReason",
        "reason",
        "is5Ghz",
        "frequencyMHz",
        "Station",
        "StartAttempt",
        "CreateRequest",
        "Credentials",
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
.field private static final Companion:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Companion;

.field public static final FORCED_GROUP_START_MILLIS:J = 0xfa0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LINK_LOCAL_WAIT_MILLIS:J = 0x1388L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NANOS_PER_MILLISECOND:J = 0xf4240L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REMOVE_GROUP_TIMEOUT_MILLIS:J = 0x7d0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final REQUEST_POLL_NANOS:J

.field public static final RETRY_PAUSE_NANOS:J = 0xbebc200L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "xcertplay-usb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOKEN_ALPHABET:Ljava/lang/String; = "ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz23456789"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final askBesideSoftAp:Z

.field private callbackThread:Landroid/os/HandlerThread;

.field private carPlayConfirmed:Z

.field private channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private volatile channelRestricted:Z

.field private closed:Z

.field private final configurationMemory:Lcom/shilapi/xcertplay/network/P2pConfigurationMemory;

.field private created:Z

.field private final diagnostic:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private volatile forcedChannel:Ljava/lang/Integer;

.field private final forgetPersistentGroupOnClose:Z

.field private volatile frameworkGroupName:Ljava/lang/String;

.field private volatile observedCreatedName:Ljava/lang/String;

.field private final ownership:Landroid/content/SharedPreferences;

.field private final p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private pendingSuccess:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile persistentNetId:I

.field private final random:Ljava/security/SecureRandom;

.field private rememberedAttempt:Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;

.field private volatile requestedName:Ljava/lang/String;

.field private final ssidPrefix$delegate:Lkotlin/Lazy;

.field private startAttempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

.field private final stateLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$1Sw9lrM-RWne8Z-ZvqIuExqstmg(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1TDka6DReltw4EhF8LdWsOmnZoI(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->start$lambda$21(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2b6Jiz6ejj5RdCRYFyrGsPZHPeA(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/P2pCreationRequest;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->start$lambda$24$lambda$23(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/P2pCreationRequest;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Mdl2njrPHy1uTf3iKpp-u__NLU0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->logP2pState$lambda$63(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SGOhyNz-ZNzoprYTkqMPRirccx4(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;JZLcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;Landroid/net/wifi/p2p/WifiP2pManager$Channel;JLcom/shilapi/xcertplay/network/P2pCreationRequest;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->start$lambda$20(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;JZLcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;Landroid/net/wifi/p2p/WifiP2pManager$Channel;JLcom/shilapi/xcertplay/network/P2pCreationRequest;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SOcHGTKmZF0Q8XA6ALDYg0FsJIo(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->associatedClients$lambda$29$lambda$28(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cmL96x8Xs29CF3M4FGiPuIctpOU(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->requestConnectionAddress$lambda$54(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jPAY2WYxueo2ECnifucljrX0Jc4(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->interfaceHardwareAddress$lambda$65(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rUpdTB00fCgJYh7KLTH5LWizbW0(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ssidPrefix_delegate$lambda$4(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tyCUhzQDwP9gcKdEGRXYsUzeXis(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;ZLandroid/net/wifi/p2p/WifiP2pManager$Channel;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->start$lambda$17(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;ZLandroid/net/wifi/p2p/WifiP2pManager$Channel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vs5Bs8h8MjTo0Ld-DwVpoI-mQRM(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->removeGroup$lambda$71(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zGnhHjqcMHqecICkx3yklamBenM(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->requestGroupInfo$lambda$53(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->Companion:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Companion;

    .line 945
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->REQUEST_POLL_NANOS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diagnostic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    .line 52
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->askBesideSoftAp:Z

    .line 58
    iput-boolean p4, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->forgetPersistentGroupOnClose:Z

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    .line 61
    const-string p2, "appContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p3, Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {p1, p3}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 63
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    .line 64
    new-instance p3, Ljava/security/SecureRandom;

    invoke-direct {p3}, Ljava/security/SecureRandom;-><init>()V

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->random:Ljava/security/SecureRandom;

    .line 65
    new-instance p3, Lcom/shilapi/xcertplay/network/P2pConfigurationMemory;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p1}, Lcom/shilapi/xcertplay/network/P2pConfigurationMemory;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->configurationMemory:Lcom/shilapi/xcertplay/network/P2pConfigurationMemory;

    .line 69
    const-string p2, "carplay_wifi_p2p"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ownership:Landroid/content/SharedPreferences;

    .line 70
    new-instance p1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda11;-><init>(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ssidPrefix$delegate:Lkotlin/Lazy;

    const/4 p1, -0x1

    .line 95
    iput p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->persistentNetId:I

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "WifiP2pManager is unavailable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 46
    new-instance p2, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda20;

    invoke-direct {p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda20;-><init>()V

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 44
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;ZZ)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$failAttempt(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Ljava/io/IOException;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->failAttempt(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Ljava/io/IOException;)V

    return-void
.end method

.method public static final synthetic access$failureReason(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;I)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->failureReason(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClosed$p(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->closed:Z

    return p0
.end method

.method public static final synthetic access$getDiagnostic$p(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getREQUEST_POLL_NANOS$cp()J
    .locals 2

    .line 44
    sget-wide v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->REQUEST_POLL_NANOS:J

    return-wide v0
.end method

.method public static final synthetic access$getStartAttempt$p(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->startAttempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    return-object p0
.end method

.method public static final synthetic access$getStateLock$p(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$setCreated$p(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->created:Z

    return-void
.end method

.method private static final associatedClients$lambda$29$lambda$28(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    if-eqz p3, :cond_2

    .line 284
    invoke-virtual {p3}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->observedCreatedName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->observedCreatedName:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 286
    :cond_0
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 287
    :cond_2
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final await(Ljava/util/concurrent/CountDownLatch;J)Z
    .locals 2

    const-wide/16 v0, 0x1

    .line 655
    :try_start_0
    invoke-static {p2, p3, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p2

    .line 656
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 658
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 659
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Interrupted while waiting for Wi-Fi P2P"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final awaitForcedGroup(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;J)V
    .locals 9

    const-wide/16 v0, 0xfa0

    .line 575
    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->deadlineAfter(J)J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 577
    :goto_0
    sget-wide v4, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->REQUEST_POLL_NANOS:J

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->requestGroupInfo$default(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;JZILjava/lang/Object;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 578
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->remainingNanos(J)J

    move-result-wide p1

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-nez v0, :cond_2

    .line 579
    iget-object p1, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    iget-object p2, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->forcedChannel:Ljava/lang/Integer;

    if-nez p2, :cond_1

    const-string p2, "none"

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Wi-Fi P2P group did not start on forced channel oc="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    new-instance p1, Lcom/shilapi/xcertplay/network/P2pCreateRejected;

    const/4 p2, 0x0

    const-string p3, "Wi-Fi P2P group did not start on the forced channel"

    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/network/P2pCreateRejected;-><init>(ILjava/lang/String;)V

    throw p1

    .line 582
    :cond_2
    iget-object p1, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xc8

    invoke-virtual {p2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->waitNanos(J)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 583
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActive(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    move-object p1, v2

    move-object p2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 582
    monitor-exit p1

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method private final awaitGroupCreated(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;JJ)V
    .locals 6

    .line 397
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActiveLocked(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    .line 400
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getFailure()Ljava/io/IOException;

    move-result-object v1

    if-nez v1, :cond_3

    .line 401
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;->getFailure()Lcom/shilapi/xcertplay/network/P2pCreateRejected;

    move-result-object v1

    if-nez v1, :cond_2

    .line 404
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;->getCompleted()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 406
    :cond_0
    :try_start_1
    invoke-direct {p0, p3, p4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->remainingNanos(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 412
    invoke-direct {p0, v1, v2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->waitNanos(J)V

    goto :goto_0

    .line 408
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Timed out after "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms waiting for Wi-Fi P2P group creation"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 408
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 401
    :cond_2
    throw v1

    .line 400
    :cond_3
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 412
    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final awaitInterfaceAddress(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Ljava/lang/String;J)Ljava/net/InetAddress;
    .locals 6

    const-wide/16 v0, 0x7d0

    .line 688
    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->deadlineAfter(J)J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 690
    :goto_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActive(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    .line 691
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->interfaceAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 692
    instance-of v1, v0, Ljava/net/Inet6Address;

    if-nez v1, :cond_1

    invoke-direct {p0, p3, p4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->remainingNanos(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x64

    .line 693
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private final awaitLinkLocal(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Ljava/lang/String;J)Ljava/net/Inet6Address;
    .locals 6

    const-wide/16 v0, 0x1388

    .line 589
    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->deadlineAfter(J)J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 591
    :goto_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActive(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    .line 592
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->interfaceAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/Inet6Address;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/Inet6Address;

    goto :goto_1

    :cond_0
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_1

    return-object v0

    .line 593
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->remainingNanos(J)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_2

    return-object v2

    :cond_2
    const-wide/16 v0, 0x64

    .line 594
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method

.method private final awaitUsableGroup(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;JJ)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;
    .locals 29

    move-object/from16 v1, p0

    move-wide/from16 v9, p4

    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 427
    :goto_0
    const-string v2, "group information was not available"

    move-object v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 429
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActive(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    .line 430
    invoke-direct {v1, v9, v10}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->remainingNanos(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2e

    .line 441
    sget-wide v4, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->REQUEST_POLL_NANOS:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 438
    invoke-static/range {v1 .. v8}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->requestGroupInfo$default(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;JZILjava/lang/Object;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    if-nez v4, :cond_1

    .line 443
    invoke-direct {v1, v9, v10}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->pauseBeforeRetry(J)V

    goto :goto_1

    .line 444
    :cond_1
    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 448
    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz p3, :cond_4

    if-eqz v3, :cond_4

    .line 449
    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    .line 450
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wi-Fi Direct returned an unexpected group"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_4
    :goto_3
    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_8

    :cond_6
    if-eqz p3, :cond_7

    .line 453
    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;->getPassphrase()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    .line 454
    :cond_8
    :goto_5
    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    :goto_6
    const/4 v7, 0x2

    if-eqz v0, :cond_b

    if-nez v5, :cond_b

    if-eqz v3, :cond_b

    if-eqz v6, :cond_b

    add-int/lit8 v15, v15, 0x1

    if-ge v15, v7, :cond_a

    goto :goto_7

    .line 459
    :cond_a
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wi-Fi P2P group password missing iface="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isGroupOwner=true (supplicant reported a PSK only)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wi-Fi Direct did not report the group password (only a PSK), so the iPhone cannot be given the network"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_b
    :goto_7
    const-string v8, " source="

    const-string v14, "none"

    if-nez v0, :cond_c

    invoke-static {v4}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/p2p/WifiP2pGroup;)I

    move-result v17

    move/from16 v21, v0

    move-object/from16 v23, v14

    move/from16 v24, v15

    move/from16 v7, v17

    goto/16 :goto_a

    :cond_c
    if-nez v16, :cond_12

    if-eqz v6, :cond_11

    .line 466
    sget-object v11, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pLegacyChannel;

    invoke-direct {v1, v6}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->legacyGroupFrequency(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    iget-object v12, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->forcedChannel:Ljava/lang/Integer;

    invoke-virtual {v11, v7, v12}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->resolve(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;

    move-result-object v7

    .line 467
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;->getMhz()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_10

    .line 469
    iget-object v11, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->forcedChannel:Ljava/lang/Integer;

    if-nez v12, :cond_d

    move-object v12, v14

    .line 470
    :cond_d
    iget-object v13, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->forcedChannel:Ljava/lang/Integer;

    move/from16 v21, v0

    if-eqz v13, :cond_e

    sget-object v0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pLegacyChannel;

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->frequencyOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    move-object v0, v14

    :cond_f
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;->getMhz()Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;->getSource()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v23, v14

    new-instance v14, Ljava/lang/StringBuilder;

    move/from16 v24, v15

    const-string v15, "Wi-Fi P2P legacy channel forced="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " forcedMHz="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " usingMHz="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v22

    goto :goto_8

    :cond_10
    move/from16 v21, v0

    move-object/from16 v22, v7

    move-object/from16 v23, v14

    move/from16 v24, v15

    :goto_8
    move-object/from16 v0, v16

    move-object/from16 v16, v22

    goto :goto_9

    :cond_11
    move/from16 v21, v0

    move-object/from16 v23, v14

    move/from16 v24, v15

    move-object/from16 v0, v16

    const/16 v16, 0x0

    goto :goto_9

    :cond_12
    move/from16 v21, v0

    move-object/from16 v23, v14

    move/from16 v24, v15

    move-object/from16 v0, v16

    :goto_9
    if-eqz v16, :cond_13

    .line 474
    invoke-virtual/range {v16 .. v16}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;->getMhz()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v16, v0

    goto :goto_a

    :cond_13
    move-object/from16 v16, v0

    const/4 v7, 0x0

    .line 476
    :goto_a
    invoke-static {v7}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiFrequencyMhzToChannel(I)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v3, :cond_2c

    if-eqz v5, :cond_2c

    if-eqz v6, :cond_2c

    if-lez v7, :cond_2c

    if-nez v11, :cond_14

    goto/16 :goto_1e

    .line 489
    :cond_14
    invoke-direct {v1, v7}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->is5Ghz(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "5 GHz"

    :goto_b
    move-object/from16 v26, v0

    goto :goto_c

    :cond_15
    const/16 v0, 0x96c

    if-gt v0, v7, :cond_16

    const/16 v0, 0x9b5

    if-ge v7, v0, :cond_16

    .line 490
    const-string v0, "2.4 GHz"

    goto :goto_b

    :cond_16
    if-eqz v21, :cond_2b

    if-gtz v7, :cond_2b

    .line 491
    const-string v0, "Auto"

    goto :goto_b

    .line 497
    :goto_c
    const-string v0, " frameworkChars="

    const/16 v12, 0x5c

    if-nez v21, :cond_17

    move-object v13, v3

    goto :goto_e

    :cond_17
    sget-object v13, Lcom/shilapi/xcertplay/network/P2pSsidText;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pSsidText;

    invoke-virtual {v13, v3}, Lcom/shilapi/xcertplay/network/P2pSsidText;->forIphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_19

    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    .line 498
    iget-object v2, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 499
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v12, v8, v7, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v5

    sget-object v7, Lcom/shilapi/xcertplay/network/P2pSsidText;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pSsidText;

    invoke-virtual {v7, v3}, Lcom/shilapi/xcertplay/network/P2pSsidText;->decode(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_18

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_d

    :cond_18
    const-string v3, "malformed"

    :goto_d
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Wi-Fi P2P network name unusable iface="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " escaped="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " decodedBytes="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wi-Fi Direct network name is not valid UTF-8 within 32 bytes; give the head unit\'s Wi-Fi Direct device name plain letters and digits"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_19
    :goto_e
    iput-object v3, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->frameworkGroupName:Ljava/lang/String;

    if-eqz v21, :cond_1a

    .line 504
    sget-object v14, Lcom/shilapi/xcertplay/network/P2pPersistentGroup;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pPersistentGroup;

    invoke-virtual {v14, v4}, Lcom/shilapi/xcertplay/network/P2pPersistentGroup;->netIdOf(Landroid/net/wifi/p2p/WifiP2pGroup;)I

    move-result v14

    iput v14, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->persistentNetId:I

    .line 506
    :cond_1a
    const-string/jumbo v14, "unknown"

    if-eqz v21, :cond_20

    iget-object v15, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    move-object/from16 v22, v3

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v3

    move-object/from16 v25, v11

    .line 507
    move-object/from16 v11, v22

    check-cast v11, Ljava/lang/CharSequence;

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v27, v14

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v14, 0x0

    invoke-static {v11, v12, v14, v5, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v11

    .line 508
    move-object v12, v13

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    .line 952
    :goto_f
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-ge v4, v14, :cond_1c

    invoke-interface {v12, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    move/from16 v28, v4

    const/16 v4, 0x20

    if-gt v4, v14, :cond_1b

    const/16 v4, 0x7f

    if-ge v14, v4, :cond_1b

    add-int/lit8 v4, v28, 0x1

    goto :goto_f

    :cond_1b
    const/4 v4, 0x0

    goto :goto_10

    :cond_1c
    const/4 v4, 0x1

    .line 508
    :goto_10
    sget-object v12, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    const-string v14, "getBytes(...)"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v12, v12

    .line 509
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v28, v13

    iget-object v13, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->forcedChannel:Ljava/lang/Integer;

    if-nez v13, :cond_1d

    move-object/from16 v13, v23

    :cond_1d
    if-eqz v16, :cond_1f

    .line 510
    invoke-virtual/range {v16 .. v16}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;->getSource()Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_1e

    goto :goto_11

    :cond_1e
    move-object/from16 v1, v23

    goto :goto_12

    :cond_1f
    :goto_11
    move-object/from16 v1, v27

    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "Wi-Fi P2P group iface="

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " isGroupOwner="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ssidEscaped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ssidAscii="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ssidBytes="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " passphraseLength="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " forcedChannel="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " frequencyMHz="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-interface {v15, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_20
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v25, v11

    move-object/from16 v28, v13

    move-object/from16 v27, v14

    :goto_13
    if-eqz v21, :cond_24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p4

    .line 515
    invoke-direct {v1, v2, v6, v9, v10}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->awaitLinkLocal(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Ljava/lang/String;J)Ljava/net/Inet6Address;

    move-result-object v0

    if-nez v0, :cond_23

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    .line 516
    invoke-direct {v1, v6}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->disableIpv6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    iget-object v2, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_21

    move-object/from16 v3, v27

    goto :goto_14

    :cond_21
    move-object v3, v0

    :goto_14
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Wi-Fi P2P no IPv6 link-local iface="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " disable_ipv6="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    new-instance v2, Ljava/io/IOException;

    if-nez v0, :cond_22

    move-object/from16 v14, v27

    goto :goto_15

    :cond_22
    move-object v14, v0

    .line 519
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Wi-Fi Direct interface "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no IPv6 link-local address (disable_ipv6="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "); the iPhone only connects over IPv6"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_23
    check-cast v0, Ljava/net/InetAddress;

    goto :goto_16

    :cond_24
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p4

    .line 521
    invoke-direct {v1, v2, v6, v9, v10}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->awaitInterfaceAddress(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Ljava/lang/String;J)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_25

    .line 525
    invoke-direct {v1, v9, v10}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->remainingNanos(J)J

    move-result-wide v3

    sget-wide v11, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->REQUEST_POLL_NANOS:J

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-object/from16 v5, p2

    .line 522
    invoke-direct {v1, v2, v5, v3, v4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->requestConnectionAddress(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;J)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_17

    :cond_25
    :goto_16
    move-object/from16 v5, p2

    :goto_17
    move-object v3, v0

    if-nez v3, :cond_26

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "interface "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no usable IPv6 or IPv4 address"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 529
    invoke-direct {v1, v9, v10}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->pauseBeforeRetry(J)V

    goto/16 :goto_1f

    .line 534
    :cond_26
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    sget-object v0, Lcom/shilapi/xcertplay/network/CarWifiPassword;->INSTANCE:Lcom/shilapi/xcertplay/network/CarWifiPassword;

    iget-object v2, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    const-string v4, "appContext"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->persistentNetId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, v19

    move-object/from16 v13, v28

    :try_start_1
    invoke-virtual {v0, v2, v13, v5, v4}, Lcom/shilapi/xcertplay/network/CarWifiPassword;->remember(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_19

    :catchall_0
    move-exception v0

    goto :goto_18

    :catchall_1
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v13, v28

    :goto_18
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    move-object/from16 v2, v18

    const/4 v4, 0x0

    .line 538
    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->groupSecurity(Landroid/net/wifi/p2p/WifiP2pGroup;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v20

    .line 539
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 540
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_27

    const/4 v11, 0x1

    goto :goto_1a

    :cond_27
    const/4 v11, 0x0

    :goto_1a
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v11, :cond_28

    move-object/from16 v22, v9

    goto :goto_1b

    :cond_28
    move-object/from16 v22, v4

    .line 541
    :goto_1b
    invoke-direct {v1, v6}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->interfaceHardwareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 542
    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_29

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_1c

    :cond_29
    move-object/from16 v23, v4

    goto :goto_1d

    :cond_2a
    :goto_1c
    move-object/from16 v23, v0

    .line 546
    :goto_1d
    sget-object v27, Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;->WIFI_P2P:Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    .line 535
    new-instance v17, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    move-object/from16 v25, v3

    move-object/from16 v19, v5

    move-object/from16 v24, v6

    move-object/from16 v18, v13

    invoke-direct/range {v17 .. v27}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;)V

    return-object v17

    .line 492
    :cond_2b
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wi-Fi P2P returned an unsupported band at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_1e
    move-object/from16 v2, p1

    move-object/from16 v5, p2

    const/4 v4, 0x0

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "incomplete group details frequencyMHz="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 485
    invoke-direct {v1, v9, v10}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->pauseBeforeRetry(J)V

    :goto_1f
    move/from16 v0, v21

    move/from16 v15, v24

    goto/16 :goto_1

    .line 445
    :cond_2d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wi-Fi P2P device became a group client instead of owner"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_2e
    new-instance v0, Ljava/io/IOException;

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Timed out after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v3, p6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms waiting for a usable Wi-Fi P2P group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :goto_20
    throw v0

    :goto_21
    goto :goto_20
.end method

.method private final checkPrerequisites(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;Z)V
    .locals 18

    move-object/from16 v1, p0

    .line 712
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    const-string v2, "appContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-static {v0, v3}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    .line 713
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    :cond_1
    move-object v5, v0

    check-cast v5, Ljava/lang/Boolean;

    .line 714
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v4

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v4

    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    .line 715
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    .line 716
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v6, Landroid/location/LocationManager;

    invoke-static {v0, v6}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/location/LocationManager;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v4

    .line 715
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 717
    :goto_5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v0, v4

    :cond_5
    move-object v6, v0

    check-cast v6, Ljava/lang/Boolean;

    .line 721
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    const/16 v8, 0x1d

    const/16 v9, 0x21

    if-lt v0, v9, :cond_6

    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    move-object v10, v0

    goto :goto_6

    .line 722
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_7

    move-object v10, v7

    goto :goto_6

    :cond_7
    move-object v10, v4

    :goto_6
    if-eqz v10, :cond_9

    .line 725
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v10}, Lcom/shilapi/xcertplay/compat/Api19Kt;->checkSelfPermissionCompat(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    const/4 v13, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v13, 0x1

    .line 726
    :goto_8
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lcom/shilapi/xcertplay/compat/Api19Kt;->checkSelfPermissionCompat(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v7, 0x1

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    .line 727
    :goto_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v8, v0, :cond_d

    if-ge v0, v9, :cond_d

    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    .line 728
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v0, v8}, Landroidx/core/graphics/Insets$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/AppOpsManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 729
    const-string v8, "android:fine_location"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    iget-object v15, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 728
    invoke-static {v0, v8, v14, v15}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_a

    :cond_b
    move-object v0, v4

    .line 727
    :goto_a
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v0

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 730
    :goto_b
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    move-object v0, v4

    :cond_c
    check-cast v0, Ljava/lang/Integer;

    goto :goto_c

    :cond_d
    move-object v0, v4

    :goto_c
    if-eqz p2, :cond_e

    .line 731
    sget-object v8, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    iget-object v14, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->apState(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_d

    :cond_e
    move-object v8, v4

    .line 732
    :goto_d
    iget-object v14, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    const-string/jumbo v15, "unknown"

    if-nez v8, :cond_f

    move-object v11, v15

    goto :goto_e

    :cond_f
    move-object v11, v8

    :goto_e
    const/16 v16, 0x0

    if-eqz v10, :cond_10

    const/16 v12, 0x2e

    const/4 v9, 0x2

    invoke-static {v10, v12, v4, v9, v4}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_11

    :cond_10
    const-string v9, "none"

    :cond_11
    if-nez v0, :cond_12

    move-object v0, v15

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->getAlignmentFrequency()Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_13

    move-object v10, v15

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->getState()Landroid/net/wifi/SupplicantState;

    move-result-object v12

    if-nez v12, :cond_14

    move-object v12, v15

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->getReportedFrequency()Ljava/lang/Integer;

    move-result-object v17

    if-nez v17, :cond_15

    move-object v4, v15

    goto :goto_f

    :cond_15
    move-object/from16 v4, v17

    :goto_f
    if-nez v5, :cond_16

    move-object v5, v15

    :cond_16
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v8

    const-string v8, "Wi-Fi P2P preflight wifiEnabled="

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " softApState="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " locationEnabled="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " permissionRequired="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " permissionGranted="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " locationGranted="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " locationAccessMode="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " stationMHz="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " stationState="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " reportedStationMHz="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " fiveGhzSupported="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v13, :cond_18

    .line 733
    new-instance v0, Ljava/io/IOException;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_17

    .line 734
    const-string v2, "Allow Nearby devices for 06Link in the head unit\'s app permissions"

    goto :goto_10

    .line 735
    :cond_17
    const-string v2, "Allow precise Location for 06Link in the head unit\'s app permissions"

    .line 733
    :goto_10
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    if-eqz p2, :cond_1c

    .line 738
    sget-object v0, Lcom/shilapi/xcertplay/network/P2pPreconditions;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pPreconditions;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v17, :cond_1b

    .line 739
    move-object/from16 v8, v17

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/16 v5, 0xc

    if-eq v2, v5, :cond_1a

    const/16 v5, 0xd

    if-ne v2, v5, :cond_19

    goto :goto_11

    :cond_19
    const/4 v11, 0x0

    goto :goto_12

    :cond_1a
    :goto_11
    const/4 v11, 0x1

    :goto_12
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_13

    :cond_1b
    sget-object v5, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    iget-object v6, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->isOnOrStarting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    .line 738
    :goto_13
    invoke-virtual {v0, v4, v2, v3}, Lcom/shilapi/xcertplay/network/P2pPreconditions;->blocker(ILjava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :cond_1c
    const/4 v4, 0x0

    :goto_14
    if-eqz v4, :cond_1d

    .line 740
    iget-boolean v0, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->askBesideSoftAp:Z

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "softap_on"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 741
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    const-string v2, "Wi-Fi P2P preflight: the system hotspot is on; asking createGroup anyway (some firmware runs Wi-Fi Direct beside it)"

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_1d
    if-nez v4, :cond_1f

    .line 744
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    :goto_15
    return-void

    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Turn on Wi-Fi in the head unit\'s settings, then reconnect"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_1f
    sget-object v0, Lcom/shilapi/xcertplay/network/P2pPreconditions;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pPreconditions;

    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/network/P2pPreconditions;->failure(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private final cleanupFailedStart(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V
    .locals 5

    .line 814
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->startAttempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    iput-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->startAttempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    :cond_0
    const/4 v1, 0x1

    .line 816
    invoke-virtual {p1, v1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->setStopped(Z)V

    .line 817
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 818
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    .line 819
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getThread()Landroid/os/HandlerThread;

    move-result-object v3

    .line 820
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getCreateSucceeded()Z

    move-result p1

    const/4 v4, 0x0

    .line 821
    iput-boolean v4, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->created:Z

    .line 822
    iget-object v4, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-ne v4, v1, :cond_1

    iput-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 823
    :cond_1
    iget-object v4, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->callbackThread:Landroid/os/HandlerThread;

    if-ne v4, v3, :cond_2

    iput-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->callbackThread:Landroid/os/HandlerThread;

    .line 824
    :cond_2
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    monitor-exit v0

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    const/4 p1, 0x2

    .line 826
    invoke-static {p0, v1, v2, p1, v2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->removeGroupBlocking$default(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;ILjava/lang/Object;)V

    .line 828
    :cond_3
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->channelRestricted:Z

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    const-string p1, "failed_start"

    invoke-direct {p0, v1, v2, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->forceChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Integer;Ljava/lang/String;)Z

    :cond_4
    if-eqz v1, :cond_5

    .line 829
    invoke-static {v1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->closeCompat(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    :cond_5
    if-eqz v3, :cond_6

    .line 830
    invoke-static {v3}, Lcom/shilapi/xcertplay/compat/Api19Kt;->quitSafelyCompat(Landroid/os/HandlerThread;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 814
    monitor-exit v0

    throw p1
.end method

.method private final createActionListener(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .locals 1

    .line 352
    new-instance v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;-><init>(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;)V

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    return-object v0
.end method

.method private final createChannelListener(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .locals 1

    .line 343
    new-instance v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createChannelListener$1;

    invoke-direct {v0, p0, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createChannelListener$1;-><init>(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    return-object v0
.end method

.method private final deadlineAfter(J)J
    .locals 7

    .line 901
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

.method private final disableIpv6(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "/proc/sys/net/ipv6/conf/"

    .line 599
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "[A-Za-z0-9_.-]{1,32}"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 600
    :cond_0
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/disable_ipv6"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v1, v2, p1, v2}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    :goto_1
    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method private final ensureStartActive(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActiveLocked(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    .line 800
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final ensureStartActiveLocked(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V
    .locals 1

    .line 804
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->closed:Z

    if-nez v0, :cond_3

    .line 805
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->startAttempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    if-ne v0, p1, :cond_2

    .line 806
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getStopped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 807
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getFailure()Ljava/io/IOException;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    throw p1

    .line 806
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Wi-Fi P2P group stopped before startup completed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 805
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Wi-Fi P2P startup was cancelled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 804
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "WifiP2pGroupManager closed while starting"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final failAttempt(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Ljava/io/IOException;)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->startAttempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    if-ne v1, p1, :cond_1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getStopped()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->closed:Z

    if-nez v1, :cond_1

    .line 385
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getFailure()Ljava/io/IOException;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->setFailure(Ljava/io/IOException;)V

    .line 386
    :cond_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 388
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final failureReason(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reason "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 913
    :cond_0
    const-string p1, "permission denied"

    return-object p1

    .line 911
    :cond_1
    const-string p1, "Wi-Fi P2P is busy"

    return-object p1

    .line 910
    :cond_2
    const-string p1, "Wi-Fi P2P is unsupported"

    return-object p1

    .line 912
    :cond_3
    const-string p1, "generic error"

    return-object p1
.end method

.method private final forceChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Integer;Ljava/lang/String;)Z
    .locals 9

    .line 556
    sget-object v0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pLegacyChannel;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->set$default(Lcom/shilapi/xcertplay/network/P2pLegacyChannel;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;IJILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 557
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    if-nez p2, :cond_1

    const-string v2, "reset"

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "force oc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wi-Fi P2P channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " result="

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    .line 560
    sget-object v1, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;->UNAVAILABLE:Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;

    if-eq v0, v1, :cond_2

    iput-boolean p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->channelRestricted:Z

    .line 561
    :cond_2
    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    sget-object v1, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;->OK:Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move-object p2, p3

    :goto_2
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->forcedChannel:Ljava/lang/Integer;

    goto :goto_3

    .line 563
    :cond_4
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->forcedChannel:Ljava/lang/Integer;

    .line 564
    sget-object p2, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;->OK:Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;

    if-ne v0, p2, :cond_5

    iput-boolean v8, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->channelRestricted:Z

    .line 566
    :cond_5
    :goto_3
    sget-object p2, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;->OK:Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;

    if-ne v0, p2, :cond_6

    return p1

    :cond_6
    return v8
.end method

.method private final getSsidPrefix()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ssidPrefix$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final groupSecurity(Landroid/net/wifi/p2p/WifiP2pGroup;)Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;
    .locals 3

    .line 773
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-ge v0, v1, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA_WPA2:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    .line 774
    :cond_0
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/wifi/p2p/WifiP2pGroup;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 778
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA3_ONLY:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    .line 779
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 780
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/wifi/p2p/WifiP2pGroup;)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported Wi-Fi P2P security type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 779
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA3_TRANSITION:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1

    .line 775
    :cond_3
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->WPA_WPA2:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    return-object p1
.end method

.method private final interfaceAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 6

    .line 663
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->networkInterface(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 665
    :cond_0
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 666
    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Ljava/net/Inet6Address;

    invoke-virtual {v4}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 667
    invoke-virtual {v4}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v4

    invoke-static {p1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->getIndexCompat(Ljava/net/NetworkInterface;)I

    move-result v5

    if-ne v4, v5, :cond_2

    return-object v3

    .line 669
    :cond_2
    :try_start_0
    check-cast v3, Ljava/net/Inet6Address;

    invoke-virtual {v3}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v3

    invoke-static {v0, v3, p1}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    nop

    goto :goto_0

    .line 674
    :cond_3
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/net/Inet4Address;

    invoke-virtual {v4}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private final interfaceHardwareAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 761
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->networkInterface(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 762
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 763
    array-length v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    move-object v2, p1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    .line 764
    const-string p1, ":"

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v8, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda21;

    invoke-direct {v8}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda21;-><init>()V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private static final interfaceHardwareAddress$lambda$65(B)Ljava/lang/CharSequence;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    .line 764
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

.method private final is5Ghz(I)Z
    .locals 2

    const/16 v0, 0x141e

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    const/16 v0, 0x1708

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private final legacyGroupFrequency(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    .line 604
    sget-object v0, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;->INSTANCE:Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio;->read(Ljava/lang/String;Ljava/lang/String;Z)Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;

    move-result-object v0

    .line 605
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "unknown"

    .line 606
    :cond_0
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;->getError()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "none"

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Wi-Fi P2P legacy frequency iface="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " frequency="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " error="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 605
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/LegacyHotspotRadio$Reading;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private final logP2pState(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 4

    .line 752
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 753
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 754
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance v3, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda16;

    invoke-direct {v3, v0, v1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda16;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v2, p2, v3}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$P2pStateListener;)V

    .line 755
    sget-wide v2, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->REQUEST_POLL_NANOS:J

    invoke-direct {p0, v1, v2, v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->await(Ljava/util/concurrent/CountDownLatch;J)Z

    .line 756
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActive(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    .line 757
    iget-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_0

    const-string/jumbo p2, "unknown"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wi-Fi P2P frameworkState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final logP2pState$lambda$63(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    .line 754
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final networkInterface(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .locals 0

    .line 767
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final pauseBeforeRetry(J)V
    .locals 3

    const-wide/32 v0, 0xbebc200

    .line 884
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->remainingNanos(J)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/32 v1, 0xf4240

    :try_start_0
    invoke-static {p1, p2, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->waitNanos(J)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final randomCredentials()Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;
    .locals 4

    .line 785
    new-instance v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;

    .line 786
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->getSsidPrefix()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->randomToken(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    .line 787
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->randomToken(I)Ljava/lang/String;

    move-result-object v2

    .line 785
    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final randomToken(I)Ljava/lang/String;
    .locals 4

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 793
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->random:Ljava/security/SecureRandom;

    const/16 v3, 0x39

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    const-string v3, "ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz23456789"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 791
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final readStation()Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;
    .locals 5

    const/4 v0, 0x0

    .line 705
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    .line 706
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    const-string v2, "appContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 708
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/wifi/WifiInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    new-instance v3, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;

    invoke-direct {v3, v2, v1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;-><init>(Landroid/net/wifi/SupplicantState;Ljava/lang/Integer;)V

    .line 705
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 709
    :goto_3
    new-instance v2, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;

    invoke-direct {v2, v0, v0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;-><init>(Landroid/net/wifi/SupplicantState;Ljava/lang/Integer;)V

    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, v2

    :cond_3
    check-cast v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;

    return-object v1
.end method

.method private final remainingNanos(J)J
    .locals 2

    .line 907
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLjava/lang/String;)V
    .locals 3

    .line 839
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 841
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance v2, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda19;

    invoke-direct {v2, v0, p3, p0, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda19;-><init>(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-virtual {v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 867
    const-string p3, "Wi-Fi P2P removeGroup could not be issued"

    check-cast p1, Ljava/lang/Throwable;

    const-string/jumbo v1, "xcertplay-usb"

    invoke-static {v1, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    if-nez p2, :cond_0

    goto :goto_1

    .line 872
    :cond_0
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x7d0

    invoke-virtual {v0, p2, p3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 874
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    return-void
.end method

.method static synthetic removeGroup$default(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 838
    iget-object p3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->observedCreatedName:Ljava/lang/String;

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->requestedName:Ljava/lang/String;

    .line 837
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLjava/lang/String;)V

    return-void
.end method

.method private static final removeGroup$lambda$71(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    if-nez p4, :cond_0

    .line 843
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 848
    :cond_0
    invoke-virtual {p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 849
    :cond_1
    invoke-virtual {p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 855
    iget-object p1, p2, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance p4, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$removeGroup$1$1;

    invoke-direct {p4, p0, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$removeGroup$1$1;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)V

    check-cast p4, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-virtual {p1, p3, p4}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void

    .line 851
    :cond_2
    :goto_0
    iget-object p1, p2, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    const-string p2, "Wi-Fi P2P cleanup skipped=another_app_owns_group"

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final removeGroupBlocking(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 834
    invoke-direct {p0, p1, v0, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic removeGroupBlocking$default(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 833
    iget-object p2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->observedCreatedName:Ljava/lang/String;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->requestedName:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->removeGroupBlocking(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    return-void
.end method

.method private final requestConnectionAddress(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;J)Ljava/net/InetAddress;
    .locals 4

    .line 641
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 642
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 643
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance v3, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0, v1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda17;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    .line 647
    invoke-direct {p0, v1, p3, p4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->await(Ljava/util/concurrent/CountDownLatch;J)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    .line 648
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActive(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    .line 649
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pInfo;

    if-nez p1, :cond_1

    return-object p3

    .line 650
    :cond_1
    iget-boolean p2, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-nez p2, :cond_2

    return-object p3

    .line 651
    :cond_2
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    return-object p3
.end method

.method private static final requestConnectionAddress$lambda$54(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 0

    .line 644
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 645
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final requestGroupInfo(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;JZ)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 4

    .line 616
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 617
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 618
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance v3, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda18;

    invoke-direct {v3, p1, p0, v0, v1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda18;-><init>(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 628
    invoke-direct {p0, v1, p3, p4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->await(Ljava/util/concurrent/CountDownLatch;J)Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p5, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 629
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Wi-Fi Direct did not respond"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 632
    :cond_1
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActive(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    .line 633
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic requestGroupInfo$default(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;JZILjava/lang/Object;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 610
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->requestGroupInfo(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;JZ)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object p0

    return-object p0
.end method

.method private static final requestGroupInfo$lambda$53(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    .line 621
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getCreateSucceeded()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->observedCreatedName:Ljava/lang/String;

    if-nez p0, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 622
    iget-object p0, p1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->requestedName:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->requestedName:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 623
    :cond_0
    invoke-virtual {p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->observedCreatedName:Ljava/lang/String;

    .line 625
    :cond_1
    invoke-virtual {p2, p4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 626
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static final ssidPrefix_delegate$lambda$4(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Ljava/lang/String;
    .locals 3

    .line 72
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

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

    .line 73
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ownership:Landroid/content/SharedPreferences;

    const-string v1, "fallback_id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 75
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ownership:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    const-string v1, "also(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 76
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_4
    :goto_2
    sget-object v1, Lcom/shilapi/xcertplay/network/P2pOwnership;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pOwnership;

    iget-object p0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "getPackageName(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v0}, Lcom/shilapi/xcertplay/network/P2pOwnership;->prefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final start$lambda$17(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;ZLandroid/net/wifi/p2p/WifiP2pManager$Channel;)Lkotlin/Unit;
    .locals 7

    .line 168
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActive(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    .line 171
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->waitNanos(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 172
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActive(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    .line 173
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->readStation()Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->checkPrerequisites(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;Z)V

    .line 174
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-wide v4, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->REQUEST_POLL_NANOS:J

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->requestGroupInfo(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;JZ)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object p0

    if-nez p0, :cond_0

    .line 177
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 175
    :cond_0
    new-instance p0, Lcom/shilapi/xcertplay/network/P2pResetRequiredException;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/P2pResetRequiredException;-><init>()V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 171
    monitor-exit v1

    throw p0
.end method

.method private static final start$lambda$20(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;JZLcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;Landroid/net/wifi/p2p/WifiP2pManager$Channel;JLcom/shilapi/xcertplay/network/P2pCreationRequest;)Lkotlin/Unit;
    .locals 14

    move-wide/from16 v4, p2

    move-object/from16 v8, p6

    move-object/from16 v0, p7

    move-object/from16 v9, p10

    const-string v1, "selection"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActive(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    .line 180
    invoke-direct {p0, v4, v5}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->remainingNanos(J)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v1, v6, v10

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    if-nez p4, :cond_2

    .line 182
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getMode()Lcom/shilapi/xcertplay/network/P2pCreationMode;

    move-result-object v3

    sget-object v6, Lcom/shilapi/xcertplay/network/P2pCreationMode;->SYSTEM_DEFAULT:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    if-ne v3, v6, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    invoke-direct {v3}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;-><init>()V

    .line 184
    invoke-virtual/range {p5 .. p5}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;->getSsid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object v3

    .line 185
    invoke-virtual/range {p5 .. p5}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;->getPassphrase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object v3

    const-string/jumbo v6, "setPassphrase(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v3, v6}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;I)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    .line 187
    invoke-static {v3}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v3

    goto :goto_1

    .line 186
    :cond_1
    const-string p0, "Required value was null."

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_4

    .line 189
    iget-object v6, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ownership:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "owned_ssid"

    invoke-virtual/range {p5 .. p5}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;->getSsid()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 190
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Could not record Wi-Fi P2P group ownership"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 192
    :cond_4
    :goto_2
    new-instance v6, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;

    invoke-direct {v6}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;-><init>()V

    if-nez v3, :cond_5

    move-object v7, v1

    goto :goto_3

    .line 197
    :cond_5
    invoke-virtual/range {p5 .. p5}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;->getSsid()Ljava/lang/String;

    move-result-object v7

    :goto_3
    iput-object v7, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->requestedName:Ljava/lang/String;

    .line 198
    iget-object v7, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 199
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActiveLocked(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    .line 200
    invoke-virtual {p1, v6}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->setRequest(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;)V

    .line 201
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 198
    monitor-exit v7

    .line 202
    iget-object v7, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getMode()Lcom/shilapi/xcertplay/network/P2pCreationMode;

    move-result-object v10

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v11

    if-nez v11, :cond_6

    const-string v11, "auto"

    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Wi-Fi P2P create mode="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " frequencyMHz="

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_7

    .line 205
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;->getRequest()Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    move-result-object v1

    :cond_7
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 206
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iput-object v8, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->rememberedAttempt:Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :cond_8
    :goto_4
    if-eqz p4, :cond_9

    .line 208
    :try_start_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {p0, p1, v6}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->createActionListener(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_5

    .line 209
    :cond_9
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {p0, p1, v6}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->createActionListener(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    move-result-object v7

    invoke-static {v1, v0, v3, v7}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :goto_5
    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-wide/from16 v6, p8

    .line 210
    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->awaitGroupCreated(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;JJ)V

    if-eqz p4, :cond_a

    .line 211
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0, v4, v5}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->awaitForcedGroup(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;J)V
    :try_end_2
    .catch Lcom/shilapi/xcertplay/network/P2pCreateRejected; {:try_start_2 .. :try_end_2} :catch_0

    .line 218
    :cond_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catch_0
    move-exception v0

    if-eqz v10, :cond_b

    .line 213
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/P2pCreateRejected;->getReason()I

    move-result v2

    if-nez v2, :cond_b

    if-eqz v8, :cond_b

    .line 214
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->configurationMemory:Lcom/shilapi/xcertplay/network/P2pConfigurationMemory;

    invoke-virtual {v2, v8}, Lcom/shilapi/xcertplay/network/P2pConfigurationMemory;->forget(Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object p0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    const-string v1, "Wi-Fi P2P remembered cleared=create_rejected"

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_b
    throw v0

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 198
    monitor-exit v7

    throw p0

    .line 180
    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Wi-Fi Direct startup timed out"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final start$lambda$21(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Integer;)Z
    .locals 1

    .line 223
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "create"

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->forceChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Integer;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final start$lambda$24$lambda$23(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/P2pCreationRequest;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;Ljava/lang/Integer;)Z
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->configurationMemory:Lcom/shilapi/xcertplay/network/P2pConfigurationMemory;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/P2pConfigurationMemory;->remember(Lcom/shilapi/xcertplay/network/P2pCreationRequest;ILjava/lang/Integer;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final waitNanos(J)V
    .locals 4

    const-wide/32 v0, 0xf4240

    .line 890
    div-long v2, p1, v0

    .line 891
    rem-long/2addr p1, v0

    long-to-int p2, p1

    .line 893
    :try_start_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3, p2}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 895
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 896
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Interrupted while waiting for Wi-Fi P2P"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public associatedClients()Ljava/lang/Integer;
    .locals 6

    .line 279
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->closed:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->created:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v2

    :goto_1
    monitor-exit v0

    if-nez v1, :cond_2

    return-object v2

    .line 280
    :cond_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 281
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 282
    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, p0

    check-cast v4, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    .line 283
    iget-object v4, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance v5, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0, v0, v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda10;-><init>(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v1, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 289
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 282
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 289
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v2

    .line 290
    :cond_3
    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->await(Ljava/util/concurrent/CountDownLatch;J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v1, v3

    :cond_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    :cond_5
    return-object v2

    :catchall_2
    move-exception v1

    .line 279
    monitor-exit v0

    throw v1
.end method

.method public close()V
    .locals 8

    .line 298
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 300
    :try_start_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->closed:Z

    .line 301
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->carPlayConfirmed:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->rememberedAttempt:Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;

    if-eqz v2, :cond_1

    .line 302
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->configurationMemory:Lcom/shilapi/xcertplay/network/P2pConfigurationMemory;

    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/network/P2pConfigurationMemory;->forget(Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    const-string v3, "Wi-Fi P2P remembered cleared=session_unconfirmed"

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x0

    .line 304
    iput-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->pendingSuccess:Lkotlin/jvm/functions/Function0;

    .line 305
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->startAttempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    if-eqz v3, :cond_2

    .line 306
    invoke-virtual {v3, v1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->setStopped(Z)V

    .line 307
    :cond_2
    iget-object v4, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 308
    iget-object v4, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v4, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v2

    .line 309
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->callbackThread:Landroid/os/HandlerThread;

    if-nez v5, :cond_6

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getThread()Landroid/os/HandlerThread;

    move-result-object v5

    goto :goto_1

    :cond_5
    move-object v5, v2

    .line 310
    :cond_6
    :goto_1
    iget-boolean v6, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->created:Z

    if-nez v6, :cond_8

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getCreateSucceeded()Z

    move-result v3

    if-ne v3, v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 311
    :cond_8
    :goto_2
    iput-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 312
    iput-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->callbackThread:Landroid/os/HandlerThread;

    .line 313
    iput-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->startAttempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    .line 314
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    monitor-exit v0

    if-eqz v1, :cond_b

    if-eqz v4, :cond_b

    const/4 v0, 0x2

    .line 317
    invoke-static {p0, v4, v2, v0, v2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->removeGroupBlocking$default(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;ILjava/lang/Object;)V

    .line 321
    iget v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->persistentNetId:I

    const/4 v1, -0x1

    .line 322
    iput v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->persistentNetId:I

    .line 324
    sget-object v1, Lcom/shilapi/xcertplay/network/CarWifiPassword;->INSTANCE:Lcom/shilapi/xcertplay/network/CarWifiPassword;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    const-string v6, "appContext"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/shilapi/xcertplay/network/CarWifiPassword;->renewRequested(Landroid/content/Context;)Z

    move-result v1

    .line 325
    iget-boolean v3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->forgetPersistentGroupOnClose:Z

    if-nez v3, :cond_9

    if-eqz v1, :cond_a

    :cond_9
    sget-object v3, Lcom/shilapi/xcertplay/network/P2pPersistentGroup;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pPersistentGroup;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v6, v0}, Lcom/shilapi/xcertplay/network/P2pPersistentGroup;->shouldDelete(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 326
    sget-object v3, Lcom/shilapi/xcertplay/network/P2pPersistentGroup;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pPersistentGroup;

    iget-object v6, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v3, v6, v4, v0}, Lcom/shilapi/xcertplay/network/P2pPersistentGroup;->delete(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Z

    move-result v0

    .line 327
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Wi-Fi P2P persistent group delete requested="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " renew="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 328
    sget-object v0, Lcom/shilapi/xcertplay/network/CarWifiPassword;->INSTANCE:Lcom/shilapi/xcertplay/network/CarWifiPassword;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    const-string v3, "appContext"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/network/CarWifiPassword;->renewDone(Landroid/content/Context;)V

    goto :goto_3

    :cond_a
    if-eqz v1, :cond_b

    .line 331
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    const-string v1, "Wi-Fi P2P new password asked for but the group has no persistent id; kept"

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/shilapi/xcertplay/network/CarWifiPassword;->INSTANCE:Lcom/shilapi/xcertplay/network/CarWifiPassword;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    const-string v3, "appContext"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/network/CarWifiPassword;->renewDone(Landroid/content/Context;)V

    .line 336
    :cond_b
    :goto_3
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->channelRestricted:Z

    if-eqz v0, :cond_c

    if-eqz v4, :cond_c

    const-string v0, "close"

    invoke-direct {p0, v4, v2, v0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->forceChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Integer;Ljava/lang/String;)Z

    :cond_c
    if-eqz v4, :cond_d

    .line 337
    invoke-static {v4}, Lcom/shilapi/xcertplay/compat/Api19Kt;->closeCompat(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    :cond_d
    if-eqz v5, :cond_e

    .line 338
    invoke-static {v5}, Lcom/shilapi/xcertplay/compat/Api19Kt;->quitSafelyCompat(Landroid/os/HandlerThread;)V

    :cond_e
    return-void

    :catchall_0
    move-exception v1

    .line 298
    monitor-exit v0

    throw v1
.end method

.method public onCarPlayConfirmed()V
    .locals 5

    const-string v0, "Wi-Fi P2P remembered saved="

    .line 264
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->closed:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->created:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->carPlayConfirmed:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->pendingSuccess:Lkotlin/jvm/functions/Function0;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 268
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->carPlayConfirmed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 269
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    :cond_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 270
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " proof=authenticated_first_frame"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 264
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public start(J)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;
    .locals 23

    move-object/from16 v1, p0

    const-string v0, "Wi-Fi P2P existingGroup="

    const-string v2, "Wi-Fi P2P remembered first mode="

    .line 100
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 101
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-wide/16 v8, 0x0

    cmp-long v3, p1, v8

    if-lez v3, :cond_1e

    .line 106
    new-instance v3, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    invoke-direct {v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;-><init>()V

    .line 107
    iget-object v4, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 108
    :try_start_0
    iget-boolean v5, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->closed:Z

    if-nez v5, :cond_1d

    .line 109
    iget-object v5, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->startAttempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    if-nez v5, :cond_1c

    iget-boolean v5, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->created:Z

    if-nez v5, :cond_1c

    .line 112
    iput-object v3, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->startAttempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    .line 113
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 107
    monitor-exit v4

    .line 115
    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v5, "xcertplay-wifi-p2p"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 116
    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->setThread(Landroid/os/HandlerThread;)V

    .line 117
    invoke-direct/range {p0 .. p2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->deadlineAfter(J)J

    move-result-wide v13

    .line 118
    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->randomCredentials()Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;

    move-result-object v10

    .line 121
    :try_start_1
    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->readStation()Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;

    move-result-object v5

    .line 122
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;->getAlignmentFrequency()Ljava/lang/Integer;

    move-result-object v15

    .line 123
    invoke-direct {v1, v5, v7}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->checkPrerequisites(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Station;Z)V

    const/4 v5, 0x0

    if-eqz v7, :cond_1

    move-object v6, v5

    goto :goto_1

    .line 124
    :cond_1
    iget-object v6, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->configurationMemory:Lcom/shilapi/xcertplay/network/P2pConfigurationMemory;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/network/P2pConfigurationMemory;->read()Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_2

    move-wide/from16 v16, v8

    .line 125
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;->getStationMHz()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v6

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v8

    :cond_3
    move-object v8, v5

    .line 126
    :goto_2
    iget-object v9, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    if-eqz v8, :cond_5

    .line 127
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;->getRequest()Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getMode()Lcom/shilapi/xcertplay/network/P2pCreationMode;

    move-result-object v6

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;->getRequest()Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v18

    if-nez v18, :cond_4

    const-string v18, "auto"

    :cond_4
    move-object/from16 v11, v18

    const/16 v18, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " frequencyMHz="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    const/16 v18, 0x1

    if-eqz v6, :cond_6

    .line 128
    const-string v2, "Wi-Fi P2P remembered skipped=station_channel_changed"

    goto :goto_3

    .line 129
    :cond_6
    const-string v2, "Wi-Fi P2P remembered unavailable"

    .line 126
    :goto_3
    invoke-interface {v9, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v2, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->p2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 132
    iget-object v6, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->appContext:Landroid/content/Context;

    .line 133
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    .line 134
    invoke-direct {v1, v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->createChannelListener(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v11

    .line 131
    invoke-virtual {v2, v6, v9, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    .line 136
    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->setChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 137
    iget-object v6, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    :try_start_2
    invoke-direct {v1, v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActiveLocked(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    .line 139
    iput-object v2, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 140
    iput-object v4, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->callbackThread:Landroid/os/HandlerThread;

    .line 141
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 137
    :try_start_3
    monitor-exit v6

    if-nez v7, :cond_7

    .line 143
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v3, v2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->logP2pState(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    :cond_7
    if-eqz v7, :cond_8

    .line 146
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v4, "start"

    invoke-direct {v1, v2, v5, v4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->forceChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Integer;Ljava/lang/String;)Z

    .line 148
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v5

    sget-wide v4, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->REQUEST_POLL_NANOS:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v9, v6

    const/4 v6, 0x1

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    move-object v11, v9

    :try_start_4
    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->requestGroupInfo(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;JZ)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    .line 149
    iget-object v5, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    if-eqz v4, :cond_9

    const/4 v6, 0x1

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_f

    .line 151
    sget-object v0, Lcom/shilapi/xcertplay/network/P2pOwnership;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pOwnership;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v5

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v6

    .line 152
    iget-object v9, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ownership:Landroid/content/SharedPreferences;

    const-string v12, "owned_ssid"

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->getSsidPrefix()Ljava/lang/String;

    move-result-object v12

    .line 151
    invoke-virtual {v0, v5, v6, v9, v12}, Lcom/shilapi/xcertplay/network/P2pOwnership;->canReclaim(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 155
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    const-string v5, "Wi-Fi P2P reclaiming retained owned group"

    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->removeGroupBlocking(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    const-wide/16 v4, 0x7d0

    .line 157
    invoke-direct {v1, v4, v5}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->deadlineAfter(J)J

    move-result-wide v4

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 160
    :goto_5
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide/from16 v19, v4

    :try_start_6
    sget-wide v4, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->REQUEST_POLL_NANOS:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v6, 0x1

    move-wide/from16 v11, v19

    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->requestGroupInfo(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;JZ)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-wide/from16 v11, v19

    goto :goto_7

    :catchall_2
    move-exception v0

    move-wide v11, v4

    :goto_7
    :try_start_8
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_9

    :cond_b
    instance-of v0, v4, Ljava/io/IOException;

    if-eqz v0, :cond_d

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Wi-Fi Direct did not respond"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 162
    invoke-direct {v1, v11, v12}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->remainingNanos(J)J

    move-result-wide v4

    cmp-long v0, v4, v16

    if-eqz v0, :cond_c

    .line 163
    iget-object v4, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x64

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->waitNanos(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v4

    move-wide v4, v11

    const/4 v11, 0x0

    goto :goto_5

    :catchall_3
    move-exception v0

    monitor-exit v4

    throw v0

    .line 162
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Wi-Fi Direct reset did not finish"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_d
    throw v4

    .line 153
    :cond_e
    new-instance v0, Lcom/shilapi/xcertplay/network/P2pResetRequiredException;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/P2pResetRequiredException;-><init>()V

    throw v0

    .line 167
    :cond_f
    new-instance v11, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda12;

    invoke-direct {v11, v1, v2, v7, v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda12;-><init>(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;ZLandroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 178
    new-instance v0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;

    move v5, v7

    move-object v7, v8

    move-object v6, v10

    move-wide/from16 v9, p1

    move-object v8, v3

    move-wide v3, v13

    invoke-direct/range {v0 .. v10}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda13;-><init>(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;JZLcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;Landroid/net/wifi/p2p/WifiP2pManager$Channel;J)V

    move v12, v5

    if-eqz v12, :cond_10

    .line 221
    sget-object v5, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pStartupRecovery;

    .line 222
    sget-object v7, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pLegacyChannel;

    invoke-virtual {v7, v15}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->candidates(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v7

    .line 221
    new-instance v9, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda14;

    invoke-direct {v9, v1, v8}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda14;-><init>(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-virtual {v5, v7, v9, v11, v0}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->createLegacyForced(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    move-result-object v0

    goto :goto_b

    .line 227
    :cond_10
    sget-object v5, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pStartupRecovery;

    if-eqz v7, :cond_11

    .line 229
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/network/P2pConfigurationMemory$Record;->getRequest()Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    move-result-object v7

    goto :goto_a

    :cond_11
    const/4 v7, 0x0

    .line 227
    :goto_a
    invoke-virtual {v5, v15, v11, v7, v0}, Lcom/shilapi/xcertplay/network/P2pStartupRecovery;->create(Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/network/P2pCreationRequest;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/P2pCreationRequest;

    move-result-object v0

    :goto_b
    if-nez v12, :cond_13

    .line 238
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getMode()Lcom/shilapi/xcertplay/network/P2pCreationMode;

    move-result-object v5

    sget-object v7, Lcom/shilapi/xcertplay/network/P2pCreationMode;->SYSTEM_DEFAULT:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    if-ne v5, v7, :cond_12

    goto :goto_c

    :cond_12
    move-wide/from16 v21, v3

    move-object v4, v6

    move-wide/from16 v5, v21

    goto :goto_d

    :cond_13
    :goto_c
    move-wide v5, v3

    const/4 v4, 0x0

    :goto_d
    move-object v3, v8

    move-wide/from16 v7, p1

    .line 233
    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->awaitUsableGroup(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$Credentials;JJ)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    move-result-object v3

    .line 242
    iget-object v4, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ownership:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "owned_ssid"

    iget-object v6, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->frameworkGroupName:Ljava/lang/String;

    if-nez v6, :cond_14

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getSsid()Ljava/lang/String;

    move-result-object v6

    :cond_14
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 245
    iget-object v4, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getMode()Lcom/shilapi/xcertplay/network/P2pCreationMode;

    move-result-object v5

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getBandLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getChannel()I

    move-result v7

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wi-Fi P2P ready mode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " band="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " channel="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " frequencyMHz="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v4, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_15

    const-string v5, "auto"

    :cond_15
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/P2pCreationRequest;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_18

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_16

    goto :goto_e

    :cond_16
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_17

    const/4 v11, 0x1

    goto :goto_f

    :cond_17
    :goto_e
    const/4 v11, 0x0

    :goto_f
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_10

    :cond_18
    const-string/jumbo v7, "system_selected"

    :goto_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wi-Fi P2P channel requestedMHz="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " actualMHz="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " matched="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v4, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 248
    :try_start_b
    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->ensureStartActiveLocked(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    const/4 v5, 0x1

    .line 249
    iput-boolean v5, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->created:Z

    const/4 v6, 0x0

    .line 250
    iput-object v6, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->startAttempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    if-nez v12, :cond_1a

    .line 252
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_19

    goto :goto_11

    :cond_19
    new-instance v5, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda15;

    invoke-direct {v5, v1, v0, v3, v15}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda15;-><init>(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/P2pCreationRequest;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;Ljava/lang/Integer;)V

    goto :goto_12

    :cond_1a
    :goto_11
    move-object v5, v6

    :goto_12
    iput-object v5, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->pendingSuccess:Lkotlin/jvm/functions/Function0;

    .line 255
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 247
    :try_start_c
    monitor-exit v4

    return-object v3

    :catchall_4
    move-exception v0

    monitor-exit v4

    throw v0

    .line 243
    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Could not record Wi-Fi P2P group ownership"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    move-object v2, v3

    .line 137
    monitor-exit v6

    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    goto :goto_13

    :catch_1
    move-exception v0

    move-object v2, v3

    .line 258
    :goto_13
    iget-object v3, v1, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Wi-Fi P2P startup stopped type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->cleanupFailedStart(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V

    .line 260
    throw v0

    .line 110
    :cond_1c
    :try_start_d
    const-string v0, "A Wi-Fi P2P group is already starting or active"

    .line 109
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_1d
    const-string v0, "WifiP2pGroupManager is closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception v0

    .line 107
    monitor-exit v4

    throw v0

    .line 104
    :cond_1e
    const-string/jumbo v0, "timeoutMillis must be positive"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_1f
    const-string v0, "WifiP2pGroupManager.start must not run on the main thread"

    .line 101
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
