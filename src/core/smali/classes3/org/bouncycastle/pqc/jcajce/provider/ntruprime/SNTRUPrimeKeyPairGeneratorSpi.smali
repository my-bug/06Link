.class public Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;


# static fields
.field private static parameters:Ljava/util/Map;


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;

.field initialised:Z

.field param:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup653:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup653:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup761:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup761:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup857:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup857:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup953:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup953:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup1013:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup1013:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup1277:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup1277:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SNTRUPrime"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method private static getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->getName()Ljava/lang/String;

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

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup953:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->initialised:Z

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/BCSNTRUPrimePublicKey;

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/BCSNTRUPrimePublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;)V

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/BCSNTRUPrimePrivateKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/BCSNTRUPrimePrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;)V

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeKeyPairGeneratorSpi;->initialised:Z

    return-void

    :cond_0
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
