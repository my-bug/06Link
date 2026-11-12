.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedDecryptor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsCredentialedDecryptor;


# instance fields
.field protected certificate:Lorg/bouncycastle/tls/Certificate;

.field protected crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

.field protected privateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p3, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedDecryptor;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedDecryptor;->certificate:Lorg/bouncycastle/tls/Certificate;

    iput-object p3, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedDecryptor;->privateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\'privateKey\' type not supported: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'privateKey\' must be private"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'privateKey\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificate\' cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificate\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'crypto\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decrypt(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedDecryptor;->privateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedDecryptor;->safeDecryptPreMasterSecret(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/crypto/params/RSAKeyParameters;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    return-object p1
.end method

.method public getCertificate()Lorg/bouncycastle/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedDecryptor;->certificate:Lorg/bouncycastle/tls/Certificate;

    return-object v0
.end method

.method protected safeDecryptPreMasterSecret(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/crypto/params/RSAKeyParameters;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 6

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->getRSAPreMasterSecretVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p1

    array-length v2, p3

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ProtocolVersion;->getFullVersion()I

    move-result v4

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedDecryptor;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v5

    const/4 v1, 0x0

    move-object v3, p2

    move-object v0, p3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->decryptPreMasterSecret([BIILorg/bouncycastle/crypto/params/RSAKeyParameters;ILjava/security/SecureRandom;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedDecryptor;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->createSecret([B)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    return-object p1
.end method
