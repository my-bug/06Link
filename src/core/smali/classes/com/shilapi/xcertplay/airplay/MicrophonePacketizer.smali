.class public final Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;
.super Ljava/lang/Object;
.source "MicrophonePacketizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\tJ.\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0005J\u000e\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u000eJ \u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005H\u0002J \u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005H\u0002J \u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\tH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;",
        "",
        "<init>",
        "()V",
        "RTP_HEADER_LEN",
        "",
        "TAG_LEN",
        "NONCE_LEN",
        "OPUS_16K",
        "",
        "OPUS_24K",
        "opusBandwidthRate",
        "formatBits",
        "sealPacket",
        "",
        "key",
        "payloadType",
        "counters",
        "Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;",
        "body",
        "samples",
        "toWirePcm",
        "pcmLittleEndian",
        "putU16Be",
        "",
        "target",
        "offset",
        "value",
        "putU32Be",
        "putU64Le",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;

.field public static final NONCE_LEN:I = 0x8

.field private static final OPUS_16K:J = 0x10000000L

.field private static final OPUS_24K:J = 0x20000000L

.field public static final RTP_HEADER_LEN:I = 0xc

.field public static final TAG_LEN:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;->INSTANCE:Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final putU16Be([BII)V
    .locals 1

    ushr-int/lit8 v0, p3, 0x8

    int-to-byte v0, v0

    .line 114
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    int-to-byte p3, p3

    .line 115
    aput-byte p3, p1, p2

    return-void
.end method

.method private final putU32Be([BII)V
    .locals 2

    ushr-int/lit8 v0, p3, 0x18

    int-to-byte v0, v0

    .line 119
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    .line 120
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    .line 121
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p3, p3

    .line 122
    aput-byte p3, p1, p2

    return-void
.end method

.method private final putU64Le([BIJ)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    long-to-int v3, p3

    int-to-byte v3, v3

    .line 128
    aput-byte v3, p1, v2

    ushr-long/2addr p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final opusBandwidthRate(J)I
    .locals 5

    const-wide/32 v0, 0x10000000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/16 p1, 0x3e80

    return p1

    :cond_0
    const-wide/32 v0, 0x20000000

    and-long/2addr p1, v0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/16 p1, 0x5dc0

    return p1

    :cond_1
    const p1, 0xbb80

    return p1
.end method

.method public final sealPacket([BILcom/shilapi/xcertplay/airplay/MicrophoneCounters;[BI)[B
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "key"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "counters"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "body"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0xc

    .line 74
    new-array v5, v4, [B

    const/4 v6, 0x0

    const/16 v7, -0x80

    .line 75
    aput-byte v7, v5, v6

    and-int/lit8 v6, p2, 0x7f

    int-to-byte v6, v6

    const/4 v12, 0x1

    .line 76
    aput-byte v6, v5, v12

    const/4 v6, 0x2

    .line 77
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->getSequence()I

    move-result v7

    invoke-direct {v0, v5, v6, v7}, Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;->putU16Be([BII)V

    .line 78
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->getTimestamp()I

    move-result v6

    const/4 v7, 0x4

    invoke-direct {v0, v5, v7, v6}, Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;->putU32Be([BII)V

    .line 80
    new-array v6, v4, [B

    .line 81
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->getNonce()J

    move-result-wide v8

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;->putU64Le([BIJ)V

    .line 82
    sget-object v8, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;

    .line 86
    invoke-static {v5, v7, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v7

    .line 82
    invoke-virtual {v8, v1, v6, v3, v7}, Lcom/shilapi/xcertplay/airplay/AirPlayCrypto;->chachaSeal([B[B[B[B)[B

    move-result-object v13

    .line 89
    array-length v1, v13

    add-int/lit8 v1, v1, 0x14

    new-array v14, v1, [B

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v14

    .line 90
    invoke-static/range {v5 .. v11}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    const/16 v18, 0xc

    const/16 v19, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 91
    invoke-static/range {v13 .. v19}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 92
    array-length v1, v13

    add-int/2addr v1, v4

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->getNonce()J

    move-result-wide v3

    invoke-direct {v0, v14, v1, v3, v4}, Lcom/shilapi/xcertplay/airplay/MicrophonePacketizer;->putU64Le([BIJ)V

    .line 94
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->getSequence()I

    move-result v1

    add-int/2addr v1, v12

    const v3, 0xffff

    and-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->setSequence(I)V

    .line 95
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->getTimestamp()I

    move-result v1

    add-int v1, v1, p5

    invoke-virtual {v2, v1}, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->setTimestamp(I)V

    .line 96
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->getNonce()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/shilapi/xcertplay/airplay/MicrophoneCounters;->setNonce(J)V

    return-object v14
.end method

.method public final toWirePcm([B)[B
    .locals 4

    const-string v0, "pcmLittleEndian"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 104
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 105
    aget-byte v2, p1, v0

    .line 106
    aget-byte v3, p1, v1

    aput-byte v3, p1, v0

    .line 107
    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-object p1
.end method
