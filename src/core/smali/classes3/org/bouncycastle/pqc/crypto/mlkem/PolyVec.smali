.class Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;
.super Ljava/lang/Object;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

.field private kyberK:I

.field private polyVecBytes:I

.field vec:[Lorg/bouncycastle/pqc/crypto/mlkem/Poly;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Requires Parameter"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberPolyVecBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->polyVecBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    invoke-direct {v2, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    invoke-direct {v0, p3}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->baseMultMontgomery(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;Lorg/bouncycastle/pqc/crypto/mlkem/Poly;Lorg/bouncycastle/pqc/crypto/mlkem/Poly;)V

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberK()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->baseMultMontgomery(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;Lorg/bouncycastle/pqc/crypto/mlkem/Poly;Lorg/bouncycastle/pqc/crypto/mlkem/Poly;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->addCoeffs(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->reduce()V

    return-void
.end method


# virtual methods
.method public addPoly(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->addCoeffs(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compressPolyVec()[B
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->conditionalSubQ()V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberPolyVecCompressedBytes()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberPolyVecCompressedBytes()I

    move-result v2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    mul-int/lit16 v3, v3, 0x140

    const/16 v4, 0x20

    const/4 v7, 0x6

    const/16 v8, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v2, v3, :cond_2

    new-array v2, v10, [S

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_0
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    if-ge v3, v14, :cond_5

    const/4 v14, 0x0

    :goto_1
    const/16 v15, 0x40

    if-ge v14, v15, :cond_1

    const/4 v15, 0x0

    :goto_2
    const/16 v16, 0xa

    if-ge v15, v10, :cond_0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v5

    mul-int/lit8 v17, v14, 0x4

    const/16 v18, 0x3

    add-int v6, v17, v15

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->getCoeffIndex(I)S

    move-result v5

    int-to-long v5, v5

    shl-long v5, v5, v16

    const-wide/16 v19, 0x681

    add-long v5, v5, v19

    const-wide/32 v19, 0x13afb7

    mul-long v5, v5, v19

    shr-long/2addr v5, v4

    const-wide/16 v19, 0x3ff

    and-long v5, v5, v19

    long-to-int v6, v5

    int-to-short v5, v6

    aput-short v5, v2, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_0
    const/16 v18, 0x3

    aget-short v5, v2, v12

    int-to-byte v6, v5

    aput-byte v6, v1, v13

    add-int/lit8 v6, v13, 0x1

    shr-int/2addr v5, v8

    aget-short v15, v2, v11

    shl-int/lit8 v17, v15, 0x2

    or-int v5, v5, v17

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    add-int/lit8 v5, v13, 0x2

    shr-int/lit8 v6, v15, 0x6

    aget-short v15, v2, v9

    shl-int/lit8 v17, v15, 0x4

    or-int v6, v6, v17

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v5, v13, 0x3

    shr-int/lit8 v6, v15, 0x4

    aget-short v15, v2, v18

    shl-int/lit8 v17, v15, 0x6

    or-int v6, v6, v17

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v5, v13, 0x4

    shr-int/lit8 v6, v15, 0x2

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v13, v13, 0x5

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0xa

    const/16 v18, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0xa

    const/16 v18, 0x3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberPolyVecCompressedBytes()I

    move-result v2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    mul-int/lit16 v3, v3, 0x160

    if-ne v2, v3, :cond_6

    new-array v2, v8, [S

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_3
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    if-ge v3, v6, :cond_5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v4, :cond_4

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v8, :cond_3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v14

    mul-int/lit8 v15, v6, 0x8

    add-int/2addr v15, v13

    invoke-virtual {v14, v15}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->getCoeffIndex(I)S

    move-result v14

    int-to-long v14, v14

    const/16 v17, 0xb

    shl-long v14, v14, v17

    const-wide/16 v19, 0x680

    add-long v14, v14, v19

    const-wide/32 v19, 0x9d7dc

    mul-long v14, v14, v19

    const/16 v17, 0x1f

    shr-long v14, v14, v17

    const-wide/16 v19, 0x7ff

    and-long v14, v14, v19

    long-to-int v15, v14

    int-to-short v14, v15

    aput-short v14, v2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_3
    aget-short v13, v2, v12

    int-to-byte v14, v13

    aput-byte v14, v1, v5

    add-int/lit8 v14, v5, 0x1

    shr-int/2addr v13, v8

    aget-short v15, v2, v11

    shl-int/lit8 v17, v15, 0x3

    or-int v13, v13, v17

    int-to-byte v13, v13

    aput-byte v13, v1, v14

    add-int/lit8 v13, v5, 0x2

    const/4 v14, 0x5

    shr-int/2addr v15, v14

    aget-short v17, v2, v9

    shl-int/lit8 v19, v17, 0x6

    or-int v15, v15, v19

    int-to-byte v15, v15

    aput-byte v15, v1, v13

    add-int/lit8 v13, v5, 0x3

    shr-int/lit8 v15, v17, 0x2

    int-to-byte v15, v15

    aput-byte v15, v1, v13

    add-int/lit8 v13, v5, 0x4

    shr-int/lit8 v15, v17, 0xa

    aget-short v17, v2, v18

    shl-int/lit8 v19, v17, 0x1

    or-int v15, v15, v19

    int-to-byte v15, v15

    aput-byte v15, v1, v13

    add-int/lit8 v13, v5, 0x5

    const/4 v15, 0x7

    shr-int/lit8 v17, v17, 0x7

    aget-short v19, v2, v10

    shl-int/lit8 v20, v19, 0x4

    or-int v4, v17, v20

    int-to-byte v4, v4

    aput-byte v4, v1, v13

    add-int/lit8 v4, v5, 0x6

    shr-int/lit8 v13, v19, 0x4

    aget-short v14, v2, v14

    shl-int/lit8 v17, v14, 0x7

    or-int v13, v13, v17

    int-to-byte v13, v13

    aput-byte v13, v1, v4

    add-int/lit8 v4, v5, 0x7

    shr-int/lit8 v13, v14, 0x1

    int-to-byte v13, v13

    aput-byte v13, v1, v4

    add-int/lit8 v4, v5, 0x8

    shr-int/lit8 v13, v14, 0x9

    aget-short v14, v2, v7

    shl-int/lit8 v17, v14, 0x2

    or-int v13, v13, v17

    int-to-byte v13, v13

    aput-byte v13, v1, v4

    add-int/lit8 v4, v5, 0x9

    shr-int/lit8 v13, v14, 0x6

    aget-short v14, v2, v15

    shl-int/lit8 v15, v14, 0x5

    or-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v1, v4

    add-int/lit8 v4, v5, 0xa

    shr-int/lit8 v13, v14, 0x3

    int-to-byte v13, v13

    aput-byte v13, v1, v4

    add-int/lit8 v5, v5, 0xb

    add-int/lit8 v6, v6, 0x1

    const/16 v4, 0x20

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x20

    goto/16 :goto_3

    :cond_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method

.method public conditionalSubQ()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->conditionalSubQ()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decompressPolyVec([B)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberPolyVecCompressedBytes()I

    move-result v1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    mul-int/lit16 v2, v2, 0x140

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    if-ge v1, v10, :cond_5

    const/4 v10, 0x0

    :goto_1
    const/16 v11, 0x40

    if-ge v10, v11, :cond_1

    aget-byte v11, p1, v2

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v2, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v13, v12, 0xff

    shl-int/2addr v13, v5

    int-to-short v13, v13

    or-int/2addr v11, v13

    int-to-short v11, v11

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v6

    add-int/lit8 v13, v2, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v14, v13, 0xff

    shl-int/2addr v14, v4

    int-to-short v14, v14

    or-int/2addr v12, v14

    int-to-short v12, v12

    and-int/lit16 v13, v13, 0xff

    shr-int/2addr v13, v7

    add-int/lit8 v14, v2, 0x3

    aget-byte v14, p1, v14

    and-int/lit16 v15, v14, 0xff

    shl-int/2addr v15, v7

    int-to-short v15, v15

    or-int/2addr v13, v15

    int-to-short v13, v13

    and-int/lit16 v14, v14, 0xff

    shr-int/2addr v14, v4

    add-int/lit8 v15, v2, 0x4

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v6

    int-to-short v15, v15

    or-int/2addr v14, v15

    int-to-short v14, v14

    new-array v15, v7, [S

    aput-short v11, v15, v9

    aput-short v12, v15, v8

    aput-short v13, v15, v6

    aput-short v14, v15, v3

    add-int/lit8 v2, v2, 0x5

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v7, :cond_0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    aget-object v12, v12, v1

    mul-int/lit8 v13, v10, 0x4

    add-int/2addr v13, v11

    aget-short v14, v15, v11

    and-int/lit16 v14, v14, 0x3ff

    mul-int/lit16 v14, v14, 0xd01

    add-int/lit16 v14, v14, 0x200

    shr-int/lit8 v14, v14, 0xa

    int-to-short v14, v14

    invoke-virtual {v12, v13, v14}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberPolyVecCompressedBytes()I

    move-result v1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    mul-int/lit16 v2, v2, 0x160

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    if-ge v1, v10, :cond_5

    const/4 v10, 0x0

    :goto_4
    const/16 v11, 0x20

    if-ge v10, v11, :cond_4

    aget-byte v11, p1, v2

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v2, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v13, v12, 0xff

    int-to-short v13, v13

    shl-int/2addr v13, v5

    or-int/2addr v11, v13

    int-to-short v11, v11

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v3

    add-int/lit8 v13, v2, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v14, v13, 0xff

    int-to-short v14, v14

    const/4 v15, 0x5

    shl-int/2addr v14, v15

    or-int/2addr v12, v14

    int-to-short v12, v12

    and-int/lit16 v13, v13, 0xff

    shr-int/2addr v13, v4

    add-int/lit8 v14, v2, 0x3

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    int-to-short v14, v14

    shl-int/2addr v14, v6

    or-int/2addr v13, v14

    add-int/lit8 v14, v2, 0x4

    aget-byte v14, p1, v14

    const/16 v16, 0x3

    and-int/lit16 v3, v14, 0xff

    shl-int/lit8 v3, v3, 0xa

    int-to-short v3, v3

    or-int/2addr v3, v13

    int-to-short v3, v3

    and-int/lit16 v13, v14, 0xff

    shr-int/2addr v13, v8

    add-int/lit8 v14, v2, 0x5

    aget-byte v14, p1, v14

    const/16 v17, 0x6

    and-int/lit16 v4, v14, 0xff

    int-to-short v4, v4

    const/16 v18, 0x7

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v4, v13

    int-to-short v4, v4

    and-int/lit16 v13, v14, 0xff

    shr-int/2addr v13, v7

    add-int/lit8 v14, v2, 0x6

    aget-byte v14, p1, v14

    const/16 v19, 0x2

    and-int/lit16 v6, v14, 0xff

    int-to-short v6, v6

    shl-int/2addr v6, v7

    or-int/2addr v6, v13

    int-to-short v6, v6

    and-int/lit16 v13, v14, 0xff

    shr-int/lit8 v13, v13, 0x7

    add-int/lit8 v14, v2, 0x7

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    int-to-short v14, v14

    shl-int/2addr v14, v8

    or-int/2addr v13, v14

    add-int/lit8 v14, v2, 0x8

    aget-byte v14, p1, v14

    const/16 v20, 0x4

    and-int/lit16 v7, v14, 0xff

    shl-int/lit8 v7, v7, 0x9

    int-to-short v7, v7

    or-int/2addr v7, v13

    int-to-short v7, v7

    and-int/lit16 v13, v14, 0xff

    shr-int/lit8 v13, v13, 0x2

    add-int/lit8 v14, v2, 0x9

    aget-byte v14, p1, v14

    const/16 v21, 0x1

    and-int/lit16 v8, v14, 0xff

    int-to-short v8, v8

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v8, v13

    int-to-short v8, v8

    and-int/lit16 v13, v14, 0xff

    shr-int/2addr v13, v15

    add-int/lit8 v14, v2, 0xa

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    int-to-short v14, v14

    shl-int/lit8 v14, v14, 0x3

    or-int/2addr v13, v14

    int-to-short v13, v13

    new-array v14, v5, [S

    aput-short v11, v14, v9

    aput-short v12, v14, v21

    aput-short v3, v14, v19

    aput-short v4, v14, v16

    aput-short v6, v14, v20

    aput-short v7, v14, v15

    aput-short v8, v14, v17

    aput-short v13, v14, v18

    add-int/lit8 v2, v2, 0xb

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_3

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    aget-object v4, v4, v1

    mul-int/lit8 v6, v10, 0x8

    add-int/2addr v6, v3

    aget-short v7, v14, v3

    and-int/lit16 v7, v7, 0x7ff

    mul-int/lit16 v7, v7, 0xd01

    add-int/lit16 v7, v7, 0x400

    shr-int/lit8 v7, v7, 0xb

    int-to-short v7, v7

    invoke-virtual {v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_4
    const/16 v16, 0x3

    const/16 v17, 0x6

    const/16 v19, 0x2

    const/16 v20, 0x4

    const/16 v21, 0x1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_5
    return-void

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method

.method public fromBytes([B)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x180

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v3, v0, 0x180

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->fromBytes([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public polyVecInverseNttToMont()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->polyInverseNttToMont()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public polyVecNtt()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->polyNtt()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reducePoly()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->reduce()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toBytes()[B
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->polyVecBytes:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->toBytes()[B

    move-result-object v3

    mul-int/lit16 v4, v2, 0x180

    const/16 v5, 0x180

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->kyberK:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
