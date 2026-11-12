.class public final Lcom/shilapi/xcertplay/network/ExternalWifiManager;
.super Ljava/lang/Object;
.source "ExternalWifiManager.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/network/WirelessHotspotManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;,
        Lcom/shilapi/xcertplay/network/ExternalWifiManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExternalWifiManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExternalWifiManager.kt\ncom/shilapi/xcertplay/network/ExternalWifiManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,175:1\n1#2:176\n1463#3,14:177\n2746#4,3:191\n*S KotlinDebug\n*F\n+ 1 ExternalWifiManager.kt\ncom/shilapi/xcertplay/network/ExternalWifiManager\n*L\n139#1:177,14\n144#1:191,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 !2\u00020\u0001:\u0002 !BJ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012#\u0010\u0004\u001a\u001f\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0012\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b0\u0005\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u000bH\u0016J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0008\u001a\u00020\u0006H\u0002J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R+\u0010\u0004\u001a\u001f\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u000f*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/ExternalWifiManager;",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotManager;",
        "context",
        "Landroid/content/Context;",
        "passwordFor",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "ssid",
        "onDiagnostic",
        "",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "appContext",
        "kotlin.jvm.PlatformType",
        "closed",
        "",
        "start",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;",
        "timeoutMillis",
        "",
        "close",
        "clientInterface",
        "Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;",
        "usable",
        "nic",
        "Ljava/net/NetworkInterface;",
        "score",
        "",
        "linkLocal",
        "Ljava/net/InetAddress;",
        "ClientInterface",
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
.field private static final Companion:Lcom/shilapi/xcertplay/network/ExternalWifiManager$Companion;

.field private static final EXCLUDED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appContext:Landroid/content/Context;

.field private volatile closed:Z

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

