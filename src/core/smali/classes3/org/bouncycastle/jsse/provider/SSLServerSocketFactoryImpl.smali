.class public Lorg/bouncycastle/jsse/provider/SSLServerSocketFactoryImpl;
.super Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lorg/bouncycastle/jsse/provider/DefaultSSLContextSpi;->getDefaultInstance()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createServerSocket()Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createServerSocket(I)Ljava/net/ServerSocket;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createServerSocket(II)Ljava/net/ServerSocket;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;->createServerSocket(II)Ljava/net/ServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLServerSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
