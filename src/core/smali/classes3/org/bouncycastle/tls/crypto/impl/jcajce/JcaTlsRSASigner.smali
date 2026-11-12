.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsSigner;


# instance fields
.field private final crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

.field private final privateKey:Ljava/security/PrivateKey;

.field private rawSigner:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->rawSigner:Ljava/security/Signature;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->privateKey:Ljava/security/PrivateKey;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "privateKey"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "crypto"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PrivateKey;)V

    return-void
.end method


# virtual methods
.method public generateRawSignature(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Invalid algorithm: "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->getRawSigner()Ljava/security/Signature;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->getOIDForHashAlgorithm(S)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, p1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getEncoded()[B

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    array-length p1, p2

    const/4 v0, 0x0

    invoke-virtual {v2, p2, v0, p1}, Ljava/security/Signature;->update([BII)V

    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->rawSigner:Ljava/security/Signature;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iput-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->rawSigner:Ljava/security/Signature;

    throw p1
.end method

.method protected getRawSigner()Ljava/security/Signature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->rawSigner:Ljava/security/Signature;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v0

    const-string v1, "NoneWithRSA"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->rawSigner:Ljava/security/Signature;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->privateKey:Ljava/security/PrivateKey;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->rawSigner:Ljava/security/Signature;

    return-object v0
.end method

.method public getStreamSigner(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/crypto/TlsStreamSigner;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaUtils;->isSunMSCAPIProviderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->isSunMSCAPIRawSigner()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, p1, v2, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createStreamSigner(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;Ljava/security/PrivateKey;Z)Lorg/bouncycastle/tls/crypto/TlsStreamSigner;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected isSunMSCAPIRawSigner()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSASigner;->getRawSigner()Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaUtils;->isSunMSCAPIProvider(Ljava/security/Provider;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method
