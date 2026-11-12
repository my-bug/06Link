.class public final Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;
.super Ljava/lang/Object;
.source "NavigationOutputWorker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationOutputWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationOutputWorker.kt\ncom/shilapi/xcertplay/hud/NavigationOutputWorker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,37:1\n1#2:38\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0014\u0010\r\u001a\u00020\u00062\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u000f\u001a\u00020\u00062\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0006\u0010\u0011\u001a\u00020\u0006R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;",
        "",
        "name",
        "",
        "clearOutput",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "executor",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "accepting",
        "",
        "start",
        "initialize",
        "submit",
        "action",
        "clear",
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


# instance fields
.field private accepting:Z

.field private final clearOutput:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static synthetic $r8$lambda$2fjlApuLbKmNwRu2t_GeechImlw(Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->clear$lambda$5(Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RKwy9W0KeUv7T1Nleg9l4JlHk00(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->executor$lambda$1(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z-xzJuqKOsVLsO5SjaQTdVWv87c(Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->start$lambda$3(Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$busrmVbqtrDJShtW-sWt5mvxumU(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->submit$lambda$4(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clearOutput"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->clearOutput:Lkotlin/jvm/functions/Function0;

    .line 9
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    new-instance p2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v7, p2

    check-cast v7, Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker$$ExternalSyntheticLambda0;

    invoke-direct {v8, p1}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    .line 9
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private static final clear$lambda$5(Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;)V
    .locals 1

    .line 34
    iget-object p0, p0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->clearOutput:Lkotlin/jvm/functions/Function0;

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

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

.method private static final executor$lambda$1(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 10
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static final start$lambda$3(Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 17
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->clearOutput:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final submit$lambda$4(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 23
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

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


# virtual methods
.method public final declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 32
    :try_start_0
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->accepting:Z

    .line 33
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 34
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
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

.method public final declared-synchronized start(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "initialize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->accepting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 15
    :try_start_1
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->accepting:Z

    .line 16
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 17
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized submit(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->accepting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 23
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 27
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/hud/NavigationOutputWorker;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
