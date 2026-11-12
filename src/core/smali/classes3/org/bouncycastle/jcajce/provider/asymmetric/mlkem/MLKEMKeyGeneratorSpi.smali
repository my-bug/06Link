.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;
.super Ljavax/crypto/KeyGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi$MLKEM1024;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi$MLKEM512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi$MLKEM768;
    }
.end annotation


# instance fields
.field private extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

.field private genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

.field private kyberParameters:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->kyberParameters:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/jcajce/provider/util/KdfUtil;->makeKeyBytes(Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;[B)[B

    move-result-object v2

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    new-instance v1, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;-><init>(Ljavax/crypto/SecretKey;[B)V

    :try_start_0
    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->destroy()V
    :try_end_0
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key cleanup failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getEncapsulation()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;->extractSecret([B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/jcajce/provider/util/KdfUtil;->makeKeyBytes(Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;[B)[B

    move-result-object v2

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    new-instance v1, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;-><init>(Ljavax/crypto/SecretKey;[B)V

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-object v1
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->random:Ljava/security/SecureRandom;

    instance-of p2, p1, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    const-string v0, "key generator locked to "

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    check-cast p1, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->kyberParameters:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    instance-of p2, p1, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    if-eqz p2, :cond_4

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    check-cast p1, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->kyberParameters:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "unknown spec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
