.class public final Lcom/shilapi/xcertplay/network/CarPlayBonjour;
.super Ljava/lang/Object;
.source "CarPlayBonjour.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/CarPlayBonjour$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayBonjour.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayBonjour.kt\ncom/shilapi/xcertplay/network/CarPlayBonjour\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,682:1\n1#2:683\n216#3,2:684\n295#4,2:686\n295#4,2:688\n295#4,2:690\n*S KotlinDebug\n*F\n+ 1 CarPlayBonjour.kt\ncom/shilapi/xcertplay/network/CarPlayBonjour\n*L\n411#1:684,2\n560#1:686,2\n562#1:688,2\n563#1:690,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d1\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0003psx\u0018\u0000 \u0080\u00012\u00020\u0001:\u0002\u0080\u0001BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J#\u0010\u001c\u001a\u00020\u00082\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u001aH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008 \u0010\u0017J\u0017\u0010#\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010%\u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0019\u0010(\u001a\u0004\u0018\u00010\u00122\u0006\u0010\'\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010*\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008*\u0010+J!\u0010/\u001a\u0004\u0018\u00010.2\u0006\u0010-\u001a\u00020,2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u001f\u00103\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u00102\u001a\u000201H\u0002\u00a2\u0006\u0004\u00083\u00104J\u0017\u00106\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00086\u00107J\u0017\u0010:\u001a\u00020\u00082\u0006\u00109\u001a\u000208H\u0002\u00a2\u0006\u0004\u0008:\u0010;J\u0017\u0010>\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020<H\u0002\u00a2\u0006\u0004\u0008>\u0010?J\r\u0010@\u001a\u00020\u000e\u00a2\u0006\u0004\u0008@\u0010\u0017J\r\u0010A\u001a\u00020\u0008\u00a2\u0006\u0004\u0008A\u0010BJ\u000f\u0010C\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008C\u0010\u0017R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010DR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010ER\u0016\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010FR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010GR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010HR\u001b\u0010N\u001a\u00020I8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010MR\u001a\u0010P\u001a\u0008\u0012\u0004\u0012\u00020!0O8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR&\u0010S\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00120R0O8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008S\u0010QR\u001a\u0010U\u001a\u0008\u0012\u0004\u0012\u00020T0O8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010QRT\u0010X\u001aB\u0012\u000c\u0012\n W*\u0004\u0018\u00010\u00080\u0008\u0012\u000c\u0012\n W*\u0004\u0018\u00010\n0\n W* \u0012\u000c\u0012\n W*\u0004\u0018\u00010\u00080\u0008\u0012\u000c\u0012\n W*\u0004\u0018\u00010\n0\n\u0018\u00010V0V8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0014\u0010[\u001a\u00020Z8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u0016\u0010]\u001a\u0004\u0018\u00010\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R$\u0010a\u001a\u0012 W*\u0008\u0018\u00010_R\u00020`0_R\u00020`8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0016\u0010c\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010HR\u0016\u0010d\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010HR\u0016\u0010e\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010HR\u0016\u0010f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010HR\u0018\u0010=\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010gR\u0018\u0010i\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0018\u0010l\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR$\u0010n\u001a\u00020\u00082\u0006\u00109\u001a\u00020\u00088\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008n\u0010F\u001a\u0004\u0008o\u0010BR\u0014\u0010q\u001a\u00020p8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008q\u0010rR\u001b\u0010w\u001a\u00020s8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008t\u0010K\u001a\u0004\u0008u\u0010vR\u001b\u0010|\u001a\u00020x8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008y\u0010K\u001a\u0004\u0008z\u0010{R\u0018\u0010~\u001a\u0004\u0018\u00010}8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010\u007f\u00a8\u0006\u0081\u0001"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/CarPlayBonjour;",
        "Ljava/io/Closeable;",
        "Landroid/content/Context;",
        "context",
        "Lcom/shilapi/xcertplay/airplay/AirPlayConfig;",
        "config",
        "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
        "identity",
        "",
        "advertisedHost",
        "",
        "useInterfaceMdns",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;",
        "",
        "onEvent",
        "<init>",
        "(Landroid/content/Context;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V",
        "Ljava/net/InetAddress;",
        "address",
        "startInterfaceMdns",
        "(Ljava/net/InetAddress;)V",
        "startSystemNsd",
        "()V",
        "startSystemNsdFallback",
        "registerAirPlay",
        "",
        "txt",
        "txtSummary",
        "(Ljava/util/Map;)Ljava/lang/String;",
        "advertisedHostAddress",
        "()Ljava/net/InetAddress;",
        "runWorker",
        "Landroid/net/nsd/NsdServiceInfo;",
        "service",
        "handleService",
        "(Landroid/net/nsd/NsdServiceInfo;)V",
        "resolveWithRetry",
        "(Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;",
        "serviceInfo",
        "preferredAddress",
        "(Landroid/net/nsd/NsdServiceInfo;)Ljava/net/InetAddress;",
        "applyLocalScope",
        "(Ljava/net/InetAddress;)Ljava/net/InetAddress;",
        "Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;",
        "endpoint",
        "Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;",
        "probe",
        "(Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;Ljava/net/InetAddress;)Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;",
        "",
        "port",
        "probeOnce",
        "(Ljava/net/InetAddress;I)Ljava/lang/String;",
        "event",
        "emit",
        "(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)V",
        "",
        "value",
        "decodeTxtValue",
        "([B)Ljava/lang/String;",
        "Ljava/lang/Thread;",
        "worker",
        "joinWorker",
        "(Ljava/lang/Thread;)V",
        "start",
        "reannounce",
        "()Ljava/lang/String;",
        "close",
        "Lcom/shilapi/xcertplay/airplay/AirPlayConfig;",
        "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
        "Ljava/lang/String;",
        "Lkotlin/jvm/functions/Function1;",
        "Z",
        "Landroid/net/nsd/NsdManager;",
        "nsdManager$delegate",
        "Lkotlin/Lazy;",
        "getNsdManager",
        "()Landroid/net/nsd/NsdManager;",
        "nsdManager",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "services",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "Lkotlin/Pair;",
        "interfaceServices",
        "Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;",
        "discoveryEvents",
        "j$/util/concurrent/ConcurrentHashMap.KeySetView",
        "kotlin.jvm.PlatformType",
        "seenServices",
        "Lj$/util/concurrent/ConcurrentHashMap$KeySetView;",
        "",
        "lifecycleLock",
        "Ljava/lang/Object;",
        "localAdvertisedAddress",
        "Ljava/net/InetAddress;",
        "Landroid/net/wifi/WifiManager$MulticastLock;",
        "Landroid/net/wifi/WifiManager;",
        "multicastLock",
        "Landroid/net/wifi/WifiManager$MulticastLock;",
        "started",
        "closed",
        "registrationRequested",
        "discoveryRequested",
        "Ljava/lang/Thread;",
        "Ljava/net/Socket;",
        "activeSocket",
        "Ljava/net/Socket;",
        "Ljavax/jmdns/JmDNS;",
        "interfaceMdns",
        "Ljavax/jmdns/JmDNS;",
        "publicationSummary",
        "getPublicationSummary",
        "com/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1",
        "interfaceListener",
        "Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;",
        "com/shilapi/xcertplay/network/CarPlayBonjour$registrationListener$2$1",
        "registrationListener$delegate",
        "getRegistrationListener",
        "()Lcom/shilapi/xcertplay/network/CarPlayBonjour$registrationListener$2$1;",
        "registrationListener",
        "com/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1",
        "discoveryListener$delegate",
        "getDiscoveryListener",
        "()Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;",
        "discoveryListener",
        "Ljavax/jmdns/ServiceInfo;",
        "registeredInfo",
        "Ljavax/jmdns/ServiceInfo;",
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
.field public static final AIRPLAY_SERVICE_TYPE:Ljava/lang/String; = "_airplay._tcp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CARPLAY_CONTROL_SERVICE_TYPE:Ljava/lang/String; = "_carplay-ctrl._tcp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONNECT_TIMEOUT_MILLIS:I = 0xbb8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/shilapi/xcertplay/network/CarPlayBonjour$Companion;

