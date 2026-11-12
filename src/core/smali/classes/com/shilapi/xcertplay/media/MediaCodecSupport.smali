.class public final Lcom/shilapi/xcertplay/media/MediaCodecSupport;
.super Ljava/lang/Object;
.source "MediaCodecSupport.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCodecSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCodecSupport.kt\ncom/shilapi/xcertplay/media/MediaCodecSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,194:1\n1#2:195\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00072\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005J\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010J\u001e\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014J\u0014\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0007H\u0002J&\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001b2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u0014H\u0002J\u0018\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0014H\u0002J\u0018\u0010 \u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0014H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0014X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0014X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/MediaCodecSupport;",
        "",
        "<init>",
        "()V",
        "START_CODE",
        "",
        "avcParameterSets",
        "Lkotlin/Pair;",
        "codecData",
        "hevcCodecSpecificData",
        "toAnnexB",
        "lengthPrefixed",
        "isRandomAccess",
        "",
        "annexB",
        "codec",
        "Lcom/shilapi/xcertplay/airplay/VideoCodec;",
        "adtsFrame",
        "accessUnit",
        "sampleRate",
        "",
        "channels",
        "aacAccessUnit",
        "rtpPayload",
        "aacFrequencyIndex",
        "emptySet",
        "readParameterSets",
        "",
        "source",
        "offset",
        "count",
        "readU16Be",
        "readU32Be",
        "HEVC_FIXED_RECORD_SIZE",
        "HEVC_ARRAY_COUNT_OFFSET",
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
.field private static final HEVC_ARRAY_COUNT_OFFSET:I = 0x16

.field private static final HEVC_FIXED_RECORD_SIZE:I = 0x17

.field public static final INSTANCE:Lcom/shilapi/xcertplay/media/MediaCodecSupport;

