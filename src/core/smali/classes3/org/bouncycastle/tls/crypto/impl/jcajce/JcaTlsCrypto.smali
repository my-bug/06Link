.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;
.super Lorg/bouncycastle/tls/crypto/impl/AbstractTlsCrypto;


# instance fields
.field private final entropySource:Ljava/security/SecureRandom;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final nonceEntropySource:Ljava/security/SecureRandom;

.field private final supportedEncryptionAlgorithms:Ljava/util/Hashtable;

.field private final supportedNamedGroups:Ljava/util/Hashtable;

.field private final supportedOther:Ljava/util/Hashtable;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/security/SecureRandom;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsCrypto;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedEncryptionAlgorithms:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedNamedGroups:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedOther:Ljava/util/Hashtable;

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->entropySource:Ljava/security/SecureRandom;

    iput-object p3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->nonceEntropySource:Ljava/security/SecureRandom;

    return-void
.end method

.method private createChaCha20Poly1305(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Lorg/bouncycastle/tls/crypto/TlsCipher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    new-instance v2, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Z)V

    new-instance v3, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Z)V

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/16 v4, 0x20

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;-><init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;III)V

    return-object v0
.end method

.method private createCipher_AES_CCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    const/4 v1, 0x1

    const-string v2, "AES/CCM/NoPadding"

    const-string v3, "AES"

    invoke-virtual {p0, v2, v3, p2, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createAEADCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, p2, v4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createAEADCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;

    move-result-object v3

    const/4 v6, 0x1

    move v4, p2

    move v5, p3

    move-object v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;-><init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;III)V

    return-object v0
.end method

.method private createCipher_AES_GCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    const/4 v1, 0x1

    const-string v2, "AES/GCM/NoPadding"

    const-string v3, "AES"

    invoke-virtual {p0, v2, v3, p2, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createAEADCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, p2, v4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createAEADCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;

    move-result-object v3

    const/4 v6, 0x3

    move v4, p2

    move v5, p3

    move-object v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;-><init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;III)V

    return-object v0
.end method

.method private createCipher_ARIA_GCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    const/4 v1, 0x1

    const-string v2, "ARIA/GCM/NoPadding"

    const-string v3, "ARIA"

    invoke-virtual {p0, v2, v3, p2, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createAEADCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, p2, v4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createAEADCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;

    move-result-object v3

    const/4 v6, 0x3

    move v4, p2

    move v5, p3

    move-object v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;-><init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;III)V

    return-object v0
.end method

.method private createCipher_Camellia_GCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    const/4 v1, 0x1

    const-string v2, "Camellia/GCM/NoPadding"

    const-string v3, "Camellia"

    invoke-virtual {p0, v2, v3, p2, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createAEADCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, p2, v4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createAEADCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;

    move-result-object v3

    const/4 v6, 0x3

    move v4, p2

    move v5, p3

    move-object v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;-><init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;III)V

    return-object v0
.end method

.method private createCipher_SM4_CCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    const/4 v1, 0x1

    const-string v2, "SM4/CCM/NoPadding"

    const-string v3, "SM4"

    const/16 v4, 0x10

    invoke-virtual {p0, v2, v3, v4, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createAEADCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createAEADCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;

    move-result-object v3

    const/4 v6, 0x1

    const/16 v5, 0x10

    move-object v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;-><init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;III)V

    return-object v0
.end method

.method private createCipher_SM4_GCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    const/4 v1, 0x1

    const-string v2, "SM4/GCM/NoPadding"

    const-string v3, "SM4"

    const/16 v4, 0x10

    invoke-virtual {p0, v2, v3, v4, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createAEADCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createAEADCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;

    move-result-object v3

    const/4 v6, 0x3

    const/16 v5, 0x10

    move-object v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;-><init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;III)V

    return-object v0
.end method


# virtual methods
.method adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;
    .locals 1

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;[B)V

    return-object v0
.end method

