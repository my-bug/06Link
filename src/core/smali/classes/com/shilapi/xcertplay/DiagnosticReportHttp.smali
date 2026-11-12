.class public final Lcom/shilapi/xcertplay/DiagnosticReportHttp;
.super Ljava/lang/Object;
.source "DiagnosticReportHttp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;,
        Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;,
        Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;,
        Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiagnosticReportHttp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiagnosticReportHttp.kt\ncom/shilapi/xcertplay/DiagnosticReportHttp\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,269:1\n1#2:270\n1#2:290\n1#2:327\n1761#3,3:271\n774#3:277\n865#3,2:278\n1617#3,9:280\n1869#3:289\n1870#3:291\n1626#3:292\n1056#3:293\n295#3,2:294\n774#3:296\n865#3,2:297\n1563#3:299\n1634#3,3:300\n1563#3:303\n1634#3,2:304\n808#3,11:306\n1617#3,9:317\n1869#3:326\n1870#3:328\n1626#3:329\n1636#3:330\n1104#4,3:274\n*S KotlinDebug\n*F\n+ 1 DiagnosticReportHttp.kt\ncom/shilapi/xcertplay/DiagnosticReportHttp\n*L\n124#1:290\n138#1:327\n105#1:271,3\n123#1:277\n123#1:278,2\n124#1:280,9\n124#1:289\n124#1:291\n124#1:292\n125#1:293\n126#1:294,2\n130#1:296\n130#1:297,2\n130#1:299\n130#1:300,3\n133#1:303\n133#1:304,2\n138#1:306,11\n138#1:317,9\n138#1:326\n138#1:328\n138#1:329\n133#1:330\n115#1:274,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004\'()*B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010\u0015\u001a\u00020\u0012H\u0002J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0019\u001a\u00020\u0010H\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0015\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0010H\u0000\u00a2\u0006\u0002\u0008\u001eJ)\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u0010\u0018\u00010 2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0\u0017H\u0000\u00a2\u0006\u0002\u0008#J!\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00172\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0\u0017H\u0000\u00a2\u0006\u0002\u0008%J\u000e\u0010&\u001a\u0008\u0012\u0004\u0012\u00020!0\u0017H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiagnosticReportHttp;",
        "",
        "<init>",
        "()V",
        "TTL_MILLIS",
        "",
        "READ_TIMEOUT_MILLIS",
        "",
        "CONNECTION_DEADLINE_MILLIS",
        "MAX_CONNECTIONS",
        "lock",
        "server",
        "Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;",
        "start",
        "Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult;",
        "reportUtf8",
        "",
        "stop",
        "",
        "isRunning",
        "",
        "stopLocked",
        "rejectedPrefixes",
        "",
        "wifiRank",
        "name",
        "wifiRank$common_release",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "usableIpv4",
        "address",
        "usableIpv4$common_release",
        "chooseAddress",
        "Lkotlin/Pair;",
        "Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;",
        "ifaces",
        "chooseAddress$common_release",
        "describe",
        "describe$common_release",
        "listInterfaces",
        "Iface",
        "Session",
        "StartResult",
        "Server",
        "common_release"
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
.field public static final CONNECTION_DEADLINE_MILLIS:J = 0x7530L

.field public static final INSTANCE:Lcom/shilapi/xcertplay/DiagnosticReportHttp;

.field public static final MAX_CONNECTIONS:I = 0x4

.field public static final READ_TIMEOUT_MILLIS:I = 0x1388

.field public static final TTL_MILLIS:J = 0x493e0L

.field private static final lock:Ljava/lang/Object;

.field private static final rejectedPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static server:Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticReportHttp;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->lock:Ljava/lang/Object;

    const/16 v0, 0xa

    .line 100
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lo"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "tun"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "rmnet"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ccmni"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "ppp"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "dummy"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "rndis"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "usb"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "eth"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "bt-pan"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->rejectedPrefixes:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final listInterfaces()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "list(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 303
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 304
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 305
    check-cast v3, Ljava/net/NetworkInterface;

    .line 135
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getName(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v5, v7

    :cond_1
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 137
    :try_start_1
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v7}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v7}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v7, v6

    :cond_2
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 138
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 306
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 315
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/net/Inet4Address;

    if-eqz v9, :cond_3

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 316
    :cond_4
    check-cast v7, Ljava/util/List;

    .line 306
    check-cast v7, Ljava/lang/Iterable;

    .line 317
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 326
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 325
    check-cast v8, Ljava/net/Inet4Address;

    .line 138
    invoke-virtual {v8}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 325
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 329
    :cond_6
    check-cast v3, Ljava/util/List;

    .line 134
    new-instance v7, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;

    invoke-direct {v7, v4, v5, v6, v3}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;-><init>(Ljava/lang/String;ZZLjava/util/List;)V

    .line 305
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 330
    :cond_7
    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method private final stopLocked()V
    .locals 1

    .line 96
    sget-object v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->server:Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 97
    sput-object v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->server:Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;

    return-void
.end method


