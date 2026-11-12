.class public Lorg/bouncycastle/tls/DTLSServerProtocol;
.super Lorg/bouncycastle/tls/DTLSProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;
    }
.end annotation


# instance fields
.field protected verifyRequests:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/tls/DTLSProtocol;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol;->verifyRequests:Z

    return-void
.end method


# virtual methods
.method protected abortServerHandshake(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/DTLSRecordLayer;S)V
    .locals 0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/tls/DTLSRecordLayer;->fail(S)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DTLSServerProtocol;->invalidateSession(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;)V

    return-void
.end method

.method public accept(Lorg/bouncycastle/tls/TlsServer;Lorg/bouncycastle/tls/DatagramTransport;)Lorg/bouncycastle/tls/DTLSTransport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/tls/DTLSServerProtocol;->accept(Lorg/bouncycastle/tls/TlsServer;Lorg/bouncycastle/tls/DatagramTransport;Lorg/bouncycastle/tls/DTLSRequest;)Lorg/bouncycastle/tls/DTLSTransport;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/bouncycastle/tls/TlsServer;Lorg/bouncycastle/tls/DatagramTransport;Lorg/bouncycastle/tls/DTLSRequest;)Lorg/bouncycastle/tls/DTLSTransport;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsServer;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsServerContextImpl;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V

    new-instance v1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;

    invoke-direct {v1}, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;-><init>()V

    iput-object p1, v1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/tls/TlsServer;

    iput-object v0, v1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/TlsServer;->init(Lorg/bouncycastle/tls/TlsServerContext;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/TlsServerContextImpl;->handshakeBeginning(Lorg/bouncycastle/tls/TlsPeer;)V

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v2

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsServer;->shouldUseExtendedPadding()Z

    move-result v3

    iput-boolean v3, v2, Lorg/bouncycastle/tls/SecurityParameters;->extendedPadding:Z

    new-instance v3, Lorg/bouncycastle/tls/DTLSRecordLayer;

    invoke-direct {v3, v0, p1, p2}, Lorg/bouncycastle/tls/DTLSRecordLayer;-><init>(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsPeer;Lorg/bouncycastle/tls/DatagramTransport;)V

    invoke-interface {p1, v3}, Lorg/bouncycastle/tls/TlsServer;->notifyCloseHandle(Lorg/bouncycastle/tls/TlsCloseable;)V

    const/16 p1, 0x50

    :try_start_0
    invoke-virtual {p0, v1, v3, p3}, Lorg/bouncycastle/tls/DTLSServerProtocol;->serverHandshake(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/DTLSRecordLayer;Lorg/bouncycastle/tls/DTLSRequest;)Lorg/bouncycastle/tls/DTLSTransport;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->clear()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p0, v1, v3, p1}, Lorg/bouncycastle/tls/DTLSServerProtocol;->abortServerHandshake(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/DTLSRecordLayer;S)V

    new-instance p3, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p3, p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p2

    invoke-virtual {p0, v1, v3, p1}, Lorg/bouncycastle/tls/DTLSServerProtocol;->abortServerHandshake(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/DTLSRecordLayer;S)V

    throw p2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsFatalAlert;->getAlertDescription()S

    move-result p2

    invoke-virtual {p0, v1, v3, p2}, Lorg/bouncycastle/tls/DTLSServerProtocol;->abortServerHandshake(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/DTLSRecordLayer;S)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->clear()V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'transport\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'server\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected cancelSession(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;)V
    .locals 2

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsSecret;->destroy()V

    iput-object v1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SessionParameters;->clear()V

    iput-object v1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    :cond_1
    iput-object v1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    return-void
.end method

