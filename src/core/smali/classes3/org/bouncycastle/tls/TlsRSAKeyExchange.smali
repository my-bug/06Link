.class public Lorg/bouncycastle/tls/TlsRSAKeyExchange;
.super Lorg/bouncycastle/tls/AbstractTlsKeyExchange;


# instance fields
.field protected preMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

.field protected serverCredentials:Lorg/bouncycastle/tls/TlsCredentialedDecryptor;

.field protected serverEncryptor:Lorg/bouncycastle/tls/crypto/TlsEncryptor;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsRSAKeyExchange;->checkKeyExchange(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsKeyExchange;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsRSAKeyExchange;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentialedDecryptor;

    return-void
.end method

.method private static checkKeyExchange(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported key exchange algorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsRSAKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsRSAKeyExchange;->serverEncryptor:Lorg/bouncycastle/tls/crypto/TlsEncryptor;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/tls/TlsUtils;->generateEncryptedPreMasterSecret(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsEncryptor;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsRSAKeyExchange;->preMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-void
.end method

.method public generatePreMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsRSAKeyExchange;->preMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/tls/TlsRSAKeyExchange;->preMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-object v0
.end method

.method public getClientCertificateTypes()[S
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 2
        0x1s
        0x2s
        0x40s
    .end array-data
.end method

.method public processClientCredentials(Lorg/bouncycastle/tls/TlsCredentials;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->requireSignerCredentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentialedSigner;

    return-void
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsRSAKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->readEncryptedPMS(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsRSAKeyExchange;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentialedDecryptor;

    new-instance v1, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsRSAKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-direct {v1, v2}, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;-><init>(Lorg/bouncycastle/tls/TlsContext;)V

    invoke-interface {v0, v1, p1}, Lorg/bouncycastle/tls/TlsCredentialedDecryptor;->decrypt(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsRSAKeyExchange;->preMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-void
.end method

.method public processServerCertificate(Lorg/bouncycastle/tls/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object p1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->createEncryptor(I)Lorg/bouncycastle/tls/crypto/TlsEncryptor;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsRSAKeyExchange;->serverEncryptor:Lorg/bouncycastle/tls/crypto/TlsEncryptor;

    return-void
.end method

.method public processServerCredentials(Lorg/bouncycastle/tls/TlsCredentials;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->requireDecryptorCredentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentialedDecryptor;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsRSAKeyExchange;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentialedDecryptor;

    return-void
.end method

.method public skipServerCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
