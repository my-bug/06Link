.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private logn:I

.field private nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

.field private noncelen:I

.field private params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

.field private pk_size:I

.field private random:Ljava/security/SecureRandom;

.field private sk_size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 10

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->pk_size:I

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->sk_size:I

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->crypto_sign_keypair([BI[BI)[[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v5

    new-instance v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    const/4 v1, 0x1

    aget-object v6, v0, v1

    const/4 v1, 0x2

    aget-object v7, v0, v1

    const/4 v1, 0x3

    aget-object v8, v0, v1

    aget-object v9, v0, v3

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B[B[B[B)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    aget-object v0, v0, v3

    invoke-direct {v1, v5, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B)V

    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v0, v1, v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->logn:I

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getNonceLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->noncelen:I

    new-instance p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->logn:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->noncelen:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;-><init>(IILjava/security/SecureRandom;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->logn:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    const/16 v1, 0x400

    const/16 v2, 0x8

    if-ne p1, v1, :cond_0

    const/4 v1, 0x5

    goto :goto_2

    :cond_0
    const/16 v1, 0x100

    if-eq p1, v1, :cond_4

    const/16 v1, 0x200

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x40

    if-eq p1, v1, :cond_3

    const/16 v1, 0x80

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v1, 0x7

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x6

    :goto_2
    mul-int/lit8 v3, p1, 0xe

    div-int/2addr v3, v2

    add-int/2addr v3, v0

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->pk_size:I

    mul-int/lit8 v1, v1, 0x2

    mul-int v1, v1, p1

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->sk_size:I

    return-void
.end method
