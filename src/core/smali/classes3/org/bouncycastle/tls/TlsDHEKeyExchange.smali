.class public Lorg/bouncycastle/tls/TlsDHEKeyExchange;
.super Lorg/bouncycastle/tls/AbstractTlsKeyExchange;


# instance fields
.field protected agreement:Lorg/bouncycastle/tls/crypto/TlsAgreement;

.field protected dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

.field protected dhGroupVerifier:Lorg/bouncycastle/tls/TlsDHGroupVerifier;

.field protected serverCertificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

.field protected serverCredentials:Lorg/bouncycastle/tls/TlsCredentialedSigner;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/tls/TlsDHGroupVerifier;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/tls/TlsDHEKeyExchange;-><init>(ILorg/bouncycastle/tls/TlsDHGroupVerifier;Lorg/bouncycastle/tls/crypto/TlsDHConfig;)V

    return-void
.end method

.method private constructor <init>(ILorg/bouncycastle/tls/TlsDHGroupVerifier;Lorg/bouncycastle/tls/crypto/TlsDHConfig;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->checkKeyExchange(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsKeyExchange;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentialedSigner;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->serverCertificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

    iput-object p2, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->dhGroupVerifier:Lorg/bouncycastle/tls/TlsDHGroupVerifier;

    iput-object p3, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/tls/crypto/TlsDHConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/tls/TlsDHEKeyExchange;-><init>(ILorg/bouncycastle/tls/TlsDHGroupVerifier;Lorg/bouncycastle/tls/crypto/TlsDHConfig;)V

    return-void
.end method

.method private static checkKeyExchange(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported key exchange algorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->agreement:Lorg/bouncycastle/tls/crypto/TlsAgreement;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsAgreement;->generateEphemeral()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void
.end method

.method public generatePreMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->agreement:Lorg/bouncycastle/tls/crypto/TlsAgreement;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsAgreement;->calculateSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    return-object v0
.end method

.method public generateServerKeyExchange()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/DigestInputBuffer;

    invoke-direct {v0}, Lorg/bouncycastle/tls/DigestInputBuffer;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsDHUtils;->writeDHConfig(Lorg/bouncycastle/tls/crypto/TlsDHConfig;Ljava/io/OutputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    invoke-interface {v1, v2}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createDHDomain(Lorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/crypto/TlsDHDomain;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/tls/crypto/TlsDHDomain;->createDH()Lorg/bouncycastle/tls/crypto/TlsAgreement;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->agreement:Lorg/bouncycastle/tls/crypto/TlsAgreement;

    invoke-interface {v1}, Lorg/bouncycastle/tls/crypto/TlsAgreement;->generateEphemeral()[B

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentialedSigner;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lorg/bouncycastle/tls/TlsUtils;->generateServerKeyExchangeSignature(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsCredentialedSigner;[BLorg/bouncycastle/tls/DigestInputBuffer;)V

    invoke-virtual {v0}, Lorg/bouncycastle/tls/DigestInputBuffer;->toByteArray()[B

    move-result-object v0

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
        0x2s
        0x40s
        0x1s
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->agreement:Lorg/bouncycastle/tls/crypto/TlsAgreement;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;I)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/crypto/TlsAgreement;->receivePeerValue([B)V

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

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->serverCertificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

    return-void
.end method

.method public processServerCredentials(Lorg/bouncycastle/tls/TlsCredentials;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->requireSignerCredentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentialedSigner;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentialedSigner;

    return-void
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/DigestInputBuffer;

    invoke-direct {v0}, Lorg/bouncycastle/tls/DigestInputBuffer;-><init>()V

    new-instance v1, Lorg/bouncycastle/util/io/TeeInputStream;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    iget-object v3, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->dhGroupVerifier:Lorg/bouncycastle/tls/TlsDHGroupVerifier;

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/tls/TlsDHUtils;->receiveDHConfig(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsDHGroupVerifier;Ljava/io/InputStream;)Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;I)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    iget-object v3, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->serverCertificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4, v0}, Lorg/bouncycastle/tls/TlsUtils;->verifyServerKeyExchangeSignature(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;Lorg/bouncycastle/tls/crypto/TlsCertificate;[BLorg/bouncycastle/tls/DigestInputBuffer;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createDHDomain(Lorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/crypto/TlsDHDomain;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsDHDomain;->createDH()Lorg/bouncycastle/tls/crypto/TlsAgreement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;->agreement:Lorg/bouncycastle/tls/crypto/TlsAgreement;

    invoke-interface {p1, v1}, Lorg/bouncycastle/tls/crypto/TlsAgreement;->receivePeerValue([B)V

    return-void
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
