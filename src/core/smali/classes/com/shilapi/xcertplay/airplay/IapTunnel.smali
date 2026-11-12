.class public final Lcom/shilapi/xcertplay/airplay/IapTunnel;
.super Ljava/lang/Object;
.source "IapTunnel.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/IapTunnel$Companion;,
        Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIapTunnel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IapTunnel.kt\ncom/shilapi/xcertplay/airplay/IapTunnel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,233:1\n1869#2,2:234\n1869#2,2:236\n1869#2,2:238\n1#3:240\n37#4:241\n36#4,3:242\n*S KotlinDebug\n*F\n+ 1 IapTunnel.kt\ncom/shilapi/xcertplay/airplay/IapTunnel\n*L\n75#1:234,2\n97#1:236,2\n99#1:238,2\n188#1:241\n188#1:242,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 -2\u00020\u0001:\u0002,-B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0019\u001a\u00020\u000eH\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0010\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\u000eH\u0002J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010#\u001a\u00020\u0010H\u0002J\u001c\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030%2\u0006\u0010&\u001a\u00020\u0003H\u0002J\u0010\u0010\'\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0003H\u0002J\u0018\u0010(\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0018H\u0002J\u0018\u0010+\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0018H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/IapTunnel;",
        "Ljava/io/Closeable;",
        "readKey",
        "",
        "bindAddress",
        "Ljava/net/InetAddress;",
        "<init>",
        "([BLjava/net/InetAddress;)V",
        "closed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "readCounter",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "servers",
        "",
        "Ljava/net/ServerSocket;",
        "socket",
        "Ljava/net/Socket;",
        "threads",
        "Ljava/lang/Thread;",
        "peerConnected",
        "Ljava/util/concurrent/CountDownLatch;",
        "listener",
        "Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;",
        "listen",
        "",
        "bindAny",
        "close",
        "",
        "awaitPeerConnection",
        "",
        "timeoutMillis",
        "",
        "accept",
        "bound",
        "run",
        "sock",
        "decryptFrames",
        "Lkotlin/Pair;",
        "buffer",
        "parsePackages",
        "readU16Le",
        "source",
        "offset",
        "readU32Be",
        "Listener",
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
.field private static final Companion:Lcom/shilapi/xcertplay/airplay/IapTunnel$Companion;

.field public static final FRAME_HEADER_LEN:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_PACKAGE:I = 0x400000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE_TYPE_OFFSET:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MSG_TYPE_COMM:I = 0x636f6d6d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PACKAGE_HEADER_LEN:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final READ_CHUNK_BYTES:I = 0x4000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_SIZE:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final bindAddress:Ljava/net/InetAddress;

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile listener:Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

.field private final peerConnected:Ljava/util/concurrent/CountDownLatch;

.field private final readCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final readKey:[B

.field private final servers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/ServerSocket;",
            ">;"
        }
    .end annotation
.end field

.field private socket:Ljava/net/Socket;

