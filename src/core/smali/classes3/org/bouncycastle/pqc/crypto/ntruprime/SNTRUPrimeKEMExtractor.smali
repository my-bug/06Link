.class public Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getP()I

    move-result v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getQ()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getW()I

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getRoundedPolynomialBytes()I

    move-result v4

    new-array v5, v1, [B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getF()[B

    move-result-object v6

    invoke-static {v5, v6, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getDecodedSmallPolynomial([B[BI)V

    new-array v6, v1, [B

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getGinv()[B

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getDecodedSmallPolynomial([B[BI)V

    new-array v7, v1, [S

    invoke-static {v7, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedDecodedPolynomial([S[BII)V

    new-array v8, v1, [S

    invoke-static {v8, v7, v5, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    new-array v5, v1, [S

    const/4 v7, 0x3

    invoke-static {v5, v8, v7, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->scalarMultiplicationInRQ([S[SII)V

    new-array v8, v1, [B

    invoke-static {v8, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->transformRQToR3([B[S)V

    new-array v5, v1, [B

    invoke-static {v5, v8, v6, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInR3([B[B[BI)V

    new-array v6, v1, [B

    invoke-static {v6, v5, v1, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkForSmallPolynomial([B[BII)V

    add-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    invoke-static {v3, v6, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedSmallPolynomial([B[BI)V

    new-array v5, v1, [S

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getPk()[B

    move-result-object v8

    invoke-static {v5, v8, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getDecodedPolynomial([S[BII)V

    new-array v8, v1, [S

    invoke-static {v8, v5, v6, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    new-array v5, v1, [S

    invoke-static {v5, v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->roundPolynomial([S[S)V

    new-array v6, v4, [B

    invoke-static {v6, v5, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedEncodedPolynomial([B[SII)V

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v5, 0x0

    aput-byte v7, v2, v5

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v2

    array-length v8, v2

    const/4 v9, 0x2

    div-int/2addr v8, v9

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getHash()[B

    move-result-object v10

    array-length v10, v10

    add-int/2addr v8, v10

    new-array v8, v8, [B

    array-length v10, v2

    div-int/2addr v10, v9

    invoke-static {v2, v5, v8, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getHash()[B

    move-result-object v10

    array-length v2, v2

    div-int/2addr v2, v9

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getHash()[B

    move-result-object v11

    array-length v11, v11

    invoke-static {v10, v5, v8, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v1, [B

    aput-byte v9, v2, v5

    invoke-static {v2, v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v2

    array-length v8, v2

    div-int/2addr v8, v9

    add-int/2addr v8, v4

    new-array v10, v8, [B

    invoke-static {v6, v5, v10, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v2

    div-int/2addr v6, v9

    invoke-static {v2, v5, v10, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v10}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getRho()[B

    move-result-object v2

    invoke-static {v3, v2, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->updateDiffMask([B[BI)V

    new-array v2, v1, [B

    aput-byte v7, v2, v5

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v2

    array-length v3, v2

    div-int/2addr v3, v9

    add-int/2addr v3, v8

    new-array v3, v3, [B

    array-length v4, v2

    div-int/2addr v4, v9

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    div-int/2addr v2, v9

    invoke-static {v10, v5, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v1

    int-to-byte p1, p1

    new-array v1, v1, [B

    aput-byte p1, v1, v5

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getSessionKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    invoke-static {p1, v5, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getRoundedPolynomialBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    return v0
.end method
