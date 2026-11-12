.class Lorg/bouncycastle/jsse/provider/ProvSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field protected final contextData:Lorg/bouncycastle/jsse/provider/ContextData;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->create(Lorg/bouncycastle/jsse/provider/ContextData;)Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->create(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;I)Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->create(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;ILjava/net/InetAddress;I)Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->create(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/InetAddress;I)Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->create(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/InetAddress;ILjava/net/InetAddress;I)Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/io/InputStream;Z)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->create(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/Socket;Ljava/io/InputStream;Z)Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->create(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/Socket;Ljava/lang/String;IZ)Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getDefaultCipherSuites(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketFactory;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
