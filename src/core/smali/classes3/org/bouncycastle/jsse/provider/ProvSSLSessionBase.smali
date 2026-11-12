.class abstract Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;
.super Lorg/bouncycastle/jsse/BCExtendedSSLSession;


# instance fields
.field protected final creationTime:J

.field protected final crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

.field protected final exportSSLSession:Ljavax/net/ssl/SSLSession;

.field protected final isFips:Z

.field protected final lastAccessedTime:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final peerHost:Ljava/lang/String;

.field protected final peerPort:I

.field protected final sslSessionContext:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;",
            ">;"
        }
    .end annotation
.end field

.field protected final valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/jsse/BCExtendedSSLSession;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->valueMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->sslSessionContext:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->getSSLContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->isFips()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->isFips:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->peerHost:Ljava/lang/String;

    iput p3, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->peerPort:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->creationTime:J

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/SSLSessionUtil;->exportSSLSession(Lorg/bouncycastle/jsse/BCExtendedSSLSession;)Ljavax/net/ssl/SSLSession;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->exportSSLSession:Ljavax/net/ssl/SSLSession;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->lastAccessedTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private implInvalidate(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->sslSessionContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getIDArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->removeSession([B)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->sslSessionContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->invalidateTLS()V

    return-void
.end method


# virtual methods
.method accessedAt(J)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->lastAccessedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->lastAccessedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getIDArray()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getIDArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method public getApplicationBufferSize()I
    .locals 1

    const/16 v0, 0x4000

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getCipherSuiteTLS()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getCipherSuiteName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getCipherSuiteTLS()I
.end method

.method public getCreationTime()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->creationTime:J

    return-wide v0
.end method

.method getExportSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->exportSSLSession:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method protected abstract getIDArray()[B
.end method

.method public getId()[B
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getIDArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([B)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    return-object v0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected abstract getJsseSecurityParameters()Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;
.end method

.method protected abstract getJsseSessionParameters()Lorg/bouncycastle/jsse/provider/JsseSessionParameters;
.end method

.method public getLastAccessedTime()J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->lastAccessedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract getLocalCertificateTLS()Lorg/bouncycastle/tls/Certificate;
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getLocalCertificateTLS()Lorg/bouncycastle/tls/Certificate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getX509CertificateChain(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getLocalCertificateTLS()Lorg/bouncycastle/tls/Certificate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getSubject(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPacketBufferSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getProtocolTLS()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv11(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x420f

    return v0

    :cond_1
    const/16 v0, 0x4405

    return v0

    :cond_2
    :goto_0
    const/16 v0, 0x480b

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

.method protected abstract getPeerCertificateTLS()Lorg/bouncycastle/tls/Certificate;
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getPeerCertificateTLS()Lorg/bouncycastle/tls/Certificate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getX509CertificateChain(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer identity established"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->peerPort:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getPeerCertificateTLS()Lorg/bouncycastle/tls/Certificate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getSubject(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer identity established"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getProtocolTLS()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getProtocolVersionName(Lorg/bouncycastle/tls/ProtocolVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getProtocolTLS()Lorg/bouncycastle/tls/ProtocolVersion;
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljavax/net/ssl/SSLPermission;

    const-string v2, "getSSLSessionContext"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->sslSessionContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSessionContext;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->valueMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->valueMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->valueMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->valueMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getIDArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final invalidate()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->implInvalidate(Z)V

    return-void
.end method

.method protected abstract invalidateTLS()V
.end method

.method final invalidatedBySessionContext()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->implInvalidate(Z)V

    return-void
.end method

.method public isFipsMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->isFips:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->sslSessionContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getIDArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected notifyBound(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v0, :cond_0

    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v0, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v0, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_0
    return-void
.end method

.method protected notifyUnbound(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v0, :cond_0

    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v0, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v0, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_0
    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->valueMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->notifyUnbound(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->notifyBound(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->valueMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->notifyUnbound(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getCreationTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionBase;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
