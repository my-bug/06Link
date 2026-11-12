.class public final Lcom/shilapi/xcertplay/network/P2pLegacyChannel;
.super Ljava/lang/Object;
.source "P2pLegacyChannel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;,
        Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nP2pLegacyChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 P2pLegacyChannel.kt\ncom/shilapi/xcertplay/network/P2pLegacyChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,99:1\n1#2:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0002()B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001b\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u000bJ\u0015\u0010\u000c\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0010\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0015J4\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\r\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001fJ5\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u00172\u0006\u0010\u001e\u001a\u00020\u001f2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$0\"H\u0000\u00a2\u0006\u0002\u0008%J(\u0010&\u001a\u00020$2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020#H\u0002R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006*"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/P2pLegacyChannel;",
        "",
        "<init>",
        "()V",
        "PREFERRED",
        "",
        "",
        "getPREFERRED",
        "()Ljava/util/List;",
        "candidates",
        "stationMHz",
        "(Ljava/lang/Integer;)Ljava/util/List;",
        "frequencyOf",
        "oc",
        "(I)Ljava/lang/Integer;",
        "channelOf",
        "frequencyMHz",
        "resolve",
        "Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;",
        "readMHz",
        "forcedChannel",
        "(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;",
        "set",
        "Lkotlin/Pair;",
        "Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;",
        "",
        "manager",
        "Landroid/net/wifi/p2p/WifiP2pManager;",
        "channel",
        "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
        "timeoutMillis",
        "",
        "await",
        "call",
        "Lkotlin/Function1;",
        "Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;",
        "",
        "await$shared_release",
        "invokeHidden",
        "listener",
        "Frequency",
        "Outcome",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/P2pLegacyChannel;

.field private static final PREFERRED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$JBi_GfDI7-qbOziHlRiBmyvAoX4(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->set$lambda$2(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pLegacyChannel;

    const/16 v0, 0x95

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v1, v6, v3

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v4, v6, v0

    const/4 v0, 0x4

    aput-object v5, v6, v0

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->PREFERRED:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final invokeHidden(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 91
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v5, p0

    check-cast v5, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;

    .line 92
    const-class v5, Landroid/net/wifi/p2p/WifiP2pManager;

    const-string/jumbo v6, "setWifiP2pChannels"

    .line 93
    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    aput-object v8, v7, v1

    const-class v8, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    aput-object v8, v7, v0

    .line 92
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 91
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 94
    :goto_0
    invoke-static {v5}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    :cond_0
    check-cast v5, Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    return v4

    .line 95
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    aput-object v6, v2, v3

    aput-object p3, v2, v1

    aput-object p4, v2, v0

    invoke-virtual {v5, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public static synthetic set$default(Lcom/shilapi/xcertplay/network/P2pLegacyChannel;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;IJILjava/lang/Object;)Lkotlin/Pair;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-wide/16 p4, 0x5dc

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->set(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;IJ)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final set$lambda$2(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z
    .locals 1

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pLegacyChannel;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->invokeHidden(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final await$shared_release(JLkotlin/jvm/functions/Function1;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlin/Pair<",
            "Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 74
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 75
    new-instance v3, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$await$listener$1;

    invoke-direct {v3, v0, v1}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$await$listener$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 79
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, p0

    check-cast v4, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;

    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 80
    :goto_0
    invoke-static {p3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    move-object v3, p3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 81
    sget-object p1, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;->UNAVAILABLE:Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;

    invoke-static {p3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "error="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    const-string p2, "method=missing"

    :cond_2
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 83
    :cond_3
    :try_start_1
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 84
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const/4 p1, 0x0

    .line 86
    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    if-nez p2, :cond_5

    sget-object p2, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;->NO_REPLY:Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;

    if-eqz p1, :cond_4

    const-string p1, "no-reply"

    goto :goto_3

    :cond_4
    const-string/jumbo p1, "timeout"

    :goto_3
    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    :cond_5
    return-object p2
.end method

.method public final candidates(Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 30
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->channelOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    sget-object v0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->PREFERRED:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final channelOf(I)Ljava/lang/Integer;
    .locals 4

    .line 45
    invoke-static {p1}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiFrequencyMhzToChannel(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v3, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->INSTANCE:Lcom/shilapi/xcertplay/network/P2pLegacyChannel;

    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->frequencyOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final frequencyOf(I)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_0

    const/16 v0, 0xe

    if-ge p1, v0, :cond_0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit16 p1, p1, 0x967

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x24

    if-gt v0, p1, :cond_1

    const/16 v0, 0xa6

    if-ge p1, v0, :cond_1

    mul-int/lit8 p1, p1, 0x5

    add-int/lit16 p1, p1, 0x1388

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getPREFERRED()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->PREFERRED:Ljava/util/List;

    return-object v0
.end method

.method public final resolve(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 54
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->frequencyOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;

    if-nez p2, :cond_1

    const-string p2, "driver"

    goto :goto_1

    :cond_1
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "driver=forced"

    goto :goto_1

    :cond_2
    const-string p2, "driver!=forced"

    :goto_1
    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0

    :cond_3
    if-eqz p2, :cond_4

    .line 57
    new-instance p1, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;

    const-string v0, "forced"

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    return-object p1

    .line 58
    :cond_4
    new-instance p1, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;

    const-string/jumbo p2, "unknown"

    invoke-direct {p1, v0, p2}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Frequency;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    return-object p1
.end method

.method public final set(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;IJ)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/p2p/WifiP2pManager;",
            "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
            "IJ)",
            "Lkotlin/Pair<",
            "Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)V

    invoke-virtual {p0, p4, p5, v0}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->await$shared_release(JLkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
