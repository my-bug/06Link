.class public Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 11

    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getP()I

    move-result v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getQ()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getW()I

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getRoundedPolynomialBytes()I

    move-result v4

    const/4 v5, 0x1

    new-array v6, v5, [B

    const/4 v7, 0x0

    const/4 v8, 0x4

    aput-byte v8, v6, v7

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;->getEncoded()[B

    move-result-object v9

    invoke-static {v6, v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v6

    new-array v9, v1, [B

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v10, v9, v1, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomShortPolynomial(Ljava/security/SecureRandom;[BII)V

    add-int/lit8 v3, v1, 0x3

    div-int/2addr v3, v8

    new-array v3, v3, [B

    invoke-static {v3, v9, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedSmallPolynomial([B[BI)V

    new-array v8, v1, [S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;->getEncH()[B

    move-result-object p1

    invoke-static {v8, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getDecodedPolynomial([S[BII)V

    new-array p1, v1, [S

    invoke-static {p1, v8, v9, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    new-array v8, v1, [S

    invoke-static {v8, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->roundPolynomial([S[S)V

    new-array p1, v4, [B

    invoke-static {p1, v8, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedEncodedPolynomial([B[SII)V

    new-array v1, v5, [B

    const/4 v2, 0x3

    aput-byte v2, v1, v7

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v1

    array-length v8, v1

    const/4 v9, 0x2

    div-int/2addr v8, v9

    array-length v10, v6

    div-int/2addr v10, v9

    add-int/2addr v8, v10

    new-array v8, v8, [B

    array-length v10, v1

    div-int/2addr v10, v9

    invoke-static {v1, v7, v8, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    div-int/2addr v1, v9

    array-length v10, v6

    div-int/2addr v10, v9

    invoke-static {v6, v7, v8, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v5, [B

    aput-byte v9, v1, v7

    invoke-static {v1, v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v1

    array-length v6, v1

    div-int/2addr v6, v9

    add-int/2addr v6, v4

    new-array v8, v6, [B

    invoke-static {p1, v7, v8, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v1

    div-int/2addr p1, v9

    invoke-static {v1, v7, v8, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v5, [B

    aput-byte v2, p1, v7

    invoke-static {p1, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object p1

    array-length v1, p1

    div-int/2addr v1, v9

    add-int/2addr v1, v6

    new-array v1, v1, [B

    array-length v2, p1

    div-int/2addr v2, v9

    invoke-static {p1, v7, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    div-int/2addr p1, v9

    invoke-static {v8, v7, v1, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v5, [B

    aput-byte v5, p1, v7

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getSessionKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    invoke-static {p1, v7, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-direct {v0, p1, v8}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v0
.end method
