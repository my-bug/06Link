.class public Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private parameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->generateKeyPair()[[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    const/4 v6, 0x6

    aget-object v7, v1, v6

    invoke-direct {v2, v3, v5, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B[B)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    aget-object v10, v1, v4

    const/4 v3, 0x1

    aget-object v11, v1, v3

    const/4 v3, 0x2

    aget-object v12, v1, v3

    const/4 v3, 0x3

    aget-object v13, v1, v3

    const/4 v3, 0x4

    aget-object v14, v1, v3

    const/4 v3, 0x5

    aget-object v15, v1, v3

    aget-object v16, v1, v6

    const/4 v3, 0x7

    aget-object v17, v1, v3

    invoke-direct/range {v8 .. v17}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B[B[B[B[B[B[B[B)V

    new-instance v1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v1, v2, v8}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v1
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method
