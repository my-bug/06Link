.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi$MLKEM1024;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi$MLKEM512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi$MLKEM768;
    }
.end annotation


# static fields
.field private static parameters:Ljava/util/Map;


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;

.field initialised:Z

.field private kyberParameters:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

.field param:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->ml_kem_512:Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_512:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->ml_kem_768:Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_768:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->ml_kem_1024:Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_1024:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "ML-KEM"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->initialised:Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->kyberParameters:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

    if-nez p1, :cond_0

    new-instance p1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->kyberParameters:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method private static getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->getNameFrom(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_768:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->initialised:Z

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;

    invoke-direct {v3, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;)V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "use AlgorithmParameterSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    if-eqz v0, :cond_2

    new-instance p1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->kyberParameters:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->kyberParameters:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "key pair generator locked to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;->initialised:Z

    return-void

    :cond_2
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid ParameterSpec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
