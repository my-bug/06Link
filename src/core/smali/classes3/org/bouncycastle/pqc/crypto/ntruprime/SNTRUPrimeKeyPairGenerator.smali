.class public Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 14

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getSntrupParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getP()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getSntrupParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getQ()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getSntrupParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getW()I

    move-result v2

    new-array v3, v0, [B

    new-array v4, v0, [B

    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomSmallPolynomial(Ljava/security/SecureRandom;[B)V

    invoke-static {v3, v4, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->isInvertiblePolynomialInR3([B[BI)Z

    move-result v5

    if-eqz v5, :cond_0

    new-array v5, v0, [B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-static {v6, v5, v0, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomShortPolynomial(Ljava/security/SecureRandom;[BII)V

    new-array v2, v0, [S

    invoke-static {v2, v5, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getOneThirdInverseInRQ([S[BII)V

    new-array v6, v0, [S

    invoke-static {v6, v2, v3, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getSntrupParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getPublicKeyBytes()I

    move-result v2

    new-array v11, v2, [B

    invoke-static {v11, v6, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedPolynomial([B[SII)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getSntrupParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;[B)V

    add-int/lit8 v2, v0, 0x3

    const/4 v3, 0x4

    div-int/2addr v2, v3

    new-array v9, v2, [B

    invoke-static {v9, v5, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedSmallPolynomial([B[BI)V

    new-array v10, v2, [B

    invoke-static {v10, v4, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedSmallPolynomial([B[BI)V

    new-array v12, v2, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte v3, v0, v2

    invoke-static {v0, v11}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v0

    new-instance v7, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getSntrupParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v8

    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;[B[B[B[B[B)V

    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v0, v1, v7}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public getParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    return-void
.end method
