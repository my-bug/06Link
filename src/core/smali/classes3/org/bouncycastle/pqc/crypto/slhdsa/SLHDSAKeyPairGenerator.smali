.class public Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private parameters:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private implGenerateKeyPair(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;[B[B[B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SK;

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SK;-><init>([B[B)V

    invoke-virtual {p1, p4}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->init([B)V

    new-instance p2, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    new-instance p3, Lorg/bouncycastle/pqc/crypto/slhdsa/HT;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SK;->seed:[B

    invoke-direct {p3, p1, v1, p4}, Lorg/bouncycastle/pqc/crypto/slhdsa/HT;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;[B[B)V

    iget-object p1, p3, Lorg/bouncycastle/pqc/crypto/slhdsa/HT;->htPubKey:[B

    invoke-direct {p2, p4, p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;-><init>([B[B)V

    new-instance p1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance p3, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-direct {p3, p4, p2}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;Lorg/bouncycastle/pqc/crypto/slhdsa/PK;)V

    new-instance p4, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-direct {p4, v1, v0, p2}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;Lorg/bouncycastle/pqc/crypto/slhdsa/SK;Lorg/bouncycastle/pqc/crypto/slhdsa/PK;)V

    invoke-direct {p1, p3, p4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object p1
.end method

.method private sec_rand(I)[B
    .locals 1

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    move-result-object v0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->N:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->sec_rand(I)[B

    move-result-object v1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->N:I

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->sec_rand(I)[B

    move-result-object v2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->N:I

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->sec_rand(I)[B

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->implGenerateKeyPair(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;[B[B[B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->random:Ljava/security/SecureRandom;

    check-cast p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    return-void
.end method

.method public internalGenerateKeyPair([B[B[B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyPairGenerator;->implGenerateKeyPair(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;[B[B[B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p1

    return-object p1
.end method
