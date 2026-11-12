.class final Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAEncryptor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsEncryptor;


# instance fields
.field private final crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

.field private final pubKeyRSA:Ljava/security/PublicKey;


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PublicKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAEncryptor;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAEncryptor;->pubKeyRSA:Ljava/security/PublicKey;

    return-void
.end method


# virtual methods
.method public encrypt([BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x50

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAEncryptor;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createRSAEncryptionCipher()Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAEncryptor;->pubKeyRSA:Ljava/security/PublicKey;

    iget-object v3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAEncryptor;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "TLS"

    invoke-direct {v2, p1, p2, p3, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAEncryptor;->pubKeyRSA:Ljava/security/PublicKey;

    iget-object v4, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsRSAEncryptor;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_1
    :try_start_3
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p1

    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2
.end method
