.class public final Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;
.super Ljava/lang/Object;
.source "BydWheelSpeed.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydWheelSpeed.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydWheelSpeed.kt\ncom/shilapi/xcertplay/hud/BydWheelSpeedSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n1#2:107\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000eJ\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001dH\u0016J\n\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0008\u0010!\u001a\u00020\u001dH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00130\u0012j\u0008\u0012\u0004\u0012\u00020\u0013`\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;",
        "Lcom/shilapi/xcertplay/transport/VehicleSpeedSource;",
        "<init>",
        "()V",
        "TAG",
        "",
        "READ_MILLIS",
        "",
        "GEAR_EVERY_READS",
        "",
        "MAX_SAMPLES",
        "shell",
        "Lcom/shilapi/xcertplay/hud/BydAdbShell;",
        "context",
        "Landroid/content/Context;",
        "executor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "samples",
        "Ljava/util/ArrayList;",
        "Lcom/shilapi/xcertplay/transport/VehicleSpeedSample;",
        "Lkotlin/collections/ArrayList;",
        "gear",
        "Lcom/shilapi/xcertplay/transport/VehicleGear;",
        "reads",
        "firstSampleLogged",
        "",
        "attach",
        "appContext",
        "start",
        "",
        "stop",
        "drain",
        "Lcom/shilapi/xcertplay/transport/VehicleSpeedReading;",
        "poll",
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
.field private static final GEAR_EVERY_READS:I = 0x4

.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;

.field private static final MAX_SAMPLES:I = 0x28

.field private static final READ_MILLIS:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "DiPlay-BYD-Speed"

.field private static context:Landroid/content/Context;

.field private static executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static firstSampleLogged:Z

.field private static gear:Lcom/shilapi/xcertplay/transport/VehicleGear;

.field private static reads:I

.field private static final samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shilapi/xcertplay/transport/VehicleSpeedSample;",
            ">;"
        }
    .end annotation
.end field

.field private static final shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;


# direct methods
.method public static synthetic $r8$lambda$LOUak8C7F1o4x_eLPrxJdyE1pHA(Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->poll()V

    return-void
.end method

.method public static synthetic $r8$lambda$hNdHhgGIE9ZX_Ce7fAhDR_Imceg(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->start$lambda$2(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k4-BBfXwArJWDvNn1o-w1zYuijA()V
    .locals 0

    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->stop$lambda$6()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;

    .line 47
    new-instance v0, Lcom/shilapi/xcertplay/hud/BydAdbShell;

    const-string v1, "DiPlay-BYD-Speed"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/hud/BydAdbShell;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->samples:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final poll()V
    .locals 9

    .line 86
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 87
    :cond_0
    sget v1, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->reads:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->reads:I

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 88
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydWheelSpeed;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydWheelSpeed;

    sget-object v4, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;

    const-string v5, "service call autoservice 5 i32 1011 i32 555745336"

    invoke-virtual {v4, v0, v5}, Lcom/shilapi/xcertplay/hud/BydAdbShell;->run(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/shilapi/xcertplay/hud/BydWheelSpeed;->gear(Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/VehicleGear;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 89
    sget-object v4, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->gear:Lcom/shilapi/xcertplay/transport/VehicleGear;

    if-eq v5, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    sput-object v1, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->gear:Lcom/shilapi/xcertplay/transport/VehicleGear;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    if-eqz v5, :cond_2

    .line 90
    const-string v4, "DiPlay-BYD-Speed"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "gear "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 89
    monitor-exit v4

    throw v0

    .line 93
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 94
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydWheelSpeed;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydWheelSpeed;

    sget-object v6, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;

    const-string v7, "service call autoservice 7 i32 1013 i32 -1807745016"

    invoke-virtual {v6, v0, v7}, Lcom/shilapi/xcertplay/hud/BydAdbShell;->run(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/hud/BydWheelSpeed;->metersPerSecond(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 95
    new-instance v6, Lcom/shilapi/xcertplay/transport/VehicleSpeedSample;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v4, v7

    const/4 v7, 0x2

    int-to-long v7, v7

    div-long/2addr v4, v7

    invoke-direct {v6, v4, v5, v0, v1}, Lcom/shilapi/xcertplay/transport/VehicleSpeedSample;-><init>(JD)V

    .line 96
    monitor-enter p0

    .line 97
    :try_start_1
    sget-object v4, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v7, 0x28

    if-ne v5, v7, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    :cond_3
    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    monitor-exit p0

    .line 100
    sget-boolean v4, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->firstSampleLogged:Z

    if-nez v4, :cond_4

    .line 101
    sput-boolean v3, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->firstSampleLogged:Z

    .line 102
    const-string v4, "DiPlay-BYD-Speed"

    const-string v5, "%.1f"

    const-wide v6, 0x400ccccccccccccdL    # 3.6

    mul-double v0, v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "first wheel speed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " km/h"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception v0

    .line 96
    monitor-exit p0

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method private static final start$lambda$2(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "diplay-wheel-speed"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static final stop$lambda$6()V
    .locals 1

    .line 73
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydAdbShell;->close()V

    return-void
.end method


# virtual methods
.method public final attach(Landroid/content/Context;)Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->context:Landroid/content/Context;

    return-object p0
.end method

.method public declared-synchronized drain()Lcom/shilapi/xcertplay/transport/VehicleSpeedReading;
    .locals 4

    monitor-enter p0

    .line 80
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->gear:Lcom/shilapi/xcertplay/transport/VehicleGear;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 81
    :cond_0
    :try_start_1
    sget-object v2, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->samples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit p0

    return-object v1

    .line 82
    :cond_1
    :try_start_2
    new-instance v1, Lcom/shilapi/xcertplay/transport/VehicleSpeedReading;

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/shilapi/xcertplay/transport/VehicleSpeedReading;-><init>(Lcom/shilapi/xcertplay/transport/VehicleGear;Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 8

    monitor-enter p0

    .line 59
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 60
    :cond_0
    :try_start_1
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->samples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 61
    sput-object v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->gear:Lcom/shilapi/xcertplay/transport/VehicleGear;

    const/4 v0, 0x0

    .line 62
    sput v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->reads:I

    .line 63
    sput-boolean v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->firstSampleLogged:Z

    .line 64
    new-instance v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 66
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;

    new-instance v2, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xfa

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 64
    sput-object v1, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 67
    const-string v0, "DiPlay-BYD-Speed"

    const-string/jumbo v1, "wheel speed started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 71
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    sput-object v1, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v1, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/hud/BydWheelSpeedSource$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 74
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 75
    const-string v0, "DiPlay-BYD-Speed"

    const-string/jumbo v1, "wheel speed stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 71
    monitor-exit p0

    throw v0
.end method
