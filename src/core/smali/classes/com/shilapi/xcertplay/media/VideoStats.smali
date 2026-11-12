.class public final Lcom/shilapi/xcertplay/media/VideoStats;
.super Ljava/lang/Object;
.source "VideoStats.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/VideoStats$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoStats.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoStats.kt\ncom/shilapi/xcertplay/media/VideoStats\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1#2:74\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0000\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB9\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0016\u0008\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0010J\u0006\u0010\u001a\u001a\u00020\nJ\u0006\u0010\u001b\u001a\u00020\nJ\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/VideoStats;",
        "",
        "label",
        "",
        "nanoTime",
        "Lkotlin/Function0;",
        "",
        "onWindow",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/media/VideoWindow;",
        "",
        "<init>",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "windowStartNs",
        "lastArrivalNs",
        "received",
        "",
        "rendered",
        "recoveries",
        "bytes",
        "maxArrivalGapNs",
        "touchSamples",
        "touchLatencySumNs",
        "maxTouchLatencyNs",
        "onReceived",
        "size",
        "onRendered",
        "onRecovery",
        "logIfDue",
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
.field private static final Companion:Lcom/shilapi/xcertplay/media/VideoStats$Companion;

.field public static final IDLE_GAP_NS:J = 0x77359400L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "DiPlay-VideoStats"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_NS:J = 0x12a05f200L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private bytes:J

.field private final label:Ljava/lang/String;

.field private lastArrivalNs:J

.field private maxArrivalGapNs:J

.field private maxTouchLatencyNs:J

.field private final nanoTime:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final onWindow:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/media/VideoWindow;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private received:I

.field private recoveries:I

.field private rendered:I

.field private touchLatencySumNs:J

.field private touchSamples:I

