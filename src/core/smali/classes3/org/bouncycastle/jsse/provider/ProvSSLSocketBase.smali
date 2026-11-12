.class abstract Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;
.super Ljavax/net/ssl/SSLSocket;

# interfaces
.implements Lorg/bouncycastle/jsse/BCSSLSocket;


# static fields
.field protected static final provAssumeOriginalHostName:Z

.field protected static final provJdkTlsTrustNameService:Z


# instance fields
.field protected final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            "Ljava/security/AccessControlContext;",
            ">;"
        }
    .end annotation
.end field

.field protected final socketCloser:Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.bouncycastle.jsse.client.assumeOriginalHostName"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->provAssumeOriginalHostName:Z

    const-string v0, "jdk.tls.trustNameService"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->provJdkTlsTrustNameService:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$1;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;)V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->socketCloser:Ljava/io/Closeable;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->listeners:Ljava/util/Map;

    return-void
.end method

.method private getHandshakeCompletedEntries()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            "Ljava/security/AccessControlContext;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->listeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->listeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->listeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->listeners:Ljava/util/Map;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'listener\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected closeSocket()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    return-void
.end method

.method public connect(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->setHost(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->createInetSocketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method protected createInetSocketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/net/InetSocketAddress;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected createInetSocketAddress(Ljava/net/InetAddress;I)Ljava/net/InetSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public final getOOBInline()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "This method is ineffective, since sending urgent data is not supported by SSLSockets"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected implBind(Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->createInetSocketAddress(Ljava/net/InetAddress;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->bind(Ljava/net/SocketAddress;)V

    return-void
.end method

.method protected implConnect(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->createInetSocketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method protected implConnect(Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->createInetSocketAddress(Ljava/net/InetAddress;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method protected notifyHandshakeCompletedListeners(Ljavax/net/ssl/SSLSession;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->getHandshakeCompletedEntries()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    new-instance p1, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$2;

    invoke-direct {p1, p0, v0, v1}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase$2;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;Ljava/util/Collection;Ljavax/net/ssl/HandshakeCompletedEvent;)V

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->handshakeCompleted(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketBase;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'listener\' is not registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'listener\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sendUrgentData(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/net/SocketException;

    const-string v0, "This method is not supported by SSLSockets"

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setOOBInline(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance p1, Ljava/net/SocketException;

    const-string v0, "This method is ineffective, since sending urgent data is not supported by SSLSockets"

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
