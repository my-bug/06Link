.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsCertificate;


# instance fields
.field protected final crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

.field protected final keyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field protected pubKeyDH:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

.field protected pubKeyEC:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field protected pubKeyEd25519:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

.field protected pubKeyEd448:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

.field protected pubKeyRSA:Lorg/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->pubKeyDH:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->pubKeyEC:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->pubKeyEd25519:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->pubKeyEd448:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->pubKeyRSA:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->keyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;[B)V
    .locals 0

    invoke-static {p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-void
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

    const/16 v1, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->validateKeyUsage(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPubKeyEC()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->pubKeyEC:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object p0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2e

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->validateKeyUsage(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPubKeyDH()Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->pubKeyDH:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    return-object p0
.end method

.method public createEncryptor(I)Lorg/bouncycastle/tls/crypto/TlsEncryptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->validateKeyUsage(I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPubKeyRSA()Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->pubKeyRSA:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAEncryptor;

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->pubKeyRSA:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAEncryptor;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/RSAKeyParameters;)V

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

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->validateKeyUsage(I)V

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

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2e

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getSignatureAlgorithm(I)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->validateRSA_PSS_PSS(S)V

    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(I)I

    move-result p1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->createDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/signers/PSSSigner;

    new-instance v2, Lorg/bouncycastle/crypto/engines/RSAEngine;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/RSAEngine;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    invoke-direct {v0, v2, p1, v3}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPubKeyRSA()Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lorg/bouncycastle/crypto/signers/Ed448Signer;

    sget-object v0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/signers/Ed448Signer;-><init>([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPubKeyEd448()Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/crypto/signers/Ed448Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    return-object v0

    :pswitch_2
    new-instance p1, Lorg/bouncycastle/crypto/signers/Ed25519Signer;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/signers/Ed25519Signer;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPubKeyEd25519()Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->validateRSA_PSS_RSAE()V

    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(I)I

    move-result p1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->createDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/signers/PSSSigner;

    new-instance v2, Lorg/bouncycastle/crypto/engines/RSAEngine;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/RSAEngine;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    invoke-direct {v0, v2, p1, v3}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPubKeyRSA()Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    return-object p1

    :cond_0
    :pswitch_4
    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(I)I

    move-result p1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->createDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    new-instance v2, Lorg/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    invoke-direct {v0, v2, p1}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPubKeyEC()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/bouncycastle/crypto/Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->validateRSA_PKCS1()V

    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(I)I

    move-result p1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->createDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/crypto/signers/RSADigestSigner;

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->getOIDForHash(I)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lorg/bouncycastle/crypto/signers/RSADigestSigner;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPubKeyRSA()Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lorg/bouncycastle/crypto/signers/RSADigestSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;-><init>(Lorg/bouncycastle/crypto/Signer;)V

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

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->validateKeyUsage(I)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2e

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->validateRSA_PSS_PSS(S)V

    invoke-static {v1, p1}, Lorg/bouncycastle/tls/SignatureScheme;->from(SS)I

    move-result p1

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAPSSVerifier;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPubKeyRSA()Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAPSSVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/RSAKeyParameters;I)V

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->validateRSA_PSS_RSAE()V

    invoke-static {v1, p1}, Lorg/bouncycastle/tls/SignatureScheme;->from(SS)I

    move-result p1

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAPSSVerifier;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPubKeyRSA()Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAPSSVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/RSAKeyParameters;I)V

    return-object v0

    :pswitch_3
    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSAVerifier;

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPubKeyEC()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSAVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDSAVerifier;

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPubKeyDSS()Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDSAVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;)V

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->validateRSA_PKCS1()V

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAVerifier;

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPubKeyRSA()Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/RSAKeyParameters;)V

    return-object p1

    :cond_0
    invoke-static {v1, p1}, Lorg/bouncycastle/tls/SignatureScheme;->from(SS)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->createVerifier(I)Lorg/bouncycastle/tls/crypto/Tls13Verifier;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/tls/crypto/impl/LegacyTls13Verifier;-><init>(ILorg/bouncycastle/tls/crypto/Tls13Verifier;)V

    return-object v1

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->keyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLegacySignatureAlgorithm()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPublicKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->supportsKeyUsage(I)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    instance-of v0, v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    return v2

    :cond_4
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public getPubKeyDH()Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPublicKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;
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

.method public getPubKeyDSS()Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPublicKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;
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

.method public getPubKeyEC()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPublicKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
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

.method public getPubKeyEd25519()Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPublicKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;
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

.method public getPubKeyEd448()Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPublicKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;
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

.method public getPubKeyRSA()Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPublicKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;
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

.method protected getPublicKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->keyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v2, 0x2b

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSigAlgParams()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->keyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method protected supportsKeyUsage(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected supportsRSA_PKCS1()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->keyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/impl/RSAUtil;->supportsPKCS1(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    return v0
.end method

.method protected supportsRSA_PSS_PSS(S)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->keyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/crypto/impl/RSAUtil;->supportsPSS_PSS(SLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result p1

    return p1
.end method

.method protected supportsRSA_PSS_RSAE()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->keyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/impl/RSAUtil;->supportsPSS_RSAE(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    return v0
.end method

.method public supportsSignatureAlgorithm(S)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->supportsSignatureAlgorithm(SI)Z

    move-result p1

    return p1
.end method

.method protected supportsSignatureAlgorithm(SI)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->supportsKeyUsage(I)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->getPublicKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return v0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->supportsRSA_PSS_PSS(S)Z

    move-result p1

    if-eqz p1, :cond_1

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v0

    :pswitch_1
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    return p1

    :pswitch_2
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    return p1

    :pswitch_3
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->supportsRSA_PSS_RSAE()Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    :pswitch_4
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return p1

    :pswitch_5
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    return p1

    :pswitch_6
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->supportsRSA_PKCS1()Z

    move-result p1

    if-eqz p1, :cond_3

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

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

.method public supportsSignatureAlgorithmCA(S)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->supportsSignatureAlgorithm(SI)Z

    move-result p1

    return p1
.end method

.method public validateKeyUsage(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->supportsKeyUsage(I)Z

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

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->supportsRSA_PKCS1()Z

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

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->supportsRSA_PSS_PSS(S)Z

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

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRawKeyCertificate;->supportsRSA_PSS_RSAE()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
