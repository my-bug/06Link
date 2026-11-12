.class public final Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;
.super Ljava/lang/Object;
.source "SoftwareOpusEncoder.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSoftwareOpusEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SoftwareOpusEncoder.kt\ncom/shilapi/xcertplay/media/SoftwareOpusEncoder\n+ 2 SoftwareOpusEncoder.kt\ncom/shilapi/xcertplay/media/SoftwareOpusEncoder$Companion\n*L\n1#1,154:1\n146#2,6:155\n146#2,6:161\n146#2,6:167\n*S KotlinDebug\n*F\n+ 1 SoftwareOpusEncoder.kt\ncom/shilapi/xcertplay/media/SoftwareOpusEncoder\n*L\n45#1:155,6\n59#1:161,6\n75#1:167,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0017\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000  2\u00020\u0001:\u0001 B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001b2\u0006\u0010\u001c\u001a\u00020\tH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0006\u0010\u001f\u001a\u00020\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;",
        "Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;",
        "encoder",
        "Lio/github/jaredmdobson/concentus/OpusEncoder;",
        "<init>",
        "(Lio/github/jaredmdobson/concentus/OpusEncoder;)V",
        "samples",
        "",
        "packet",
        "",
        "closed",
        "",
        "packets",
        "",
        "encodeNanosTotal",
        "",
        "encodeNanosMax",
        "steadyNanosTotal",
        "steadyNanosMax",
        "available",
        "getAvailable",
        "()Z",
        "label",
        "",
        "getLabel",
        "()Ljava/lang/String;",
        "encode",
        "",
        "pcm",
        "close",
        "",
        "stats",
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
.field private static final CHANNELS:I = 0x1

.field public static final COMPLEXITY:I = 0x5

.field public static final Companion:Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder$Companion;

.field private static final FIRST_PACKET_LOG_COUNT:I = 0x3

.field private static final MAX_FRAME_SAMPLES:I = 0xb40

.field private static final MAX_PACKET_BYTES:I = 0x4fb

.field private static final MODE:Lio/github/jaredmdobson/concentus/OpusMode;

.field public static final SAMPLE_RATE:I = 0xbb80

.field private static final STATS_EVERY_PACKETS:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "xcertplay-usb"

.field private static final VALID_FRAME_SAMPLES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WARMUP_PACKETS:I = 0xa


# instance fields
.field private volatile closed:Z

.field private encodeNanosMax:J

.field private encodeNanosTotal:J

.field private final encoder:Lio/github/jaredmdobson/concentus/OpusEncoder;

.field private final packet:[B

.field private packets:I

.field private final samples:[S

.field private steadyNanosMax:J

.field private steadyNanosTotal:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->Companion:Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder$Companion;

    .line 99
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    sput-object v0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->MODE:Lio/github/jaredmdobson/concentus/OpusMode;

    const/16 v0, 0x78

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x3c0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x780

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb40

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    invoke-static {v6}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->VALID_FRAME_SAMPLES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lio/github/jaredmdobson/concentus/OpusEncoder;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->encoder:Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/16 p1, 0xb40

    .line 18
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->samples:[S

    const/16 p1, 0x4fb

    .line 19
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->packet:[B

    return-void
.end method

.method public synthetic constructor <init>(Lio/github/jaredmdobson/concentus/OpusEncoder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;-><init>(Lio/github/jaredmdobson/concentus/OpusEncoder;)V

    return-void
.end method

.method public static final synthetic access$getMODE$cp()Lio/github/jaredmdobson/concentus/OpusMode;
    .locals 1

    .line 15
    sget-object v0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->MODE:Lio/github/jaredmdobson/concentus/OpusMode;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    const-string v0, "Opus microphone (software) stopped "

    .line 73
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->closed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->closed:Z

    .line 75
    :try_start_0
    const-string/jumbo v1, "xcertplay-usb"

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->stats()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public declared-synchronized encode([B)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "pcm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->closed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 34
    :cond_0
    :try_start_1
    array-length v0, p1

    div-int/lit8 v4, v0, 0x2

    .line 35
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    sget-object v0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->VALID_FRAME_SAMPLES:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v8, 0x8

    if-ge v0, v4, :cond_2

    mul-int/lit8 v1, v0, 0x2

    .line 37
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v1, 0x1

    .line 38
    aget-byte v1, p1, v1

    .line 39
    iget-object v3, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->samples:[S

    shl-int/2addr v1, v8

    or-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->encoder:Lio/github/jaredmdobson/concentus/OpusEncoder;

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->samples:[S

    iget-object v5, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->packet:[B

    array-length v7, v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lio/github/jaredmdobson/concentus/OpusEncoder;->encode([SII[BII)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v9

    if-gtz p1, :cond_3

    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 50
    :cond_3
    :try_start_4
    iget v2, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->packets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->packets:I

    .line 51
    iget-wide v3, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->encodeNanosTotal:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->encodeNanosTotal:J

    .line 52
    iget-wide v3, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->encodeNanosMax:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_4

    iput-wide v0, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->encodeNanosMax:J

    :cond_4
    const/16 v3, 0xa

    if-le v2, v3, :cond_5

    .line 54
    iget-wide v3, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->steadyNanosTotal:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->steadyNanosTotal:J

    .line 55
    iget-wide v3, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->steadyNanosMax:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_5

    iput-wide v0, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->steadyNanosMax:J

    :cond_5
    const/4 v0, 0x3

    if-le v2, v0, :cond_7

    .line 57
    rem-int/lit16 v2, v2, 0xfa

    if-nez v2, :cond_6

    goto :goto_1

    .line 69
    :cond_6
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->packet:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    .line 58
    :cond_7
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->packet:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 61
    :try_start_6
    const-string/jumbo v1, "xcertplay-usb"

    .line 62
    iget v2, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->packets:I

    .line 63
    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    const-string v4, "copyOf(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/shilapi/xcertplay/airplay/BytesKt;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->stats()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Opus microphone (software) packet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " head="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 67
    :catch_0
    :try_start_7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 45
    :try_start_8
    const-string/jumbo v0, "xcertplay-usb"

    const-string/jumbo v1, "software Opus encode failed"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 46
    :catch_2
    :try_start_9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object p1

    .line 35
    :cond_8
    :goto_2
    :try_start_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getAvailable()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 29
    const-string/jumbo v0, "software"

    return-object v0
.end method

.method public final declared-synchronized stats()Ljava/lang/String;
    .locals 10

    const-string v0, "packets="

    monitor-enter p0

    .line 81
    :try_start_0
    iget v1, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->packets:I

    add-int/lit8 v2, v1, -0xa

    const/16 v3, 0x3e8

    if-lez v2, :cond_0

    .line 83
    iget-wide v4, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->steadyNanosTotal:J

    int-to-long v6, v2

    div-long/2addr v4, v6

    int-to-long v6, v3

    div-long/2addr v4, v6

    goto :goto_0

    :cond_0
    const-wide/16 v4, -0x1

    .line 84
    :goto_0
    iget-wide v6, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->steadyNanosMax:J

    int-to-long v2, v3

    div-long/2addr v6, v2

    iget-wide v8, p0, Lcom/shilapi/xcertplay/media/SoftwareOpusEncoder;->encodeNanosMax:J

    div-long/2addr v8, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " steadyAvgUs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " steadyMaxUs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " firstFramesMaxUs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
