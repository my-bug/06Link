.class public final Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;
.super Ljava/lang/Object;
.source "Ipv6RouteWatchdog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$Companion;,
        Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;,
        Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIpv6RouteWatchdog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ipv6RouteWatchdog.kt\ncom/shilapi/xcertplay/network/Ipv6RouteWatchdog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1#2:126\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u0000 -2\u00020\u0001:\u0002,-Bw\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0012\u001c\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0005\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0006\u0010\"\u001a\u00020\rJ\u0006\u0010#\u001a\u00020\rJ\r\u0010(\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008)J\u0008\u0010*\u001a\u00020\rH\u0002J\u0010\u0010+\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0015@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\"\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010$\u001a\u00020%8F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'\u00a8\u0006."
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;",
        "",
        "interfaceName",
        "",
        "check",
        "Lkotlin/Function0;",
        "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;",
        "repair",
        "Lkotlin/Function2;",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
        "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;",
        "log",
        "Lkotlin/Function1;",
        "",
        "lastGoodPath",
        "periodMillis",
        "",
        "clock",
        "<init>",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;JLkotlin/jvm/functions/Function0;)V",
        "value",
        "Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;",
        "state",
        "getState",
        "()Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;",
        "lastGood",
        "getLastGood",
        "()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
        "failures",
        "",
        "nextRepairAt",
        "executor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "tickLock",
        "start",
        "stop",
        "running",
        "",
        "getRunning",
        "()Z",
        "tick",
        "tick$shared_release",
        "tickLocked",
        "backoff",
        "State",
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
.field private static final BACKOFF_MILLIS:[J

.field public static final Companion:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$Companion;

.field public static final PERIOD_MILLIS:J = 0x1388L


# instance fields
.field private final check:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private failures:I

.field private final interfaceName:Ljava/lang/String;

.field private volatile lastGood:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

.field private final log:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private nextRepairAt:J

.field private final periodMillis:J

.field private final repair:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
            "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;",
            ">;"
        }
    .end annotation
.end field

.field private volatile state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

