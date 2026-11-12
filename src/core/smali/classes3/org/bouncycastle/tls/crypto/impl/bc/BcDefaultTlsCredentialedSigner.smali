.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedSigner;
.super Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V
    .locals 0

    invoke-static {p2, p3, p4, p5}, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedSigner;->makeSigner(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/crypto/TlsSigner;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4, p5}, Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;-><init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/TlsSigner;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V

    return-void
.end method

.method private static makeSigner(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/crypto/TlsSigner;
    .locals 0

    instance-of p2, p1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz p3, :cond_0

    invoke-static {p3}, Lorg/bouncycastle/tls/SignatureScheme;->from(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)I

    move-result p2

    invoke-static {p2}, Lorg/bouncycastle/tls/SignatureScheme;->isRSAPSS(I)Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAPSSSigner;

    invoke-direct {p3, p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAPSSSigner;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/RSAKeyParameters;I)V

    return-object p3

    :cond_0
    new-instance p2, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSASigner;

    invoke-direct {p2, p0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSASigner;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/RSAKeyParameters;)V

    return-object p2

    :cond_1
    instance-of p2, p1, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    if-eqz p2, :cond_2

    new-instance p2, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDSASigner;

    check-cast p1, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-direct {p2, p0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDSASigner;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;)V

    return-object p2

    :cond_2
    instance-of p2, p1, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz p3, :cond_3

    invoke-static {p3}, Lorg/bouncycastle/tls/SignatureScheme;->from(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)I

    move-result p2

    invoke-static {p2}, Lorg/bouncycastle/tls/SignatureScheme;->isECDSA(I)Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSA13Signer;

    invoke-direct {p3, p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSA13Signer;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;I)V

    return-object p3

    :cond_3
    new-instance p2, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSASigner;

    invoke-direct {p2, p0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSASigner;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)V

    return-object p2

    :cond_4
    instance-of p2, p1, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    if-eqz p2, :cond_5

    new-instance p2, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsEd25519Signer;

    check-cast p1, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    invoke-direct {p2, p0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsEd25519Signer;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;)V

    return-object p2

    :cond_5
    instance-of p2, p1, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    if-eqz p2, :cond_6

    new-instance p2, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsEd448Signer;

    check-cast p1, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    invoke-direct {p2, p0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsEd448Signer;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;)V

    return-object p2

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\'privateKey\' type not supported: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
