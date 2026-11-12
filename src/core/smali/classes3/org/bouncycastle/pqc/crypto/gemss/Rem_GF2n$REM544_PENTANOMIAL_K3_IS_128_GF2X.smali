.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM544_PENTANOMIAL_K3_IS_128_GF2X"
.end annotation


# instance fields
.field private final k1:I

.field private final k164:I

.field private final k2:I

.field private final k264:I


# direct methods
.method public constructor <init>(IIIIIIJ)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    iput-wide p7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->mask:J

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 20

    move-object/from16 v0, p0

    const/16 v1, 0xa

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0xb

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xc

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0xd

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    add-int/lit8 v9, p2, 0x4

    const/4 v10, 0x4

    aget-wide v10, p3, v10

    xor-long/2addr v10, v6

    xor-long/2addr v10, v2

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v12, v4, v12

    xor-long/2addr v10, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v12, v6, v12

    xor-long/2addr v10, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v12, v4, v12

    xor-long/2addr v10, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v12, v6, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v9

    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0xe

    aget-wide v11, p3, v10

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v11, v13

    xor-long/2addr v8, v11

    add-int/lit8 v11, p2, 0x5

    const/4 v12, 0x5

    aget-wide v12, p3, v12

    xor-long/2addr v12, v8

    xor-long/2addr v12, v4

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v6, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v8, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v6, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v8, v14

    xor-long/2addr v12, v14

    aput-wide v12, p1, v11

    aget-wide v10, p3, v10

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v10, v12

    const/16 v12, 0xf

    aget-wide v13, p3, v12

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v13, v15

    xor-long/2addr v10, v13

    add-int/lit8 v13, p2, 0x6

    const/4 v14, 0x6

    aget-wide v14, p3, v14

    xor-long/2addr v14, v10

    xor-long/2addr v6, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v8, v14

    xor-long/2addr v6, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v10, v14

    xor-long/2addr v6, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v8, v14

    xor-long/2addr v6, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v10, v14

    xor-long/2addr v6, v14

    aput-wide v6, p1, v13

    aget-wide v6, p3, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v6, v12

    const/16 v12, 0x10

    aget-wide v13, p3, v12

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v13, v15

    xor-long/2addr v6, v13

    add-int/lit8 v13, p2, 0x7

    const/4 v14, 0x7

    aget-wide v14, p3, v14

    xor-long/2addr v14, v6

    xor-long/2addr v8, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v10, v14

    xor-long/2addr v8, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v6, v14

    xor-long/2addr v8, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v10, v14

    xor-long/2addr v8, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v6, v14

    xor-long/2addr v8, v14

    aput-wide v8, p1, v13

    aget-wide v8, p3, v12

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v8, v13

    add-int/lit8 v13, p2, 0x8

    const/16 v14, 0x8

    aget-wide v15, p3, v14

    xor-long/2addr v15, v8

    xor-long/2addr v15, v10

    const/16 v17, 0xa

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v18, v6, v1

    xor-long v15, v15, v18

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v18, v8, v1

    xor-long v15, v15, v18

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v18, v6, v1

    xor-long v15, v15, v18

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v18, v8, v1

    xor-long v15, v15, v18

    move/from16 v18, v13

    const/16 v1, 0x10

    iget-wide v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->mask:J

    and-long/2addr v12, v15

    aput-wide v12, p1, v18

    aget-wide v12, p3, v14

    xor-long/2addr v10, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v10, v12

    const/16 v12, 0x9

    aget-wide v13, p3, v12

    xor-long/2addr v13, v6

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v13, v15

    xor-long/2addr v10, v13

    aget-wide v13, p3, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long/2addr v13, v1

    xor-long/2addr v10, v13

    aget-wide v12, p3, v12

    xor-long/2addr v6, v12

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v6, v1

    aget-wide v12, p3, v17

    xor-long/2addr v8, v12

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v8, v1

    xor-long/2addr v6, v8

    const/4 v1, 0x0

    aget-wide v8, p3, v1

    xor-long/2addr v8, v10

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v12, v10, v1

    xor-long/2addr v8, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v13, v10, v12

    xor-long/2addr v8, v13

    aput-wide v8, p1, p2

    add-int/lit8 v8, p2, 0x1

    const/4 v9, 0x1

    aget-wide v13, p3, v9

    xor-long/2addr v13, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v15, v10, v9

    xor-long/2addr v13, v15

    shl-long v15, v6, v1

    xor-long/2addr v13, v15

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v16, v10, v15

    xor-long v13, v13, v16

    shl-long v16, v6, v12

    xor-long v13, v13, v16

    aput-wide v13, p1, v8

    add-int/lit8 v8, p2, 0x2

    const/4 v13, 0x2

    aget-wide v13, p3, v13

    xor-long/2addr v13, v2

    xor-long/2addr v10, v13

    ushr-long v13, v6, v9

    xor-long/2addr v10, v13

    shl-long v13, v2, v1

    xor-long/2addr v10, v13

    ushr-long v13, v6, v15

    xor-long/2addr v10, v13

    shl-long v13, v2, v12

    xor-long/2addr v10, v13

    aput-wide v10, p1, v8

    const/4 v8, 0x3

    add-int/lit8 v10, p2, 0x3

    aget-wide v13, p3, v8

    xor-long/2addr v13, v4

    xor-long/2addr v6, v13

    ushr-long v8, v2, v9

    xor-long/2addr v6, v8

    shl-long v8, v4, v1

    xor-long/2addr v6, v8

    ushr-long v1, v2, v15

    xor-long/2addr v1, v6

    shl-long v3, v4, v12

    xor-long/2addr v1, v3

    aput-wide v1, p1, v10

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .locals 22

    move-object/from16 v0, p0

    const/16 v1, 0xa

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0xb

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xc

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0xd

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    add-int/lit8 v9, p2, 0x4

    aget-wide v10, p1, v9

    const/4 v12, 0x4

    aget-wide v12, p3, v12

    xor-long/2addr v12, v6

    xor-long/2addr v12, v2

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v4, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v6, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v4, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v6, v14

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    aput-wide v10, p1, v9

    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0xe

    aget-wide v11, p3, v10

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v11, v13

    xor-long/2addr v8, v11

    add-int/lit8 v11, p2, 0x5

    aget-wide v12, p1, v11

    const/4 v14, 0x5

    aget-wide v14, p3, v14

    xor-long/2addr v14, v8

    xor-long/2addr v14, v4

    const/16 v16, 0xa

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v17, v6, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v17, v8, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v17, v6, v1

    xor-long v14, v14, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v17, v8, v1

    xor-long v14, v14, v17

    xor-long/2addr v12, v14

    aput-wide v12, p1, v11

    aget-wide v10, p3, v10

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v10, v1

    const/16 v1, 0xf

    aget-wide v12, p3, v1

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long/2addr v10, v12

    add-int/lit8 v12, p2, 0x6

    aget-wide v13, p1, v12

    const/4 v15, 0x6

    aget-wide v17, p3, v15

    xor-long v17, v17, v10

    xor-long v6, v17, v6

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v17, v8, v15

    xor-long v6, v6, v17

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v17, v10, v15

    xor-long v6, v6, v17

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v17, v8, v15

    xor-long v6, v6, v17

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v17, v10, v15

    xor-long v6, v6, v17

    xor-long/2addr v6, v13

    aput-wide v6, p1, v12

    aget-wide v6, p3, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v6, v1

    const/16 v1, 0x10

    aget-wide v12, p3, v1

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long/2addr v6, v12

    add-int/lit8 v12, p2, 0x7

    aget-wide v13, p1, v12

    const/4 v15, 0x7

    aget-wide v17, p3, v15

    xor-long v17, v17, v6

    xor-long v8, v17, v8

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v17, v10, v15

    xor-long v8, v8, v17

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v17, v6, v15

    xor-long v8, v8, v17

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v17, v10, v15

    xor-long v8, v8, v17

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v17, v6, v15

    xor-long v8, v8, v17

    xor-long/2addr v8, v13

    aput-wide v8, p1, v12

    aget-wide v8, p3, v1

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v8, v12

    add-int/lit8 v12, p2, 0x8

    aget-wide v13, p1, v12

    const/16 v15, 0x8

    aget-wide v17, p3, v15

    xor-long v17, v17, v8

    xor-long v17, v17, v10

    const/16 v19, 0x10

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v20, v6, v1

    xor-long v17, v17, v20

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v20, v8, v1

    xor-long v17, v17, v20

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v20, v6, v1

    xor-long v17, v17, v20

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v20, v8, v1

    xor-long v17, v17, v20

    move-wide/from16 v20, v2

    iget-wide v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->mask:J

    and-long v1, v17, v1

    xor-long/2addr v1, v13

    aput-wide v1, p1, v12

    aget-wide v1, p3, v15

    xor-long/2addr v1, v10

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v1, v3

    const/16 v3, 0x9

    aget-wide v10, p3, v3

    xor-long/2addr v10, v6

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v10, v12

    xor-long/2addr v1, v10

    aget-wide v10, p3, v19

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long/2addr v10, v12

    xor-long/2addr v1, v10

    aget-wide v10, p3, v3

    xor-long/2addr v6, v10

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v6, v3

    aget-wide v10, p3, v16

    xor-long/2addr v8, v10

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v8, v3

    xor-long/2addr v6, v8

    aget-wide v8, p1, p2

    const/4 v3, 0x0

    aget-wide v10, p3, v3

    xor-long/2addr v10, v1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v12, v1, v3

    xor-long/2addr v10, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v13, v1, v12

    xor-long/2addr v10, v13

    xor-long/2addr v8, v10

    aput-wide v8, p1, p2

    add-int/lit8 v8, p2, 0x1

    aget-wide v9, p1, v8

    const/4 v11, 0x1

    aget-wide v13, p3, v11

    xor-long/2addr v13, v6

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v15, v1, v11

    xor-long/2addr v13, v15

    shl-long v15, v6, v3

    xor-long/2addr v13, v15

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v16, v1, v15

    xor-long v13, v13, v16

    shl-long v16, v6, v12

    xor-long v13, v13, v16

    xor-long/2addr v9, v13

    aput-wide v9, p1, v8

    add-int/lit8 v8, p2, 0x2

    aget-wide v9, p1, v8

    const/4 v13, 0x2

    aget-wide v13, p3, v13

    xor-long v13, v13, v20

    xor-long/2addr v1, v13

    ushr-long v13, v6, v11

    xor-long/2addr v1, v13

    shl-long v13, v20, v3

    xor-long/2addr v1, v13

    ushr-long v13, v6, v15

    xor-long/2addr v1, v13

    shl-long v13, v20, v12

    xor-long/2addr v1, v13

    xor-long/2addr v1, v9

    aput-wide v1, p1, v8

    const/4 v1, 0x3

    add-int/lit8 v2, p2, 0x3

    aget-wide v8, p1, v2

    aget-wide v13, p3, v1

    xor-long/2addr v13, v4

    xor-long/2addr v6, v13

    ushr-long v10, v20, v11

    xor-long/2addr v6, v10

    shl-long v10, v4, v3

    xor-long/2addr v6, v10

    ushr-long v10, v20, v15

    xor-long/2addr v6, v10

    shl-long v3, v4, v12

    xor-long/2addr v3, v6

    xor-long/2addr v3, v8

    aput-wide v3, p1, v2

    return-void
.end method
