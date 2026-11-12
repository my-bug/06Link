.class Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
.super Ljava/lang/Object;


# static fields
.field static final l2bound:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->l2bound:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x18c7a
        0x32f4a
        0x68b41
        0xd9c87
        0x1c4518
        0x3aa246
        0x7974b6
        0xfb49c0
        0x2075426
        0x430299a
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method hash_to_point_ct(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[SII[SI)V
    .locals 19

    const/16 v0, 0xb

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    const/16 v1, 0x3f

    new-array v1, v1, [S

    const/4 v2, 0x1

    shl-int v3, v2, p4

    shl-int/lit8 v4, v3, 0x1

    aget-short v0, v0, p4

    add-int v5, v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x2

    if-ge v7, v5, :cond_2

    new-array v9, v8, [B

    move-object/from16 v10, p1

    invoke-virtual {v10, v9, v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_extract([BII)V

    aget-byte v8, v9, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    add-int/lit16 v9, v8, -0x6002

    ushr-int/lit8 v9, v9, 0x1f

    sub-int/2addr v9, v2

    and-int/lit16 v9, v9, 0x6002

    sub-int v9, v8, v9

    add-int/lit16 v11, v9, -0x6002

    ushr-int/lit8 v11, v11, 0x1f

    sub-int/2addr v11, v2

    and-int/lit16 v11, v11, 0x6002

    sub-int/2addr v9, v11

    add-int/lit16 v11, v9, -0x3001

    ushr-int/lit8 v11, v11, 0x1f

    sub-int/2addr v11, v2

    and-int/lit16 v11, v11, 0x3001

    sub-int/2addr v9, v11

    const v11, 0xf005

    sub-int/2addr v8, v11

    ushr-int/lit8 v8, v8, 0x1f

    sub-int/2addr v8, v2

    or-int/2addr v8, v9

    if-ge v7, v3, :cond_0

    add-int v9, p3, v7

    int-to-short v8, v8

    aput-short v8, p2, v9

    goto :goto_1

    :cond_0
    if-ge v7, v4, :cond_1

    add-int v9, p6, v7

    sub-int/2addr v9, v3

    int-to-short v8, v8

    aput-short v8, p5, v9

    goto :goto_1

    :cond_1
    sub-int v9, v7, v4

    int-to-short v8, v8

    aput-short v8, v1, v9

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    :goto_2
    if-gt v7, v0, :cond_d

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3
    if-ge v9, v5, :cond_c

    const/4 v11, 0x3

    if-ge v9, v3, :cond_3

    add-int v12, p3, v9

    aget-short v13, p2, v12

    const/4 v14, 0x1

    goto :goto_4

    :cond_3
    if-ge v9, v4, :cond_4

    add-int v12, p6, v9

    sub-int/2addr v12, v3

    aget-short v13, p5, v12

    const/4 v14, 0x2

    goto :goto_4

    :cond_4
    sub-int v12, v9, v4

    aget-short v13, v1, v12

    const/4 v14, 0x3

    :goto_4
    sub-int v15, v9, v10

    ushr-int/lit8 v16, v13, 0xf

    add-int/lit8 v16, v16, -0x1

    sub-int v10, v10, v16

    if-ge v9, v7, :cond_5

    goto :goto_8

    :cond_5
    sub-int v6, v9, v7

    if-ge v6, v3, :cond_6

    add-int v6, p3, v9

    sub-int/2addr v6, v7

    aget-short v11, p2, v6

    const/16 v18, 0x1

    goto :goto_5

    :cond_6
    if-ge v6, v4, :cond_7

    add-int v6, p6, v6

    sub-int/2addr v6, v3

    aget-short v11, p5, v6

    const/16 v18, 0x2

    goto :goto_5

    :cond_7
    sub-int/2addr v6, v4

    aget-short v17, v1, v6

    move/from16 v11, v17

    const/16 v18, 0x3

    :goto_5
    and-int/2addr v15, v7

    add-int/lit16 v15, v15, 0x1ff

    shr-int/lit8 v15, v15, 0x9

    neg-int v15, v15

    and-int v15, v16, v15

    if-ne v14, v2, :cond_8

    xor-int v14, v13, v11

    and-int/2addr v14, v15

    xor-int/2addr v14, v13

    int-to-short v14, v14

    aput-short v14, p2, v12

    :goto_6
    move/from16 v12, v18

    goto :goto_7

    :cond_8
    if-ne v14, v8, :cond_9

    xor-int v14, v13, v11

    and-int/2addr v14, v15

    xor-int/2addr v14, v13

    int-to-short v14, v14

    aput-short v14, p5, v12

    goto :goto_6

    :cond_9
    xor-int v14, v13, v11

    and-int/2addr v14, v15

    xor-int/2addr v14, v13

    int-to-short v14, v14

    aput-short v14, v1, v12

    goto :goto_6

    :goto_7
    if-ne v12, v2, :cond_a

    xor-int v12, v13, v11

    and-int/2addr v12, v15

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p2, v6

    goto :goto_8

    :cond_a
    if-ne v12, v8, :cond_b

    xor-int v12, v13, v11

    and-int/2addr v12, v15

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p5, v6

    goto :goto_8

    :cond_b
    xor-int v12, v13, v11

    and-int/2addr v12, v15

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, v1, v6

    :goto_8
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_c
    shl-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_d
    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x41s
        0x43s
        0x47s
        0x4ds
        0x56s
        0x64s
        0x7as
        0x9as
        0xcds
        0x11fs
    .end array-data
.end method

.method hash_to_point_vartime(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[SII)V
    .locals 4

    const/4 v0, 0x1

    shl-int p4, v0, p4

    :cond_0
    :goto_0
    if-lez p4, :cond_2

    const/4 v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_extract([BII)V

    aget-byte v1, v2, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    const v2, 0xf005

    if-ge v1, v2, :cond_0

    :goto_1
    const/16 v2, 0x3001

    if-lt v1, v2, :cond_1

    add-int/lit16 v1, v1, -0x3001

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p3, 0x1

    int-to-short v1, v1

    aput-short v1, p2, p3

    add-int/lit8 p4, p4, -0x1

    move p3, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method is_short([SI[SII)I
    .locals 7

    const/4 v0, 0x1

    shl-int v1, v0, p5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    add-int v6, p2, v3

    aget-short v6, p1, v6

    mul-int v6, v6, v6

    add-int/2addr v4, v6

    or-int/2addr v5, v4

    add-int v6, p4, v3

    aget-short v6, p3, v6

    mul-int v6, v6, v6

    add-int/2addr v4, v6

    or-int/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, v5, 0x1f

    neg-int p1, p1

    or-int/2addr p1, v4

    int-to-long p1, p1

    const-wide p3, 0xffffffffL

    and-long/2addr p1, p3

    sget-object p3, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->l2bound:[I

    aget p3, p3, p5

    int-to-long p3, p3

    cmp-long p5, p1, p3

    if-gtz p5, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method is_short_half(I[SII)I
    .locals 6

    const/4 v0, 0x1

    shl-int v1, v0, p4

    ushr-int/lit8 v2, p1, 0x1f

    neg-int v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    add-int v5, p3, v4

    aget-short v5, p2, v5

    mul-int v5, v5, v5

    add-int/2addr p1, v5

    or-int/2addr v2, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 p2, v2, 0x1f

    neg-int p2, p2

    or-int/2addr p1, p2

    int-to-long p1, p1

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    sget-object p3, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->l2bound:[I

    aget p3, p3, p4

    int-to-long p3, p3

    cmp-long v1, p1, p3

    if-gtz v1, :cond_1

    return v0

    :cond_1
    return v3
.end method
