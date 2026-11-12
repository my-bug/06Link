.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private forEncryption:Z

.field private params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

.field private privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private MGF([BIIZ)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-object v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    mul-int v2, p3, v1

    new-array v2, v2, [B

    if-eqz p4, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;[B)[B

    move-result-object p1

    :cond_0
    const/4 p4, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_1

    array-length v4, p1

    invoke-interface {v0, p1, p4, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->putInt(Lorg/bouncycastle/crypto/Digest;I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v4

    mul-int v5, v3, v1

    invoke-static {v4, p4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p3, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    :goto_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_2
    array-length v5, v2

    if-eq v1, v5, :cond_6

    aget-byte v5, v2, v1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xf3

    if-lt v5, v6, :cond_2

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x4

    if-ge v6, v7, :cond_4

    rem-int/lit8 v7, v5, 0x3

    iget-object v8, p3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v9, v7, -0x1

    aput v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_3

    goto :goto_5

    :cond_3
    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget-object v6, p3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v5, v5, -0x1

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-lt v4, p2, :cond_7

    :goto_5
    return-object p3

    :cond_7
    array-length v1, p1

    invoke-interface {v0, p1, p4, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->putInt(Lorg/bouncycastle/crypto/Digest;I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private buildSData([B[BI[B[B)[B
    .locals 3

    array-length v0, p1

    add-int/2addr v0, p3

    array-length p3, p4

    add-int/2addr v0, p3

    array-length p3, p5

    add-int/2addr v0, p3

    new-array p3, v0, [B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    array-length v2, p2

    invoke-static {p2, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    array-length v2, p2

    add-int/2addr v0, v2

    array-length v2, p4

    invoke-static {p4, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length p2, p2

    add-int/2addr p1, p2

    array-length p2, p4

    add-int/2addr p1, p2

    array-length p2, p5

    invoke-static {p5, v1, p3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3
.end method

.method private calcHash(Lorg/bouncycastle/crypto/Digest;)[B
    .locals 2

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method private calcHash(Lorg/bouncycastle/crypto/Digest;[B)[B
    .locals 3

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method private copyOf([BI)[B
    .locals 2

    new-array v0, p2, [B

    array-length v1, p1

    if-ge p2, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length p2, p1

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private decrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget-object v6, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v7, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v4, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v5, v5, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    iget-object v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v8, v8, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v9, v9, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    iget-object v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v10, v10, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    iget-object v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v11, v11, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    iget-object v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-object v12, v12, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    const/16 v13, 0xff

    if-gt v5, v13, :cond_6

    div-int/lit8 v4, v4, 0x8

    move-object/from16 v14, p1

    invoke-static {v14, v1, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v14

    invoke-virtual {v0, v14, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->decrypt(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v3

    if-lt v3, v8, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v15

    if-lt v15, v8, :cond_4

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v13

    if-lt v13, v8, :cond_3

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v8, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v8, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    invoke-virtual {v13, v14}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v13

    invoke-direct {v0, v13, v1, v10, v11}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->MGF([BIIZ)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary3Sves()[B

    move-result-object v1

    new-array v2, v4, [B

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v10, v1, v4

    const/16 v11, 0xff

    and-int/2addr v10, v11

    if-gt v10, v5, :cond_2

    move v11, v4

    move-object v4, v2

    new-array v2, v10, [B

    add-int/lit8 v5, v11, 0x1

    invoke-static {v1, v5, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v1

    add-int/2addr v5, v10

    sub-int/2addr v11, v5

    new-array v13, v11, [B

    invoke-static {v1, v5, v13, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v11, [B

    invoke-static {v13, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v1

    div-int/lit8 v9, v9, 0x8

    invoke-direct {v0, v1, v9}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    move-result-object v5

    move v3, v10

    move-object v1, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->buildSData([B[BI[B[B)[B

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    move-result-object v1

    invoke-interface {v1, v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    invoke-virtual {v1, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "Invalid message encoding"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "The message is not followed by zeroes"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v3, v10

    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Message too long: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "Less than dm0 coefficients equal 1"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "Less than dm0 coefficients equal 0"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "Less than dm0 coefficients equal -1"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "maxMsgLenBytes values bigger than 255 are not supported"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private encrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    iget-object v6, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v7, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v8, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v9, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v10, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v11, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v12, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v15, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-object v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    array-length v3, v2

    const/16 v4, 0xff

    if-gt v9, v4, :cond_4

    if-gt v3, v9, :cond_3

    :goto_0
    div-int/lit8 v4, v10, 0x8

    new-array v5, v4, [B

    move-object/from16 p2, v1

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x1

    add-int/lit8 v16, v9, 0x1

    const/16 v17, 0x1

    sub-int v1, v16, v3

    move/from16 v16, v10

    new-array v10, v1, [B

    move/from16 v18, v11

    div-int/lit8 v11, v18, 0x8

    new-array v11, v11, [B

    move/from16 v19, v13

    const/4 v13, 0x0

    invoke-static {v5, v13, v11, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v13, v3

    aput-byte v13, v11, v4

    add-int/lit8 v4, v4, 0x1

    array-length v13, v2

    move/from16 v20, v3

    const/4 v3, 0x0

    invoke-static {v2, v3, v11, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v2

    add-int/2addr v4, v13

    invoke-static {v10, v3, v11, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v11, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Sves([BI)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v10

    invoke-virtual {v6, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v1

    div-int/lit8 v13, v19, 0x8

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    move-result-object v1

    move-object v4, v5

    move/from16 v3, v20

    const/4 v13, 0x1

    move-object v5, v1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->buildSData([B[BI[B[B)[B

    move-result-object v4

    invoke-direct {v0, v4, v11}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    move-result-object v2

    invoke-interface {v2, v6, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v4

    invoke-direct {v0, v4, v7, v14, v15}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->MGF([BIIZ)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    const/4 v4, -0x1

    invoke-virtual {v10, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    if-ge v4, v12, :cond_0

    :goto_1
    move-object/from16 v2, p1

    move/from16 v10, v16

    move/from16 v11, v18

    move/from16 v13, v19

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    if-ge v4, v12, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v10, v13}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    if-ge v4, v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v10, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)V

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Message too long: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "llen values bigger than 1 are not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    new-array v0, v0, [I

    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    const/4 v2, 0x0

    :cond_0
    :goto_1
    if-ge v2, p2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->nextIndex()I

    move-result v3

    aget v4, v0, v3

    if-nez v4, :cond_0

    aput v1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .locals 3

    new-instance p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    invoke-direct {p2, p1, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;-><init>([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    new-instance p2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    invoke-direct {p2, p1, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;)V

    return-object p2

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object p1

    if-eqz v0, :cond_1

    new-instance p2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-object p2

    :cond_1
    new-instance p2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    return-object p2
.end method

.method private log2(I)I
    .locals 1

    const/16 v0, 0x800

    if-ne p1, v0, :cond_0

    const/16 p1, 0xb

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "log2 not fully implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private putInt(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    int-to-byte p2, p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method


# virtual methods
.method protected decrypt(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {p1, p3, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    :goto_1
    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    return-object p2
.end method

.method protected encrypt(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p3, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    iget-object p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget p3, p3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {p2, p1, p3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    return-object p2
.end method

.method public getInputBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->log2(I)I

    move-result v1

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    check-cast p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    return-void

    :cond_1
    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    check-cast p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public processBlock([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->forEncryption:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->encrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->decrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B

    move-result-object p1

    return-object p1
.end method
