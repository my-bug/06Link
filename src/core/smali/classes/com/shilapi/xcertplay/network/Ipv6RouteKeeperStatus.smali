.class public final Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;
.super Ljava/lang/Object;
.source "Ipv6RouteKeeperStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;,
        Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIpv6RouteKeeperStatus.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ipv6RouteKeeperStatus.kt\ncom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1#2:84\n295#3,2:85\n*S KotlinDebug\n*F\n+ 1 Ipv6RouteKeeperStatus.kt\ncom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus\n*L\n72#1:85,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0005J\u001c\u0010\u0007\u001a\u00020\u00082\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\nH\u0002J\u0010\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u001a\u0010\u000e\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0018\u0010\u0012\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0013\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0014\u001a\u00020\rJ\u0006\u0010\u0015\u001a\u00020\u0008J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;",
        "",
        "<init>",
        "()V",
        "snapshot",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;",
        "get",
        "update",
        "",
        "block",
        "Lkotlin/Function1;",
        "arming",
        "iface",
        "",
        "holding",
        "via",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
        "repairing",
        "repaired",
        "failed",
        "reason",
        "stopped",
        "now",
        "",
        "PREFS",
        "KEY_LAST_PATH",
        "loadLastGoodPath",
        "context",
        "Landroid/content/Context;",
        "saveLastGoodPath",
        "Phase",
        "Snapshot",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

.field private static final KEY_LAST_PATH:Ljava/lang/String; = "last_good_via"

.field private static final PREFS:Ljava/lang/String; = "xcertplay_route_keeper"

.field private static volatile snapshot:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;


# direct methods
.method public static synthetic $r8$lambda$3m-VTQ5OuLifcd6f2Iuck3yObuU(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->failed$lambda$6(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5WYXr_I--Dg440MiGq-lmQrwovY(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->arming$lambda$1(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HqO8z_xgg-wttx1J84wTPWFQC7c(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->repaired$lambda$5(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PXSW7Yc3SdJUnG9-cN3lqh7lclc(Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->stopped$lambda$7(Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Wo6QS8Cvp6jiM5iWRBfHC4Wfmqs(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->repairing$lambda$4(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dOz3q1n3AEyk11r6Cz3Xn1mNwfs(Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->holding$lambda$3(Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    .line 32
    new-instance v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    sget-object v2, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;->IDLE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Ljava/lang/Long;Ljava/lang/String;J)V

    sput-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->snapshot:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final arming$lambda$1(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
    .locals 9

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    sget-object v2, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;->ARMING:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastGoodVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v4

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastRepairElapsed()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastFailure()Ljava/lang/String;

    move-result-object v6

    sget-object p1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->now()J

    move-result-wide v7

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Ljava/lang/Long;Ljava/lang/String;J)V

    return-object v1
.end method

.method private static final failed$lambda$6(Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
    .locals 9

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    sget-object v2, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;->FAILED:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastGoodVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v4

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastRepairElapsed()Ljava/lang/Long;

    move-result-object v5

    sget-object p2, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-direct {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->now()J

    move-result-wide v7

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Ljava/lang/Long;Ljava/lang/String;J)V

    return-object v1
.end method

.method private static final holding$lambda$3(Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
    .locals 9

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 44
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->NONE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    if-eq p0, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastGoodVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v0

    :cond_2
    move-object v4, v0

    .line 45
    new-instance v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    sget-object v2, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;->HOLDING:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    if-eqz p0, :cond_3

    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->NONE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    if-eq p0, v0, :cond_3

    sget-object p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->now()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastRepairElapsed()Ljava/lang/Long;

    move-result-object p0

    :goto_1
    move-object v5, p0

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastFailure()Ljava/lang/String;

    move-result-object v6

    sget-object p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->now()J

    move-result-wide v7

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Ljava/lang/Long;Ljava/lang/String;J)V

    return-object v1
.end method

.method private final now()J
    .locals 3

    .line 64
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final repaired$lambda$5(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
    .locals 9

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    sget-object v2, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;->HOLDING:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->now()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastFailure()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->now()J

    move-result-wide v7

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Ljava/lang/Long;Ljava/lang/String;J)V

    return-object v1
.end method

.method private static final repairing$lambda$4(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
    .locals 9

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    sget-object v2, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;->REPAIRING:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastGoodVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v4

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastRepairElapsed()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastFailure()Ljava/lang/String;

    move-result-object v6

    sget-object p1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->now()J

    move-result-wide v7

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Ljava/lang/Long;Ljava/lang/String;J)V

    return-object v1
.end method

.method private static final stopped$lambda$7(Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
    .locals 9

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    sget-object v2, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;->STOPPED:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastGoodVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v4

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastRepairElapsed()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;->getLastFailure()Ljava/lang/String;

    move-result-object v6

    sget-object p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->now()J

    move-result-wide v7

    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Ljava/lang/Long;Ljava/lang/String;J)V

    return-object v1
.end method

.method private final update(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;",
            ">;)V"
        }
    .end annotation

    .line 36
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->snapshot:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    sput-object p1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->snapshot:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final arming(Ljava/lang/String;)V
    .locals 1

    .line 39
    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->update(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final failed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->update(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final get()Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;
    .locals 1

    .line 33
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->snapshot:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    return-object v0
.end method

.method public final holding(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)V
    .locals 1

    .line 43
    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda5;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->update(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final loadLastGoodPath(Landroid/content/Context;)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 70
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "xcertplay_route_keeper"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "last_good_via"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 72
    invoke-static {}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 85
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    .line 72
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 86
    :goto_0
    check-cast v2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 70
    :goto_1
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 73
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    :cond_3
    check-cast p1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    if-eqz p1, :cond_4

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->NONE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    if-eq p1, v1, :cond_4

    move-object v0, p1

    :cond_4
    return-object v0
.end method

.method public final repaired(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)V
    .locals 1

    const-string/jumbo v0, "via"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->update(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final repairing(Ljava/lang/String;)V
    .locals 1

    .line 48
    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->update(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final saveLastGoodPath(Landroid/content/Context;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "via"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->NONE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    if-ne p2, v0, :cond_0

    return-void

    .line 77
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "xcertplay_route_keeper"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 79
    const-string v0, "last_good_via"

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 77
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final stopped()V
    .locals 1

    .line 60
    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->update(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
