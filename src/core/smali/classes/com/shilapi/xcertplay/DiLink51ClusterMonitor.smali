.class public final Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;
.super Ljava/lang/Object;
.source "DiLink51ClusterMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$Companion;,
        Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiLink51ClusterMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiLink51ClusterMonitor.kt\ncom/shilapi/xcertplay/DiLink51ClusterMonitor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000  2\u00020\u0001:\u0002\u001f B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u001b\u001a\u00020\u0007J\u0006\u0010\u001c\u001a\u00020\u0007J\u0008\u0010\u001d\u001a\u00020\u0012H\u0002J\u0008\u0010\u001e\u001a\u00020\u0007H\u0003R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\n \n*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \n*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00120\u0014j\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0012`\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;",
        "",
        "context",
        "Landroid/content/Context;",
        "onState",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;",
        "",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V",
        "kotlin.jvm.PlatformType",
        "handler",
        "Landroid/os/Handler;",
        "executor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "state",
        "Lcom/shilapi/xcertplay/ClusterActivityState;",
        "since",
        "",
        "seen",
        "Ljava/util/LinkedHashMap;",
        "Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;",
        "Lkotlin/collections/LinkedHashMap;",
        "instanceIdMethod",
        "Ljava/lang/reflect/Method;",
        "stopped",
        "",
        "start",
        "stop",
        "bootTime",
        "poll",
        "EventKey",
        "Companion",
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
.field public static final Companion:Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final handler:Landroid/os/Handler;

.field private final instanceIdMethod:Ljava/lang/reflect/Method;

.field private final onState:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final seen:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private since:J

.field private state:Lcom/shilapi/xcertplay/ClusterActivityState;

.field private volatile stopped:Z


# direct methods
.method public static synthetic $r8$lambda$2a041KEad56E-54HvJQ9aUspig4(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->poll$lambda$3(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CRiGC3n-Jov3ePChGSpeCIbpf74(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->start$lambda$1(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GibJcpRFVJZwnNrWtZNfX48GULU(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->poll$lambda$4(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->Companion:Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->onState:Lkotlin/jvm/functions/Function1;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->context:Landroid/content/Context;

    .line 20
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->handler:Landroid/os/Handler;

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    new-instance p1, Lcom/shilapi/xcertplay/ClusterActivityState;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/ClusterActivityState;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->state:Lcom/shilapi/xcertplay/ClusterActivityState;

    .line 23
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->bootTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->since:J

    .line 24
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->seen:Ljava/util/LinkedHashMap;

    const/4 p1, 0x0

    .line 27
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;

    invoke-static {}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "getInstanceId"

    invoke-virtual {p2, v0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, p2

    :goto_1
    check-cast p1, Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->instanceIdMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private final bootTime()J
    .locals 4

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final poll()V
    .locals 12

    .line 46
    const-string v0, "context"

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->stopped:Z

    if-eqz v1, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 49
    :try_start_0
    sget-object v3, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->Companion:Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$Companion;

    iget-object v4, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->context:Landroid/content/Context;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$Companion;->hasAccess(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 50
    new-instance v0, Lcom/shilapi/xcertplay/ClusterActivityState;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/ClusterActivityState;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->state:Lcom/shilapi/xcertplay/ClusterActivityState;

    .line 51
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 52
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->bootTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->since:J

    goto/16 :goto_7

    .line 54
    :cond_1
    iget-wide v3, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->since:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 55
    new-instance v3, Lcom/shilapi/xcertplay/ClusterActivityState;

    invoke-direct {v3}, Lcom/shilapi/xcertplay/ClusterActivityState;-><init>()V

    iput-object v3, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->state:Lcom/shilapi/xcertplay/ClusterActivityState;

    .line 56
    iget-object v3, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 57
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->bootTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->since:J

    .line 59
    :cond_2
    iget-object v3, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->context:Landroid/content/Context;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$17()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Ljava/lang/Object;)Landroid/app/usage/UsageStatsManager;

    move-result-object v0

    iget-wide v3, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->since:J

    invoke-static {v0, v3, v4, v1, v2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/usage/UsageStatsManager;JJ)Landroid/app/usage/UsageEvents;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 61
    new-instance v4, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v4}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 62
    :cond_3
    :goto_0
    invoke-static {v3}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/usage/UsageEvents;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 63
    invoke-static {v3, v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/usage/UsageEvents;Landroid/app/usage/UsageEvents$Event;)Z

    .line 64
    invoke-static {v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/usage/UsageEvents$Event;)I

    move-result v0

    const/16 v5, 0x1a

    if-eq v0, v5, :cond_5

    invoke-static {v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/usage/UsageEvents$Event;)I

    move-result v0

    const/16 v5, 0x1b

    if-ne v0, v5, :cond_4

    goto :goto_1

    .line 65
    :cond_4
    sget-object v0, Lcom/shilapi/xcertplay/ClusterActivityState;->Companion:Lcom/shilapi/xcertplay/ClusterActivityState$Companion;

    invoke-static {v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m$1(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/shilapi/xcertplay/ClusterActivityState$Companion;->accepted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    :cond_5
    :goto_1
    const/4 v5, 0x0

    .line 66
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->instanceIdMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v5

    :goto_2
    instance-of v6, v0, Ljava/lang/Integer;

    if-eqz v6, :cond_7

    check-cast v0, Ljava/lang/Integer;

    goto :goto_3

    :cond_7
    move-object v0, v5

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    move-object v5, v0

    :goto_5
    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v8, v0

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 67
    :goto_6
    new-instance v5, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;

    invoke-static {v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m$1(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/usage/UsageEvents$Event;)I

    move-result v9

    invoke-static {v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/usage/UsageEvents$Event;)J

    move-result-wide v10

    invoke-direct/range {v5 .. v11}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$EventKey;-><init>(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 68
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->seen:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/usage/UsageEvents$Event;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 69
    iget-object v5, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->state:Lcom/shilapi/xcertplay/ClusterActivityState;

    invoke-static {v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m$1(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/usage/UsageEvents$Event;)I

    move-result v9

    invoke-static {v4}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/usage/UsageEvents$Event;)J

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Lcom/shilapi/xcertplay/ClusterActivityState;->event(Ljava/lang/String;Ljava/lang/String;IIJ)V

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x7d0

    int-to-long v3, v0

    sub-long/2addr v1, v3

    .line 73
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->bootTime()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->since:J

    .line 74
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-entries>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$$ExternalSyntheticLambda10;-><init>(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    .line 76
    :goto_7
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->state:Lcom/shilapi/xcertplay/ClusterActivityState;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ClusterActivityState;->snapshot()Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;

    move-result-object v0

    goto :goto_8

    .line 60
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Usage events unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    :catch_0
    new-instance v0, Lcom/shilapi/xcertplay/ClusterActivityState;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/ClusterActivityState;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->state:Lcom/shilapi/xcertplay/ClusterActivityState;

    .line 79
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 80
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->bootTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->since:J

    .line 81
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->state:Lcom/shilapi/xcertplay/ClusterActivityState;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ClusterActivityState;->snapshot()Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;

    move-result-object v0

    .line 83
    :goto_8
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$$ExternalSyntheticLambda11;-><init>(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final poll$lambda$3(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;Ljava/util/Map$Entry;)Z
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->since:J

    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final poll$lambda$4(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;)V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->stopped:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->onState:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final start$lambda$1(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->poll()V

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 7

    .line 32
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor$$ExternalSyntheticLambda9;-><init>(Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;)V

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final stop()V
    .locals 2

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->stopped:Z

    .line 37
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 38
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiLink51ClusterMonitor;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
