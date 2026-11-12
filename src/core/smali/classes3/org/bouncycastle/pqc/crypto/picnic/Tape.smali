.class Lorg/bouncycastle/pqc/crypto/picnic/Tape;
.super Ljava/lang/Object;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

.field nTapes:I

.field pos:I

.field tapes:[[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->nTapes:I

    return-void
.end method

.method private tapesToParityBits([II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity16(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected computeAuxTape([B)V
    .locals 12

    const/16 v0, 0x10

    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v3, v0, [I

    new-array v4, v0, [I

    new-array v5, v0, [I

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v8, 0x0

    aput v8, v5, v6

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToParityBits([II)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v6, v9}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v6

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v10

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    invoke-virtual {v9, v4, v5, v10, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    if-eqz p1, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v4, v8, v6, p1, v8}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    :goto_0
    if-lez p1, :cond_2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v6, v9, p1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v6

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v10

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    invoke-virtual {v9, v1, v4, v10, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v6, v2, v2, v1, v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    add-int/lit8 v10, p1, -0x1

    invoke-virtual {v6, v9, v10}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v6

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v11

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    invoke-virtual {v9, v3, v2, v11, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    if-ne p1, v7, :cond_1

    invoke-static {v5, v8, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    mul-int/lit8 v6, v6, 0x2

    mul-int v6, v6, v10

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-direct {p0, v2, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToParityBits([II)V

    :goto_1
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    mul-int/lit8 v6, v6, 0x2

    mul-int v6, v6, v10

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    add-int/2addr v6, v9

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v6, v2, v3, p0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    iput v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    return-void
.end method

.method protected setAuxBits([B)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-ge v3, v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v6, v6, v0

    mul-int/lit8 v7, v1, 0x2

    mul-int v7, v7, v3

    add-int/2addr v7, v1

    add-int/2addr v7, v5

    add-int/lit8 v8, v4, 0x1

    invoke-static {p1, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v4

    invoke-static {v6, v7, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected tapesToWord()I
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    ushr-int/lit8 v2, v1, 0x3

    and-int/lit8 v3, v1, 0x7

    const/4 v4, 0x7

    xor-int/2addr v3, v4

    const/4 v5, 0x1

    shl-int v6, v5, v3

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v8, 0x0

    aget-object v8, v7, v8

    aget-byte v8, v8, v2

    and-int/2addr v8, v6

    shl-int/2addr v8, v4

    aget-object v9, v7, v5

    aget-byte v9, v9, v2

    and-int/2addr v9, v6

    const/4 v10, 0x6

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x2

    aget-object v11, v7, v9

    aget-byte v11, v11, v2

    and-int/2addr v11, v6

    const/4 v12, 0x5

    shl-int/2addr v11, v12

    or-int/2addr v8, v11

    const/4 v11, 0x3

    aget-object v13, v7, v11

    aget-byte v13, v13, v2

    and-int/2addr v13, v6

    const/4 v14, 0x4

    shl-int/2addr v13, v14

    or-int/2addr v8, v13

    aget-object v13, v7, v14

    aget-byte v13, v13, v2

    and-int/2addr v13, v6

    shl-int/lit8 v11, v13, 0x3

    or-int/2addr v8, v11

    aget-object v11, v7, v12

    aget-byte v11, v11, v2

    and-int/2addr v11, v6

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v8, v9

    aget-object v9, v7, v10

    aget-byte v9, v9, v2

    and-int/2addr v9, v6

    shl-int/2addr v9, v5

    or-int/2addr v8, v9

    aget-object v4, v7, v4

    aget-byte v4, v4, v2

    and-int/2addr v4, v6

    or-int/2addr v4, v8

    const/16 v8, 0x8

    aget-object v9, v7, v8

    aget-byte v9, v9, v2

    and-int/2addr v9, v6

    const/16 v10, 0xf

    shl-int/2addr v9, v10

    or-int/2addr v4, v9

    const/16 v9, 0x9

    aget-object v11, v7, v9

    aget-byte v11, v11, v2

    and-int/2addr v11, v6

    const/16 v12, 0xe

    shl-int/2addr v11, v12

    or-int/2addr v4, v11

    const/16 v11, 0xa

    aget-object v13, v7, v11

    aget-byte v13, v13, v2

    and-int/2addr v13, v6

    const/16 v14, 0xd

    shl-int/2addr v13, v14

    or-int/2addr v4, v13

    const/16 v13, 0xb

    aget-object v15, v7, v13

    aget-byte v15, v15, v2

    and-int/2addr v15, v6

    const/16 v16, 0xc

    shl-int/lit8 v15, v15, 0xc

    or-int/2addr v4, v15

    aget-object v15, v7, v16

    aget-byte v15, v15, v2

    and-int/2addr v15, v6

    shl-int/lit8 v13, v15, 0xb

    or-int/2addr v4, v13

    aget-object v13, v7, v14

    aget-byte v13, v13, v2

    and-int/2addr v13, v6

    shl-int/lit8 v11, v13, 0xa

    or-int/2addr v4, v11

    aget-object v11, v7, v12

    aget-byte v11, v11, v2

    and-int/2addr v11, v6

    shl-int/lit8 v9, v11, 0x9

    or-int/2addr v4, v9

    aget-object v7, v7, v10

    aget-byte v2, v7, v2

    and-int/2addr v2, v6

    shl-int/2addr v2, v8

    or-int/2addr v2, v4

    add-int/2addr v1, v5

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    ushr-int v1, v2, v3

    return v1
.end method
