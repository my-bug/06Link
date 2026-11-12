.class public Lorg/bouncycastle/tls/TlsECDHKeyExchange;
.super Lorg/bouncycastle/tls/AbstractTlsKeyExchange;


# instance fields
.field protected agreementCredentials:Lorg/bouncycastle/tls/TlsCredentialedAgreement;

.field protected ecdhPeerCertificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsECDHKeyExchange;->checkKeyExchange(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsKeyExchange;-><init>(I)V

    return-void
.end method

.method private static checkKeyExchange(I)I
    .locals 1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public generatePreMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/tls/TlsCredentialedAgreement;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsECDHKeyExchange;->ecdhPeerCertificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/TlsCredentialedAgreement;->generateAgreement(Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateTypes()[S
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 2
        0x42s
        0x41s
    .end array-data
.end method

.method public processClientCertificate(Lorg/bouncycastle/tls/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->checkUsageInRole(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsECDHKeyExchange;->ecdhPeerCertificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

    return-void
.end method

.method public processClientCredentials(Lorg/bouncycastle/tls/TlsCredentials;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->requireAgreementCredentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentialedAgreement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/tls/TlsCredentialedAgreement;

    return-void
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->checkUsageInRole(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsECDHKeyExchange;->ecdhPeerCertificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

    return-void
.end method

.method public processServerCredentials(Lorg/bouncycastle/tls/TlsCredentials;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->requireAgreementCredentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentialedAgreement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/tls/TlsCredentialedAgreement;

    return-void
.end method

.method public requiresCertificateVerify()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public skipClientCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
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
