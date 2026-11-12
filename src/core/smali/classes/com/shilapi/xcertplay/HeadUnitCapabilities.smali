.class public final Lcom/shilapi/xcertplay/HeadUnitCapabilities;
.super Ljava/lang/Object;
.source "HeadUnitCapabilities.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;,
        Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;,
        Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;,
        Lcom/shilapi/xcertplay/HeadUnitCapabilities$Report;,
        Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;,
        Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;,
        Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;,
        Lcom/shilapi/xcertplay/HeadUnitCapabilities$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeadUnitCapabilities.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeadUnitCapabilities.kt\ncom/shilapi/xcertplay/HeadUnitCapabilities\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,641:1\n774#2:642\n865#2,2:643\n1788#2,4:646\n1878#2,2:650\n1880#2:656\n1761#2,3:657\n1761#2,3:660\n774#2:663\n865#2,2:664\n1563#2:666\n1634#2,3:667\n2746#2,3:670\n1563#2:673\n1634#2,3:674\n774#2:677\n865#2:678\n866#2:681\n1563#2:682\n1634#2,3:683\n1563#2:686\n1634#2,3:687\n774#2:690\n865#2,2:691\n1617#2,9:693\n1869#2:702\n1870#2:704\n1626#2:705\n1999#2,14:706\n1#3:645\n1#3:703\n11228#4:652\n11563#4,3:653\n12637#4,2:679\n*S KotlinDebug\n*F\n+ 1 HeadUnitCapabilities.kt\ncom/shilapi/xcertplay/HeadUnitCapabilities\n*L\n96#1:642\n96#1:643,2\n170#1:646,4\n174#1:650,2\n174#1:656\n196#1:657,3\n265#1:660,3\n281#1:663\n281#1:664,2\n412#1:666\n412#1:667,3\n422#1:670,3\n618#1:673\n618#1:674,3\n619#1:677\n619#1:678\n619#1:681\n620#1:682\n620#1:683,3\n629#1:686\n629#1:687,3\n630#1:690\n630#1:691,2\n631#1:693,9\n631#1:702\n631#1:704\n631#1:705\n632#1:706,14\n631#1:703\n175#1:652\n175#1:653,3\n619#1:679,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0007=>?@ABCB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000eH\u0002J#\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000eH\u0000\u00a2\u0006\u0002\u0008\u0012J\u000e\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007J\u0015\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u0016J3\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\t2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\tH\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u0018\u0010&\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010\'\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010(\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020#2\u0006\u0010)\u001a\u00020*H\u0002J\u0018\u0010+\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020#2\u0006\u0010,\u001a\u00020-H\u0002J\u0018\u0010.\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020#2\u0006\u0010,\u001a\u00020-H\u0002J2\u0010/\u001a\u0008\u0012\u0004\u0012\u00020!0\u000e2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0008\u00100\u001a\u0004\u0018\u000101H\u0002J\u001b\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000e2\u0006\u00103\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u00084J\u0015\u00105\u001a\u00020\t2\u0006\u00106\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u00087J\n\u00108\u001a\u0004\u0018\u00010\u000cH\u0002J\u0012\u00109\u001a\u0004\u0018\u00010\u000c2\u0006\u0010:\u001a\u00020\u000cH\u0002R\u000e\u0010;\u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCapabilities;",
        "",
        "<init>",
        "()V",
        "collect",
        "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Report;",
        "context",
        "Landroid/content/Context;",
        "chinese",
        "",
        "probeRoot",
        "language",
        "",
        "networkInterfaces",
        "",
        "noWifi",
        "featureDeclared",
        "interfaces",
        "noWifi$common_release",
        "usageAccessExists",
        "sdk",
        "",
        "usageAccessExists$common_release",
        "keepAdbState",
        "Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;",
        "persisted",
        "secure",
        "last",
        "Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;",
        "rootChannel",
        "keepAdbState$common_release",
        "(ZLjava/lang/Boolean;Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Z)Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;",
        "networkAdbPersistItem",
        "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;",
        "p",
        "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;",
        "r",
        "Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;",
        "usageAccessItem",
        "keeperStatusItem",
        "agoLabel",
        "elapsed",
        "",
        "viaLabel",
        "via",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
        "viaShown",
        "rootItems",
        "ipv6",
        "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;",
        "decoders",
        "mime",
        "decoders$common_release",
        "isHardware",
        "name",
        "isHardware$common_release",
        "maxAvcSize",
        "readText",
        "path",
        "APPLE_VENDOR_ID",
        "CHECK_UUID",
        "Status",
        "Item",
        "Section",
        "Verdict",
        "Report",
        "Probe",
        "KeepAdb",
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
.field private static final APPLE_VENDOR_ID:I = 0x5ac

.field private static final CHECK_UUID:Ljava/lang/String; = "6c6a2f3e-1b0f-4f7e-9c42-6b1f3d2a8e11"

.field public static final INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCapabilities;


