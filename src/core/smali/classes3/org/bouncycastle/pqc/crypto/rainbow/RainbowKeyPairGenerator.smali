.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private rkc:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;

.field private version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;Ljava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rkc:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 2

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator$1;->$SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version:[I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rkc:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->genKeyPairCompressed()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No valid version. Please choose one of the following: classic, circumzenithal, compressed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rkc:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->genKeyPairCircumzenithal()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rkc:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->genKeyPairClassical()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method
