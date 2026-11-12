.class Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeFFTBetas([II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_0

    sub-int/2addr v2, v0

    shl-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static computeFFTRec([I[IIII[III)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v9, p6

    add-int/lit8 v5, v9, -0x2

    const/4 v11, 0x1

    shl-int v5, v11, v5

    add-int/lit8 v6, p7, -0x2

    shl-int v7, v11, v6

    new-array v8, v5, [I

    new-array v12, v5, [I

    new-array v5, v6, [I

    new-array v6, v6, [I

    new-array v13, v7, [I

    new-array v10, v7, [I

    new-array v14, v7, [I

    sub-int v7, p7, v9

    add-int/2addr v7, v11

    new-array v7, v7, [I

    const/4 v15, 0x0

    if-ne v4, v11, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, p5, v2

    aget v5, v1, v11

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v4

    aput v4, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aget v1, v1, v15

    aput v1, v0, v15

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_7

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v11, :cond_1

    add-int v4, v11, v2

    aget v5, v0, v2

    aget v6, v7, v1

    xor-int/2addr v5, v6

    aput v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    shl-int/lit8 v11, v11, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v3, v11

    aget v7, p5, v3

    if-eq v7, v11, :cond_3

    shl-int v7, v11, v4

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    :goto_3
    move-object/from16 v18, v6

    if-ge v11, v7, :cond_4

    aget v6, p5, v3

    invoke-static {v15, v6}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v15

    aget v6, v1, v11

    invoke-static {v15, v6}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v6

    aput v6, v1, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v18

    goto :goto_3

    :cond_3
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v18, v6

    :cond_4
    invoke-static {v8, v12, v1, v4, v9}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadix([I[I[III)V

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_5

    aget v6, p5, v1

    aget v7, p5, v3

    invoke-static {v7}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->inverse(I)I

    move-result v7

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v6

    aput v6, v5, v1

    invoke-static {v6, v6}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v6

    aget v7, v5, v1

    xor-int/2addr v6, v7

    aput v6, v18, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    invoke-static {v13, v5, v3}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeSubsetSum([I[II)V

    add-int/lit8 v1, v2, 0x1

    div-int/lit8 v5, v1, 0x2

    add-int/lit8 v7, v4, -0x1

    move v6, v3

    move-object v4, v8

    move-object v3, v10

    move-object/from16 v8, v18

    move/from16 v10, p7

    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTRec([I[IIII[III)V

    move-object v9, v3

    move v4, v6

    move v5, v7

    and-int/lit8 v1, v4, 0xf

    shl-int v10, v16, v1

    const/4 v1, 0x3

    if-gt v2, v1, :cond_6

    aget v1, v9, v17

    aput v1, v0, v17

    aget v1, v9, v17

    aget v2, v12, v17

    xor-int/2addr v1, v2

    aput v1, v0, v10

    const/4 v11, 0x1

    :goto_5
    if-ge v11, v10, :cond_7

    aget v1, v9, v11

    aget v2, v13, v11

    aget v3, v12, v17

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, v0, v11

    add-int v2, v10, v11

    aget v3, v12, v17

    xor-int/2addr v1, v3

    aput v1, v0, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    div-int/lit8 v3, v2, 0x2

    move/from16 v7, p6

    move-object v6, v8

    move-object v2, v12

    move-object v1, v14

    move/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTRec([I[IIII[III)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v10, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v3, v9, v2

    aput v3, v0, v2

    aget v3, v0, v10

    aget v2, v9, v2

    xor-int/2addr v2, v3

    aput v2, v0, v10

    const/4 v11, 0x1

    :goto_6
    if-ge v11, v10, :cond_7

    aget v2, v9, v11

    aget v3, v13, v11

    aget v4, v1, v11

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, v0, v11

    add-int v3, v10, v11

    aget v4, v0, v3

    xor-int/2addr v2, v4

    aput v2, v0, v3

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method static computeRadix([I[I[III)V
    .locals 16

    move/from16 v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v5, 0x5

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x4

    if-eq v0, v3, :cond_1

    if-eq v0, v8, :cond_0

    invoke-static/range {p0 .. p4}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadixBig([I[I[III)V

    return-void

    :cond_0
    const/16 v0, 0x8

    aget v0, p2, v0

    const/16 v9, 0xc

    aget v9, p2, v9

    xor-int/2addr v0, v9

    aput v0, p0, v8

    const/16 v0, 0xe

    aget v0, p2, v0

    xor-int v10, v9, v0

    aput v10, p0, v7

    const/16 v10, 0xf

    aget v10, p2, v10

    xor-int v11, v0, v10

    aput v11, p0, v6

    const/16 v11, 0xb

    aget v11, p2, v11

    const/16 v12, 0xd

    aget v12, p2, v12

    xor-int v13, v11, v12

    aput v13, p1, v5

    xor-int v14, v12, v0

    aput v14, p1, v7

    aput v10, p1, v6

    const/16 v14, 0xa

    aget v14, p2, v14

    xor-int/2addr v9, v14

    xor-int/2addr v9, v13

    aput v9, p0, v5

    const/16 v13, 0x9

    aget v13, p2, v13

    xor-int v15, v13, v12

    xor-int/2addr v9, v15

    aput v9, p1, v8

    aget v9, p2, v1

    aput v9, p0, v1

    aget v6, p2, v6

    xor-int/2addr v6, v11

    xor-int/2addr v6, v10

    aput v6, p1, v3

    aget v7, p2, v7

    xor-int/2addr v7, v14

    xor-int/2addr v0, v7

    xor-int/2addr v0, v6

    aput v0, p0, v3

    aget v6, p2, v8

    aget v7, p0, v8

    xor-int/2addr v6, v7

    xor-int/2addr v6, v0

    aget v7, p1, v3

    xor-int/2addr v6, v7

    aput v6, p0, v4

    aget v3, p2, v3

    aget v5, p2, v5

    xor-int/2addr v5, v3

    xor-int/2addr v5, v13

    xor-int/2addr v5, v12

    xor-int/2addr v5, v7

    aput v5, p1, v2

    xor-int/2addr v3, v5

    xor-int/2addr v0, v3

    aput v0, p1, v4

    aget v0, p2, v4

    aget v3, p0, v4

    xor-int/2addr v0, v3

    xor-int/2addr v0, v5

    aput v0, p0, v2

    aget v2, p2, v2

    xor-int/2addr v0, v2

    aput v0, p1, v1

    return-void

    :cond_1
    aget v0, p2, v1

    aput v0, p0, v1

    aget v0, p2, v8

    aget v7, p2, v7

    xor-int/2addr v0, v7

    aput v0, p0, v4

    aget v0, p2, v6

    xor-int v6, v7, v0

    aput v6, p0, v3

    aget v6, p2, v3

    aget v5, p2, v5

    xor-int/2addr v6, v5

    xor-int/2addr v6, v0

    aput v6, p1, v2

    xor-int/2addr v5, v7

    aput v5, p1, v4

    aput v0, p1, v3

    aget v0, p2, v4

    aget v3, p0, v4

    xor-int/2addr v0, v3

    xor-int/2addr v0, v6

    aput v0, p0, v2

    aget v2, p2, v2

    xor-int/2addr v0, v2

    aput v0, p1, v1

    return-void

    :cond_2
    aget v0, p2, v1

    aput v0, p0, v1

    aget v0, p2, v4

    aget v3, p2, v3

    xor-int/2addr v0, v3

    aput v0, p0, v2

    aget v4, p2, v2

    xor-int/2addr v0, v4

    aput v0, p1, v1

    aput v3, p1, v2

    return-void

    :cond_3
    aget v0, p2, v1

    aput v0, p0, v1

    aget v0, p2, v2

    aput v0, p1, v1

    return-void
.end method

.method static computeRadixBig([I[I[III)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    add-int/lit8 v4, p3, -0x2

    const/4 v5, 0x1

    shl-int v4, v5, v4

    add-int/lit8 v6, v3, -0x2

    shl-int v6, v5, v6

    mul-int/lit8 v7, v6, 0x2

    new-array v8, v7, [I

    new-array v7, v7, [I

    new-array v9, v6, [I

    new-array v10, v6, [I

    new-array v11, v6, [I

    new-array v6, v6, [I

    mul-int/lit8 v12, v4, 0x3

    mul-int/lit8 v13, v4, 0x2

    const/4 v14, 0x0

    invoke-static {v2, v12, v8, v14, v13}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    invoke-static {v2, v12, v8, v4, v13}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    mul-int/lit8 v12, v4, 0x4

    invoke-static {v2, v14, v7, v14, v12}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v4, :cond_0

    aget v15, v8, v12

    add-int v16, v13, v12

    aget v16, v2, v16

    xor-int v15, v15, v16

    aput v15, v8, v12

    add-int v16, v4, v12

    aget v17, v7, v16

    xor-int v15, v17, v15

    aput v15, v7, v16

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, -0x1

    invoke-static {v9, v10, v8, v2, v3}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadix([I[I[III)V

    invoke-static {v11, v6, v7, v2, v3}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadix([I[I[III)V

    invoke-static {v11, v14, v0, v14, v13}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    invoke-static {v9, v14, v0, v4, v13}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    invoke-static {v6, v14, v1, v14, v13}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    invoke-static {v10, v14, v1, v4, v13}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    return-void
.end method

.method static computeSubsetSum([I[II)V
    .locals 6

    const/4 v0, 0x0

    aput v0, p0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    add-int/2addr v3, v2

    aget v4, p1, v1

    aget v5, p0, v2

    xor-int/2addr v4, v5

    aput v4, p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static fastFourierTransform([I[III)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p3

    const/4 v9, 0x1

    shl-int v1, v9, v7

    new-array v2, v1, [I

    new-array v10, v1, [I

    const/4 v4, 0x7

    new-array v6, v4, [I

    const/16 v11, 0x80

    new-array v1, v11, [I

    new-array v12, v11, [I

    new-array v3, v4, [I

    new-array v13, v11, [I

    const/16 v8, 0x8

    invoke-static {v3, v8}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTBetas([II)V

    invoke-static {v13, v3, v4}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeSubsetSum([I[II)V

    move-object/from16 v5, p1

    invoke-static {v2, v10, v5, v7, v7}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadix([I[I[III)V

    const/4 v14, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v15, v3, v5

    invoke-static {v15, v15}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v15

    aget v16, v3, v5

    xor-int v15, v15, v16

    aput v15, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p2, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v5, v7, -0x1

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTRec([I[IIII[III)V

    move-object v15, v1

    div-int/lit8 v3, p2, 0x2

    move/from16 v7, p3

    move-object v2, v10

    move-object v1, v12

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTRec([I[IIII[III)V

    invoke-static {v1, v14, v0, v11, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v2, v15, v14

    aput v2, v0, v14

    aget v2, v0, v11

    aget v3, v15, v14

    xor-int/2addr v2, v3

    aput v2, v0, v11

    :goto_1
    if-ge v9, v11, :cond_1

    aget v2, v15, v9

    aget v3, v13, v9

    aget v4, v1, v9

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, v0, v9

    add-int v3, v11, v9

    aget v4, v0, v3

    xor-int/2addr v2, v4

    aput v2, v0, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static fastFourierTransformGetError([B[II[I)V
    .locals 6

    const/4 v0, 0x7

    new-array v1, v0, [I

    new-array v2, p2, [I

    const/16 v3, 0x8

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTBetas([II)V

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeSubsetSum([I[II)V

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    aget v3, p1, v0

    neg-int v3, v3

    shr-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->toUnsigned16Bits(I)I

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    aget v3, p1, p2

    neg-int v3, v3

    shr-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->toUnsigned16Bits(I)I

    move-result v3

    xor-int/2addr v3, v4

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p2, :cond_0

    aget v1, v2, v0

    aget v1, p3, v1

    rsub-int v1, v1, 0xff

    aget-byte v3, p0, v1

    aget v5, p1, v0

    neg-int v5, v5

    shr-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    xor-int/2addr v5, v4

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    aget v1, v2, v0

    xor-int/2addr v1, v4

    aget v1, p3, v1

    rsub-int v1, v1, 0xff

    aget-byte v3, p0, v1

    add-int v5, p2, v0

    aget v5, p1, v5

    neg-int v5, v5

    shr-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    xor-int/2addr v5, v4

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