.field private final threads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2VhG46JTyrJiNkylJ4rGO-DIB4A(Ljava/net/ServerSocket;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listen$lambda$1$lambda$0(Ljava/net/ServerSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6eUoRdZub4gWtWya97h60jprfSY(Ljava/net/ServerSocket;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->bindAny$lambda$8(Ljava/net/ServerSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B1pq_obwXNVd5NIqyGYiHLPFuXM(Ljava/net/ServerSocket;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->bindAny$lambda$9(Ljava/net/ServerSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E7TAnbW8u0otqvWiBAj9YoIUOwg(Lcom/shilapi/xcertplay/airplay/IapTunnel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->bindAny$lambda$7(Lcom/shilapi/xcertplay/airplay/IapTunnel;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W3rnPnurS_kR0momdfH98e2GP7Y(Lcom/shilapi/xcertplay/airplay/IapTunnel;Ljava/net/ServerSocket;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listen$lambda$6$lambda$4(Lcom/shilapi/xcertplay/airplay/IapTunnel;Ljava/net/ServerSocket;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/IapTunnel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->Companion:Lcom/shilapi/xcertplay/airplay/IapTunnel$Companion;

    return-void
.end method

.method public constructor <init>([BLjava/net/InetAddress;)V
    .locals 2

    const-string v0, "readKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->readKey:[B

    .line 36
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->readCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->bindAddress:Ljava/net/InetAddress;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->servers:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->threads:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->peerConnected:Ljava/util/concurrent/CountDownLatch;

    .line 43
    new-instance p1, Lcom/shilapi/xcertplay/airplay/IapTunnel$listener$1;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$listener$1;-><init>()V

    check-cast p1, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listener:Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    return-void
.end method

.method public synthetic constructor <init>([BLjava/net/InetAddress;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/IapTunnel;-><init>([BLjava/net/InetAddress;)V

    return-void
.end method

.method private final accept(Ljava/net/ServerSocket;)V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listener:Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    .line 117
    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AirPlay iAP tunnel accepting local="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-interface {v0, v1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;->onDebug(Ljava/lang/String;)V

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 131
    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->socket:Ljava/net/Socket;

    .line 132
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->readCounter:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 133
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->peerConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 134
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listener:Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/SocketAddress;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1, v2}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;->onOpen(Ljava/lang/String;)V

    .line 135
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->run(Ljava/net/Socket;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listener:Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;->onClosed(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private final bindAny()Ljava/net/ServerSocket;
    .locals 9

    .line 86
    new-instance v4, Lcom/shilapi/xcertplay/airplay/IapTunnel$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/shilapi/xcertplay/airplay/IapTunnel$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/airplay/IapTunnel;)V

    .line 87
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->bindAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->bindAddress:Ljava/net/InetAddress;

    new-instance v6, Lcom/shilapi/xcertplay/airplay/IapTunnel$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/shilapi/xcertplay/airplay/IapTunnel$$ExternalSyntheticLambda1;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v4

    const/4 v4, 0x1

    invoke-static/range {v0 .. v8}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindServer$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/net/InetAddress;IIZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, v4

    .line 90
    sget-object v0, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    sget-object v1, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->inet4Any()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v6, Lcom/shilapi/xcertplay/airplay/IapTunnel$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/shilapi/xcertplay/airplay/IapTunnel$$ExternalSyntheticLambda2;-><init>()V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x32

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindServer$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/util/List;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method private static final bindAny$lambda$7(Lcom/shilapi/xcertplay/airplay/IapTunnel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object p0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listener:Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AirPlay iAP tunnel listener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;->onDebug(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final bindAny$lambda$8(Ljava/net/ServerSocket;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final bindAny$lambda$9(Ljava/net/ServerSocket;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final decryptFrames([B)Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lkotlin/Pair<",
            "[B[B>;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 175
    :goto_0
    array-length v3, p1

    sub-int/2addr v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 176
    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->readU16Le([BI)I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    .line 178
    array-length v4, p1

    sub-int/2addr v4, v2

    if-lt v4, v3, :cond_0

    add-int/lit8 v4, v2, 0x2

    .line 179
    invoke-static {p1, v2, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v5

    add-int/2addr v2, v3

    .line 180
    invoke-static {p1, v4, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    .line 181
    sget-object v4, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    .line 182
    iget-object v6, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->readKey:[B

    sget-object v7, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    iget-object v8, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->readCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->nonce64(J)[B

    move-result-object v7

    .line 181
    invoke-virtual {v4, v6, v7, v3, v5}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->chachaOpen([B[B[B[B)[B

    move-result-object v3

    .line 184
    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->readCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 185
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_0
    check-cast v0, Ljava/util/Collection;

    .line 244
    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 188
    check-cast v0, [[B

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/BytesKt;->concatBytes([[B)[B

    move-result-object v0

    array-length v1, p1

    invoke-static {p1, v2, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static final listen$lambda$1$lambda$0(Ljava/net/ServerSocket;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final listen$lambda$6$lambda$4(Lcom/shilapi/xcertplay/airplay/IapTunnel;Ljava/net/ServerSocket;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->accept(Ljava/net/ServerSocket;)V

    return-void
.end method

.method private final parsePackages([B)[B
    .locals 6

    const/4 v0, 0x0

    .line 193
    :goto_0
    array-length v1, p1

    sub-int/2addr v1, v0

    const/16 v2, 0x20

    if-lt v1, v2, :cond_2

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->readU32Be([BI)I

    move-result v1

    if-lt v1, v2, :cond_1

    const/high16 v2, 0x400000

    if-gt v1, v2, :cond_1

    .line 201
    array-length v2, p1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2

    add-int/lit8 v2, v0, 0x10

    .line 202
    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->readU32Be([BI)I

    move-result v2

    const v3, 0x636f6d6d

    if-ne v2, v3, :cond_0

    .line 204
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listener:Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    add-int/lit8 v3, v1, -0x20

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AirPlay iAP tunnel package type=comm body="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-interface {v2, v3}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;->onDebug(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listener:Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    add-int/lit8 v3, v0, 0x20

    add-int v4, v0, v1

    invoke-static {p1, v3, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;->onIap([B)V

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    .line 199
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AirPlay iAP tunnel package size "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_2
    array-length v1, p1

    invoke-static {p1, v0, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method private final readU16Le([BI)I
    .locals 1

    .line 215
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method private final readU32Be([BI)I
    .locals 2

    .line 218
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    .line 219
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    .line 220
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    .line 221
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private final run(Ljava/net/Socket;)V
    .locals 8

    const/4 v0, 0x0

    .line 140
    new-array v1, v0, [B

    .line 141
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 145
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x4000

    .line 146
    new-array v5, v5, [B

    .line 147
    :goto_0
    iget-object v6, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_2

    .line 148
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-gez v6, :cond_0

    .line 150
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listener:Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    const-string v1, "AirPlay iAP tunnel peer EOF"

    invoke-interface {v0, v1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;->onDebug(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listener:Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    const-string v7, "AirPlay iAP tunnel received data"

    invoke-interface {v0, v7}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;->onDebug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 157
    :cond_1
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    const-string v7, "copyOf(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v1

    .line 158
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->decryptFrames([B)Lkotlin/Pair;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v2, v6}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v2

    .line 160
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 161
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->parsePackages([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 166
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->socket:Ljava/net/Socket;

    if-ne v0, p1, :cond_3

    iput-object v3, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->socket:Ljava/net/Socket;

    .line 167
    :cond_3
    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    .line 168
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 164
    :try_start_1
    check-cast v0, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->socket:Ljava/net/Socket;

    if-ne v1, p1, :cond_4

    iput-object v3, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->socket:Ljava/net/Socket;

    .line 167
    :cond_4
    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    .line 168
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listener:Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    invoke-interface {p1, v0}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;->onClosed(Ljava/lang/Throwable;)V

    :cond_5
    return-void

    .line 166
    :goto_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->socket:Ljava/net/Socket;

    if-ne v1, p1, :cond_6

    iput-object v3, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->socket:Ljava/net/Socket;

    .line 167
    :cond_6
    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    .line 168
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final awaitPeerConnection(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->peerConnected:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 110
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const/4 p1, 0x0

    return p1

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "timeoutMillis must not be negative"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->socket:Ljava/net/Socket;

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    .line 97
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->servers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 236
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .line 97
    invoke-static {v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionKt;->safeClose(Ljava/io/Closeable;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->servers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->threads:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 238
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 99
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->threads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->peerConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final listen(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;)I
    .locals 13

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listener:Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    .line 47
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->bindAny()Ljava/net/ServerSocket;

    move-result-object v1

    .line 48
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->servers:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AirPlay iAP tunnel listener bound="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;->onDebug(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->inet4Any()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->ipv6WildcardUsable$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->inet6Any()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_0
    if-nez v0, :cond_2

    .line 59
    const-string v0, "AirPlay iAP tunnel secondary listener skipped: \"::\" cannot be bound below API 21"

    invoke-interface {p1, v0}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;->onDebug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 61
    :cond_2
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/airplay/IapTunnel;

    .line 62
    sget-object v4, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v6

    new-instance v10, Lcom/shilapi/xcertplay/airplay/IapTunnel$$ExternalSyntheticLambda3;

    invoke-direct {v10}, Lcom/shilapi/xcertplay/airplay/IapTunnel$$ExternalSyntheticLambda3;-><init>()V

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/16 v7, 0x32

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v12}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindServer$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/util/List;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/ServerSocket;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Ljava/net/ServerSocket;

    .line 64
    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->servers:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AirPlay iAP tunnel secondary listener bound="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-interface {p1, v3}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;->onDebug(Ljava/lang/String;)V

    .line 69
    :cond_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 71
    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AirPlay iAP tunnel secondary listener failed port="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-interface {p1, v3}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;->onDebug(Ljava/lang/String;)V

    .line 69
    :cond_4
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 75
    :goto_2
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->servers:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 234
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/ServerSocket;

    .line 76
    iget-object v3, p0, Lcom/shilapi/xcertplay/airplay/IapTunnel;->threads:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/shilapi/xcertplay/airplay/IapTunnel$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v0}, Lcom/shilapi/xcertplay/airplay/IapTunnel$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/airplay/IapTunnel;Ljava/net/ServerSocket;)V

    const-string v0, "airplay-iap-tunnel"

    invoke-direct {v4, v5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v4, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 78
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 76
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 81
    :cond_5
    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    return p1
.end method
