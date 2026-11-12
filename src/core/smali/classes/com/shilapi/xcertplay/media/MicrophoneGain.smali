.class public final Lcom/shilapi/xcertplay/media/MicrophoneGain;
.super Ljava/lang/Object;
.source "MicrophoneGain.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/MicrophoneGain$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB%\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J \u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0003H\u0002J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/MicrophoneGain;",
        "",
        "maxGainDb",
        "",
        "targetDbfs",
        "speechFloorDbfs",
        "<init>",
        "(DDD)V",
        "value",
        "gainDb",
        "getGainDb",
        "()D",
        "levelDbfs",
        "appliedLinear",
        "process",
        "",
        "pcm",
        "",
        "length",
        "",
        "read",
        "index",
        "write",
        "linear",
        "db",
        "dbfs",
        "amplitude",
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
.field public static final Companion:Lcom/shilapi/xcertplay/media/MicrophoneGain$Companion;

.field public static final DEFAULT_MAX_GAIN_DB:D = 20.0

.field private static final FALL_DB_PER_FRAME:D = 1.5

.field private static final INITIAL_GAIN_DB:D = 10.0

.field private static final LEVEL_SMOOTHING:D = 0.15

.field private static final LIMIT:D = 29196.288

.field private static final RISE_DB_PER_FRAME:D = 0.4

.field private static final SPEECH_FLOOR_DBFS:D = -60.0

.field private static final TARGET_DBFS:D = -26.0


# instance fields
.field private appliedLinear:D

.field private gainDb:D

.field private levelDbfs:D

.field private final maxGainDb:D

.field private final speechFloorDbfs:D

.field private final targetDbfs:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/MicrophoneGain$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/MicrophoneGain$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->Companion:Lcom/shilapi/xcertplay/media/MicrophoneGain$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v7, 0x7

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/shilapi/xcertplay/media/MicrophoneGain;-><init>(DDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->maxGainDb:D

    .line 20
    iput-wide p3, p0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->targetDbfs:D

    .line 21
    iput-wide p5, p0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->speechFloorDbfs:D

    const-wide/high16 p3, 0x4024000000000000L    # 10.0

    .line 24
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->gainDb:D

    const-wide/high16 p3, 0x7ff8000000000000L    # Double.NaN

    .line 26
    iput-wide p3, p0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->levelDbfs:D

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/media/MicrophoneGain;->linear(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->appliedLinear:D

    return-void
.end method

.method public synthetic constructor <init>(DDDILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-wide/high16 p1, 0x4034000000000000L    # 20.0

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const-wide/high16 p3, -0x3fc6000000000000L    # -26.0

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    const-wide/high16 p5, -0x3fb2000000000000L    # -60.0

    :cond_2
    move-object v0, p0

    move-wide v5, p5

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/media/MicrophoneGain;-><init>(DDD)V

    return-void
.end method

.method private final dbfs(D)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/high16 p1, -0x3fa8000000000000L    # -96.0

    return-wide p1

    :cond_0
    const/16 v0, 0x14

    int-to-double v0, v0

    const-wide/high16 v2, 0x40e0000000000000L    # 32768.0

    div-double/2addr p1, v2

    .line 68
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    return-wide v0
.end method

.method private final linear(D)D
    .locals 2

    const/16 v0, 0x14

    int-to-double v0, v0

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public static synthetic process$default(Lcom/shilapi/xcertplay/media/MicrophoneGain;[BIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 29
    array-length p2, p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/media/MicrophoneGain;->process([BI)V

    return-void
.end method

.method private final read([BI)I
    .locals 1

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 v0, p2, 0x1

    .line 59
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method private final write([BII)V
    .locals 1

    mul-int/lit8 p2, p2, 0x2

    int-to-byte v0, p3

    .line 62
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    shr-int/lit8 p3, p3, 0x8

    int-to-byte p3, p3

    .line 63
    aput-byte p3, p1, p2

    return-void
.end method


# virtual methods
.method public final getGainDb()D
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->gainDb:D

    return-wide v0
.end method

.method public final process([BI)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "pcm"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    div-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_8

    .line 31
    iget-wide v3, v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->maxGainDb:D

    const-wide/16 v5, 0x0

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x0

    move-wide v7, v5

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 35
    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/media/MicrophoneGain;->read([BI)I

    move-result v10

    int-to-double v11, v10

    .line 36
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v11

    add-double/2addr v7, v11

    .line 37
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-double v10, v2

    .line 39
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Lcom/shilapi/xcertplay/media/MicrophoneGain;->dbfs(D)D

    move-result-wide v7

    .line 40
    iget-wide v12, v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->speechFloorDbfs:D

    cmpl-double v4, v7, v12

    if-lez v4, :cond_4

    .line 41
    iget-wide v12, v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->levelDbfs:D

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v12, v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->levelDbfs:D

    const-wide v14, 0x3fc3333333333333L    # 0.15

    sub-double/2addr v7, v12

    mul-double v7, v7, v14

    add-double/2addr v7, v12

    :goto_1
    iput-wide v7, v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->levelDbfs:D

    .line 42
    iget-wide v12, v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->targetDbfs:D

    sub-double v14, v12, v7

    const-wide/16 v16, 0x0

    iget-wide v7, v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->maxGainDb:D

    move-wide/from16 v18, v7

    invoke-static/range {v14 .. v19}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v7

    .line 43
    iget-wide v12, v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->gainDb:D

    cmpl-double v4, v7, v12

    if-lez v4, :cond_3

    const-wide v14, 0x3fd999999999999aL    # 0.4

    add-double/2addr v12, v14

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    goto :goto_2

    :cond_3
    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v12, v14

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    :goto_2
    iput-wide v7, v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->gainDb:D

    :cond_4
    if-lez v9, :cond_5

    int-to-double v7, v9

    .line 46
    iget-wide v12, v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->gainDb:D

    invoke-direct {v0, v12, v13}, Lcom/shilapi/xcertplay/media/MicrophoneGain;->linear(D)D

    move-result-wide v12

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v7

    const-wide v14, 0x40dc83126e978d50L    # 29196.288

    cmpl-double v4, v12, v14

    if-lez v4, :cond_5

    const/16 v4, 0x14

    int-to-double v12, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v7

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->gainDb:D

    .line 47
    :cond_5
    iget-wide v4, v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->gainDb:D

    invoke-direct {v0, v4, v5}, Lcom/shilapi/xcertplay/media/MicrophoneGain;->linear(D)D

    move-result-wide v4

    .line 50
    iget-wide v6, v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->appliedLinear:D

    cmpg-double v8, v4, v6

    if-gez v8, :cond_6

    move-wide v6, v4

    :cond_6
    :goto_3
    if-ge v3, v2, :cond_7

    sub-double v8, v4, v6

    add-int/lit8 v12, v3, 0x1

    int-to-double v13, v12

    .line 52
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v13

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    add-double/2addr v8, v6

    .line 53
    invoke-direct {v0, v1, v3}, Lcom/shilapi/xcertplay/media/MicrophoneGain;->read([BI)I

    move-result v13

    int-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v8

    double-to-int v8, v13

    const/16 v9, -0x8000

    const/16 v13, 0x7fff

    invoke-static {v8, v9, v13}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v8

    invoke-direct {v0, v1, v3, v8}, Lcom/shilapi/xcertplay/media/MicrophoneGain;->write([BII)V

    move v3, v12

    goto :goto_3

    .line 55
    :cond_7
    iput-wide v4, v0, Lcom/shilapi/xcertplay/media/MicrophoneGain;->appliedLinear:D

    :cond_8
    :goto_4
    return-void
.end method
