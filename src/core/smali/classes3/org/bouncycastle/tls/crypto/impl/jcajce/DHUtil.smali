.class Lorg/bouncycastle/tls/crypto/impl/jcajce/DHUtil;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createInitSpec(Lorg/bouncycastle/tls/crypto/DHGroup;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 4

    new-instance v0, Lorg/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/DHGroup;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/DHGroup;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/DHGroup;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/DHGroup;->getL()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method static createPublicKeySpec(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/spec/KeySpec;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/spec/DHExtendedPublicKeySpec;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/spec/DHExtendedPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    return-object v0
.end method

.method static getAlgorithmParameters(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/AlgorithmParameters;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object p0

    const-string v0, "DiffieHellman"

    invoke-interface {p0, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    const-class p1, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0, p1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getAlgorithmParameters(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/DHGroup;)Ljava/security/AlgorithmParameters;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/DHUtil;->createInitSpec(Lorg/bouncycastle/tls/crypto/DHGroup;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/DHUtil;->getAlgorithmParameters(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    return-object p0
.end method

.method static getDHParameterSpec(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/spec/DHParameterSpec;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object p0

    const-string v0, "DiffieHellman"

    invoke-interface {p0, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    const-class p1, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0, p1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    check-cast p0, Ljavax/crypto/spec/DHParameterSpec;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getDHParameterSpec(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/DHGroup;)Ljavax/crypto/spec/DHParameterSpec;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/DHUtil;->createInitSpec(Lorg/bouncycastle/tls/crypto/DHGroup;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/DHUtil;->getDHParameterSpec(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method static getQ(Ljavax/crypto/spec/DHParameterSpec;)Ljava/math/BigInteger;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static isGroupSupported(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/DHGroup;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/DHUtil;->getDHParameterSpec(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/DHGroup;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
