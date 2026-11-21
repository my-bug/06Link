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

.method private final takeWindow()[J
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoStats;->nanoTime:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->windowStartNs:J

    sub-long v2, v0, v2

    const-wide v4, 0x12a05f200L

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    iget v6, p0, Lcom/shilapi/xcertplay/media/VideoStats;->received:I

    if-nez v6, :cond_0

    iget v6, p0, Lcom/shilapi/xcertplay/media/VideoStats;->touchSamples:I

    if-nez v6, :cond_0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/media/VideoStats;->windowStartNs:J

    goto :goto_0

    :cond_0
    const/16 v6, 0xa

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v2, v6, v7

    const/16 v7, 0x1

    iget v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->received:I

    int-to-long v2, v2

    aput-wide v2, v6, v7

    const/16 v7, 0x2

    iget v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->rendered:I

    int-to-long v2, v2

    aput-wide v2, v6, v7

    const/16 v7, 0x3

    iget-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->maxArrivalGapNs:J

    aput-wide v2, v6, v7

    const/16 v7, 0x4

    iget-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->bytes:J

    aput-wide v2, v6, v7

    const/16 v7, 0x5

    iget v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->recoveries:I

    int-to-long v2, v2

    aput-wide v2, v6, v7

    const/16 v7, 0x6

    iget-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->touchLatencySumNs:J

    aput-wide v2, v6, v7

    const/16 v7, 0x7

    iget-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->maxTouchLatencyNs:J

    aput-wide v2, v6, v7

    const/16 v7, 0x8

    iget v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->touchSamples:I

    int-to-long v2, v2

    aput-wide v2, v6, v7

    sget-object v8, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->INSTANCE:Lcom/shilapi/xcertplay/media/TouchLatencyProbe;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->getMaxSendNs()J

    move-result-wide v2

    const/16 v7, 0x9

    aput-wide v2, v6, v7

    iput-wide v0, p0, Lcom/shilapi/xcertplay/media/VideoStats;->windowStartNs:J

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    iput v7, p0, Lcom/shilapi/xcertplay/media/VideoStats;->received:I

    iput v7, p0, Lcom/shilapi/xcertplay/media/VideoStats;->rendered:I

    iput-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->maxArrivalGapNs:J

    iput-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->bytes:J

    iput v7, p0, Lcom/shilapi/xcertplay/media/VideoStats;->recoveries:I

    iput-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->touchLatencySumNs:J

    iput-wide v2, p0, Lcom/shilapi/xcertplay/media/VideoStats;->maxTouchLatencyNs:J

    iput v7, p0, Lcom/shilapi/xcertplay/media/VideoStats;->touchSamples:I

    invoke-virtual {v8, v2, v3}, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->setMaxSendNs(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v6

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final logIfDue()Ljava/lang/String;
    .locals 16

    move-object/from16 v15, p0

    invoke-direct {v15}, Lcom/shilapi/xcertplay/media/VideoStats;->takeWindow()[J

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v4, 0x0

    aget-wide v1, v0, v4

    long-to-double v1, v1

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v1, v5

    const/16 v4, 0x9

    new-array v3, v4, [Ljava/lang/Object;

    const/16 v4, 0x1

    aget-wide v5, v0, v4

    long-to-double v5, v5

    div-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/16 v4, 0x0

    aput-object v5, v3, v4

    const/16 v4, 0x2

    aget-wide v5, v0, v4

    long-to-double v5, v5

    div-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/16 v4, 0x1

    aput-object v5, v3, v4

    const/16 v4, 0x3

    aget-wide v5, v0, v4

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v4, 0x2

    aput-object v5, v3, v4

    const/16 v4, 0x4

    aget-wide v5, v0, v4

    const-wide/16 v7, 0x8

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-double v5, v5

    div-double/2addr v5, v1

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v4, 0x3

    aput-object v5, v3, v4

    const/16 v4, 0x5

    aget-wide v5, v0, v4

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v4, 0x4

    aput-object v5, v3, v4

    const/16 v4, 0x6

    aget-wide v5, v0, v4

    const/16 v4, 0x8

    aget-wide v7, v0, v4

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-nez v4, :cond_1

    const-wide/16 v5, -0x1

    goto :goto_0

    :cond_1
    div-long/2addr v5, v7

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v4, 0x5

    aput-object v5, v3, v4

    const/16 v4, 0x7

    aget-wide v5, v0, v4

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v4, 0x6

    aput-object v5, v3, v4

    const/16 v4, 0x8

    aget-wide v5, v0, v4

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v4, 0x7

    aput-object v5, v3, v4

    const/16 v4, 0x9

    aget-wide v5, v0, v4

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v4, 0x8

    aput-object v5, v3, v4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v4, "video stats"

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v15, Lcom/shilapi/xcertplay/media/VideoStats;->label:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " rx=%.1ffps shown=%.1ffps maxGap=%dms kbps=%d recoveries=%d touch2frame avg=%dms max=%dms n=%d touchSendMax=%dms"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DiPlay-VideoStats"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v15, Lcom/shilapi/xcertplay/media/VideoStats;->onWindow:Lkotlin/jvm/functions/Function1;

    if-eqz v4, :cond_2

    :try_start_0
    new-instance v5, Lcom/shilapi/xcertplay/media/VideoWindow;

    const/4 v10, 0x1

    aget-wide v6, v0, v10

    long-to-double v6, v6

    div-double/2addr v6, v1

    const/4 v10, 0x2

    aget-wide v8, v0, v10

    long-to-double v8, v8

    div-double/2addr v8, v1

    const/4 v10, 0x5

    aget-wide v10, v0, v10

    long-to-int v10, v10

    invoke-direct/range {v5 .. v10}, Lcom/shilapi/xcertplay/media/VideoWindow;-><init>(DDI)V

    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    return-object v3

    :catchall_0
    move-exception v4

    goto :goto_1
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