.method public calculateKeyAgreement(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p3, p2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    :try_start_0
    invoke-virtual {v0, p4}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p2

    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    const-string p3, "X25519"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "X448"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    throw p2

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    return-object p1
.end method

.method protected createAEADCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceAEADCipherImpl;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceAEADCipherImpl;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v0
.end method

.method protected createBlockCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsBlockCipherImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherImpl;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v1, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherImpl;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljavax/crypto/Cipher;Ljava/lang/String;IZ)V

    return-object v0
.end method

.method protected createBlockCipherWithCBCImplicitIV(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsBlockCipherImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance p3, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-direct {p3, p0, p1, p2, p4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljavax/crypto/Cipher;Ljava/lang/String;Z)V

    return-object p3
.end method

.method protected createCBCBlockCipherImpl(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsBlockCipherImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/CBC/NoPadding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/impl/TlsImplUtils;->isTLSv11(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createBlockCipher(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsBlockCipherImpl;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createBlockCipherWithCBCImplicitIV(Ljava/lang/String;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsBlockCipherImpl;

    move-result-object p1

    return-object p1
.end method

.method public createCertificate(S[B)Lorg/bouncycastle/tls/crypto/TlsCertificate;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;

    invoke-direct {p1, p0, p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCertificate;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;[B)V

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x2b

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public createCertificate([B)Lorg/bouncycastle/tls/crypto/TlsCertificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCertificate(S[B)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object p1

    return-object p1
.end method

.method public createCipher(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/TlsCipher;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "ARIA"

    const/16 v1, 0x8

    const-string v2, "Camellia"

    const-string v3, "AES"

    const/16 v4, 0x20

    const/16 v5, 0x10

    packed-switch p2, :pswitch_data_0

    :try_start_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_0
    const-string p2, "SM4"

    :goto_0
    invoke-virtual {p0, p1, p2, v5, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_CBC(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Ljava/lang/String;II)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_SM4_GCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_SM4_CCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-direct {p0, p1, v4, v5}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_ARIA_GCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-direct {p0, p1, v5, v5}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_ARIA_GCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0, p1, v0, v4, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_CBC(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Ljava/lang/String;II)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0, p1, v0, v5, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_CBC(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Ljava/lang/String;II)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createChaCha20Poly1305(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-direct {p0, p1, v4, v5}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_Camellia_GCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-direct {p0, p1, v5, v5}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_Camellia_GCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_AES_CCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-direct {p0, p1, v4, v5}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_AES_CCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-direct {p0, p1, v5, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_AES_CCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-direct {p0, p1, v5, v5}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_AES_CCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    move-result-object p1

    return-object p1

    :pswitch_e
    const-string p2, "SEED"

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0, p1, v2, v4, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_CBC(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Ljava/lang/String;II)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0, p1, v2, v5, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_CBC(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Ljava/lang/String;II)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-direct {p0, p1, v4, v5}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_AES_GCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    move-result-object p1

    return-object p1

    :pswitch_12
    invoke-direct {p0, p1, v5, v5}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_AES_GCM(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipher;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-virtual {p0, p1, v3, v4, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_CBC(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Ljava/lang/String;II)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p1

    return-object p1

    :pswitch_14
    invoke-virtual {p0, p1, v3, v5, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_CBC(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Ljava/lang/String;II)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p1

    return-object p1

    :pswitch_15
    const-string p2, "DESede"

    const/16 v0, 0x18

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCipher_CBC(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Ljava/lang/String;II)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createNullCipher(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;I)Lorg/bouncycastle/tls/crypto/impl/TlsNullCipher;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/tls/crypto/TlsCryptoException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "cannot create cipher: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/tls/crypto/TlsCryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected createCipher_CBC(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Ljava/lang/String;II)Lorg/bouncycastle/tls/crypto/TlsCipher;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCBCBlockCipherImpl(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsBlockCipherImpl;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createCBCBlockCipherImpl(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Ljava/lang/String;IZ)Lorg/bouncycastle/tls/crypto/impl/TlsBlockCipherImpl;

    move-result-object v4

    invoke-virtual {p0, p1, p4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createMAC(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;I)Lorg/bouncycastle/tls/crypto/TlsHMAC;

    move-result-object v5

    invoke-virtual {p0, p1, p4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createMAC(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;I)Lorg/bouncycastle/tls/crypto/TlsHMAC;

    move-result-object v6

    new-instance v1, Lorg/bouncycastle/tls/crypto/impl/TlsBlockCipher;

    move-object v2, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/tls/crypto/impl/TlsBlockCipher;-><init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/impl/TlsBlockCipherImpl;Lorg/bouncycastle/tls/crypto/impl/TlsBlockCipherImpl;Lorg/bouncycastle/tls/crypto/TlsHMAC;Lorg/bouncycastle/tls/crypto/TlsHMAC;I)V

    return-object v1
.end method

.method public createDHDomain(Lorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/crypto/TlsDHDomain;
    .locals 1

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsDHConfig;)V

    return-object v0
.end method

.method public createECDomain(Lorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/crypto/TlsECDomain;
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/TlsECConfig;->getNamedGroup()I

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsECDomain;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsECDomain;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsECConfig;)V

    return-object v0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX448Domain;

    invoke-direct {p1, p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX448Domain;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519Domain;

    invoke-direct {p1, p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519Domain;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;)V

    return-object p1
.end method

.method public createHMAC(I)Lorg/bouncycastle/tls/crypto/TlsHMAC;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid MACAlgorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->getHashForHMAC(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createHMACForHash(I)Lorg/bouncycastle/tls/crypto/TlsHMAC;

    move-result-object p1

    return-object p1
.end method

.method public createHMACForHash(I)Lorg/bouncycastle/tls/crypto/TlsHMAC;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHMACAlgorithmName(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsHMAC;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v2, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsHMAC;-><init>(ILjavax/crypto/Mac;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot create HMAC: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createHMAC_SSL(I)Lorg/bouncycastle/tls/crypto/TlsHMAC;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x80

    const/4 v3, 0x5

    if-eq p1, v2, :cond_1

    if-ne p1, v3, :cond_0

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getDigestName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createHash(Ljava/lang/String;)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object v2

    invoke-direct {p1, v2, v0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;-><init>(Lorg/bouncycastle/tls/crypto/TlsHash;II)V

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;

    invoke-virtual {p0, v3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getDigestName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createHash(Ljava/lang/String;)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object v0

    const/16 v2, 0x30

    invoke-direct {p1, v0, v2, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;-><init>(Lorg/bouncycastle/tls/crypto/TlsHash;II)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getDigestName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createHash(Ljava/lang/String;)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {p1, v1, v2, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;-><init>(Lorg/bouncycastle/tls/crypto/TlsHash;II)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getDigestName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createHash(Ljava/lang/String;)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object v1

    const/16 v2, 0x14

    invoke-direct {p1, v1, v2, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;-><init>(Lorg/bouncycastle/tls/crypto/TlsHash;II)V

    return-object p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getDigestName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createHash(Ljava/lang/String;)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {p1, v1, v2, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;-><init>(Lorg/bouncycastle/tls/crypto/TlsHash;II)V

    return-object p1
.end method

.method public createHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getDigestName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createHash(Ljava/lang/String;)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to create message digest:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/Exceptions;->illegalArgumentException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method protected createHash(Ljava/lang/String;)Lorg/bouncycastle/tls/crypto/TlsHash;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsHash;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v1, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsHash;-><init>(Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public createKemDomain(Lorg/bouncycastle/tls/crypto/TlsKemConfig;)Lorg/bouncycastle/tls/crypto/TlsKemDomain;
    .locals 1

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsKemConfig;)V

    return-object v0
.end method

.method protected createMAC(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;I)Lorg/bouncycastle/tls/crypto/TlsHMAC;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/impl/TlsImplUtils;->isSSL(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createHMAC_SSL(I)Lorg/bouncycastle/tls/crypto/TlsHMAC;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createHMAC(I)Lorg/bouncycastle/tls/crypto/TlsHMAC;

    move-result-object p1

    return-object p1
.end method

.method public createNonceGenerator([B)Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;
    .locals 2

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaNonceGenerator;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->nonceEntropySource:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaNonceGenerator;-><init>(Ljava/security/SecureRandom;[B)V

    return-object v0
.end method

.method protected createNullCipher(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;I)Lorg/bouncycastle/tls/crypto/impl/TlsNullCipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/TlsNullCipher;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createMAC(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;I)Lorg/bouncycastle/tls/crypto/TlsHMAC;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createMAC(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;I)Lorg/bouncycastle/tls/crypto/TlsHMAC;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/tls/crypto/impl/TlsNullCipher;-><init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/TlsHMAC;Lorg/bouncycastle/tls/crypto/TlsHMAC;)V

    return-object v0
.end method

.method createRSAEncryptionCipher()Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v0

    const-string v1, "RSA/NONE/PKCS1Padding"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public createSRP6Client(Lorg/bouncycastle/tls/crypto/TlsSRPConfig;)Lorg/bouncycastle/tls/crypto/TlsSRP6Client;
    .locals 4

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Client;

    invoke-direct {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Client;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;->getExplicitNG()[Ljava/math/BigInteger;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/tls/crypto/SRP6Group;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/tls/crypto/SRP6Group;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Client;->init(Lorg/bouncycastle/tls/crypto/SRP6Group;Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/security/SecureRandom;)V

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$1;

    invoke-direct {p1, p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$1;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Client;)V

    return-object p1
.end method

.method public createSRP6Server(Lorg/bouncycastle/tls/crypto/TlsSRPConfig;Ljava/math/BigInteger;)Lorg/bouncycastle/tls/crypto/TlsSRP6Server;
    .locals 4

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Server;

    invoke-direct {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Server;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;->getExplicitNG()[Ljava/math/BigInteger;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/tls/crypto/SRP6Group;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/tls/crypto/SRP6Group;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v1, p2, p1, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Server;->init(Lorg/bouncycastle/tls/crypto/SRP6Group;Ljava/math/BigInteger;Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/security/SecureRandom;)V

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$2;

    invoke-direct {p1, p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$2;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Server;)V

    return-object p1
.end method

.method public createSRP6VerifierGenerator(Lorg/bouncycastle/tls/crypto/TlsSRPConfig;)Lorg/bouncycastle/tls/crypto/TlsSRP6VerifierGenerator;
    .locals 3

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;->getExplicitNG()[Ljava/math/BigInteger;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/tls/crypto/TlsHash;)V

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$3;

    invoke-direct {p1, p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$3;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;)V

    return-object p1
.end method

.method public createSecret([B)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    move-result-object p1

    return-object p1
.end method

.method protected createStreamSigner(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/PrivateKey;Z)Lorg/bouncycastle/tls/crypto/TlsStreamSigner;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    :try_start_1
    invoke-interface {v1, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    new-instance v2, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-virtual {v1}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    move-object v1, v2

    :cond_1
    invoke-interface {v1, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_2
    invoke-virtual {v1, p3, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsStreamSigner;

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsStreamSigner;-><init>(Ljava/security/Signature;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MGF1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "ANDMGF1"

    const-string v1, "SSA-PSS"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createStreamSigner(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/PrivateKey;Z)Lorg/bouncycastle/tls/crypto/TlsStreamSigner;

    move-result-object p1

    return-object p1

    :cond_3
    throw v0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p3, 0x50

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2
.end method

.method protected createStreamSigner(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;Ljava/security/PrivateKey;Z)Lorg/bouncycastle/tls/crypto/TlsStreamSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaUtils;->getJcaAlgorithmName(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createStreamSigner(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/PrivateKey;Z)Lorg/bouncycastle/tls/crypto/TlsStreamSigner;

    move-result-object p1

    return-object p1
.end method

.method protected createStreamVerifier(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;[BLjava/security/PublicKey;)Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-virtual {v0}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_1
    invoke-virtual {p1, p4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    new-instance p2, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsStreamVerifier;

    invoke-direct {p2, p1, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsStreamVerifier;-><init>(Ljava/security/Signature;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p3, 0x50

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2
.end method

.method protected createStreamVerifier(Lorg/bouncycastle/tls/DigitallySigned;Ljava/security/PublicKey;)Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaUtils;->getJcaAlgorithmName(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/tls/DigitallySigned;->getSignature()[B

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createStreamVerifier(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;[BLjava/security/PublicKey;)Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;

    move-result-object p1

    return-object p1
.end method

.method protected createTls13Verifier(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/PublicKey;)Lorg/bouncycastle/tls/crypto/Tls13Verifier;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-virtual {v0}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_1
    invoke-virtual {p1, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    new-instance p2, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTls13Verifier;

    invoke-direct {p2, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTls13Verifier;-><init>(Ljava/security/Signature;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p3, 0x50

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2
.end method

.method public generateRSAPreMasterSecret(Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 2

    const/16 v0, 0x30

    new-array v0, v0, [B

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/tls/ProtocolVersion;[BI)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    move-result-object p1

    return-object p1
.end method

.method getDigestName(I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid CryptoHashAlgorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p1, "GOST3411-2012-256"

    return-object p1

    :pswitch_1
    const-string p1, "SM3"

    return-object p1

    :pswitch_2
    const-string p1, "SHA-512"

    return-object p1

    :pswitch_3
    const-string p1, "SHA-384"

    return-object p1

    :pswitch_4
    const-string p1, "SHA-256"

    return-object p1

    :pswitch_5
    const-string p1, "SHA-224"

    return-object p1

    :pswitch_6
    const-string p1, "SHA-1"

    return-object p1

    :pswitch_7
    const-string p1, "MD5"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getHMACAlgorithmName(I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid CryptoHashAlgorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p1, "HmacGOST3411-2012-256"

    return-object p1

    :pswitch_1
    const-string p1, "HmacSM3"

    return-object p1

    :pswitch_2
    const-string p1, "HmacSHA512"

    return-object p1

    :pswitch_3
    const-string p1, "HmacSHA384"

    return-object p1

    :pswitch_4
    const-string p1, "HmacSHA256"

    return-object p1

    :pswitch_5
    const-string p1, "HmacSHA224"

    return-object p1

    :pswitch_6
    const-string p1, "HmacSHA1"

    return-object p1

    :pswitch_7
    const-string p1, "HmacMD5"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object v0
.end method

.method public getNamedGroupAlgorithmParameters(I)Ljava/security/AlgorithmParameters;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->refersToAnXDHCurve(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1e

    if-ne p1, v0, :cond_5

    :cond_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->refersToAnECDSACurve(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->getCurveName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/ECUtil;->getAlgorithmParameters(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificFiniteField(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsDHUtils;->getNamedDHGroup(I)Lorg/bouncycastle/tls/crypto/DHGroup;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/DHUtil;->getAlgorithmParameters(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/DHGroup;)Ljava/security/AlgorithmParameters;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificKem(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x768

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1024

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_4
    :pswitch_0
    return-object v1

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NamedGroup not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->getText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x247
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->entropySource:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getSignatureSchemeAlgorithmParameters(I)Ljava/security/AlgorithmParameters;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->isRSAPSS(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(I)I

    move-result p1

    if-gez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getDigestName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/RSAUtil;->getDigestSigAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WITHRSAANDMGF1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/RSAUtil;->getPSSParameterSpec(ILjava/lang/String;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljava/security/Signature;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p1

    return-object p1
.end method

.method public hasAnyStreamVerifiers(Ljava/util/Vector;)Z
    .locals 8

    invoke-static {}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaUtils;->isSunMSCAPIProviderActive()Z

    move-result v0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v4}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v5

    invoke-static {v5}, Lorg/bouncycastle/tls/HashAlgorithm;->getOutputSize(S)I

    move-result v5

    const/16 v7, 0x14

    if-eq v5, v7, :cond_2

    return v6

    :cond_1
    if-eqz v0, :cond_2

    return v6

    :cond_2
    :goto_1
    invoke-static {v4}, Lorg/bouncycastle/tls/SignatureScheme;->from(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    return v6

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x804
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasAnyStreamVerifiersLegacy([S)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasCryptoHashAlgorithm(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public hasCryptoSignatureAlgorithm(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasDHAgreement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasECDHAgreement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasEncryptionAlgorithm(I)Z
    .locals 3

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedEncryptionAlgorithms:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedEncryptionAlgorithms:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v1

    return p1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isSupportedEncryptionAlgorithm(I)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedEncryptionAlgorithms:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedEncryptionAlgorithms:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedEncryptionAlgorithms:Ljava/util/Hashtable;

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public hasHKDFAlgorithm(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public hasKemAgreement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasMacAlgorithm(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public hasNamedGroup(I)Z
    .locals 3

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedNamedGroups:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedNamedGroups:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v1

    return p1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isSupportedNamedGroup(I)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedNamedGroups:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedNamedGroups:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedNamedGroups:Ljava/util/Hashtable;

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public hasRSAEncryption()Z
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedOther:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedOther:Ljava/util/Hashtable;

    const-string v2, "KE_RSA"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createRSAEncryptionCipher()Ljavax/crypto/Cipher;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedOther:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedOther:Ljava/util/Hashtable;

    const-string v3, "KE_RSA"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->supportedOther:Ljava/util/Hashtable;

    const-string v3, "KE_RSA"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public hasSRPAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasSignatureAlgorithm(S)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasSignatureAndHashAlgorithm(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaUtils;->isSunMSCAPIProviderActive()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    if-ne v2, v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public hasSignatureScheme(I)Z
    .locals 4

    const/16 v0, 0x708

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getSignatureAlgorithm(I)S

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(I)I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaUtils;->isSunMSCAPIProviderActive()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    if-ne v2, v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public hkdfInit(I)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->getHashOutputSize(I)I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    move-result-object p1

    return-object p1
.end method

.method protected isSupportedEncryptionAlgorithm(I)Ljava/lang/Boolean;
    .locals 9

    const-string v0, "ARIA/GCM/NoPadding"

    const-string v1, "ARIA/CBC/NoPadding"

    const-string v2, "Camellia/GCM/NoPadding"

    const-string v3, "AES/CCM/NoPadding"

    const-string v4, "Camellia/CBC/NoPadding"

    const-string v5, "AES/GCM/NoPadding"

    const-string v6, "AES/CBC/NoPadding"

    const/16 v7, 0x100

    const/16 v8, 0x80

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "SM4/CBC/NoPadding"

    :goto_0
    invoke-virtual {p0, p1, v8}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-string p1, "SM4/GCM/NoPadding"

    goto :goto_0

    :pswitch_2
    const-string p1, "SM4/CCM/NoPadding"

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0, v7}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v1, v7}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v1, v8}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_7
    const-string p1, "ChaCha7539"

    invoke-virtual {p0, p1, v7}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Poly1305"

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableMAC(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0, v2, v7}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v2, v8}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0, v3, v7}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0, v3, v8}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_c
    const-string p1, "SEED/CBC/NoPadding"

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0, v4, v7}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_e
    invoke-virtual {p0, v4, v8}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v7}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v8}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, v6, v7}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, v6, v8}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_13
    const-string p1, "DESede/CBC/NoPadding"

    const/16 v0, 0xc0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->isUsableCipher(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :pswitch_14
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_15
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method protected isSupportedNamedGroup(I)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->refersToAnXDHCurve(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v0, "X448"

    :goto_0
    invoke-interface {p1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v0, "X25519"

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificKem(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->refersToAnECDSACurve(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->getCurveName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/ECUtil;->isCurveSupported(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/lang/String;)Z

    move-result p1

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificFiniteField(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsDHUtils;->getNamedDHGroup(I)Lorg/bouncycastle/tls/crypto/DHGroup;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/DHUtil;->isGroupSupported(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/DHGroup;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    :goto_3
    const/4 p1, 0x0

    return-object p1

    :catch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected isUsableCipher(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v1, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    invoke-static {p1}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method protected isUsableMAC(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
