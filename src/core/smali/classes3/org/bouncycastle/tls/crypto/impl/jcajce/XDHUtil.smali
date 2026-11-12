.class Lorg/bouncycastle/tls/crypto/impl/jcajce/XDHUtil;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createX509EncodedKeySpec(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Ljava/security/spec/X509EncodedKeySpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object p1
.end method

.method static decodePublicKey(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tls/TlsFatalAlert;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/KeyFactory;->getProvider()Ljava/security/Provider;

    move-result-object p1

    instance-of p1, p1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    :try_start_1
    new-instance p1, Lorg/bouncycastle/jcajce/spec/RawEncodedKeySpec;

    invoke-direct {p1, p3}, Lorg/bouncycastle/jcajce/spec/RawEncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    :cond_0
    :try_start_2
    invoke-static {p2, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/XDHUtil;->createX509EncodedKeySpec(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Ljava/security/spec/X509EncodedKeySpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x2f

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p1
.end method

.method static encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tls/TlsFatalAlert;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/jcajce/interfaces/XDHPublicKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jcajce/interfaces/XDHPublicKey;

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/interfaces/XDHPublicKey;->getUEncoding()[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "X.509"

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x50

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string v0, "Public key format unrecognized"

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0
.end method
