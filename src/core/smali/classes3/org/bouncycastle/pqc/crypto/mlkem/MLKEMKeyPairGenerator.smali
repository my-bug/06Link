.class public Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private mlkemParams:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 15

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->mlkemParams:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->generateKemKeyPair()[[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->mlkemParams:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    const/4 v5, 0x1

    aget-object v6, v0, v5

    invoke-direct {v1, v2, v4, v6}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B[B)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->mlkemParams:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    const/4 v2, 0x2

    aget-object v9, v0, v2

    const/4 v2, 0x3

    aget-object v10, v0, v2

    const/4 v2, 0x4

    aget-object v11, v0, v2

    aget-object v12, v0, v3

    aget-object v13, v0, v5

    const/4 v2, 0x5

    aget-object v14, v0, v2

    invoke-direct/range {v7 .. v14}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B[B[B[B[B[B)V

    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v0, v1, v7}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method private initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->mlkemParams:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method

.method public internalGenerateKeyPair([B[B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->mlkemParams:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->generateKemKeyPairInternal([B[B)[[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->mlkemParams:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-direct {p2, v0, v2, v4}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B[B)V

    new-instance v5, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->mlkemParams:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    const/4 v0, 0x2

    aget-object v7, p1, v0

    const/4 v0, 0x3

    aget-object v8, p1, v0

    const/4 v0, 0x4

    aget-object v9, p1, v0

    aget-object v10, p1, v1

    aget-object v11, p1, v3

    invoke-direct/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B[B[B[B[B)V

    new-instance p1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {p1, p2, v5}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object p1
.end method
