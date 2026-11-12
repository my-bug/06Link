.class public Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private dilithiumParams:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->dilithiumParams:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->generateKeyPair()[[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->dilithiumParams:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    const/4 v6, 0x6

    aget-object v7, v1, v6

    invoke-direct {v2, v3, v5, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[B[B)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->dilithiumParams:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

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

    invoke-direct/range {v8 .. v16}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[B[B[B[B[B[B[B)V

    new-instance v1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v1, v2, v8}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v1
.end method

.method private initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->dilithiumParams:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method

.method public internalGenerateKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->dilithiumParams:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->generateKeyPairInternal([B)[[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->dilithiumParams:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    const/4 v6, 0x6

    aget-object v7, v1, v6

    invoke-direct {v2, v3, v5, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[B[B)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->dilithiumParams:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

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

    invoke-direct/range {v8 .. v16}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[B[B[B[B[B[B[B)V

    new-instance v1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v1, v2, v8}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v1
.end method
