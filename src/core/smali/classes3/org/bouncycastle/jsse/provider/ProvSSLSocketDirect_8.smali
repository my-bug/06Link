.class Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;
.super Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/InetAddress;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;ZZLorg/bouncycastle/jsse/provider/ProvSSLParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;ZZLorg/bouncycastle/jsse/provider/ProvSSLParameters;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getHandshakeApplicationProtocolSelector()Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getSocketAPSelector()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->exportAPSelector(Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;)Ljava/util/function/BiFunction;

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

.method public declared-synchronized setHandshakeApplicationProtocolSelector(Ljava/util/function/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->importAPSelector(Ljava/util/function/BiFunction;)Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    move-result-object p1

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
