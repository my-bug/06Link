.class public final Lcom/shilapi/xcertplay/media/MicrophoneLevel;
.super Ljava/lang/Object;
.source "MicrophoneLevel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/MicrophoneLevel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003J\u0006\u0010\u0012\u001a\u00020\u0007J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/MicrophoneLevel;",
        "",
        "windowFrames",
        "",
        "<init>",
        "(I)V",
        "sumSquares",
        "",
        "samples",
        "",
        "peak",
        "frames",
        "quietFrames",
        "add",
        "",
        "pcm",
        "",
        "length",
        "rmsDbfs",
        "dbfs",
        "amplitude",
        "format",
        "value",
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
.field public static final Companion:Lcom/shilapi/xcertplay/media/MicrophoneLevel$Companion;

.field public static final DEFAULT_WINDOW_FRAMES:I = 0xfa

.field private static final FULL_SCALE:D = 32768.0

.field private static final QUIET_DBFS:D = -70.0

.field private static final SILENCE_DBFS:D = -96.0


# instance fields
.field private frames:I

.field private peak:I

.field private quietFrames:I

.field private samples:J

.field private sumSquares:D

.field private final windowFrames:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/MicrophoneLevel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/MicrophoneLevel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->Companion:Lcom/shilapi/xcertplay/media/MicrophoneLevel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/shilapi/xcertplay/media/MicrophoneLevel;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->windowFrames:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xfa

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/MicrophoneLevel;-><init>(I)V

    return-void
.end method

.method public static synthetic add$default(Lcom/shilapi/xcertplay/media/MicrophoneLevel;[BIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 20
    array-length p2, p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->add([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final dbfs(D)D
    .locals 6

    const-wide/16 v0, 0x0

    const-wide/high16 v2, -0x3fa8000000000000L    # -96.0

    cmpg-double v4, p1, v0

    if-gtz v4, :cond_0

    return-wide v2

    :cond_0
    const/16 v0, 0x14

    int-to-double v0, v0

    const-wide/high16 v4, 0x40e0000000000000L    # 32768.0

    div-double/2addr p1, v4

    .line 49
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method private final format(D)Ljava/lang/String;
    .locals 3

    .line 51
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.1f"

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final add([BI)Ljava/lang/String;
    .locals 10

    const-string v0, "pcm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v6, v3, 0x1

    if-ge v6, p2, :cond_0

    .line 24
    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, p1, v3

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-short v6, v6

    int-to-double v7, v6

    .line 25
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v7

    add-double/2addr v4, v7

    .line 26
    iget v7, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->peak:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->peak:I

    .line 27
    iget-wide v6, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->samples:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->samples:J

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 30
    :cond_0
    iget-wide v6, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->sumSquares:D

    add-double/2addr v6, v4

    iput-wide v6, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->sumSquares:D

    const/4 p1, 0x2

    if-lt p2, p1, :cond_1

    .line 33
    div-int/2addr p2, p1

    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->dbfs(D)D

    move-result-wide p1

    const-wide v3, -0x3fae800000000000L    # -70.0

    cmpg-double v5, p1, v3

    if-gez v5, :cond_1

    iget p1, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->quietFrames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->quietFrames:I

    .line 34
    :cond_1
    iget p1, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->frames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->frames:I

    .line 35
    iget p2, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->windowFrames:I

    if-ge p1, p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->rmsDbfs()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->format(D)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->peak:I

    int-to-double v3, p2

    invoke-direct {p0, v3, v4}, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->dbfs(D)D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->format(D)Ljava/lang/String;

    move-result-object p2

    .line 37
    iget v3, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->quietFrames:I

    iget v4, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->frames:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rmsDbfs="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " peakDbfs="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " quietFrames="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " frames="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    iput-wide v1, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->sumSquares:D

    const-wide/16 v1, 0x0

    .line 39
    iput-wide v1, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->samples:J

    .line 40
    iput v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->peak:I

    .line 41
    iput v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->frames:I

    .line 42
    iput v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->quietFrames:I

    return-object p1
.end method

.method public final rmsDbfs()D
    .locals 5

    .line 46
    iget-wide v0, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->samples:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/high16 v0, -0x3fa8000000000000L    # -96.0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->sumSquares:D

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/media/MicrophoneLevel;->dbfs(D)D

    move-result-wide v0

    return-wide v0
.end method
