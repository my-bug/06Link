.class Lorg/bouncycastle/jsse/provider/ProvSSLEngine;
.super Ljavax/net/ssl/SSLEngine;

# interfaces
.implements Lorg/bouncycastle/jsse/BCSSLEngine;
.implements Lorg/bouncycastle/jsse/provider/ProvTlsManager;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected closedEarly:Z

.field protected connection:Lorg/bouncycastle/jsse/provider/ProvSSLConnection;

.field protected final contextData:Lorg/bouncycastle/jsse/provider/ContextData;

.field protected deferredException:Ljavax/net/ssl/SSLException;

.field protected enableSessionCreation:Z

.field protected handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

.field protected initialHandshakeBegun:Z

.field protected protocol:Lorg/bouncycastle/tls/TlsProtocol;

.field protected protocolPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

.field protected returnedFinished:Z

.field protected final sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

.field protected useClientMode:Z

.field protected useClientModeSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->enableSessionCreation:Z

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->useClientMode:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->useClientModeSet:Z

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->closedEarly:Z

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->initialHandshakeBegun:Z

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->returnedFinished:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocolPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->connection:Lorg/bouncycastle/jsse/provider/ProvSSLConnection;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->deferredException:Ljavax/net/ssl/SSLException;

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object p1

    iget-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->useClientMode:Z

    invoke-virtual {p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getDefaultSSLParameters(Z)Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    return-void
.end method

.method private getRecordPreview(Ljava/nio/ByteBuffer;)Lorg/bouncycastle/tls/RecordPreview;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-array v0, v1, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/TlsProtocol;->previewInputRecord([B)Lorg/bouncycastle/tls/RecordPreview;

    move-result-object p1

    return-object p1
.end method

.method private getStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0
.end method

.method private getTotalRemaining([Ljava/nio/ByteBuffer;III)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v2, p2, v0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int v3, p4, v1

    if-lt v2, v3, :cond_0

    return p4

    :cond_0
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private hasInsufficientSpace([Ljava/nio/ByteBuffer;III)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->getTotalRemaining([Ljava/nio/ByteBuffer;III)I

    move-result p1

    if-ge p1, p4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public declared-synchronized beginHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->useClientModeSet:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->closedEarly:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->initialHandshakeBegun:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->initialHandshakeBegun:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->useClientMode:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tls/TlsClientProtocol;

    invoke-direct {v0}, Lorg/bouncycastle/tls/TlsClientProtocol;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    new-instance v1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-direct {v1, p0, v2}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;-><init>(Lorg/bouncycastle/jsse/provider/ProvTlsManager;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;)V

    iput-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocolPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/TlsClientProtocol;->connect(Lorg/bouncycastle/tls/TlsClient;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsServerProtocol;

    invoke-direct {v0}, Lorg/bouncycastle/tls/TlsServerProtocol;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    new-instance v1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-direct {v1, p0, v2}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;-><init>(Lorg/bouncycastle/jsse/provider/ProvTlsManager;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;)V

    iput-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocolPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/TlsServerProtocol;->accept(Lorg/bouncycastle/tls/TlsServer;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Renegotiation not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Connection is already closed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client/Server mode must be set before the handshake can begin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getX509TrustManager()Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    move-result-object v0

    invoke-virtual {p1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, p2, p0}, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2e

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getX509TrustManager()Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    move-result-object v0

    invoke-virtual {p1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, p2, p0}, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2e

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2
.end method

.method public chooseClientKey([Ljava/lang/String;[Ljava/security/Principal;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getX509KeyManager()Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

    move-result-object v0

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/security/Principal;

    invoke-virtual {v0, p1, p2, p0}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;->chooseEngineClientKeyBC([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    return-object p1
.end method

.method public chooseServerKey([Ljava/lang/String;[Ljava/security/Principal;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getX509KeyManager()Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

    move-result-object v0

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/security/Principal;

    invoke-virtual {v0, p1, p2, p0}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;->chooseEngineServerKeyBC([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized closeInbound()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->closedEarly:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->closedEarly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->closeInput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized closeOutbound()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->closedEarly:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->closedEarly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Failed to close outbound"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized getApplicationProtocol()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->connection:Lorg/bouncycastle/jsse/provider/ProvSSLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getBCHandshakeApplicationProtocolSelector()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/jsse/BCApplicationProtocolSelector<",
            "Ljavax/net/ssl/SSLEngine;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getEngineAPSelector()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getBCHandshakeSession()Lorg/bouncycastle/jsse/BCExtendedSSLSession;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBCSession()Lorg/bouncycastle/jsse/BCExtendedSSLSession;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->getSessionImpl()Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getConnection()Lorg/bouncycastle/jsse/BCSSLConnection;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->connection:Lorg/bouncycastle/jsse/provider/ProvSSLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getContextData()Lorg/bouncycastle/jsse/provider/ContextData;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    return-object v0
.end method

.method public declared-synchronized getDelegatedTask()Ljava/lang/Runnable;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getEnableSessionCreation()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->enableSessionCreation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getHandshakeApplicationProtocol()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;->getExportSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->getAvailableOutputBytes()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->deferredException:Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->isHandshaking()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized getNeedClientAuth()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getNeedClientAuth()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getParameters()Lorg/bouncycastle/jsse/BCSSLParameters;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getParameters(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;)Lorg/bouncycastle/jsse/BCSSLParameters;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerHostSNI()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getSSLParameters(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;)Ljavax/net/ssl/SSLParameters;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->getSessionImpl()Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getExportSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method getSessionImpl()Lorg/bouncycastle/jsse/provider/ProvSSLSession;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->connection:Lorg/bouncycastle/jsse/provider/ProvSSLConnection;

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->NULL_SESSION:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->getSession()Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getTransportID()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getUseClientMode()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->useClientMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getWantClientAuth()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getWantClientAuth()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isInboundDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->closedEarly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isOutboundDone()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->closedEarly:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->getAvailableOutputBytes()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized notifyHandshakeComplete(Lorg/bouncycastle/jsse/provider/ProvSSLConnection;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->getSession()Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->invalidate()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;->getJsseSecurityParameters()Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->connection:Lorg/bouncycastle/jsse/provider/ProvSSLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized notifyHandshakeSession(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;Lorg/bouncycastle/jsse/provider/ProvSSLSession;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->getPeerPort()I

    move-result v3

    if-eqz p4, :cond_0

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionResumed;

    invoke-virtual {p4}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getTlsSession()Lorg/bouncycastle/tls/TlsSession;

    move-result-object v6

    invoke-virtual {p4}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getJsseSessionParameters()Lorg/bouncycastle/jsse/provider/JsseSessionParameters;

    move-result-object v7

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionResumed;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;Ljava/lang/String;ILorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;Lorg/bouncycastle/tls/TlsSession;Lorg/bouncycastle/jsse/provider/JsseSessionParameters;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

    goto :goto_1

    :cond_0
    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;Ljava/lang/String;ILorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized selectApplicationProtocol(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getEngineAPSelector()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;->select(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setBCHandshakeApplicationProtocolSelector(Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/jsse/BCApplicationProtocolSelector<",
            "Ljavax/net/ssl/SSLEngine;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setEngineAPSelector(Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setBCSessionToResume(Lorg/bouncycastle/jsse/BCExtendedSSLSession;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    instance-of v0, p1, Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->initialHandshakeBegun:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    check-cast p1, Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setSessionToResume(Lorg/bouncycastle/jsse/provider/ProvSSLSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session-to-resume cannot be set after the handshake has begun"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session-to-resume must be a session returned from \'getBCSession\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'session\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setEnableSessionCreation(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->enableSessionCreation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setCipherSuites([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setProtocols([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setNeedClientAuth(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setNeedClientAuth(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setParameters(Lorg/bouncycastle/jsse/BCSSLParameters;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-static {v0, p1}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setParameters(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Lorg/bouncycastle/jsse/BCSSLParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-static {v0, p1}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setSSLParameters(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Ljavax/net/ssl/SSLParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setUseClientMode(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->initialHandshakeBegun:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->useClientMode:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->updateDefaultSSLParameters(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Z)V

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->useClientMode:Z

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->useClientModeSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Client/Server mode cannot be changed after the handshake has begun"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setWantClientAuth(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setWantClientAuth(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->isInboundDone()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p1, p2, v0, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->initialHandshakeBegun:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->beginHandshake()V

    :cond_1
    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvSSLEngine$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p1, p2, v0, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->getRecordPreview(Ljava/nio/ByteBuffer;)Lorg/bouncycastle/tls/RecordPreview;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1}, Lorg/bouncycastle/tls/RecordPreview;->getRecordSize()I

    move-result v5

    if-ge v4, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lorg/bouncycastle/tls/RecordPreview;->getContentLimit()I

    move-result v4

    invoke-direct {p0, p2, p3, p4, v4}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->hasInsufficientSpace([Ljava/nio/ByteBuffer;III)Z

    move-result p4

    if-eqz p4, :cond_4

    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p1, p2, v0, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_3
    invoke-virtual {v1}, Lorg/bouncycastle/tls/RecordPreview;->getRecordSize()I

    move-result p4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-array v1, p4, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {p1, v1, v2, p4}, Lorg/bouncycastle/tls/TlsProtocol;->offerInput([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsProtocol;->getAvailableInputBytes()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-lez p1, :cond_6

    add-int v1, p3, v2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-lez v4, :cond_5

    iget-object v5, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v5, v1, v4}, Lorg/bouncycastle/tls/TlsProtocol;->readInput(Ljava/nio/ByteBuffer;I)I

    add-int/2addr v0, v4

    sub-int/2addr p1, v4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, p2, :cond_7

    iget-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->returnedFinished:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocolPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

    invoke-interface {p2}, Lorg/bouncycastle/jsse/provider/ProvTlsPeer;->isHandshakeComplete()Z

    move-result p2

    if-eqz p2, :cond_7

    iput-boolean v3, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->returnedFinished:Z

    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :cond_7
    new-instance p2, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p3

    invoke-direct {p2, p3, p1, p4, v0}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_8
    :goto_1
    :try_start_6
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p1, p2, v0, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_1
    move-exception p1

    const/4 p4, 0x0

    :goto_2
    :try_start_7
    sget-object p2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, p2, :cond_9

    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->deferredException:Ljavax/net/ssl/SSLException;

    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object p3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p1, p2, p3, p4, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_9
    :try_start_8
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->deferredException:Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->closedEarly:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object p3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p1, p2, p3, v1, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->initialHandshakeBegun:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->beginHandshake()V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->getAvailableOutputBytes()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-lt p1, v0, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/TlsProtocol;->previewOutputRecord()I

    move-result p2

    if-ge p1, p2, :cond_3

    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object p3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p1, p2, p3, v1, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :goto_0
    :try_start_2
    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {p1, p4, p2}, Lorg/bouncycastle/tls/TlsProtocol;->readOutput(Ljava/nio/ByteBuffer;I)I

    if-ge p2, v0, :cond_a

    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object p4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p1, p3, p4, v1, p2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->isConnected()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->getApplicationDataLimit()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->getTotalRemaining([Ljava/nio/ByteBuffer;III)I

    move-result v0

    if-lez v0, :cond_8

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/tls/TlsProtocol;->previewOutputRecord(I)Lorg/bouncycastle/tls/RecordPreview;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/RecordPreview;->getContentLimit()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/tls/RecordPreview;->getRecordSize()I

    move-result v0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v0, :cond_5

    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object p3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p1, p2, p3, v1, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    :try_start_5
    new-array v0, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, p3, :cond_7

    if-ge v4, v2, :cond_7

    add-int v5, p2, v3

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    sub-int v7, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v5, v0, v4, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v4, v6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {p1, v0, v1, v4}, Lorg/bouncycastle/tls/TlsProtocol;->writeApplicationData([BII)V

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsProtocol;->getAvailableOutputBytes()I

    move-result v1

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {p1, p4, v1}, Lorg/bouncycastle/tls/TlsProtocol;->readOutput(Ljava/nio/ByteBuffer;I)I

    move p1, v1

    move v1, v4

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    :goto_2
    new-instance p2, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p3

    sget-object p4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p2, p3, p4, v1, p1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p2

    :catch_0
    move-exception p1

    :try_start_6
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_9
    const/4 p2, 0x0

    :cond_a
    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsProtocol;->isHandshaking()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object p4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p1, p3, p4, v1, p2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_b
    :try_start_7
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    iget-boolean p3, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->returnedFinished:Z

    if-nez p3, :cond_c

    iget-object p3, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->protocolPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

    invoke-interface {p3}, Lorg/bouncycastle/jsse/provider/ProvTlsPeer;->isHandshakeComplete()Z

    move-result p3

    if-eqz p3, :cond_c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->returnedFinished:Z

    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :cond_c
    new-instance p3, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p4

    invoke-direct {p3, p4, p1, v1, p2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p3

    :cond_d
    const/4 p1, 0x0

    :try_start_8
    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;->deferredException:Ljavax/net/ssl/SSLException;

    throw v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
