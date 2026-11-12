.class public Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 13

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;->getNtrulprParams()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getP()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;->getNtrulprParams()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getQ()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;->getNtrulprParams()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getW()I

    move-result v2

    const/16 v3, 0x20

    new-array v4, v3, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v5, v0, [S

    invoke-static {v5, v4, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->generatePolynomialInRQFromSeed([S[BII)V

    new-array v6, v0, [B

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-static {v7, v6, v0, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomShortPolynomial(Ljava/security/SecureRandom;[BII)V

    new-array v2, v0, [S

    invoke-static {v2, v5, v6, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    new-array v5, v0, [S

    invoke-static {v5, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->roundPolynomial([S[S)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;->getNtrulprParams()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getPublicKeyBytes()I

    move-result v2

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-static {v2, v5, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedEncodedPolynomial([B[SII)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;->getNtrulprParams()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v5

    invoke-direct {v1, v5, v4, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;[B[B)V

    add-int/lit8 v2, v0, 0x3

    const/4 v4, 0x4

    div-int/2addr v2, v4

    new-array v9, v2, [B

    invoke-static {v9, v6, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedSmallPolynomial([B[BI)V

    new-array v11, v3, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte v4, v0, v2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;->getEncoded()[B

    move-result-object v3

    invoke-static {v0, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v0

    new-instance v7, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;->getNtrulprParams()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v8

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;->getEncoded()[B

    move-result-object v10

    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;[B[B[B[B)V

    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v0, v1, v7}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public getParams()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    return-void
.end method
