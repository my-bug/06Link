.class public final Lcom/shilapi/xcertplay/hud/BydBatteryCache;
.super Ljava/lang/Object;
.source "BydBattery.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydBattery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydBattery.kt\ncom/shilapi/xcertplay/hud/BydBatteryCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0008J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydBatteryCache;",
        "",
        "now",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;)V",
        "latest",
        "Lcom/shilapi/xcertplay/hud/BydBatteryReading;",
        "latestMillis",
        "fullKwh",
        "",
        "Ljava/lang/Double;",
        "accept",
        "",
        "reading",
        "snapshot",
        "Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;",
        "lowPercent",
        "",
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
.field private fullKwh:Ljava/lang/Double;

.field private latest:Lcom/shilapi/xcertplay/hud/BydBatteryReading;

.field private latestMillis:J

.field private final now:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "now"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/hud/BydBatteryCache;->now:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final declared-synchronized accept(Lcom/shilapi/xcertplay/hud/BydBatteryReading;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "reading"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydBatteryCache;->latest:Lcom/shilapi/xcertplay/hud/BydBatteryReading;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getPercent()D

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getPercent()D

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getCharging()Z

    move-result v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/hud/BydBatteryReading;->getCharging()Z

    move-result v3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    xor-int/lit8 v0, v2, 0x1

    .line 139
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydBattery;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydBattery;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/hud/BydBattery;->fullKwh(Lcom/shilapi/xcertplay/hud/BydBatteryReading;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/shilapi/xcertplay/hud/BydBatteryCache;->fullKwh:Ljava/lang/Double;

    .line 140
    :cond_2
    iput-object p1, p0, Lcom/shilapi/xcertplay/hud/BydBatteryCache;->latest:Lcom/shilapi/xcertplay/hud/BydBatteryReading;

    .line 141
    iget-object p1, p0, Lcom/shilapi/xcertplay/hud/BydBatteryCache;->now:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/shilapi/xcertplay/hud/BydBatteryCache;->latestMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized snapshot(I)Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;
    .locals 7

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydBatteryCache;->latest:Lcom/shilapi/xcertplay/hud/BydBatteryReading;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 148
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/hud/BydBatteryCache;->now:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/shilapi/xcertplay/hud/BydBatteryCache;->latestMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2bf20

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    monitor-exit p0

    return-object v1

    .line 149
    :cond_1
    :try_start_2
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydBattery;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydBattery;

    iget-object v2, p0, Lcom/shilapi/xcertplay/hud/BydBatteryCache;->fullKwh:Ljava/lang/Double;

    invoke-virtual {v1, v0, p1, v2}, Lcom/shilapi/xcertplay/hud/BydBattery;->snapshot(Lcom/shilapi/xcertplay/hud/BydBatteryReading;ILjava/lang/Double;)Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
