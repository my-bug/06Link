.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;
.super Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;


# instance fields
.field protected final certificate:Lorg/bouncycastle/asn1/x509/Certificate;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/asn1/x509/Certificate;)V
    .locals 1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;->certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;->parseCertificate([B)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-void
.end method

.method public static convert(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;[B)V

    return-object v0
.end method

.method public static parseCertificate([B)Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x2a

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getCertificate()Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;->certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;->certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;->certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;->certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;->certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;->certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method protected supportsKeyUsage(I)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;->certificate:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/KeyUsage;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/KeyUsage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/KeyUsage;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
