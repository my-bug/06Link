.class public final Lcom/shilapi/xcertplay/network/CarPlayVpnService;
.super Landroid/net/VpnService;
.source "CarPlayVpnService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;,
        Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;,
        Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;,
        Lcom/shilapi/xcertplay/network/CarPlayVpnService$LocalBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayVpnService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayVpnService.kt\ncom/shilapi/xcertplay/network/CarPlayVpnService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,495:1\n1#2:496\n1761#3,2:497\n1761#3,3:499\n1763#3:502\n1869#3,2:503\n*S KotlinDebug\n*F\n+ 1 CarPlayVpnService.kt\ncom/shilapi/xcertplay/network/CarPlayVpnService\n*L\n271#1:497,2\n272#1:499,3\n271#1:502\n407#1:503,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0002\u0008\u0006\u0018\u0000 X2\u00020\u0001:\u0004UVWXB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016JP\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200Jf\u00101\u001a\u00020\u001e2\u0006\u00102\u001a\u0002032\u000e\u0008\u0002\u00104\u001a\u0008\u0012\u0004\u0012\u000203052\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0014\u0008\u0002\u00106\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020807J\u0006\u00109\u001a\u000208J\u0006\u0010:\u001a\u00020;J\r\u0010<\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0002\u0010=J,\u0010>\u001a\u00020\u00102\u0006\u0010?\u001a\u0002032\u0006\u0010@\u001a\u00020\u00182\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020807H\u0002J\u0008\u0010A\u001a\u000208H\u0016J\u0018\u0010B\u001a\u0002082\u0006\u0010C\u001a\u00020\u00182\u0006\u0010D\u001a\u00020\u000eH\u0002J,\u0010E\u001a\u00020\u00102\u0006\u0010?\u001a\u0002032\u0006\u0010@\u001a\u00020\u00182\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020807H\u0002J\u0010\u0010F\u001a\u00020;2\u0006\u0010?\u001a\u000203H\u0002J\"\u0010G\u001a\u0002082\u0006\u0010C\u001a\u00020\u00182\u0006\u0010H\u001a\u00020\u00102\u0008\u0008\u0002\u0010I\u001a\u00020;H\u0002J\u001a\u0010J\u001a\u0004\u0018\u00010K2\u0006\u0010C\u001a\u00020\u00182\u0006\u0010L\u001a\u00020\u0010H\u0002J\u0010\u0010M\u001a\u0002082\u0006\u0010N\u001a\u00020\u000cH\u0002J\u0012\u0010O\u001a\u0002082\u0008\u0010N\u001a\u0004\u0018\u00010\u000cH\u0002J\u0008\u0010P\u001a\u000208H\u0002J \u0010Q\u001a\u0002082\u0006\u0010C\u001a\u00020\u00182\u0006\u0010-\u001a\u00020.2\u0006\u0010R\u001a\u00020SH\u0002J\u0008\u0010T\u001a\u000208H\u0002R\u0012\u0010\u0004\u001a\u00060\u0005R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/CarPlayVpnService;",
        "Landroid/net/VpnService;",
        "<init>",
        "()V",
        "binder",
        "Lcom/shilapi/xcertplay/network/CarPlayVpnService$LocalBinder;",
        "active",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "sessionsLock",
        "",
        "sessions",
        "",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
        "attachment",
        "Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;",
        "serverSocket",
        "Ljava/net/ServerSocket;",
        "extraServerSockets",
        "",
        "bridge",
        "Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;",
        "tun",
        "Landroid/os/ParcelFileDescriptor;",
        "attachGeneration",
        "",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "attach",
        "Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;",
        "ncm",
        "Lcom/shilapi/xcertplay/transport/NcmUsbBridge;",
        "linkLocal",
        "",
        "hostMac",
        "",
        "config",
        "Lcom/shilapi/xcertplay/airplay/AirPlayConfig;",
        "identity",
        "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
        "pairings",
        "Lcom/shilapi/xcertplay/airplay/PairingStore;",
        "mfi",
        "Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
        "listener",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
        "media",
        "Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
        "attachWireless",
        "bindAddress",
        "Ljava/net/InetAddress;",
        "extraBindAddresses",
        "",
        "onDiagnostic",
        "Lkotlin/Function1;",
        "",
        "detach",
        "isAttached",
        "",
        "boundAirPlayPort",
        "()Ljava/lang/Integer;",
        "bindListenerAnyPort",
        "address",
        "port",
        "onDestroy",
        "startAirPlayServer",
        "generation",
        "replacement",
        "bindListener",
        "isAssigned",
        "acceptLoop",
        "initial",
        "primary",
        "acceptUntilError",
        "Ljava/io/IOException;",
        "server",
        "addSession",
        "session",
        "removeSession",
        "closeSessionsLocked",
        "onTransportError",
        "error",
        "",
        "releaseLocked",
        "LocalBinder",
        "AttachResult",
        "AirPlayAttachment",
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
.field private static final BIND_RETRY_MILLIS:J = 0xfaL

