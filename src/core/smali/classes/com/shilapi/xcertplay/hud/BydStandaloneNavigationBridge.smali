.class public final Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;
.super Ljava/lang/Object;
.source "BydStandaloneNavigationBridge.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydStandaloneNavigationBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydStandaloneNavigationBridge.kt\ncom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0008J\u000e\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u000eJ\u0008\u0010\u0014\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;",
        "",
        "<init>",
        "()V",
        "lock",
        "route",
        "Lcom/shilapi/xcertplay/hud/BydHudRouteState;",
        "context",
        "Landroid/content/Context;",
        "output",
        "Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;",
        "started",
        "",
        "initialize",
        "",
        "appContext",
        "onFrame",
        "frame",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "clear",
        "tick",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;

.field private static context:Landroid/content/Context;

.field private static final lock:Ljava/lang/Object;

.field private static output:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;

.field private static final route:Lcom/shilapi/xcertplay/hud/BydHudRouteState;

.field private static started:Z


# direct methods
.method public static synthetic $r8$lambda$ci6Dah8PyzVS_jhDAr91CnZAGGA(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->initialize$lambda$2$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fU3o2FVtvbrkimG-gPt4P5UfZgY(Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->tick()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->lock:Ljava/lang/Object;

    .line 11
    new-instance v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->route:Lcom/shilapi/xcertplay/hud/BydHudRouteState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final initialize$lambda$2$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "diplay-standalone-navi"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private final tick()V
    .locals 6

    .line 38
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->Companion:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;->getSyntheticHold()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 41
    :try_start_1
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->context:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/shilapi/xcertplay/hud/BydOutputSettings;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydOutputSettings;

    invoke-virtual {v3, v1}, Lcom/shilapi/xcertplay/hud/BydOutputSettings;->enabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 42
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->route:Lcom/shilapi/xcertplay/hud/BydHudRouteState;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->currentApple()Lcom/shilapi/xcertplay/hud/BydAppleManeuver;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->Companion:Lcom/shilapi/xcertplay/hud/BydClusterFrame$Companion;

    invoke-virtual {v2, v1}, Lcom/shilapi/xcertplay/hud/BydClusterFrame$Companion;->from(Lcom/shilapi/xcertplay/hud/BydAppleManeuver;)Lcom/shilapi/xcertplay/hud/BydClusterFrame;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    .line 43
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->output:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->clear()V

    goto :goto_0

    .line 44
    :cond_1
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->output:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->getIcon()I

    move-result v3

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->getRoundaboutExit()I

    move-result v4

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->getDistanceMeters()I

    move-result v5

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/hud/BydClusterFrame;->getRoad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->update(IIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 46
    :try_start_2
    const-string v2, "DiPlay-Standalone"

    const-string v3, "HUD update/cleanup will retry"

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 32
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->route:Lcom/shilapi/xcertplay/hud/BydHudRouteState;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->clear()Z

    .line 34
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->output:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->clear()V

    .line 36
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 9

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->context:Landroid/content/Context;

    .line 18
    sget-object v2, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->output:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;

    if-nez v2, :cond_0

    sget-object v2, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;->Companion:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;

    invoke-virtual {v2, p1}, Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput$Companion;->create(Landroid/content/Context;)Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;

    move-result-object p1

    sput-object p1, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->output:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;

    .line 19
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->output:Lcom/shilapi/xcertplay/hud/BydStandaloneHudOutput;

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->started:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 20
    sput-boolean p1, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->started:Z

    .line 21
    new-instance p1, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 23
    new-instance v3, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 25
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v1

    throw p1
.end method

.method public final onFrame(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V
    .locals 3

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydStandaloneNavigationBridge;->route:Lcom/shilapi/xcertplay/hud/BydHudRouteState;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getPayload()[B

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->accept(I[B)Lcom/shilapi/xcertplay/hud/BydHudRouteChange;

    .line 30
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
