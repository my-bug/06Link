.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi$Hash;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi$MLDSA44;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi$MLDSA44withSHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi$MLDSA65;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi$MLDSA65withSHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi$MLDSA87;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi$MLDSA87withSHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi$Pure;
    }
.end annotation


# static fields
.field private static parameters:Ljava/util/Map;


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;

.field initialised:Z

.field private final mldsaParameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

.field param:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->ml_dsa_44:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_44:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->ml_dsa_65:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_65:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->ml_dsa_87:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_87:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->ml_dsa_44_with_sha512:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_44_with_sha512:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->ml_dsa_65_with_sha512:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_65_with_sha512:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->ml_dsa_87_with_sha512:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_87_with_sha512:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->initialised:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->mldsaParameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->initialised:Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->mldsaParameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method private static getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

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

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HASH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_87_with_sha512:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_87:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->initialised:Z

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    invoke-direct {v3, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;)V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;)V

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

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-direct {v1, p2, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->mldsaParameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->mldsaParameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getName()Ljava/lang/String;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->mldsaParameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyGenerationParameters;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyPairGeneratorSpi;->initialised:Z

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
