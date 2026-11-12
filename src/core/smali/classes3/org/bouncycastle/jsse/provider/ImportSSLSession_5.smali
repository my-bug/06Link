.class final Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;
.super Lorg/bouncycastle/jsse/BCExtendedSSLSession;

# interfaces
.implements Lorg/bouncycastle/jsse/provider/ImportSSLSession;


# instance fields
.field final sslSession:Ljavax/net/ssl/SSLSession;


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLSession;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jsse/BCExtendedSSLSession;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getApplicationBufferSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLastAccessedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPacketBufferSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/OldCertUtil;->getPeerCertificateChain(Lorg/bouncycastle/jsse/BCExtendedSSLSession;)[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

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

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0, p1}, Ljavax/net/ssl/SSLSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    return-void
.end method

.method public isFipsMode()Z
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->getSSLContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->isFips()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v0

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/SSLSession;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0, p1}, Ljavax/net/ssl/SSLSession;->removeValue(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;->sslSession:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method
