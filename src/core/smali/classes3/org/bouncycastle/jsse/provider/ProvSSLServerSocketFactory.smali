.class Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;
.super Ljavax/net/ssl/SSLServerSocketFactory;


# instance fields
.field protected final contextData:Lorg/bouncycastle/jsse/provider/ContextData;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    return-void
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;)V

    return-object v0
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;I)V

    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-direct {v0, v1, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;II)V

    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocket;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;IILjava/net/InetAddress;)V

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getDefaultCipherSuites(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
