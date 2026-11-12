.class public Lorg/bouncycastle/tls/TlsServerProtocol;
.super Lorg/bouncycastle/tls/TlsProtocol;


# instance fields
.field protected certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

.field protected keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

.field protected offeredCipherSuites:[I

.field protected tlsServer:Lorg/bouncycastle/tls/TlsServer;

.field tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/tls/TlsProtocol;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->offeredCipherSuites:[I

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/TlsProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->offeredCipherSuites:[I

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    return-void
.end method


# virtual methods
.method public accept(Lorg/bouncycastle/tls/TlsServer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    new-instance v0, Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsServer;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsServerContextImpl;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/TlsServer;->init(Lorg/bouncycastle/tls/TlsServerContext;)V

    invoke-interface {p1, p0}, Lorg/bouncycastle/tls/TlsServer;->notifyCloseHandle(Lorg/bouncycastle/tls/TlsCloseable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->beginHandshake(Z)V

    iget-boolean p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->blocking:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->blockForHandshake()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'accept\' can only be called once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'tlsServer\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected cleanupHandshake()V
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/tls/TlsProtocol;->cleanupHandshake()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->offeredCipherSuites:[I

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    return-void
.end method

.method protected expectCertificateVerifyMessage()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsKeyExchange;->requiresCertificateVerify()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method protected generate13HelloRetryRequest(Lorg/bouncycastle/tls/ClientHello;)Lorg/bouncycastle/tls/ServerHello;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->retryGroup:I

    const/16 v1, 0x50

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    invoke-static {v3, v2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addSupportedVersionsExtensionServer(Ljava/util/Hashtable;Lorg/bouncycastle/tls/ProtocolVersion;)V

    iget v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->retryGroup:I

    if-ltz v2, :cond_0

    iget v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->retryGroup:I

    invoke-static {v3, v2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addKeyShareHelloRetryRequest(Ljava/util/Hashtable;I)V

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->retryCookie:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->retryCookie:[B

    invoke-static {v3, v2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addCookieExtension(Ljava/util/Hashtable;[B)V

    :cond_1
    const/4 v2, 0x6

    invoke-static {v3, v2, v1}, Lorg/bouncycastle/tls/TlsUtils;->checkExtensionData13(Ljava/util/Hashtable;IS)V

    new-instance v1, Lorg/bouncycastle/tls/ServerHello;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ClientHello;->getSessionID()[B

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getCipherSuite()I

    move-result v0

    invoke-direct {v1, p1, v0, v3}, Lorg/bouncycastle/tls/ServerHello;-><init>([BILjava/util/Hashtable;)V

    return-object v1

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected generate13ServerHello(Lorg/bouncycastle/tls/ClientHello;Lorg/bouncycastle/tls/HandshakeMessageInput;Z)Lorg/bouncycastle/tls/ServerHello;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->isRenegotiating()Z

    move-result v1

    const/16 v2, 0x50

    if-nez v1, :cond_14

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ClientHello;->getSessionID()[B

    move-result-object v6

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ClientHello;->getExtensions()Ljava/util/Hashtable;

    move-result-object v9

    const/16 v1, 0x6d

    if-eqz v9, :cond_13

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v4}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v4

    iget-object v7, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    iget-object v8, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    iget-object v11, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-object v10, p2

    move/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/tls/TlsUtils;->selectPreSharedKey(Lorg/bouncycastle/tls/TlsServerContext;Lorg/bouncycastle/tls/TlsServer;Ljava/util/Hashtable;Lorg/bouncycastle/tls/HandshakeMessageInput;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)Lorg/bouncycastle/tls/OfferedPsks$SelectedConfig;

    move-result-object v5

    invoke-static {v9}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getKeyShareClientHello(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    if-eqz p3, :cond_6

    iget p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->retryGroup:I

    if-ltz p1, :cond_5

    const/16 p1, 0x2f

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSigAlgs()Ljava/util/Vector;

    move-result-object v11

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    iget-object v1, v5, Lorg/bouncycastle/tls/OfferedPsks$SelectedConfig;->psk:Lorg/bouncycastle/tls/TlsPSK;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsPSK;->getPRFAlgorithm()I

    move-result v1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFAlgorithm()I

    move-result v11

    if-ne v1, v11, :cond_4

    :goto_0
    invoke-static {v9}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getCookieExtension(Ljava/util/Hashtable;)[B

    move-result-object v1

    iget-object v11, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->retryCookie:[B

    invoke-static {v11, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v8, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->retryCookie:[B

    iget v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->retryGroup:I

    invoke-static {v7, v1}, Lorg/bouncycastle/tls/TlsUtils;->selectKeyShare(Ljava/util/Vector;I)Lorg/bouncycastle/tls/KeyShareEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_4
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_5
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_6
    iget-object v11, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {v10, v11}, Lorg/bouncycastle/tls/TlsServerProtocol;->createRandomBlock(ZLorg/bouncycastle/tls/TlsContext;)[B

    move-result-object v11

    iput-object v11, v0, Lorg/bouncycastle/tls/SecurityParameters;->serverRandom:[B

    iget-object v11, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {v11}, Lorg/bouncycastle/tls/TlsServer;->getProtocolVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/tls/ProtocolVersion;->getLatestTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v11

    invoke-static {v3, v11}, Lorg/bouncycastle/tls/TlsUtils;->writeDowngradeMarker(Lorg/bouncycastle/tls/ProtocolVersion;[B)V

    :cond_7
    iput-object v9, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    iput-boolean v10, v0, Lorg/bouncycastle/tls/SecurityParameters;->secureRenegotiation:Z

    invoke-static {v9}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getPaddingExtension(Ljava/util/Hashtable;)I

    invoke-static {v9}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getServerNameExtensionClient(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v11

    iput-object v11, v0, Lorg/bouncycastle/tls/SecurityParameters;->clientServerNames:Ljava/util/Vector;

    invoke-static {v0, v9}, Lorg/bouncycastle/tls/TlsUtils;->establishClientSigAlgs(Lorg/bouncycastle/tls/SecurityParameters;Ljava/util/Hashtable;)V

    if-nez v5, :cond_9

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSigAlgs()Ljava/util/Vector;

    move-result-object v11

    if-eqz v11, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_9
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {v1, v9}, Lorg/bouncycastle/tls/TlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    iput-boolean v10, v0, Lorg/bouncycastle/tls/SecurityParameters;->resumedSession:Z

    sget-object v1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v1, v8}, Lorg/bouncycastle/tls/TlsUtils;->importSession([BLorg/bouncycastle/tls/SessionParameters;)Lorg/bouncycastle/tls/TlsSession;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    iput-object v8, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    iput-object v8, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsSession;->getSessionID()[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/tls/SecurityParameters;->sessionID:[B

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    iget-object v11, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-interface {v1, v11}, Lorg/bouncycastle/tls/TlsServer;->notifySession(Lorg/bouncycastle/tls/TlsSession;)V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedVersionTLSServer(Lorg/bouncycastle/tls/TlsServerContext;)V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsServer;->getSelectedCipherSuite()I

    move-result v1

    iget-object v11, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-static {v11, v1}, Lorg/bouncycastle/tls/TlsUtils;->isValidCipherSuiteSelection([II)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-static {v1, v3}, Lorg/bouncycastle/tls/TlsUtils;->isValidVersionForCipherSuite(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedCipherSuite(Lorg/bouncycastle/tls/SecurityParameters;I)V

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSupportedGroups()[I

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerSupportedGroups()[I

    move-result-object v11

    invoke-static {v4, v3, v7, v1, v11}, Lorg/bouncycastle/tls/TlsUtils;->selectKeyShare(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/ProtocolVersion;Ljava/util/Vector;[I[I)Lorg/bouncycastle/tls/KeyShareEntry;

    move-result-object v7

    if-nez v7, :cond_b

    invoke-static {v4, v3, v1, v11}, Lorg/bouncycastle/tls/TlsUtils;->selectKeyShareGroup(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/ProtocolVersion;[I[I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->retryGroup:I

    iget v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->retryGroup:I

    if-ltz v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getNonceGenerator()Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;->generateNonce(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->retryCookie:[B

    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->generate13HelloRetryRequest(Lorg/bouncycastle/tls/ClientHello;)Lorg/bouncycastle/tls/ServerHello;

    move-result-object p1

    return-object p1

    :cond_a
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_b
    invoke-virtual {v7}, Lorg/bouncycastle/tls/KeyShareEntry;->getNamedGroup()I

    aget p1, v11, v10

    move-object v1, v7

    :goto_2
    move-object p1, v8

    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    iget-object v7, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {v7}, Lorg/bouncycastle/tls/TlsServer;->getServerExtensions()Ljava/util/Hashtable;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v7

    iget-object v11, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {v11, v7}, Lorg/bouncycastle/tls/TlsServer;->getServerExtensionsForConnection(Ljava/util/Hashtable;)V

    sget-object v11, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-static {v8, v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addSupportedVersionsExtensionServer(Ljava/util/Hashtable;Lorg/bouncycastle/tls/ProtocolVersion;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/bouncycastle/tls/SecurityParameters;->extendedMasterSecret:Z

    invoke-static {v7}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getALPNExtensionServer(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/ProtocolName;

    move-result-object v12

    iput-object v12, v0, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocol:Lorg/bouncycastle/tls/ProtocolName;

    iput-boolean v3, v0, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocolSet:Z

    invoke-virtual {v7}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object v12, p1

    goto :goto_3

    :cond_c
    move-object v12, v9

    :goto_3
    invoke-static {v12, v7, v2}, Lorg/bouncycastle/tls/TlsUtils;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v12

    iput-short v12, v0, Lorg/bouncycastle/tls/SecurityParameters;->maxFragmentLength:S

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-static {v9, v7, v2}, Lorg/bouncycastle/tls/TlsUtils;->processClientCertificateTypeExtension13(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v12

    iput-short v12, v0, Lorg/bouncycastle/tls/SecurityParameters;->clientCertificateType:S

    invoke-static {v9, v7, v2}, Lorg/bouncycastle/tls/TlsUtils;->processServerCertificateTypeExtension13(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v12

    iput-short v12, v0, Lorg/bouncycastle/tls/SecurityParameters;->serverCertificateType:S

    :cond_d
    iput-boolean v10, v0, Lorg/bouncycastle/tls/SecurityParameters;->encryptThenMAC:Z

    iput-boolean v10, v0, Lorg/bouncycastle/tls/SecurityParameters;->truncatedHMac:Z

    sget-object v12, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-virtual {v9, v12}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    iput v9, v0, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    iput-boolean v10, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->expectSessionTicket:Z

    if-eqz v5, :cond_e

    iget-object p1, v5, Lorg/bouncycastle/tls/OfferedPsks$SelectedConfig;->earlySecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-boolean v3, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->selectedPSK13:Z

    iget v5, v5, Lorg/bouncycastle/tls/OfferedPsks$SelectedConfig;->index:I

    invoke-static {v8, v5}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addPreSharedKeyServerHello(Ljava/util/Hashtable;I)V

    :cond_e
    invoke-virtual {v1}, Lorg/bouncycastle/tls/KeyShareEntry;->getNamedGroup()I

    move-result v5

    invoke-static {v5}, Lorg/bouncycastle/tls/NamedGroup;->refersToAnECDHCurve(I)Z

    move-result v9

    if-eqz v9, :cond_f

    new-instance v3, Lorg/bouncycastle/tls/crypto/TlsECConfig;

    invoke-direct {v3, v5}, Lorg/bouncycastle/tls/crypto/TlsECConfig;-><init>(I)V

    invoke-interface {v4, v3}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createECDomain(Lorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/crypto/TlsECDomain;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/tls/crypto/TlsECDomain;->createECDH()Lorg/bouncycastle/tls/crypto/TlsAgreement;

    move-result-object v3

    goto :goto_4

    :cond_f
    invoke-static {v5}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificFiniteField(I)Z

    move-result v9

    if-eqz v9, :cond_10

    new-instance v9, Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    invoke-direct {v9, v5, v3}, Lorg/bouncycastle/tls/crypto/TlsDHConfig;-><init>(IZ)V

    invoke-interface {v4, v9}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createDHDomain(Lorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/crypto/TlsDHDomain;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/tls/crypto/TlsDHDomain;->createDH()Lorg/bouncycastle/tls/crypto/TlsAgreement;

    move-result-object v3

    goto :goto_4

    :cond_10
    invoke-static {v5}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificKem(I)Z

    move-result v9

    if-eqz v9, :cond_11

    new-instance v9, Lorg/bouncycastle/tls/crypto/TlsKemConfig;

    invoke-direct {v9, v5, v3}, Lorg/bouncycastle/tls/crypto/TlsKemConfig;-><init>(IZ)V

    invoke-interface {v4, v9}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createKemDomain(Lorg/bouncycastle/tls/crypto/TlsKemConfig;)Lorg/bouncycastle/tls/crypto/TlsKemDomain;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/tls/crypto/TlsKemDomain;->createKem()Lorg/bouncycastle/tls/crypto/TlsAgreement;

    move-result-object v3

    :goto_4
    invoke-virtual {v1}, Lorg/bouncycastle/tls/KeyShareEntry;->getKeyExchange()[B

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/bouncycastle/tls/crypto/TlsAgreement;->receivePeerValue([B)V

    invoke-interface {v3}, Lorg/bouncycastle/tls/crypto/TlsAgreement;->generateEphemeral()[B

    move-result-object v1

    new-instance v4, Lorg/bouncycastle/tls/KeyShareEntry;

    invoke-direct {v4, v5, v1}, Lorg/bouncycastle/tls/KeyShareEntry;-><init>(I[B)V

    invoke-static {v8, v4}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addKeyShareServerHello(Ljava/util/Hashtable;Lorg/bouncycastle/tls/KeyShareEntry;)V

    invoke-interface {v3}, Lorg/bouncycastle/tls/crypto/TlsAgreement;->calculateSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {v3, p1, v1}, Lorg/bouncycastle/tls/TlsUtils;->establish13PhaseSecrets(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsSecret;Lorg/bouncycastle/tls/crypto/TlsSecret;)V

    iput-object v7, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getMaxFragmentLength()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->applyMaxFragmentLengthExtension(S)V

    const/4 p1, 0x2

    invoke-static {v8, p1, v2}, Lorg/bouncycastle/tls/TlsUtils;->checkExtensionData13(Ljava/util/Hashtable;IS)V

    new-instance v3, Lorg/bouncycastle/tls/ServerHello;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getCipherSuite()I

    move-result v7

    move-object v4, v11

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/tls/ServerHello;-><init>(Lorg/bouncycastle/tls/ProtocolVersion;[B[BILjava/util/Hashtable;)V

    return-object v3

    :cond_11
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_12
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_13
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_14
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected generateServerHello(Lorg/bouncycastle/tls/ClientHello;Lorg/bouncycastle/tls/HandshakeMessageInput;)Lorg/bouncycastle/tls/ServerHello;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ClientHello;->getVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isTLS()Z

    move-result v1

    const/16 v2, 0x2f

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ClientHello;->getCipherSuites()[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->offeredCipherSuites:[I

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ClientHello;->getExtensions()Ljava/util/Hashtable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSupportedVersionsExtensionClient(Ljava/util/Hashtable;)[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/tls/TlsServerContextImpl;->setClientSupportedVersions([Lorg/bouncycastle/tls/ProtocolVersion;)V

    iget-object v3, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v3}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getClientSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/tls/ProtocolVersion;->isLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    sget-object v5, Lorg/bouncycastle/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v3, v5}, Lorg/bouncycastle/tls/ProtocolVersion;->downTo(Lorg/bouncycastle/tls/ProtocolVersion;)[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/tls/TlsServerContextImpl;->setClientSupportedVersions([Lorg/bouncycastle/tls/ProtocolVersion;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v3}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getClientSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/tls/ProtocolVersion;->getLatestTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    sget-object v4, Lorg/bouncycastle/tls/ProtocolVersion;->SERVER_EARLIEST_SUPPORTED_TLS:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isRenegotiating()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v4}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getClientVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v4}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/tls/TlsServerContextImpl;->setClientVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    :cond_4
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    iget-object v4, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v4}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getClientVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/bouncycastle/tls/TlsServer;->notifyClientVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ClientHello;->getRandom()[B

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/tls/SecurityParameters;->clientRandom:[B

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    iget-object v4, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->offeredCipherSuites:[I

    const/16 v5, 0x5600

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v4

    invoke-interface {v2, v4}, Lorg/bouncycastle/tls/TlsServer;->notifyFallback(Z)V

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    iget-object v4, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-interface {v2, v4}, Lorg/bouncycastle/tls/TlsServer;->notifyOfferedCipherSuites([I)V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isRenegotiating()Z

    move-result v2

    const/16 v4, 0x50

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    :goto_3
    move-object v7, v2

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsServer;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    iget-object v5, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v5}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getClientSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/bouncycastle/tls/ProtocolVersion;->contains([Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v5

    if-eqz v5, :cond_26

    iput-object v2, v1, Lorg/bouncycastle/tls/SecurityParameters;->negotiatedVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    goto :goto_3

    :goto_4
    invoke-virtual {p1}, Lorg/bouncycastle/tls/ClientHello;->getExtensions()Ljava/util/Hashtable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSupportedGroupsExtension(Ljava/util/Hashtable;)[I

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/tls/SecurityParameters;->clientSupportedGroups:[I

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsServer;->getSupportedGroups()[I

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/tls/SecurityParameters;->serverSupportedGroups:[I

    sget-object v2, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v2, v7}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v0, v6}, Lorg/bouncycastle/tls/RecordStream;->setIgnoreChangeCipherSpec(Z)V

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    sget-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    invoke-virtual {p0, p1, p2, v5}, Lorg/bouncycastle/tls/TlsServerProtocol;->generate13ServerHello(Lorg/bouncycastle/tls/ClientHello;Lorg/bouncycastle/tls/HandshakeMessageInput;Z)Lorg/bouncycastle/tls/ServerHello;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {p2, v7}, Lorg/bouncycastle/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsServer;->shouldUseGMTUnixTime()Z

    move-result p2

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {p2, v2}, Lorg/bouncycastle/tls/TlsServerProtocol;->createRandomBlock(ZLorg/bouncycastle/tls/TlsContext;)[B

    move-result-object p2

    iput-object p2, v1, Lorg/bouncycastle/tls/SecurityParameters;->serverRandom:[B

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsServer;->getProtocolVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/tls/ProtocolVersion;->getLatestTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p2

    invoke-virtual {v7, p2}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getServerRandom()[B

    move-result-object p2

    invoke-static {v7, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeDowngradeMarker(Lorg/bouncycastle/tls/ProtocolVersion;[B)V

    :cond_7
    invoke-virtual {p1}, Lorg/bouncycastle/tls/ClientHello;->getExtensions()Ljava/util/Hashtable;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v2, Lorg/bouncycastle/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {p2, v2}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isRenegotiating()Z

    move-result v2

    const/16 v8, 0xff

    const/16 v9, 0x28

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isSecureRenegotiation()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-static {v2, v8}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz p2, :cond_9

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersConnection()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerVerifyData()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsServerProtocol;->createRenegotiationInfo([B)[B

    move-result-object v2

    invoke-static {p2, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v9}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_9
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v9}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_a
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v9}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_b
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_c
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-static {v2, v8}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_d

    iput-boolean v6, v1, Lorg/bouncycastle/tls/SecurityParameters;->secureRenegotiation:Z

    :cond_d
    if-eqz p2, :cond_f

    iput-boolean v6, v1, Lorg/bouncycastle/tls/SecurityParameters;->secureRenegotiation:Z

    sget-object v2, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsServerProtocol;->createRenegotiationInfo([B)[B

    move-result-object v2

    invoke-static {p2, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_5

    :cond_e
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v9}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_f
    :goto_5
    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isSecureRenegotiation()Z

    move-result v2

    invoke-interface {p2, v2}, Lorg/bouncycastle/tls/TlsServer;->notifySecureRenegotiation(Z)V

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-eqz p2, :cond_11

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getPaddingExtension(Ljava/util/Hashtable;)I

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getServerNameExtensionClient(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object p2

    iput-object p2, v1, Lorg/bouncycastle/tls/SecurityParameters;->clientServerNames:Ljava/util/Vector;

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v1, p2}, Lorg/bouncycastle/tls/TlsUtils;->establishClientSigAlgs(Lorg/bouncycastle/tls/SecurityParameters;Ljava/util/Hashtable;)V

    :cond_10
    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSupportedGroupsExtension(Ljava/util/Hashtable;)[I

    move-result-object p2

    iput-object p2, v1, Lorg/bouncycastle/tls/SecurityParameters;->clientSupportedGroups:[I

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-interface {p2, v2}, Lorg/bouncycastle/tls/TlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    :cond_11
    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ClientHello;->getSessionID()[B

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/bouncycastle/tls/TlsServer;->getSessionToResume([B)Lorg/bouncycastle/tls/TlsSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->establishSession(Lorg/bouncycastle/tls/TlsSession;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p2

    invoke-virtual {v7, p2}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p2

    if-nez p2, :cond_12

    const/4 p1, 0x0

    :cond_12
    invoke-static {v7}, Lorg/bouncycastle/tls/TlsUtils;->isExtendedMasterSecretOptional(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p2

    if-eqz p2, :cond_17

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsServer;->shouldUseExtendedMasterSecret()Z

    move-result p2

    if-eqz p2, :cond_17

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z

    move-result p2

    if-eqz p2, :cond_13

    const/4 p2, 0x1

    goto :goto_7

    :cond_13
    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsServer;->requiresExtendedMasterSecret()Z

    move-result p2

    if-nez p2, :cond_16

    if-eqz p1, :cond_17

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->isExtendedMasterSecret()Z

    move-result p2

    if-nez p2, :cond_15

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsServer;->allowLegacyResumption()Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_6

    :cond_14
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p2, "Extended Master Secret extension is required for legacy session resumption"

    invoke-direct {p1, v9, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_15
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p2, "Extended Master Secret extension is required for EMS session resumption"

    invoke-direct {p1, v9, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_16
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p2, "Extended Master Secret extension is required"

    invoke-direct {p1, v9, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_17
    :goto_6
    const/4 p2, 0x0

    :goto_7
    if-eqz p1, :cond_18

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SessionParameters;->isExtendedMasterSecret()Z

    move-result v2

    if-eq p2, v2, :cond_18

    goto :goto_8

    :cond_18
    move v5, p1

    :goto_8
    iput-boolean p2, v1, Lorg/bouncycastle/tls/SecurityParameters;->extendedMasterSecret:Z

    const/4 p1, 0x0

    if-nez v5, :cond_1a

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->cancelSession()V

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsServer;->getNewSessionID()[B

    move-result-object p2

    if-nez p2, :cond_19

    sget-object p2, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_19
    invoke-static {p2, p1}, Lorg/bouncycastle/tls/TlsUtils;->importSession([BLorg/bouncycastle/tls/SessionParameters;)Lorg/bouncycastle/tls/TlsSession;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    :cond_1a
    iput-boolean v5, v1, Lorg/bouncycastle/tls/SecurityParameters;->resumedSession:Z

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsSession;->getSessionID()[B

    move-result-object p2

    iput-object p2, v1, Lorg/bouncycastle/tls/SecurityParameters;->sessionID:[B

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-interface {p2, v2}, Lorg/bouncycastle/tls/TlsServer;->notifySession(Lorg/bouncycastle/tls/TlsSession;)V

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedVersionTLSServer(Lorg/bouncycastle/tls/TlsServerContext;)V

    if-eqz v5, :cond_1b

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->getCipherSuite()I

    move-result p2

    goto :goto_9

    :cond_1b
    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsServer;->getSelectedCipherSuite()I

    move-result p2

    :goto_9
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-static {v2, p2}, Lorg/bouncycastle/tls/TlsUtils;->isValidCipherSuiteSelection([II)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {p2, v7}, Lorg/bouncycastle/tls/TlsUtils;->isValidVersionForCipherSuite(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v1, p2}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedCipherSuite(Lorg/bouncycastle/tls/SecurityParameters;I)V

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {p2, v0}, Lorg/bouncycastle/tls/TlsServerContextImpl;->setRSAPreMasterSecretVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    if-eqz v5, :cond_1c

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->readServerExtensions()Ljava/util/Hashtable;

    move-result-object p2

    goto :goto_a

    :cond_1c
    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsServer;->getServerExtensions()Ljava/util/Hashtable;

    move-result-object p2

    :goto_a
    invoke-static {p2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-interface {p2, v0}, Lorg/bouncycastle/tls/TlsServer;->getServerExtensionsForConnection(Ljava/util/Hashtable;)V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isRenegotiating()Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isSecureRenegotiation()Z

    move-result p2

    if-eqz p2, :cond_1d

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersConnection()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerVerifyData()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalVerifyData()[B

    move-result-object p2

    invoke-static {v0, p2}, Lorg/bouncycastle/tls/TlsUtils;->concat([B[B)[B

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v2, Lorg/bouncycastle/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->createRenegotiationInfo([B)[B

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_1d
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1e
    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isSecureRenegotiation()Z

    move-result p2

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {p2, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p2

    if-nez p2, :cond_1f

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsServerProtocol;->createRenegotiationInfo([B)[B

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    :goto_b
    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result p2

    if-eqz p2, :cond_20

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addExtendedMasterSecretExtension(Ljava/util/Hashtable;)V

    goto :goto_c

    :cond_20
    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_extended_master_secret:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getALPNExtensionServer(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/ProtocolName;

    move-result-object p2

    iput-object p2, v1, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocol:Lorg/bouncycastle/tls/ProtocolName;

    iput-boolean v6, v1, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocolSet:Z

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {p2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_24

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result p2

    iput-boolean p2, v1, Lorg/bouncycastle/tls/SecurityParameters;->encryptThenMAC:Z

    if-eqz v5, :cond_21

    goto :goto_d

    :cond_21
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    :goto_d
    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {p1, p2, v4}, Lorg/bouncycastle/tls/TlsUtils;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result p1

    iput-short p1, v1, Lorg/bouncycastle/tls/SecurityParameters;->maxFragmentLength:S

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result p1

    iput-boolean p1, v1, Lorg/bouncycastle/tls/SecurityParameters;->truncatedHMac:Z

    if-nez v5, :cond_24

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object p2, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request_v2:Ljava/lang/Integer;

    invoke-static {p1, p2, v4}, Lorg/bouncycastle/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x2

    iput p1, v1, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    goto :goto_e

    :cond_22
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object p2, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {p1, p2, v4}, Lorg/bouncycastle/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result p1

    if-eqz p1, :cond_23

    iput v6, v1, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    :cond_23
    :goto_e
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {p1, p2, v4}, Lorg/bouncycastle/tls/TlsUtils;->processClientCertificateTypeExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result p1

    iput-short p1, v1, Lorg/bouncycastle/tls/SecurityParameters;->clientCertificateType:S

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {p1, p2, v4}, Lorg/bouncycastle/tls/TlsUtils;->processServerCertificateTypeExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result p1

    iput-short p1, v1, Lorg/bouncycastle/tls/SecurityParameters;->serverCertificateType:S

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object p2, Lorg/bouncycastle/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {p1, p2, v4}, Lorg/bouncycastle/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->expectSessionTicket:Z

    :cond_24
    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getMaxFragmentLength()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->applyMaxFragmentLengthExtension(S)V

    new-instance v6, Lorg/bouncycastle/tls/ServerHello;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v8

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getSessionID()[B

    move-result-object v9

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getCipherSuite()I

    move-result v10

    iget-object v11, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/tls/ServerHello;-><init>(Lorg/bouncycastle/tls/ProtocolVersion;[B[BILjava/util/Hashtable;)V

    return-object v6

    :cond_25
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_26
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_27
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x46

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_28
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_10

    :goto_f
    throw p1

    :goto_10
    goto :goto_f
.end method

.method protected getContext()Lorg/bouncycastle/tls/TlsContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    return-object v0
.end method

.method getContextAdmin()Lorg/bouncycastle/tls/AbstractTlsContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/bouncycastle/tls/TlsPeer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    return-object v0
.end method

.method protected handle13HandshakeMessage(SLorg/bouncycastle/tls/HandshakeMessageInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->isTLSv13ConnectionState()Z

    move-result v0

    const/16 v1, 0x50

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    const/16 v2, 0xa

    if-eq p1, v0, :cond_9

    const/16 v0, 0xb

    const/16 v1, 0x14

    const/16 v3, 0xf

    if-eq p1, v0, :cond_7

    const/16 v0, 0x11

    if-eq p1, v3, :cond_5

    if-eq p1, v1, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->receive13KeyUpdate(Ljava/io/ByteArrayInputStream;)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    if-eq p1, v3, :cond_3

    if-eq p1, v0, :cond_4

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->skip13ClientCertificate()V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->skip13ClientCertificateVerify()V

    :cond_4
    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->receive13ClientFinished(Ljava/io/ByteArrayInputStream;)V

    const/16 p1, 0x12

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/bouncycastle/tls/RecordStream;->setIgnoreChangeCipherSpec(Z)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/tls/RecordStream;->enablePendingCipherRead(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->completeHandshake()V

    return-void

    :cond_5
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    if-ne p1, v3, :cond_6

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->receive13ClientCertificateVerify(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/HandshakeMessageInput;->updateHash(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    iput-short v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    return-void

    :cond_6
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_7
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    if-ne p1, v1, :cond_8

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->receive13ClientCertificate(Ljava/io/ByteArrayInputStream;)V

    iput-short v3, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    return-void

    :cond_8
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_9
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    if-eqz p1, :cond_b

    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)Lorg/bouncycastle/tls/ClientHello;

    move-result-object p1

    const/4 v1, 0x3

    iput-short v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/tls/TlsServerProtocol;->generate13ServerHello(Lorg/bouncycastle/tls/ClientHello;Lorg/bouncycastle/tls/HandshakeMessageInput;Z)Lorg/bouncycastle/tls/ServerHello;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendServerHelloMessage(Lorg/bouncycastle/tls/ServerHello;)V

    const/4 p2, 0x4

    iput-short p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tls/TlsServerProtocol;->send13ServerHelloCoda(Lorg/bouncycastle/tls/ServerHello;Z)V

    return-void

    :cond_a
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_b
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_c
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected handleAlertWarningMessage(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x29

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isSSL(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-short v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    :cond_1
    sget-object p1, Lorg/bouncycastle/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/tls/Certificate;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/tls/Certificate;)V

    const/16 p1, 0xf

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->handleAlertWarningMessage(S)V

    return-void
.end method

.method protected handleHandshakeMessage(SLorg/bouncycastle/tls/HandshakeMessageInput;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParameters()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    iget-short v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    const/16 v2, 0x50

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->handle13HandshakeMessage(SLorg/bouncycastle/tls/HandshakeMessageInput;)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->isLegacyConnectionState()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v1

    const/16 v4, 0x12

    const/16 v5, 0x14

    const/16 v6, 0xa

    if-eqz v1, :cond_3

    if-eq p1, v3, :cond_3

    if-ne p1, v5, :cond_2

    iget-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    if-ne p1, v5, :cond_2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v4, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->completeHandshake()V

    return-void

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_3
    const/16 v1, 0xb

    const/4 v7, 0x0

    const/16 v8, 0xc

    if-eq p1, v3, :cond_18

    const/16 v0, 0xe

    const/16 v2, 0xf

    if-eq p1, v1, :cond_15

    const/16 v1, 0x11

    const/16 v3, 0x10

    if-eq p1, v5, :cond_10

    const/16 v4, 0x17

    if-eq p1, v4, :cond_e

    if-eq p1, v2, :cond_b

    if-ne p1, v3, :cond_a

    iget-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    if-eq p1, v8, :cond_5

    if-eq p1, v0, :cond_6

    if-ne p1, v2, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_5
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p1, v7}, Lorg/bouncycastle/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    :cond_6
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isSSL(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Lorg/bouncycastle/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/tls/Certificate;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/tls/Certificate;)V

    :goto_0
    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->receiveClientKeyExchangeMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v3, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    return-void

    :cond_8
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_9
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_a
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_b
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    if-ne p1, v3, :cond_d

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->receiveCertificateVerifyMessage(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/HandshakeMessageInput;->updateHash(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    iput-short v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    return-void

    :cond_c
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_d
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_e
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    if-ne p1, v8, :cond_f

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    iput-short v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    return-void

    :cond_f
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_10
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    if-eq p1, v3, :cond_12

    if-ne p1, v1, :cond_11

    goto :goto_1

    :cond_11
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_12
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result p1

    if-nez p1, :cond_14

    :goto_1
    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/HandshakeMessageInput;->updateHash(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    iput-short v4, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    iget-boolean p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->expectSessionTicket:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsServer;->getNewSessionTicket()Lorg/bouncycastle/tls/NewSessionTicket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendNewSessionTicketMessage(Lorg/bouncycastle/tls/NewSessionTicket;)V

    const/16 p1, 0x13

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    :cond_13
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendChangeCipherSpec()V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendFinishedMessage()V

    iput-short v5, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->completeHandshake()V

    return-void

    :cond_14
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_15
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    if-eq p1, v8, :cond_17

    if-ne p1, v0, :cond_16

    goto :goto_2

    :cond_16
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_17
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p1, v7}, Lorg/bouncycastle/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    :goto_2
    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->receiveCertificateMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    return-void

    :cond_18
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->isApplicationDataReady()Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->handleRenegotiation()Z

    move-result p1

    if-nez p1, :cond_19

    return-void

    :cond_19
    iput-short v4, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    :cond_1a
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    if-eqz p1, :cond_1c

    const/16 p2, 0x15

    if-eq p1, p2, :cond_1b

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1b
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1c
    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)Lorg/bouncycastle/tls/ClientHello;

    move-result-object p1

    iput-short v3, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->generateServerHello(Lorg/bouncycastle/tls/ClientHello;Lorg/bouncycastle/tls/HandshakeMessageInput;)Lorg/bouncycastle/tls/ServerHello;

    move-result-object p1

    iget-object v9, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-interface {v9}, Lorg/bouncycastle/tls/TlsHandshakeHash;->notifyPRFDetermined()V

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_1e

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->isHelloRetryRequest()Z

    move-result p2

    if-eqz p2, :cond_1d

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->adjustTranscriptForRetry(Lorg/bouncycastle/tls/TlsHandshakeHash;)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendServerHelloMessage(Lorg/bouncycastle/tls/ServerHello;)V

    const/4 p1, 0x2

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendChangeCipherSpecMessage()V

    return-void

    :cond_1d
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendServerHelloMessage(Lorg/bouncycastle/tls/ServerHello;)V

    iput-short v10, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendChangeCipherSpecMessage()V

    invoke-virtual {p0, p1, v4}, Lorg/bouncycastle/tls/TlsServerProtocol;->send13ServerHelloCoda(Lorg/bouncycastle/tls/ServerHello;Z)V

    return-void

    :cond_1e
    iget-object v9, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-virtual {p2, v9}, Lorg/bouncycastle/tls/HandshakeMessageInput;->updateHash(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendServerHelloMessage(Lorg/bouncycastle/tls/ServerHello;)V

    iput-short v10, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object p1, v0, Lorg/bouncycastle/tls/SecurityParameters;->masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->initCipher(Lorg/bouncycastle/tls/TlsContext;)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/tls/RecordStream;->setPendingCipher(Lorg/bouncycastle/tls/crypto/TlsCipher;)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendChangeCipherSpec()V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendFinishedMessage()V

    iput-short v5, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    return-void

    :cond_1f
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsServer;->getServerSupplementalData()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    const/4 p1, 0x6

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    :cond_20
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->initKeyExchangeServer(Lorg/bouncycastle/tls/TlsServerContext;Lorg/bouncycastle/tls/TlsServer;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getKeyExchangeAlgorithm()I

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/tls/KeyExchangeAlgorithm;->isAnonymous(I)Z

    move-result p1

    if-nez p1, :cond_21

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->establishServerCredentials(Lorg/bouncycastle/tls/TlsServer;)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object p1

    goto :goto_3

    :cond_21
    move-object p1, v7

    :goto_3
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v5, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    if-nez p1, :cond_22

    invoke-interface {v5}, Lorg/bouncycastle/tls/TlsKeyExchange;->skipServerCredentials()V

    goto :goto_4

    :cond_22
    invoke-interface {v5, p1}, Lorg/bouncycastle/tls/TlsKeyExchange;->processServerCredentials(Lorg/bouncycastle/tls/TlsCredentials;)V

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendCertificateMessage(Lorg/bouncycastle/tls/Certificate;Ljava/io/OutputStream;)V

    const/4 v5, 0x7

    iput-short v5, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    :goto_4
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iput-object p2, v0, Lorg/bouncycastle/tls/SecurityParameters;->tlsServerEndPoint:[B

    if-eqz v7, :cond_23

    invoke-virtual {v7}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_24

    :cond_23
    iput v4, v0, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    :cond_24
    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getStatusRequestVersion()I

    move-result p2

    if-lez p2, :cond_25

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsServer;->getCertificateStatus()Lorg/bouncycastle/tls/CertificateStatus;

    move-result-object p2

    if-eqz p2, :cond_25

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendCertificateStatusMessage(Lorg/bouncycastle/tls/CertificateStatus;)V

    const/16 p2, 0x8

    iput-short p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    :cond_25
    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsKeyExchange;->generateServerKeyExchange()[B

    move-result-object p2

    if-eqz p2, :cond_26

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendServerKeyExchangeMessage([B)V

    iput-short v6, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    :cond_26
    if-eqz p1, :cond_2c

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsServer;->getCertificateRequest()Lorg/bouncycastle/tls/CertificateRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-nez p1, :cond_28

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsKeyExchange;->requiresCertificateVerify()Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_7

    :cond_27
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_28
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object p2

    if-eqz p2, :cond_29

    goto :goto_5

    :cond_29
    const/4 v3, 0x0

    :goto_5
    if-ne p1, v3, :cond_2b

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->validateCertificateRequest(Lorg/bouncycastle/tls/CertificateRequest;Lorg/bouncycastle/tls/TlsKeyExchange;)Lorg/bouncycastle/tls/CertificateRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->establishServerSigAlgs(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/CertificateRequest;)V

    sget-object p1, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerSigAlgs()Ljava/util/Vector;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->trackHashAlgorithms(Lorg/bouncycastle/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerSigAlgs()Ljava/util/Vector;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasAnyStreamVerifiers(Ljava/util/Vector;)Z

    move-result p1

    if-eqz p1, :cond_2c

    goto :goto_6

    :cond_2a
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasAnyStreamVerifiersLegacy([S)Z

    move-result p1

    if-eqz p1, :cond_2c

    :goto_6
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsHandshakeHash;->forceBuffering()V

    goto :goto_7

    :cond_2b
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2c
    :goto_7
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-eqz p1, :cond_2d

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendCertificateRequestMessage(Lorg/bouncycastle/tls/CertificateRequest;)V

    iput-short v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    :cond_2d
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendServerHelloDoneMessage()V

    iput-short v8, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    return-void

    :cond_2e
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected notifyClientCertificate(Lorg/bouncycastle/tls/Certificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-static {v0, p1, v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->processClientCertificate(Lorg/bouncycastle/tls/TlsServerContext;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/TlsKeyExchange;Lorg/bouncycastle/tls/TlsServer;)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected receive13ClientCertificate(Ljava/io/ByteArrayInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tls/Certificate$ParseOptions;

    invoke-direct {v0}, Lorg/bouncycastle/tls/Certificate$ParseOptions;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getClientCertificateType()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/Certificate$ParseOptions;->setCertificateType(S)Lorg/bouncycastle/tls/Certificate$ParseOptions;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsServer;->getMaxCertificateChainLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/Certificate$ParseOptions;->setMaxChainLength(I)Lorg/bouncycastle/tls/Certificate$ParseOptions;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/tls/Certificate;->parse(Lorg/bouncycastle/tls/Certificate$ParseOptions;Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/tls/Certificate;)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected receive13ClientCertificateVerify(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/CertificateVerify;->parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/CertificateVerify;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/tls/TlsUtils;->verify13CertificateVerifyClient(Lorg/bouncycastle/tls/TlsServerContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Lorg/bouncycastle/tls/CertificateVerify;)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected receive13ClientFinished(Ljava/io/ByteArrayInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->process13FinishedMessage(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method protected receiveCertificateMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tls/Certificate$ParseOptions;

    invoke-direct {v0}, Lorg/bouncycastle/tls/Certificate$ParseOptions;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getClientCertificateType()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/Certificate$ParseOptions;->setCertificateType(S)Lorg/bouncycastle/tls/Certificate$ParseOptions;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsServer;->getMaxCertificateChainLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/Certificate$ParseOptions;->setMaxChainLength(I)Lorg/bouncycastle/tls/Certificate$ParseOptions;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/tls/Certificate;->parse(Lorg/bouncycastle/tls/Certificate$ParseOptions;Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/tls/Certificate;)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected receiveCertificateVerifyMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/DigitallySigned;->parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/DigitallySigned;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {p1, v1, v0, v2}, Lorg/bouncycastle/tls/TlsUtils;->verifyCertificateVerifyClient(Lorg/bouncycastle/tls/TlsServerContext;Lorg/bouncycastle/tls/CertificateRequest;Lorg/bouncycastle/tls/DigitallySigned;Lorg/bouncycastle/tls/TlsHandshakeHash;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsHandshakeHash;->stopTracking()V

    return-void
.end method

.method protected receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)Lorg/bouncycastle/tls/ClientHello;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/ClientHello;->parse(Ljava/io/ByteArrayInputStream;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/ClientHello;

    move-result-object p1

    return-object p1
.end method

.method protected receiveClientKeyExchangeMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/TlsKeyExchange;->processClientKeyExchange(Ljava/io/InputStream;)V

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isSSL(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsServerProtocol;->establishMasterSecret(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsKeyExchange;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->getCurrentPRFHash(Lorg/bouncycastle/tls/TlsHandshakeHash;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/tls/SecurityParameters;->sessionHash:[B

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsServerProtocol;->establishMasterSecret(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsKeyExchange;)V

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->initCipher(Lorg/bouncycastle/tls/TlsContext;)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/RecordStream;->setPendingCipher(Lorg/bouncycastle/tls/crypto/TlsCipher;)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsHandshakeHash;->stopTracking()V

    :cond_2
    return-void
.end method

.method protected send13EncryptedExtensionsMessage(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->writeExtensionsData(Ljava/util/Hashtable;)[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/tls/HandshakeMessageOutput;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;-><init>(S)V

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;)V

    return-void
.end method

.method protected send13ServerHelloCoda(Lorg/bouncycastle/tls/ServerHello;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsServerContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->getCurrentPRFHash(Lorg/bouncycastle/tls/TlsHandshakeHash;)[B

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-static {v0, p2, v1}, Lorg/bouncycastle/tls/TlsUtils;->establish13PhaseHandshake(Lorg/bouncycastle/tls/TlsContext;[BLorg/bouncycastle/tls/RecordStream;)V

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/RecordStream;->enablePendingCipherWrite()V

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/bouncycastle/tls/RecordStream;->enablePendingCipherRead(Z)V

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->send13EncryptedExtensionsMessage(Ljava/util/Hashtable;)V

    const/4 p2, 0x5

    iput-short p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    iget-boolean p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->selectedPSK13:Z

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsServer;->getCertificateRequest()Lorg/bouncycastle/tls/CertificateRequest;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    const/16 v0, 0x50

    if-eqz p2, :cond_2

    sget-object v1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/CertificateRequest;->hasCertificateRequestContext([B)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->establishServerSigAlgs(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/CertificateRequest;)V

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsServerProtocol;->sendCertificateRequestMessage(Lorg/bouncycastle/tls/CertificateRequest;)V

    const/16 p2, 0xb

    iput-short p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/tls/TlsServer;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->establish13ServerCredentials(Lorg/bouncycastle/tls/TlsServer;)Lorg/bouncycastle/tls/TlsCredentialedSigner;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsCredentialedSigner;->getCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/TlsServerProtocol;->send13CertificateMessage(Lorg/bouncycastle/tls/Certificate;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/bouncycastle/tls/SecurityParameters;->tlsServerEndPoint:[B

    const/4 p1, 0x7

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/tls/TlsUtils;->generate13CertificateVerify(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsCredentialedSigner;Lorg/bouncycastle/tls/TlsHandshakeHash;)Lorg/bouncycastle/tls/DigitallySigned;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->send13CertificateVerifyMessage(Lorg/bouncycastle/tls/DigitallySigned;)V

    const/16 p1, 0x11

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->send13FinishedMessage()V

    const/16 p1, 0x14

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->connection_state:S

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->getCurrentPRFHash(Lorg/bouncycastle/tls/TlsHandshakeHash;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-static {p2, p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->establish13PhaseApplication(Lorg/bouncycastle/tls/TlsContext;[BLorg/bouncycastle/tls/RecordStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/RecordStream;->enablePendingCipherWrite()V

    return-void

    :cond_3
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected sendCertificateRequestMessage(Lorg/bouncycastle/tls/CertificateRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/HandshakeMessageOutput;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;-><init>(S)V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/tls/CertificateRequest;->encode(Lorg/bouncycastle/tls/TlsContext;Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;)V

    return-void
.end method

.method protected sendCertificateStatusMessage(Lorg/bouncycastle/tls/CertificateStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/HandshakeMessageOutput;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;-><init>(S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/CertificateStatus;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;)V

    return-void
.end method

.method protected sendHelloRequestMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;S[B)V

    return-void
.end method

.method protected sendNewSessionTicketMessage(Lorg/bouncycastle/tls/NewSessionTicket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/tls/HandshakeMessageOutput;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;-><init>(S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/NewSessionTicket;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected sendServerHelloDoneMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    sget-object v1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;S[B)V

    return-void
.end method

.method protected sendServerHelloMessage(Lorg/bouncycastle/tls/ServerHello;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/HandshakeMessageOutput;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;-><init>(S)V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/tls/TlsServerContextImpl;

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/tls/ServerHello;->encode(Lorg/bouncycastle/tls/TlsContext;Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;)V

    return-void
.end method

.method protected sendServerKeyExchangeMessage([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;S[B)V

    return-void
.end method

.method protected skip13ClientCertificate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected skip13ClientCertificateVerify()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