.field public static final FAILURE_NONE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JOIN_TIMEOUT_MILLIS:J = 0x7d0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_PROBE_ATTEMPTS:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROBE_RETRY_DELAY_MILLIS:J = 0x5dcL
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final READ_TIMEOUT_MILLIS:I = 0xbb8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESOLVE_ATTEMPTS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESOLVE_RETRY_DELAY_MILLIS:J = 0xfaL
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESOLVE_TIMEOUT_MILLIS:J = 0x2710L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "xcertplay-bonjour"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WORKER_NAME:Ljava/lang/String; = "carplay-bonjour"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WORKER_POLL_MILLIS:J = 0x1f4L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private volatile activeSocket:Ljava/net/Socket;

.field private final advertisedHost:Ljava/lang/String;

.field private volatile closed:Z

.field private final config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

.field private final discoveryEvents:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;",
            ">;"
        }
    .end annotation
.end field

.field private final discoveryListener$delegate:Lkotlin/Lazy;

.field private discoveryRequested:Z

.field private final identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

.field private final interfaceListener:Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;

.field private interfaceMdns:Ljavax/jmdns/JmDNS;

.field private final interfaceServices:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lkotlin/Pair<",
            "Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;",
            "Ljava/net/InetAddress;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lifecycleLock:Ljava/lang/Object;

.field private final localAdvertisedAddress:Ljava/net/InetAddress;

.field private final multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private final nsdManager$delegate:Lkotlin/Lazy;

