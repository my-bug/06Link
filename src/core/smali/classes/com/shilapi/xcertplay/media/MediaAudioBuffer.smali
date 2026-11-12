.class public final Lcom/shilapi/xcertplay/media/MediaAudioBuffer;
.super Ljava/lang/Object;
.source "MediaAudioBuffer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaAudioBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaAudioBuffer.kt\ncom/shilapi/xcertplay/media/MediaAudioBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001cB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005J.\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005J\u001e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/MediaAudioBuffer;",
        "",
        "<init>",
        "()V",
        "DEFAULT_MILLIS",
        "",
        "MINIMUM_MILLIS",
        "presets",
        "",
        "getPresets",
        "()Ljava/util/List;",
        "HEADROOM_MILLIS",
        "MIN_TRACK_BUFFER_BYTES",
        "MIN_START_BUFFER_BYTES",
        "sanitize",
        "millis",
        "plan",
        "Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;",
        "isMedia",
        "",
        "sampleRate",
        "channels",
        "minBufferBytes",
        "mediaMillis",
        "startBytesFor",
        "plannedStartBytes",
        "actualCapacityBytes",
        "writeChunkBytes",
        "Plan",
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
.field public static final DEFAULT_MILLIS:I = 0x12c

.field private static final HEADROOM_MILLIS:I = 0xc8

.field public static final INSTANCE:Lcom/shilapi/xcertplay/media/MediaAudioBuffer;

.field public static final MINIMUM_MILLIS:I = 0x0

.field private static final MIN_START_BUFFER_BYTES:I = 0x1000

.field private static final MIN_TRACK_BUFFER_BYTES:I = 0x4000

.field private static final presets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaAudioBuffer;

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x96

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x12c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1f4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Integer;

    aput-object v1, v8, v0

    const/4 v0, 0x1

    aput-object v2, v8, v0

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v4, v8, v0

    const/4 v0, 0x4

    aput-object v5, v8, v0

    const/4 v0, 0x5

    aput-object v6, v8, v0

    const/4 v0, 0x6

    aput-object v7, v8, v0

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->presets:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPresets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->presets:Ljava/util/List;

    return-object v0
.end method

.method public final plan(ZIIII)Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;
    .locals 3

    .line 33
    new-instance v0, Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;

    mul-int/lit8 v1, p4, 0x4

    const/16 v2, 0x4000

    .line 34
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x1000

    .line 35
    invoke-static {p4, v2}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 33
    invoke-direct {v0, v1, p4}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;-><init>(II)V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    int-to-long p1, p2

    const/4 p4, 0x1

    const/4 v1, 0x2

    .line 38
    invoke-static {p3, p4, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p3

    int-to-long p3, p3

    mul-long p1, p1, p3

    int-to-long p3, v1

    mul-long p1, p1, p3

    .line 39
    invoke-virtual {p0, p5}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->sanitize(I)I

    move-result p3

    int-to-long p3, p3

    mul-long p3, p3, p1

    const/16 p5, 0x3e8

    int-to-long v1, p5

    .line 40
    div-long/2addr p3, v1

    long-to-int p4, p3

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;->getStartBytes()I

    move-result p3

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/16 p4, 0xc8

    int-to-long p4, p4

    mul-long p1, p1, p4

    .line 43
    div-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr p2, p3

    .line 44
    new-instance p1, Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;

    .line 45
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;->getTrackBufferBytes()I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 44
    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer$Plan;-><init>(II)V

    return-object p1
.end method

.method public final sanitize(I)I
    .locals 2

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->presets:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const/16 p1, 0x12c

    return p1
.end method

.method public final startBytesFor(III)I
    .locals 0

    if-gtz p2, :cond_0

    return p1

    :cond_0
    sub-int/2addr p2, p3

    .line 56
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    return p1
.end method