# virtual methods
.method public final chooseAddress$common_release(Ljava/util/List;)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;",
            ">;)",
            "Lkotlin/Pair<",
            "Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ifaces"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    check-cast p1, Ljava/lang/Iterable;

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 278
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;

    .line 123
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->getUp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->getLoopback()Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 277
    check-cast v0, Ljava/lang/Iterable;

    .line 280
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 289
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 288
    check-cast v1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;

    .line 124
    sget-object v3, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticReportHttp;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->wifiRank$common_release(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_2

    .line 288
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 292
    :cond_4
    check-cast p1, Ljava/util/List;

    .line 280
    check-cast p1, Ljava/lang/Iterable;

    .line 293
    new-instance v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$chooseAddress$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$chooseAddress$$inlined$sortedBy$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 126
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 270
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;

    .line 126
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->getIpv4()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    sget-object v3, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticReportHttp;

    .line 294
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 126
    invoke-virtual {v3, v5}, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->usableIpv4$common_release(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_7
    move-object v4, v2

    :goto_2
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_8

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_3

    :cond_8
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_5

    return-object v0

    :cond_9
    return-object v2
.end method

.method public final describe$common_release(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ifaces"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    check-cast p1, Ljava/lang/Iterable;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 297
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;

    .line 130
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->getUp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->getIpv4()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 296
    check-cast v0, Ljava/lang/Iterable;

    .line 299
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 300
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 301
    check-cast v1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;

    .line 130
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->getIpv4()Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    const-string v1, "/"

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 302
    :cond_2
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final isRunning()Z
    .locals 4

    .line 93
    sget-object v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->server:Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->isRunning()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final start(Ljava/lang/String;)Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult;
    .locals 27

    move-object/from16 v1, p1

    const-string v2, "http://"

    const-string v3, "bind "

    const-string v4, "NetworkInterface: "

    const-string v0, "reportUtf8"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v5, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 62
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticReportHttp;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->stopLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->listInterfaces()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_1

    check-cast v0, Ljava/util/List;

    .line 66
    sget-object v4, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticReportHttp;

    invoke-virtual {v4, v0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->chooseAddress$common_release(Ljava/util/List;)Lkotlin/Pair;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult$NoWifiAddress;

    invoke-virtual {v4, v0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->describe$common_release(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult$NoWifiAddress;-><init>(Ljava/util/List;)V

    check-cast v1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    return-object v1

    :cond_0
    :try_start_3
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 67
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "toString(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "-"

    const-string v8, ""

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x10

    invoke-static {v0, v6}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    :try_start_4
    new-instance v14, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;

    .line 70
    invoke-static {v13}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    const-string v0, "getByName(...)"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$start$1$started$1;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticReportHttp$start$1$started$1;

    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function0;

    const/16 v25, 0xf0

    const/16 v26, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v0

    .line 69
    invoke-direct/range {v14 .. v26}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;-><init>(Ljava/net/InetAddress;[BLjava/lang/String;Lkotlin/jvm/functions/Function0;JIJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v8, v17

    .line 74
    invoke-virtual {v14}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->start()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    :try_start_5
    sput-object v14, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->server:Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;

    .line 79
    new-instance v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult$Started;

    .line 80
    new-instance v6, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;

    .line 81
    invoke-virtual {v14}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->getPort()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/r/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-virtual {v14}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->getPort()I

    move-result v9

    .line 84
    invoke-virtual {v14}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->getStartedAt()J

    move-result-wide v1

    const-wide/32 v10, 0x493e0

    add-long/2addr v10, v1

    .line 85
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->getName()Ljava/lang/String;

    move-result-object v12

    .line 80
    invoke-direct/range {v6 .. v13}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-direct {v0, v6}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult$Started;-><init>(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Session;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 61
    monitor-exit v5

    check-cast v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult;

    return-object v0

    :catch_0
    move-exception v0

    .line 76
    :try_start_6
    new-instance v1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult$Failed;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Iface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult$Failed;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v5

    return-object v1

    .line 64
    :cond_1
    :try_start_7
    new-instance v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult$Failed;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult$Failed;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$StartResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit v5

    return-object v0

    :catchall_1
    move-exception v0

    .line 61
    monitor-exit v5

    throw v0
.end method

.method public final stop()V
    .locals 2

    .line 91
    sget-object v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticReportHttp;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->stopLocked()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final usableIpv4$common_release(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 275
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne v3, v0, :cond_2

    .line 115
    const-string v0, "127."

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "169.254."

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    const-string v0, "0.0.0.0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final wifiRank$common_release(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp;->rejectedPrefixes:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 271
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    invoke-static {p1, v1, v3, v2, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v4

    .line 107
    :cond_2
    :goto_0
    const-string/jumbo v0, "softap"

    invoke-static {p1, v0, v3, v2, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "swlan"

    invoke-static {p1, v0, v3, v2, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ap"

    invoke-static {p1, v0, v3, v2, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 108
    :cond_3
    const-string/jumbo v0, "wlan"

    invoke-static {p1, v0, v3, v2, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 109
    :cond_4
    const-string v0, "p2p"

    invoke-static {p1, v0, v3, v2, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v4

    .line 107
    :cond_6
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
