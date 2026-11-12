.class public final Lcom/shilapi/xcertplay/hud/BydBatteryStatus;
.super Ljava/lang/Object;
.source "BydBattery.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydBattery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydBattery.kt\ncom/shilapi/xcertplay/hud/BydBatteryStatus\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000cJ\n\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0008\u0010!\u001a\u00020\u001dH\u0002J\u0016\u0010\"\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\u0013J\u0008\u0010$\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0012X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0018\u001a\n \u001a*\u0004\u0018\u00010\u00190\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydBatteryStatus;",
        "Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;",
        "<init>",
        "()V",
        "TAG",
        "",
        "READ_MILLIS",
        "",
        "IDLE_MILLIS",
        "shell",
        "Lcom/shilapi/xcertplay/hud/BydAdbShell;",
        "context",
        "Landroid/content/Context;",
        "started",
        "",
        "cache",
        "Lcom/shilapi/xcertplay/hud/BydBatteryCache;",
        "readBattery",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/hud/BydBatteryReading;",
        "getReadBattery$shared_release",
        "()Lkotlin/jvm/functions/Function1;",
        "setReadBattery$shared_release",
        "(Lkotlin/jvm/functions/Function1;)V",
        "executor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "kotlin.jvm.PlatformType",
        "askedMillis",
        "start",
        "",
        "appContext",
        "snapshot",
        "Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;",
        "poll",
        "accept",
        "reading",
        "now",
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
.field private static final IDLE_MILLIS:J = 0x1d4c0L

.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydBatteryStatus;

.field private static final READ_MILLIS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "DiPlay-BYD-Battery"

.field private static volatile askedMillis:J

.field private static final cache:Lcom/shilapi/xcertplay/hud/BydBatteryCache;

.field private static volatile context:Landroid/content/Context;

.field private static final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile readBattery:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "Lcom/shilapi/xcertplay/hud/BydBatteryReading;",
            ">;"
        }
    .end annotation
.end field

.field private static final shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;

.field private static started:Z


# direct methods
.method public static synthetic $r8$lambda$FLqsfLWj09bAkpL1wlUgoVhA7js(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->executor$lambda$3(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hNrek6DNcRCjO2sCl3VQfQWd5t0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->readBattery$lambda$1$lambda$0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iZkywH8BjH06IpF9Yy6-EiR4Gxk(Landroid/content/Context;)Lcom/shilapi/xcertplay/hud/BydBatteryReading;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->readBattery$lambda$1(Landroid/content/Context;)Lcom/shilapi/xcertplay/hud/BydBatteryReading;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydBatteryStatus;

    .line 78
    new-instance v1, Lcom/shilapi/xcertplay/hud/BydAdbShell;

    const-string v2, "DiPlay-BYD-Battery"

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/hud/BydAdbShell;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;

    .line 81
    new-instance v1, Lcom/shilapi/xcertplay/hud/BydBatteryCache;

    new-instance v2, Lcom/shilapi/xcertplay/hud/BydBatteryStatus$cache$1;

    invoke-direct {v2, v0}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus$cache$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/hud/BydBatteryCache;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->cache:Lcom/shilapi/xcertplay/hud/BydBatteryCache;

    .line 82
    new-instance v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->readBattery:Lkotlin/jvm/functions/Function1;

    .line 85
    new-instance v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$now(Lcom/shilapi/xcertplay/hud/BydBatteryStatus;)J
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$poll(Lcom/shilapi/xcertplay/hud/BydBatteryStatus;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->poll()V

    return-void
.end method

.method private static final executor$lambda$3(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "diplay-battery"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private final now()J
    .locals 2

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private final poll()V
    .locals 6

    .line 110
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->now()J

    move-result-wide v1

    sget-wide v3, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->askedMillis:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1d4c0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydAdbShell;->close()V

    return-void

    .line 113
    :cond_1
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->readBattery:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/hud/BydBatteryReading;

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 114
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->accept(Landroid/content/Context;Lcom/shilapi/xcertplay/hud/BydBatteryReading;)V

    return-void
.end method

.method private static final readBattery$lambda$1(Landroid/content/Context;)Lcom/shilapi/xcertplay/hud/BydBatteryReading;
    .locals 2

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydBattery;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydBattery;

    new-instance v1, Lcom/shilapi/xcertplay/hud/BydBatteryStatus$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/hud/BydBattery;->read(Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/hud/BydBatteryReading;

    move-result-object p0

    return-object p0
.end method

.method private static final readBattery$lambda$1$lambda$0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->shell:Lcom/shilapi/xcertplay/hud/BydAdbShell;

    invoke-virtual {v0, p0, p1}, Lcom/shilapi/xcertplay/hud/BydAdbShell;->run(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final accept(Landroid/content/Context;Lcom/shilapi/xcertplay/hud/BydBatteryReading;)V
    .locals 6

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reading"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->context:Landroid/content/Context;

    .line 120
    sget-object p1, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->cache:Lcom/shilapi/xcertplay/hud/BydBatteryCache;

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/hud/BydBatteryCache;->accept(Lcom/shilapi/xcertplay/hud/BydBatteryReading;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getPercent()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getRangeKm()I

    move-result p1

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getRemainingKwh()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getCharging()Z

    move-result p2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "battery "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " % range "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " km "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " kWh charging="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DiPlay-BYD-Battery"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final getReadBattery$shared_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Lcom/shilapi/xcertplay/hud/BydBatteryReading;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->readBattery:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setReadBattery$shared_release(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "Lcom/shilapi/xcertplay/hud/BydBatteryReading;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sput-object p1, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->readBattery:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public snapshot()Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;
    .locals 3

    .line 104
    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->now()J

    move-result-wide v0

    sput-wide v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->askedMillis:J

    .line 105
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->cache:Lcom/shilapi/xcertplay/hud/BydBatteryCache;

    sget-object v2, Lcom/shilapi/xcertplay/hud/BydOutputSettings;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydOutputSettings;

    invoke-virtual {v2, v0}, Lcom/shilapi/xcertplay/hud/BydOutputSettings;->lowChargePercent(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/hud/BydBatteryCache;->snapshot(I)Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized start(Landroid/content/Context;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->context:Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->now()J

    move-result-wide v0

    sput-wide v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->askedMillis:J

    .line 94
    sget-boolean p1, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->started:Z

    if-eqz p1, :cond_0

    .line 96
    sget-object p1, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v0, "battery"

    new-instance v1, Lcom/shilapi/xcertplay/hud/BydBatteryStatus$start$1;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus$start$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/hud/GuardedTaskKt;->guardedTask(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 98
    sput-boolean p1, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->started:Z

    .line 99
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydBatteryStatus;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-string p1, "battery"

    new-instance v1, Lcom/shilapi/xcertplay/hud/BydBatteryStatus$start$2;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/hud/BydBatteryStatus$start$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1}, Lcom/shilapi/xcertplay/hud/GuardedTaskKt;->guardedTask(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;

    move-result-object v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7530

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