.field private final onEvent:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private volatile publicationSummary:Ljava/lang/String;

.field private volatile registeredInfo:Ljavax/jmdns/ServiceInfo;

.field private final registrationListener$delegate:Lkotlin/Lazy;

.field private registrationRequested:Z

.field private final seenServices:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$KeySetView<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z

.field private final useInterfaceMdns:Z

.field private volatile worker:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$4i5HpIP26wAln6MPvuUlr0qaG5o(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->txtSummary$lambda$26(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cwOvHkfTrvKlEKeSRn-YkO-QAuI(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->discoveryListener_delegate$lambda$4(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eLHKQ_BnvM8gmXZT8Yoc3e_CUPQ(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->_init_$lambda$0(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iTsNkl6fuVWw3g0GpZS6ja2XNNU(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Lcom/shilapi/xcertplay/network/CarPlayBonjour$registrationListener$2$1;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->registrationListener_delegate$lambda$3(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Lcom/shilapi/xcertplay/network/CarPlayBonjour$registrationListener$2$1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lYboTS6tb3NnX4ipuKgPGO0Tmcg(Landroid/content/Context;)Landroid/net/nsd/NsdManager;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->nsdManager_delegate$lambda$1(Landroid/content/Context;)Landroid/net/nsd/NsdManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pU_UcFVzRmZP9N2rFqlRYiFBIkA(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->runWorker()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/CarPlayBonjour$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->Companion:Lcom/shilapi/xcertplay/network/CarPlayBonjour$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/shilapi/xcertplay/airplay/AirPlayConfig;",
            "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEvent"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    .line 126
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    .line 127
    iput-object p4, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->advertisedHost:Ljava/lang/String;

    .line 129
    iput-object p6, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->onEvent:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x0

    if-nez p5, :cond_1

    .line 132
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-ge p3, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    iput-boolean p3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->useInterfaceMdns:Z

    .line 134
    new-instance p3, Lcom/shilapi/xcertplay/network/CarPlayBonjour$$ExternalSyntheticLambda22;

    invoke-direct {p3, p1}, Lcom/shilapi/xcertplay/network/CarPlayBonjour$$ExternalSyntheticLambda22;-><init>(Landroid/content/Context;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->nsdManager$delegate:Lkotlin/Lazy;

    .line 137
    new-instance p3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->services:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 138
    new-instance p3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->interfaceServices:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 139
    new-instance p3, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 p4, 0x20

    invoke-direct {p3, p4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->discoveryEvents:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 140
    invoke-static {}, Lj$/util/concurrent/ConcurrentHashMap;->newKeySet()Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object p3

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->seenServices:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 141
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->lifecycleLock:Ljava/lang/Object;

    .line 142
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->advertisedHostAddress()Ljava/net/InetAddress;

    move-result-object p3

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->localAdvertisedAddress:Ljava/net/InetAddress;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, p3

    .line 144
    :goto_2
    const-class p3, Landroid/net/wifi/WifiManager;

    invoke-static {p1, p3}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 145
    const-string p3, "carplay-bonjour"

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 163
    const-string p1, "not started"

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->publicationSummary:Ljava/lang/String;

    .line 166
    new-instance p1, Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->interfaceListener:Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;

    .line 203
    new-instance p1, Lcom/shilapi/xcertplay/network/CarPlayBonjour$$ExternalSyntheticLambda23;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour$$ExternalSyntheticLambda23;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->registrationListener$delegate:Lkotlin/Lazy;

    .line 222
    new-instance p1, Lcom/shilapi/xcertplay/network/CarPlayBonjour$$ExternalSyntheticLambda24;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour$$ExternalSyntheticLambda24;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->discoveryListener$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    .line 129
    new-instance p6, Lcom/shilapi/xcertplay/network/CarPlayBonjour$$ExternalSyntheticLambda21;

    invoke-direct {p6}, Lcom/shilapi/xcertplay/network/CarPlayBonjour$$ExternalSyntheticLambda21;-><init>()V

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    .line 123
    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;-><init>(Landroid/content/Context;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$applyLocalScope(Lcom/shilapi/xcertplay/network/CarPlayBonjour;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->applyLocalScope(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClosed$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    return p0
.end method

.method public static final synthetic access$getDiscoveryEvents$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->discoveryEvents:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static final synthetic access$getInterfaceServices$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->interfaceServices:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static final synthetic access$getLocalAdvertisedAddress$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Ljava/net/InetAddress;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->localAdvertisedAddress:Ljava/net/InetAddress;

    return-object p0
.end method

.method public static final synthetic access$getSeenServices$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Lj$/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->seenServices:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    return-object p0
.end method

.method public static final synthetic access$getServices$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->services:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static final synthetic access$setPublicationSummary$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->publicationSummary:Ljava/lang/String;

    return-void
.end method

.method private final advertisedHostAddress()Ljava/net/InetAddress;
    .locals 5

    .line 431
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->advertisedHost:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    .line 433
    :cond_1
    :try_start_0
    const-string v1, "["

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "]"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-nez v1, :cond_4

    .line 440
    instance-of v1, v0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/net/Inet6Address;

    invoke-virtual {v1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "advertisedHost must be link-local IPv6 or IPv4"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-object v0

    .line 437
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "advertisedHost must not be a loopback address"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    .line 435
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid advertised host: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    :goto_2
    return-object v1
.end method

.method private final applyLocalScope(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->localAdvertisedAddress:Ljava/net/InetAddress;

    instance-of v1, v0, Ljava/net/Inet6Address;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/Inet6Address;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v0

    .line 569
    instance-of v1, p1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/net/Inet6Address;

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 571
    :cond_1
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/net/Inet6Address;

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v1

    invoke-static {v2, v1, v0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    :goto_1
    return-object p1
.end method

.method private final decodeTxtValue([B)Ljava/lang/String;
    .locals 2

    .line 654
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 p1, 0x1

    new-array p1, p1, [C

    const/4 v0, 0x0

    aput-char v0, p1, v0

    invoke-static {v1, p1}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final discoveryListener_delegate$lambda$4(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;
    .locals 1

    .line 222
    new-instance v0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)V

    return-object v0
.end method

.method private final emit(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)V
    .locals 2

    .line 645
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 647
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->onEvent:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 649
    const-string v0, "CarPlay Bonjour event callback failed"

    check-cast p1, Ljava/lang/Throwable;

    const-string/jumbo v1, "xcertplay-bonjour"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final getDiscoveryListener()Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->discoveryListener$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;

    return-object v0
.end method

.method private final getNsdManager()Landroid/net/nsd/NsdManager;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->nsdManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/net/nsd/NsdManager;

    move-result-object v0

    return-object v0
.end method

.method private final getRegistrationListener()Lcom/shilapi/xcertplay/network/CarPlayBonjour$registrationListener$2$1;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->registrationListener$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$registrationListener$2$1;

    return-object v0
.end method

.method private final handleService(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 6

    .line 480
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->resolveWithRetry(Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->preferredAddress(Landroid/net/nsd/NsdServiceInfo;)Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 482
    :cond_1
    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdServiceInfo;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v3, v2, :cond_5

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_5

    .line 484
    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 485
    :cond_2
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 486
    :cond_3
    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdServiceInfo;)Ljava/util/Map;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 487
    const-string v5, "id"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_4

    .line 488
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->decodeTxtValue([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 489
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object v4, v0

    .line 490
    :cond_4
    new-instance v0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;

    invoke-direct {v0, v3, p1, v2, v4}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 496
    new-instance p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Resolved;

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Resolved;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;)V

    check-cast p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->emit(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)V

    .line 497
    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->probe(Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;Ljava/net/InetAddress;)Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->emit(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private final joinWorker(Ljava/lang/Thread;)V
    .locals 2

    .line 657
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x7d0

    .line 659
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 661
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method private static final nsdManager_delegate$lambda$1(Landroid/content/Context;)Landroid/net/nsd/NsdManager;
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const-string v0, "servicediscovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.net.nsd.NsdManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/net/nsd/NsdManager;

    move-result-object p0

    return-object p0
.end method

.method private final preferredAddress(Landroid/net/nsd/NsdServiceInfo;)Ljava/net/InetAddress;
    .locals 6

    .line 555
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 556
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdServiceInfo;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 558
    :cond_0
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdServiceInfo;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 560
    :cond_1
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 686
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/net/InetAddress;

    .line 560
    instance-of v5, v4, Ljava/net/Inet6Address;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/net/Inet6Address;

    invoke-virtual {v4}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    check-cast v2, Ljava/net/InetAddress;

    if-eqz v2, :cond_4

    .line 561
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->applyLocalScope(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    .line 688
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/net/InetAddress;

    .line 562
    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_6
    move-object v2, v3

    :goto_2
    check-cast v2, Ljava/net/InetAddress;

    if-nez v2, :cond_a

    .line 690
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/net/InetAddress;

    .line 563
    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_7

    move-object v3, v1

    :cond_8
    check-cast v3, Ljava/net/InetAddress;

    if-nez v3, :cond_9

    .line 564
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    return-object p1

    :cond_9
    return-object v3

    :cond_a
    return-object v2
.end method

.method private final probe(Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;Ljava/net/InetAddress;)Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :cond_0
    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_3

    .line 583
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    if-eqz v2, :cond_1

    return-object v0

    .line 585
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;->getPort()I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->probeOnce(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v2

    .line 586
    new-instance v4, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;

    add-int/lit8 v5, v1, 0x1

    invoke-direct {v4, p1, v5, v2, v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;ILjava/lang/String;Ljava/io/IOException;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    .line 595
    new-instance v4, Ljava/io/IOException;

    const-string v5, "AirPlay control probe failed"

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v4, v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v4

    goto :goto_1

    :catch_1
    move-exception v2

    .line 597
    :goto_1
    iget-boolean v4, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    if-eqz v4, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v3, :cond_0

    const-wide/16 v3, 0x5dc

    .line 599
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 602
    :cond_3
    new-instance p2, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;

    invoke-direct {p2, p1, v3, v0, v2}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;ILjava/lang/String;Ljava/io/IOException;)V

    return-object p2
.end method

.method private final probeOnce(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 5

    .line 611
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 612
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->lifecycleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 613
    :try_start_0
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    if-nez v2, :cond_6

    .line 614
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->activeSocket:Ljava/net/Socket;

    .line 615
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 612
    monitor-exit v1

    const/4 v1, 0x0

    .line 617
    :try_start_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->localAdvertisedAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_1

    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    instance-of v3, p1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_0
    instance-of v3, v2, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    instance-of v3, p1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    :goto_0
    new-instance v3, Ljava/net/InetSocketAddress;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    check-cast v3, Ljava/net/SocketAddress;

    invoke-virtual {v0, v3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 618
    :cond_1
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    check-cast v2, Ljava/net/SocketAddress;

    const/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 619
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 620
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 622
    sget-object v2, Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;->INSTANCE:Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;

    .line 625
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getSourceVersion()Ljava/lang/String;

    move-result-object v3

    .line 626
    iget-object v4, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 622
    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;->connectProbeRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 628
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 629
    sget-object v2, Lj$/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v3, "US_ASCII"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v2, "getBytes(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 630
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 631
    new-instance p1, Ljava/io/BufferedReader;

    .line 632
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lj$/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p2, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast p2, Ljava/io/Reader;

    .line 631
    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 634
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p1, :cond_3

    .line 637
    iget-object p2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->lifecycleLock:Ljava/lang/Object;

    monitor-enter p2

    .line 638
    :try_start_2
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->activeSocket:Ljava/net/Socket;

    if-ne v2, v0, :cond_2

    iput-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->activeSocket:Ljava/net/Socket;

    .line 639
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 637
    monitor-exit p2

    .line 640
    :try_start_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catchall_1
    move-exception p1

    .line 637
    monitor-exit p2

    throw p1

    .line 635
    :cond_3
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "AirPlay control probe returned no status line"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 621
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "AirPlay control service has no host address"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 637
    iget-object p2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->lifecycleLock:Ljava/lang/Object;

    monitor-enter p2

    .line 638
    :try_start_5
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->activeSocket:Ljava/net/Socket;

    if-ne v2, v0, :cond_5

    iput-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->activeSocket:Ljava/net/Socket;

    .line 639
    :cond_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 637
    monitor-exit p2

    .line 640
    :try_start_6
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    throw p1

    :catchall_4
    move-exception p1

    .line 637
    monitor-exit p2

    throw p1

    .line 613
    :cond_6
    :try_start_7
    const-string p1, "CarPlayBonjour is closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception p1

    .line 612
    monitor-exit v1

    throw p1
.end method

.method private final registerAirPlay()V
    .locals 4

    .line 406
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 407
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)V

    .line 408
    const-string v1, "_airplay._tcp"

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdServiceInfo;I)V

    .line 410
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 411
    sget-object v1, Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;->INSTANCE:Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-virtual {v1, v2, v3}, Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;->airPlayTxtRecords(Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;)Ljava/util/Map;

    move-result-object v1

    .line 684
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 412
    invoke-static {v0, v3, v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->localAdvertisedAddress:Ljava/net/InetAddress;

    if-eqz v1, :cond_1

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdServiceInfo;Ljava/net/InetAddress;)V

    .line 417
    :cond_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->getNsdManager()Landroid/net/nsd/NsdManager;

    move-result-object v1

    .line 420
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->getRegistrationListener()Lcom/shilapi/xcertplay/network/CarPlayBonjour$registrationListener$2$1;

    move-result-object v2

    invoke-static {v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/net/nsd/NsdManager$RegistrationListener;

    move-result-object v2

    const/4 v3, 0x1

    .line 417
    invoke-static {v1, v0, v3, v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    return-void
.end method

.method private static final registrationListener_delegate$lambda$3(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Lcom/shilapi/xcertplay/network/CarPlayBonjour$registrationListener$2$1;
    .locals 1

    .line 203
    new-instance v0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$registrationListener$2$1;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour$registrationListener$2$1;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)V

    return-object v0
.end method

.method private final resolveWithRetry(Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ge v1, v3, :cond_7

    .line 503
    iget-boolean v4, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    if-eqz v4, :cond_0

    return-object v2

    .line 504
    :cond_0
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 505
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 506
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v8, -0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 507
    new-instance v8, Lcom/shilapi/xcertplay/network/CarPlayBonjour$resolveWithRetry$1$listener$1;

    invoke-direct {v8, v6, v4, v7}, Lcom/shilapi/xcertplay/network/CarPlayBonjour$resolveWithRetry$1$listener$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 519
    :try_start_0
    iget-object v9, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->lifecycleLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :try_start_1
    iget-boolean v10, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    if-eqz v10, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 523
    :cond_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->getNsdManager()Landroid/net/nsd/NsdManager;

    move-result-object v10

    invoke-static {v8}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/net/nsd/NsdManager$ResolveListener;

    move-result-object v8

    invoke-static {v10, p1, v8}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    :goto_1
    :try_start_2
    monitor-exit v9

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v9

    throw v5
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v5

    .line 528
    const-string/jumbo v8, "xcertplay-bonjour"

    const-string v9, "CarPlay control service resolution failed"

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_2

    return-object v2

    .line 533
    :cond_2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x2710

    invoke-virtual {v4, v8, v9, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 538
    const-string/jumbo p1, "xcertplay-bonjour"

    const-string v0, "CarPlay control service resolution timed out"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 541
    :cond_3
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    return-object v4

    .line 542
    :cond_4
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v4, v3, :cond_5

    .line 543
    const-string/jumbo p1, "xcertplay-bonjour"

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CarPlay control service resolution failed code="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 546
    :cond_5
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    if-nez v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    if-ge v2, v3, :cond_6

    const-wide/16 v2, 0xfa

    .line 547
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v2
.end method

.method private final runWorker()V
    .locals 5

    .line 447
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    if-nez v0, :cond_6

    .line 448
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->interfaceMdns:Ljavax/jmdns/JmDNS;

    const-string/jumbo v1, "xcertplay-bonjour"

    const-wide/16 v2, 0x1f4

    if-eqz v0, :cond_3

    .line 450
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->discoveryEvents:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;

    if-nez v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->interfaceServices:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 452
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 451
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 454
    new-instance v3, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Resolved;

    invoke-direct {v3, v2}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Resolved;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;)V

    check-cast v3, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->emit(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)V

    .line 455
    invoke-direct {p0, v2, v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->probe(Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;Ljava/net/InetAddress;)Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Probed;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->emit(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)V

    goto :goto_0

    .line 450
    :cond_2
    check-cast v0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->emit(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 459
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    if-nez v2, :cond_0

    const-string v2, "Interface CarPlay service handling failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 464
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->services:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_4

    goto :goto_0

    .line 468
    :cond_4
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    if-eqz v2, :cond_5

    goto :goto_2

    .line 470
    :cond_5
    :try_start_2
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->handleService(Landroid/net/nsd/NsdServiceInfo;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 474
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    if-nez v2, :cond_0

    const-string v2, "CarPlay control service handling failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    :cond_6
    :goto_2
    return-void
.end method

.method private final startInterfaceMdns(Ljava/net/InetAddress;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 353
    const-string/jumbo v2, "xcertplay-bonjour"

    .line 0
    const-string v3, "AirPlay Bonjour published "

    const-string v4, "mode=interface service=_airplay._tcp family="

    const-string v5, "carplay-"

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 355
    :try_start_0
    iget-object v8, v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    const-string v11, ""

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/shilapi/xcertplay/network/BonjourAddress;->named(Ljava/net/InetAddress;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0, v5}, Ljavax/jmdns/JmDNS;->create(Ljava/net/InetAddress;Ljava/lang/String;)Ljavax/jmdns/JmDNS;

    move-result-object v5

    .line 356
    iput-object v5, v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->interfaceMdns:Ljavax/jmdns/JmDNS;

    .line 357
    const-string v8, "_carplay-ctrl._tcp.local."

    iget-object v9, v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->interfaceListener:Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;

    check-cast v9, Ljavax/jmdns/ServiceListener;

    invoke-virtual {v5, v8, v9}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 358
    sget-object v8, Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;->INSTANCE:Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;

    iget-object v9, v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    iget-object v10, v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-virtual {v8, v9, v10}, Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;->airPlayTxtRecords(Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;)Ljava/util/Map;

    move-result-object v16

    .line 360
    const-string v11, "_airplay._tcp.local."

    iget-object v8, v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getDeviceName()Ljava/lang/String;

    move-result-object v12

    iget-object v8, v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getPort()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 359
    invoke-static/range {v11 .. v16}, Ljavax/jmdns/ServiceInfo;->create(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)Ljavax/jmdns/ServiceInfo;

    move-result-object v8

    move-object/from16 v9, v16

    .line 362
    invoke-virtual {v5, v8}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    .line 363
    iput-object v8, v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->registeredInfo:Ljavax/jmdns/ServiceInfo;

    .line 365
    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    const-string v0, "IPv4"

    goto :goto_0

    :cond_0
    const-string v0, "IPv6-link-local"

    :goto_0
    iget-object v5, v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getPort()I

    move-result v5

    .line 366
    invoke-direct {v1, v9}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->txtSummary(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " port="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " browse=_carplay-ctrl._tcp txt="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " registerMs="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    iput-object v0, v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->publicationSummary:Ljava/lang/String;

    .line 368
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->publicationSummary:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 370
    sget-object v3, Lcom/shilapi/xcertplay/network/AirPlayPorts;->INSTANCE:Lcom/shilapi/xcertplay/network/AirPlayPorts;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/network/AirPlayPorts;->isInUse(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    iget-object v3, v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getPort()I

    move-result v3

    .line 372
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mode=skipped-5353-busy service=_airplay._tcp port="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (iAP2 0x4301 still advertises AirPlay)"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    iput-object v0, v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->publicationSummary:Ljava/lang/String;

    .line 373
    const-string v0, "JmDNS UDP 5353 busy; continuing without local mDNS"

    invoke-static {v2, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->startSystemNsdFallback()V

    return-void

    .line 370
    :cond_1
    throw v0
.end method

.method private final startSystemNsd()V
    .locals 5

    .line 379
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->registerAirPlay()V

    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->registrationRequested:Z

    .line 381
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getPort()I

    move-result v1

    .line 382
    sget-object v2, Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;->INSTANCE:Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    iget-object v4, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-virtual {v2, v3, v4}, Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;->airPlayTxtRecords(Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->txtSummary(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mode=system-nsd service=_airplay._tcp port="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " browse=_carplay-ctrl._tcp txt="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (registration pending)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    iput-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->publicationSummary:Ljava/lang/String;

    .line 383
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->getNsdManager()Landroid/net/nsd/NsdManager;

    move-result-object v1

    .line 386
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->getDiscoveryListener()Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;

    move-result-object v2

    invoke-static {v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/net/nsd/NsdManager$DiscoveryListener;

    move-result-object v2

    .line 383
    const-string v3, "_carplay-ctrl._tcp"

    invoke-static {v1, v3, v0, v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdManager;Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 388
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->discoveryRequested:Z

    return-void
.end method

.method private final startSystemNsdFallback()V
    .locals 10

    .line 393
    const-string/jumbo v1, "xcertplay-bonjour"

    .line 0
    const-string v0, "AirPlay Bonjour fell back to system NSD "

    .line 393
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    return-void

    .line 395
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->startSystemNsd()V

    .line 396
    iget-object v4, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->publicationSummary:Ljava/lang/String;

    const-string v5, "mode=system-nsd"

    const-string v6, "mode=nsd-after-5353-busy"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->publicationSummary:Ljava/lang/String;

    .line 397
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->publicationSummary:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 399
    const-string/jumbo v2, "system NSD fallback after 5353 busy failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->publicationSummary:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " fallback=none"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->publicationSummary:Ljava/lang/String;

    return-void
.end method

.method private final txtSummary(Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 426
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const-string p1, ","

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string/jumbo p1, "{"

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo p1, "}"

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v6, Lcom/shilapi/xcertplay/network/CarPlayBonjour$$ExternalSyntheticLambda20;

    invoke-direct {v6}, Lcom/shilapi/xcertplay/network/CarPlayBonjour$$ExternalSyntheticLambda20;-><init>()V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final txtSummary$lambda$26(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "<destruct>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x5

    .line 427
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "features"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "flags"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "model"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "srcvers"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "protovers"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->lifecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 321
    :try_start_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    .line 322
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->registrationRequested:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 323
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->registrationRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 324
    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->getNsdManager()Landroid/net/nsd/NsdManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->getRegistrationListener()Lcom/shilapi/xcertplay/network/CarPlayBonjour$registrationListener$2$1;

    move-result-object v3

    invoke-static {v3}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/net/nsd/NsdManager$RegistrationListener;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdManager$RegistrationListener;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->discoveryRequested:Z

    if-eqz v1, :cond_2

    .line 327
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->discoveryRequested:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 328
    :try_start_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->getNsdManager()Landroid/net/nsd/NsdManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->getDiscoveryListener()Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;

    move-result-object v2

    invoke-static {v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/net/nsd/NsdManager$DiscoveryListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->activeSocket:Ljava/net/Socket;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v1, :cond_3

    :try_start_6
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_7
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_3
    const/4 v1, 0x0

    .line 331
    iput-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->activeSocket:Ljava/net/Socket;

    .line 332
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->services:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 333
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->interfaceServices:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 334
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->discoveryEvents:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 335
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->interfaceMdns:Ljavax/jmdns/JmDNS;

    .line 336
    iput-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->interfaceMdns:Ljavax/jmdns/JmDNS;

    .line 337
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->worker:Ljava/lang/Thread;

    .line 338
    iput-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->worker:Ljava/lang/Thread;

    if-eqz v3, :cond_4

    .line 339
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 340
    :cond_4
    iget-object v4, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 341
    :cond_5
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 319
    monitor-exit v0

    .line 342
    :try_start_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljavax/jmdns/JmDNS;->close()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_6
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    if-eqz v3, :cond_7

    .line 343
    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->joinWorker(Ljava/lang/Thread;)V

    :cond_7
    return-void

    :catchall_4
    move-exception v1

    .line 319
    monitor-exit v0

    throw v1
.end method

.method public final getPublicationSummary()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->publicationSummary:Ljava/lang/String;

    return-object v0
.end method

.method public final reannounce()Ljava/lang/String;
    .locals 11

    const-string v0, "re-announced in "

    .line 302
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->lifecycleLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->interfaceMdns:Ljavax/jmdns/JmDNS;

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v1

    if-nez v2, :cond_1

    const-string v0, "not running"

    return-object v0

    .line 303
    :cond_1
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 305
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->registeredInfo:Ljavax/jmdns/ServiceInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Ljavax/jmdns/JmDNS;->unregisterService(Ljavax/jmdns/ServiceInfo;)V

    .line 307
    :cond_2
    const-string v5, "_airplay._tcp.local."

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getPort()I

    move-result v7

    .line 308
    sget-object v1, Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;->INSTANCE:Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;

    iget-object v8, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->config:Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    iget-object v9, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->identity:Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    invoke-virtual {v1, v8, v9}, Lcom/shilapi/xcertplay/network/CarPlayBonjourProtocol;->airPlayTxtRecords(Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;)Ljava/util/Map;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 306
    invoke-static/range {v5 .. v10}, Ljavax/jmdns/ServiceInfo;->create(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    .line 310
    invoke-virtual {v2, v1}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    .line 311
    iput-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->registeredInfo:Ljavax/jmdns/ServiceInfo;

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 313
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    check-cast v0, Ljava/lang/String;

    return-object v0

    :catchall_1
    move-exception v0

    .line 302
    monitor-exit v1

    throw v0
.end method

.method public final start()V
    .locals 7

    const-string v0, "failed "

    .line 253
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->lifecycleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    if-nez v2, :cond_8

    .line 255
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 256
    :try_start_1
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 258
    :try_start_2
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 259
    iget-boolean v3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->useInterfaceMdns:Z

    if-eqz v3, :cond_2

    .line 260
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->localAdvertisedAddress:Ljava/net/InetAddress;

    if-eqz v3, :cond_1

    .line 263
    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->startInterfaceMdns(Ljava/net/InetAddress;)V

    goto :goto_0

    .line 261
    :cond_1
    const-string v3, "Interface mDNS requires a local advertised address"

    .line 260
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 265
    :cond_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->startSystemNsd()V

    .line 267
    :goto_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/shilapi/xcertplay/network/CarPlayBonjour$$ExternalSyntheticLambda25;

    invoke-direct {v4, p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour$$ExternalSyntheticLambda25;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)V

    const-string v5, "carplay-bonjour"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 269
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 267
    iput-object v3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->worker:Ljava/lang/Thread;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 290
    :try_start_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 253
    monitor-exit v1

    return-void

    :catch_0
    move-exception v3

    .line 272
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->publicationSummary:Ljava/lang/String;

    .line 273
    const-string/jumbo v0, "xcertplay-bonjour"

    const-string v4, "AirPlay Bonjour publication failed"

    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v0, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z

    .line 275
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->registrationRequested:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 276
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->registrationRequested:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 277
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->getNsdManager()Landroid/net/nsd/NsdManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->getRegistrationListener()Lcom/shilapi/xcertplay/network/CarPlayBonjour$registrationListener$2$1;

    move-result-object v4

    invoke-static {v4}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/net/nsd/NsdManager$RegistrationListener;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdManager$RegistrationListener;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->discoveryRequested:Z

    if-eqz v0, :cond_4

    .line 280
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->discoveryRequested:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 281
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->getNsdManager()Landroid/net/nsd/NsdManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->getDiscoveryListener()Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;

    move-result-object v2

    invoke-static {v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/net/nsd/NsdManager$DiscoveryListener;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_8
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->worker:Ljava/lang/Thread;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 285
    :try_start_9
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->interfaceMdns:Ljavax/jmdns/JmDNS;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljavax/jmdns/JmDNS;->close()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_6
    move-object v2, v0

    :goto_3
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v2

    :try_start_a
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :goto_4
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->interfaceMdns:Ljavax/jmdns/JmDNS;

    .line 287
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 288
    :cond_7
    throw v3

    .line 254
    :cond_8
    const-string v0, "CarPlayBonjour is closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    .line 253
    monitor-exit v1

    throw v0
.end method