.field private final tickLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$YHk2v92DyXqoQybOEK7d3rdxo1Y(Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->start$lambda$6$lambda$5(Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fuC3zJnLYmlKFo2pl7jfDXZfrIs(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->start$lambda$3(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tMER5j53SCodkmOrE8cV4-eksoE()J
    .locals 2

    invoke-static {}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->_init_$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->Companion:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$Companion;

    const/4 v0, 0x4

    .line 122
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->BACKOFF_MILLIS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x1388
        0x3a98
        0x7530
        0xea60
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;JLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;",
            "-",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
            "Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "interfaceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "check"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repair"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "log"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->interfaceName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->check:Lkotlin/jvm/functions/Function0;

    .line 24
    iput-object p3, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->repair:Lkotlin/jvm/functions/Function2;

    .line 25
    iput-object p4, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->log:Lkotlin/jvm/functions/Function1;

    .line 27
    iput-wide p6, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->periodMillis:J

    .line 28
    iput-object p8, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->clock:Lkotlin/jvm/functions/Function0;

    .line 32
    sget-object p1, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;->WATCHING:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    const/4 p1, 0x0

    if-eqz p5, :cond_0

    .line 35
    sget-object p2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->NONE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    if-eq p5, p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, p1

    :goto_0
    iput-object p5, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->lastGood:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    .line 46
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->tickLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;JLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p9, 0x20

    if-eqz p5, :cond_1

    const-wide/16 v0, 0x1388

    move-wide v6, v0

    goto :goto_0

    :cond_1
    move-wide v6, p6

    :goto_0
    and-int/lit8 p5, p9, 0x40

    if-eqz p5, :cond_2

    .line 28
    new-instance p5, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$$ExternalSyntheticLambda2;

    invoke-direct {p5}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$$ExternalSyntheticLambda2;-><init>()V

    move-object v8, p5

    goto :goto_1

    :cond_2
    move-object/from16 v8, p8

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 20
    invoke-direct/range {v0 .. v8}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;JLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final _init_$lambda$0()J
    .locals 2

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private final backoff(I)J
    .locals 3

    .line 118
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->BACKOFF_MILLIS:[J

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    move-result v2

    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method private static final start$lambda$3(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ipv6-route-watchdog"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static final start$lambda$6$lambda$5(Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;)V
    .locals 1

    .line 54
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->tick$shared_release()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final tickLocked()V
    .locals 11

    .line 74
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;->STOPPED:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->check:Lkotlin/jvm/functions/Function0;

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

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
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v0, v2

    :cond_1
    check-cast v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    sget-object v3, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;->STOPPED:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    if-ne v1, v3, :cond_3

    goto/16 :goto_3

    .line 77
    :cond_3
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getResult()Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    move-result-object v1

    sget-object v3, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v6, :cond_11

    const/4 v7, 0x2

    if-eq v1, v7, :cond_4

    goto/16 :goto_3

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    sget-object v7, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;->WATCHING:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    if-ne v1, v7, :cond_5

    .line 87
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->log:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->interfaceName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "wireless IPv6 watchdog: route lost on "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;->LOST:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    iput-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    .line 90
    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 91
    iget-wide v9, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->nextRepairAt:J

    cmp-long v1, v7, v9

    if-gez v1, :cond_6

    goto/16 :goto_3

    .line 92
    :cond_6
    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    iget-object v9, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->interfaceName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->repairing(Ljava/lang/String;)V

    .line 93
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->repair:Lkotlin/jvm/functions/Function2;

    iget-object v9, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->lastGood:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    invoke-interface {v1, v0, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, v2

    :cond_7
    check-cast v0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;

    .line 94
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    sget-object v9, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;->STOPPED:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    if-ne v1, v9, :cond_8

    goto/16 :goto_3

    :cond_8
    if-eqz v0, :cond_9

    .line 95
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getReport()Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;->getResult()Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    move-result-object v2

    :cond_9
    sget-object v1, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;->OK:Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Result;

    if-ne v2, v1, :cond_a

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->getVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->NONE:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    if-eq v1, v2, :cond_a

    .line 96
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->getVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v1

    iput-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->lastGood:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    .line 97
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->log:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->getVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->interfaceName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "wireless IPv6 watchdog: repaired via "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;->WATCHING:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    iput-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    .line 99
    iput v5, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->failures:I

    .line 100
    iput-wide v3, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->nextRepairAt:J

    .line 101
    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->interfaceName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->getVia()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->repaired(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)V

    goto/16 :goto_3

    .line 103
    :cond_a
    iget v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->failures:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->failures:I

    if-eqz v0, :cond_b

    .line 104
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->getTried()Z

    move-result v1

    if-ne v1, v6, :cond_b

    iget v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->failures:I

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->backoff(I)J

    move-result-wide v1

    goto :goto_2

    :cond_b
    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->BACKOFF_MILLIS:[J

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->last([J)J

    move-result-wide v1

    :goto_2
    add-long/2addr v7, v1

    iput-wide v7, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->nextRepairAt:J

    .line 105
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    sget-object v2, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;->REPAIR_FAILED:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    if-eq v1, v2, :cond_e

    .line 106
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->log:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->interfaceName:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v3

    if-nez v3, :cond_d

    :cond_c
    const-string v3, "(nothing to run)"

    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "wireless IPv6 watchdog: repair failed on "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;->REPAIR_FAILED:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    iput-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    .line 109
    :cond_e
    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->interfaceName:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;->getAttempt()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Attempt;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_f
    const-string v0, "nothing-to-run"

    :cond_10
    invoke-virtual {v1, v2, v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->failed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 79
    :cond_11
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;->WATCHING:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->log:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->interfaceName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "wireless IPv6 watchdog: route is back on "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_12
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;->WATCHING:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    .line 81
    iput v5, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->failures:I

    .line 82
    iput-wide v3, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->nextRepairAt:J

    .line 83
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->interfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->lastGood:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->holding(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final getLastGood()Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->lastGood:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    return-object v0
.end method

.method public final declared-synchronized getRunning()Z
    .locals 1

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getState()Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    return-object v0
.end method

.method public final declared-synchronized start()V
    .locals 8

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    sget-object v1, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;->STOPPED:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 54
    new-instance v2, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;)V

    iget-wide v3, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->periodMillis:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v5, v3

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 51
    iput-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 50
    :cond_1
    :goto_0
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

.method public final declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 60
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;->STOPPED:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    iput-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->state:Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog$State;

    .line 61
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 63
    sget-object v0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->stopped()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
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

.method public final tick$shared_release()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->tickLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/network/Ipv6RouteWatchdog;->tickLocked()V

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
