.class public Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getP()I

    move-result v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getQ()I

    move-result v7

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getW()I

    move-result v8

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getRoundedPolynomialBytes()I

    move-result v11

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau0()I

    move-result v12

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau1()I

    move-result v13

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau2()I

    move-result v9

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau3()I

    move-result v10

    new-array v4, v3, [B

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getEncoded()[B

    move-result-object v5

    invoke-static {v4, v5, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getDecodedSmallPolynomial([B[BI)V

    new-array v14, v11, [B

    const/4 v15, 0x0

    invoke-static {v1, v15, v14, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v5, v3, [S

    invoke-static {v5, v14, v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedDecodedPolynomial([S[BII)V

    const/16 v6, 0x80

    move-object/from16 v16, v2

    new-array v2, v6, [B

    invoke-static {v1, v11, v2, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v15, 0x100

    const/16 v18, 0x80

    new-array v6, v15, [B

    invoke-static {v6, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getTopDecodedPolynomial([B[B)V

    move-object/from16 v19, v6

    new-array v6, v3, [S

    invoke-static {v6, v5, v4, v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    new-array v4, v15, [B

    move-object v5, v6

    move-object/from16 v6, v19

    invoke-static/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->right([B[S[BIIII)V

    move-object v10, v6

    const/16 v5, 0x20

    new-array v6, v5, [B

    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedInputs([B[B)V

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getPublicKeyBytes()I

    move-result v9

    sub-int/2addr v9, v5

    new-array v15, v9, [B

    move-object/from16 v19, v4

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getPk()[B

    move-result-object v4

    move/from16 v20, v12

    const/4 v12, 0x0

    invoke-static {v4, v5, v15, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v4, v3, [S

    invoke-static {v4, v15, v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedDecodedPolynomial([S[BII)V

    new-array v9, v5, [B

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getPk()[B

    move-result-object v15

    invoke-static {v15, v12, v9, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v15, v3, [S

    invoke-static {v15, v9, v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->generatePolynomialInRQFromSeed([S[BII)V

    const/4 v9, 0x1

    new-array v5, v9, [B

    const/16 v17, 0x5

    aput-byte v17, v5, v12

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v5

    array-length v9, v5

    const/16 v21, 0x2

    div-int/lit8 v9, v9, 0x2

    invoke-static {v5, v12, v9}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    new-array v9, v3, [I

    invoke-static {v9, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->expand([I[B)V

    new-array v5, v3, [B

    invoke-static {v5, v9, v3, v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->sortGenerateShortPolynomial([B[III)V

    new-array v8, v3, [S

    invoke-static {v8, v15, v5, v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    new-array v9, v3, [S

    invoke-static {v9, v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->roundPolynomial([S[S)V

    new-array v8, v11, [B

    invoke-static {v8, v9, v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedEncodedPolynomial([B[SII)V

    new-array v8, v3, [S

    invoke-static {v8, v4, v5, v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    const/16 v3, 0x100

    new-array v4, v3, [B

    move-object v3, v6

    move-object v5, v8

    move v9, v13

    move-object/from16 v6, v19

    move/from16 v8, v20

    const/16 v12, 0x20

    const/4 v13, 0x1

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->top([B[S[BIII)V

    const/16 v4, 0x80

    new-array v5, v4, [B

    invoke-static {v5, v10}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getTopEncodedPolynomial([B[B)V

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getHash()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v12

    new-array v5, v5, [B

    const/4 v6, 0x0

    invoke-static {v3, v6, v5, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getHash()[B

    move-result-object v7

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getHash()[B

    move-result-object v8

    array-length v8, v8

    invoke-static {v7, v6, v5, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v7, v13, [B

    aput-byte v21, v7, v6

    invoke-static {v7, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v5

    add-int/lit16 v7, v11, 0x80

    array-length v8, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    new-array v9, v8, [B

    invoke-static {v14, v6, v9, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v6, v9, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-static {v5, v6, v9, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v9}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getRho()[B

    move-result-object v2

    invoke-static {v3, v2, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->updateDiffMask([B[BI)V

    add-int v5, v12, v8

    new-array v1, v5, [B

    invoke-static {v3, v6, v1, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v6, v1, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v13, [B

    aput-byte v13, v2, v6

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getSessionKeySize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    invoke-static {v1, v6, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getRoundedPolynomialBytes()I

    move-result v0

    add-int/lit16 v0, v0, 0xa0

    return v0
.end method
