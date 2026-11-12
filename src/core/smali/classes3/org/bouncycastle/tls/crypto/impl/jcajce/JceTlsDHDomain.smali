.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsDHDomain;


# instance fields
.field protected final crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

.field protected final dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

.field protected final dhSpec:Ljavax/crypto/spec/DHParameterSpec;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsDHConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsDHUtils;->getDHGroup(Lorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/crypto/DHGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/DHUtil;->getDHParameterSpec(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/DHGroup;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No DH configuration provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static calculateDHAgreement(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljavax/crypto/interfaces/DHPrivateKey;Ljavax/crypto/interfaces/DHPublicKey;Z)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "DiffieHellman"

    const-string v1, "TlsPremasterSecret"

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->calculateKeyAgreement(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->getValueLength(Ljavax/crypto/spec/DHParameterSpec;)I

    move-result p1

    new-array p3, p1, [B

    array-length v0, p2

    sub-int/2addr p1, v0

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    move-object p2, p3

    :cond_0
    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/tls/crypto/TlsCryptoException;

    const-string p2, "cannot calculate secret"

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/tls/crypto/TlsCryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static encodeValue(Ljavax/crypto/spec/DHParameterSpec;ZLjava/math/BigInteger;)[B
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->getValueLength(Ljavax/crypto/spec/DHParameterSpec;)I

    move-result p0

    invoke-static {p0, p2}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getValueLength(Ljavax/crypto/spec/DHParameterSpec;)I
    .locals 0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method


# virtual methods
.method public calculateDHAgreement(Ljavax/crypto/interfaces/DHPrivateKey;Ljavax/crypto/interfaces/DHPublicKey;)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/crypto/TlsDHConfig;->isPadded()Z

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->calculateDHAgreement(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljavax/crypto/interfaces/DHPrivateKey;Ljavax/crypto/interfaces/DHPublicKey;Z)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    move-result-object p1

    return-object p1
.end method

.method public createDH()Lorg/bouncycastle/tls/crypto/TlsAgreement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDH;

    invoke-direct {v0, p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDH;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;)V

    return-object v0
.end method

.method public decodeParameter([B)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/TlsDHConfig;->isPadded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->getValueLength(Ljavax/crypto/spec/DHParameterSpec;)I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public decodePublicKey([B)Ljavax/crypto/interfaces/DHPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->decodeParameter([B)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/DHUtil;->createPublicKeySpec(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/spec/KeySpec;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v0

    const-string v1, "DiffieHellman"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1
.end method

.method public encodeParameter(Ljava/math/BigInteger;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/crypto/TlsDHConfig;->isPadded()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->encodeValue(Ljavax/crypto/spec/DHParameterSpec;ZLjava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodePublicKey(Ljavax/crypto/interfaces/DHPublicKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    const/4 v1, 0x1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->encodeValue(Ljavax/crypto/spec/DHParameterSpec;ZLjava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v0

    const-string v1, "DiffieHellman"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tls/crypto/TlsCryptoException;

    const-string v2, "unable to create key pair"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tls/crypto/TlsCryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
