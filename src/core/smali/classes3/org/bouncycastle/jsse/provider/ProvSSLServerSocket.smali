.class Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;
.super Ljavax/net/ssl/SSLServerSocket;


# instance fields
.field protected final contextData:Lorg/bouncycastle/jsse/provider/ContextData;

.field protected enableSessionCreation:Z

.field protected final sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

.field protected useClientMode:Z


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocket;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->enableSessionCreation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->useClientMode:Z

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object p1

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->useClientMode:Z

    invoke-virtual {p1, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getDefaultSSLParameters(Z)Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Ljavax/net/ssl/SSLServerSocket;-><init>(I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->enableSessionCreation:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->useClientMode:Z

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object p1

    iget-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->useClientMode:Z

    invoke-virtual {p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getDefaultSSLParameters(Z)Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljavax/net/ssl/SSLServerSocket;-><init>(II)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->enableSessionCreation:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->useClientMode:Z

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object p1

    iget-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->useClientMode:Z

    invoke-virtual {p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getDefaultSSLParameters(Z)Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;IILjava/net/InetAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Ljavax/net/ssl/SSLServerSocket;-><init>(IILjava/net/InetAddress;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->enableSessionCreation:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->useClientMode:Z

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object p1

    iget-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->useClientMode:Z

    invoke-virtual {p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getDefaultSSLParameters(Z)Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    return-void
.end method


# virtual methods
.method public declared-synchronized accept()Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    iget-boolean v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->enableSessionCreation:Z

    iget-boolean v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->useClientMode:Z

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->copy()Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->create(Lorg/bouncycastle/jsse/provider/ContextData;ZZLorg/bouncycastle/jsse/provider/ProvSSLParameters;)Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->implAccept(Ljava/net/Socket;)V

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;->notifyConnected()V
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

.method public declared-synchronized getEnableSessionCreation()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->enableSessionCreation:Z
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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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

.method public declared-synchronized getNeedClientAuth()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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

.method public declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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

.method public declared-synchronized getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

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

.method public declared-synchronized getUseClientMode()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->useClientMode:Z
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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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

.method public declared-synchronized setEnableSessionCreation(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->enableSessionCreation:Z
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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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

.method public declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->useClientMode:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->updateDefaultSSLParameters(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Z)V

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->useClientMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
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

.method public declared-synchronized setWantClientAuth(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

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