.method protected establishSession(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/TlsSession;)Z
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    iput-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    iput-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsSession;->isResumable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsSession;->exportSessionParameters()Lorg/bouncycastle/tls/SessionParameters;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/tls/SessionParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/bouncycastle/tls/SessionParameters;->isExtendedMasterSecret()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->isExtendedMasterSecretOptional(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    iget-object v2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SessionParameters;->getMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/tls/TlsUtils;->getSessionMasterSecret(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    iput-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    iput-object v1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    iput-object v2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method protected expectCertificateVerifyMessage(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;)Z
    .locals 2

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsKeyExchange;->requiresCertificateVerify()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method protected generateCertificateRequest(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/CertificateRequest;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object p1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {p2, p1, v0}, Lorg/bouncycastle/tls/CertificateRequest;->encode(Lorg/bouncycastle/tls/TlsContext;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected generateCertificateStatus(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/CertificateStatus;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/CertificateStatus;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected generateNewSessionTicket(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/NewSessionTicket;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/NewSessionTicket;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected generateServerHello(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/DTLSRecordLayer;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/tls/TlsServer;

    iget-object v1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v2

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getClientSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/bouncycastle/tls/ProtocolVersion;->contains([Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v3

    const/16 v5, 0x50

    if-eqz v3, :cond_16

    iput-object v4, v2, Lorg/bouncycastle/tls/SecurityParameters;->negotiatedVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->shouldUseGMTUnixTime()Z

    move-result v3

    invoke-static {v3, v1}, Lorg/bouncycastle/tls/TlsProtocol;->createRandomBlock(ZLorg/bouncycastle/tls/TlsContext;)[B

    move-result-object v3

    iput-object v3, v2, Lorg/bouncycastle/tls/SecurityParameters;->serverRandom:[B

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->getProtocolVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/tls/ProtocolVersion;->getLatestDTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v3

    invoke-static {v4, v3}, Lorg/bouncycastle/tls/TlsUtils;->writeDowngradeMarker(Lorg/bouncycastle/tls/ProtocolVersion;[B)V

    :cond_0
    iget-object v3, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v3}, Lorg/bouncycastle/tls/ClientHello;->getExtensions()Ljava/util/Hashtable;

    move-result-object v3

    iget-object v6, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v6}, Lorg/bouncycastle/tls/ClientHello;->getSessionID()[B

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/bouncycastle/tls/TlsServer;->getSessionToResume([B)Lorg/bouncycastle/tls/TlsSession;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lorg/bouncycastle/tls/DTLSServerProtocol;->establishSession(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/TlsSession;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    iget-object v8, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/tls/SessionParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v6, 0x0

    :cond_1
    invoke-static {v4}, Lorg/bouncycastle/tls/TlsUtils;->isExtendedMasterSecretOptional(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->shouldUseExtendedMasterSecret()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->requiresExtendedMasterSecret()Z

    move-result v8

    const/16 v10, 0x28

    if-nez v8, :cond_5

    if-eqz v6, :cond_6

    iget-object v8, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/tls/SessionParameters;->isExtendedMasterSecret()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->allowLegacyResumption()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p2, "Extended Master Secret extension is required for legacy session resumption"

    invoke-direct {p1, v10, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p2, "Extended Master Secret extension is required for EMS session resumption"

    invoke-direct {p1, v10, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p2, "Extended Master Secret extension is required"

    invoke-direct {p1, v10, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v6, :cond_7

    iget-object v10, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/tls/SessionParameters;->isExtendedMasterSecret()Z

    move-result v10

    if-eq v8, v10, :cond_7

    goto :goto_2

    :cond_7
    move v7, v6

    :goto_2
    iput-boolean v8, v2, Lorg/bouncycastle/tls/SecurityParameters;->extendedMasterSecret:Z

    const/4 v10, 0x0

    if-nez v7, :cond_9

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DTLSServerProtocol;->cancelSession(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;)V

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->getNewSessionID()[B

    move-result-object v6

    if-nez v6, :cond_8

    sget-object v6, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_8
    invoke-static {v6, v10}, Lorg/bouncycastle/tls/TlsUtils;->importSession([BLorg/bouncycastle/tls/SessionParameters;)Lorg/bouncycastle/tls/TlsSession;

    move-result-object v6

    iput-object v6, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    :cond_9
    iput-boolean v7, v2, Lorg/bouncycastle/tls/SecurityParameters;->resumedSession:Z

    iget-object v6, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-interface {v6}, Lorg/bouncycastle/tls/TlsSession;->getSessionID()[B

    move-result-object v6

    iput-object v6, v2, Lorg/bouncycastle/tls/SecurityParameters;->sessionID:[B

    iget-object v6, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-interface {v0, v6}, Lorg/bouncycastle/tls/TlsServer;->notifySession(Lorg/bouncycastle/tls/TlsSession;)V

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedVersionDTLSServer(Lorg/bouncycastle/tls/TlsServerContext;)V

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->getSelectedCipherSuite()I

    move-result v6

    invoke-static {v6, v5}, Lorg/bouncycastle/tls/DTLSServerProtocol;->validateSelectedCipherSuite(IS)I

    move-result v6

    iget-object v8, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v8}, Lorg/bouncycastle/tls/ClientHello;->getCipherSuites()[I

    move-result-object v8

    invoke-static {v8, v6}, Lorg/bouncycastle/tls/TlsUtils;->isValidCipherSuiteSelection([II)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/bouncycastle/tls/TlsUtils;->isValidVersionForCipherSuite(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-static {v2, v6}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedCipherSuite(Lorg/bouncycastle/tls/SecurityParameters;I)V

    if-eqz v7, :cond_a

    iget-object v6, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/tls/SessionParameters;->readServerExtensions()Ljava/util/Hashtable;

    move-result-object v6

    goto :goto_3

    :cond_a
    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->getServerExtensions()Ljava/util/Hashtable;

    move-result-object v6

    :goto_3
    invoke-static {v6}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v6

    iput-object v6, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    iget-object v6, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-interface {v0, v6}, Lorg/bouncycastle/tls/TlsServer;->getServerExtensionsForConnection(Ljava/util/Hashtable;)V

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isSecureRenegotiation()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v6, Lorg/bouncycastle/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v0, v6}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v6, Lorg/bouncycastle/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    sget-object v8, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v8}, Lorg/bouncycastle/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addExtendedMasterSecretExtension(Ljava/util/Hashtable;)V

    goto :goto_4

    :cond_c
    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v6, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_extended_master_secret:Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    if-nez v0, :cond_d

    iget-short v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->heartbeatPolicy:S

    if-ne v9, v0, :cond_e

    :cond_d
    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    new-instance v6, Lorg/bouncycastle/tls/HeartbeatExtension;

    iget-short v8, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->heartbeatPolicy:S

    invoke-direct {v6, v8}, Lorg/bouncycastle/tls/HeartbeatExtension;-><init>(S)V

    invoke-static {v0, v6}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addHeartbeatExtension(Ljava/util/Hashtable;Lorg/bouncycastle/tls/HeartbeatExtension;)V

    :cond_e
    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getALPNExtensionServer(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/ProtocolName;

    move-result-object v0

    iput-object v0, v2, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocol:Lorg/bouncycastle/tls/ProtocolName;

    iput-boolean v9, v2, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocolSet:Z

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getConnectionIDExtension(Ljava/util/Hashtable;)[B

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getConnectionIDExtension(Ljava/util/Hashtable;)[B

    move-result-object v6

    if-eqz v6, :cond_f

    iput-object v6, v2, Lorg/bouncycastle/tls/SecurityParameters;->connectionIDLocal:[B

    iput-object v0, v2, Lorg/bouncycastle/tls/SecurityParameters;->connectionIDPeer:[B

    goto :goto_5

    :cond_f
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_10
    :goto_5
    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v0

    iput-boolean v0, v2, Lorg/bouncycastle/tls/SecurityParameters;->encryptThenMAC:Z

    if-eqz v7, :cond_11

    move-object v0, v10

    goto :goto_6

    :cond_11
    move-object v0, v3

    :goto_6
    iget-object v6, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0, v6, v5}, Lorg/bouncycastle/tls/TlsUtils;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v0

    iput-short v0, v2, Lorg/bouncycastle/tls/SecurityParameters;->maxFragmentLength:S

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v0

    iput-boolean v0, v2, Lorg/bouncycastle/tls/SecurityParameters;->truncatedHMac:Z

    if-nez v7, :cond_14

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v6, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request_v2:Ljava/lang/Integer;

    invoke-static {v0, v6, v5}, Lorg/bouncycastle/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    iput v0, v2, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    goto :goto_7

    :cond_12
    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v6, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {v0, v6, v5}, Lorg/bouncycastle/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_13

    iput v9, v2, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    :cond_13
    :goto_7
    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v3, v0, v5}, Lorg/bouncycastle/tls/TlsUtils;->processClientCertificateTypeExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v0

    iput-short v0, v2, Lorg/bouncycastle/tls/SecurityParameters;->clientCertificateType:S

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v3, v0, v5}, Lorg/bouncycastle/tls/TlsUtils;->processServerCertificateTypeExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v0

    iput-short v0, v2, Lorg/bouncycastle/tls/SecurityParameters;->serverCertificateType:S

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v3, Lorg/bouncycastle/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {v0, v3, v5}, Lorg/bouncycastle/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    iput-boolean v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->expectSessionTicket:Z

    :cond_14
    new-instance v3, Lorg/bouncycastle/tls/ServerHello;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v5

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getSessionID()[B

    move-result-object v6

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getCipherSuite()I

    move-result v7

    iget-object v8, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/tls/ServerHello;-><init>(Lorg/bouncycastle/tls/ProtocolVersion;[B[BILjava/util/Hashtable;)V

    iput-object v10, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getMaxFragmentLength()S

    move-result p1

    invoke-static {p2, p1}, Lorg/bouncycastle/tls/DTLSServerProtocol;->applyMaxFragmentLengthExtension(Lorg/bouncycastle/tls/DTLSRecordLayer;S)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v3, v1, p1}, Lorg/bouncycastle/tls/ServerHello;->encode(Lorg/bouncycastle/tls/TlsContext;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_15
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_16
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public getVerifyRequests()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DTLSServerProtocol;->verifyRequests:Z

    return v0
.end method

.method protected invalidateSession(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;)V
    .locals 1

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsSession;->invalidate()V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DTLSServerProtocol;->cancelSession(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;)V

    return-void
.end method

.method protected notifyClientCertificate(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    iget-object v1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    iget-object p1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/tls/TlsServer;

    invoke-static {v0, p2, v1, p1}, Lorg/bouncycastle/tls/TlsUtils;->processClientCertificate(Lorg/bouncycastle/tls/TlsServerContext;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/TlsKeyExchange;Lorg/bouncycastle/tls/TlsServer;)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processCertificateVerify(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;[BLorg/bouncycastle/tls/TlsHandshakeHash;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {p2, v0}, Lorg/bouncycastle/tls/DigitallySigned;->parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/DigitallySigned;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    invoke-static {p2, p1, v1, p3}, Lorg/bouncycastle/tls/TlsUtils;->verifyCertificateVerifyClient(Lorg/bouncycastle/tls/TlsServerContext;Lorg/bouncycastle/tls/CertificateRequest;Lorg/bouncycastle/tls/DigitallySigned;Lorg/bouncycastle/tls/TlsHandshakeHash;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected processClientCertificate(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p2, Lorg/bouncycastle/tls/Certificate$ParseOptions;

    invoke-direct {p2}, Lorg/bouncycastle/tls/Certificate$ParseOptions;-><init>()V

    iget-object v1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getClientCertificateType()S

    move-result v1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/Certificate$ParseOptions;->setCertificateType(S)Lorg/bouncycastle/tls/Certificate$ParseOptions;

    move-result-object p2

    iget-object v1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsServer;->getMaxCertificateChainLength()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/Certificate$ParseOptions;->setMaxChainLength(I)Lorg/bouncycastle/tls/Certificate$ParseOptions;

    move-result-object p2

    iget-object v1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2}, Lorg/bouncycastle/tls/Certificate;->parse(Lorg/bouncycastle/tls/Certificate$ParseOptions;Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/Certificate;

    move-result-object p2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tls/DTLSServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/Certificate;)V

    return-void
.end method

.method protected processClientHello(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/ClientHello;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/ClientHello;->getVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/tls/ClientHello;->getCipherSuites()[I

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/tls/ClientHello;->getExtensions()Ljava/util/Hashtable;

    move-result-object v2

    iget-object v3, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/tls/TlsServer;

    iget-object v4, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v4}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isDTLS()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v4, v0}, Lorg/bouncycastle/tls/TlsServerContextImpl;->setRSAPreMasterSecretVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSupportedVersionsExtensionClient(Ljava/util/Hashtable;)[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/tls/TlsServerContextImpl;->setClientSupportedVersions([Lorg/bouncycastle/tls/ProtocolVersion;)V

    invoke-virtual {v4}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getClientSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v6

    if-nez v6, :cond_1

    sget-object v6, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v0, v6}, Lorg/bouncycastle/tls/ProtocolVersion;->isLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    :cond_0
    sget-object v6, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v0, v6}, Lorg/bouncycastle/tls/ProtocolVersion;->downTo(Lorg/bouncycastle/tls/ProtocolVersion;)[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/tls/TlsServerContextImpl;->setClientSupportedVersions([Lorg/bouncycastle/tls/ProtocolVersion;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getClientSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->getLatestDTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    :goto_0
    sget-object v6, Lorg/bouncycastle/tls/ProtocolVersion;->SERVER_EARLIEST_SUPPORTED_DTLS:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v6, v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v4, v0}, Lorg/bouncycastle/tls/TlsServerContextImpl;->setClientVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    invoke-virtual {v4}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getClientVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/bouncycastle/tls/TlsServer;->notifyClientVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    invoke-virtual {p2}, Lorg/bouncycastle/tls/ClientHello;->getRandom()[B

    move-result-object p2

    iput-object p2, v5, Lorg/bouncycastle/tls/SecurityParameters;->clientRandom:[B

    const/16 p2, 0x5600

    invoke-static {v1, p2}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result p2

    invoke-interface {v3, p2}, Lorg/bouncycastle/tls/TlsServer;->notifyFallback(Z)V

    invoke-interface {v3, v1}, Lorg/bouncycastle/tls/TlsServer;->notifyOfferedCipherSuites([I)V

    sget-object p2, Lorg/bouncycastle/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v2, p2}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p2

    const/16 v4, 0xff

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    iput-boolean v4, v5, Lorg/bouncycastle/tls/SecurityParameters;->secureRenegotiation:Z

    :cond_2
    if-eqz p2, :cond_4

    iput-boolean v4, v5, Lorg/bouncycastle/tls/SecurityParameters;->secureRenegotiation:Z

    sget-object v1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v1

    invoke-static {p2, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x28

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_4
    :goto_1
    invoke-virtual {v5}, Lorg/bouncycastle/tls/SecurityParameters;->isSecureRenegotiation()Z

    move-result p2

    invoke-interface {v3, p2}, Lorg/bouncycastle/tls/TlsServer;->notifySecureRenegotiation(Z)V

    if-eqz v2, :cond_8

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getPaddingExtension(Ljava/util/Hashtable;)I

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getServerNameExtensionClient(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object p2

    iput-object p2, v5, Lorg/bouncycastle/tls/SecurityParameters;->clientServerNames:Ljava/util/Vector;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {v5, v2}, Lorg/bouncycastle/tls/TlsUtils;->establishClientSigAlgs(Lorg/bouncycastle/tls/SecurityParameters;Ljava/util/Hashtable;)V

    :cond_5
    invoke-static {v2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSupportedGroupsExtension(Ljava/util/Hashtable;)[I

    move-result-object p2

    iput-object p2, v5, Lorg/bouncycastle/tls/SecurityParameters;->clientSupportedGroups:[I

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getHeartbeatExtension(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/HeartbeatExtension;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lorg/bouncycastle/tls/HeartbeatExtension;->getMode()S

    move-result p2

    if-ne v4, p2, :cond_6

    invoke-interface {v3}, Lorg/bouncycastle/tls/TlsServer;->getHeartbeat()Lorg/bouncycastle/tls/TlsHeartbeat;

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    :cond_6
    invoke-interface {v3}, Lorg/bouncycastle/tls/TlsServer;->getHeartbeatPolicy()S

    move-result p2

    iput-short p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->heartbeatPolicy:S

    :cond_7
    invoke-interface {v3, v2}, Lorg/bouncycastle/tls/TlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    :cond_8
    return-void

    :cond_9
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x46

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_a
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x2f

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processClientHello(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object p2, Lorg/bouncycastle/tls/NullOutputStream;->INSTANCE:Lorg/bouncycastle/tls/NullOutputStream;

    invoke-static {v0, p2}, Lorg/bouncycastle/tls/ClientHello;->parse(Ljava/io/ByteArrayInputStream;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/ClientHello;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tls/DTLSServerProtocol;->processClientHello(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/ClientHello;)V

    return-void
.end method

.method protected processClientKeyExchange(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/TlsKeyExchange;->processClientKeyExchange(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method protected processClientSupplementalData(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object p2

    iget-object p1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p1, p2}, Lorg/bouncycastle/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    return-void
.end method

.method protected serverHandshake(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/DTLSRecordLayer;Lorg/bouncycastle/tls/DTLSRequest;)Lorg/bouncycastle/tls/DTLSTransport;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/bouncycastle/tls/TlsServer;

    iget-object v2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v7

    new-instance v1, Lorg/bouncycastle/tls/DTLSReliableHandshake;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->getHandshakeTimeoutMillis()I

    move-result v4

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->getHandshakeResendTimeMillis()I

    move-result v5

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/tls/DTLSReliableHandshake;-><init>(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/DTLSRecordLayer;IILorg/bouncycastle/tls/DTLSRequest;)V

    const/16 p2, 0xa

    const/4 p3, 0x1

    if-nez v6, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v5

    if-ne v5, p3, :cond_0

    invoke-virtual {v4}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/bouncycastle/tls/DTLSServerProtocol;->processClientHello(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    invoke-virtual {v6}, Lorg/bouncycastle/tls/DTLSRequest;->getClientHello()Lorg/bouncycastle/tls/ClientHello;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/bouncycastle/tls/DTLSServerProtocol;->processClientHello(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/ClientHello;)V

    :goto_0
    invoke-virtual {p0, p1, v3}, Lorg/bouncycastle/tls/DTLSServerProtocol;->generateServerHello(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/DTLSRecordLayer;)[B

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/tls/DTLSRecordLayer;->setReadVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/tls/DTLSRecordLayer;->setWriteVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/tls/TlsHandshakeHash;->notifyPRFDetermined()V

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v4

    const/16 v5, 0x14

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object p2, v7, Lorg/bouncycastle/tls/SecurityParameters;->masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->initCipher(Lorg/bouncycastle/tls/TlsContext;)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/bouncycastle/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/bouncycastle/tls/crypto/TlsCipher;)V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object p2

    invoke-static {v2, p2, p3}, Lorg/bouncycastle/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B

    move-result-object p2

    iput-object p2, v7, Lorg/bouncycastle/tls/SecurityParameters;->localVerifyData:[B

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalVerifyData()[B

    move-result-object p2

    invoke-virtual {v1, v5, p2}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object p2

    invoke-static {v2, p2, v6}, Lorg/bouncycastle/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B

    move-result-object p2

    iput-object p2, v7, Lorg/bouncycastle/tls/SecurityParameters;->peerVerifyData:[B

    invoke-virtual {v1, v5}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object p2

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerVerifyData()[B

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Lorg/bouncycastle/tls/DTLSServerProtocol;->processFinished([B[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->finish()V

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalVerifyData()[B

    move-result-object p2

    iput-object p2, v7, Lorg/bouncycastle/tls/SecurityParameters;->tlsUnique:[B

    :cond_2
    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->getLocalCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object p2

    iput-object p2, v7, Lorg/bouncycastle/tls/SecurityParameters;->localCertificate:Lorg/bouncycastle/tls/Certificate;

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object p2

    iput-object p2, v7, Lorg/bouncycastle/tls/SecurityParameters;->peerCertificate:Lorg/bouncycastle/tls/Certificate;

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->getPSKIdentity()[B

    move-result-object p2

    iput-object p2, v7, Lorg/bouncycastle/tls/SecurityParameters;->pskIdentity:[B

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->getSRPIdentity()[B

    move-result-object p2

    iput-object p2, v7, Lorg/bouncycastle/tls/SecurityParameters;->srpIdentity:[B

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-virtual {v2, v0, p2}, Lorg/bouncycastle/tls/TlsServerContextImpl;->handshakeComplete(Lorg/bouncycastle/tls/TlsPeer;Lorg/bouncycastle/tls/TlsSession;)V

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    iget-short p1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->heartbeatPolicy:S

    if-ne p3, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {v3, p2, p3}, Lorg/bouncycastle/tls/DTLSRecordLayer;->initHeartbeat(Lorg/bouncycastle/tls/TlsHeartbeat;Z)V

    new-instance p1, Lorg/bouncycastle/tls/DTLSTransport;

    invoke-direct {p1, v3}, Lorg/bouncycastle/tls/DTLSTransport;-><init>(Lorg/bouncycastle/tls/DTLSRecordLayer;)V

    return-object p1

    :cond_4
    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->getServerSupplementalData()Ljava/util/Vector;

    move-result-object v4

    const/16 v8, 0x17

    if-eqz v4, :cond_5

    invoke-static {v4}, Lorg/bouncycastle/tls/DTLSServerProtocol;->generateSupplementalData(Ljava/util/Vector;)[B

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    :cond_5
    invoke-static {v2, v0}, Lorg/bouncycastle/tls/TlsUtils;->initKeyExchangeServer(Lorg/bouncycastle/tls/TlsServerContext;Lorg/bouncycastle/tls/TlsServer;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object v4

    iput-object v4, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    const/4 v4, 0x0

    iput-object v4, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentials;

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getKeyExchangeAlgorithm()I

    move-result v9

    invoke-static {v9}, Lorg/bouncycastle/tls/KeyExchangeAlgorithm;->isAnonymous(I)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->establishServerCredentials(Lorg/bouncycastle/tls/TlsServer;)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object v9

    iput-object v9, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentials;

    :cond_6
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v10, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentials;

    if-nez v10, :cond_7

    iget-object v10, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {v10}, Lorg/bouncycastle/tls/TlsKeyExchange;->skipServerCredentials()V

    move-object v10, v4

    goto :goto_2

    :cond_7
    iget-object v10, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    iget-object v11, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentials;

    invoke-interface {v10, v11}, Lorg/bouncycastle/tls/TlsKeyExchange;->processServerCredentials(Lorg/bouncycastle/tls/TlsCredentials;)V

    iget-object v10, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentials;

    invoke-interface {v10}, Lorg/bouncycastle/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v10

    invoke-static {v2, v1, v10, v9}, Lorg/bouncycastle/tls/DTLSServerProtocol;->sendCertificateMessage(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/DTLSReliableHandshake;Lorg/bouncycastle/tls/Certificate;Ljava/io/OutputStream;)V

    :goto_2
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v7, Lorg/bouncycastle/tls/SecurityParameters;->tlsServerEndPoint:[B

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    iput v6, v7, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    :cond_9
    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getStatusRequestVersion()I

    move-result v9

    if-lez v9, :cond_a

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->getCertificateStatus()Lorg/bouncycastle/tls/CertificateStatus;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {p0, p1, v9}, Lorg/bouncycastle/tls/DTLSServerProtocol;->generateCertificateStatus(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/CertificateStatus;)[B

    move-result-object v9

    const/16 v10, 0x16

    invoke-virtual {v1, v10, v9}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    :cond_a
    iget-object v9, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {v9}, Lorg/bouncycastle/tls/TlsKeyExchange;->generateServerKeyExchange()[B

    move-result-object v9

    if-eqz v9, :cond_b

    const/16 v10, 0xc

    invoke-virtual {v1, v10, v9}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    :cond_b
    iget-object v9, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentials;

    if-eqz v9, :cond_11

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->getCertificateRequest()Lorg/bouncycastle/tls/CertificateRequest;

    move-result-object v9

    iput-object v9, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    iget-object v9, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    const/16 v10, 0x50

    if-nez v9, :cond_d

    iget-object v9, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {v9}, Lorg/bouncycastle/tls/TlsKeyExchange;->requiresCertificateVerify()Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_5

    :cond_c
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v10}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_d
    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result v9

    iget-object v11, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    invoke-virtual {v11}, Lorg/bouncycastle/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v11

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    goto :goto_3

    :cond_e
    const/4 v11, 0x0

    :goto_3
    if-ne v9, v11, :cond_10

    iget-object v9, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    iget-object v10, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-static {v9, v10}, Lorg/bouncycastle/tls/TlsUtils;->validateCertificateRequest(Lorg/bouncycastle/tls/CertificateRequest;Lorg/bouncycastle/tls/TlsKeyExchange;)Lorg/bouncycastle/tls/CertificateRequest;

    move-result-object v9

    iput-object v9, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    iget-object v9, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    invoke-static {v7, v9}, Lorg/bouncycastle/tls/TlsUtils;->establishServerSigAlgs(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/CertificateRequest;)V

    sget-object v9, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v9

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getServerSigAlgs()Ljava/util/Vector;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/bouncycastle/tls/TlsUtils;->trackHashAlgorithms(Lorg/bouncycastle/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v9

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getServerSigAlgs()Ljava/util/Vector;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasAnyStreamVerifiers(Ljava/util/Vector;)Z

    move-result v9

    if-eqz v9, :cond_11

    goto :goto_4

    :cond_f
    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v9

    iget-object v10, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    invoke-virtual {v10}, Lorg/bouncycastle/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasAnyStreamVerifiersLegacy([S)Z

    move-result v9

    if-eqz v9, :cond_11

    :goto_4
    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v9

    invoke-interface {v9}, Lorg/bouncycastle/tls/TlsHandshakeHash;->forceBuffering()V

    goto :goto_5

    :cond_10
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v10}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_11
    :goto_5
    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v9

    invoke-interface {v9}, Lorg/bouncycastle/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    iget-object v9, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-eqz v9, :cond_12

    iget-object v9, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    invoke-virtual {p0, p1, v9}, Lorg/bouncycastle/tls/DTLSServerProtocol;->generateCertificateRequest(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/CertificateRequest;)[B

    move-result-object v9

    const/16 v10, 0xd

    invoke-virtual {v1, v10, v9}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    :cond_12
    const/16 v9, 0xe

    sget-object v10, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-virtual {v1, v9, v10}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v10

    if-ne v10, v8, :cond_13

    invoke-virtual {v9}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/bouncycastle/tls/DTLSServerProtocol;->processClientSupplementalData(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;

    move-result-object v9

    goto :goto_6

    :cond_13
    invoke-interface {v0, v4}, Lorg/bouncycastle/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    :goto_6
    iget-object v4, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-nez v4, :cond_14

    iget-object v4, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {v4}, Lorg/bouncycastle/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_7

    :cond_14
    invoke-virtual {v9}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v4

    const/16 v8, 0xb

    if-ne v4, v8, :cond_15

    invoke-virtual {v9}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/bouncycastle/tls/DTLSServerProtocol;->processClientCertificate(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;

    move-result-object v9

    goto :goto_7

    :cond_15
    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result v4

    if-nez v4, :cond_1a

    sget-object v4, Lorg/bouncycastle/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/tls/Certificate;

    invoke-virtual {p0, p1, v4}, Lorg/bouncycastle/tls/DTLSServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/Certificate;)V

    :goto_7
    invoke-virtual {v9}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v4

    const/16 v8, 0x10

    if-ne v4, v8, :cond_19

    invoke-virtual {v9}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tls/DTLSServerProtocol;->processClientKeyExchange(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->getCurrentPRFHash(Lorg/bouncycastle/tls/TlsHandshakeHash;)[B

    move-result-object p2

    iput-object p2, v7, Lorg/bouncycastle/tls/SecurityParameters;->sessionHash:[B

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-static {v2, p2}, Lorg/bouncycastle/tls/TlsProtocol;->establishMasterSecret(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsKeyExchange;)V

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->initCipher(Lorg/bouncycastle/tls/TlsContext;)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/bouncycastle/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/bouncycastle/tls/crypto/TlsCipher;)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DTLSServerProtocol;->expectCertificateVerifyMessage(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;)Z

    move-result p2

    if-eqz p2, :cond_16

    const/16 p2, 0xf

    invoke-virtual {v1, p2}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessageDelayedDigest(S)Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v8

    invoke-virtual {p0, p1, v4, v8}, Lorg/bouncycastle/tls/DTLSServerProtocol;->processCertificateVerify(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;[BLorg/bouncycastle/tls/TlsHandshakeHash;)V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->prepareToFinish()V

    invoke-virtual {v1, p2}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->updateHandshakeMessagesDigest(Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;)V

    goto :goto_8

    :cond_16
    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->prepareToFinish()V

    :goto_8
    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object p2

    invoke-static {v2, p2, v6}, Lorg/bouncycastle/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B

    move-result-object p2

    iput-object p2, v7, Lorg/bouncycastle/tls/SecurityParameters;->peerVerifyData:[B

    invoke-virtual {v1, v5}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object p2

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerVerifyData()[B

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Lorg/bouncycastle/tls/DTLSServerProtocol;->processFinished([B[B)V

    iget-boolean p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->expectSessionTicket:Z

    if-eqz p2, :cond_17

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServer;->getNewSessionTicket()Lorg/bouncycastle/tls/NewSessionTicket;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tls/DTLSServerProtocol;->generateNewSessionTicket(Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/bouncycastle/tls/NewSessionTicket;)[B

    move-result-object p2

    const/4 v4, 0x4

    invoke-virtual {v1, v4, p2}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    :cond_17
    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object p2

    invoke-static {v2, p2, p3}, Lorg/bouncycastle/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B

    move-result-object p2

    iput-object p2, v7, Lorg/bouncycastle/tls/SecurityParameters;->localVerifyData:[B

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalVerifyData()[B

    move-result-object p2

    invoke-virtual {v1, v5, p2}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->finish()V

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    new-instance p2, Lorg/bouncycastle/tls/SessionParameters$Builder;

    invoke-direct {p2}, Lorg/bouncycastle/tls/SessionParameters$Builder;-><init>()V

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getCipherSuite()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setCipherSuite(I)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object p2

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result v1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setExtendedMasterSecret(Z)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object p2

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setLocalCertificate(Lorg/bouncycastle/tls/Certificate;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object p2

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v1

    iget-object v4, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-interface {v1, v4}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->adoptSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setMasterSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object p2

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setNegotiatedVersion(Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object p2

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setPeerCertificate(Lorg/bouncycastle/tls/Certificate;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object p2

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getPSKIdentity()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setPSKIdentity([B)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object p2

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getSRPIdentity()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setSRPIdentity([B)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object p2

    iget-object v1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setServerExtensions(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters$Builder;->build()Lorg/bouncycastle/tls/SessionParameters;

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getSessionID()[B

    move-result-object p2

    iget-object v1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-static {p2, v1}, Lorg/bouncycastle/tls/TlsUtils;->importSession([BLorg/bouncycastle/tls/SessionParameters;)Lorg/bouncycastle/tls/TlsSession;

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerVerifyData()[B

    move-result-object p2

    iput-object p2, v7, Lorg/bouncycastle/tls/SecurityParameters;->tlsUnique:[B

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-virtual {v2, v0, p2}, Lorg/bouncycastle/tls/TlsServerContextImpl;->handshakeComplete(Lorg/bouncycastle/tls/TlsPeer;Lorg/bouncycastle/tls/TlsSession;)V

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    iget-short p1, p1, Lorg/bouncycastle/tls/DTLSServerProtocol$ServerHandshakeState;->heartbeatPolicy:S

    if-ne p3, p1, :cond_18

    goto :goto_9

    :cond_18
    const/4 p3, 0x0

    :goto_9
    invoke-virtual {v3, p2, p3}, Lorg/bouncycastle/tls/DTLSRecordLayer;->initHeartbeat(Lorg/bouncycastle/tls/TlsHeartbeat;Z)V

    new-instance p1, Lorg/bouncycastle/tls/DTLSTransport;

    invoke-direct {p1, v3}, Lorg/bouncycastle/tls/DTLSTransport;-><init>(Lorg/bouncycastle/tls/DTLSRecordLayer;)V

    return-object p1

    :cond_19
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1a
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public setVerifyRequests(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/tls/DTLSServerProtocol;->verifyRequests:Z

    return-void
.end method
