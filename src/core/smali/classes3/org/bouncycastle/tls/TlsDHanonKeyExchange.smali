.class public Lorg/bouncycastle/tls/TlsDHanonKeyExchange;
.super Lorg/bouncycastle/tls/AbstractTlsKeyExchange;


# instance fields
.field protected agreement:Lorg/bouncycastle/tls/crypto/TlsAgreement;

.field protected dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

.field protected dhGroupVerifier:Lorg/bouncycastle/tls/TlsDHGroupVerifier;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/tls/TlsDHGroupVerifier;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;-><init>(ILorg/bouncycastle/tls/TlsDHGroupVerifier;Lorg/bouncycastle/tls/crypto/TlsDHConfig;)V

    return-void
.end method

.method private constructor <init>(ILorg/bouncycastle/tls/TlsDHGroupVerifier;Lorg/bouncycastle/tls/crypto/TlsDHConfig;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->checkKeyExchange(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsKeyExchange;-><init>(I)V

    iput-object p2, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->dhGroupVerifier:Lorg/bouncycastle/tls/TlsDHGroupVerifier;

    iput-object p3, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/tls/crypto/TlsDHConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;-><init>(ILorg/bouncycastle/tls/TlsDHGroupVerifier;Lorg/bouncycastle/tls/crypto/TlsDHConfig;)V

    return-void
.end method

.method private static checkKeyExchange(I)I
    .locals 1

    const/16 v0, 0xb

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->agreement:Lorg/bouncycastle/tls/crypto/TlsAgreement;

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

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->agreement:Lorg/bouncycastle/tls/crypto/TlsAgreement;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsAgreement;->calculateSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    return-object v0
.end method

.method public generateServerKeyExchange()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsDHUtils;->writeDHConfig(Lorg/bouncycastle/tls/crypto/TlsDHConfig;Ljava/io/OutputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    invoke-interface {v1, v2}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createDHDomain(Lorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/crypto/TlsDHDomain;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/tls/crypto/TlsDHDomain;->createDH()Lorg/bouncycastle/tls/crypto/TlsAgreement;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->agreement:Lorg/bouncycastle/tls/crypto/TlsAgreement;

    invoke-interface {v1}, Lorg/bouncycastle/tls/crypto/TlsAgreement;->generateEphemeral()[B

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateTypes()[S
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public processClientCertificate(Lorg/bouncycastle/tls/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processClientCredentials(Lorg/bouncycastle/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;I)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->agreement:Lorg/bouncycastle/tls/crypto/TlsAgreement;

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

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerCredentials(Lorg/bouncycastle/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->dhGroupVerifier:Lorg/bouncycastle/tls/TlsDHGroupVerifier;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/tls/TlsDHUtils;->receiveDHConfig(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsDHGroupVerifier;Ljava/io/InputStream;)Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;I)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->dhConfig:Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createDHDomain(Lorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/crypto/TlsDHDomain;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsDHDomain;->createDH()Lorg/bouncycastle/tls/crypto/TlsAgreement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;->agreement:Lorg/bouncycastle/tls/crypto/TlsAgreement;

    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/crypto/TlsAgreement;->receivePeerValue([B)V

    return-void
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public skipServerCredentials()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
