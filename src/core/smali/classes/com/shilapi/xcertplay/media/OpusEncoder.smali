.class public final Lcom/shilapi/xcertplay/media/OpusEncoder;
.super Ljava/lang/Object;
.source "OpusEncoder.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/OpusEncoder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/OpusEncoder;",
        "Lcom/shilapi/xcertplay/media/MicrophoneOpusEncoder;",
        "bitrate",
        "",
        "<init>",
        "(I)V",
        "codec",
        "Landroid/media/MediaCodec;",
        "bufferInfo",
        "Landroid/media/MediaCodec$BufferInfo;",
        "presentationTimeUs",
        "",
        "closed",
        "",
        "outputPackets",
        "available",
        "getAvailable",
        "()Z",
        "label",
        "",
        "getLabel",
        "()Ljava/lang/String;",
        "encode",
        "",
        "",
        "pcm",
        "drain",
        "close",
        "",
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
.field public static final CHANNELS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/shilapi/xcertplay/media/OpusEncoder$Companion;

.field public static final FIRST_PACKET_LOG_COUNT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INPUT_DURATION_US:J = 0x4e20L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INPUT_TIMEOUT_US:J = 0x2710L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_INPUT_BYTES:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SAMPLE_RATE:I = 0xbb80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "xcertplay-usb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private closed:Z

.field private final codec:Landroid/media/MediaCodec;

.field private outputPackets:I

.field private presentationTimeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/OpusEncoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/OpusEncoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/OpusEncoder;->Companion:Lcom/shilapi/xcertplay/media/OpusEncoder$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    .line 43
    const-string/jumbo v0, "xcertplay-usb"

    const-string v1, "audio/opus"

    .line 0
    const-string v2, "Opus microphone encoder started bitrate="

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    const v4, 0xbb80

    const/4 v5, 0x1

    .line 45
    :try_start_0
    invoke-static {v1, v4, v5}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    .line 50
    const-string v6, "bitrate"

    invoke-static {v4, v6, p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 51
    const-string v6, "max-input-size"

    const/16 v7, 0x1000

    invoke-static {v4, v6, v7}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 49
    const-string v6, "apply(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {v1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    .line 54
    invoke-static {v1, v4, v3, v3, v5}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 60
    invoke-static {v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/media/MediaCodec;)V

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    const-string v1, "Opus microphone encoder unavailable"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :goto_0
    iput-object v3, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->codec:Landroid/media/MediaCodec;

    .line 67
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method private final drain()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 108
    const-string/jumbo v0, "xcertplay-usb"

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->codec:Landroid/media/MediaCodec;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->closed:Z

    if-nez v3, :cond_5

    .line 112
    :try_start_0
    iget-object v3, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 118
    check-cast v2, Ljava/util/List;

    return-object v2

    :cond_2
    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    if-ltz v3, :cond_1

    .line 121
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v4}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 122
    invoke-static {v1, v3, v5}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;IZ)V

    goto :goto_0

    .line 125
    :cond_3
    sget-object v4, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/MediaCodecCompat;

    invoke-virtual {v4, v1, v3}, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->outputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 126
    iget-object v6, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v6}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v6

    if-lez v6, :cond_4

    .line 127
    iget-object v6, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v6}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v6

    new-array v7, v6, [B

    .line 128
    iget-object v8, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v8}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    iget-object v8, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v8}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v8

    iget-object v9, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v9}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 130
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget v4, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->outputPackets:I

    const/4 v8, 0x1

    add-int/2addr v4, v8

    iput v4, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->outputPackets:I

    const/4 v9, 0x3

    if-gt v4, v9, :cond_4

    const/16 v9, 0x10

    .line 137
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    const-string v9, "copyOf(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v7, v9, v8, v9}, Lkotlin/text/HexExtensionsKt;->toHexString$default([BLkotlin/text/HexFormat;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Opus microphone packet="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " head="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_4
    invoke-static {v1, v3, v5}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;IZ)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 114
    const-string v3, "Opus microphone output dequeue failed"

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    check-cast v2, Ljava/util/List;

    return-object v2

    .line 145
    :cond_5
    check-cast v2, Ljava/util/List;

    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->closed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->closed:Z

    .line 151
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :catch_0
    :try_start_1
    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaCodec;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method public encode([B)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const-string v0, "pcm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->codec:Landroid/media/MediaCodec;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 80
    :cond_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->closed:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v2, 0x2710

    .line 82
    :try_start_0
    invoke-static {v1, v2, v3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;J)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v2, :cond_4

    .line 88
    sget-object v0, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/MediaCodecCompat;

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/compat/MediaCodecCompat;->inputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 89
    array-length v3, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v3, v4, :cond_2

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 93
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 97
    array-length v4, p1

    .line 98
    iget-wide v5, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->presentationTimeUs:J

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 94
    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;IIIJI)V

    .line 101
    iget-wide v0, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->presentationTimeUs:J

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->presentationTimeUs:J

    goto :goto_1

    .line 90
    :cond_3
    :goto_0
    iget-wide v5, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->presentationTimeUs:J

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;IIIJI)V

    .line 104
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/OpusEncoder;->drain()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 84
    const-string v0, "Opus microphone input dequeue failed"

    check-cast p1, Ljava/lang/Throwable;

    const-string/jumbo v1, "xcertplay-usb"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAvailable()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/OpusEncoder;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "MediaCodec"

    return-object v0
.end method
