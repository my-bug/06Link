.class Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;
.super Ljava/lang/Object;


# instance fields
.field private final params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

.field private final sampling:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->sampling:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;

    return-void
.end method

.method private checkCiphertext([B)I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-byte p1, p1, v0

    int-to-short p1, p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v1

    mul-int v0, v0, v1

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    shl-int v0, v1, v0

    and-int/2addr p1, v0

    int-to-short p1, p1

    xor-int/lit8 p1, p1, -0x1

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p1, p1, 0xf

    and-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private checkM(Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    aget-short v3, v3, v0

    and-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    int-to-short v1, v1

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    aget-short v3, v3, v0

    and-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-short v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, v2, 0x1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    check-cast v0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->weight()I

    move-result v0

    xor-int/2addr v0, v2

    or-int/2addr p1, v0

    xor-int/lit8 p1, p1, -0x1

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p1, p1, 0x1f

    and-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private checkR(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v2, v2, v0

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-short p1, p1, v0

    or-int/2addr p1, v1

    xor-int/lit8 p1, p1, -0x1

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p1, p1, 0x1f

    and-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public decrypt([B[B)Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaMsgBytes()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v5

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqSumZeroFromBytes([B)V

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3FromBytes([B)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->z3ToZq()V

    invoke-virtual {v4, v2, v3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqToS3(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v6

    array-length v7, p2

    invoke-static {p2, v6, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3FromBytes([B)V

    invoke-virtual {v5, v3, v4}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3Mul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3ToBytes(I)[B

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->checkCiphertext([B)I

    move-result p1

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    instance-of v6, v6, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    invoke-direct {p0, v6}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->checkM(Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;)I

    move-result v6

    or-int/2addr p1, v6

    :cond_0
    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->lift(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v8

    if-ge v7, v8, :cond_1

    iget-object v8, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v9, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v9, v9, v7

    iget-object v10, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v10, v10, v7

    sub-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    array-length v7, p2

    invoke-static {p2, v3, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    invoke-virtual {v4, p2}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->sqFromBytes([B)V

    invoke-virtual {v5, v2, v4}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->sqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    invoke-direct {p0, v5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->checkR(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)I

    move-result p2

    or-int/2addr p1, p2

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->trinaryZqToZ3()V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaMsgBytes()I

    move-result p2

    invoke-virtual {v5, p2}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3ToBytes(I)[B

    move-result-object p2

    array-length v2, p2

    invoke-static {p2, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result p2

    array-length v2, v0

    invoke-static {v0, v6, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;

    invoke-direct {p2, v1, p1}, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;-><init>([BI)V

    return-object p2
.end method

.method public encrypt(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;[B)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v1

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqSumZeroFromBytes([B)V

    invoke-virtual {v1, p1, v0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->lift(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short p3, p2, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v2, v2, p1

    add-int/2addr p3, v2

    int-to-short p3, p3

    aput-short p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqSumZeroToBytes(I)[B

    move-result-object p1

    return-object p1
.end method

.method public keypair([B)Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaSecretKeyBytes()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->sampling:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;

    invoke-virtual {v6, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleFg([B)Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->f()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->g()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object p1

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaMsgBytes()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3ToBytes(I)[B

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v7

    sub-int v7, v0, v7

    invoke-virtual {v3, v7}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3ToBytes(I)[B

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v8

    array-length v10, v7

    invoke-static {v7, v9, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->z3ToZq()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->z3ToZq()V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    instance-of v7, v7, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;

    if-eqz v7, :cond_1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lez v2, :cond_0

    iget-object v7, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v8, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v10, v2, -0x1

    aget-short v8, v8, v10

    iget-object v10, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v10, v10, v2

    sub-int/2addr v8, v10

    mul-int/lit8 v8, v8, 0x3

    int-to-short v8, v8

    aput-short v8, v7, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v7, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v7, v9

    mul-int/lit8 v7, v7, 0x3

    neg-int v7, v7

    int-to-short v7, v7

    aput-short v7, v2, v9

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_2

    iget-object v8, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v10, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v10, v10, v7

    mul-int/lit8 v10, v10, 0x3

    int-to-short v10, v10

    aput-short v10, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v3, p1, v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqInv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    invoke-virtual {v5, v4, v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->sqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->sqToBytes(I)[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    array-length v6, v0

    invoke-static {v0, v9, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5, v4, p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    invoke-virtual {v3, v5, p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaPublicKeyBytes()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqSumZeroToBytes(I)[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;-><init>([B[B)V

    return-object v0
.end method
