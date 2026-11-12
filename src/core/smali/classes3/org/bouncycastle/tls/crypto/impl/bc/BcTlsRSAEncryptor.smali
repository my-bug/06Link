.class final Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAEncryptor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsEncryptor;


# instance fields
.field private final crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

.field private final pubKeyRSA:Lorg/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/RSAKeyParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAEncryptor;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-static {p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAEncryptor;->checkPublicKey(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAEncryptor;->pubKeyRSA:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    return-void
.end method

.method private static checkPublicKey(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No public RSA key provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public encrypt([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v1, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAEncryptor;->pubKeyRSA:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAEncryptor;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {v3}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->processBlock([BII)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p3, 0x50

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2
.end method