.field private static final START_CODE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/media/MediaCodecSupport;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaCodecSupport;

    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->START_CODE:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final emptySet()Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "[B[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    new-array v1, v0, [B

    new-array v0, v0, [B

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final readParameterSets([BII)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int/lit8 v2, p2, 0x2

    .line 171
    array-length v3, p1

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->readU16Be([BI)I

    move-result p2

    add-int/2addr p2, v2

    .line 175
    array-length v3, p1

    if-gt p2, v3, :cond_0

    .line 176
    invoke-static {p1, v2, p2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final readU16Be([BI)I
    .locals 1

    .line 183
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private final readU32Be([BI)I
    .locals 2

    .line 186
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    .line 187
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    .line 188
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    .line 189
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final aacAccessUnit([B)[B
    .locals 4

    const-string v0, "rtpPayload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    new-array p1, v2, [B

    return-object p1

    .line 137
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->readU16Be([BI)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 138
    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    div-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    add-int/2addr v0, v1

    .line 140
    array-length v3, p1

    if-le v0, v3, :cond_2

    new-array p1, v2, [B

    return-object p1

    .line 141
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->readU16Be([BI)I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    and-int/lit16 v1, v1, 0x1fff

    add-int/2addr v1, v0

    .line 143
    array-length v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gt v1, v0, :cond_3

    .line 144
    new-array p1, v2, [B

    return-object p1

    :cond_3
    invoke-static {p1, v0, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 138
    :cond_4
    :goto_0
    new-array p1, v2, [B

    return-object p1
.end method

.method public final aacFrequencyIndex(I)I
    .locals 1

    const/4 v0, 0x3

    sparse-switch p1, :sswitch_data_0

    return v0

    :sswitch_0
    const/4 p1, 0x0

    return p1

    :sswitch_1
    const/4 p1, 0x1

    return p1

    :sswitch_2
    const/4 p1, 0x2

    return p1

    :sswitch_3
    return v0

    :sswitch_4
    const/4 p1, 0x4

    return p1

    :sswitch_5
    const/4 p1, 0x5

    return p1

    :sswitch_6
    const/4 p1, 0x6

    return p1

    :sswitch_7
    const/4 p1, 0x7

    return p1

    :sswitch_8
    const/16 p1, 0x8

    return p1

    :sswitch_9
    const/16 p1, 0x9

    return p1

    :sswitch_a
    const/16 p1, 0xa

    return p1

    :sswitch_b
    const/16 p1, 0xb

    return p1

    :sswitch_c
    const/16 p1, 0xc

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1cb6 -> :sswitch_c
        0x1f40 -> :sswitch_b
        0x2b11 -> :sswitch_a
        0x2ee0 -> :sswitch_9
        0x3e80 -> :sswitch_8
        0x5622 -> :sswitch_7
        0x5dc0 -> :sswitch_6
        0x7d00 -> :sswitch_5
        0xac44 -> :sswitch_4
        0xbb80 -> :sswitch_3
        0xfa00 -> :sswitch_2
        0x15888 -> :sswitch_1
        0x17700 -> :sswitch_0
    .end sparse-switch
.end method

.method public final adtsFrame([BII)[B
    .locals 10

    const-string v0, "accessUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->aacFrequencyIndex(I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x7

    .line 121
    invoke-static {p3, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p3

    .line 122
    array-length v2, p1

    add-int/2addr v2, v1

    const/4 v3, 0x2

    shl-int/2addr p2, v3

    or-int/lit8 p2, p2, 0x40

    ushr-int/lit8 v4, p3, 0x2

    or-int/2addr p2, v4

    int-to-byte p2, p2

    const/4 v4, 0x3

    and-int/2addr p3, v4

    const/4 v5, 0x6

    shl-int/2addr p3, v5

    ushr-int/lit8 v6, v2, 0xb

    or-int/2addr p3, v6

    int-to-byte p3, p3

    ushr-int/lit8 v6, v2, 0x3

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    and-int/2addr v2, v1

    const/4 v7, 0x5

    shl-int/2addr v2, v7

    or-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    .line 130
    new-array v1, v1, [B

    const/4 v8, -0x1

    const/4 v9, 0x0

    aput-byte v8, v1, v9

    const/16 v8, -0xf

    aput-byte v8, v1, v0

    aput-byte p2, v1, v3

    aput-byte p3, v1, v4

    const/4 p2, 0x4

    aput-byte v6, v1, p2

    aput-byte v2, v1, v7

    const/4 p2, -0x4

    aput-byte p2, v1, v5

    .line 131
    invoke-static {v1, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final avcParameterSets([B)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lkotlin/Pair<",
            "[B[B>;"
        }
    .end annotation

    const-string v0, "codecData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    array-length v0, p1

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->emptySet()Lkotlin/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x5

    .line 18
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x6

    invoke-direct {p0, p1, v2, v0}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->readParameterSets([BII)Ljava/util/List;

    move-result-object v0

    .line 19
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    goto :goto_0

    :cond_1
    add-int/2addr v2, v5

    .line 20
    array-length v3, p1

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->emptySet()Lkotlin/Pair;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/2addr v5, v1

    .line 21
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, p1, v5, v1}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->readParameterSets([BII)Ljava/util/List;

    move-result-object p1

    .line 22
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_3

    new-array v0, v4, [B

    :cond_3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-nez p1, :cond_4

    new-array p1, v4, [B

    :cond_4
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final hevcCodecSpecificData([B)[B
    .locals 10

    const-string v0, "codecData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_7

    aget-byte v0, p1, v1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x16

    .line 37
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 38
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_6

    .line 40
    array-length v5, p1

    if-lt v2, v5, :cond_1

    new-array p1, v1, [B

    return-object p1

    :cond_1
    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v2, v2, 0x3

    .line 42
    array-length v6, p1

    if-le v2, v6, :cond_2

    new-array p1, v1, [B

    return-object p1

    .line 43
    :cond_2
    sget-object v6, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaCodecSupport;

    invoke-direct {v6, p1, v5}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->readU16Be([BI)I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    add-int/lit8 v7, v2, 0x2

    .line 46
    array-length v8, p1

    if-le v7, v8, :cond_3

    new-array p1, v1, [B

    return-object p1

    .line 47
    :cond_3
    sget-object v8, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaCodecSupport;

    invoke-direct {v8, p1, v2}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->readU16Be([BI)I

    move-result v2

    add-int v8, v7, v2

    .line 49
    array-length v9, p1

    if-le v8, v9, :cond_4

    new-array p1, v1, [B

    return-object p1

    .line 50
    :cond_4
    sget-object v9, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->START_CODE:[B

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 51
    invoke-virtual {v3, p1, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v6, v6, 0x1

    move v2, v8

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    :cond_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string/jumbo v0, "toByteArray(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 33
    :cond_7
    :goto_2
    new-array p1, v1, [B

    return-object p1
.end method

.method public final isRandomAccess([BLcom/shilapi/xcertplay/airplay/VideoCodec;)Z
    .locals 6

    const-string v0, "annexB"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x3

    .line 100
    array-length v3, p1

    if-ge v2, v3, :cond_6

    .line 102
    aget-byte v3, p1, v1

    const/4 v4, 0x1

    if-nez v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, 0x2

    .line 103
    aget-byte v3, p1, v3

    if-ne v3, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    .line 104
    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_2

    const/4 v2, 0x4

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-lez v2, :cond_5

    add-int/2addr v2, v1

    .line 107
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 108
    aget-byte v1, p1, v2

    and-int/lit16 v3, v1, 0xff

    .line 109
    sget-object v5, Lcom/shilapi/xcertplay/airplay/VideoCodec;->H264:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    if-ne p2, v5, :cond_3

    and-int/lit8 v1, v1, 0x1f

    const/4 v5, 0x5

    if-ne v1, v5, :cond_3

    return v4

    .line 110
    :cond_3
    sget-object v1, Lcom/shilapi/xcertplay/airplay/VideoCodec;->H265:Lcom/shilapi/xcertplay/airplay/VideoCodec;

    if-ne p2, v1, :cond_4

    add-int/lit8 v1, v2, 0x1

    array-length v5, p1

    if-ge v1, v5, :cond_4

    shr-int/lit8 v1, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    const/16 v3, 0x10

    if-gt v3, v1, :cond_4

    const/16 v3, 0x16

    if-ge v1, v3, :cond_4

    return v4

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public final toAnnexB([B)[B
    .locals 11

    const-string v0, "lengthPrefixed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 61
    aget-byte v0, p1, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 62
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 63
    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    .line 64
    aget-byte v1, p1, v1

    if-ne v1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v3, v0, 0x4

    .line 71
    array-length v4, p1

    if-gt v3, v4, :cond_4

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->readU32Be([BI)I

    move-result v0

    if-lez v0, :cond_3

    .line 74
    array-length v4, p1

    sub-int/2addr v4, v3

    if-le v0, v4, :cond_1

    goto :goto_1

    :cond_1
    const v4, 0x7fffffff

    sub-int/2addr v4, v1

    .line 75
    sget-object v5, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->START_CODE:[B

    array-length v6, v5

    sub-int/2addr v4, v6

    if-le v0, v4, :cond_2

    new-array p1, v2, [B

    return-object p1

    .line 76
    :cond_2
    array-length v4, v5

    add-int/2addr v4, v0

    add-int/2addr v1, v4

    add-int/2addr v0, v3

    goto :goto_0

    .line 74
    :cond_3
    :goto_1
    new-array p1, v2, [B

    return-object p1

    :cond_4
    if-eqz v1, :cond_8

    .line 79
    array-length v3, p1

    if-eq v0, v3, :cond_5

    goto :goto_4

    .line 81
    :cond_5
    new-array v5, v1, [B

    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v0, v2, 0x4

    .line 84
    array-length v1, p1

    if-gt v0, v1, :cond_7

    .line 85
    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->readU32Be([BI)I

    move-result v1

    if-lez v1, :cond_7

    add-int v2, v0, v1

    .line 87
    array-length v3, p1

    if-le v2, v3, :cond_6

    goto :goto_3

    .line 88
    :cond_6
    sget-object v4, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->START_CODE:[B

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 89
    array-length v3, v4

    add-int/2addr v6, v3

    .line 90
    invoke-static {p1, v5, v6, v0, v2}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    add-int/2addr v6, v1

    goto :goto_2

    :cond_7
    :goto_3
    return-object v5

    .line 79
    :cond_8
    :goto_4
    new-array p1, v2, [B

    return-object p1
.end method