# direct methods
.method public static synthetic $r8$lambda$RPzx0dgp0-dIqDl8GBnmDSZy6-0(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->collect$lambda$45(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kDF1mD3IxF83gd0VKidYMCk_dyU(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->rootItems$lambda$59(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final agoLabel(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;J)Ljava/lang/String;
    .locals 3

    .line 521
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    const/16 p2, 0x3e8

    int-to-long p2, p2

    div-long/2addr v0, p2

    const-wide/16 p2, 0x0

    invoke-static {v0, v1, p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p2

    const-wide/16 v0, 0x3c

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " \u79d2\u524d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "s ago"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, 0xe10

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    const/16 v0, 0x3c

    int-to-long v0, v0

    .line 524
    div-long/2addr p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " \u5206\u949f\u524d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "m ago"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0xe10

    int-to-long v0, v0

    .line 525
    div-long/2addr p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " \u5c0f\u65f6\u524d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "h ago"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic collect$default(Lcom/shilapi/xcertplay/HeadUnitCapabilities;Landroid/content/Context;ZZLjava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/HeadUnitCapabilities$Report;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 87
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->collect(Landroid/content/Context;ZZLjava/lang/String;)Lcom/shilapi/xcertplay/HeadUnitCapabilities$Report;

    move-result-object p0

    return-object p0
.end method

.method private static final collect$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    .line 91
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final collect$lambda$45(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    invoke-direct {v0, p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->viaLabel(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final keeperStatusItem(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Landroid/content/Context;)Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;
    .locals 11

    .line 490
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->get()Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getPhase()Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCapabilities$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 497
    :pswitch_0
    const-string/jumbo v1, "\u5df2\u505c\u6b62\uff08\u65e0\u4f1a\u8bdd\uff09"

    const-string/jumbo v2, "stopped (no session)"

    invoke-virtual {p1, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 496
    :pswitch_1
    const-string/jumbo v1, "\u8865\u4e0d\u4e0a\uff08\u89c1\u539f\u56e0\uff09"

    const-string v2, "could not repair (see reason)"

    invoke-virtual {p1, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 495
    :pswitch_2
    const-string/jumbo v1, "\u6b63\u5728\u8865\u56de\u8def\u7531"

    const-string v2, "re-adding the route"

    invoke-virtual {p1, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 494
    :pswitch_3
    const-string/jumbo v1, "\u8fd0\u884c\u4e2d\uff0c\u6b63\u5728\u4fdd\u6301\u8def\u7531"

    const-string v2, "running, holding the route"

    invoke-virtual {p1, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 493
    :pswitch_4
    const-string/jumbo v1, "\u8fde\u63a5\u524d\u9884\u7f6e\u8def\u7531\u4e2d"

    const-string v2, "pre-arming the route"

    invoke-virtual {p1, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 492
    :pswitch_5
    const-string/jumbo v1, "\u672a\u542f\u52a8"

    const-string v2, "idle"

    invoke-virtual {p1, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v2

    .line 500
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastGoodVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v4, "\u65b9\u5f0f\uff1a"

    const-string v5, "path: "

    invoke-virtual {p1, v4, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    invoke-direct {v5, p1, v3}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->viaLabel(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_0
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastGoodVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-virtual {v3, p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->loadLastGoodPath(Landroid/content/Context;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 504
    const-string/jumbo v3, "\u4e0a\u6b21\u6210\u529f\u7684\u65b9\u5f0f\uff08\u5df2\u4fdd\u5b58\uff09\uff1a"

    const-string v4, "saved path: "

    invoke-virtual {p1, v3, v4}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    invoke-direct {v4, p1, p2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->viaLabel(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_1
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastRepairElapsed()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-string/jumbo p2, "\u4e0a\u6b21\u8865\u4e0a\uff1a"

    const-string v5, "last added: "

    invoke-virtual {p1, p2, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    invoke-direct {v5, p1, v3, v4}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->agoLabel(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_2
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastFailure()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getPhase()Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    move-result-object v3

    sget-object v4, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;->FAILED:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    const-string/jumbo v3, "\u539f\u56e0\uff1a"

    const-string v4, "reason: "

    invoke-virtual {p1, v3, v4}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_4
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    .line 508
    const-string p2, " \u00b7 "

    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getPhase()Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    move-result-object v0

    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCapabilities$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_7

    .line 514
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_2

    .line 511
    :cond_5
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_2

    .line 510
    :cond_6
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_2

    .line 513
    :cond_7
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_2
    move-object v6, v0

    .line 517
    new-instance v3, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v0, "\u5185\u7f6e\u8def\u7531\u5b88\u62a4"

    const-string v4, "Built-in route keeper"

    invoke-virtual {p1, v0, v4}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object p1, v2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_8

    const-string p1, ""

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final maxAvcSize()Ljava/lang/String;
    .locals 9

    .line 628
    const-string v0, "getUpper(...)"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    .line 629
    invoke-static {}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 686
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 687
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v4

    .line 629
    invoke-static {v4}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 688
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 689
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 629
    check-cast v2, Ljava/lang/Iterable;

    .line 690
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 691
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v5, "video/avc"

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodecInfo;

    move-result-object v6

    .line 630
    invoke-static {v6}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)[Ljava/lang/String;

    move-result-object v7

    const-string v8, "getSupportedTypes(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v7, v5}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v6}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getName(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->isHardware$common_release(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 691
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 692
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 630
    check-cast v1, Ljava/lang/Iterable;

    .line 693
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 702
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 701
    invoke-static {v4}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 631
    invoke-static {v4, v5}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v4

    invoke-static {v4}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 701
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 705
    :cond_5
    check-cast v2, Ljava/util/List;

    .line 631
    check-cast v2, Ljava/lang/Iterable;

    .line 706
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 707
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    move-object v2, v3

    goto :goto_3

    .line 708
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 709
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 710
    :cond_7
    invoke-static {v2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v4

    .line 632
    invoke-static {v4}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/util/Range;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v4}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/util/Range;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    mul-int v5, v5, v4

    .line 712
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 713
    invoke-static {v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v6

    .line 632
    invoke-static {v6}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/util/Range;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v6}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/util/Range;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    mul-int v7, v7, v6

    if-ge v5, v7, :cond_9

    move-object v2, v4

    move v5, v7

    .line 718
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 632
    :goto_3
    invoke-static {v2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 633
    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/util/Range;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/util/Range;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    move-object v0, v3

    .line 628
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 634
    :goto_5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_b
    move-object v3, v0

    :goto_6
    check-cast v3, Ljava/lang/String;

    return-object v3
.end method

.method private final networkAdbPersistItem(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;)Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;
    .locals 13

    .line 448
    sget-object v0, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->INSTANCE:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

    .line 449
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->getLastAttempt()Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;

    move-result-object v1

    .line 450
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getSuPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getGrant()Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    move-result-object v2

    sget-object v4, Lcom/shilapi/xcertplay/RootPrivileges$Grant;->DENIED:Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    if-ne v2, v4, :cond_2

    .line 451
    :cond_0
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getAdb()Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    move-result-object v2

    sget-object v4, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->ROOT:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    if-eq v2, v4, :cond_2

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getAdb()Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    move-result-object p2

    sget-object v2, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->SU:Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 452
    :goto_1
    const-string/jumbo v2, "\u7f51\u7edc ADB \u4fdd\u6d3b"

    const-string v4, "Keep network ADB"

    invoke-virtual {p1, v2, v4}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    .line 455
    invoke-static {v0, v2, v3, v2}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->persistedPort$default(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "5555"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v0, v2, v3, v2}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->adbSecure$default(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;->getOutcome()Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v2

    :goto_2
    invoke-virtual {p0, v4, v0, v5, p2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->keepAdbState$common_release(ZLjava/lang/Boolean;Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Z)Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;

    move-result-object p2

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v3, :cond_a

    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    const/4 v0, 0x3

    if-eq p2, v0, :cond_6

    const/4 v0, 0x4

    if-eq p2, v0, :cond_5

    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 464
    new-instance v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    .line 465
    const-string/jumbo p2, "\u4fdd\u6301\u4e0d\u4e86\uff1a\u6ca1\u6709 root\uff0c\u8f66\u673a ADB \u7684 shell \u65e0\u6743\u8bbe\u7f6e persist.adb.tcp.port\uff08\u5b89\u5353 5\u20139\uff09"

    .line 466
    const-string v0, "cannot be kept: no root, and the head unit\'s ADB shell may not set persist.adb.tcp.port (Android 5\u20139)"

    .line 465
    invoke-virtual {p1, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 466
    sget-object v8, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 464
    invoke-direct/range {v5 .. v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    .line 455
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 462
    :cond_5
    new-instance v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    .line 463
    const-string/jumbo p2, "\u672a\u4fdd\u6301\uff08\u8fde\u63a5\u65f6\u4f1a\u7ecf root \u81ea\u52a8\u5f00\u542f\u5e76\u4fdd\u6301\uff09"

    const-string v0, "not kept yet (set through root on the next connection)"

    invoke-virtual {p1, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 462
    invoke-direct/range {v5 .. v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    .line 460
    :cond_6
    new-instance v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    if-eqz v1, :cond_7

    .line 461
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;->getDetail()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_7
    move-object p2, v2

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4e0a\u6b21\u5c1d\u8bd5\u6ca1\u6709\u751f\u6548\uff08"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\uff09"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Result;->getDetail()Ljava/lang/String;

    move-result-object v2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "the last try did not stick ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 460
    invoke-direct/range {v5 .. v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    .line 457
    :cond_9
    new-instance v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    .line 458
    const-string/jumbo p2, "\u672a\u5f00\u542f\uff1a\u8fd9\u53f0\u8f66\u673a\u7684 ADB \u4e0d\u6821\u9a8c\u5bc6\u94a5\uff08ro.adb.secure\u22601\uff09\uff0c\u5e38\u5f00\u7f51\u7edc ADB \u4e0d\u5b89\u5168"

    .line 459
    const-string v0, "off: this head unit\'s ADB does not verify host keys (ro.adb.secure\u22601), so keeping it on is unsafe"

    .line 458
    invoke-virtual {p1, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 459
    sget-object v8, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 457
    invoke-direct/range {v5 .. v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    .line 456
    :cond_a
    new-instance v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo p2, "\u5df2\u4e3a\u53ef\u9009\u7684 IPv6 \u8def\u7531\u4fee\u590d\u5f00\u542f\uff08\u91cd\u542f\u540e\u4fdd\u6301\uff09"

    const-string v0, "on for the optional IPv6 route repair (survives reboots)"

    invoke-virtual {p1, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5
.end method

.method private final networkInterfaces()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 411
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/net"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, [Ljava/lang/Comparable;

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->sorted([Ljava/lang/Comparable;)Ljava/util/List;

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
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_6

    .line 412
    :cond_3
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "list(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 666
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 667
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 668
    check-cast v3, Ljava/net/NetworkInterface;

    .line 412
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    .line 668
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 669
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 666
    check-cast v2, Ljava/lang/Iterable;

    .line 412
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 413
    :goto_4
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move-object v0, v1

    :goto_5
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_6
    return-object v1
.end method

.method private final readText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 636
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v0}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p1

    :goto_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final rootItems(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Landroid/content/Context;Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;",
            "Landroid/content/Context;",
            "Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;",
            "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;",
            ")",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    .line 549
    new-instance v1, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v2, "\u68c0\u6d4b\u5931\u8d25"

    const-string v3, "check failed"

    invoke-virtual {v0, v2, v3}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, v1

    const-string v1, "Root"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 550
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 551
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    .line 552
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getSuPath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "\u6ca1\u6709"

    const-string v6, "no"

    invoke-virtual {v0, v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v6, v5

    goto :goto_1

    .line 553
    :cond_1
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getRootTool()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getRootTool()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u6709\uff08"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\uff09"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getRootTool()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "yes ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 554
    :cond_2
    const-string/jumbo v5, "\u6709\uff08\u56fa\u4ef6\u81ea\u5e26\u6216\u672a\u77e5\u5de5\u5177\uff09"

    const-string/jumbo v6, "yes (built into the firmware, or an unknown tool)"

    invoke-virtual {v0, v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 555
    :goto_1
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getSuPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_2

    :cond_3
    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_2
    move-object v7, v5

    const/16 v10, 0x18

    const/4 v11, 0x0

    .line 551
    const-string v5, "Root"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string v4, "06Link \u7684 root \u6388\u6743"

    const-string v6, "Root granted to 06Link"

    invoke-virtual {v0, v4, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getGrant()Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    move-result-object v4

    sget-object v7, Lcom/shilapi/xcertplay/HeadUnitCapabilities$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/RootPrivileges$Grant;->ordinal()I

    move-result v4

    aget v4, v7, v4

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v4, v15, :cond_7

    if-eq v4, v14, :cond_6

    const/4 v7, 0x3

    if-eq v4, v7, :cond_5

    if-ne v4, v13, :cond_4

    .line 560
    const-string/jumbo v4, "\u4e0d\u9700\u8981\uff08\u6ca1\u6709 su\uff09"

    const-string v7, "not needed (no su)"

    invoke-virtual {v0, v4, v7}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 556
    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 559
    :cond_5
    const-string/jumbo v4, "\u672a\u68c0\u6d4b\uff08\u53ea\u5728\u8f66\u673a\u80fd\u529b\u68c0\u6d4b\u91cc\u68c0\u6d4b\uff09"

    const-string v7, "not checked (only the head unit check asks)"

    invoke-virtual {v0, v4, v7}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 558
    :cond_6
    const-string/jumbo v4, "\u88ab\u62d2\u7edd\u6216\u8d85\u65f6"

    const-string v7, "denied or timed out"

    invoke-virtual {v0, v4, v7}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 557
    :cond_7
    const-string/jumbo v4, "\u5df2\u6388\u6743"

    const-string v7, "granted"

    invoke-virtual {v0, v4, v7}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v7, v4

    .line 561
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getGrant()Lcom/shilapi/xcertplay/RootPrivileges$Grant;

    move-result-object v4

    sget-object v8, Lcom/shilapi/xcertplay/HeadUnitCapabilities$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/RootPrivileges$Grant;->ordinal()I

    move-result v4

    aget v4, v8, v4

    if-eq v4, v15, :cond_9

    if-eq v4, v14, :cond_8

    .line 564
    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_4

    .line 563
    :cond_8
    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_4

    .line 562
    :cond_9
    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_4
    move-object v8, v4

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 556
    invoke-direct/range {v5 .. v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance v16, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v4, "\u56fa\u4ef6\u7c7b\u578b"

    const-string v5, "Firmware"

    invoke-virtual {v0, v4, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getBuildType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user"

    const-string/jumbo v6, "unknown"

    const-string/jumbo v7, "\u672a\u77e5"

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x188de

    if-eq v8, v9, :cond_e

    const v9, 0x36ebcb

    if-eq v8, v9, :cond_c

    const v9, 0x147c5168

    if-eq v8, v9, :cond_a

    goto :goto_5

    :cond_a
    const-string/jumbo v8, "userdebug"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_5

    .line 568
    :cond_b
    const-string/jumbo v4, "\u8c03\u8bd5\u7248\uff08userdebug\uff09\uff1a\u8f66\u673a ADB \u901a\u5e38\u4ee5 root \u8fd0\u884c"

    const-string v8, "debug (userdebug): the head unit\'s ADB usually runs as root"

    invoke-virtual {v0, v4, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 566
    :cond_c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_5

    .line 567
    :cond_d
    const-string/jumbo v4, "\u6b63\u5f0f\u7248\uff08user\uff09"

    const-string v8, "release (user)"

    invoke-virtual {v0, v4, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 566
    :cond_e
    const-string v8, "eng"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 571
    :goto_5
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getBuildType()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 569
    :cond_f
    const-string/jumbo v4, "\u5de5\u7a0b\u7248\uff08eng\uff09\uff1a\u8f66\u673a ADB \u901a\u5e38\u4ee5 root \u8fd0\u884c"

    const-string v8, "engineering (eng): the head unit\'s ADB usually runs as root"

    invoke-virtual {v0, v4, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 570
    :cond_10
    invoke-virtual {v0, v7, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 572
    :goto_6
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getBuildType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getDebuggable()Ljava/lang/String;

    move-result-object v5

    const-string v8, "1"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string/jumbo v5, "\uff0c\u4f46\u53ef\u8c03\u8bd5\uff08ro.debuggable=1\uff09\uff1a\u8f66\u673a ADB \u53ef\u80fd\u4ee5 root \u8fd0\u884c"

    const-string v8, ", but debuggable (ro.debuggable=1): the head unit\'s ADB may run as root"

    invoke-virtual {v0, v5, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_11
    const-string v5, ""

    :goto_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 573
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getDebugFirmware()Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_8

    :cond_12
    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_8
    move-object/from16 v19, v4

    const/16 v22, 0x18

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 566
    invoke-direct/range {v16 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v16

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 574
    new-instance v16, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v4, "\u8f66\u673a ADB"

    const-string v5, "Head unit ADB"

    invoke-virtual {v0, v4, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getAdb()Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    move-result-object v4

    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    move-object/from16 v4, p0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 580
    :pswitch_0
    const-string/jumbo v4, "\u53ea\u6709\u65e0\u7ebf\u8c03\u8bd5\u914d\u5bf9\uff0c06Link \u7528\u4e0d\u4e86"

    const-string/jumbo v5, "wireless-debugging pairing only; 06Link cannot use it"

    invoke-virtual {v0, v4, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 579
    :pswitch_1
    const-string/jumbo v4, "\u672a\u5f00\u542f\u7f51\u7edc ADB\uff085555\uff09"

    const-string v5, "network ADB (5555) is off"

    invoke-virtual {v0, v4, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 578
    :pswitch_2
    const-string/jumbo v4, "\u672a\u6279\u51c6\uff1a\u8fde\u63a5\u6216\u68c0\u6d4b\u65f6\u8f66\u673a\u4f1a\u8bf7\u6c42\u4e00\u6b21"

    const-string v5, "not approved: the head unit asks once when connecting or checking"

    invoke-virtual {v0, v4, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 577
    :pswitch_3
    const-string/jumbo v4, "\u53ef\u7528\uff08\u975e root\uff09"

    const-string v5, "available (not root)"

    invoke-virtual {v0, v4, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 576
    :pswitch_4
    const-string/jumbo v4, "\u53ef\u7528\uff08\u975e root\uff0c\u53ef\u7528 su\uff09"

    const-string v5, "available (not root, su works)"

    invoke-virtual {v0, v4, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 575
    :pswitch_5
    const-string/jumbo v4, "\u53ef\u7528\uff08root\uff09"

    const-string v5, "available (root)"

    invoke-virtual {v0, v4, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_9
    move-object/from16 v18, v4

    .line 581
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getAdb()Lcom/shilapi/xcertplay/RootPrivileges$Adb;

    move-result-object v4

    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/RootPrivileges$Adb;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v15, :cond_14

    if-eq v4, v14, :cond_14

    if-eq v4, v13, :cond_13

    .line 584
    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_a

    .line 583
    :cond_13
    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_a

    .line 582
    :cond_14
    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_a
    move-object/from16 v19, v4

    const/16 v22, 0x18

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 574
    invoke-direct/range {v16 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v16

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p0

    .line 587
    invoke-direct {v4, v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->networkAdbPersistItem(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;)Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v8, 0x0

    if-nez p4, :cond_15

    goto :goto_c

    .line 591
    :cond_15
    invoke-virtual/range {p4 .. p4}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getHotspotOn()Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    goto :goto_c

    .line 592
    :cond_16
    invoke-virtual/range {p4 .. p4}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getResult()Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    move-result-object v8

    sget-object v9, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->MISSING_ROUTE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    if-ne v8, v9, :cond_17

    goto :goto_b

    :cond_17
    const/4 v15, 0x0

    :goto_b
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 594
    :goto_c
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getRepairPaths()Ljava/util/List;

    move-result-object v9

    .line 597
    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v11, "\u53ef\u4fee\u590d\uff1a\u70ed\u70b9 IPv6 \u8def\u7531\uff08\u4ec5 IPv6 \u65b9\u5f0f\uff09"

    const-string v12, "Repairable: hotspot IPv6 route (IPv6 method only)"

    invoke-virtual {v0, v11, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 598
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v8, " / "

    if-eqz v5, :cond_18

    const-string/jumbo v5, "\u8def\u7531\u5df2\u5728"

    const-string/jumbo v9, "the route is there"

    invoke-virtual {v0, v5, v9}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_d
    move-object v12, v5

    goto :goto_e

    .line 599
    :cond_18
    move-object v5, v9

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_19

    const-string/jumbo v5, "\u53ef\u4fee\u590d\uff1a\u7ecf "

    const-string v12, "can be repaired via "

    invoke-virtual {v0, v5, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v9

    check-cast v12, Ljava/lang/Iterable;

    move-object v13, v8

    check-cast v13, Ljava/lang/CharSequence;

    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$$ExternalSyntheticLambda4;

    invoke-direct {v9, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;)V

    const/16 v19, 0x1e

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v9

    invoke-static/range {v12 .. v20}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    .line 600
    :cond_19
    const-string/jumbo v5, "\u65e0\u4fee\u590d\u9014\u5f84\uff08\u6ca1\u6709 root\uff0c\u4e5f\u6ca1\u6709 root \u7684\u8f66\u673a ADB\uff09"

    const-string v9, "no way to repair (no root, no root ADB)"

    invoke-virtual {v0, v5, v9}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    .line 601
    :goto_e
    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v16, 0x10

    const/16 v17, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 597
    invoke-direct/range {v10 .. v17}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-direct/range {p0 .. p2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->usageAccessItem(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Landroid/content/Context;)Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getSuPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1a

    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v5, "su \u8def\u5f84"

    const-string/jumbo v10, "su path"

    invoke-virtual {v0, v5, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getSuPath()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_1a
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getRootIp()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_1b

    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string v5, "root shell \u53ef\u8fd0\u884c ip"

    const-string v10, "Root shell runs ip"

    invoke-virtual {v0, v5, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getRootIp()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_1b
    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getBuildType()Ljava/lang/String;

    move-result-object v5

    const-string v9, "?"

    if-nez v5, :cond_1c

    move-object v5, v9

    :cond_1c
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getBuildTags()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1d

    move-object v11, v9

    :cond_1d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v16, 0x10

    const/16 v17, 0x0

    const-string v11, "ro.build.type / ro.build.tags"

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 607
    new-instance v11, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getDebuggable()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1e

    move-object v5, v9

    :cond_1e
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getSecure()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1f

    move-object v10, v9

    :cond_1f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v17, 0x10

    const/16 v18, 0x0

    const-string v12, "ro.debuggable / ro.secure"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v18}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 608
    new-instance v12, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string v5, "ADB \u5f00\u5173 / adbd"

    const-string v10, "ADB setting / adbd"

    invoke-virtual {v0, v5, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getAdbSetting()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getAdbdState()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_20

    move-object v10, v9

    :cond_20
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v18, 0x10

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v13, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getUsbConfig()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_21

    move-object v15, v9

    goto :goto_f

    :cond_21
    move-object v15, v5

    :goto_f
    sget-object v16, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v19, 0x10

    const/16 v20, 0x0

    const-string/jumbo v14, "sys.usb.config"

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance v14, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v5, "\u7f51\u7edc ADB \u7aef\u53e3"

    const-string v8, "Network ADB port"

    invoke-virtual {v0, v5, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getTcpPort()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_22

    const-string/jumbo v5, "\u672a\u8bbe\u7f6e"

    const-string v8, "not set"

    invoke-virtual {v0, v5, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_22
    move-object/from16 v16, v5

    sget-object v17, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v21}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v15, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getAdbAccess()Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v5

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->name()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_23

    goto :goto_10

    :cond_23
    move-object/from16 v17, v5

    goto :goto_11

    :cond_24
    :goto_10
    move-object/from16 v17, v9

    :goto_11
    sget-object v18, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v21, 0x10

    const/16 v22, 0x0

    const-string v16, "127.0.0.1:5555"

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance v16, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getSelinux()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    invoke-virtual {v0, v7, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_25
    move-object/from16 v18, v1

    sget-object v19, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v22, 0x10

    const/16 v23, 0x0

    const-string v17, "SELinux"

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-direct/range {v16 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final rootItems$lambda$59(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    invoke-direct {v0, p0, p1}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->viaLabel(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final usageAccessItem(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Landroid/content/Context;)Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;
    .locals 10

    .line 477
    const-string/jumbo v0, "\u4f7f\u7528\u60c5\u51b5\u8bbf\u95ee\uff08\u4eea\u8868\u76d8\u5730\u56fe\u7528\uff0c\u53ef\u9009\uff09"

    const-string v1, "Usage access (cluster map, optional)"

    invoke-virtual {p1, v0, v1}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 479
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->usageAccessExists$common_release(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    .line 480
    const-string/jumbo p2, "\u4e0d\u9002\u7528\uff08\u5b89\u5353 5.0 \u8d77\u624d\u6709\uff09"

    const-string v0, "not applicable (Android 5.0 and later only)"

    invoke-virtual {p1, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 479
    invoke-direct/range {v2 .. v9}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 481
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    sget-object v0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->Companion:Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$Companion;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$Companion;->hasAccess(Landroid/content/Context;)Z

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

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 482
    new-instance v2, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    .line 483
    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitFixes;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitFixes;

    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;->USAGE_ACCESS:Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->getChinese()Z

    move-result p1

    invoke-virtual {v1, v4, v0, p1}, Lcom/shilapi/xcertplay/HeadUnitFixes;->value(Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZZ)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2

    .line 484
    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_1
    move-object v5, p1

    .line 485
    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitFixes;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitFixes;

    invoke-virtual {p1, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitFixes;->forUsageAccess(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    move-result-object v7

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 482
    invoke-direct/range {v2 .. v9}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method private final viaLabel(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Ljava/lang/String;
    .locals 1

    .line 530
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 535
    const-string p1, "-"

    return-object p1

    .line 530
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 534
    :cond_1
    const-string/jumbo p2, "\u8f66\u673a ADB\uff08\u7cfb\u7edf\u670d\u52a1\uff09"

    const-string v0, "head unit ADB (system service)"

    invoke-virtual {p1, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 533
    :cond_2
    const-string/jumbo p2, "\u8f66\u673a ADB + su"

    const-string v0, "head unit ADB + su"

    invoke-virtual {p1, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 532
    :cond_3
    const-string/jumbo p2, "\u8f66\u673a ADB\uff08root\uff09"

    const-string v0, "head unit ADB (root)"

    invoke-virtual {p1, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 531
    :cond_4
    const-string/jumbo p1, "su"

    return-object p1
.end method

.method private final viaShown(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Ljava/lang/String;
    .locals 2

    .line 539
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 544
    const-string p1, "-"

    return-object p1

    .line 539
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 543
    :cond_1
    const-string p2, "head unit ADB (system service)"

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "\u8f66\u673a ADB\uff08\u7cfb\u7edf\u670d\u52a1\uff09"

    invoke-virtual {p1, v1, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 542
    :cond_2
    const-string p2, "head unit ADB + su"

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "\u8f66\u673a ADB + su"

    invoke-virtual {p1, v1, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 541
    :cond_3
    const-string p2, "head unit ADB (root)"

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "\u8f66\u673a ADB\uff08root\uff09"

    invoke-virtual {p1, v1, p2, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 540
    :cond_4
    const-string/jumbo p1, "su"

    return-object p1
.end method


# virtual methods
.method public final collect(Landroid/content/Context;ZZLjava/lang/String;)Lcom/shilapi/xcertplay/HeadUnitCapabilities$Report;
    .locals 56

    move-object/from16 v1, p0

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v3, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;

    move/from16 v0, p2

    move-object/from16 v4, p4

    invoke-direct {v3, v0, v4}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;-><init>(ZLjava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string/jumbo v6, "unknown"

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 139
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    .line 166
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/16 v12, 0x15

    if-lt v0, v12, :cond_0

    .line 95
    invoke-static {}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m()[Ljava/lang/String;

    move-result-object v0

    const-string v13, "SUPPORTED_ABIS"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v0

    check-cast v14, [Ljava/lang/Object;

    const/16 v21, 0x3f

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v14 .. v22}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v13, v0

    goto :goto_2

    .line 96
    :cond_0
    new-array v0, v7, [Ljava/lang/String;

    sget-object v13, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v13, v0, v10

    sget-object v13, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v13, v0, v8

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 642
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/Collection;

    .line 643
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    .line 96
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v16, v15

    check-cast v16, Ljava/lang/CharSequence;

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 643
    invoke-interface {v13, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 644
    :cond_2
    check-cast v13, Ljava/util/List;

    .line 642
    move-object v14, v13

    check-cast v14, Ljava/lang/Iterable;

    const/16 v21, 0x3f

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 96
    invoke-static/range {v14 .. v22}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :goto_2
    move-object v14, v5

    check-cast v14, Ljava/util/Collection;

    new-instance v15, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string v0, "Android \u7248\u672c"

    const-string v12, "Android version"

    invoke-virtual {v3, v0, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (API "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v21, 0x18

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v22}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v14, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v16, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v0, "\u578b\u53f7"

    const-string v8, "Model"

    invoke-virtual {v3, v0, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v22, 0x18

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v16 .. v23}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    move-object v0, v13

    check-cast v0, Ljava/lang/CharSequence;

    const-string v7, "armeabi-v7a"

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v15, 0x0

    move-object/from16 v16, v5

    const/4 v5, 0x2

    invoke-static {v0, v7, v10, v5, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 100
    const-string v7, "arm64"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v0, v7, v10, v5, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v5, 0x1

    .line 101
    :goto_4
    new-instance v17, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string v7, "CPU \u67b6\u6784"

    const-string v10, "CPU ABI"

    invoke-virtual {v3, v7, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v7, ""

    if-eqz v5, :cond_5

    move-object v10, v7

    goto :goto_5

    .line 102
    :cond_5
    const-string/jumbo v10, "\uff08\u8f66\u673a\u6b63\u5f0f\u7248\u53ea\u5e26 ARM\uff0c\u9700\u8981\u53e6\u6253 x86 \u7248\u672c\uff09"

    const-string v15, " (the car release is ARM-only; needs an x86 build)"

    invoke-virtual {v3, v10, v15}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    if-eqz v5, :cond_6

    .line 103
    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_6

    :cond_6
    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_6
    move-object/from16 v20, v5

    const/16 v23, 0x18

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 101
    invoke-direct/range {v17 .. v24}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v17

    invoke-interface {v14, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v5

    .line 105
    const-string v10, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v1, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->readText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-static {v10}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const/16 v10, 0x3e8

    move-object/from16 v19, v12

    move-object v15, v13

    int-to-long v12, v10

    div-long v17, v17, v12

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_7

    :cond_7
    move-object/from16 v19, v12

    move-object v15, v13

    const/4 v10, 0x0

    .line 106
    :goto_7
    const-string v12, "CPU \u6838\u5fc3"

    const-string v13, "CPU cores"

    invoke-virtual {v3, v12, v13}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v10, :cond_8

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " MHz"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_9

    :cond_8
    move-object v10, v7

    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/4 v10, 0x2

    if-lt v5, v10, :cond_a

    .line 107
    sget-object v10, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_8

    :cond_a
    sget-object v10, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_8
    move-object/from16 v29, v10

    .line 106
    new-instance v26, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x10

    const/16 v33, 0x0

    invoke-direct/range {v26 .. v33}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v10, v26

    invoke-interface {v14, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v10, "/proc/cpuinfo"

    invoke-direct {v1, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->readText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_b

    move-object v10, v7

    .line 109
    :cond_b
    const-string v12, "arm"

    check-cast v12, Ljava/lang/CharSequence;

    move/from16 v18, v5

    move-object/from16 v17, v15

    const/4 v5, 0x0

    const/4 v13, 0x2

    const/4 v15, 0x0

    invoke-static {v0, v12, v5, v13, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lkotlin/text/Regex;

    const-string v5, "\\bneon\\b|\\basimd\\b"

    invoke-direct {v0, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "toLowerCase(...)"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v15, v0

    goto :goto_9

    :cond_c
    const/4 v15, 0x0

    :goto_9
    if-eqz v15, :cond_e

    .line 110
    new-instance v26, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    invoke-virtual {v3, v15}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_a

    :cond_d
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_a
    move-object/from16 v29, v0

    const/16 v32, 0x10

    const/16 v33, 0x0

    const-string v27, "NEON"

    const/16 v30, 0x1

    const/16 v31, 0x0

    invoke-direct/range {v26 .. v33}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v26

    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_e
    new-instance v0, Lkotlin/text/Regex;

    const-string v5, "MemTotal:\\s+(\\d+)"

    invoke-direct {v0, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v5, "/proc/meminfo"

    invoke-direct {v1, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->readText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_f

    move-object v5, v7

    :cond_f
    check-cast v5, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v0, v5, v12, v13, v10}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/16 v0, 0x400

    move-wide/from16 v20, v12

    int-to-long v12, v0

    div-long v12, v20, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_b

    :cond_10
    const/4 v0, 0x0

    .line 112
    :goto_b
    const-string/jumbo v5, "\u5185\u5b58"

    const-string v10, "RAM"

    invoke-virtual {v3, v5, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "\u672a\u77e5"

    if-eqz v0, :cond_11

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " MB"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_11
    invoke-virtual {v3, v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    move-object/from16 v28, v0

    sget-object v29, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    new-instance v26, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x18

    const/16 v33, 0x0

    invoke-direct/range {v26 .. v33}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v26

    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    .line 114
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 116
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x12

    if-lt v10, v12, :cond_13

    invoke-static {v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/os/StatFs;)J

    move-result-wide v12

    const/high16 v0, 0x100000

    move-wide/from16 v20, v12

    int-to-long v12, v0

    div-long v12, v20, v12

    goto :goto_c

    :cond_13
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v12, v10

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    move-wide/from16 v20, v12

    int-to-long v12, v0

    mul-long v12, v12, v20

    const/high16 v0, 0x100000

    move-wide/from16 v20, v12

    int-to-long v12, v0

    div-long v12, v20, v12

    :goto_c
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    :goto_d
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v0, 0x0

    :cond_14
    check-cast v0, Ljava/lang/Long;

    .line 118
    const-string/jumbo v10, "\u53ef\u7528\u5b58\u50a8"

    const-string v12, "Free storage"

    invoke-virtual {v3, v10, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v0, :cond_15

    move-object v10, v0

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " MB"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_16

    :cond_15
    invoke-virtual {v3, v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_16
    move-object/from16 v28, v10

    if-eqz v0, :cond_17

    .line 119
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_e

    :cond_17
    const-wide/16 v12, 0x0

    :goto_e
    const-wide/16 v20, 0x32

    cmp-long v0, v12, v20

    if-ltz v0, :cond_18

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_f

    :cond_18
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_f
    move-object/from16 v29, v0

    .line 118
    new-instance v26, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x18

    const/16 v33, 0x0

    invoke-direct/range {v26 .. v33}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v26

    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    .line 124
    const-string v0, "android.hardware.bluetooth"

    invoke-static {v4, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->collect$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    .line 125
    move-object v12, v10

    check-cast v12, Ljava/util/Collection;

    new-instance v26, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v13, "\u7cfb\u7edf\u58f0\u660e\u84dd\u7259"

    const-string v14, "Bluetooth feature"

    invoke-virtual {v3, v13, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v28

    if-eqz v0, :cond_19

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_10

    :cond_19
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_10
    move-object/from16 v29, v0

    const/16 v32, 0x18

    const/16 v33, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v26 .. v33}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/shilapi/xcertplay/compat/Api19Kt;->bluetoothAdapterCompat(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_11

    :catchall_1
    move-exception v0

    sget-object v13, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_11
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    const/4 v0, 0x0

    :cond_1a
    move-object v13, v0

    check-cast v13, Landroid/bluetooth/BluetoothAdapter;

    .line 127
    new-instance v26, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v0, "\u5b89\u5353\u84dd\u7259\u9002\u914d\u5668"

    const-string v14, "Android Bluetooth adapter"

    invoke-virtual {v3, v0, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v13, :cond_1b

    const/4 v0, 0x1

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v28

    if-eqz v13, :cond_1c

    .line 128
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_13

    :cond_1c
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_13
    move-object/from16 v29, v0

    const/16 v32, 0x18

    const/16 v33, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 127
    invoke-direct/range {v26 .. v33}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    if-eqz v13, :cond_1d

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_14

    :cond_1d
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_15

    :catchall_2
    move-exception v0

    sget-object v14, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_15
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    const/4 v0, 0x0

    :cond_1e
    move-object v14, v0

    check-cast v14, Ljava/lang/Boolean;

    .line 137
    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    sget-object v0, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;->INSTANCE:Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v13}, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;->classify(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)Lcom/shilapi/xcertplay/compat/BluetoothStack;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_16

    :catchall_3
    move-exception v0

    sget-object v20, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_16
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1f

    const/4 v0, 0x0

    :cond_1f
    move-object/from16 v20, v10

    move-object v10, v0

    check-cast v10, Lcom/shilapi/xcertplay/compat/BluetoothStack;

    if-eqz v13, :cond_21

    .line 139
    new-instance v26, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v0, "\u84dd\u7259\u5df2\u6253\u5f00"

    move-object/from16 v21, v15

    const-string v15, "Bluetooth on"

    invoke-virtual {v3, v0, v15}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v3, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v28

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_17

    :cond_20
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_17
    move-object/from16 v29, v0

    .line 140
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitFixes;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitFixes;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v10}, Lcom/shilapi/xcertplay/HeadUnitFixes;->forBluetooth(Landroid/content/Context;Lcom/shilapi/xcertplay/compat/BluetoothStack;)Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    move-result-object v31

    const/16 v32, 0x8

    const/16 v33, 0x0

    const/16 v30, 0x0

    .line 139
    invoke-direct/range {v26 .. v33}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_21
    move-object/from16 v21, v15

    .line 142
    :goto_18
    new-instance v26, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    .line 143
    const-string/jumbo v0, "\u539f\u751f\uff08\u5b89\u5353\uff09\u84dd\u7259"

    const-string v15, "Native (Android) Bluetooth"

    invoke-virtual {v3, v0, v15}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/4 v0, -0x1

    if-nez v10, :cond_22

    const/4 v15, -0x1

    goto :goto_19

    .line 144
    :cond_22
    sget-object v15, Lcom/shilapi/xcertplay/HeadUnitCapabilities$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ordinal()I

    move-result v22

    aget v15, v15, v22

    :goto_19
    move-object/from16 v22, v10

    const-string v10, "none"

    move-object/from16 v34, v7

    const-string/jumbo v7, "\u6ca1\u6709"

    if-eq v15, v0, :cond_27

    move-object/from16 v35, v8

    const/4 v8, 0x1

    if-eq v15, v8, :cond_26

    const/4 v8, 0x2

    if-eq v15, v8, :cond_25

    const/4 v8, 0x3

    if-eq v15, v8, :cond_24

    const/4 v8, 0x4

    if-ne v15, v8, :cond_23

    .line 149
    invoke-virtual {v3, v7, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1a

    .line 144
    :cond_23
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 148
    :cond_24
    const-string/jumbo v8, "\u6ca1\u6709\uff08\u5382\u5546\u6808\uff09\uff1a\u65e0\u7ebf CarPlay \u4e0d\u53ef\u7528\uff0c\u8bf7\u7528 USB \u6709\u7ebf"

    const-string v15, "none (vendor stack): no wireless CarPlay, use USB"

    invoke-virtual {v3, v8, v15}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1a

    .line 146
    :cond_25
    const-string/jumbo v8, "\u53ef\u7528\uff0c\u4f46\u84dd\u7259\u6ca1\u6253\u5f00"

    const-string/jumbo v15, "usable, Bluetooth is off"

    invoke-virtual {v3, v8, v15}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1a

    .line 145
    :cond_26
    const-string/jumbo v8, "\u53ef\u7528"

    const-string/jumbo v15, "usable"

    invoke-virtual {v3, v8, v15}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1a

    :cond_27
    move-object/from16 v35, v8

    .line 150
    invoke-virtual {v3, v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_1a
    move-object/from16 v28, v8

    if-nez v22, :cond_28

    const/4 v8, -0x1

    goto :goto_1b

    .line 152
    :cond_28
    sget-object v8, Lcom/shilapi/xcertplay/HeadUnitCapabilities$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v22 .. v22}, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ordinal()I

    move-result v15

    aget v8, v8, v15

    :goto_1b
    if-eq v8, v0, :cond_2b

    const/4 v15, 0x1

    if-eq v8, v15, :cond_2a

    const/4 v15, 0x2

    if-eq v8, v15, :cond_29

    .line 156
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_1c

    .line 154
    :cond_29
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_1c

    .line 153
    :cond_2a
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_1c

    .line 155
    :cond_2b
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_1c
    move-object/from16 v29, v0

    const/16 v32, 0x18

    const/16 v33, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 142
    invoke-direct/range {v26 .. v33}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    const-string/jumbo v0, "\u84dd\u7259\u6808\u4fe1\u53f7"

    const-string v8, "Bluetooth stack signals"

    invoke-virtual {v3, v0, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 160
    :try_start_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    sget-object v0, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;->INSTANCE:Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/compat/BluetoothStackSupport;->signals(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_1d

    :catchall_4
    move-exception v0

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1d
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    move-object v0, v6

    :cond_2c
    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    sget-object v29, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 159
    new-instance v26, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x10

    const/16 v33, 0x0

    invoke-direct/range {v26 .. v33}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_48

    .line 162
    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 163
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    .line 164
    const-string v0, "06Link check"

    const-string v8, "6c6a2f3e-1b0f-4f7e-9c42-6b1f3d2a8e11"

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v13, v0, v8}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 163
    invoke-static {v9}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_1e

    :catchall_5
    move-exception v0

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    :goto_1e
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_2d

    goto :goto_1f

    :cond_2d
    move-object v0, v11

    :goto_1f
    move-object v8, v0

    check-cast v8, Ljava/lang/Boolean;

    .line 167
    new-instance v26, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v0, "\u5e94\u7528\u53ef\u7528 RFCOMM"

    const-string v15, "App RFCOMM socket"

    invoke-virtual {v3, v0, v15}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v3, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v28

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_20

    :cond_2e
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_20
    move-object/from16 v29, v0

    const/16 v32, 0x18

    const/16 v33, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v26 .. v33}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    :try_start_6
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    const-string v15, "getBondedDevices(...)"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_21

    :catchall_6
    move-exception v0

    sget-object v15, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_21
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2f

    const/4 v0, 0x0

    :cond_2f
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_33

    .line 170
    move-object v15, v0

    check-cast v15, Ljava/lang/Iterable;

    move-object/from16 v26, v0

    .line 646
    instance-of v0, v15, Ljava/util/Collection;

    if-eqz v0, :cond_31

    move-object v0, v15

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v15, 0x0

    :cond_30
    move-object/from16 v27, v8

    goto :goto_23

    .line 648
    :cond_31
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v15, 0x0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v27, v8

    .line 170
    sget-object v8, Lcom/shilapi/xcertplay/IphonePairing;->Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->kind(Landroid/bluetooth/BluetoothDevice;)Lcom/shilapi/xcertplay/IphonePairing$Kind;

    move-result-object v0

    sget-object v8, Lcom/shilapi/xcertplay/IphonePairing$Kind;->IPHONE:Lcom/shilapi/xcertplay/IphonePairing$Kind;

    if-ne v0, v8, :cond_32

    add-int/lit8 v15, v15, 0x1

    if-gez v15, :cond_32

    .line 648
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    :cond_32
    move-object/from16 v8, v27

    move-object/from16 v0, v28

    goto :goto_22

    .line 649
    :goto_23
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v8, v0

    goto :goto_24

    :cond_33
    move-object/from16 v26, v0

    move-object/from16 v27, v8

    const/4 v8, 0x0

    :goto_24
    if-eqz v8, :cond_35

    .line 171
    move-object v0, v8

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_34

    const/4 v0, 0x1

    goto :goto_25

    :cond_34
    const/4 v0, 0x0

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v15, v0

    goto :goto_26

    :cond_35
    const/4 v15, 0x0

    .line 172
    :goto_26
    new-instance v36, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v0, "\u5df2\u914d\u5bf9\u8bbe\u5907"

    move-object/from16 v28, v8

    const-string v8, "Paired devices"

    invoke-virtual {v3, v0, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    if-eqz v26, :cond_36

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_37

    :cond_36
    invoke-virtual {v3, v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_37
    move-object/from16 v38, v0

    sget-object v39, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v42, 0x18

    const/16 v43, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-direct/range {v36 .. v43}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v26, :cond_44

    .line 174
    move-object/from16 v0, v26

    check-cast v0, Ljava/lang/Iterable;

    .line 651
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v0, 0x0

    :goto_27
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_43

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v29, v8

    add-int/lit8 v8, v0, 0x1

    if-gez v0, :cond_38

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_38
    move-object/from16 v30, v13

    move-object/from16 v13, v26

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 175
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v13}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_28

    :catchall_7
    move-exception v0

    sget-object v26, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_28
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_39

    const/4 v0, 0x0

    :cond_39
    check-cast v0, [Landroid/os/ParcelUuid;

    if-eqz v0, :cond_3c

    move-object/from16 v26, v14

    .line 652
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v31, v7

    array-length v7, v0

    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v14, Ljava/util/Collection;

    .line 653
    array-length v7, v0

    move-object/from16 v32, v0

    const/4 v0, 0x0

    :goto_29
    if-ge v0, v7, :cond_3b

    aget-object v33, v32, v0

    .line 176
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v33

    move/from16 v36, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v33, v7

    const-string/jumbo v7, "toString(...)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    const-string v7, "-0000-1000-8000-00805f9b34fb"

    move-object/from16 v39, v2

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    const/4 v2, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v0, v7, v2, v10, v11}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    const/16 v2, 0x8

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "substring(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    :cond_3a
    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v36, 0x1

    move/from16 v7, v33

    move-object/from16 v10, v37

    move-object/from16 v11, v38

    move-object/from16 v2, v39

    goto :goto_29

    :cond_3b
    move-object/from16 v39, v2

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    .line 655
    move-object v0, v14

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    goto :goto_2a

    :cond_3c
    move-object/from16 v39, v2

    move-object/from16 v31, v7

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move-object/from16 v26, v14

    const/4 v2, 0x0

    .line 179
    :goto_2a
    :try_start_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2b

    :cond_3d
    const/4 v0, 0x0

    :goto_2b
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_2c

    :catchall_8
    move-exception v0

    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2c
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    const/4 v0, 0x0

    :cond_3e
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "0x"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_40

    :cond_3f
    const-string v0, "?"

    .line 180
    :cond_40
    new-instance v40, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\u914d\u5bf9\u8bbe\u5907 "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Paired device "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 181
    sget-object v7, Lcom/shilapi/xcertplay/IphonePairing;->Companion:Lcom/shilapi/xcertplay/IphonePairing$Companion;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v13}, Lcom/shilapi/xcertplay/IphonePairing$Companion;->kind(Landroid/bluetooth/BluetoothDevice;)Lcom/shilapi/xcertplay/IphonePairing$Kind;

    move-result-object v7

    if-eqz v2, :cond_41

    move-object/from16 v42, v2

    check-cast v42, Ljava/lang/Iterable;

    const-string v2, ","

    move-object/from16 v43, v2

    check-cast v43, Ljava/lang/CharSequence;

    const/16 v49, 0x3e

    const/16 v50, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    invoke-static/range {v42 .. v50}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    :cond_41
    move-object v2, v6

    :cond_42
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "class="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " kind="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " services="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    sget-object v43, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v46, 0x10

    const/16 v47, 0x0

    const/16 v44, 0x1

    const/16 v45, 0x0

    .line 180
    invoke-direct/range {v40 .. v47}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v0, v8

    move-object/from16 v14, v26

    move-object/from16 v8, v29

    move-object/from16 v13, v30

    move-object/from16 v7, v31

    move-object/from16 v10, v37

    move-object/from16 v11, v38

    move-object/from16 v2, v39

    goto/16 :goto_27

    :cond_43
    move-object/from16 v39, v2

    move-object/from16 v31, v7

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move-object/from16 v30, v13

    move-object/from16 v26, v14

    .line 656
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2d

    :cond_44
    move-object/from16 v39, v2

    move-object/from16 v31, v7

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move-object/from16 v30, v13

    move-object/from16 v26, v14

    .line 183
    :goto_2d
    new-instance v40, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v0, "\u5df2\u914d\u5bf9 iPhone\uff08\u6309 CarPlay \u670d\u52a1\u8bc6\u522b\uff09"

    const-string v2, "iPhones paired (by CarPlay service)"

    invoke-virtual {v3, v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    if-eqz v28, :cond_45

    .line 184
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_46

    :cond_45
    invoke-virtual {v3, v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_46
    move-object/from16 v42, v0

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_2e

    :cond_47
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_2e
    move-object/from16 v43, v0

    const/16 v46, 0x18

    const/16 v47, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    .line 183
    invoke-direct/range {v40 .. v47}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v27

    goto :goto_2f

    :cond_48
    move-object/from16 v39, v2

    move-object/from16 v31, v7

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move-object/from16 v30, v13

    move-object/from16 v26, v14

    const/4 v15, 0x0

    .line 188
    :goto_2f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 189
    const-string v0, "android.hardware.wifi"

    invoke-static {v4, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->collect$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v7

    .line 190
    invoke-direct {v1}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->networkInterfaces()Ljava/util/List;

    move-result-object v8

    .line 192
    invoke-virtual {v1, v7, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->noWifi$common_release(ZLjava/util/List;)Z

    move-result v10

    .line 193
    :try_start_9
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    invoke-static/range {v39 .. v39}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-class v0, Landroid/net/wifi/WifiManager;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    move-object/from16 v11, v39

    :try_start_a
    invoke-static {v11, v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_31

    :catchall_9
    move-exception v0

    goto :goto_30

    :catchall_a
    move-exception v0

    move-object/from16 v11, v39

    :goto_30
    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_31
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_49

    const/4 v0, 0x0

    :cond_49
    move-object v12, v0

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 194
    move-object v13, v2

    check-cast v13, Ljava/util/Collection;

    new-instance v39, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v0, "\u7cfb\u7edf\u58f0\u660e Wi\u2011Fi"

    const-string v14, "Wi-Fi feature"

    invoke-virtual {v3, v0, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v41

    if-eqz v7, :cond_4a

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_32

    :cond_4a
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_32
    move-object/from16 v42, v0

    const/16 v45, 0x18

    const/16 v46, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v39 .. v46}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v39

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    const-string/jumbo v0, "\u7f51\u7edc\u63a5\u53e3"

    const-string v14, "Network interfaces"

    invoke-virtual {v3, v0, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v41, v8

    check-cast v41, Ljava/lang/Iterable;

    const/16 v48, 0x3f

    const/16 v49, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v47, 0x0

    invoke-static/range {v41 .. v49}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v41

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_4b

    const-string v0, "-"

    :cond_4b
    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    .line 657
    instance-of v0, v8, Ljava/util/Collection;

    if-eqz v0, :cond_4d

    move-object v0, v8

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_4c
    move-object/from16 v29, v2

    move/from16 v27, v7

    move/from16 v28, v10

    goto :goto_34

    .line 658
    :cond_4d
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 196
    const-string/jumbo v14, "wlan"

    move-object/from16 v29, v2

    move/from16 v27, v7

    move/from16 v28, v10

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v10, 0x0

    invoke-static {v8, v14, v2, v7, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_35

    :cond_4e
    move/from16 v7, v27

    move/from16 v10, v28

    move-object/from16 v2, v29

    goto :goto_33

    :goto_34
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_35
    move-object/from16 v42, v0

    .line 195
    new-instance v39, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const/16 v43, 0x1

    const/16 v44, 0x0

    const/16 v45, 0x10

    const/16 v46, 0x0

    invoke-direct/range {v39 .. v46}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v39

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v0, "Wi\u2011Fi \u5df2\u6253\u5f00"

    const-string v2, "Wi-Fi on"

    invoke-virtual {v3, v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    :try_start_b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    if-eqz v12, :cond_4f

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_36

    :cond_4f
    const/4 v0, 0x0

    :goto_36
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_37

    :catchall_b
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_37
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 v0, 0x0

    :cond_50
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v41

    sget-object v42, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    new-instance v39, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x18

    const/16 v46, 0x0

    invoke-direct/range {v39 .. v46}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v39

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 198
    :try_start_c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_52

    if-eqz v12, :cond_51

    invoke-static {v12}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_38

    :cond_51
    const/4 v0, 0x0

    goto :goto_38

    .line 200
    :cond_52
    const-class v0, Landroid/net/wifi/WifiManager;

    const-string v2, "isDualBandSupported"

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v12, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    .line 198
    :goto_38
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_39

    :catchall_c
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    :goto_39
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const/4 v0, 0x0

    :cond_53
    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    .line 202
    new-instance v39, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v0, "\u652f\u6301 5 GHz"

    const-string v7, "5 GHz band"

    invoke-virtual {v3, v0, v7}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v41

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    move-object/from16 v42, v0

    move-object/from16 v7, v38

    goto :goto_3b

    :cond_54
    move-object/from16 v7, v38

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_3a
    move-object/from16 v42, v0

    goto :goto_3b

    :cond_55
    if-nez v2, :cond_b0

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_3a

    :goto_3b
    const/16 v45, 0x18

    const/16 v46, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v39 .. v46}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v39

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 203
    :try_start_d
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-static {v11, v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto :goto_3c

    :catchall_d
    move-exception v0

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3c
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56

    const/4 v0, 0x0

    :cond_56
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 205
    :try_start_e
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v8, v1

    check-cast v8, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    .line 206
    const-class v8, Landroid/net/ConnectivityManager;

    const-string v10, "getTetherableWifiRegexs"

    const/4 v14, 0x0

    invoke-virtual {v8, v10, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/String;

    .line 205
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    goto :goto_3d

    :catchall_e
    move-exception v0

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    :goto_3d
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    const/4 v0, 0x0

    :cond_57
    move-object v8, v0

    check-cast v8, [Ljava/lang/String;

    if-eqz v28, :cond_58

    move-object v10, v7

    goto/16 :goto_42

    :cond_58
    if-eqz v8, :cond_5a

    .line 210
    array-length v0, v8

    if-nez v0, :cond_59

    const/4 v0, 0x1

    goto :goto_3e

    :cond_59
    const/4 v0, 0x0

    :goto_3e
    const/4 v10, 0x1

    xor-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3f
    move-object v10, v0

    goto :goto_42

    .line 211
    :cond_5a
    sget-object v0, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v11}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->isEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    move-object v10, v9

    goto :goto_42

    .line 212
    :cond_5b
    :try_start_f
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    const-class v0, Landroid/net/wifi/WifiManager;

    const-string v10, "getWifiApState"

    const/4 v14, 0x0

    invoke-virtual {v0, v10, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v10, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    goto :goto_40

    :catchall_f
    move-exception v0

    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_40
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5c

    const/4 v0, 0x0

    :cond_5c
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5e

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/16 v10, 0xa

    if-gt v10, v0, :cond_5d

    const/16 v10, 0xf

    if-ge v0, v10, :cond_5d

    const/4 v0, 0x1

    goto :goto_41

    :cond_5d
    const/4 v0, 0x0

    :goto_41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3f

    :cond_5e
    const/4 v10, 0x0

    .line 213
    :goto_42
    const-string/jumbo v0, "\u7cfb\u7edf\u652f\u6301 Wi\u2011Fi \u70ed\u70b9"

    const-string v14, "Wi-Fi hotspot support"

    invoke-virtual {v3, v0, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 214
    invoke-virtual {v3, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_61

    array-length v14, v8

    if-nez v14, :cond_5f

    const/4 v14, 0x1

    goto :goto_43

    :cond_5f
    const/4 v14, 0x0

    :goto_43
    if-nez v14, :cond_60

    move-object/from16 v40, v8

    goto :goto_44

    :cond_60
    const/16 v40, 0x0

    :goto_44
    if-eqz v40, :cond_61

    const/16 v47, 0x3f

    const/16 v48, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-static/range {v40 .. v48}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v28, v2

    const-string v2, " ("

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_62

    goto :goto_45

    :cond_61
    move-object/from16 v28, v2

    :goto_45
    move-object/from16 v2, v34

    :cond_62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 215
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_46
    move-object/from16 v41, v0

    goto :goto_47

    :cond_63
    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_46

    :cond_64
    if-nez v10, :cond_af

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_46

    .line 213
    :goto_47
    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x18

    const/16 v45, 0x0

    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v11}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->isEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 219
    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v2, "\u70ed\u70b9\u5f53\u524d\u5df2\u5f00\u542f"

    const-string v8, "Hotspot on now"

    invoke-virtual {v3, v2, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v40

    sget-object v41, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 220
    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitFixes;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitFixes;

    invoke-virtual {v2, v11, v10, v0}, Lcom/shilapi/xcertplay/HeadUnitFixes;->forHotspot(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    move-result-object v43

    const/16 v44, 0x8

    .line 219
    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 221
    :try_start_10
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    .line 222
    const-class v0, Landroid/net/wifi/WifiManager;

    const-string v2, "getWifiApConfiguration"

    const/4 v14, 0x0

    invoke-virtual {v0, v2, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 223
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_65

    const-string v8, "SSID"

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_48

    :cond_65
    const/4 v0, 0x0

    :goto_48
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_67

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_49

    :cond_66
    const/4 v0, 0x0

    goto :goto_4a

    :cond_67
    :goto_49
    const/4 v0, 0x1

    :goto_4a
    const/4 v8, 0x1

    xor-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    goto :goto_4b

    :catchall_10
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    :goto_4b
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const/4 v0, 0x0

    :cond_68
    check-cast v0, Ljava/lang/Boolean;

    .line 225
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v2, "\u70ed\u70b9\u5df2\u8bbe\u7f6e\u540d\u79f0"

    const-string v8, "Hotspot name set"

    invoke-virtual {v3, v2, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v40

    sget-object v41, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v44, 0x18

    const/16 v45, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_69
    :try_start_11
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    .line 227
    const-class v0, Landroid/net/wifi/WifiManager;

    const-string/jumbo v2, "setWifiApEnabled"

    const/4 v8, 0x2

    .line 228
    new-array v12, v8, [Ljava/lang/Class;

    const-class v8, Landroid/net/wifi/WifiConfiguration;

    const/16 v25, 0x0

    aput-object v8, v12, v25

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x1

    aput-object v8, v12, v14

    .line 227
    invoke-virtual {v0, v2, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 226
    invoke-static {v9}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    goto :goto_4c

    :catchall_11
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 230
    :goto_4c
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    move-object v0, v7

    :cond_6a
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 231
    const-string v0, "android.hardware.wifi.direct"

    invoke-static {v4, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->collect$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v8

    .line 232
    :try_start_12
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    const-string/jumbo v0, "wifip2p"

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6b

    const/4 v0, 0x1

    goto :goto_4d

    :cond_6b
    const/4 v0, 0x0

    :goto_4d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    goto :goto_4e

    :catchall_12
    move-exception v0

    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4e
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6c

    move-object v0, v7

    :cond_6c
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 233
    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    if-eqz v8, :cond_6d

    if-eqz v12, :cond_6d

    const/4 v0, 0x1

    goto :goto_4f

    :cond_6d
    const/4 v0, 0x0

    :goto_4f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v40

    if-eqz v8, :cond_6e

    if-eqz v12, :cond_6e

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_50

    :cond_6e
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_50
    move-object/from16 v41, v0

    const/16 v44, 0x18

    const/16 v45, 0x0

    const-string v39, "Wi\u2011Fi Direct"

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    check-cast v14, Ljava/util/List;

    .line 236
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    move/from16 v19, v2

    const-string v2, "A car hotspot"

    move/from16 v32, v8

    move/from16 v33, v12

    const/4 v8, 0x0

    new-array v12, v8, [Ljava/lang/Object;

    const-string v8, "A \u8f66\u673a\u70ed\u70b9"

    invoke-virtual {v3, v8, v2, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_6f
    move/from16 v19, v2

    move/from16 v32, v8

    move/from16 v33, v12

    .line 237
    :goto_51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_71

    .line 238
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    if-eqz v19, :cond_70

    const/16 v27, 0x1

    goto :goto_52

    :cond_70
    const/16 v27, 0x0

    goto :goto_52

    :cond_71
    if-gt v2, v0, :cond_70

    const/16 v8, 0x1d

    if-ge v0, v8, :cond_70

    :goto_52
    if-eqz v27, :cond_72

    .line 242
    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    const-string v8, "B automatic hotspot"

    const/4 v12, 0x0

    new-array v2, v12, [Ljava/lang/Object;

    const-string v12, "B \u81ea\u52a8\u70ed\u70b9"

    invoke-virtual {v3, v12, v8, v2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_72
    if-eqz v27, :cond_73

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-gt v2, v0, :cond_73

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_73

    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    .line 246
    const-string/jumbo v0, "\u81ea\u52a8\u70ed\u70b9\u7684\u540d\u79f0\u548c\u5bc6\u7801\uff08Android 8\u20139\uff09"

    const-string v2, "Automatic hotspot name and password (Android 8\u20139)"

    invoke-virtual {v3, v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 247
    const-string/jumbo v0, "\u7531\u7cfb\u7edf\u51b3\u5b9a\uff0c\u6bcf\u6b21\u53ef\u80fd\u4e0d\u540c\uff1b06Link \u7ecf\u84dd\u7259\u544a\u8bc9 iPhone\uff0c\u65e0\u9700\u8bbe\u7f6e"

    const-string v2, "chosen by Android, may differ each time; 06Link sends them to the iPhone over Bluetooth, nothing to set"

    invoke-virtual {v3, v0, v2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 248
    sget-object v41, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v44, 0x10

    const/16 v45, 0x0

    const/16 v42, 0x1

    const/16 v43, 0x0

    .line 245
    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_73
    if-eqz v32, :cond_74

    if-eqz v33, :cond_74

    .line 249
    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    const-string v2, "C Wi\u2011Fi Direct"

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v2, v0, :cond_77

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_77

    if-eqz v27, :cond_77

    .line 251
    :try_start_13
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    invoke-static {v11}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    goto :goto_53

    :catchall_13
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_53
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    const/4 v0, 0x0

    :cond_75
    check-cast v0, Ljava/lang/Boolean;

    .line 252
    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v2, "\u4fee\u6539\u7cfb\u7edf\u8bbe\u7f6e\u6388\u6743\uff08\u81ea\u52a8\u70ed\u70b9\uff09"

    const-string v8, "Modify system settings (automatic hotspot)"

    invoke-virtual {v3, v2, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 253
    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v40

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_54

    :cond_76
    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_54
    move-object/from16 v41, v2

    .line 255
    sget-object v2, Lcom/shilapi/xcertplay/HeadUnitFixes;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitFixes;

    invoke-virtual {v2, v11, v0}, Lcom/shilapi/xcertplay/HeadUnitFixes;->forWriteSettings(Landroid/content/Context;Ljava/lang/Boolean;)Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    move-result-object v43

    const/16 v44, 0x8

    const/16 v45, 0x0

    const/16 v42, 0x0

    .line 252
    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 260
    const-string v0, "android.hardware.usb.host"

    invoke-static {v4, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->collect$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v8

    .line 261
    new-instance v0, Ljava/io/File;

    const-string v12, "/dev/bus/usb"

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    .line 262
    move-object v13, v2

    check-cast v13, Ljava/util/Collection;

    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v0, "\u7cfb\u7edf\u58f0\u660e USB \u4e3b\u673a"

    move/from16 v19, v12

    const-string v12, "USB host feature"

    invoke-virtual {v3, v0, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v40

    if-eqz v8, :cond_78

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_55

    :cond_78
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_55
    move-object/from16 v41, v0

    const/16 v44, 0x18

    const/16 v45, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v40

    if-eqz v19, :cond_79

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_56

    :cond_79
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_56
    move-object/from16 v41, v0

    const/16 v44, 0x10

    const/16 v45, 0x0

    const-string v39, "/dev/bus/usb"

    const/16 v42, 0x1

    const/16 v43, 0x0

    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 264
    :try_start_14
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-static {v11, v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_7a

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_57

    :cond_7a
    const/4 v0, 0x0

    :goto_57
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    goto :goto_58

    :catchall_14
    move-exception v0

    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_58
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v0, 0x0

    :cond_7b
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7f

    .line 265
    move-object v12, v0

    check-cast v12, Ljava/lang/Iterable;

    move-object/from16 v27, v0

    .line 660
    instance-of v0, v12, Ljava/util/Collection;

    if-eqz v0, :cond_7d

    move-object v0, v12

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_7c
    const/4 v0, 0x0

    goto :goto_5a

    .line 661
    :cond_7d
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/usb/UsbDevice;

    .line 265
    invoke-virtual {v12}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v12

    move-object/from16 v36, v0

    const/16 v0, 0x5ac

    if-ne v12, v0, :cond_7e

    const/4 v0, 0x1

    goto :goto_5a

    :cond_7e
    move-object/from16 v0, v36

    goto :goto_59

    .line 662
    :goto_5a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5b

    :cond_7f
    move-object/from16 v27, v0

    const/4 v0, 0x0

    .line 266
    :goto_5b
    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v12, "\u5f53\u524d USB \u8bbe\u5907"

    move-object/from16 v36, v14

    const-string v14, "USB devices now"

    invoke-virtual {v3, v12, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-eqz v27, :cond_80

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_81

    :cond_80
    invoke-virtual {v3, v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_81
    move-object/from16 v40, v12

    sget-object v41, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v44, 0x10

    const/16 v45, 0x0

    const/16 v42, 0x1

    const/16 v43, 0x0

    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v38

    invoke-interface {v13, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v5, "\u5df2\u63d2\u5165 iPhone"

    const-string v6, "iPhone plugged in"

    invoke-virtual {v3, v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v40

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_5c

    :cond_82
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_5c
    move-object/from16 v41, v0

    const/16 v44, 0x18

    const/16 v45, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/shilapi/xcertplay/VpnConsentState;->INSTANCE:Lcom/shilapi/xcertplay/VpnConsentState;

    invoke-virtual {v0, v11}, Lcom/shilapi/xcertplay/VpnConsentState;->granted(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 274
    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string v5, "VPN \u672c\u6b21\u5f00\u673a\u5df2\u6388\u6743\uff08\u6709\u7ebf\u9700\u8981\uff09"

    const-string v6, "VPN consent this boot (wired)"

    invoke-virtual {v3, v5, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v40

    sget-object v41, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 275
    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitFixes;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitFixes;

    invoke-virtual {v5, v11, v0}, Lcom/shilapi/xcertplay/HeadUnitFixes;->forVpnConsent(Landroid/content/Context;Ljava/lang/Boolean;)Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    move-result-object v43

    const/16 v44, 0x8

    .line 274
    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    .line 279
    const-string/jumbo v0, "video/avc"

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->decoders$common_release(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 280
    const-string/jumbo v0, "video/hevc"

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->decoders$common_release(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 281
    move-object/from16 v38, v6

    check-cast v38, Ljava/lang/Iterable;

    .line 663
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/Collection;

    .line 664
    invoke-interface/range {v38 .. v38}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_84

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v27, v0

    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->isHardware$common_release(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 664
    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_83
    move-object/from16 v0, v27

    goto :goto_5d

    :cond_84
    move-object/from16 v27, v0

    .line 665
    check-cast v12, Ljava/util/List;

    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x10

    if-ge v0, v13, :cond_88

    .line 283
    :try_start_15
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    sget-object v0, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/SoftwareH264Decoder$Companion;->getAvailable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    goto :goto_5e

    :catchall_15
    move-exception v0

    sget-object v13, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5e
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_85

    move-object v0, v7

    :cond_85
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 284
    move-object v13, v5

    check-cast v13, Ljava/util/Collection;

    new-instance v37, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string v14, "H.264 \u89e3\u7801"

    move/from16 v27, v0

    const-string v0, "H.264 decoding"

    invoke-virtual {v3, v14, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v27, :cond_86

    .line 285
    const-string v0, "FFmpeg \u8f6f\u4ef6\u89e3\u7801\uff08Android 4.0 \u6ca1\u6709 MediaCodec\uff09"

    const-string v14, "FFmpeg software (no MediaCodec on Android 4.0)"

    invoke-virtual {v3, v0, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5f

    .line 286
    :cond_86
    const-string/jumbo v0, "\u4e0d\u53ef\u7528"

    const-string/jumbo v14, "unavailable"

    invoke-virtual {v3, v0, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5f
    move-object/from16 v39, v0

    if-eqz v27, :cond_87

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_60

    :cond_87
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_60
    move-object/from16 v40, v0

    const/16 v43, 0x18

    const/16 v44, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    .line 284
    invoke-direct/range {v37 .. v44}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v37

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v31, v6

    move-object/from16 v37, v12

    goto/16 :goto_63

    .line 288
    :cond_88
    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    const-string v13, "H.264 \u786c\u4ef6\u89e3\u7801\u5668"

    const-string v14, "H.264 hardware decoders"

    invoke-virtual {v3, v13, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v41, v12

    check-cast v41, Ljava/lang/Iterable;

    const/16 v48, 0x3f

    const/16 v49, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-static/range {v41 .. v49}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_89

    move-object/from16 v14, v31

    move-object/from16 v31, v6

    move-object v6, v14

    move-object/from16 v14, v37

    invoke-virtual {v3, v6, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_61

    :cond_89
    move-object/from16 v14, v31

    move-object/from16 v31, v6

    move-object v6, v14

    move-object/from16 v14, v37

    :goto_61
    move-object/from16 v41, v13

    check-cast v41, Ljava/lang/String;

    .line 289
    move-object v13, v12

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8a

    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_62

    :cond_8a
    sget-object v13, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_62
    move-object/from16 v42, v13

    .line 288
    new-instance v39, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x18

    const/16 v46, 0x0

    invoke-direct/range {v39 .. v46}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v13, v39

    invoke-interface {v0, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 290
    const-string v13, "H.264 \u5168\u90e8\u89e3\u7801\u5668"

    move-object/from16 v37, v12

    const-string v12, "All H.264 decoders"

    invoke-virtual {v3, v13, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v45, 0x3f

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-static/range {v38 .. v46}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v38

    if-nez v38, :cond_8b

    invoke-virtual {v3, v6, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_8b
    move-object/from16 v41, v13

    check-cast v41, Ljava/lang/String;

    sget-object v42, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    new-instance v39, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const/16 v43, 0x1

    const/16 v44, 0x0

    const/16 v45, 0x10

    const/16 v46, 0x0

    move-object/from16 v40, v12

    invoke-direct/range {v39 .. v46}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v12, v39

    invoke-interface {v0, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-direct {v1}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->maxAvcSize()Ljava/lang/String;

    move-result-object v40

    if-eqz v40, :cond_8c

    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string v12, "H.264 \u6700\u5927\u5206\u8fa8\u7387"

    const-string v13, "H.264 max size"

    invoke-virtual {v3, v12, v13}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    sget-object v41, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v44, 0x10

    const/16 v45, 0x0

    const/16 v42, 0x1

    const/16 v43, 0x0

    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v12, v38

    invoke-interface {v0, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 292
    :cond_8c
    const-string v12, "HEVC \u89e3\u7801\u5668"

    const-string v13, "HEVC decoders"

    invoke-virtual {v3, v12, v13}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v40, v27

    check-cast v40, Ljava/lang/Iterable;

    const/16 v47, 0x3f

    const/16 v48, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-static/range {v40 .. v48}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_8d

    invoke-virtual {v3, v6, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_8d
    move-object/from16 v40, v12

    check-cast v40, Ljava/lang/String;

    sget-object v41, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const/16 v42, 0x1

    const/16 v43, 0x0

    const/16 v44, 0x10

    const/16 v45, 0x0

    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, v38

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 294
    :goto_63
    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string v6, "AAC \u89e3\u7801"

    const-string v12, "AAC decoding"

    invoke-virtual {v3, v6, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v1, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->decoders$common_release(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    const/4 v14, 0x1

    xor-int/2addr v6, v14

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v40

    sget-object v41, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v44, 0x18

    const/16 v45, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, v38

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v6, "\u9ea6\u514b\u98ce\uff08Siri/\u7535\u8bdd\uff09"

    const-string v12, "Microphone (Siri/calls)"

    invoke-virtual {v3, v6, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string v6, "android.hardware.microphone"

    invoke-static {v4, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->collect$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->yes(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v40

    .line 296
    const-string v6, "android.hardware.microphone"

    invoke-static {v4, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->collect$feature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8e

    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_64

    :cond_8e
    sget-object v4, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_64
    move-object/from16 v41, v4

    const/16 v44, 0x18

    const/16 v45, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    .line 295
    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v38

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 300
    :try_start_16
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    .line 301
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 302
    const-class v6, Landroid/view/WindowManager;

    invoke-static {v11, v6}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 304
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x11

    if-lt v12, v13, :cond_8f

    invoke-static {v6, v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/Display;Landroid/util/DisplayMetrics;)V

    goto :goto_65

    :cond_8f
    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 305
    :goto_65
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v12, v6

    iget v6, v0, Landroid/util/DisplayMetrics;->xdpi:F
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_17

    move-wide/from16 v38, v12

    float-to-double v12, v6

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v12, v38, v12

    :try_start_17
    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    move-object/from16 v27, v4

    move-object v14, v5

    int-to-double v4, v6

    :try_start_18
    iget v6, v0, Landroid/util/DisplayMetrics;->ydpi:F
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_16

    move-wide/from16 v38, v4

    float-to-double v4, v6

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v38, v4

    :try_start_19
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    .line 306
    move-object/from16 v6, v27

    check-cast v6, Ljava/util/Collection;

    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v12, "\u5206\u8fa8\u7387"

    const-string v13, "Resolution"

    invoke-virtual {v3, v12, v13}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-wide/from16 v46, v4

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " x "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v12, v35

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dpi"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 307
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v4, 0x1e0

    if-lt v0, v4, :cond_90

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_66

    :cond_90
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_66
    move-object/from16 v41, v0

    const/16 v44, 0x18

    const/16 v45, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    .line 306
    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v38

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 308
    move-object/from16 v4, v27

    check-cast v4, Ljava/util/Collection;

    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v0, "\u5c3a\u5bf8\uff08\u4f30\u7b97\uff09"

    const-string v5, "Size (estimate)"

    invoke-virtual {v3, v0, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string v0, "%.1f\""

    invoke-static/range {v46 .. v47}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/Object;

    const/16 v25, 0x0

    aput-object v5, v12, v25

    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "format(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v41, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v44, 0x18

    const/16 v45, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v40, v0

    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v38

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 300
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_16

    goto :goto_68

    :catchall_16
    move-exception v0

    goto :goto_67

    :catchall_17
    move-exception v0

    move-object/from16 v27, v4

    move-object v14, v5

    :goto_67
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :goto_68
    :try_start_1a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    sget-object v0, Lcom/shilapi/xcertplay/RootPrivileges;->INSTANCE:Lcom/shilapi/xcertplay/RootPrivileges;

    move/from16 v4, p3

    invoke-virtual {v0, v11, v4}, Lcom/shilapi/xcertplay/RootPrivileges;->probe(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_18

    goto :goto_69

    :catchall_18
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_69
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    const/4 v0, 0x0

    :cond_91
    move-object v4, v0

    check-cast v4, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;

    .line 317
    :try_start_1b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    sget-object v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->INSTANCE:Lcom/shilapi/xcertplay/network/HotspotIpv6Check;

    const/4 v5, 0x0

    const/4 v13, 0x2

    invoke-static {v0, v11, v5, v13, v5}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->run$default(Lcom/shilapi/xcertplay/network/HotspotIpv6Check;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_19

    goto :goto_6a

    :catchall_19
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6a
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    const/4 v0, 0x0

    :cond_92
    check-cast v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    .line 318
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 319
    const-string/jumbo v6, "\u70ed\u70b9 IPv6 \u94fe\u8def\u672c\u5730"

    const-string v12, "Hotspot IPv6 link-local"

    invoke-virtual {v3, v6, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    if-nez v0, :cond_94

    .line 321
    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v12, "\u672a\u68c0\u6d4b"

    const-string v13, "not checked"

    invoke-virtual {v3, v12, v13}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    sget-object v41, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v44, 0x18

    const/16 v45, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v12, v38

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_93
    move/from16 v46, v8

    move-object/from16 v35, v14

    goto/16 :goto_6f

    .line 324
    :cond_94
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getResult()Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    move-result-object v6

    sget-object v12, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->OK:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    if-ne v6, v12, :cond_95

    const-string/jumbo v6, "\u901a\uff08\u8def\u7531\u9f50\u5168\uff09"

    const-string v12, "passes (route present)"

    invoke-virtual {v3, v6, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6b

    .line 325
    :cond_95
    const-string/jumbo v6, "\u672a\u542f\u7528\uff08\u9ed8\u8ba4\u8d70 IPv4\uff0c\u65e0\u7ebf CarPlay \u4e0d\u9700\u8981\uff09"

    const-string v12, "not set up (wireless CarPlay uses IPv4 by default; not needed)"

    invoke-virtual {v3, v6, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_6b
    move-object/from16 v40, v6

    .line 326
    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getResult()Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    move-result-object v12

    sget-object v13, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->OK:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    if-ne v12, v13, :cond_96

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_6c

    :cond_96
    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    :goto_6c
    move-object/from16 v41, v12

    const/16 v44, 0x18

    const/16 v45, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v12, v38

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v12, "\u68c0\u6d4b\u7ec6\u8282"

    const-string v13, "Details"

    invoke-virtual {v3, v12, v13}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->toString()Ljava/lang/String;

    move-result-object v40

    sget-object v41, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v44, 0x10

    const/16 v42, 0x1

    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v12, v38

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-direct {v1, v3, v11}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->keeperStatusItem(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Landroid/content/Context;)Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getBlocksCarPlay()Z

    move-result v12

    if-eqz v12, :cond_93

    if-eqz v4, :cond_97

    .line 332
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getRepairPaths()Ljava/util/List;

    move-result-object v12

    goto :goto_6d

    :cond_97
    const/4 v12, 0x0

    :goto_6d
    if-nez v12, :cond_98

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 333
    :cond_98
    move-object v13, v12

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_99

    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v13, "\u81ea\u52a8\u4fee\u590d\uff08\u4ec5 IPv6 \u65b9\u5f0f\uff09"

    move-object/from16 p3, v12

    const-string v12, "Automatic repair (IPv6 method only)"

    invoke-virtual {v3, v13, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 334
    const-string/jumbo v12, "\u53ef\u4ee5\uff1a\u82e5\u7528 IPv6 \u65b9\u5f0f\uff0c06Link \u8fde\u63a5\u65f6\u4f1a\u7ecf "

    const-string v13, "Possible: on the IPv6 method, when connecting 06Link adds the route via "

    invoke-virtual {v3, v12, v13}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 335
    move-object/from16 v40, p3

    check-cast v40, Ljava/lang/Iterable;

    const-string v13, " / "

    move-object/from16 v41, v13

    check-cast v41, Ljava/lang/CharSequence;

    new-instance v13, Lcom/shilapi/xcertplay/HeadUnitCapabilities$$ExternalSyntheticLambda5;

    invoke-direct {v13, v3}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$$ExternalSyntheticLambda5;-><init>(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;)V

    const/16 v47, 0x1e

    const/16 v48, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v46, v13

    invoke-static/range {v40 .. v48}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v35, v14

    const-string v14, " \u81ea\u52a8\u8865\u4e0a\u8fd9\u6761\u8def\u7531"

    move/from16 v46, v8

    move-object/from16 v8, v34

    invoke-virtual {v3, v14, v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    sget-object v41, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v44, 0x10

    const/16 v42, 0x1

    .line 333
    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v8, v38

    goto :goto_6e

    :cond_99
    move/from16 v46, v8

    move-object/from16 v35, v14

    .line 336
    new-instance v47, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v8, "\u81ea\u52a8\u4fee\u590d\uff08\u4ec5 IPv6 \u65b9\u5f0f\uff09"

    const-string v12, "Automatic repair (IPv6 method only)"

    invoke-virtual {v3, v8, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 337
    const-string/jumbo v8, "\u65e0\u9700\uff1a\u9ed8\u8ba4\u8d70 IPv4 \u65e0\u7ebf CarPlay\uff0c\u4e0d\u9700\u8981\u8fd9\u6761 IPv6 \u8def\u7531\u6216 root"

    const-string v12, "Not needed: wireless CarPlay defaults to IPv4 and needs no IPv6 route or root"

    invoke-virtual {v3, v8, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    sget-object v50, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v53, 0x10

    const/16 v54, 0x0

    const/16 v51, 0x1

    const/16 v52, 0x0

    .line 336
    invoke-direct/range {v47 .. v54}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v8, v47

    :goto_6e
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v38, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;

    const-string/jumbo v8, "\u5efa\u8bae"

    const-string v12, "Suggestion"

    invoke-virtual {v3, v8, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 339
    const-string/jumbo v8, "\u9ed8\u8ba4\u7684 IPv4 \u65e0\u7ebf CarPlay \u4e0d\u53d7\u8fd9\u6761 IPv6 \u8def\u7531\u5f71\u54cd\uff0c\u5df2\u5728\u771f\u673a\uff08iPhone + \u5b89\u5353 7 \u70ed\u70b9\uff09\u9a8c\u8bc1\u51fa\u753b\u9762\u3002\u82e5\u575a\u6301\u7528 IPv6 \u65b9\u5f0f\uff1a\u53ef\u5c1d\u8bd5\u628a\u79fb\u52a8\u6570\u636e APN \u534f\u8bae\u6539\u4e3a IPv4/IPv6 \u540e\u91cd\u5f00\u70ed\u70b9\uff08\u5b89\u5353 5\u20139 \u4e00\u822c\u8981\u4e0a\u6e38\u6709 IPv6 \u624d\u7ed9\u70ed\u70b9\u914d IPv6 \u8def\u7531\uff09\uff0cWi\u2011Fi Direct \u6362\u4e0d\u4e86\u8def\uff08\u5b89\u5353 5\u20139 \u7ed9\u5b83\u7684\u7f51\u5361\u540c\u6837\u4e0d\u52a0\u8fd9\u6761\u8def\u7531\uff0c\u5df2\u5728 AOSP \u6e90\u7801\u4e2d\u786e\u8ba4\uff09\uff0c\u4fee\u590d\u65b9\u6cd5\u4e0e\u70ed\u70b9\u76f8\u540c"

    .line 341
    const-string v12, "The default IPv4 wireless CarPlay is unaffected by this IPv6 route and was verified on real hardware (iPhone + Android 7 hotspot, screen rendered). If you insist on the IPv6 method: you can try setting the mobile data APN protocol to IPv4/IPv6 and restarting the hotspot (Android 5-9 usually routes IPv6 on the hotspot only with an IPv6 upstream); Wi-Fi Direct is no way around it (Android 5-9 leave out the same route for its interface, confirmed in the AOSP source), and the repair is the same as for the hotspot"

    .line 338
    invoke-virtual {v3, v8, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 343
    sget-object v41, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const/16 v44, 0x10

    const/16 v45, 0x0

    const/16 v42, 0x1

    const/16 v43, 0x0

    .line 338
    invoke-direct/range {v38 .. v45}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;ZLcom/shilapi/xcertplay/HeadUnitFixes$Fix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v8, v38

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 351
    :goto_6f
    sget-object v6, Lcom/shilapi/xcertplay/compat/BluetoothStack;->VENDOR_NO_AOSP:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    const-string v8, "Wireless CarPlay"

    const-string/jumbo v12, "\u65e0\u7ebf CarPlay"

    move-object/from16 v13, v22

    if-ne v13, v6, :cond_9a

    new-instance v6, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;

    const/4 v13, 0x0

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v12, v8, v9}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 353
    const-string v12, "No: this unit\'s Bluetooth is a vendor implementation, so Android\'s Bluetooth can never work. Connect the iPhone with a USB cable and use wired CarPlay"

    new-array v14, v13, [Ljava/lang/Object;

    .line 352
    const-string/jumbo v13, "\u4e0d\u884c\uff1a\u672c\u673a\u84dd\u7259\u662f\u5382\u5546\u5b9e\u73b0\uff0c\u5b89\u5353\u84dd\u7259\u6c38\u8fdc\u7528\u4e0d\u4e86\u3002\u8bf7\u7528\u6570\u636e\u7ebf\u8fde\u63a5 iPhone\uff0c\u8d70\u6709\u7ebf CarPlay"

    invoke-virtual {v3, v13, v12, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 351
    invoke-direct {v6, v8, v9, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V

    :goto_70
    move-object/from16 v22, v10

    move-object/from16 v36, v26

    :goto_71
    move-object/from16 v26, v15

    goto/16 :goto_75

    :cond_9a
    if-nez v30, :cond_9b

    .line 354
    new-instance v6, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;

    const/4 v13, 0x0

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v12, v8, v9}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 355
    const-string v12, "No: Android has no usable Bluetooth; the head unit\'s Bluetooth is probably a separate hands-free module"

    new-array v14, v13, [Ljava/lang/Object;

    const-string/jumbo v13, "\u4e0d\u884c\uff1a\u5b89\u5353\u7cfb\u7edf\u770b\u4e0d\u5230\u84dd\u7259\uff0c\u8f66\u673a\u7684\u84dd\u7259\u53ef\u80fd\u662f\u72ec\u7acb\u7684\u901a\u8bdd\u6a21\u5757"

    invoke-virtual {v3, v13, v12, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 354
    invoke-direct {v6, v8, v9, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V

    goto :goto_70

    :cond_9b
    move-object/from16 v6, v26

    .line 356
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9c

    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v12, v8, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 357
    const-string v14, "Unknown: turn Bluetooth on and check again"

    move-object/from16 v22, v10

    new-array v10, v13, [Ljava/lang/Object;

    const-string/jumbo v13, "\u5f85\u786e\u8ba4\uff1a\u8bf7\u5148\u6253\u5f00\u84dd\u7259\uff0c\u518d\u91cd\u65b0\u68c0\u6d4b"

    invoke-virtual {v3, v13, v14, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 356
    invoke-direct {v9, v8, v12, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V

    :goto_72
    move-object/from16 v36, v6

    move-object v6, v9

    goto :goto_71

    :cond_9c
    move-object/from16 v22, v10

    .line 358
    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9d

    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;

    const/4 v13, 0x0

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v12, v8, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 359
    const-string v12, "No: apps cannot open a Bluetooth RFCOMM socket"

    new-array v14, v13, [Ljava/lang/Object;

    const-string/jumbo v13, "\u4e0d\u884c\uff1a\u5e94\u7528\u65e0\u6cd5\u5efa\u7acb\u84dd\u7259 RFCOMM \u8fde\u63a5"

    invoke-virtual {v3, v13, v12, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 358
    invoke-direct {v9, v8, v10, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V

    goto :goto_72

    .line 360
    :cond_9d
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9e

    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;

    const/4 v13, 0x0

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v12, v8, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 361
    const-string v12, "No: no Wi-Fi hotspot and no Wi-Fi Direct"

    new-array v14, v13, [Ljava/lang/Object;

    const-string/jumbo v13, "\u4e0d\u884c\uff1a\u65e2\u4e0d\u80fd\u5f00 Wi\u2011Fi \u70ed\u70b9\uff0c\u4e5f\u4e0d\u652f\u6301 Wi\u2011Fi Direct"

    invoke-virtual {v3, v13, v12, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 360
    invoke-direct {v9, v8, v10, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V

    goto :goto_72

    .line 366
    :cond_9e
    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;

    const/4 v13, 0x0

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v12, v8, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v10, v28

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9f

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_73

    :cond_9f
    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 367
    :goto_73
    const-string v14, "Yes, connection setups: "

    move-object/from16 v26, v15

    new-array v15, v13, [Ljava/lang/Object;

    const-string/jumbo v13, "\u53ef\u4ee5\uff0c\u53ef\u7528\u65b9\u5f0f\uff1a"

    invoke-virtual {v3, v13, v14, v15}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v47, v36

    check-cast v47, Ljava/lang/Iterable;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->listSeparator()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v48, v14

    check-cast v48, Ljava/lang/CharSequence;

    const/16 v54, 0x3e

    const/16 v55, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    invoke-static/range {v47 .. v55}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 368
    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a0

    const-string v15, " (2.4 GHz only, may stutter)"

    move-object/from16 v36, v6

    move-object/from16 v28, v10

    const/4 v10, 0x0

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v10, "\uff08\u53ea\u6709 2.4 GHz\uff0c\u53ef\u80fd\u5361\u987f\uff09"

    invoke-virtual {v3, v10, v15, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_74

    :cond_a0
    move-object/from16 v36, v6

    move-object/from16 v28, v10

    move-object/from16 v6, v34

    :goto_74
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 366
    invoke-direct {v9, v8, v12, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V

    move-object v6, v9

    .line 371
    :goto_75
    const-string v8, "Wired CarPlay"

    const-string/jumbo v9, "\u6709\u7ebf CarPlay"

    if-nez v46, :cond_a1

    if-nez v19, :cond_a1

    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;

    const/4 v13, 0x0

    new-array v12, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v9, v8, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 372
    const-string v12, "No: no USB host port"

    new-array v14, v13, [Ljava/lang/Object;

    const-string/jumbo v15, "\u4e0d\u884c\uff1a\u6ca1\u6709 USB \u4e3b\u673a\u53e3"

    invoke-virtual {v3, v15, v12, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 371
    invoke-direct {v10, v8, v9, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V

    goto :goto_77

    :cond_a1
    const/4 v13, 0x0

    if-nez v46, :cond_a2

    .line 373
    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;

    new-array v12, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v9, v8, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 374
    const-string v12, "Unknown: no USB host feature but usbfs exists; try plugging in the iPhone"

    new-array v14, v13, [Ljava/lang/Object;

    const-string/jumbo v15, "\u5f85\u786e\u8ba4\uff1a\u7cfb\u7edf\u6ca1\u58f0\u660e USB \u4e3b\u673a\uff0c\u4f46\u5b58\u5728 usbfs\uff0c\u53ef\u63d2 iPhone \u8bd5\u8bd5"

    invoke-virtual {v3, v15, v12, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 373
    invoke-direct {v10, v8, v9, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V

    goto :goto_77

    .line 375
    :cond_a2
    new-instance v10, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;

    new-array v12, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v9, v8, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 376
    const-string v12, "Yes"

    new-array v14, v13, [Ljava/lang/Object;

    const-string/jumbo v15, "\u53ef\u4ee5"

    invoke-virtual {v3, v15, v12, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-ge v14, v15, :cond_a3

    .line 377
    const-string v14, " (Android 4.x asks for VPN consent once after every full reboot)"

    new-array v15, v13, [Ljava/lang/Object;

    const-string/jumbo v13, "\uff08Android 4.x \u6bcf\u6b21\u5b8c\u6574\u91cd\u542f\u540e\u8981\u70b9\u4e00\u6b21 VPN \u6388\u6743\uff09"

    invoke-virtual {v3, v13, v14, v15}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_76

    :cond_a3
    move-object/from16 v13, v34

    :goto_76
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 375
    invoke-direct {v10, v8, v9, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V

    .line 380
    :goto_77
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    const-string v12, "Video decoding"

    const-string/jumbo v13, "\u89c6\u9891\u89e3\u7801"

    if-ge v8, v9, :cond_a6

    new-instance v8, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;

    const/4 v9, 0x0

    new-array v14, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v13, v12, v14}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move/from16 v14, v18

    const/4 v13, 0x2

    move-object/from16 v15, v21

    if-lt v14, v13, :cond_a4

    .line 381
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a4

    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    goto :goto_78

    :cond_a4
    sget-object v12, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 382
    :goto_78
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 p1, v6

    move-object/from16 p3, v10

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v13, v10, v6

    const-string v13, "FFmpeg \u8f6f\u4ef6\u89e3\u7801\uff0c%d \u6838"

    const-string v6, "FFmpeg software, %d cores"

    invoke-virtual {v3, v13, v6, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 383
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a5

    const-string v7, ", no NEON, likely too slow"

    const/4 v13, 0x0

    new-array v10, v13, [Ljava/lang/Object;

    const-string/jumbo v13, "\uff0c\u65e0 NEON\uff0c\u53ef\u80fd\u5f88\u5361"

    invoke-virtual {v3, v13, v7, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_79

    :cond_a5
    const-string v7, ", may not be smooth"

    const/4 v13, 0x0

    new-array v10, v13, [Ljava/lang/Object;

    const-string/jumbo v13, "\uff0c\u753b\u9762\u53ef\u80fd\u4e0d\u591f\u6d41\u7545"

    invoke-virtual {v3, v13, v7, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_79
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 380
    invoke-direct {v8, v9, v12, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V

    goto :goto_7a

    :cond_a6
    move-object/from16 p1, v6

    move-object/from16 p3, v10

    move/from16 v14, v18

    move-object/from16 v15, v21

    .line 384
    move-object/from16 v6, v37

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a7

    new-instance v8, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v13, v12, v7}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 385
    const-string v10, "Hardware H.264: "

    new-array v12, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "\u786c\u4ef6 H.264\uff1a"

    invoke-virtual {v3, v6, v10, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v37 .. v37}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 384
    invoke-direct {v8, v7, v9, v6}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V

    :goto_7a
    const/4 v6, 0x0

    goto :goto_7b

    .line 386
    :cond_a7
    move-object/from16 v6, v31

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a8

    new-instance v8, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v13, v12, v7}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    .line 387
    const-string v10, "Software H.264 decoder only; may stutter"

    new-array v12, v6, [Ljava/lang/Object;

    const-string/jumbo v13, "\u53ea\u6709\u8f6f\u4ef6 H.264 \u89e3\u7801\u5668\uff0c\u53ef\u80fd\u5361\u987f"

    invoke-virtual {v3, v13, v10, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 386
    invoke-direct {v8, v7, v9, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V

    goto :goto_7b

    :cond_a8
    const/4 v6, 0x0

    .line 388
    new-instance v8, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v13, v12, v7}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    const-string v10, "No H.264 decoder"

    new-array v12, v6, [Ljava/lang/Object;

    const-string/jumbo v13, "\u6ca1\u6709 H.264 \u89e3\u7801\u5668"

    invoke-virtual {v3, v13, v10, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v7, v9, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;Ljava/lang/String;)V

    :goto_7b
    const/16 v7, 0x8

    .line 392
    new-array v7, v7, [Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;

    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;

    const-string v10, "System"

    new-array v12, v6, [Ljava/lang/Object;

    const-string/jumbo v13, "\u7cfb\u7edf"

    invoke-virtual {v3, v13, v10, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v12, v16

    invoke-direct {v9, v10, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;-><init>(Ljava/lang/String;Ljava/util/List;)V

    aput-object v9, v7, v6

    .line 393
    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;

    const-string v10, "Bluetooth"

    new-array v12, v6, [Ljava/lang/Object;

    const-string/jumbo v13, "\u84dd\u7259"

    invoke-virtual {v3, v13, v10, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v12, v20

    invoke-direct {v9, v10, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 v10, 0x1

    aput-object v9, v7, v10

    .line 394
    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;

    const-string v10, "Wi\u2011Fi"

    move-object/from16 v12, v29

    invoke-direct {v9, v10, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 v13, 0x2

    aput-object v9, v7, v13

    .line 395
    new-instance v9, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;

    const-string v10, "IPv6 (optional method, not used by default)"

    new-array v12, v6, [Ljava/lang/Object;

    const-string v13, "IPv6\uff08\u53ef\u9009\u65b9\u5f0f\uff0c\u9ed8\u8ba4\u4e0d\u7528\uff09"

    invoke-virtual {v3, v13, v10, v12}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/16 v24, 0x3

    aput-object v9, v7, v24

    .line 396
    new-instance v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;

    const-string v9, "Root and privileges"

    new-array v10, v6, [Ljava/lang/Object;

    const-string v12, "Root \u4e0e\u7cfb\u7edf\u6743\u9650"

    invoke-virtual {v3, v12, v9, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v11, v4, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->rootItems(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Landroid/content/Context;Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/16 v23, 0x4

    aput-object v5, v7, v23

    .line 397
    new-instance v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;

    const-string v9, "USB and wired"

    new-array v10, v6, [Ljava/lang/Object;

    const-string v11, "USB \u4e0e\u6709\u7ebf"

    invoke-virtual {v3, v11, v9, v10}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9, v2}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 v2, 0x5

    aput-object v5, v7, v2

    .line 398
    new-instance v2, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;

    const-string v5, "Media"

    new-array v9, v6, [Ljava/lang/Object;

    const-string/jumbo v10, "\u97f3\u89c6\u9891"

    invoke-virtual {v3, v10, v5, v9}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v9, v35

    invoke-direct {v2, v5, v9}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 v5, 0x6

    aput-object v2, v7, v5

    .line 399
    new-instance v2, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;

    const-string v5, "Display"

    new-array v9, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "\u5c4f\u5e55"

    invoke-virtual {v3, v6, v5, v9}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v27

    invoke-direct {v2, v3, v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Section;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 v3, 0x7

    aput-object v2, v7, v3

    .line 391
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 401
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x2c

    move-object/from16 v6, v17

    const/4 v10, 0x0

    const/4 v13, 0x2

    invoke-static {v6, v5, v10, v13, v10}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;->getStatus()Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;->getStatus()Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    move-result-object v7

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;->getStatus()Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    move-result-object v9

    if-eqz v30, :cond_a9

    const/4 v11, 0x1

    goto :goto_7c

    :cond_a9
    const/4 v11, 0x0

    :goto_7c
    if-eqz v32, :cond_aa

    if-eqz v33, :cond_aa

    const/4 v12, 0x1

    goto :goto_7d

    :cond_aa
    const/4 v12, 0x0

    :goto_7d
    if-eqz v0, :cond_ab

    .line 404
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getResult()Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    move-result-object v13

    goto :goto_7e

    :cond_ab
    move-object v13, v10

    :goto_7e
    if-eqz v0, :cond_ac

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getHotspotOn()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7f

    :cond_ac
    move-object v0, v10

    :goto_7f
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v4, :cond_ad

    .line 405
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/RootPrivileges$Snapshot;->getCaps()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_ae

    :cond_ad
    const-string v4, "root=? adb=?"

    :cond_ae
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v16, v8

    const-string v8, "CAPS api="

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " abi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " wireless="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " wired="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " video="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " bt="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v36

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v26

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " hotspot="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v22

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " p2p="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " 5ghz="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ipv6="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/hotspot="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " usbHost="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v46

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " hwAvc="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cores="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " neon="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    new-instance v1, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Report;

    const/4 v8, 0x3

    new-array v3, v8, [Lcom/shilapi/xcertplay/HeadUnitCapabilities$Verdict;

    const/16 v25, 0x0

    aput-object p1, v3, v25

    const/4 v14, 0x1

    aput-object p3, v3, v14

    const/4 v13, 0x2

    aput-object v16, v3, v13

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Report;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    .line 215
    :cond_af
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 202
    :cond_b0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    goto :goto_81

    :goto_80
    throw v0

    :goto_81
    goto :goto_80
.end method

.method public final decoders$common_release(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "mime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    .line 618
    invoke-static {}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 673
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 674
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v4

    .line 618
    invoke-static {v4}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 675
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 676
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 673
    check-cast v2, Ljava/lang/Iterable;

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 678
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 619
    invoke-static {v5}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "getSupportedTypes(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, [Ljava/lang/Object;

    .line 679
    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x1

    .line 619
    invoke-static {v8, p1, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 678
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 681
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 677
    check-cast v0, Ljava/lang/Iterable;

    .line 682
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 683
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 684
    invoke-static {v1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 620
    invoke-static {v1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 685
    :cond_5
    check-cast p1, Ljava/util/List;

    .line 682
    check-cast p1, Ljava/lang/Iterable;

    .line 620
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 617
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 621
    :goto_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p1, v0

    :cond_6
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final isHardware$common_release(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    const-string v0, "OMX.google."

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "c2.android."

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, ".sw."

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final keepAdbState$common_release(ZLjava/lang/Boolean;Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;Z)Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;
    .locals 0

    if-eqz p1, :cond_0

    .line 439
    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;->KEPT:Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 440
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;->UNSAFE:Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;

    return-object p1

    .line 441
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;->FAILED:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence$Outcome;

    if-ne p3, p1, :cond_2

    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;->LAST_FAILED:Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;

    return-object p1

    :cond_2
    if-eqz p4, :cond_3

    .line 442
    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;->ON_CONNECT:Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;

    return-object p1

    .line 443
    :cond_3
    sget-object p1, Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;->IMPOSSIBLE:Lcom/shilapi/xcertplay/HeadUnitCapabilities$KeepAdb;

    return-object p1
.end method

.method public final noWifi(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/HeadUnitCapabilities;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.wifi"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->networkInterfaces()Ljava/util/List;

    move-result-object v0

    .line 424
    invoke-virtual {p0, p1, v0}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->noWifi$common_release(ZLjava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final noWifi$common_release(ZLjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "interfaces"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 422
    check-cast p2, Ljava/lang/Iterable;

    .line 670
    instance-of p1, p2, Ljava/util/Collection;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 671
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 422
    const-string/jumbo v3, "wlan"

    invoke-static {p2, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public final usageAccessExists$common_release(I)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
