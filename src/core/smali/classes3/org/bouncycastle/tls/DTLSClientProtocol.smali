.class public Lorg/bouncycastle/tls/DTLSClientProtocol;
.super Lorg/bouncycastle/tls/DTLSProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/tls/DTLSProtocol;-><init>()V

    return-void
.end method

.method protected static patchClientHelloWithCookie([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v0

    const/16 v1, 0x23

    add-int/2addr v1, v0

    add-int/lit8 v0, v0, 0x24

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p1

    invoke-static {v4}, Lorg/bouncycastle/tls/TlsUtils;->checkUint8(I)V

    array-length v4, p1

    invoke-static {v4, v2, v1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(I[BI)V

    array-length v1, p1

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p1, v0

    array-length v1, p0

    sub-int/2addr v1, v0

    invoke-static {p0, v0, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method protected abortClientHandshake(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/tls/DTLSRecordLayer;S)V
    .locals 0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/tls/DTLSRecordLayer;->fail(S)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DTLSClientProtocol;->invalidateSession(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;)V

    return-void
.end method

.method protected cancelSession(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;)V
    .locals 2

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsSecret;->destroy()V

    iput-object v1, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SessionParameters;->clear()V

    iput-object v1, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    :cond_1
    iput-object v1, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    return-void
.end method

.method protected clientHandshake(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/tls/DTLSRecordLayer;)Lorg/bouncycastle/tls/DTLSTransport;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v8, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/tls/TlsClient;

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v9

    move-object v3, v2

    new-instance v2, Lorg/bouncycastle/tls/DTLSReliableHandshake;

    invoke-interface {v8}, Lorg/bouncycastle/tls/TlsClient;->getHandshakeTimeoutMillis()I

    move-result v5

    invoke-interface {v8}, Lorg/bouncycastle/tls/TlsClient;->getHandshakeResendTimeMillis()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/tls/DTLSReliableHandshake;-><init>(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/DTLSRecordLayer;IILorg/bouncycastle/tls/DTLSRequest;)V

    move-object v11, v2

    move-object v10, v4

    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/tls/DTLSClientProtocol;->generateClientHello(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;)[B

    move-result-object v2

    sget-object v4, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v10, v4}, Lorg/bouncycastle/tls/DTLSRecordLayer;->setWriteVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v2}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    :goto_0
    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/bouncycastle/tls/DTLSClientProtocol;->processHelloVerifyRequest(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)[B

    move-result-object v4

    invoke-static {v2, v4}, Lorg/bouncycastle/tls/DTLSClientProtocol;->patchClientHelloWithCookie([B[B)[B

    move-result-object v4

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->resetAfterHelloVerifyRequestClient()V

    invoke-virtual {v11, v12, v4}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    const/4 v5, 0x2

    const/16 v13, 0xa

    if-ne v2, v5, :cond_18

    invoke-virtual {v10}, Lorg/bouncycastle/tls/DTLSRecordLayer;->getReadVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/DTLSClientProtocol;->reportServerVersion(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/tls/ProtocolVersion;)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/tls/DTLSRecordLayer;->setWriteVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    invoke-virtual {v4}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/DTLSClientProtocol;->processServerHello(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getMaxFragmentLength()S

    move-result v2

    invoke-static {v10, v2}, Lorg/bouncycastle/tls/DTLSClientProtocol;->applyMaxFragmentLengthExtension(Lorg/bouncycastle/tls/DTLSRecordLayer;S)V

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsHandshakeHash;->notifyPRFDetermined()V

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v2

    const/4 v14, 0x0

    const/16 v15, 0x14

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v2, v9, Lorg/bouncycastle/tls/SecurityParameters;->masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsUtils;->initCipher(Lorg/bouncycastle/tls/TlsContext;)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/bouncycastle/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/bouncycastle/tls/crypto/TlsCipher;)V

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v2

    invoke-static {v3, v2, v12}, Lorg/bouncycastle/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B

    move-result-object v2

    iput-object v2, v9, Lorg/bouncycastle/tls/SecurityParameters;->peerVerifyData:[B

    invoke-virtual {v11, v15}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object v2

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerVerifyData()[B

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/bouncycastle/tls/DTLSClientProtocol;->processFinished([B[B)V

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v2

    invoke-static {v3, v2, v14}, Lorg/bouncycastle/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B

    move-result-object v2

    iput-object v2, v9, Lorg/bouncycastle/tls/SecurityParameters;->localVerifyData:[B

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalVerifyData()[B

    move-result-object v2

    invoke-virtual {v11, v15, v2}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->finish()V

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerVerifyData()[B

    move-result-object v2

    iput-object v2, v9, Lorg/bouncycastle/tls/SecurityParameters;->tlsUnique:[B

    :cond_1
    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SessionParameters;->getLocalCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v2

    iput-object v2, v9, Lorg/bouncycastle/tls/SecurityParameters;->localCertificate:Lorg/bouncycastle/tls/Certificate;

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SessionParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v2

    iput-object v2, v9, Lorg/bouncycastle/tls/SecurityParameters;->peerCertificate:Lorg/bouncycastle/tls/Certificate;

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SessionParameters;->getPSKIdentity()[B

    move-result-object v2

    iput-object v2, v9, Lorg/bouncycastle/tls/SecurityParameters;->pskIdentity:[B

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SessionParameters;->getSRPIdentity()[B

    move-result-object v2

    iput-object v2, v9, Lorg/bouncycastle/tls/SecurityParameters;->srpIdentity:[B

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-virtual {v3, v8, v2}, Lorg/bouncycastle/tls/TlsClientContextImpl;->handshakeComplete(Lorg/bouncycastle/tls/TlsPeer;Lorg/bouncycastle/tls/TlsSession;)V

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    iget-short v1, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->heartbeatPolicy:S

    if-ne v12, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v10, v2, v12}, Lorg/bouncycastle/tls/DTLSRecordLayer;->initHeartbeat(Lorg/bouncycastle/tls/TlsHeartbeat;Z)V

    new-instance v1, Lorg/bouncycastle/tls/DTLSTransport;

    invoke-direct {v1, v10}, Lorg/bouncycastle/tls/DTLSTransport;-><init>(Lorg/bouncycastle/tls/DTLSRecordLayer;)V

    return-object v1

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/tls/DTLSClientProtocol;->invalidateSession(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;)V

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getSessionID()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/bouncycastle/tls/TlsUtils;->importSession([BLorg/bouncycastle/tls/SessionParameters;)Lorg/bouncycastle/tls/TlsSession;

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_4

    invoke-virtual {v2}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/DTLSClientProtocol;->processServerSupplementalData(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-interface {v8, v4}, Lorg/bouncycastle/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    :goto_2
    invoke-static {v3, v8}, Lorg/bouncycastle/tls/TlsUtils;->initKeyExchangeClient(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object v5

    iput-object v5, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v5

    const/16 v7, 0xb

    if-ne v5, v7, :cond_5

    invoke-virtual {v2}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/DTLSClientProtocol;->processServerCertificate(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;

    move-result-object v2

    goto :goto_3

    :cond_5
    iput-object v4, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    :goto_3
    invoke-virtual {v2}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v5

    const/16 v7, 0x16

    if-ne v5, v7, :cond_7

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getStatusRequestVersion()I

    move-result v5

    if-lt v5, v12, :cond_6

    invoke-virtual {v2}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/DTLSClientProtocol;->processCertificateStatus(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;

    move-result-object v2

    goto :goto_4

    :cond_6
    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v1, v13}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_7
    :goto_4
    move-object/from16 v16, v2

    move-object v2, v3

    iget-object v3, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->certificateStatus:Lorg/bouncycastle/tls/CertificateStatus;

    move-object v5, v4

    iget-object v4, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    move-object v7, v5

    iget-object v5, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    const/16 v17, 0x17

    iget-object v6, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    move-object/from16 v18, v7

    iget-object v7, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    move-object/from16 v12, v18

    const/16 v13, 0x17

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/tls/TlsUtils;->processServerCertificate(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/CertificateStatus;Lorg/bouncycastle/tls/TlsKeyExchange;Lorg/bouncycastle/tls/TlsAuthentication;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    move-object v3, v2

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_8

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/DTLSClientProtocol;->processServerKeyExchange(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;

    move-result-object v16

    goto :goto_5

    :cond_8
    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :goto_5
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_9

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/DTLSClientProtocol;->processCertificateRequest(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    invoke-static {v9, v2}, Lorg/bouncycastle/tls/TlsUtils;->establishServerSigAlgs(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/CertificateRequest;)V

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;

    move-result-object v16

    :cond_9
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    const/16 v4, 0xe

    if-ne v2, v4, :cond_17

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_16

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-eqz v2, :cond_d

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    iget-object v4, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    invoke-static {v2, v4}, Lorg/bouncycastle/tls/TlsUtils;->establishClientCredentials(Lorg/bouncycastle/tls/TlsAuthentication;Lorg/bouncycastle/tls/CertificateRequest;)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface {v4}, Lorg/bouncycastle/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v2

    instance-of v5, v4, Lorg/bouncycastle/tls/TlsCredentialedSigner;

    if-eqz v5, :cond_b

    move-object v5, v4

    check-cast v5, Lorg/bouncycastle/tls/TlsCredentialedSigner;

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/bouncycastle/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/TlsCredentialedSigner;)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v6

    invoke-interface {v5}, Lorg/bouncycastle/tls/TlsCredentialedSigner;->getStreamSigner()Lorg/bouncycastle/tls/crypto/TlsStreamSigner;

    move-result-object v7

    sget-object v15, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v14

    invoke-virtual {v15, v14}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getServerSigAlgs()Ljava/util/Vector;

    move-result-object v14

    const/16 v15, 0x50

    invoke-static {v14, v6, v15}, Lorg/bouncycastle/tls/TlsUtils;->verifySupportedSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;S)V

    if-nez v7, :cond_a

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v14

    invoke-static {v14, v6}, Lorg/bouncycastle/tls/TlsUtils;->trackHashAlgorithmClient(Lorg/bouncycastle/tls/TlsHandshakeHash;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V

    :cond_a
    if-eqz v7, :cond_e

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v14

    invoke-interface {v14}, Lorg/bouncycastle/tls/TlsHandshakeHash;->forceBuffering()V

    goto :goto_7

    :cond_b
    move-object v5, v12

    goto :goto_6

    :cond_c
    move-object v2, v12

    move-object v5, v2

    goto :goto_6

    :cond_d
    move-object v2, v12

    move-object v4, v2

    move-object v5, v4

    :goto_6
    move-object v6, v5

    move-object v7, v6

    :cond_e
    :goto_7
    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v14

    invoke-interface {v14}, Lorg/bouncycastle/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    if-nez v4, :cond_f

    iget-object v4, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {v4}, Lorg/bouncycastle/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_8

    :cond_f
    iget-object v14, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {v14, v4}, Lorg/bouncycastle/tls/TlsKeyExchange;->processClientCredentials(Lorg/bouncycastle/tls/TlsCredentials;)V

    :goto_8
    invoke-interface {v8}, Lorg/bouncycastle/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-static {v4}, Lorg/bouncycastle/tls/DTLSClientProtocol;->generateSupplementalData(Ljava/util/Vector;)[B

    move-result-object v4

    invoke-virtual {v11, v13, v4}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    :cond_10
    iget-object v4, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-eqz v4, :cond_11

    invoke-static {v3, v11, v2, v12}, Lorg/bouncycastle/tls/DTLSClientProtocol;->sendCertificateMessage(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/DTLSReliableHandshake;Lorg/bouncycastle/tls/Certificate;Ljava/io/OutputStream;)V

    :cond_11
    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/tls/DTLSClientProtocol;->generateClientKeyExchange(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;)[B

    move-result-object v2

    const/16 v4, 0x10

    invoke-virtual {v11, v4, v2}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->getCurrentPRFHash(Lorg/bouncycastle/tls/TlsHandshakeHash;)[B

    move-result-object v2

    iput-object v2, v9, Lorg/bouncycastle/tls/SecurityParameters;->sessionHash:[B

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-static {v3, v2}, Lorg/bouncycastle/tls/TlsProtocol;->establishMasterSecret(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsKeyExchange;)V

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsUtils;->initCipher(Lorg/bouncycastle/tls/TlsContext;)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/bouncycastle/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/bouncycastle/tls/crypto/TlsCipher;)V

    if-eqz v5, :cond_12

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v2

    invoke-static {v3, v5, v6, v7, v2}, Lorg/bouncycastle/tls/TlsUtils;->generateCertificateVerifyClient(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsCredentialedSigner;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/tls/crypto/TlsStreamSigner;Lorg/bouncycastle/tls/TlsHandshakeHash;)Lorg/bouncycastle/tls/DigitallySigned;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/DTLSClientProtocol;->generateCertificateVerify(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/tls/DigitallySigned;)[B

    move-result-object v2

    const/16 v4, 0xf

    invoke-virtual {v11, v4, v2}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    :cond_12
    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->prepareToFinish()V

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B

    move-result-object v2

    iput-object v2, v9, Lorg/bouncycastle/tls/SecurityParameters;->localVerifyData:[B

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalVerifyData()[B

    move-result-object v2

    const/16 v5, 0x14

    invoke-virtual {v11, v5, v2}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    iget-boolean v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    if-eqz v2, :cond_14

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_13

    sget-object v5, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    iput-object v5, v9, Lorg/bouncycastle/tls/SecurityParameters;->sessionID:[B

    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/tls/DTLSClientProtocol;->invalidateSession(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;)V

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getSessionID()[B

    move-result-object v5

    invoke-static {v5, v12}, Lorg/bouncycastle/tls/TlsUtils;->importSession([BLorg/bouncycastle/tls/SessionParameters;)Lorg/bouncycastle/tls/TlsSession;

    move-result-object v5

    iput-object v5, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/DTLSClientProtocol;->processNewSessionTicket(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    goto :goto_9

    :cond_13
    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_14
    :goto_9
    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/tls/TlsHandshakeHash;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Lorg/bouncycastle/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B

    move-result-object v2

    iput-object v2, v9, Lorg/bouncycastle/tls/SecurityParameters;->peerVerifyData:[B

    const/16 v5, 0x14

    invoke-virtual {v11, v5}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object v2

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerVerifyData()[B

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lorg/bouncycastle/tls/DTLSClientProtocol;->processFinished([B[B)V

    invoke-virtual {v11}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->finish()V

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    new-instance v2, Lorg/bouncycastle/tls/SessionParameters$Builder;

    invoke-direct {v2}, Lorg/bouncycastle/tls/SessionParameters$Builder;-><init>()V

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getCipherSuite()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setCipherSuite(I)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setExtendedMasterSecret(Z)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setLocalCertificate(Lorg/bouncycastle/tls/Certificate;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v5

    iget-object v6, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-interface {v5, v6}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->adoptSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setMasterSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setNegotiatedVersion(Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setPeerCertificate(Lorg/bouncycastle/tls/Certificate;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getPSKIdentity()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setPSKIdentity([B)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getSRPIdentity()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setSRPIdentity([B)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    iget-object v5, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v2, v5}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setServerExtensions(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SessionParameters$Builder;->build()Lorg/bouncycastle/tls/SessionParameters;

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getSessionID()[B

    move-result-object v2

    iget-object v5, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-static {v2, v5}, Lorg/bouncycastle/tls/TlsUtils;->importSession([BLorg/bouncycastle/tls/SessionParameters;)Lorg/bouncycastle/tls/TlsSession;

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalVerifyData()[B

    move-result-object v2

    iput-object v2, v9, Lorg/bouncycastle/tls/SecurityParameters;->tlsUnique:[B

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-virtual {v3, v8, v2}, Lorg/bouncycastle/tls/TlsClientContextImpl;->handshakeComplete(Lorg/bouncycastle/tls/TlsPeer;Lorg/bouncycastle/tls/TlsSession;)V

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    iget-short v1, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->heartbeatPolicy:S

    const/4 v5, 0x1

    if-ne v5, v1, :cond_15

    const/4 v12, 0x1

    goto :goto_a

    :cond_15
    const/4 v12, 0x0

    :goto_a
    invoke-virtual {v10, v2, v12}, Lorg/bouncycastle/tls/DTLSRecordLayer;->initHeartbeat(Lorg/bouncycastle/tls/TlsHeartbeat;Z)V

    new-instance v1, Lorg/bouncycastle/tls/DTLSTransport;

    invoke-direct {v1, v10}, Lorg/bouncycastle/tls/DTLSTransport;-><init>(Lorg/bouncycastle/tls/DTLSRecordLayer;)V

    return-object v1

    :cond_16
    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_17
    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_18
    const/16 v2, 0xa

    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_c

    :goto_b
    throw v1

    :goto_c
    goto :goto_b
.end method

.method public connect(Lorg/bouncycastle/tls/TlsClient;Lorg/bouncycastle/tls/DatagramTransport;)Lorg/bouncycastle/tls/DTLSTransport;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsClient;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsClientContextImpl;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V

    new-instance v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;

    invoke-direct {v1}, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;-><init>()V

    iput-object p1, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/tls/TlsClient;

    iput-object v0, v1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/TlsClient;->init(Lorg/bouncycastle/tls/TlsClientContext;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/TlsClientContextImpl;->handshakeBeginning(Lorg/bouncycastle/tls/TlsPeer;)V

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v2

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsClient;->shouldUseExtendedPadding()Z

    move-result v3

    iput-boolean v3, v2, Lorg/bouncycastle/tls/SecurityParameters;->extendedPadding:Z

    new-instance v3, Lorg/bouncycastle/tls/DTLSRecordLayer;

    invoke-direct {v3, v0, p1, p2}, Lorg/bouncycastle/tls/DTLSRecordLayer;-><init>(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsPeer;Lorg/bouncycastle/tls/DatagramTransport;)V

    invoke-interface {p1, v3}, Lorg/bouncycastle/tls/TlsClient;->notifyCloseHandle(Lorg/bouncycastle/tls/TlsCloseable;)V

    const/16 p1, 0x50

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lorg/bouncycastle/tls/DTLSClientProtocol;->clientHandshake(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/tls/DTLSRecordLayer;)Lorg/bouncycastle/tls/DTLSTransport;

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
    invoke-virtual {p0, v1, v3, p1}, Lorg/bouncycastle/tls/DTLSClientProtocol;->abortClientHandshake(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/tls/DTLSRecordLayer;S)V

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p2

    invoke-virtual {p0, v1, v3, p1}, Lorg/bouncycastle/tls/DTLSClientProtocol;->abortClientHandshake(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/tls/DTLSRecordLayer;S)V

    throw p2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsFatalAlert;->getAlertDescription()S

    move-result p2

    invoke-virtual {p0, v1, v3, p2}, Lorg/bouncycastle/tls/DTLSClientProtocol;->abortClientHandshake(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/tls/DTLSRecordLayer;S)V

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

    const-string p2, "\'client\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected establishSession(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/tls/TlsSession;)Z
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    iput-object v0, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    iput-object v0, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

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
    iget-object v2, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SessionParameters;->getMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/tls/TlsUtils;->getSessionMasterSecret(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    iput-object p2, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    iput-object v1, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    iput-object v2, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method protected generateCertificateVerify(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/tls/DigitallySigned;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected generateClientHello(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;)[B
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/tls/TlsClient;

    iget-object v2, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v3

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsClient;->getProtocolVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/tls/ProtocolVersion;->getEarliestDTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v5

    invoke-static {v4}, Lorg/bouncycastle/tls/ProtocolVersion;->getLatestDTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/tls/ProtocolVersion;->isSupportedDTLSVersionClient(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v2, v6}, Lorg/bouncycastle/tls/TlsClientContextImpl;->setClientVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/tls/TlsClientContextImpl;->setClientSupportedVersions([Lorg/bouncycastle/tls/ProtocolVersion;)V

    sget-object v7, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v7, v5}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v5

    sget-object v7, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v7, v6}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_0

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsClient;->shouldUseGMTUnixTime()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-static {v10, v2}, Lorg/bouncycastle/tls/TlsProtocol;->createRandomBlock(ZLorg/bouncycastle/tls/TlsContext;)[B

    move-result-object v10

    iput-object v10, v3, Lorg/bouncycastle/tls/SecurityParameters;->clientRandom:[B

    const/4 v10, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsClient;->getSessionToResume()Lorg/bouncycastle/tls/TlsSession;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v10

    :goto_1
    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsClient;->isFallback()Z

    move-result v11

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsClient;->getCipherSuites()[I

    move-result-object v12

    iput-object v12, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v12

    invoke-static {v12}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v12

    iput-object v12, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsClient;->shouldUseExtendedMasterSecret()Z

    move-result v12

    move-object/from16 v13, p0

    invoke-virtual {v13, v0, v5}, Lorg/bouncycastle/tls/DTLSClientProtocol;->establishSession(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/tls/TlsSession;)Z

    iget-object v5, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-static {v5}, Lorg/bouncycastle/tls/TlsUtils;->getSessionID(Lorg/bouncycastle/tls/TlsSession;)[B

    move-result-object v5

    array-length v14, v5

    if-lez v14, :cond_2

    iget-object v14, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    iget-object v15, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v15}, Lorg/bouncycastle/tls/SessionParameters;->getCipherSuite()I

    move-result v15

    invoke-static {v14, v15}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v14

    if-nez v14, :cond_2

    sget-object v5, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_2
    array-length v14, v5

    if-lez v14, :cond_3

    iget-object v14, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v14}, Lorg/bouncycastle/tls/SessionParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v14

    invoke-static {v4, v14}, Lorg/bouncycastle/tls/ProtocolVersion;->contains([Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v15

    if-nez v15, :cond_4

    sget-object v5, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    goto :goto_2

    :cond_3
    move-object v14, v10

    :cond_4
    :goto_2
    array-length v15, v5

    if-lez v15, :cond_6

    invoke-static {v14}, Lorg/bouncycastle/tls/TlsUtils;->isExtendedMasterSecretOptional(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v14

    if-eqz v14, :cond_6

    iget-object v14, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v14}, Lorg/bouncycastle/tls/SessionParameters;->isExtendedMasterSecret()Z

    move-result v14

    if-eqz v12, :cond_5

    if-nez v14, :cond_6

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsClient;->allowLegacyResumption()Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_3

    :cond_5
    if-eqz v14, :cond_6

    :goto_3
    sget-object v5, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_6
    array-length v14, v5

    if-ge v14, v9, :cond_7

    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/tls/DTLSClientProtocol;->cancelSession(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;)V

    :cond_7
    iget-object v14, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-interface {v1, v14}, Lorg/bouncycastle/tls/TlsClient;->notifySessionToResume(Lorg/bouncycastle/tls/TlsSession;)V

    if-eqz v7, :cond_8

    sget-object v7, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    iget-object v14, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v14, v4}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addSupportedVersionsExtensionClient(Ljava/util/Hashtable;[Lorg/bouncycastle/tls/ProtocolVersion;)V

    move-object v15, v7

    goto :goto_4

    :cond_8
    move-object v15, v6

    :goto_4
    invoke-virtual {v2, v15}, Lorg/bouncycastle/tls/TlsClientContextImpl;->setRSAPreMasterSecretVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    iget-object v7, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v7}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getServerNameExtensionClient(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v7

    iput-object v7, v3, Lorg/bouncycastle/tls/SecurityParameters;->clientServerNames:Ljava/util/Vector;

    invoke-static {v6}, Lorg/bouncycastle/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v3, v6}, Lorg/bouncycastle/tls/TlsUtils;->establishClientSigAlgs(Lorg/bouncycastle/tls/SecurityParameters;Ljava/util/Hashtable;)V

    :cond_9
    iget-object v6, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v6}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSupportedGroupsExtension(Ljava/util/Hashtable;)[I

    move-result-object v6

    iput-object v6, v3, Lorg/bouncycastle/tls/SecurityParameters;->clientSupportedGroups:[I

    iput-object v10, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    iget-object v6, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v2, v1, v6}, Lorg/bouncycastle/tls/TlsUtils;->addKeyShareToClientHello(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v6

    iput-object v6, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientAgreements:Ljava/util/Hashtable;

    if-eqz v12, :cond_a

    invoke-static {v4}, Lorg/bouncycastle/tls/TlsUtils;->isExtendedMasterSecretOptional([Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v4}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addExtendedMasterSecretExtension(Ljava/util/Hashtable;)V

    goto :goto_5

    :cond_a
    iget-object v4, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    sget-object v6, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_extended_master_secret:Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    iget-object v4, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    sget-object v6, Lorg/bouncycastle/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v4, v6}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    iget-object v6, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    const/16 v7, 0xff

    invoke-static {v6, v7}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v6

    if-eqz v4, :cond_c

    if-nez v6, :cond_c

    iget-object v4, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v4, v7}, Lorg/bouncycastle/util/Arrays;->append([II)[I

    move-result-object v4

    iput-object v4, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    :cond_c
    if-eqz v11, :cond_d

    iget-object v4, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    const/16 v6, 0x5600

    invoke-static {v4, v6}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v4, v6}, Lorg/bouncycastle/util/Arrays;->append([II)[I

    move-result-object v4

    iput-object v4, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    :cond_d
    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsClient;->getHeartbeat()Lorg/bouncycastle/tls/TlsHeartbeat;

    move-result-object v4

    iput-object v4, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsClient;->getHeartbeatPolicy()S

    move-result v1

    iput-short v1, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->heartbeatPolicy:S

    iget-object v1, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    if-nez v1, :cond_e

    iget-short v1, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->heartbeatPolicy:S

    if-ne v9, v1, :cond_f

    :cond_e
    iget-object v1, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    new-instance v4, Lorg/bouncycastle/tls/HeartbeatExtension;

    iget-short v6, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->heartbeatPolicy:S

    invoke-direct {v4, v6}, Lorg/bouncycastle/tls/HeartbeatExtension;-><init>(S)V

    invoke-static {v1, v4}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addHeartbeatExtension(Ljava/util/Hashtable;Lorg/bouncycastle/tls/HeartbeatExtension;)V

    :cond_f
    iget-object v1, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    if-nez v1, :cond_10

    const/16 v21, 0x0

    goto :goto_7

    :cond_10
    iget-object v1, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    iget v8, v1, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->bindersSize:I

    move/from16 v21, v8

    :goto_7
    new-instance v14, Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v3}, Lorg/bouncycastle/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v16

    sget-object v18, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    iget-object v1, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    iget-object v0, v0, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    move-object/from16 v20, v0

    move-object/from16 v19, v1

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v21}, Lorg/bouncycastle/tls/ClientHello;-><init>(Lorg/bouncycastle/tls/ProtocolVersion;[B[B[B[ILjava/util/Hashtable;I)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v14, v2, v0}, Lorg/bouncycastle/tls/ClientHello;->encode(Lorg/bouncycastle/tls/TlsContext;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_11
    move-object/from16 v13, p0

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected generateClientKeyExchange(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object p1, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected invalidateSession(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;)V
    .locals 1

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsSession;->invalidate()V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DTLSClientProtocol;->cancelSession(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;)V

    return-void
.end method

.method protected processCertificateRequest(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-static {p2, v0}, Lorg/bouncycastle/tls/CertificateRequest;->parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/CertificateRequest;

    move-result-object p2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-static {p2, v0}, Lorg/bouncycastle/tls/TlsUtils;->validateCertificateRequest(Lorg/bouncycastle/tls/CertificateRequest;Lorg/bouncycastle/tls/TlsKeyExchange;)Lorg/bouncycastle/tls/CertificateRequest;

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x28

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processCertificateStatus(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-static {p2, v0}, Lorg/bouncycastle/tls/CertificateStatus;->parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/CertificateStatus;

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->certificateStatus:Lorg/bouncycastle/tls/CertificateStatus;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method protected processHelloVerifyRequest(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p2

    sget-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v1, p2}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;II)[B

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getClientVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x2f

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processNewSessionTicket(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/NewSessionTicket;

    move-result-object p2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {p1, p2}, Lorg/bouncycastle/tls/TlsClient;->notifyNewSessionTicket(Lorg/bouncycastle/tls/NewSessionTicket;)V

    return-void
.end method

.method protected processServerCertificate(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object v1, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/tls/TlsClient;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0, v1, v2, p2}, Lorg/bouncycastle/tls/TlsUtils;->receiveServerCertificate(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;Ljava/io/ByteArrayInputStream;Ljava/util/Hashtable;)Lorg/bouncycastle/tls/TlsAuthentication;

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    return-void
.end method

.method protected processServerHello(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/tls/TlsClient;

    iget-object v1, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3}, Lorg/bouncycastle/tls/ServerHello;->parse(Ljava/io/ByteArrayInputStream;)Lorg/bouncycastle/tls/ServerHello;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/tls/ServerHello;->getExtensions()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {p2}, Lorg/bouncycastle/tls/ServerHello;->getVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v4

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSupportedVersionsExtensionServer(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v5

    const/16 v6, 0x2f

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    sget-object v7, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v7, v4}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_1c

    sget-object v4, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v4, v5

    :goto_0
    invoke-virtual {p0, p1, v4}, Lorg/bouncycastle/tls/DTLSClientProtocol;->reportServerVersion(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/tls/ProtocolVersion;)V

    iget-object v5, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-virtual {p2}, Lorg/bouncycastle/tls/ServerHello;->getRandom()[B

    move-result-object v7

    iput-object v7, v2, Lorg/bouncycastle/tls/SecurityParameters;->serverRandom:[B

    invoke-virtual {v1}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getClientVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v1

    invoke-static {v4, v1}, Lorg/bouncycastle/tls/TlsUtils;->checkDowngradeMarker(Lorg/bouncycastle/tls/ProtocolVersion;[B)V

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/tls/ServerHello;->getSessionID()[B

    move-result-object v1

    iput-object v1, v2, Lorg/bouncycastle/tls/SecurityParameters;->sessionID:[B

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/TlsClient;->notifySessionID([B)V

    array-length v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v7, :cond_2

    iget-object v7, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    if-eqz v7, :cond_2

    iget-object v7, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-interface {v7}, Lorg/bouncycastle/tls/TlsSession;->getSessionID()[B

    move-result-object v7

    invoke-static {v1, v7}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v2, Lorg/bouncycastle/tls/SecurityParameters;->resumedSession:Z

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lorg/bouncycastle/tls/ServerHello;->getCipherSuite()I

    move-result v1

    iget-object v7, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SessionParameters;->getCipherSuite()I

    move-result v7

    if-ne v1, v7, :cond_3

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    iget-object v7, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/tls/SessionParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p2, "ServerHello parameters do not match resumed session"

    invoke-direct {p1, v6, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    invoke-virtual {p2}, Lorg/bouncycastle/tls/ServerHello;->getCipherSuite()I

    move-result p2

    invoke-static {p2, v6}, Lorg/bouncycastle/tls/DTLSClientProtocol;->validateSelectedCipherSuite(IS)I

    move-result p2

    invoke-static {v5, p2}, Lorg/bouncycastle/tls/TlsUtils;->isValidCipherSuiteSelection([II)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/bouncycastle/tls/TlsUtils;->isValidVersionForCipherSuite(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {v2, p2}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedCipherSuite(Lorg/bouncycastle/tls/SecurityParameters;I)V

    invoke-interface {v0, p2}, Lorg/bouncycastle/tls/TlsClient;->notifySelectedCipherSuite(I)V

    iput-object v3, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v5, Lorg/bouncycastle/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v1, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    iget-object v5, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v5, v1}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    goto :goto_3

    :cond_6
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x6e

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_7
    sget-object p2, Lorg/bouncycastle/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v3, p2}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p2

    const/16 v1, 0x28

    if-nez p2, :cond_8

    iput-boolean v8, v2, Lorg/bouncycastle/tls/SecurityParameters;->secureRenegotiation:Z

    goto :goto_4

    :cond_8
    iput-boolean v9, v2, Lorg/bouncycastle/tls/SecurityParameters;->secureRenegotiation:Z

    sget-object v5, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v5}, Lorg/bouncycastle/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v5

    invoke-static {p2, v5}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p2

    if-eqz p2, :cond_1a

    :goto_4
    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isSecureRenegotiation()Z

    move-result p2

    invoke-interface {v0, p2}, Lorg/bouncycastle/tls/TlsClient;->notifySecureRenegotiation(Z)V

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z

    move-result v8

    invoke-static {v4}, Lorg/bouncycastle/tls/TlsUtils;->isExtendedMasterSecretOptional(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p2

    if-eqz p2, :cond_a

    if-nez v8, :cond_c

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsClient;->requiresExtendedMasterSecret()Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_5

    :cond_9
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p2, "Extended Master Secret extension is required"

    invoke-direct {p1, v1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_a
    if-nez v8, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Server sent an unexpected extended_master_secret extension negotiating "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v6, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_c
    :goto_5
    iput-boolean v8, v2, Lorg/bouncycastle/tls/SecurityParameters;->extendedMasterSecret:Z

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result p2

    iget-object v4, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/tls/SessionParameters;->isExtendedMasterSecret()Z

    move-result v4

    if-ne p2, v4, :cond_d

    goto :goto_6

    :cond_d
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p2, "Server resumed session with mismatched extended_master_secret negotiation"

    invoke-direct {p1, v1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_e
    :goto_6
    invoke-static {v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getALPNExtensionServer(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/ProtocolName;

    move-result-object p2

    iput-object p2, v2, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocol:Lorg/bouncycastle/tls/ProtocolName;

    iput-boolean v9, v2, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocolSet:Z

    sget-object p2, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getConnectionIDExtension(Ljava/util/Hashtable;)[B

    move-result-object p2

    if-eqz p2, :cond_10

    iget-object v1, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getConnectionIDExtension(Ljava/util/Hashtable;)[B

    move-result-object v1

    if-eqz v1, :cond_f

    iput-object p2, v2, Lorg/bouncycastle/tls/SecurityParameters;->connectionIDLocal:[B

    iput-object v1, v2, Lorg/bouncycastle/tls/SecurityParameters;->connectionIDPeer:[B

    goto :goto_7

    :cond_f
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_10
    :goto_7
    invoke-static {v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getHeartbeatExtension(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/HeartbeatExtension;

    move-result-object p2

    const/4 v1, 0x2

    const/4 v4, 0x0

    if-nez p2, :cond_11

    iput-object v4, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    iput-short v1, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->heartbeatPolicy:S

    goto :goto_8

    :cond_11
    invoke-virtual {p2}, Lorg/bouncycastle/tls/HeartbeatExtension;->getMode()S

    move-result p2

    if-eq v9, p2, :cond_12

    iput-object v4, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    :cond_12
    :goto_8
    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object p2, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->readServerExtensions()Ljava/util/Hashtable;

    move-result-object v3

    goto :goto_9

    :cond_13
    move-object v4, p2

    :goto_9
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_18

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getCipherSuite()I

    move-result v5

    invoke-static {v5}, Lorg/bouncycastle/tls/TlsUtils;->isBlockCipherSuite(I)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_a

    :cond_14
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_15
    :goto_a
    iput-boolean p2, v2, Lorg/bouncycastle/tls/SecurityParameters;->encryptThenMAC:Z

    invoke-static {v4, v3, v6}, Lorg/bouncycastle/tls/TlsUtils;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result p2

    iput-short p2, v2, Lorg/bouncycastle/tls/SecurityParameters;->maxFragmentLength:S

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result p2

    iput-boolean p2, v2, Lorg/bouncycastle/tls/SecurityParameters;->truncatedHMac:Z

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result p2

    if-nez p2, :cond_18

    sget-object p2, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request_v2:Ljava/lang/Integer;

    invoke-static {v3, p2, v6}, Lorg/bouncycastle/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result p2

    if-eqz p2, :cond_16

    iput v1, v2, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    goto :goto_b

    :cond_16
    sget-object p2, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {v3, p2, v6}, Lorg/bouncycastle/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result p2

    if-eqz p2, :cond_17

    iput v9, v2, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    :cond_17
    :goto_b
    invoke-static {v4, v3, v6}, Lorg/bouncycastle/tls/TlsUtils;->processClientCertificateTypeExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result p2

    iput-short p2, v2, Lorg/bouncycastle/tls/SecurityParameters;->clientCertificateType:S

    invoke-static {v4, v3, v6}, Lorg/bouncycastle/tls/TlsUtils;->processServerCertificateTypeExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result p2

    iput-short p2, v2, Lorg/bouncycastle/tls/SecurityParameters;->serverCertificateType:S

    sget-object p2, Lorg/bouncycastle/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {v3, p2, v6}, Lorg/bouncycastle/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result p2

    iput-boolean p2, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    :cond_18
    if-eqz v4, :cond_19

    invoke-interface {v0, v3}, Lorg/bouncycastle/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    :cond_19
    return-void

    :cond_1a
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1b
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p2, "ServerHello selected invalid cipher suite"

    invoke-direct {p1, v6, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_d

    :goto_c
    throw p1

    :goto_d
    goto :goto_c
.end method

.method protected processServerKeyExchange(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p1, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method protected processServerSupplementalData(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
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

    iget-object p1, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {p1, p2}, Lorg/bouncycastle/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    return-void
.end method

.method protected reportServerVersion(Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/tls/ProtocolVersion;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x2f

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getClientSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/bouncycastle/tls/ProtocolVersion;->contains([Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object p2, v1, Lorg/bouncycastle/tls/SecurityParameters;->negotiatedVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    iget-object p1, p1, Lorg/bouncycastle/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/tls/TlsClient;

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedVersionDTLSClient(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;)V

    return-void

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x46

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method