.field private final passwordFor:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9YpjsyPfpBVgrA2J8S6-JYBQtSI(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ks_AjT_Q2izFSkaZ6sQTjKed6o0(Lcom/shilapi/xcertplay/network/ExternalWifiManager;Ljava/net/NetworkInterface;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->clientInterface$lambda$7(Lcom/shilapi/xcertplay/network/ExternalWifiManager;Ljava/net/NetworkInterface;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MJsTMKepqcj3tt80l1dBml43AKo(Lcom/shilapi/xcertplay/network/ExternalWifiManager;Ljava/net/NetworkInterface;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->clientInterface$lambda$6(Lcom/shilapi/xcertplay/network/ExternalWifiManager;Ljava/net/NetworkInterface;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/ExternalWifiManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->Companion:Lcom/shilapi/xcertplay/network/ExternalWifiManager$Companion;

    const/16 v0, 0xb

    .line 167
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ap"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "softap"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "swlan"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "p2p"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "rmnet"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "dummy"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "sit"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "tun"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "rndis"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "usb"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "lo"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->EXCLUDED:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passwordFor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDiagnostic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->passwordFor:Lkotlin/jvm/functions/Function1;

    .line 32
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->appContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 32
    new-instance p3, Lcom/shilapi/xcertplay/network/ExternalWifiManager$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/shilapi/xcertplay/network/ExternalWifiManager$$ExternalSyntheticLambda0;-><init>()V

    .line 28
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/network/ExternalWifiManager;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$getEXCLUDED$cp()Ljava/util/List;
    .locals 1

    .line 28
    sget-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->EXCLUDED:Ljava/util/List;

    return-object v0
.end method

.method private final clientInterface()Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;
    .locals 6

    const/4 v0, 0x0

    .line 128
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    .line 132
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "list(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 133
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 134
    new-instance v2, Lcom/shilapi/xcertplay/network/ExternalWifiManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/network/ExternalWifiManager$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/network/ExternalWifiManager;)V

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 135
    new-instance v2, Lcom/shilapi/xcertplay/network/ExternalWifiManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/network/ExternalWifiManager$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/network/ExternalWifiManager;)V

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 177
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    goto :goto_0

    .line 179
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 181
    :cond_2
    move-object v3, v2

    check-cast v3, Lkotlin/Pair;

    .line 139
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 183
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 184
    move-object v5, v4

    check-cast v5, Lkotlin/Pair;

    .line 139
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ge v3, v5, :cond_4

    move-object v2, v4

    move v3, v5

    .line 189
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 139
    :goto_0
    check-cast v2, Lkotlin/Pair;

    if-eqz v2, :cond_5

    .line 140
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;

    :catch_0
    :cond_5
    return-object v0
.end method

.method private static final clientInterface$lambda$6(Lcom/shilapi/xcertplay/network/ExternalWifiManager;Ljava/net/NetworkInterface;)Z
    .locals 0

    .line 134
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->usable(Ljava/net/NetworkInterface;)Z

    move-result p0

    return p0
.end method

.method private static final clientInterface$lambda$7(Lcom/shilapi/xcertplay/network/ExternalWifiManager;Ljava/net/NetworkInterface;)Lkotlin/Pair;
    .locals 4

    .line 136
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->linkLocal(Ljava/net/NetworkInterface;)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 137
    :cond_0
    new-instance v1, Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;-><init>(Ljava/lang/String;Ljava/net/InetAddress;)V

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->score(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final linkLocal(Ljava/net/NetworkInterface;)Ljava/net/InetAddress;
    .locals 5

    .line 156
    invoke-static {p1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->getIndexCompat(Ljava/net/NetworkInterface;)I

    move-result v0

    .line 157
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, "iterator(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 158
    instance-of v3, v1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljava/net/Inet6Address;

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_0

    if-lez v0, :cond_1

    .line 159
    invoke-virtual {v3}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p1

    invoke-static {v2, p1, v0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    return-object v2
.end method

.method private final score(Ljava/lang/String;)I
    .locals 4

    .line 150
    const-string/jumbo v0, "wlan"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x64

    return p1

    .line 151
    :cond_0
    const-string v0, "eth"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x28

    return p1

    :cond_1
    const/16 p1, 0xa

    return p1
.end method

.method private final usable(Ljava/net/NetworkInterface;)Z
    .locals 6

    const/4 v0, 0x0

    .line 144
    :try_start_0
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->EXCLUDED:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 191
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v2, v0, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

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


# virtual methods
.method public associatedClients()Ljava/lang/Integer;
    .locals 1

    .line 28
    invoke-static {p0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager$-CC;->$default$associatedClients(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->closed:Z

    return-void
.end method

.method public onCarPlayConfirmed()V
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManager$-CC;->$default$onCarPlayConfirmed(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;)V

    return-void
.end method

.method public start(J)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;
    .locals 18

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 39
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_14

    .line 43
    iget-object v0, v1, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->appContext:Landroid/content/Context;

    const-string v4, "appContext"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v5, Landroid/net/wifi/WifiManager;

    invoke-static {v0, v5}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_13

    .line 48
    sget-object v5, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    iget-object v6, v1, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->appContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->isOnOrStarting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 52
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v5, v1

    check-cast v5, Lcom/shilapi/xcertplay/network/ExternalWifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 56
    sget-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->INSTANCE:Lcom/shilapi/xcertplay/network/ExternalWifiStation;

    iget-object v7, v1, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->appContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/shilapi/xcertplay/network/ExternalWifiStation;->current(Landroid/content/Context;)Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 60
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->getSecurity()Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 63
    iget-object v4, v1, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->passwordFor:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->getSsid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_e

    .line 66
    sget-object v4, Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;->NONE:Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;

    if-eq v10, v4, :cond_2

    .line 67
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0x8

    if-gt v7, v4, :cond_1

    const/16 v7, 0x40

    if-ge v4, v7, :cond_1

    goto :goto_1

    .line 69
    :cond_1
    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException;

    sget-object v2, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->PASSWORD_NEEDED:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    .line 70
    const-string v3, "The saved Wi-Fi password is not 8\u201363 characters; enter it again in 06Link"

    .line 69
    invoke-direct {v0, v2, v3}, Lcom/shilapi/xcertplay/network/ExternalWifiException;-><init>(Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_d

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiFrequencyMhzToChannel(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 78
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/16 v7, 0x1428

    if-gt v7, v4, :cond_3

    const/16 v7, 0x1708

    if-ge v4, v7, :cond_3

    .line 80
    const-string v4, "5 GHz"

    goto :goto_2

    :cond_3
    const/16 v7, 0x96c

    if-gt v7, v4, :cond_4

    const/16 v7, 0x9b5

    if-ge v4, v7, :cond_4

    .line 81
    const-string v4, "2.4 GHz"

    goto :goto_2

    :cond_4
    const/16 v7, 0x1743

    if-gt v7, v4, :cond_5

    const/16 v7, 0x1bcc

    if-ge v4, v7, :cond_5

    .line 82
    const-string v4, "6 GHz"

    goto :goto_2

    .line 83
    :cond_5
    const-string v4, "Auto"

    .line 86
    :goto_2
    iget-object v7, v1, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    .line 87
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->getBssid()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "external Wi-Fi station security="

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " channel="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " band="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " frequencyKnown="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " bssidKnown="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-interface {v7, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v2

    .line 91
    :goto_5
    iget-boolean v7, v1, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->closed:Z

    if-nez v7, :cond_c

    .line 92
    invoke-direct {v1}, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->clientInterface()Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 94
    iget-object v2, v1, Lcom/shilapi/xcertplay/network/ExternalWifiManager;->onDiagnostic:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_8

    const-string v5, "IPv6"

    goto :goto_6

    :cond_8
    const-string v5, "IPv4"

    .line 95
    :goto_6
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet6Address;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "external Wi-Fi iface="

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " family="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " linkLocal="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_9

    move-object v2, v7

    .line 101
    new-instance v7, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    .line 102
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->getSsid()Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->getFrequencyMHz()Ljava/lang/Integer;

    move-result-object v12

    .line 107
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/ExternalWifiStation$Station;->getBssid()Ljava/lang/String;

    move-result-object v13

    .line 108
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;->getName()Ljava/lang/String;

    move-result-object v14

    .line 109
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/ExternalWifiManager$ClientInterface;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v15

    .line 111
    sget-object v17, Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;->EXTERNAL_WIFI:Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;

    move-object/from16 v16, v4

    .line 101
    invoke-direct/range {v7 .. v17}, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/Iap2WirelessSecurity;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;Lcom/shilapi/xcertplay/network/WirelessHotspotBackend;)V

    return-object v7

    .line 98
    :cond_9
    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException;

    sget-object v2, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->NO_LINK_LOCAL:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    .line 99
    const-string v3, "The head unit\'s Wi-Fi interface has no IPv6 link-local address yet"

    .line 98
    invoke-direct {v0, v2, v3}, Lcom/shilapi/xcertplay/network/ExternalWifiException;-><init>(Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v16, v4

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-gez v4, :cond_b

    const-wide/16 v7, 0xc8

    .line 117
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v4, v16

    goto/16 :goto_5

    .line 115
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Timed out after "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms waiting for the Wi-Fi interface\'s IPv6 link-local address"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ExternalWifiManager is closed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_d
    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException;

    sget-object v2, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->CHANNEL_UNKNOWN:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    .line 77
    const-string v3, "Could not read the Wi-Fi channel of the connected network; reconnect to Wi-Fi and try again"

    .line 76
    invoke-direct {v0, v2, v3}, Lcom/shilapi/xcertplay/network/ExternalWifiException;-><init>(Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_e
    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException;

    sget-object v2, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->PASSWORD_NEEDED:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    .line 65
    const-string v3, "Enter the Wi-Fi password for this network in 06Link so the iPhone can join it"

    .line 64
    invoke-direct {v0, v2, v3}, Lcom/shilapi/xcertplay/network/ExternalWifiException;-><init>(Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_f
    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException;

    sget-object v2, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->ENTERPRISE:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    .line 62
    const-string v3, "This Wi-Fi uses enterprise (802.1X) security, which the iPhone cannot join from CarPlay. Use a normal WPA2/WPA3 network"

    .line 61
    invoke-direct {v0, v2, v3}, Lcom/shilapi/xcertplay/network/ExternalWifiException;-><init>(Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_10
    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException;

    sget-object v2, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->NOT_CONNECTED:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    .line 58
    const-string v3, "Join a Wi-Fi network on the head unit first (external Wi-Fi uses the network it is connected to)"

    .line 57
    invoke-direct {v0, v2, v3}, Lcom/shilapi/xcertplay/network/ExternalWifiException;-><init>(Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_11
    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException;

    sget-object v2, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->WIFI_OFF:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    .line 54
    const-string v3, "Turn on Wi-Fi and join the network you want to use, then connect again"

    .line 53
    invoke-direct {v0, v2, v3}, Lcom/shilapi/xcertplay/network/ExternalWifiException;-><init>(Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_12
    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException;

    sget-object v2, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->HOTSPOT_ON:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    .line 50
    const-string v3, "External Wi-Fi needs the hotspot off: switch off the head unit\'s hotspot (it cannot be a Wi-Fi client at the same time), then connect again"

    .line 49
    invoke-direct {v0, v2, v3}, Lcom/shilapi/xcertplay/network/ExternalWifiException;-><init>(Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "WifiManager is unavailable"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "timeoutMillis must be positive"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ExternalWifiManager.start must not run on the main thread"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method