.field private windowStartNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/VideoStats$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/VideoStats$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/VideoStats;->Companion:Lcom/shilapi/xcertplay/media/VideoStats$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/media/VideoStats;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/media/VideoWindow;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nanoTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/VideoStats;->label:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->nanoTime:Lkotlin/jvm/functions/Function0;

    .line 10
    iput-object p3, p0, Lcom/shilapi/xcertplay/media/VideoStats;->onWindow:Lkotlin/jvm/functions/Function1;

    .line 12
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shilapi/xcertplay/media/VideoStats;->windowStartNs:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 7
    const-string p1, ""

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 8
    sget-object p2, Lcom/shilapi/xcertplay/media/VideoStats$1;->INSTANCE:Lcom/shilapi/xcertplay/media/VideoStats$1;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/VideoStats;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized logIfDue()Ljava/lang/String;
    .locals 20

    move-object/from16 v1, p0

    const-string/jumbo v0, "video stats"

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v2, v1, Lcom/shilapi/xcertplay/media/VideoStats;->nanoTime:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 45
    iget-wide v4, v1, Lcom/shilapi/xcertplay/media/VideoStats;->windowStartNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-long v4, v2, v4

    const-wide v6, 0x12a05f200L

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-gez v9, :cond_0

    .line 46
    monitor-exit p0

    return-object v8

    :cond_0
    long-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    .line 47
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 48
    :try_start_1
    iget v6, v1, Lcom/shilapi/xcertplay/media/VideoStats;->received:I

    if-nez v6, :cond_1

    iget v6, v1, Lcom/shilapi/xcertplay/media/VideoStats;->touchSamples:I

    if-nez v6, :cond_1

    iput-wide v2, v1, Lcom/shilapi/xcertplay/media/VideoStats;->windowStartNs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v8

    .line 49
    :cond_1
    :try_start_2
    iget v6, v1, Lcom/shilapi/xcertplay/media/VideoStats;->touchSamples:I

    const v7, 0xf4240

    if-nez v6, :cond_2

    const-wide/16 v8, -0x1

    goto :goto_0

    :cond_2
    iget-wide v8, v1, Lcom/shilapi/xcertplay/media/VideoStats;->touchLatencySumNs:J

    int-to-long v10, v6

    div-long/2addr v8, v10

    int-to-long v10, v7

    div-long/2addr v8, v10

    .line 50
    :goto_0
    iget-object v6, v1, Lcom/shilapi/xcertplay/media/VideoStats;->label:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " rx=%.1ffps shown=%.1ffps maxGap=%dms kbps=%d recoveries=%d touch2frame avg=%dms max=%dms n=%d touchSendMax=%dms"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget v6, v1, Lcom/shilapi/xcertplay/media/VideoStats;->received:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    int-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v4

    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget v10, v1, Lcom/shilapi/xcertplay/media/VideoStats;->rendered:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v4

    :try_start_4
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget-wide v11, v1, Lcom/shilapi/xcertplay/media/VideoStats;->maxArrivalGapNs:J

    int-to-long v13, v7

    div-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 53
    iget-wide v11, v1, Lcom/shilapi/xcertplay/media/VideoStats;->bytes:J

    const/16 v15, 0x8

    move-wide/from16 v16, v4

    int-to-long v4, v15

    mul-long v11, v11, v4

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v11, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    long-to-double v4, v11

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v4, v16

    double-to-long v4, v4

    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v5, v1, Lcom/shilapi/xcertplay/media/VideoStats;->recoveries:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 54
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v11, v1, Lcom/shilapi/xcertplay/media/VideoStats;->maxTouchLatencyNs:J

    div-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v11, v1, Lcom/shilapi/xcertplay/media/VideoStats;->touchSamples:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->INSTANCE:Lcom/shilapi/xcertplay/media/TouchLatencyProbe;

    invoke-virtual {v12}, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->getMaxSendNs()J

    move-result-wide v18

    div-long v18, v18, v13

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v13, 0x9

    new-array v14, v13, [Ljava/lang/Object;

    const/16 v18, 0x8

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v6, 0x1

    aput-object v10, v14, v6

    const/4 v6, 0x2

    aput-object v7, v14, v6

    const/4 v6, 0x3

    aput-object v4, v14, v6

    const/4 v4, 0x4

    aput-object v5, v14, v4

    const/4 v4, 0x5

    aput-object v8, v14, v4

    const/4 v4, 0x6

    aput-object v9, v14, v4

    const/4 v4, 0x7

    aput-object v11, v14, v4

    aput-object v12, v14, v18

    .line 51
    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "format(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->INSTANCE:Lcom/shilapi/xcertplay/media/TouchLatencyProbe;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->setMaxSendNs(J)V

    .line 57
    const-string v0, "DiPlay-VideoStats"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, v1, Lcom/shilapi/xcertplay/media/VideoStats;->onWindow:Lkotlin/jvm/functions/Function1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    .line 59
    :try_start_6
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v7, v1

    check-cast v7, Lcom/shilapi/xcertplay/media/VideoStats;

    new-instance v8, Lcom/shilapi/xcertplay/media/VideoWindow;

    iget v7, v1, Lcom/shilapi/xcertplay/media/VideoStats;->received:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    int-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double v9, v9, v16

    :try_start_7
    iget v7, v1, Lcom/shilapi/xcertplay/media/VideoStats;->rendered:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    int-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double v11, v11, v16

    :try_start_8
    iget v13, v1, Lcom/shilapi/xcertplay/media/VideoStats;->recoveries:I

    invoke-direct/range {v8 .. v13}, Lcom/shilapi/xcertplay/media/VideoWindow;-><init>(DDI)V

    invoke-interface {v0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_9
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 61
    :cond_3
    iput-wide v2, v1, Lcom/shilapi/xcertplay/media/VideoStats;->windowStartNs:J

    .line 62
    iput v15, v1, Lcom/shilapi/xcertplay/media/VideoStats;->received:I

    iput v15, v1, Lcom/shilapi/xcertplay/media/VideoStats;->rendered:I

    iput v15, v1, Lcom/shilapi/xcertplay/media/VideoStats;->recoveries:I

    iput-wide v5, v1, Lcom/shilapi/xcertplay/media/VideoStats;->bytes:J

    iput-wide v5, v1, Lcom/shilapi/xcertplay/media/VideoStats;->maxArrivalGapNs:J

    .line 63
    iput v15, v1, Lcom/shilapi/xcertplay/media/VideoStats;->touchSamples:I

    iput-wide v5, v1, Lcom/shilapi/xcertplay/media/VideoStats;->touchLatencySumNs:J

    iput-wide v5, v1, Lcom/shilapi/xcertplay/media/VideoStats;->maxTouchLatencyNs:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 64
    monitor-exit p0

    return-object v4

    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0
.end method

.method public final declared-synchronized onReceived(I)V
    .locals 9

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoStats;->nanoTime:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 25
    iget-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->lastArrivalNs:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-eqz v8, :cond_0

    const-wide/32 v2, 0x77359400

    cmp-long v8, v4, v2

    if-gez v8, :cond_0

    .line 26
    iget-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->maxArrivalGapNs:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->maxArrivalGapNs:J

    .line 27
    :cond_0
    iput-wide v0, p0, Lcom/shilapi/xcertplay/media/VideoStats;->lastArrivalNs:J

    .line 29
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->label:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->INSTANCE:Lcom/shilapi/xcertplay/media/TouchLatencyProbe;

    invoke-virtual {v2, v0, v1}, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->onFrame(J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    cmp-long v2, v0, v6

    if-ltz v2, :cond_2

    .line 31
    iget v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->touchSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->touchSamples:I

    .line 32
    iget-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->touchLatencySumNs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->touchLatencySumNs:J

    .line 33
    iget-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->maxTouchLatencyNs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/media/VideoStats;->maxTouchLatencyNs:J

    .line 35
    :cond_2
    iget v0, p0, Lcom/shilapi/xcertplay/media/VideoStats;->received:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shilapi/xcertplay/media/VideoStats;->received:I

    .line 36
    iget-wide v0, p0, Lcom/shilapi/xcertplay/media/VideoStats;->bytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shilapi/xcertplay/media/VideoStats;->bytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onRecovery()V
    .locals 1

    monitor-enter p0

    .line 41
    :try_start_0
    iget v0, p0, Lcom/shilapi/xcertplay/media/VideoStats;->recoveries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shilapi/xcertplay/media/VideoStats;->recoveries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public final declared-synchronized onRendered()V
    .locals 1

    monitor-enter p0

    .line 39
    :try_start_0
    iget v0, p0, Lcom/shilapi/xcertplay/media/VideoStats;->rendered:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shilapi/xcertplay/media/VideoStats;->rendered:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
