.class public final Lcom/shilapi/xcertplay/hud/BydClusterMapPause;
.super Ljava/lang/Object;
.source "BydClusterMapPause.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydClusterMapPause.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydClusterMapPause.kt\ncom/shilapi/xcertplay/hud/BydClusterMapPause\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\rJ\u0008\u0010\"\u001a\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R(\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR(\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0017X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001a\"\u0004\u0008\u001f\u0010\u001c\u00a8\u0006#"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydClusterMapPause;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "READ_MILLIS",
        "",
        "tickerStarted",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "shell",
        "Lcom/shilapi/xcertplay/hud/BydAdbShell;",
        "context",
        "Landroid/content/Context;",
        "lastMode",
        "Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;",
        "clusterMapShown",
        "",
        "getClusterMapShown",
        "()Z",
        "setClusterMapShown",
        "(Z)V",
        "streamControl",
        "Lkotlin/Function1;",
        "",
        "getStreamControl",
        "()Lkotlin/jvm/functions/Function1;",
        "setStreamControl",
        "(Lkotlin/jvm/functions/Function1;)V",
        "readMode",
        "getReadMode$shared_release",
        "setReadMode$shared_release",
        "initialize",
        "appContext",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydClusterMapPause;

.field private static final READ_MILLIS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "DiPlay-BYD-ClusterMap"

.field private static volatile clusterMapShown:Z

.field private static volatile context:Landroid/content/Context;

.field private static lastMode:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

.field private static volatile readMode:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;

.field private static volatile streamControl:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final tickerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$AVLRSYMwhJtN9fmjnmPMylpRwdA(Landroid/content/Context;)Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->readMode$lambda$0(Landroid/content/Context;)Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SJayEsuvBMCCBaGJdwkJhrQssIg(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->initialize$lambda$2(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WHAeJkCKSvofH8S_JE_s5PJ_Xgk(Lcom/shilapi/xcertplay/hud/BydClusterMapPause;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->tick()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydClusterMapPause;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->tickerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance v0, Lcom/shilapi/xcertplay/hud/BydAdbShell;

    const-string v1, "DiPlay-BYD-ClusterMap"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/hud/BydAdbShell;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;

    .line 36
    new-instance v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydClusterMapPause$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->readMode:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final initialize$lambda$2(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "diplay-cluster-map"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static final readMode$lambda$0(Landroid/content/Context;)Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;
    .locals 3

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->Companion:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion;

    sget-object v1, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;

    const-string v2, "service call autoservice 5 i32 1007 i32 1086337074"

    invoke-virtual {v1, p0, v2}, Lcom/shilapi/xcertplay/hud/BydAdbShell;->run(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion;->parseRead(Ljava/lang/String;)Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    move-result-object p0

    return-object p0
.end method

.method private final tick()V
    .locals 6

    .line 51
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->streamControl:Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 53
    sget-boolean v3, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->clusterMapShown:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/shilapi/xcertplay/hud/BydOutputSettings;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydOutputSettings;

    invoke-virtual {v3, v0}, Lcom/shilapi/xcertplay/hud/BydOutputSettings;->clusterStreamPause(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    sget-object v3, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->readMode:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    .line 60
    sget-object v3, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->lastMode:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    if-eq v0, v3, :cond_4

    .line 61
    sput-object v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->lastMode:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    const-string/jumbo v3, "unknown"

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cluster mode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DiPlay-BYD-ClusterMap"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 65
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->getShowsMap()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v3, 0x1

    :cond_5
    xor-int/lit8 v0, v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    :goto_0
    if-eqz v1, :cond_7

    .line 54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_7
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydAdbShell;->close()V

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->lastMode:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    return-void
.end method


# virtual methods
.method public final getClusterMapShown()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->clusterMapShown:Z

    return v0
.end method

.method public final getReadMode$shared_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;",
            ">;"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->readMode:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getStreamControl()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->streamControl:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 7

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->context:Landroid/content/Context;

    .line 43
    sget-object p1, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->tickerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    new-instance p1, Lcom/shilapi/xcertplay/hud/BydClusterMapPause$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/hud/BydClusterMapPause$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/shilapi/xcertplay/hud/BydClusterMapPause$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/hud/BydClusterMapPause$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/hud/BydClusterMapPause;)V

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public final setClusterMapShown(Z)V
    .locals 0

    .line 30
    sput-boolean p1, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->clusterMapShown:Z

    return-void
.end method

.method public final setReadMode$shared_release(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sput-object p1, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->readMode:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setStreamControl(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 33
    sput-object p1, Lcom/shilapi/xcertplay/hud/BydClusterMapPause;->streamControl:Lkotlin/jvm/functions/Function1;

    return-void
.end method