.field private static final BIND_WAIT_MILLIS:J = 0x1770L

.field public static final Companion:Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;

.field private static final LINK_LOCAL_ROUTE:Ljava/lang/String; = "fe80::"

.field private static final LINK_PREFIX:I = 0x40

.field private static final MAX_RELISTENS:I = 0x5

.field private static final SESSION_NAME:Ljava/lang/String; = "xcertplay CarPlay"

.field private static final TAG:Ljava/lang/String; = "xcertplay-usb"

.field private static final TUN_MTU:I = 0x5dc

.field private static final acceptedConnections:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final active:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile attachGeneration:I

.field private volatile attachment:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

.field private final binder:Lcom/shilapi/xcertplay/network/CarPlayVpnService$LocalBinder;

.field private bridge:Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;

.field private final extraServerSockets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/ServerSocket;",
            ">;"
        }
    .end annotation
.end field

.field private serverSocket:Ljava/net/ServerSocket;

.field private final sessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionsLock:Ljava/lang/Object;

.field private tun:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public static synthetic $r8$lambda$4BkU21Lvvgy_WSwyhUkhqnNX5f4(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/net/ServerSocket;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachWireless$lambda$3(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/net/ServerSocket;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8mW8IJ6j4dEpc_69Y9hnEciKS08(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attach$lambda$1(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jj4H-3P9PYg5K7JnbIMyl-4Yom4(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachWireless$lambda$2(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NzJiIMllJxSWNmas38Aai8IN_YE(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/net/ServerSocket;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->startAirPlayServer$lambda$5(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/net/ServerSocket;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d-KhMILzip0DF5uTkd5C_GnAu4Q(Lcom/shilapi/xcertplay/network/CarPlayVpnService;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->onTransportError$lambda$21(Lcom/shilapi/xcertplay/network/CarPlayVpnService;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->Companion:Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;

    .line 466
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->acceptedConnections:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 59
    new-instance v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$LocalBinder;-><init>(Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->binder:Lcom/shilapi/xcertplay/network/CarPlayVpnService$LocalBinder;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->sessionsLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->sessions:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->extraServerSockets:Ljava/util/List;

    return-void
.end method

.method private final acceptLoop(ILjava/net/ServerSocket;Z)V
    .locals 10

    const/4 v0, 0x0

    .line 284
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->acceptUntilError(ILjava/net/ServerSocket;)Ljava/io/IOException;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachment:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    .line 286
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachGeneration:I

    if-ne p1, v3, :cond_9

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    if-nez p3, :cond_2

    .line 289
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getOnDiagnostic()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AirPlay extra listener stopped: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 292
    :cond_2
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getWireless()Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x5

    if-le v0, v3, :cond_3

    goto/16 :goto_5

    .line 300
    :cond_3
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getOnDiagnostic()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 301
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->isAssigned(Ljava/net/InetAddress;)Z

    move-result v6

    iget-object v7, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->sessionsLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->sessions:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "AirPlay listener lost: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " addressAssigned="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " sessions="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; listening again"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 304
    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v6, p0

    check-cast v6, Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    invoke-virtual {p2}, Ljava/net/ServerSocket;->close()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_2
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :goto_1
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getConfig()Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getPort()I

    move-result v6

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getOnDiagnostic()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    invoke-direct {p0, p2, v6, v7}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->bindListener(Ljava/net/InetAddress;ILkotlin/jvm/functions/Function1;)Ljava/net/ServerSocket;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 307
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getOnDiagnostic()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "AirPlay listener could not listen again: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v5

    .line 310
    :goto_2
    monitor-enter p0

    if-eqz p2, :cond_4

    .line 311
    :try_start_3
    iget-object v6, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachGeneration:I

    if-ne p1, v6, :cond_4

    .line 312
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->serverSocket:Ljava/net/ServerSocket;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v6, p2

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 310
    monitor-exit p0

    throw p1

    :cond_4
    move-object v6, v5

    :goto_3
    monitor-exit p0

    if-nez v6, :cond_6

    .line 319
    :try_start_4
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p3, p0

    check-cast p3, Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/net/ServerSocket;->close()V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_5
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p3

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    if-nez p2, :cond_9

    .line 320
    iget-object p2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_9

    iget p2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachGeneration:I

    if-ne p1, p2, :cond_9

    .line 321
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getListener()Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object p2

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, p1, p2, v1}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->onTransportError(ILcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 325
    :cond_6
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getOnDiagnostic()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AirPlay listener listening again after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v6

    goto/16 :goto_0

    :catchall_3
    move-exception p1

    .line 301
    monitor-exit v7

    throw p1

    .line 293
    :cond_7
    :goto_5
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getWireless()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getOnDiagnostic()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "AirPlay listener lost "

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " times; restarting the connection"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_8
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getListener()Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object p2

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, p1, p2, v1}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->onTransportError(ILcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    return-void
.end method

.method static synthetic acceptLoop$default(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/net/ServerSocket;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 276
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->acceptLoop(ILjava/net/ServerSocket;Z)V

    return-void
.end method

.method private final acceptUntilError(ILjava/net/ServerSocket;)Ljava/io/IOException;
    .locals 10

    :goto_0
    const/4 v1, 0x0

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    invoke-virtual {p2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    const-string v0, "accept(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    const-string/jumbo v0, "xcertplay-usb"

    .line 340
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    const-string v2, "IPv6"

    goto :goto_1

    :cond_0
    const-string v2, "IPv4"

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "airplay connection accepted from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    sget-object v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->acceptedConnections:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const/4 v0, 0x1

    .line 342
    invoke-virtual {v3, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 343
    invoke-virtual {v3, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    const/4 v2, 0x0

    .line 344
    invoke-virtual {v3, v0, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 345
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 350
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachment:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    if-nez v0, :cond_2

    .line 352
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 353
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    .line 355
    :cond_2
    :try_start_5
    new-instance v2, Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    .line 357
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getConfig()Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    move-result-object v4

    .line 358
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getIdentity()Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;

    move-result-object v5

    .line 359
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getPairings()Lcom/shilapi/xcertplay/airplay/PairingStore;

    move-result-object v6

    .line 360
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getMfi()Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    move-result-object v7

    .line 361
    new-instance v8, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;

    invoke-direct {v8, v0, p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;-><init>(Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    check-cast v8, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 385
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getMedia()Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    move-result-object v9

    .line 355
    invoke-direct/range {v2 .. v9}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;-><init>(Ljava/net/Socket;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;)V

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getWireless()Z

    move-result v4

    invoke-virtual {v2, p0, v4}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->configureNavigationVoice(Landroid/content/Context;Z)V

    .line 386
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->addSession(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 345
    :try_start_6
    monitor-exit p0

    .line 388
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->start()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 345
    monitor-exit p0

    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 391
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachGeneration:I

    if-ne p1, v0, :cond_3

    return-object p2

    :cond_3
    return-object v1
.end method

.method public static final synthetic access$getAcceptedConnections$cp()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->acceptedConnections:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public static final synthetic access$removeSession(Lcom/shilapi/xcertplay/network/CarPlayVpnService;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->removeSession(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method private final addSession(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->sessionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->sessions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private static final attach$lambda$1(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 1

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->onTransportError(ILcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/Throwable;)V

    .line 117
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic attachWireless$default(Lcom/shilapi/xcertplay/network/CarPlayVpnService;Ljava/net/InetAddress;Ljava/util/List;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 139
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit16 p2, v0, 0x100

    if-eqz p2, :cond_1

    .line 146
    new-instance p2, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda1;-><init>()V

    move-object v9, p2

    goto :goto_0

    :cond_1
    move-object/from16 v9, p9

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 136
    invoke-virtual/range {v0 .. v9}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachWireless(Ljava/net/InetAddress;Ljava/util/List;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;

    move-result-object p0

    return-object p0
.end method

.method private static final attachWireless$lambda$2(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final attachWireless$lambda$3(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/net/ServerSocket;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->acceptLoop(ILjava/net/ServerSocket;Z)V

    return-void
.end method

.method private final bindListener(Ljava/net/InetAddress;ILkotlin/jvm/functions/Function1;)Ljava/net/ServerSocket;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/net/ServerSocket;"
        }
    .end annotation

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 247
    :goto_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3}, Ljava/net/ServerSocket;-><init>()V

    const/4 v4, 0x1

    .line 249
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 250
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    check-cast v5, Ljava/net/SocketAddress;

    invoke-virtual {v3, v5}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    if-lez v2, :cond_0

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AirPlay listener bound after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " retries ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms; address was not ready)"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v3

    :catch_0
    move-exception v5

    .line 256
    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :goto_1
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Ljava/lang/CharSequence;

    const-string v6, "assign requested address"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v3, v6, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-ne v3, v4, :cond_2

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v6, 0x1770

    cmp-long v8, v3, v6

    if-ltz v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v3, 0xfa

    .line 264
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 259
    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 260
    instance-of v1, p1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_3

    const-string v1, "IPv6"

    goto :goto_3

    :cond_3
    const-string v1, "IPv4"

    :goto_3
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->isAssigned(Ljava/net/InetAddress;)Z

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AirPlay listener bind failed after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " retries: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " family="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " addressAssigned="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    goto :goto_5

    :goto_4
    throw v5

    :goto_5
    goto :goto_4
.end method

.method private final bindListenerAnyPort(Ljava/net/InetAddress;ILkotlin/jvm/functions/Function1;)Ljava/net/ServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/net/ServerSocket;"
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/shilapi/xcertplay/network/AirPlayPorts;->INSTANCE:Lcom/shilapi/xcertplay/network/AirPlayPorts;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/network/AirPlayPorts;->candidates(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 201
    :try_start_0
    invoke-direct {p0, p1, v1, p3}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->bindListener(Ljava/net/InetAddress;ILkotlin/jvm/functions/Function1;)Ljava/net/ServerSocket;

    move-result-object v2

    if-eq v1, p2, :cond_0

    .line 204
    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AirPlay port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is held by another process on this head unit; listening on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " instead (advertised in Bonjour and the start session)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v2

    :catch_0
    move-exception v1

    .line 208
    sget-object v2, Lcom/shilapi/xcertplay/network/AirPlayPorts;->INSTANCE:Lcom/shilapi/xcertplay/network/AirPlayPorts;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/network/AirPlayPorts;->isInUse(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    throw v1

    :cond_2
    if-eqz v1, :cond_3

    .line 212
    check-cast v1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "no AirPlay port"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    :goto_1
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private final closeSessionsLocked()V
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->sessionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->sessions:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 503
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :try_start_1
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 411
    :try_start_2
    const-string/jumbo v3, "xcertplay-usb"

    const-string v4, "AirPlay session replacement failed"

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->sessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 415
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private final isAssigned(Ljava/net/InetAddress;)Z
    .locals 6

    .line 270
    const-string v0, "list(...)"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    .line 271
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 497
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 498
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 272
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 499
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 500
    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 272
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 p1, 0x1

    .line 273
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 270
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 274
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object p1, v0

    :cond_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private final onTransportError(ILcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/Throwable;)V
    .locals 4

    .line 423
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->INSTANCE:Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CarPlay transport stopped: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/diagnostics/LogcatRedaction;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xcertplay-usb"

    invoke-static {v2, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    new-instance p3, Ljava/lang/Thread;

    .line 435
    new-instance v1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda5;-><init>(Lcom/shilapi/xcertplay/network/CarPlayVpnService;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;I)V

    .line 434
    const-string p1, "airplay-teardown"

    .line 425
    invoke-direct {p3, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 436
    invoke-virtual {p3, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 437
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final onTransportError$lambda$21(Lcom/shilapi/xcertplay/network/CarPlayVpnService;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;I)V
    .locals 1

    .line 427
    monitor-enter p0

    .line 428
    :try_start_0
    iget v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachGeneration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p3, v0, :cond_0

    monitor-exit p0

    return-void

    .line 429
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->releaseLocked()V

    .line 430
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    monitor-exit p0

    .line 431
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onTransportError(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->stopSelf()V

    return-void

    :catchall_0
    move-exception p1

    .line 427
    monitor-exit p0

    throw p1
.end method

.method private final releaseLocked()V
    .locals 4

    .line 443
    iget v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachGeneration:I

    .line 444
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 445
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachment:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    .line 446
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 447
    :cond_0
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->serverSocket:Ljava/net/ServerSocket;

    .line 448
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->extraServerSockets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/ServerSocket;

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 449
    :cond_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->extraServerSockets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 450
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->closeSessionsLocked()V

    .line 451
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->bridge:Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->close()V

    .line 452
    :cond_2
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->bridge:Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;

    .line 453
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->tun:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 454
    :cond_3
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->tun:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method private final removeSession(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->sessionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->sessions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final startAirPlayServer(ILcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;)V
    .locals 36

    move-object/from16 v0, p0

    .line 224
    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getConfig()Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getPort()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getOnDiagnostic()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->bindListenerAnyPort(Ljava/net/InetAddress;ILkotlin/jvm/functions/Function1;)Ljava/net/ServerSocket;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getConfig()Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getPort()I

    move-result v3

    if-ne v2, v3, :cond_0

    move-object/from16 v2, p2

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getConfig()Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v12

    const v22, 0x1ff7f

    const/16 v23, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v4 .. v23}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->copy$default(Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;ZIIZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    move-result-object v26

    const/16 v34, 0x1fd

    const/16 v35, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v24, p2

    invoke-static/range {v24 .. v35}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->copy$default(Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;Ljava/net/InetAddress;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    move-result-object v2

    .line 227
    :goto_0
    iput-object v2, v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachment:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    .line 229
    iput-object v1, v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->serverSocket:Ljava/net/ServerSocket;

    .line 230
    new-instance v2, Ljava/lang/Thread;

    .line 233
    new-instance v3, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda2;

    move/from16 v4, p1

    invoke-direct {v3, v0, v4, v1}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/net/ServerSocket;)V

    .line 232
    const-string v1, "airplay-accept"

    .line 230
    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 234
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 235
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final startAirPlayServer$lambda$5(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/net/ServerSocket;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 231
    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->acceptLoop$default(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/net/ServerSocket;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized attach(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Ljava/lang/String;[BLcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;)Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;
    .locals 13

    move-object/from16 v1, p3

    move-object/from16 v6, p8

    const-string/jumbo v2, "tun descriptor stays non-blocking errno="

    monitor-enter p0

    :try_start_0
    const-string v3, "ncm"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "linkLocal"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "hostMac"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "config"

    move-object/from16 v4, p4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "identity"

    move-object/from16 v5, p5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "pairings"

    move-object/from16 v7, p6

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "listener"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "media"

    move-object/from16 v8, p9

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    const-string/jumbo v3, "xcertplay-usb"

    const-string v9, "replacing stale NCM/VPN attachment"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->releaseLocked()V

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    iget v3, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachGeneration:I

    add-int/2addr v3, v9

    iput v3, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachGeneration:I

    iget v12, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachGeneration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 94
    instance-of v10, v3, Ljava/net/Inet6Address;

    if-eqz v10, :cond_5

    move-object v10, v3

    check-cast v10, Ljava/net/Inet6Address;

    invoke-virtual {v10}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 97
    array-length v10, v1

    const/4 v11, 0x6

    if-ne v10, v11, :cond_4

    .line 99
    new-instance v10, Landroid/net/VpnService$Builder;

    move-object v11, p0

    check-cast v11, Landroid/net/VpnService;

    invoke-direct {v10, v11}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    const/16 v11, 0x40

    .line 100
    invoke-virtual {v10, p2, v11}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    .line 101
    const-string v10, "fe80::"

    invoke-virtual {v0, v10, v11}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    .line 102
    const-string/jumbo v10, "xcertplay CarPlay"

    invoke-virtual {v0, v10}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v0

    const/16 v10, 0x5dc

    .line 103
    invoke-virtual {v0, v10}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    move-result-object v0

    const-string/jumbo v10, "setMtu(...)"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v10, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->INSTANCE:Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->getLegacyTlsAndTun()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v0, v9}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/VpnService$Builder;Z)Landroid/net/VpnService$Builder;

    .line 107
    :cond_1
    invoke-static/range {v0 .. v0}, Lcom/shilapi/xcertplay/E01WiredVpn;->scope(Landroid/net/VpnService$Builder;)V

    invoke-virtual {v0}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 109
    sget-object v9, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->INSTANCE:Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->getLegacyTlsAndTun()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 110
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v9

    invoke-static {v9}, Lcom/shilapi/xcertplay/compat/LegacyFd;->setBlocking(I)I

    move-result v9

    if-eqz v9, :cond_2

    .line 111
    const-string/jumbo v10, "xcertplay-usb"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_2
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->tun:Landroid/os/ParcelFileDescriptor;

    .line 115
    new-instance v2, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;

    new-instance v9, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0, v12, v6}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILcom/shilapi/xcertplay/airplay/AirPlaySessionListener;)V

    invoke-direct {v2, p1, v0, v1, v9}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;-><init>(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Landroid/os/ParcelFileDescriptor;[BLkotlin/jvm/functions/Function1;)V

    .line 118
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;->start()V

    .line 119
    iput-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->bridge:Lcom/shilapi/xcertplay/network/Ipv6NcmBridge;

    .line 123
    new-instance v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    const/16 v10, 0x180

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v7

    move-object/from16 v5, p7

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v11}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;-><init>(Ljava/net/InetAddress;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 121
    invoke-direct {p0, v12, v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->startAirPlayServer(ILcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;)V

    .line 125
    sget-object p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Started;->INSTANCE:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Started;

    check-cast p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;

    goto :goto_0

    .line 108
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "VpnService.establish returned null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_4
    const-string p1, "hostMac must be 6 bytes"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "linkLocal must be a link-local IPv6 literal"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 127
    :try_start_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->releaseLocked()V

    .line 128
    new-instance v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Failed;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Failed;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    check-cast p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized attachWireless(Ljava/net/InetAddress;Ljava/util/List;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;",
            "Lcom/shilapi/xcertplay/airplay/AirPlayConfig;",
            "Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;",
            "Lcom/shilapi/xcertplay/airplay/PairingStore;",
            "Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
            "Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;"
        }
    .end annotation

    move-object/from16 v9, p9

    monitor-enter p0

    :try_start_0
    const-string v0, "bindAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraBindAddresses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    move-object v2, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identity"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairings"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "media"

    move-object/from16 v7, p8

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiagnostic"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string/jumbo v0, "xcertplay-usb"

    const-string v1, "replacing stale local-only Wi-Fi attachment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->releaseLocked()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    iget v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachGeneration:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachGeneration:I

    iget v11, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachGeneration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :try_start_1
    new-instance v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    const/4 v8, 0x1

    move-object v1, p1

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;-><init>(Ljava/net/InetAddress;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;ZLkotlin/jvm/functions/Function1;)V

    .line 155
    invoke-direct {p0, v11, v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->startAirPlayServer(ILcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;)V

    .line 161
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :try_start_2
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->boundAirPlayPort()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getPort()I

    move-result v0

    :goto_1
    invoke-direct {p0, v1, v0, v9}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->bindListener(Ljava/net/InetAddress;ILkotlin/jvm/functions/Function1;)Ljava/net/ServerSocket;

    move-result-object v0

    .line 164
    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->extraServerSockets:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v11, v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILjava/net/ServerSocket;)V

    const-string v0, "airplay-accept-extra"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2, v10}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 167
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 170
    :try_start_3
    const-string/jumbo v2, "xcertplay-usb"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extra AirPlay listener on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 173
    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Started;->INSTANCE:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Started;

    check-cast p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 175
    :try_start_4
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->releaseLocked()V

    .line 176
    new-instance v0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Failed;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult$Failed;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    check-cast p1, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AttachResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    :goto_2
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final boundAirPlayPort()Ljava/lang/Integer;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachment:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getConfig()Lcom/shilapi/xcertplay/airplay/AirPlayConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayConfig;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized detach()V
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->releaseLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final isAttached()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->attachment:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->binder:Lcom/shilapi/xcertplay/network/CarPlayVpnService$LocalBinder;

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 216
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->detach()V

    .line 217
    invoke-super {p0}, Landroid/net/VpnService;->onDestroy()V

    return-void
.end method
