.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsCertificate;


# static fields
.field protected static final KU_CRL_SIGN:I = 0x6

.field protected static final KU_DATA_ENCIPHERMENT:I = 0x3

.field protected static final KU_DECIPHER_ONLY:I = 0x8

.field protected static final KU_DIGITAL_SIGNATURE:I = 0x0

.field protected static final KU_ENCIPHER_ONLY:I = 0x7

.field protected static final KU_KEY_AGREEMENT:I = 0x4

.field protected static final KU_KEY_CERT_SIGN:I = 0x5

.field protected static final KU_KEY_ENCIPHERMENT:I = 0x2

.field protected static final KU_NON_REPUDIATION:I = 0x1


# instance fields
.field protected final certificate:Ljava/security/cert/X509Certificate;

.field protected final crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

.field protected pubKeyDH:Ljavax/crypto/interfaces/DHPublicKey;

.field protected pubKeyEC:Ljava/security/interfaces/ECPublicKey;

.field protected pubKeyRSA:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/cert/X509Certificate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->pubKeyDH:Ljavax/crypto/interfaces/DHPublicKey;

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->pubKeyEC:Ljava/security/interfaces/ECPublicKey;

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->pubKeyRSA:Ljava/security/PublicKey;

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->certificate:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->parseCertificate(Lorg/bouncycastle/jcajce/util/JcaJceHelper;[B)Ljava/security/cert/X509Certificate;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public static convert(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;[B)V

    return-object v0
.end method

.method public static parseCertificate(Lorg/bouncycastle/jcajce/util/JcaJceHelper;[B)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "X.509"

    invoke-interface {p0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Extra data detected in stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/tls/crypto/TlsCryptoException;

    const-string v0, "unable to decode certificate"

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/tls/crypto/TlsCryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public checkUsageInRole(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->validateKeyUsageBit(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPubKeyEC()Ljava/security/interfaces/ECPublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->pubKeyEC:Ljava/security/interfaces/ECPublicKey;

    return-object p0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2e

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->validateKeyUsageBit(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPubKeyDH()Ljavax/crypto/interfaces/DHPublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->pubKeyDH:Ljavax/crypto/interfaces/DHPublicKey;

    return-object p0
.end method

.method public createEncryptor(I)Lorg/bouncycastle/tls/crypto/TlsEncryptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->validateKeyUsageBit(I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPubKeyRSA()Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->pubKeyRSA:Ljava/security/PublicKey;

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAEncryptor;

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->pubKeyRSA:Ljava/security/PublicKey;

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAEncryptor;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PublicKey;)V

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2e

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public createVerifier(I)Lorg/bouncycastle/tls/crypto/Tls13Verifier;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->validateKeyUsageBit(I)V

    const/16 v0, 0x201

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x203

    if-eq p1, v0, :cond_0

    const/16 v0, 0x401

    if-eq p1, v0, :cond_1

    const/16 v0, 0x403

    if-eq p1, v0, :cond_0

    const/16 v0, 0x501

    if-eq p1, v0, :cond_1

    const/16 v0, 0x503

    if-eq p1, v0, :cond_0

    const/16 v0, 0x601

    if-eq p1, v0, :cond_1

    const/16 v0, 0x603

    if-eq p1, v0, :cond_0

    const-string v0, "WITHRSAANDMGF1"

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2e

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getSignatureAlgorithm(I)S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->validateRSA_PSS_PSS(S)V

    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(I)I

    move-result p1

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getDigestName(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/RSAUtil;->getDigestSigAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/RSAUtil;->getPSSParameterSpec(ILjava/lang/String;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPubKeyRSA()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createTls13Verifier(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/PublicKey;)Lorg/bouncycastle/tls/crypto/Tls13Verifier;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    const-string v0, "Ed448"

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPubKeyEd448()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createTls13Verifier(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/PublicKey;)Lorg/bouncycastle/tls/crypto/Tls13Verifier;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    const-string v0, "Ed25519"

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPubKeyEd25519()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createTls13Verifier(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/PublicKey;)Lorg/bouncycastle/tls/crypto/Tls13Verifier;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->validateRSA_PSS_RSAE()V

    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(I)I

    move-result p1

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getDigestName(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/RSAUtil;->getDigestSigAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/RSAUtil;->getPSSParameterSpec(ILjava/lang/String;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPubKeyRSA()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createTls13Verifier(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/PublicKey;)Lorg/bouncycastle/tls/crypto/Tls13Verifier;

    move-result-object p1

    return-object p1

    :cond_0
    :pswitch_4
    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(I)I

    move-result p1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getDigestName(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/RSAUtil;->getDigestSigAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "WITHECDSA"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPubKeyEC()Ljava/security/interfaces/ECPublicKey;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createTls13Verifier(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/PublicKey;)Lorg/bouncycastle/tls/crypto/Tls13Verifier;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->validateRSA_PKCS1()V

    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(I)I

    move-result p1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getDigestName(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/RSAUtil;->getDigestSigAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "WITHRSA"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPubKeyRSA()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createTls13Verifier(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/PublicKey;)Lorg/bouncycastle/tls/crypto/Tls13Verifier;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x804
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x81a
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public createVerifier(S)Lorg/bouncycastle/tls/crypto/TlsVerifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    const/16 v1, 0x8

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->validateKeyUsageBit(I)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2e

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->validateRSA_PSS_PSS(S)V

    invoke-static {v1, p1}, Lorg/bouncycastle/tls/SignatureScheme;->from(SS)I

    move-result p1

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAPSSVerifier;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPubKeyRSA()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAPSSVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PublicKey;I)V

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->validateRSA_PSS_RSAE()V

    invoke-static {v1, p1}, Lorg/bouncycastle/tls/SignatureScheme;->from(SS)I

    move-result p1

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAPSSVerifier;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPubKeyRSA()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAPSSVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PublicKey;I)V

    return-object v0

    :pswitch_3
    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsECDSAVerifier;

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPubKeyEC()Ljava/security/interfaces/ECPublicKey;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsECDSAVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PublicKey;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSAVerifier;

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPubKeyDSS()Ljava/security/interfaces/DSAPublicKey;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSAVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PublicKey;)V

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->validateRSA_PKCS1()V

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAVerifier;

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPubKeyRSA()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PublicKey;)V

    return-object p1

    :cond_0
    invoke-static {v1, p1}, Lorg/bouncycastle/tls/SignatureScheme;->from(SS)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->createVerifier(I)Lorg/bouncycastle/tls/crypto/Tls13Verifier;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;-><init>(ILorg/bouncycastle/tls/crypto/Tls13Verifier;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tls/crypto/TlsCryptoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to encode certificate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tls/crypto/TlsCryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    return-object p1
.end method

.method public getLegacySignatureAlgorithm()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsKeyUsageBit(I)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    instance-of v1, v0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    instance-of v1, v0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    instance-of v0, v0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    return v2
.end method

.method getPubKeyDH()Ljavax/crypto/interfaces/DHPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v2, 0x2e

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1
.end method

.method getPubKeyDSS()Ljava/security/interfaces/DSAPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v2, 0x2e

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1
.end method

.method getPubKeyEC()Ljava/security/interfaces/ECPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v2, 0x2e

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1
.end method

.method getPubKeyEd25519()Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ed25519"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "EdDSA"

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method getPubKeyEd448()Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ed448"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "EdDSA"

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method getPubKeyRSA()Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method protected getPublicKey()Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v2, 0x2a

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsUtils;->requireDEREncoding(Lorg/bouncycastle/asn1/ASN1Object;[B)V

    return-object v1
.end method

.method protected getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getX509Certificate()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->certificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method protected implSupportsSignatureAlgorithm(S)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return v2

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsRSA_PSS_PSS(S)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, v0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :pswitch_1
    const-string p1, "Ed448"

    :goto_0
    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_2
    const-string p1, "Ed25519"

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsRSA_PSS_RSAE()Z

    move-result p1

    if-eqz p1, :cond_1

    instance-of p1, v0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2

    :pswitch_4
    instance-of p1, v0, Ljava/security/interfaces/ECPublicKey;

    return p1

    :pswitch_5
    instance-of p1, v0, Ljava/security/interfaces/DSAPublicKey;

    return p1

    :pswitch_6
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsRSA_PKCS1()Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, v0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected supportsKeyUsageBit(I)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-le v1, p1, :cond_0

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected supportsRSA_PKCS1()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/impl/RSAUtil;->supportsPKCS1(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    return v0
.end method

.method protected supportsRSA_PSS_PSS(S)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/crypto/impl/RSAUtil;->supportsPSS_PSS(SLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result p1

    return p1
.end method

.method protected supportsRSA_PSS_RSAE()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/impl/RSAUtil;->supportsPSS_RSAE(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    return v0
.end method

.method public supportsSignatureAlgorithm(S)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsKeyUsageBit(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->implSupportsSignatureAlgorithm(S)Z

    move-result p1

    return p1
.end method

.method public supportsSignatureAlgorithmCA(S)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->implSupportsSignatureAlgorithm(S)Z

    move-result p1

    return p1
.end method

.method protected validateKeyUsageBit(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsKeyUsageBit(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2e

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected validateRSA_PKCS1()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsRSA_PKCS1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected validateRSA_PSS_PSS(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsRSA_PSS_PSS(S)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2e

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected validateRSA_PSS_RSAE()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;->supportsRSA_PSS_RSAE()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
