.class Lorg/bouncycastle/jsse/provider/ProvSSLSession;
.super Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;


# static fields
.field static final NULL_SESSION:Lorg/bouncycastle/jsse/provider/ProvSSLSession;


# instance fields
.field protected final jsseSessionParameters:Lorg/bouncycastle/jsse/provider/JsseSessionParameters;

.field protected final sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

.field protected final tlsSession:Lorg/bouncycastle/tls/TlsSession;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    new-instance v5, Lorg/bouncycastle/jsse/provider/JsseSessionParameters;

    const/4 v1, 0x0

    invoke-direct {v5, v1, v1}, Lorg/bouncycastle/jsse/provider/JsseSessionParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/jsse/BCSNIServerName;)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;Ljava/lang/String;ILorg/bouncycastle/tls/TlsSession;Lorg/bouncycastle/jsse/provider/JsseSessionParameters;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->NULL_SESSION:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;Ljava/lang/String;ILorg/bouncycastle/tls/TlsSession;Lorg/bouncycastle/jsse/provider/JsseSessionParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;Ljava/lang/String;I)V

    iput-object p4, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Lorg/bouncycastle/tls/TlsSession;->exportSessionParameters()Lorg/bouncycastle/tls/SessionParameters;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    iput-object p5, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->jsseSessionParameters:Lorg/bouncycastle/jsse/provider/JsseSessionParameters;

    return-void
.end method


# virtual methods
.method protected getCipherSuiteTLS()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tls/SessionParameters;->getCipherSuite()I

    move-result v0

    return v0
.end method

.method protected getIDArray()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsSession;->getSessionID()[B

    move-result-object v0

    return-object v0
.end method

.method protected getJsseSecurityParameters()Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getJsseSessionParameters()Lorg/bouncycastle/jsse/provider/JsseSessionParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->jsseSessionParameters:Lorg/bouncycastle/jsse/provider/JsseSessionParameters;

    return-object v0
.end method

.method protected getLocalCertificateTLS()Lorg/bouncycastle/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tls/SessionParameters;->getLocalCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPeerCertificateTLS()Lorg/bouncycastle/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tls/SessionParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getProtocolTLS()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tls/SessionParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedServerNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/BCSNIServerName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getTlsSession()Lorg/bouncycastle/tls/TlsSession;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    return-object v0
.end method

.method protected invalidateTLS()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsSession;->invalidate()V

    :cond_0
    return-void
.end method

.method public isValid()Z
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsSession;->isResumable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
