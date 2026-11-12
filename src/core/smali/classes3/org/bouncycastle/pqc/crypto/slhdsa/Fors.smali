.class Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;
.super Ljava/lang/Object;


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    return-void
.end method

.method static base2B([BII)[I
    .locals 8

    new-array v0, p2, [I

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    :goto_1
    if-ge v4, p1, :cond_0

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x8

    goto :goto_1

    :cond_0
    sub-int/2addr v4, p1

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public pkFromSig([Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;[B[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x2

    new-array v4, v3, [[B

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->K:I

    new-array v5, v5, [[B

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->T:I

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->K:I

    move-object/from16 v9, p2

    invoke-static {v9, v7, v8}, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->base2B([BII)[I

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->K:I

    if-ge v9, v10, :cond_2

    aget v10, v7, v9

    aget-object v11, p1, v9

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;->getSK()[B

    move-result-object v11

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeHeight(I)V

    mul-int v12, v9, v6

    add-int/2addr v12, v10

    invoke-virtual {v2, v12}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeIndex(I)V

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    invoke-virtual {v13, v1, v2, v11}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->F([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B)[B

    move-result-object v11

    aput-object v11, v4, v8

    aget-object v11, p1, v9

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;->getAuthPath()[[B

    move-result-object v11

    invoke-virtual {v2, v12}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeIndex(I)V

    const/4 v12, 0x0

    :goto_1
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    if-ge v12, v13, :cond_1

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v2, v13}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeHeight(I)V

    const/4 v14, 0x1

    shl-int v15, v14, v12

    div-int v15, v10, v15

    rem-int/2addr v15, v3

    if-nez v15, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->getTreeIndex()I

    move-result v15

    div-int/2addr v15, v3

    invoke-virtual {v2, v15}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeIndex(I)V

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    const/16 v16, 0x2

    aget-object v3, v4, v8

    aget-object v12, v11, v12

    invoke-virtual {v15, v1, v2, v3, v12}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->H([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B[B)[B

    move-result-object v3

    aput-object v3, v4, v14

    goto :goto_2

    :cond_0
    const/16 v16, 0x2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->getTreeIndex()I

    move-result v3

    sub-int/2addr v3, v14

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeIndex(I)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    aget-object v12, v11, v12

    aget-object v15, v4, v8

    invoke-virtual {v3, v1, v2, v12, v15}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->H([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B[B)[B

    move-result-object v3

    aput-object v3, v4, v14

    :goto_2
    aget-object v3, v4, v14

    aput-object v3, v4, v8

    move v12, v13

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const/16 v16, 0x2

    aget-object v3, v4, v8

    aput-object v3, v5, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    new-instance v3, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTypeAndClear(I)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->getKeyPairAddress()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setKeyPairAddress(I)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->T_l([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B)[B

    move-result-object v1

    return-object v1
.end method

.method public sign([B[B[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;
    .locals 19

    move-object/from16 v0, p0

    new-instance v5, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;

    move-object/from16 v6, p4

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->K:I

    move-object/from16 v3, p1

    invoke-static {v3, v1, v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->base2B([BII)[I

    move-result-object v7

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->K:I

    new-array v8, v1, [Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v9, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->T:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->K:I

    if-ge v11, v1, :cond_1

    aget v12, v7, v11

    const/4 v1, 0x6

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTypeAndClear(I)V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->getKeyPairAddress()I

    move-result v1

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setKeyPairAddress(I)V

    invoke-virtual {v5, v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeHeight(I)V

    mul-int v13, v11, v9

    add-int v1, v13, v12

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeIndex(I)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-virtual {v1, v4, v2, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->PRF([B[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B

    move-result-object v14

    const/4 v1, 0x3

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->changeType(I)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    new-array v15, v1, [[B

    const/4 v3, 0x0

    :goto_1
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    if-ge v3, v1, :cond_0

    const/4 v1, 0x1

    shl-int v16, v1, v3

    div-int v17, v12, v16

    xor-int/lit8 v1, v17, 0x1

    mul-int v1, v1, v16

    add-int/2addr v1, v13

    move-object/from16 v18, v2

    move v2, v1

    move-object/from16 v1, v18

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->treehash([BII[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B

    move-result-object v2

    aput-object v2, v15, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;

    invoke-direct {v0, v14, v15}, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;-><init>([B[[B)V

    aput-object v0, v8, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_1
    return-object v8
.end method

.method treehash([BII[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B
    .locals 10

    ushr-int v0, p2, p3

    shl-int/2addr v0, p3

    if-eq v0, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;

    invoke-direct {v1, p5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    shl-int v5, v4, p3

    if-ge v3, v5, :cond_2

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTypeAndClear(I)V

    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->getKeyPairAddress()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setKeyPairAddress(I)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeHeight(I)V

    add-int v5, p2, v3

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeIndex(I)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    invoke-virtual {v6, p4, p1, v1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->PRF([B[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->changeType(I)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    invoke-virtual {v7, p4, v1, v6}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->F([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B)[B

    move-result-object v6

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeHeight(I)V

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;->nodeHeight:I

    if-ne v8, v7, :cond_1

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeIndex(I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->engine:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;->nodeValue:[B

    invoke-virtual {v9, p4, v1, v8, v6}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->H([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B[B)[B

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeHeight(I)V

    goto :goto_1

    :cond_1
    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;

    invoke-direct {v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;-><init>([BI)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/NodeEntry;->nodeValue:[B

    return-object p1
.end method
