.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsECDomain;


# instance fields
.field protected final config:Lorg/bouncycastle/tls/crypto/TlsECConfig;

.field protected final crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

.field protected final domainParameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsECConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->config:Lorg/bouncycastle/tls/crypto/TlsECConfig;

    invoke-static {p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->getDomainParameters(Lorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->domainParameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    return-void
.end method

.method public static calculateECDHAgreement(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSecret;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;->getFieldSize()I

    move-result p2

    invoke-static {p2, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSecret;

    move-result-object p0

    return-object p0
.end method

.method public static getDomainParameters(I)Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .locals 7

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificCurve(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->getCurveName(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method

.method public static getDomainParameters(Lorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/TlsECConfig;->getNamedGroup()I

    move-result p0

    invoke-static {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->getDomainParameters(I)Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateECDHAgreement(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSecret;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->calculateECDHAgreement(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSecret;

    move-result-object p1

    return-object p1
.end method

.method public createECDH()Lorg/bouncycastle/tls/crypto/TlsAgreement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDH;

    invoke-direct {v0, p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDH;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;)V

    return-object v0
.end method

.method public decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->domainParameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method public decodePublicKey([B)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->domainParameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0
.end method

.method public encodePoint(Lorg/bouncycastle/math/ec/ECPoint;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    return-object p1
.end method

.method public encodePublicKey(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)[B
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->encodePoint(Lorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object p1

    return-object p1
.end method

.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->domainParameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    iget-object v3, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {v3}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method
