.class public Lorg/bouncycastle/tls/TlsClientProtocol;
.super Lorg/bouncycastle/tls/TlsProtocol;


# instance fields
.field protected authentication:Lorg/bouncycastle/tls/TlsAuthentication;

.field protected certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

.field protected certificateStatus:Lorg/bouncycastle/tls/CertificateStatus;

.field protected clientAgreements:Ljava/util/Hashtable;

.field clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

.field protected clientHello:Lorg/bouncycastle/tls/ClientHello;

.field protected keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

.field protected tlsClient:Lorg/bouncycastle/tls/TlsClient;

.field tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/tls/TlsProtocol;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientAgreements:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/tls/CertificateStatus;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/TlsProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientAgreements:Ljava/util/Hashtable;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/tls/CertificateStatus;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    return-void
.end method


# virtual methods
.method protected beginHandshake(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->beginHandshake(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->sendClientHello()V

    const/4 p1, 0x1

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    return-void
.end method

.method protected cleanupHandshake()V
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/tls/TlsProtocol;->cleanupHandshake()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientAgreements:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/tls/CertificateStatus;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    return-void
.end method

.method public connect(Lorg/bouncycastle/tls/TlsClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    new-instance v0, Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsClient;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsClientContextImpl;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/TlsClient;->init(Lorg/bouncycastle/tls/TlsClientContext;)V

    invoke-interface {p1, p0}, Lorg/bouncycastle/tls/TlsClient;->notifyCloseHandle(Lorg/bouncycastle/tls/TlsCloseable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->beginHandshake(Z)V

    iget-boolean p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->blocking:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->blockForHandshake()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'connect\' can only be called once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'tlsClient\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getContext()Lorg/bouncycastle/tls/TlsContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    return-object v0
.end method

.method getContextAdmin()Lorg/bouncycastle/tls/AbstractTlsContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/bouncycastle/tls/TlsPeer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    return-object v0
.end method

.method protected handle13HandshakeMessage(SLorg/bouncycastle/tls/HandshakeMessageInput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->isTLSv13ConnectionState()Z

    move-result v0

    const/16 v1, 0x50

    if-eqz v0, :cond_17

    const/4 v0, 0x2

    const/4 v2, 0x4

    const/16 v3, 0xa

    if-eq p1, v0, :cond_13

    if-eq p1, v2, :cond_12

    const/16 v0, 0x8

    const/4 v1, 0x5

    if-eq p1, v0, :cond_10

    const/4 v0, 0x7

    const/16 v2, 0xb

    if-eq p1, v2, :cond_d

    const/16 v4, 0xd

    const/4 v5, 0x0

    if-eq p1, v4, :cond_a

    const/16 v4, 0x9

    const/16 v6, 0xf

    if-eq p1, v6, :cond_8

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->receive13KeyUpdate(Ljava/io/ByteArrayInputStream;)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v1, :cond_3

    if-eq p1, v4, :cond_4

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->skip13CertificateRequest()V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->skip13ServerCertificate()V

    :cond_4
    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->receive13ServerFinished(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/HandshakeMessageInput;->updateHash(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    iput-short v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->getCurrentPRFHash(Lorg/bouncycastle/tls/TlsHandshakeHash;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {p2, v5}, Lorg/bouncycastle/tls/RecordStream;->setIgnoreChangeCipherSpec(Z)V

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-eqz p2, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    invoke-static {v0, p2}, Lorg/bouncycastle/tls/TlsUtils;->establish13ClientCredentials(Lorg/bouncycastle/tls/TlsAuthentication;Lorg/bouncycastle/tls/CertificateRequest;)Lorg/bouncycastle/tls/TlsCredentialedSigner;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsCredentialedSigner;->getCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_6

    sget-object v0, Lorg/bouncycastle/tls/Certificate;->EMPTY_CHAIN_TLS13:Lorg/bouncycastle/tls/Certificate;

    :cond_6
    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/TlsClientProtocol;->send13CertificateMessage(Lorg/bouncycastle/tls/Certificate;)V

    iput-short v6, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-eqz p2, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {v0, p2, v1}, Lorg/bouncycastle/tls/TlsUtils;->generate13CertificateVerify(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsCredentialedSigner;Lorg/bouncycastle/tls/TlsHandshakeHash;)Lorg/bouncycastle/tls/DigitallySigned;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->send13CertificateVerifyMessage(Lorg/bouncycastle/tls/DigitallySigned;)V

    const/16 p2, 0x11

    iput-short p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    :cond_7
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->send13FinishedMessage()V

    const/16 p2, 0x12

    iput-short p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-static {p2, p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->establish13PhaseApplication(Lorg/bouncycastle/tls/TlsContext;[BLorg/bouncycastle/tls/RecordStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/RecordStream;->enablePendingCipherWrite()V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {p1, v5}, Lorg/bouncycastle/tls/RecordStream;->enablePendingCipherRead(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->completeHandshake()V

    return-void

    :cond_8
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v0, :cond_9

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->receive13ServerCertificateVerify(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/HandshakeMessageInput;->updateHash(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    iput-short v4, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    return-void

    :cond_9
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_a
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v1, :cond_c

    const/16 p2, 0x15

    if-eq p1, p2, :cond_b

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_b
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_c
    invoke-virtual {p0, p2, v5}, Lorg/bouncycastle/tls/TlsClientProtocol;->receive13CertificateRequest(Ljava/io/ByteArrayInputStream;Z)V

    iput-short v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    return-void

    :cond_d
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v1, :cond_f

    if-ne p1, v2, :cond_e

    goto :goto_2

    :cond_e
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_f
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->skip13CertificateRequest()V

    :goto_2
    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->receive13ServerCertificate(Ljava/io/ByteArrayInputStream;)V

    iput-short v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    return-void

    :cond_10
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v2, :cond_11

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->receive13EncryptedExtensions(Ljava/io/ByteArrayInputStream;)V

    iput-short v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    return-void

    :cond_11
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_12
    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->receive13NewSessionTicket(Ljava/io/ByteArrayInputStream;)V

    return-void

    :cond_13
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    const/4 v0, 0x1

    if-eq p1, v0, :cond_16

    const/4 v1, 0x3

    if-ne p1, v1, :cond_15

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)Lorg/bouncycastle/tls/ServerHello;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->isHelloRetryRequest()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tls/TlsClientProtocol;->process13ServerHello(Lorg/bouncycastle/tls/ServerHello;Z)V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/HandshakeMessageInput;->updateHash(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    iput-short v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tls/TlsClientProtocol;->process13ServerHelloCoda(Lorg/bouncycastle/tls/ServerHello;Z)V

    return-void

    :cond_14
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_15
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_16
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_17
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected handleHandshakeMessage(SLorg/bouncycastle/tls/HandshakeMessageInput;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParameters()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    iget-short v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

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

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->handle13HandshakeMessage(SLorg/bouncycastle/tls/HandshakeMessageInput;)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->isLegacyConnectionState()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v1

    const/16 v4, 0x12

    const/16 v5, 0x14

    const/4 v6, 0x4

    const/16 v7, 0xa

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    if-ne p1, v5, :cond_2

    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v6, :cond_2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/HandshakeMessageInput;->updateHash(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    iput-short v5, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->sendChangeCipherSpec()V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->sendFinishedMessage()V

    iput-short v4, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->completeHandshake()V

    return-void

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_3
    if-eqz p1, :cond_2c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_28

    const/16 v1, 0x13

    const/4 v8, 0x0

    if-eq p1, v6, :cond_25

    if-eq p1, v5, :cond_21

    const/16 v1, 0x16

    const/16 v5, 0x8

    const/4 v9, 0x7

    if-eq p1, v1, :cond_1e

    const/16 v1, 0x17

    if-eq p1, v1, :cond_1c

    const/16 v1, 0xb

    const/4 v3, 0x6

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_0
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v6, :cond_5

    if-eq p1, v3, :cond_6

    if-eq p1, v9, :cond_7

    if-eq p1, v5, :cond_7

    if-eq p1, v7, :cond_8

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_5
    invoke-virtual {p0, v8}, Lorg/bouncycastle/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :cond_6
    iput-object v8, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    :cond_7
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->handleServerCertificate()V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :cond_8
    :goto_0
    invoke-static {p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/16 p1, 0xc

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-eqz p1, :cond_c

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    invoke-static {p2, p1}, Lorg/bouncycastle/tls/TlsUtils;->establishClientCredentials(Lorg/bouncycastle/tls/TlsAuthentication;Lorg/bouncycastle/tls/CertificateRequest;)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object p2

    instance-of v1, p1, Lorg/bouncycastle/tls/TlsCredentialedSigner;

    if-eqz v1, :cond_a

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/tls/TlsCredentialedSigner;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/bouncycastle/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/TlsCredentialedSigner;)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v3

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsCredentialedSigner;->getStreamSigner()Lorg/bouncycastle/tls/crypto/TlsStreamSigner;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerSigAlgs()Ljava/util/Vector;

    move-result-object v6

    invoke-static {v6, v3, v2}, Lorg/bouncycastle/tls/TlsUtils;->verifySupportedSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;S)V

    if-nez v5, :cond_9

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {v2, v3}, Lorg/bouncycastle/tls/TlsUtils;->trackHashAlgorithmClient(Lorg/bouncycastle/tls/TlsHandshakeHash;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V

    :cond_9
    if-eqz v5, :cond_d

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsHandshakeHash;->forceBuffering()V

    goto :goto_3

    :cond_a
    move-object v1, v8

    goto :goto_2

    :cond_b
    move-object p2, v8

    goto :goto_1

    :cond_c
    move-object p1, v8

    move-object p2, p1

    :goto_1
    move-object v1, p2

    :goto_2
    move-object v3, v1

    move-object v5, v3

    :cond_d
    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    if-nez p1, :cond_e

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_4

    :cond_e
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {v2, p1}, Lorg/bouncycastle/tls/TlsKeyExchange;->processClientCredentials(Lorg/bouncycastle/tls/TlsCredentials;)V

    :goto_4
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    const/16 p1, 0xe

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    :cond_f
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    if-eqz p1, :cond_10

    invoke-virtual {p0, p2, v8}, Lorg/bouncycastle/tls/TlsClientProtocol;->sendCertificateMessage(Lorg/bouncycastle/tls/Certificate;Ljava/io/OutputStream;)V

    const/16 p1, 0xf

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    :cond_10
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->sendClientKeyExchange()V

    const/16 p1, 0x10

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isSSL(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-static {p2, v2}, Lorg/bouncycastle/tls/TlsClientProtocol;->establishMasterSecret(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsKeyExchange;)V

    :cond_11
    iget-object p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->getCurrentPRFHash(Lorg/bouncycastle/tls/TlsHandshakeHash;)[B

    move-result-object p2

    iput-object p2, v0, Lorg/bouncycastle/tls/SecurityParameters;->sessionHash:[B

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->establishMasterSecret(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsKeyExchange;)V

    :cond_12
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->initCipher(Lorg/bouncycastle/tls/TlsContext;)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/tls/RecordStream;->setPendingCipher(Lorg/bouncycastle/tls/crypto/TlsCipher;)V

    if-eqz v1, :cond_13

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {p1, v1, v3, v5, p2}, Lorg/bouncycastle/tls/TlsUtils;->generateCertificateVerifyClient(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsCredentialedSigner;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/tls/crypto/TlsStreamSigner;Lorg/bouncycastle/tls/TlsHandshakeHash;)Lorg/bouncycastle/tls/DigitallySigned;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->sendCertificateVerifyMessage(Lorg/bouncycastle/tls/DigitallySigned;)V

    const/16 p1, 0x11

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    :cond_13
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsHandshakeHash;->stopTracking()V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->sendChangeCipherSpec()V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->sendFinishedMessage()V

    iput-short v4, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    return-void

    :pswitch_1
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v9, :cond_15

    if-eq p1, v5, :cond_15

    if-ne p1, v7, :cond_14

    goto :goto_5

    :cond_14
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_15
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->handleServerCertificate()V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :goto_5
    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->receiveCertificateRequest(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->establishServerSigAlgs(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/CertificateRequest;)V

    iput-short v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    return-void

    :pswitch_2
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v6, :cond_17

    if-eq p1, v3, :cond_18

    if-eq p1, v9, :cond_19

    if-ne p1, v5, :cond_16

    goto :goto_6

    :cond_16
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_17
    invoke-virtual {p0, v8}, Lorg/bouncycastle/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :cond_18
    iput-object v8, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    :cond_19
    :goto_6
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->handleServerCertificate()V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {p1, p2}, Lorg/bouncycastle/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iput-short v7, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    return-void

    :pswitch_3
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v6, :cond_1b

    if-ne p1, v3, :cond_1a

    goto :goto_7

    :cond_1a
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1b
    invoke-virtual {p0, v8}, Lorg/bouncycastle/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :goto_7
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {p1, v0, p2, v1}, Lorg/bouncycastle/tls/TlsUtils;->receiveServerCertificate(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;Ljava/io/ByteArrayInputStream;Ljava/util/Hashtable;)Lorg/bouncycastle/tls/TlsAuthentication;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    iput-short v9, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    return-void

    :cond_1c
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v6, :cond_1d

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    return-void

    :cond_1d
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1e
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v9, :cond_20

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getStatusRequestVersion()I

    move-result p1

    if-lt p1, v3, :cond_1f

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/CertificateStatus;->parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/CertificateStatus;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/tls/CertificateStatus;

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iput-short v5, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    return-void

    :cond_1f
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_20
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_21
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v4, :cond_23

    if-ne p1, v1, :cond_22

    goto :goto_8

    :cond_22
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_23
    iget-boolean p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-nez p1, :cond_24

    :goto_8
    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v5, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->completeHandshake()V

    return-void

    :cond_24
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_25
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v4, :cond_27

    iget-boolean p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-eqz p1, :cond_26

    sget-object p1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    iput-object p1, v0, Lorg/bouncycastle/tls/SecurityParameters;->sessionID:[B

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->invalidateSession()V

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getSessionID()[B

    move-result-object p1

    invoke-static {p1, v8}, Lorg/bouncycastle/tls/TlsUtils;->importSession([BLorg/bouncycastle/tls/SessionParameters;)Lorg/bouncycastle/tls/TlsSession;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->receiveNewSessionTicket(Ljava/io/ByteArrayInputStream;)V

    iput-short v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    return-void

    :cond_26
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_27
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_28
    iget-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v3, :cond_2b

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)Lorg/bouncycastle/tls/ServerHello;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->isHelloRetryRequest()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->process13HelloRetryRequest(Lorg/bouncycastle/tls/ServerHello;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsHandshakeHash;->notifyPRFDetermined()V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->adjustTranscriptForRetry(Lorg/bouncycastle/tls/TlsHandshakeHash;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/HandshakeMessageInput;->updateHash(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    iput-short v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->send13ClientHelloRetry()V

    const/4 p1, 0x3

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    return-void

    :cond_29
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->processServerHello(Lorg/bouncycastle/tls/ServerHello;)V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsHandshakeHash;->notifyPRFDetermined()V

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    :cond_2a
    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-virtual {p2, v1}, Lorg/bouncycastle/tls/HandshakeMessageInput;->updateHash(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    iput-short v6, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p2

    if-eqz p2, :cond_2d

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->process13ServerHelloCoda(Lorg/bouncycastle/tls/ServerHello;Z)V

    return-void

    :cond_2b
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2c
    invoke-static {p2}, Lorg/bouncycastle/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->isApplicationDataReady()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->handleRenegotiation()Z

    :cond_2d
    return-void

    :cond_2e
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleServerCertificate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/tls/CertificateStatus;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    iget-object v3, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    iget-object v4, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/tls/TlsUtils;->processServerCertificate(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/CertificateStatus;Lorg/bouncycastle/tls/TlsKeyExchange;Lorg/bouncycastle/tls/TlsAuthentication;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    return-void
.end method

.method protected handleSupplementalData(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    const/4 p1, 0x6

    iput-short p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->connection_state:S

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->initKeyExchangeClient(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    return-void
.end method

.method protected process13HelloRetryRequest(Lorg/bouncycastle/tls/ServerHello;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->isRenegotiating()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getSessionID()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getCipherSuite()I

    move-result v3

    sget-object v4, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    const/16 v4, 0x2f

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ClientHello;->getSessionID()[B

    move-result-object v1

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ClientHello;->getCipherSuites()[I

    move-result-object v1

    invoke-static {v1, v3}, Lorg/bouncycastle/tls/TlsUtils;->isValidCipherSuiteSelection([II)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getExtensions()Ljava/util/Hashtable;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v1, 0x6

    invoke-static {p1, v1, v4}, Lorg/bouncycastle/tls/TlsUtils;->checkExtensionData13(Ljava/util/Hashtable;IS)V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/16 v5, 0x2c

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v5, v2}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x6e

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSupportedVersionsExtensionServer(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v2, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getClientSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/bouncycastle/tls/ProtocolVersion;->contains([Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v3, v1}, Lorg/bouncycastle/tls/TlsUtils;->isValidVersionForCipherSuite(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v2, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->pskKeyExchangeModes:[S

    const/4 v6, 0x1

    invoke-static {v2, v6}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v5, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v2, v5}, Lorg/bouncycastle/tls/TlsClient;->notifySelectedPSK(Lorg/bouncycastle/tls/TlsPSK;)V

    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getKeyShareHelloRetryRequest(Ljava/util/Hashtable;)I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSupportedGroups()[I

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientAgreements:Ljava/util/Hashtable;

    invoke-static {v1, v6, v7, v2}, Lorg/bouncycastle/tls/TlsUtils;->isValidKeyShareSelection(Lorg/bouncycastle/tls/ProtocolVersion;[ILjava/util/Hashtable;I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getCookieExtension(Ljava/util/Hashtable;)[B

    move-result-object p1

    iput-object v1, v0, Lorg/bouncycastle/tls/SecurityParameters;->negotiatedVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object v4, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-static {v1, v4}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedVersionTLSClient(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/bouncycastle/tls/SecurityParameters;->resumedSession:Z

    sget-object v1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    iput-object v1, v0, Lorg/bouncycastle/tls/SecurityParameters;->sessionID:[B

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    sget-object v4, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-interface {v1, v4}, Lorg/bouncycastle/tls/TlsClient;->notifySessionID([B)V

    invoke-static {v0, v3}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedCipherSuite(Lorg/bouncycastle/tls/SecurityParameters;I)V

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v0, v3}, Lorg/bouncycastle/tls/TlsClient;->notifySelectedCipherSuite(I)V

    iput-object v5, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientAgreements:Ljava/util/Hashtable;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->retryCookie:[B

    iput v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->retryGroup:I

    return-void

    :cond_4
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_5
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_6
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x6d

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_7
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_8
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_9
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected process13ServerHello(Lorg/bouncycastle/tls/ServerHello;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getSessionID()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getCipherSuite()I

    move-result v3

    sget-object v4, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    const/16 v4, 0x2f

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ClientHello;->getSessionID()[B

    move-result-object v1

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getExtensions()Ljava/util/Hashtable;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v2, 0x2

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/tls/TlsUtils;->checkExtensionData13(Ljava/util/Hashtable;IS)V

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSupportedVersionsExtensionServer(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getCipherSuite()I

    move-result v5

    if-ne v5, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x6d

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    iget-object v5, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v5}, Lorg/bouncycastle/tls/ClientHello;->getCipherSuites()[I

    move-result-object v5

    invoke-static {v5, v3}, Lorg/bouncycastle/tls/TlsUtils;->isValidCipherSuiteSelection([II)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/bouncycastle/tls/TlsUtils;->isValidVersionForCipherSuite(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v5

    if-eqz v5, :cond_b

    iput-boolean v2, v0, Lorg/bouncycastle/tls/SecurityParameters;->resumedSession:Z

    sget-object v5, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    iput-object v5, v0, Lorg/bouncycastle/tls/SecurityParameters;->sessionID:[B

    iget-object v5, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    sget-object v6, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-interface {v5, v6}, Lorg/bouncycastle/tls/TlsClient;->notifySessionID([B)V

    invoke-static {v0, v3}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedCipherSuite(Lorg/bouncycastle/tls/SecurityParameters;I)V

    iget-object v5, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v5, v3}, Lorg/bouncycastle/tls/TlsClient;->notifySelectedCipherSuite(I)V

    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getRandom()[B

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/tls/SecurityParameters;->serverRandom:[B

    iput-boolean v2, v0, Lorg/bouncycastle/tls/SecurityParameters;->secureRenegotiation:Z

    const/4 p1, 0x1

    iput-boolean p1, v0, Lorg/bouncycastle/tls/SecurityParameters;->extendedMasterSecret:Z

    iget-object v5, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v6, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iput v5, v0, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getPreSharedKeyServerHello(Ljava/util/Hashtable;)I

    move-result v5

    if-ltz v5, :cond_5

    iget-object v6, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->psks:[Lorg/bouncycastle/tls/TlsPSK;

    array-length v6, v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    iget-object v6, v6, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->psks:[Lorg/bouncycastle/tls/TlsPSK;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lorg/bouncycastle/tls/TlsPSK;->getPRFAlgorithm()I

    move-result v7

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFAlgorithm()I

    move-result v8

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    iget-object v7, v7, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->earlySecrets:[Lorg/bouncycastle/tls/crypto/TlsSecret;

    aget-object v5, v7, v5

    iput-boolean p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->selectedPSK13:Z

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_5
    move-object v5, v3

    move-object v6, v5

    :goto_1
    iget-object v7, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v7, v6}, Lorg/bouncycastle/tls/TlsClient;->notifySelectedPSK(Lorg/bouncycastle/tls/TlsPSK;)V

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getKeyShareServerHello(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/KeyShareEntry;

    move-result-object v1

    if-nez v1, :cond_7

    if-nez p2, :cond_6

    if-eqz v5, :cond_6

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    iget-object p1, p1, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->pskKeyExchangeModes:[S

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result p1

    if-eqz p1, :cond_6

    move-object p1, v3

    goto :goto_3

    :cond_6
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_7
    if-eqz v5, :cond_9

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    iget-object p2, p2, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->pskKeyExchangeModes:[S

    invoke-static {p2, p1}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_9
    :goto_2
    invoke-virtual {v1}, Lorg/bouncycastle/tls/KeyShareEntry;->getNamedGroup()I

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientAgreements:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/tls/crypto/TlsAgreement;

    if-eqz p1, :cond_a

    invoke-virtual {v1}, Lorg/bouncycastle/tls/KeyShareEntry;->getKeyExchange()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/tls/crypto/TlsAgreement;->receivePeerValue([B)V

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsAgreement;->calculateSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    :goto_3
    iput-object v3, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientAgreements:Ljava/util/Hashtable;

    iput-object v3, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-static {p2, v5, p1}, Lorg/bouncycastle/tls/TlsUtils;->establish13PhaseSecrets(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsSecret;Lorg/bouncycastle/tls/crypto/TlsSecret;)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->invalidateSession()V

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getSessionID()[B

    move-result-object p1

    invoke-static {p1, v3}, Lorg/bouncycastle/tls/TlsUtils;->importSession([BLorg/bouncycastle/tls/SessionParameters;)Lorg/bouncycastle/tls/TlsSession;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    return-void

    :cond_a
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_b
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_c
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_d
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected process13ServerHelloCoda(Lorg/bouncycastle/tls/ServerHello;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->getCurrentPRFHash(Lorg/bouncycastle/tls/TlsHandshakeHash;)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/tls/TlsUtils;->establish13PhaseHandshake(Lorg/bouncycastle/tls/TlsContext;[BLorg/bouncycastle/tls/RecordStream;)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/tls/RecordStream;->setIgnoreChangeCipherSpec(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/RecordStream;->enablePendingCipherWrite()V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/bouncycastle/tls/RecordStream;->enablePendingCipherRead(Z)V

    return-void
.end method

.method protected processServerHello(Lorg/bouncycastle/tls/ServerHello;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getExtensions()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSupportedVersionsExtensionServer(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    const/16 v3, 0x2f

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_22

    move-object v1, v2

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isRenegotiating()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v4}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getClientSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/bouncycastle/tls/ProtocolVersion;->contains([Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_21

    sget-object v4, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/tls/ProtocolVersion;->isLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    iput-object v1, v2, Lorg/bouncycastle/tls/SecurityParameters;->negotiatedVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object v5, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-static {v4, v5}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedVersionTLSClient(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;)V

    sget-object v4, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {p0, p1, v5}, Lorg/bouncycastle/tls/TlsClientProtocol;->process13ServerHello(Lorg/bouncycastle/tls/ServerHello;Z)V

    return-void

    :cond_4
    iget-object v4, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v4}, Lorg/bouncycastle/tls/ClientHello;->getCipherSuites()[I

    move-result-object v4

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    iput-object v6, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->retryCookie:[B

    const/4 v7, -0x1

    iput v7, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->retryGroup:I

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getRandom()[B

    move-result-object v7

    iput-object v7, v2, Lorg/bouncycastle/tls/SecurityParameters;->serverRandom:[B

    iget-object v7, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v7}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getClientVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v7

    invoke-static {v1, v7}, Lorg/bouncycastle/tls/TlsUtils;->checkDowngradeMarker(Lorg/bouncycastle/tls/ProtocolVersion;[B)V

    :cond_5
    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getSessionID()[B

    move-result-object v7

    iput-object v7, v2, Lorg/bouncycastle/tls/SecurityParameters;->sessionID:[B

    iget-object v8, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v8, v7}, Lorg/bouncycastle/tls/TlsClient;->notifySessionID([B)V

    array-length v8, v7

    const/4 v9, 0x1

    if-lez v8, :cond_6

    iget-object v8, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-interface {v8}, Lorg/bouncycastle/tls/TlsSession;->getSessionID()[B

    move-result-object v8

    invoke-static {v7, v8}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    iput-boolean v7, v2, Lorg/bouncycastle/tls/SecurityParameters;->resumedSession:Z

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getCipherSuite()I

    move-result v7

    iget-object v8, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/tls/SessionParameters;->getCipherSuite()I

    move-result v8

    if-ne v7, v8, :cond_7

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/tls/SessionParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string v0, "ServerHello parameters do not match resumed session"

    invoke-direct {p1, v3, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    invoke-virtual {p1}, Lorg/bouncycastle/tls/ServerHello;->getCipherSuite()I

    move-result p1

    invoke-static {v4, p1}, Lorg/bouncycastle/tls/TlsUtils;->isValidCipherSuiteSelection([II)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/bouncycastle/tls/TlsUtils;->isValidVersionForCipherSuite(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static {v2, p1}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedCipherSuite(Lorg/bouncycastle/tls/SecurityParameters;I)V

    iget-object v4, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v4, p1}, Lorg/bouncycastle/tls/TlsClient;->notifySelectedCipherSuite(I)V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    sget-object v7, Lorg/bouncycastle/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v4, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_5

    :cond_9
    iget-object v7, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v7, v4}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    goto :goto_5

    :cond_a
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrequested extension in ServerHello: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/tls/ExtensionType;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_b
    sget-object p1, Lorg/bouncycastle/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p1

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isRenegotiating()Z

    move-result v4

    const/16 v7, 0x28

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isSecureRenegotiation()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz p1, :cond_d

    iget-object v4, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v4}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParametersConnection()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalVerifyData()[B

    move-result-object v8

    invoke-virtual {v4}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerVerifyData()[B

    move-result-object v4

    invoke-static {v8, v4}, Lorg/bouncycastle/tls/TlsUtils;->concat([B[B)[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/tls/TlsClientProtocol;->createRenegotiationInfo([B)[B

    move-result-object v4

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_d
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_e
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_f
    if-nez p1, :cond_10

    iput-boolean v5, v2, Lorg/bouncycastle/tls/SecurityParameters;->secureRenegotiation:Z

    goto :goto_6

    :cond_10
    iput-boolean v9, v2, Lorg/bouncycastle/tls/SecurityParameters;->secureRenegotiation:Z

    sget-object v4, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v4}, Lorg/bouncycastle/tls/TlsClientProtocol;->createRenegotiationInfo([B)[B

    move-result-object v4

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1f

    :goto_6
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isSecureRenegotiation()Z

    move-result v4

    invoke-interface {p1, v4}, Lorg/bouncycastle/tls/TlsClient;->notifySecureRenegotiation(Z)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z

    move-result v5

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->isExtendedMasterSecretOptional(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p1

    if-eqz p1, :cond_12

    if-nez v5, :cond_14

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsClient;->requiresExtendedMasterSecret()Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_7

    :cond_11
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string v0, "Extended Master Secret extension is required"

    invoke-direct {p1, v7, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_12
    if-nez v5, :cond_13

    goto :goto_7

    :cond_13
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Server sent an unexpected extended_master_secret extension negotiating "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_14
    :goto_7
    iput-boolean v5, v2, Lorg/bouncycastle/tls/SecurityParameters;->extendedMasterSecret:Z

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result p1

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SessionParameters;->isExtendedMasterSecret()Z

    move-result v1

    if-ne p1, v1, :cond_15

    goto :goto_8

    :cond_15
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string v0, "Server resumed session with mismatched extended_master_secret negotiation"

    invoke-direct {p1, v7, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_16
    :goto_8
    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getALPNExtensionServer(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/ProtocolName;

    move-result-object p1

    iput-object p1, v2, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocol:Lorg/bouncycastle/tls/ProtocolName;

    iput-boolean v9, v2, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocolSet:Z

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SessionParameters;->readServerExtensions()Ljava/util/Hashtable;

    move-result-object v0

    move-object p1, v6

    :cond_17
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getCipherSuite()I

    move-result v4

    invoke-static {v4}, Lorg/bouncycastle/tls/TlsUtils;->isBlockCipherSuite(I)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_9

    :cond_18
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_19
    :goto_9
    iput-boolean v1, v2, Lorg/bouncycastle/tls/SecurityParameters;->encryptThenMAC:Z

    invoke-static {p1, v0, v3}, Lorg/bouncycastle/tls/TlsUtils;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v1

    iput-short v1, v2, Lorg/bouncycastle/tls/SecurityParameters;->maxFragmentLength:S

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v1

    iput-boolean v1, v2, Lorg/bouncycastle/tls/SecurityParameters;->truncatedHMac:Z

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v1

    if-nez v1, :cond_1c

    sget-object v1, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request_v2:Ljava/lang/Integer;

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x2

    iput v1, v2, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    goto :goto_a

    :cond_1a
    sget-object v1, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v1

    if-eqz v1, :cond_1b

    iput v9, v2, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    :cond_1b
    :goto_a
    invoke-static {p1, v0, v3}, Lorg/bouncycastle/tls/TlsUtils;->processClientCertificateTypeExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v1

    iput-short v1, v2, Lorg/bouncycastle/tls/SecurityParameters;->clientCertificateType:S

    invoke-static {p1, v0, v3}, Lorg/bouncycastle/tls/TlsUtils;->processServerCertificateTypeExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v1

    iput-short v1, v2, Lorg/bouncycastle/tls/SecurityParameters;->serverCertificateType:S

    sget-object v1, Lorg/bouncycastle/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v1

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->expectSessionTicket:Z

    :cond_1c
    if-eqz p1, :cond_1d

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    :cond_1d
    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getMaxFragmentLength()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->applyMaxFragmentLengthExtension(S)V

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object p1, v2, Lorg/bouncycastle/tls/SecurityParameters;->masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->initCipher(Lorg/bouncycastle/tls/TlsContext;)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/RecordStream;->setPendingCipher(Lorg/bouncycastle/tls/crypto/TlsCipher;)V

    return-void

    :cond_1e
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->invalidateSession()V

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getSessionID()[B

    move-result-object p1

    invoke-static {p1, v6}, Lorg/bouncycastle/tls/TlsUtils;->importSession([BLorg/bouncycastle/tls/SessionParameters;)Lorg/bouncycastle/tls/TlsSession;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    return-void

    :cond_1f
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v7}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_20
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string v0, "ServerHello selected invalid cipher suite"

    invoke-direct {p1, v3, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_21
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x46

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_22
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method

.method protected receive13CertificateRequest(Ljava/io/ByteArrayInputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->selectedPSK13:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-static {p2, p1}, Lorg/bouncycastle/tls/CertificateRequest;->parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/CertificateRequest;

    move-result-object p2

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    sget-object p1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-virtual {p2, p1}, Lorg/bouncycastle/tls/CertificateRequest;->hasCertificateRequestContext([B)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->establishServerSigAlgs(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/CertificateRequest;)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x2f

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected receive13EncryptedExtensions(Ljava/io/ByteArrayInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/16 p1, 0x8

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsClientProtocol;->readExtensionsData13(I[B)Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x6e

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getALPNExtensionServer(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/ProtocolName;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocol:Lorg/bouncycastle/tls/ProtocolName;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocolSet:Z

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SessionParameters;->readServerExtensions()Ljava/util/Hashtable;

    move-result-object v1

    const/4 v0, 0x0

    :cond_2
    const/16 v2, 0x2f

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v3

    iput-short v3, p1, Lorg/bouncycastle/tls/SecurityParameters;->maxFragmentLength:S

    const/4 v3, 0x0

    iput-boolean v3, p1, Lorg/bouncycastle/tls/SecurityParameters;->encryptThenMAC:Z

    iput-boolean v3, p1, Lorg/bouncycastle/tls/SecurityParameters;->truncatedHMac:Z

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v5, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    iput v4, p1, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->processClientCertificateTypeExtension13(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v4

    iput-short v4, p1, Lorg/bouncycastle/tls/SecurityParameters;->clientCertificateType:S

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->processServerCertificateTypeExtension13(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v1

    iput-short v1, p1, Lorg/bouncycastle/tls/SecurityParameters;->serverCertificateType:S

    :cond_3
    iput-boolean v3, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/tls/SecurityParameters;->getMaxFragmentLength()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->applyMaxFragmentLengthExtension(S)V

    return-void
.end method

.method protected receive13NewSessionTicket(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->isApplicationDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint32(Ljava/io/InputStream;)J

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint32(Ljava/io/InputStream;)J

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected receive13ServerCertificate(Ljava/io/ByteArrayInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->selectedPSK13:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/tls/TlsUtils;->receive13ServerCertificate(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;Ljava/io/ByteArrayInputStream;Ljava/util/Hashtable;)Lorg/bouncycastle/tls/TlsAuthentication;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->handleServerCertificate()V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected receive13ServerCertificateVerify(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/CertificateVerify;->parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/CertificateVerify;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/tls/TlsUtils;->verify13CertificateVerifyServer(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Lorg/bouncycastle/tls/CertificateVerify;)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected receive13ServerFinished(Ljava/io/ByteArrayInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->process13FinishedMessage(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method protected receiveCertificateRequest(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/CertificateRequest;->parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/CertificateRequest;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->validateCertificateRequest(Lorg/bouncycastle/tls/CertificateRequest;Lorg/bouncycastle/tls/TlsKeyExchange;)Lorg/bouncycastle/tls/CertificateRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected receiveNewSessionTicket(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/NewSessionTicket;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/TlsClient;->notifyNewSessionTicket(Lorg/bouncycastle/tls/NewSessionTicket;)V

    return-void
.end method

.method protected receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)Lorg/bouncycastle/tls/ServerHello;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/ServerHello;->parse(Ljava/io/ByteArrayInputStream;)Lorg/bouncycastle/tls/ServerHello;

    move-result-object p1

    return-object p1
.end method

.method protected send13ClientHelloRetry()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ClientHello;->getExtensions()Ljava/util/Hashtable;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_cookie:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_early_data:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_key_share:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_pre_shared_key:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->retryCookie:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->retryCookie:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addCookieExtension(Ljava/util/Hashtable;[B)V

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->retryCookie:[B

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-static {v3, v1, v0}, Lorg/bouncycastle/tls/TlsUtils;->addPreSharedKeyToClientHelloRetry(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;Ljava/util/Hashtable;)Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v1, v2}, Lorg/bouncycastle/tls/TlsClient;->notifySelectedPSK(Lorg/bouncycastle/tls/TlsPSK;)V

    :cond_1
    iget v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->retryGroup:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->retryGroup:I

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/tls/TlsUtils;->addKeyShareToClientHelloRetry(Lorg/bouncycastle/tls/TlsClientContext;Ljava/util/Hashtable;I)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientAgreements:Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/RecordStream;->setIgnoreChangeCipherSpec(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsClientProtocol;->sendClientHelloMessage()V

    return-void

    :cond_2
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected sendCertificateVerifyMessage(Lorg/bouncycastle/tls/DigitallySigned;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/HandshakeMessageOutput;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;-><init>(S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;)V

    return-void
.end method

.method protected sendClientHello()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isRenegotiating()Z

    move-result v2

    const/16 v3, 0x50

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getClientVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ProtocolVersion;->only()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v4

    move-object v5, v2

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsClient;->getProtocolVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v4

    sget-object v2, Lorg/bouncycastle/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-static {v4, v2}, Lorg/bouncycastle/tls/ProtocolVersion;->contains([Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    sget-object v5, Lorg/bouncycastle/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/tls/ProtocolVersion;

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    sget-object v5, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/tls/ProtocolVersion;

    :goto_0
    invoke-virtual {v2, v5}, Lorg/bouncycastle/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    invoke-static {v4}, Lorg/bouncycastle/tls/ProtocolVersion;->getEarliestTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    invoke-static {v4}, Lorg/bouncycastle/tls/ProtocolVersion;->getLatestTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/tls/ProtocolVersion;->isSupportedTLSVersionClient(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/tls/TlsClientContextImpl;->setClientVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    :goto_1
    iget-object v6, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v6, v4}, Lorg/bouncycastle/tls/TlsClientContextImpl;->setClientSupportedVersions([Lorg/bouncycastle/tls/ProtocolVersion;)V

    sget-object v6, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v6, v2}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    sget-object v6, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_2

    iget-object v9, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v9}, Lorg/bouncycastle/tls/TlsClient;->shouldUseGMTUnixTime()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    iget-object v10, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-static {v9, v10}, Lorg/bouncycastle/tls/TlsClientProtocol;->createRandomBlock(ZLorg/bouncycastle/tls/TlsContext;)[B

    move-result-object v9

    iput-object v9, v1, Lorg/bouncycastle/tls/SecurityParameters;->clientRandom:[B

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsClient;->getSessionToResume()Lorg/bouncycastle/tls/TlsSession;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v9

    :goto_3
    iget-object v10, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v10}, Lorg/bouncycastle/tls/TlsClient;->isFallback()Z

    move-result v10

    iget-object v11, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v11}, Lorg/bouncycastle/tls/TlsClient;->getCipherSuites()[I

    move-result-object v11

    iget-object v12, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v12}, Lorg/bouncycastle/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v12

    invoke-static {v12}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v12

    iput-object v12, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v12, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v12}, Lorg/bouncycastle/tls/TlsClient;->shouldUseExtendedMasterSecret()Z

    move-result v12

    invoke-virtual {v0, v2}, Lorg/bouncycastle/tls/TlsClientProtocol;->establishSession(Lorg/bouncycastle/tls/TlsSession;)Z

    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->getSessionID(Lorg/bouncycastle/tls/TlsSession;)[B

    move-result-object v2

    array-length v13, v2

    if-lez v13, :cond_4

    iget-object v13, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v13}, Lorg/bouncycastle/tls/SessionParameters;->getCipherSuite()I

    move-result v13

    invoke-static {v11, v13}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v13

    if-nez v13, :cond_4

    sget-object v2, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_4
    array-length v13, v2

    if-lez v13, :cond_5

    iget-object v9, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SessionParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v9

    invoke-static {v4, v9}, Lorg/bouncycastle/tls/ProtocolVersion;->contains([Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v13

    if-nez v13, :cond_5

    sget-object v2, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_5
    array-length v13, v2

    if-lez v13, :cond_7

    invoke-static {v9}, Lorg/bouncycastle/tls/TlsUtils;->isExtendedMasterSecretOptional(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/tls/SessionParameters;->isExtendedMasterSecret()Z

    move-result v9

    if-eqz v12, :cond_6

    if-nez v9, :cond_7

    iget-object v9, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v9}, Lorg/bouncycastle/tls/TlsClient;->allowLegacyResumption()Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_4

    :cond_6
    if-eqz v9, :cond_7

    :goto_4
    sget-object v2, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_7
    array-length v9, v2

    if-ge v9, v8, :cond_8

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsClientProtocol;->cancelSession()V

    :cond_8
    iget-object v9, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    iget-object v13, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-interface {v9, v13}, Lorg/bouncycastle/tls/TlsClient;->notifySessionToResume(Lorg/bouncycastle/tls/TlsSession;)V

    if-eqz v6, :cond_a

    sget-object v6, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    iget-object v9, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v9, v4}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addSupportedVersionsExtensionClient(Ljava/util/Hashtable;[Lorg/bouncycastle/tls/ProtocolVersion;)V

    array-length v9, v2

    if-ge v9, v8, :cond_9

    iget-object v9, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    invoke-interface {v9}, Lorg/bouncycastle/tls/TlsClient;->shouldUseCompatibilityMode()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getNonceGenerator()Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;

    move-result-object v2

    const/16 v9, 0x20

    invoke-interface {v2, v9}, Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;->generateNonce(I)[B

    move-result-object v2

    :cond_9
    move-object/from16 v16, v2

    move-object v14, v6

    goto :goto_5

    :cond_a
    move-object/from16 v16, v2

    move-object v14, v5

    :goto_5
    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v2, v14}, Lorg/bouncycastle/tls/TlsClientContextImpl;->setRSAPreMasterSecretVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getServerNameExtensionClient(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/tls/SecurityParameters;->clientServerNames:Ljava/util/Vector;

    invoke-static {v5}, Lorg/bouncycastle/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->establishClientSigAlgs(Lorg/bouncycastle/tls/SecurityParameters;Ljava/util/Hashtable;)V

    :cond_b
    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSupportedGroupsExtension(Ljava/util/Hashtable;)[I

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/tls/SecurityParameters;->clientSupportedGroups:[I

    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object v5, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    iget-object v6, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v2, v5, v6, v11}, Lorg/bouncycastle/tls/TlsUtils;->addPreSharedKeyToClientHello(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;Ljava/util/Hashtable;[I)Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    iget-object v5, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/tls/TlsClient;

    iget-object v6, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v2, v5, v6}, Lorg/bouncycastle/tls/TlsUtils;->addKeyShareToClientHello(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientAgreements:Ljava/util/Hashtable;

    if-eqz v12, :cond_c

    invoke-static {v4}, Lorg/bouncycastle/tls/TlsUtils;->isExtendedMasterSecretOptional([Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addExtendedMasterSecretExtension(Ljava/util/Hashtable;)V

    goto :goto_6

    :cond_c
    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v4, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_extended_master_secret:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isRenegotiating()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isSecureRenegotiation()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getSecurityParametersConnection()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v2

    iget-object v3, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v4, Lorg/bouncycastle/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalVerifyData()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsClientProtocol;->createRenegotiationInfo([B)[B

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_d
    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v1, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_e
    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v3, Lorg/bouncycastle/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_7

    :cond_f
    const/4 v8, 0x0

    :goto_7
    const/16 v2, 0xff

    invoke-static {v11, v2}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v3

    if-eqz v8, :cond_10

    if-nez v3, :cond_10

    invoke-static {v11, v2}, Lorg/bouncycastle/util/Arrays;->append([II)[I

    move-result-object v11

    :cond_10
    :goto_8
    if-eqz v10, :cond_11

    const/16 v2, 0x5600

    invoke-static {v11, v2}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-static {v11, v2}, Lorg/bouncycastle/util/Arrays;->append([II)[I

    move-result-object v11

    :cond_11
    move-object/from16 v18, v11

    iget-object v2, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    if-nez v2, :cond_12

    const/16 v20, 0x0

    goto :goto_9

    :cond_12
    iget v7, v2, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->bindersSize:I

    move/from16 v20, v7

    :goto_9
    new-instance v13, Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v15

    const/16 v17, 0x0

    iget-object v1, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    move-object/from16 v19, v1

    invoke-direct/range {v13 .. v20}, Lorg/bouncycastle/tls/ClientHello;-><init>(Lorg/bouncycastle/tls/ProtocolVersion;[B[B[B[ILjava/util/Hashtable;I)V

    iput-object v13, v0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsClientProtocol;->sendClientHelloMessage()V

    return-void

    :cond_13
    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v1, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v1
.end method

.method protected sendClientHelloMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/HandshakeMessageOutput;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;-><init>(S)V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/tls/ClientHello;->encode(Lorg/bouncycastle/tls/TlsContext;Ljava/io/OutputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ClientHello;->getBindersSize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->prepareClientHello(Lorg/bouncycastle/tls/TlsHandshakeHash;I)V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/TlsClientContextImpl;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    iget-object v3, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientBinders:Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/tls/OfferedPsks;->encodeBinders(Ljava/io/OutputStream;Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/TlsHandshakeHash;Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->clientHello:Lorg/bouncycastle/tls/ClientHello;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ClientHello;->getBindersSize()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->sendClientHello(Lorg/bouncycastle/tls/TlsClientProtocol;Lorg/bouncycastle/tls/TlsHandshakeHash;I)V

    return-void
.end method

.method protected sendClientKeyExchange()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/HandshakeMessageOutput;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;-><init>(S)V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/bouncycastle/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;)V

    return-void
.end method

.method protected skip13CertificateRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/tls/CertificateRequest;

    return-void
.end method

.method protected skip13ServerCertificate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->selectedPSK13:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/tls/TlsClientContextImpl;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->skip13ServerCertificate(Lorg/bouncycastle/tls/TlsClientContext;)Lorg/bouncycastle/tls/TlsAuthentication;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/tls/TlsAuthentication;

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
