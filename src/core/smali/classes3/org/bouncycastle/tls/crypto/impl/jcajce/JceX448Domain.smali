.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX448Domain;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsECDomain;


# instance fields
.field protected final crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX448Domain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    return-void
.end method


# virtual methods
.method public calculateECDHAgreement(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX448Domain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    const-string v1, "X448"

    const-string v2, "TlsPremasterSecret"

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->calculateKeyAgreement(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    array-length p2, p1

    const/16 v0, 0x38

    if-ne p2, v0, :cond_1

    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/util/Arrays;->areAllZeroes([BII)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX448Domain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x28

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/crypto/TlsCryptoException;

    const-string p2, "invalid secret calculated"

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/crypto/TlsCryptoException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/tls/crypto/TlsCryptoException;

    const-string v0, "cannot calculate secret"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tls/crypto/TlsCryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createECDH()Lorg/bouncycastle/tls/crypto/TlsAgreement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX448;

    invoke-direct {v0, p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX448;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX448Domain;)V

    return-object v0
.end method

.method public decodePublicKey([B)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX448Domain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    const-string v1, "X448"

    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v2, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/XDHUtil;->decodePublicKey(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method public encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/XDHUtil;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object p1

    return-object p1
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX448Domain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v0

    const-string v1, "X448"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX448Domain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    const/16 v2, 0x1c0

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to create key pair: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method
