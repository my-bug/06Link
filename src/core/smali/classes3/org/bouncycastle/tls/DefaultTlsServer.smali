.class public abstract Lorg/bouncycastle/tls/DefaultTlsServer;
.super Lorg/bouncycastle/tls/AbstractTlsServer;


# static fields
.field private static final DEFAULT_CIPHER_SUITES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/tls/DefaultTlsServer;->DEFAULT_CIPHER_SUITES:[I

    return-void

    :array_0
    .array-data 4
        0x1303
        0x1302
        0x1301
        0xcca8
        0xc030
        0xc02f
        0xc028
        0xc027
        0xc014
        0xc013
        0xccaa
        0x9f
        0x9e
        0x6b
        0x67
        0x39
        0x33
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsServer;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V

    return-void
.end method


# virtual methods
.method public getCredentials()Lorg/bouncycastle/tls/TlsCredentials;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/DefaultTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getKeyExchangeAlgorithm()I

    move-result v1

    const/16 v2, 0x50

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    const/16 v0, 0x11

    if-eq v1, v0, :cond_1

    const/16 v0, 0x13

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/tls/DefaultTlsServer;->getECDSASignerCredentials()Lorg/bouncycastle/tls/TlsCredentialedSigner;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/DefaultTlsServer;->getRSASignerCredentials()Lorg/bouncycastle/tls/TlsCredentialedSigner;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/tls/DefaultTlsServer;->getDSASignerCredentials()Lorg/bouncycastle/tls/TlsCredentialedSigner;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/tls/DefaultTlsServer;->getRSAEncryptionCredentials()Lorg/bouncycastle/tls/TlsCredentialedDecryptor;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " credentials unhandled"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method protected getDSASignerCredentials()Lorg/bouncycastle/tls/TlsCredentialedSigner;
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

.method protected getECDSASignerCredentials()Lorg/bouncycastle/tls/TlsCredentialedSigner;
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

.method protected getRSAEncryptionCredentials()Lorg/bouncycastle/tls/TlsCredentialedDecryptor;
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

.method protected getRSASignerCredentials()Lorg/bouncycastle/tls/TlsCredentialedSigner;
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

.method protected getSupportedCipherSuites()[I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/DefaultTlsServer;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/tls/DefaultTlsServer;->DEFAULT_CIPHER_SUITES:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->getSupportedCipherSuites(Lorg/bouncycastle/tls/crypto/TlsCrypto;[I)[I

    move-result-object v0

    return-object v0
.end method
