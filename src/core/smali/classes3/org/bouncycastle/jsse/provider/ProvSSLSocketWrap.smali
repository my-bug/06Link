.class Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;
.super Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;

# interfaces
.implements Lorg/bouncycastle/jsse/provider/ProvTlsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;,
        Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataOutput;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected final appDataIn:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;

.field protected final appDataOut:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataOutput;

.field protected final autoClose:Z

.field protected connection:Lorg/bouncycastle/jsse/provider/ProvSSLConnection;

.field protected final consumed:Ljava/io/InputStream;

.field protected final contextData:Lorg/bouncycastle/jsse/provider/ContextData;

.field protected enableSessionCreation:Z

.field protected handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

.field protected peerHost:Ljava/lang/String;

.field protected peerHostSNI:Ljava/lang/String;

.field protected protocol:Lorg/bouncycastle/tls/TlsProtocol;

.field protected protocolPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

.field protected final sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

.field protected useClientMode:Z

.field protected final wrapSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/Socket;Ljava/io/InputStream;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;-><init>()V

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;)V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->appDataIn:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataOutput;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataOutput;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;)V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->appDataOut:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataOutput;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHost:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHostSNI:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->enableSessionCreation:Z

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocolPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->connection:Lorg/bouncycastle/jsse/provider/ProvSSLConnection;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->checkSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->consumed:Ljava/io/InputStream;

    iput-boolean p4, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->autoClose:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->useClientMode:Z

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object p1

    iget-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->useClientMode:Z

    invoke-virtual {p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getDefaultSSLParameters(Z)Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->notifyConnected()V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/Socket;Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;-><init>()V

    new-instance p4, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;

    invoke-direct {p4, p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;)V

    iput-object p4, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->appDataIn:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;

    new-instance p4, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataOutput;

    invoke-direct {p4, p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataOutput;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;)V

    iput-object p4, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->appDataOut:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataOutput;

    const/4 p4, 0x0

    iput-object p4, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHost:Ljava/lang/String;

    iput-object p4, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHostSNI:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->enableSessionCreation:Z

    iput-object p4, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    iput-object p4, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocolPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

    iput-object p4, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->connection:Lorg/bouncycastle/jsse/provider/ProvSSLConnection;

    iput-object p4, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->checkSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    iput-object p4, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->consumed:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHost:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->autoClose:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->useClientMode:Z

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object p1

    iget-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->useClientMode:Z

    invoke-virtual {p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getDefaultSSLParameters(Z)Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->notifyConnected()V

    return-void
.end method

.method private static checkSocket(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/net/SocketException;

    const-string v0, "\'s\' is not a connected socket"

    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'s\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/net/SocketException;

    const-string v0, "Wrapped socket should already be bound"

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getX509TrustManager()Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    move-result-object v0

    invoke-virtual {p1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, p2, p0}, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getX509TrustManager()Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    move-result-object v0

    invoke-virtual {p1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, p2, p0}, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
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

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getX509KeyManager()Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

    move-result-object v0

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/security/Principal;

    invoke-virtual {v0, p1, p2, p0}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;->chooseClientKeyBC([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    return-object p1
.end method

.method public chooseServerKey([Ljava/lang/String;[Ljava/security/Principal;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getX509KeyManager()Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

    move-result-object v0

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/security/Principal;

    invoke-virtual {v0, p1, p2, p0}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;->chooseServerKeyBC([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->closeSocket()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected closeSocket()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->autoClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Wrapped socket should already be connected"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized getApplicationProtocol()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->connection:Lorg/bouncycastle/jsse/provider/ProvSSLConnection;

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
            "Ljavax/net/ssl/SSLSocket;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getSocketAPSelector()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;
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

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->getSessionImpl()Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getConnection()Lorg/bouncycastle/jsse/BCSSLConnection;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->handshakeIfNecessary(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Failed to establish connection"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->connection:Lorg/bouncycastle/jsse/provider/ProvSSLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getContextData()Lorg/bouncycastle/jsse/provider/ContextData;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    return-object v0
.end method

.method public declared-synchronized getEnableSessionCreation()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->enableSessionCreation:Z
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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

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

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->appDataIn:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataInput;

    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getNeedClientAuth()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->appDataOut:Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap$AppDataOutput;

    return-object v0
.end method

.method public declared-synchronized getParameters()Lorg/bouncycastle/jsse/BCSSLParameters;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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

.method public declared-synchronized getPeerHost()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHost:Ljava/lang/String;
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

.method public declared-synchronized getPeerHostSNI()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHostSNI:Ljava/lang/String;
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

.method public getPeerPort()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->getPort()I

    move-result v0

    return v0
.end method

.method public getPort()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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

.method public getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->getSessionImpl()Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getExportSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getSessionImpl()Lorg/bouncycastle/jsse/provider/ProvSSLSession;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->getConnection()Lorg/bouncycastle/jsse/BCSSLConnection;

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->connection:Lorg/bouncycastle/jsse/provider/ProvSSLConnection;

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->NULL_SESSION:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->getSession()Lorg/bouncycastle/jsse/provider/ProvSSLSession;

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

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

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

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0

    return v0
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
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->useClientMode:Z
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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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

.method declared-synchronized handshakeIfNecessary(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->isHandshaking()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->startHandshake(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
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

.method public isBound()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method declared-synchronized notifyConnected()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHost:Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->isNameSpecified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHost:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHostSNI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHostSNI:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-boolean v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->useClientMode:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->provAssumeOriginalHostName:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHost:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHostSNI:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-boolean v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->useClientMode:Z

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHost:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-boolean v2, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->provJdkTlsTrustNameService:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iput-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHost:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHostSNI:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized notifyHandshakeComplete(Lorg/bouncycastle/jsse/provider/ProvSSLConnection;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->getSession()Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->invalidate()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;->getJsseSecurityParameters()Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->connection:Lorg/bouncycastle/jsse/provider/ProvSSLConnection;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->getSession()Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object p1

    iget-object p1, p1, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->exportSSLSession:Ljavax/net/ssl/SSLSession;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->notifyHandshakeCompletedListeners(Ljavax/net/ssl/SSLSession;)V
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
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->getPeerPort()I

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
    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->handshakeSession:Lorg/bouncycastle/jsse/provider/ProvSSLSessionHandshake;

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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getSocketAPSelector()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

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
            "Ljavax/net/ssl/SSLSocket;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setSocketAPSelector(Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;)V
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

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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
    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->enableSessionCreation:Z
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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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

.method public declared-synchronized setHost(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->peerHost:Ljava/lang/String;
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

.method public setKeepAlive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    return-void
.end method

.method public declared-synchronized setNeedClientAuth(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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

.method public setPerformancePreferences(III)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    return-void
.end method

.method public declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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

.method public setSendBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    return-void
.end method

.method public declared-synchronized setUseClientMode(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->useClientMode:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->updateDefaultSSLParameters(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Z)V

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->useClientMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mode cannot be changed after the initial handshake has begun"

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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    return-void
.end method

.method public declared-synchronized startHandshake()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->startHandshake(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected startHandshake(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->consumed:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/SequenceInputStream;

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->consumed:Ljava/io/InputStream;

    invoke-direct {v1, v2, v0}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    move-object v0, v1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-boolean v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->useClientMode:Z

    if-eqz v2, :cond_1

    new-instance v2, Lorg/bouncycastle/jsse/provider/ProvTlsClientProtocol;

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->socketCloser:Ljava/io/Closeable;

    invoke-direct {v2, v0, v1, v3}, Lorg/bouncycastle/jsse/provider/ProvTlsClientProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/Closeable;)V

    invoke-virtual {v2, p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->setResumableHandshake(Z)V

    iput-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    new-instance p1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-direct {p1, p0, v0}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;-><init>(Lorg/bouncycastle/jsse/provider/ProvTlsManager;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocolPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/tls/TlsClientProtocol;->connect(Lorg/bouncycastle/tls/TlsClient;)V

    return-void

    :cond_1
    new-instance v2, Lorg/bouncycastle/jsse/provider/ProvTlsServerProtocol;

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->socketCloser:Ljava/io/Closeable;

    invoke-direct {v2, v0, v1, v3}, Lorg/bouncycastle/jsse/provider/ProvTlsServerProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/Closeable;)V

    invoke-virtual {v2, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->setResumableHandshake(Z)V

    iput-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    new-instance p1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-direct {p1, p0, v0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;-><init>(Lorg/bouncycastle/jsse/provider/ProvTlsManager;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocolPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/tls/TlsServerProtocol;->accept(Lorg/bouncycastle/tls/TlsServer;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->isHandshaking()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->setResumableHandshake(Z)V

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->protocol:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsProtocol;->resumeHandshake()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Renegotiation not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;->wrapSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
