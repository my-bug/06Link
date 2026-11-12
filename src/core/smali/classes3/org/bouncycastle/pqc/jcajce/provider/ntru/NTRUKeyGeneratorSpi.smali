.class public Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;
.super Ljavax/crypto/KeyGeneratorSpi;


# instance fields
.field private extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

.field private genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/BCNTRUPublicKey;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;

    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/ntru/BCNTRUPublicKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->getKeySize()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    new-instance v2, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;-><init>(Ljavax/crypto/SecretKey;[B)V

    :try_start_0
    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->destroy()V
    :try_end_0
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key cleanup failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/BCNTRUPrivateKey;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/ntru/BCNTRUPrivateKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getEncapsulation()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->extractSecret([B)[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getKeySize()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    new-instance v2, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;-><init>(Ljavax/crypto/SecretKey;[B)V

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-object v2
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->random:Ljava/security/SecureRandom;

    instance-of p2, p1, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    return-void

    :cond_0
    instance-of p2, p1, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    if-eqz p2, :cond_1

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    check-cast p1, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "unknown spec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
