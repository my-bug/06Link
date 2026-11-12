.class Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;
.super Ljava/lang/Object;


# instance fields
.field final max_FG_bits:[B

.field final max_fg_bits:[B

.field final max_sig_bits:[B


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_sig_bits:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x6t
        0x6t
        0x5t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
    .end array-data
.end method


# virtual methods
.method comp_decode([SII[BII)I
    .locals 9

    const/4 v0, 0x1

    shl-int p3, v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, p3, :cond_7

    if-lt v5, p6, :cond_0

    return v1

    :cond_0
    shl-int/lit8 v3, v3, 0x8

    add-int v6, p5, v5

    aget-byte v6, p4, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    ushr-int v6, v3, v4

    and-int/lit16 v7, v6, 0x80

    and-int/lit8 v6, v6, 0x7f

    :cond_1
    if-nez v4, :cond_3

    if-lt v5, p6, :cond_2

    return v1

    :cond_2
    shl-int/lit8 v3, v3, 0x8

    add-int v4, p5, v5

    aget-byte v4, p4, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    add-int/lit8 v5, v5, 0x1

    const/16 v4, 0x8

    :cond_3
    add-int/lit8 v4, v4, -0x1

    ushr-int v8, v3, v4

    and-int/2addr v8, v0

    if-eqz v8, :cond_6

    if-eqz v7, :cond_4

    if-nez v6, :cond_4

    return v1

    :cond_4
    add-int v8, p2, v2

    if-eqz v7, :cond_5

    neg-int v6, v6

    :cond_5
    int-to-short v6, v6

    aput-short v6, p1, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    add-int/lit16 v6, v6, 0x80

    const/16 v8, 0x7ff

    if-le v6, v8, :cond_1

    return v1

    :cond_7
    shl-int p1, v0, v4

    sub-int/2addr p1, v0

    and-int/2addr p1, v3

    if-eqz p1, :cond_8

    return v1

    :cond_8
    return v5
.end method

.method comp_encode([BII[SII)I
    .locals 9

    const/4 v0, 0x1

    shl-int p6, v0, p6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p6, :cond_2

    add-int v3, p5, v2

    aget-short v3, p4, v3

    const/16 v4, -0x7ff

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7ff

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0x8

    if-ge v2, p6, :cond_7

    shl-int/lit8 v4, v4, 0x1

    add-int v7, p5, v2

    aget-short v7, p4, v7

    if-gez v7, :cond_3

    neg-int v7, v7

    or-int/lit8 v4, v4, 0x1

    :cond_3
    shl-int/lit8 v4, v4, 0x7

    and-int/lit8 v8, v7, 0x7f

    or-int/2addr v4, v8

    ushr-int/lit8 v7, v7, 0x7

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v7, v0

    shl-int/2addr v4, v7

    or-int/2addr v4, v0

    add-int/2addr v3, v7

    :goto_3
    if-lt v3, v6, :cond_6

    add-int/lit8 v3, v3, -0x8

    if-eqz p1, :cond_5

    if-lt v5, p3, :cond_4

    return v1

    :cond_4
    add-int v7, p2, v5

    ushr-int v8, v4, v3

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    if-lez v3, :cond_a

    if-eqz p1, :cond_9

    if-lt v5, p3, :cond_8

    return v1

    :cond_8
    add-int/2addr p2, v5

    sub-int/2addr v6, v3

    shl-int p3, v4, v6

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    :cond_9
    add-int/2addr v5, v0

    :cond_a
    return v5
.end method

.method modq_decode([SII[BII)I
    .locals 7

    const/4 v0, 0x1

    shl-int p3, v0, p3

    mul-int/lit8 v1, p3, 0xe

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    if-le v1, p6, :cond_0

    return v2

    :cond_0
    const/4 p6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge p6, p3, :cond_3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, p5, 0x1

    aget-byte p5, p4, p5

    and-int/lit16 p5, p5, 0xff

    or-int/2addr v3, p5

    add-int/lit8 p5, v4, 0x8

    const/16 v6, 0xe

    if-lt p5, v6, :cond_2

    add-int/lit8 v4, v4, -0x6

    ushr-int p5, v3, v4

    and-int/lit16 p5, p5, 0x3fff

    const/16 v6, 0x3001

    if-lt p5, v6, :cond_1

    return v2

    :cond_1
    add-int v6, p2, p6

    int-to-short p5, p5

    aput-short p5, p1, v6

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_2
    move v4, p5

    :goto_1
    move p5, v5

    goto :goto_0

    :cond_3
    shl-int p1, v0, v4

    sub-int/2addr p1, v0

    and-int/2addr p1, v3

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method modq_encode([BII[SII)I
    .locals 7

    const/4 v0, 0x1

    shl-int p6, v0, p6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const v2, 0xffff

    if-ge v1, p6, :cond_1

    add-int v3, p5, v1

    aget-short v3, p4, v3

    and-int/2addr v2, v3

    const/16 v3, 0x3001

    if-lt v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, p6, 0xe

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    if-le v1, p3, :cond_3

    return v0

    :cond_3
    const/4 p3, 0x0

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v0, p6, :cond_5

    shl-int/lit8 v3, v3, 0xe

    add-int v5, p5, v0

    aget-short v5, p4, v5

    and-int/2addr v5, v2

    or-int/2addr v3, v5

    add-int/lit8 p3, p3, 0xe

    :goto_2
    if-lt p3, v4, :cond_4

    add-int/lit8 p3, p3, -0x8

    add-int/lit8 v5, p2, 0x1

    shr-int v6, v3, p3

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    move p2, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-lez p3, :cond_6

    sub-int/2addr v4, p3

    shl-int p3, v3, v4

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    :cond_6
    :goto_3
    return v1
.end method

.method trim_i16_decode([SIII[BII)I
    .locals 13

    move/from16 v0, p4

    const/4 v1, 0x1

    shl-int v2, v1, p3

    mul-int v3, v2, v0

    add-int/lit8 v3, v3, 0x7

    shr-int/lit8 v3, v3, 0x3

    const/4 v4, 0x0

    move/from16 v5, p7

    if-le v3, v5, :cond_0

    return v4

    :cond_0
    shl-int v5, v1, v0

    sub-int/2addr v5, v1

    add-int/lit8 v6, v0, -0x1

    shl-int v6, v1, v6

    move/from16 v7, p6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v8, v2, :cond_3

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v11, v7, 0x1

    aget-byte v7, p5, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v9, v7

    add-int/lit8 v10, v10, 0x8

    :goto_1
    if-lt v10, v0, :cond_2

    if-ge v8, v2, :cond_2

    sub-int/2addr v10, v0

    ushr-int v7, v9, v10

    and-int/2addr v7, v5

    and-int v12, v7, v6

    neg-int v12, v12

    or-int/2addr v7, v12

    neg-int v12, v6

    if-ne v7, v12, :cond_1

    return v4

    :cond_1
    and-int v12, v7, v6

    neg-int v12, v12

    or-int/2addr v7, v12

    add-int v12, p2, v8

    int-to-short v7, v7

    aput-short v7, p1, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v7, v11

    goto :goto_0

    :cond_3
    shl-int p1, v1, v10

    sub-int/2addr p1, v1

    and-int/2addr p1, v9

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return v3
.end method

.method trim_i16_encode([BII[SIII)I
    .locals 7

    const/4 v0, 0x1

    shl-int p6, v0, p6

    add-int/lit8 v1, p7, -0x1

    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    neg-int v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p6, :cond_2

    add-int v5, p5, v4

    aget-short v5, p4, v5

    if-lt v5, v2, :cond_1

    if-le v5, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v3

    :cond_2
    mul-int v1, p6, p7

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    if-le v1, p3, :cond_4

    return v3

    :cond_4
    shl-int p3, v0, p7

    sub-int/2addr p3, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    const/16 v4, 0x8

    if-ge v3, p6, :cond_6

    shl-int/2addr v2, p7

    add-int v5, p5, v3

    aget-short v5, p4, v5

    and-int/lit16 v5, v5, 0xfff

    and-int/2addr v5, p3

    or-int/2addr v2, v5

    add-int/2addr v0, p7

    :goto_3
    if-lt v0, v4, :cond_5

    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v5, p2, 0x1

    shr-int v6, v2, v0

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    move p2, v5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-lez v0, :cond_7

    sub-int/2addr v4, v0

    shl-int p3, v2, v4

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    :cond_7
    :goto_4
    return v1
.end method

.method trim_i8_decode([BIII[BII)I
    .locals 13

    move/from16 v0, p4

    const/4 v1, 0x1

    shl-int v2, v1, p3

    mul-int v3, v2, v0

    add-int/lit8 v3, v3, 0x7

    shr-int/lit8 v3, v3, 0x3

    const/4 v4, 0x0

    move/from16 v5, p7

    if-le v3, v5, :cond_0

    return v4

    :cond_0
    shl-int v5, v1, v0

    sub-int/2addr v5, v1

    add-int/lit8 v6, v0, -0x1

    shl-int v6, v1, v6

    move/from16 v7, p6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v8, v2, :cond_3

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v11, v7, 0x1

    aget-byte v7, p5, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v9, v7

    add-int/lit8 v10, v10, 0x8

    :goto_1
    if-lt v10, v0, :cond_2

    if-ge v8, v2, :cond_2

    sub-int/2addr v10, v0

    ushr-int v7, v9, v10

    and-int/2addr v7, v5

    and-int v12, v7, v6

    neg-int v12, v12

    or-int/2addr v7, v12

    neg-int v12, v6

    if-ne v7, v12, :cond_1

    return v4

    :cond_1
    add-int v12, p2, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v7, v11

    goto :goto_0

    :cond_3
    shl-int p1, v1, v10

    sub-int/2addr p1, v1

    and-int/2addr p1, v9

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return v3
.end method

.method trim_i8_encode([BII[BIII)I
    .locals 7

    const/4 v0, 0x1

    shl-int p6, v0, p6

    add-int/lit8 v1, p7, -0x1

    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    neg-int v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p6, :cond_2

    add-int v5, p5, v4

    aget-byte v5, p4, v5

    if-lt v5, v2, :cond_1

    if-le v5, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v3

    :cond_2
    mul-int v1, p6, p7

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    if-le v1, p3, :cond_4

    return v3

    :cond_4
    shl-int p3, v0, p7

    sub-int/2addr p3, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    const/16 v4, 0x8

    if-ge v3, p6, :cond_6

    shl-int/2addr v2, p7

    add-int v5, p5, v3

    aget-byte v5, p4, v5

    const v6, 0xffff

    and-int/2addr v5, v6

    and-int/2addr v5, p3

    or-int/2addr v2, v5

    add-int/2addr v0, p7

    :goto_3
    if-lt v0, v4, :cond_5

    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v5, p2, 0x1

    ushr-int v6, v2, v0

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    move p2, v5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-lez v0, :cond_7

    sub-int/2addr v4, v0

    shl-int p3, v2, v4

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    :cond_7
    :goto_4
    return v1
.end method
