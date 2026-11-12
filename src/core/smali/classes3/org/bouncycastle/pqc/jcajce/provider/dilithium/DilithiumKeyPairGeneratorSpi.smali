.class public Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi$Base2;,
        Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi$Base3;,
        Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi$Base5;
    }
.end annotation


# static fields
.field private static parameters:Ljava/util/Map;


# instance fields
.field private final dilithiumParameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

.field engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;

.field initialised:Z

.field param:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->dilithium2:Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->dilithium2:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->dilithium3:Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->dilithium3:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->dilithium5:Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->dilithium5:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "DILITHIUM"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->initialised:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->dilithiumParameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->initialised:Z

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->dilithiumParameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    return-void
.end method

.method private static getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->getName()Ljava/lang/String;

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

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->dilithiumParameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->dilithiumParameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->dilithium3:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyGenerationParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->initialised:Z

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;)V

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;)V

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

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyGenerationParameters;

    invoke-direct {v0, p2, p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyGenerationParameters;

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->dilithiumParameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->dilithiumParameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->getName()Ljava/lang/String;

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

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->dilithiumParameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyGenerationParameters;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;->initialised:Z

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
