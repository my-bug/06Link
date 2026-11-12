.class public final Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;
.super Ljava/lang/Object;
.source "Iap2VehicleStatus.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B5\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\"\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00070\u0005J\u001a\u0010\u0014\u001a\u00020\u00072\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00070\u0005J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ\u001c\u0010\u0017\u001a\u00020\u00072\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00070\u0005H\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;",
        "",
        "provider",
        "Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;",
        "onProgress",
        "Lkotlin/Function1;",
        "",
        "",
        "nanoTime",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V",
        "active",
        "",
        "lastSentNanos",
        "handle",
        "frame",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "send",
        "tick",
        "pollTimeout",
        "remainingMillis",
        "sendNow",
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
.field private active:Z

.field private lastSentNanos:J

.field private final nanoTime:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final onProgress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onProgress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nanoTime"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->provider:Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;

    .line 93
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->onProgress:Lkotlin/jvm/functions/Function1;

    .line 94
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->nanoTime:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 94
    sget-object p3, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter$1;->INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter$1;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 91
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;-><init>(Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final sendNow(Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->provider:Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;->snapshot()Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus;->INSTANCE:Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus;->update(Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->nanoTime:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->lastSentNanos:J

    .line 127
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->onProgress:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->getRangeKm()I

    move-result v1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->getBatteryPercent()D

    move-result-wide v2

    .line 128
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/VehicleStatusSnapshot;->getRangeWarning()Z

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "iap2 tx=0xa101 vehicle-status range="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "km battery="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "% warning="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final handle(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;Lkotlin/jvm/functions/Function1;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "send"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result p1

    const v0, 0xa100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const p2, 0xa102

    if-eq p1, p2, :cond_0

    return v2

    .line 108
    :cond_0
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->active:Z

    .line 109
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->onProgress:Lkotlin/jvm/functions/Function1;

    const-string p2, "iap2 rx=0xa102 stop-vehicle-status"

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->provider:Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->active:Z

    .line 103
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->onProgress:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "iap2 rx=0xa100 start-vehicle-status provider="

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->active:Z

    if-eqz p1, :cond_4

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->sendNow(Lkotlin/jvm/functions/Function1;)V

    :cond_4
    return v1
.end method

.method public final pollTimeout(J)J
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->active:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7530

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public final tick(Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "send"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->active:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->nanoTime:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->lastSentNanos:J

    sub-long/2addr v0, v2

    const-wide v2, 0x6fc23ac00L

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatusReporter;->sendNow(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method
