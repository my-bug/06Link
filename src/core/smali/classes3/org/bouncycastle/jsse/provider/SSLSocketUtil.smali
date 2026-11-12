.class abstract Lorg/bouncycastle/jsse/provider/SSLSocketUtil;
.super Ljava/lang/Object;


# static fields
.field private static final getHandshakeSession:Ljava/lang/reflect/Method;

.field private static final getSSLParameters:Ljava/lang/reflect/Method;

.field private static threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final useSocket8:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "javax.net.ssl.SSLSocket"

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getMethods(Ljava/lang/String;)[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "getHandshakeSession"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->getHandshakeSession:Ljava/lang/reflect/Method;

    const-string v1, "getSSLParameters"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->getSSLParameters:Ljava/lang/reflect/Method;

    const-string v1, "getApplicationProtocol"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->hasMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->useSocket8:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Lorg/bouncycastle/jsse/provider/ContextData;)Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;
    .locals 1

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->useSocket8:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;)V

    return-object v0
.end method

.method static create(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;I)Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->useSocket8:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;I)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;I)V

    return-object v0
.end method

.method static create(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;ILjava/net/InetAddress;I)Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->useSocket8:Z

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-object v1

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    new-instance p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;

    move v7, v6

    move-object v6, v5

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-object v2
.end method

.method static create(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/InetAddress;I)Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->useSocket8:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/InetAddress;I)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method static create(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/InetAddress;ILjava/net/InetAddress;I)Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->useSocket8:Z

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-object v1

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    new-instance p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;

    move v7, v6

    move-object v6, v5

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-object v2
.end method

.method static create(Lorg/bouncycastle/jsse/provider/ContextData;ZZLorg/bouncycastle/jsse/provider/ProvSSLParameters;)Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;
    .locals 1

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->useSocket8:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect_8;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;ZZLorg/bouncycastle/jsse/provider/ProvSSLParameters;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketDirect;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;ZZLorg/bouncycastle/jsse/provider/ProvSSLParameters;)V

    return-object v0
.end method

.method static create(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/Socket;Ljava/io/InputStream;Z)Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->useSocket8:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap_8;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap_8;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/Socket;Ljava/io/InputStream;Z)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/Socket;Ljava/io/InputStream;Z)V

    return-object v0
.end method

.method static create(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/Socket;Ljava/lang/String;IZ)Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->useSocket8:Z

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap_8;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap_8;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/Socket;Ljava/lang/String;IZ)V

    return-object v1

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    new-instance p0, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;

    move v7, v6

    move v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jsse/provider/ProvSSLSocketWrap;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/net/Socket;Ljava/lang/String;IZ)V

    return-object v2
.end method

.method static handshakeCompleted(Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BCJSSE-HandshakeCompleted-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static importHandshakeSession(Ljavax/net/ssl/SSLSocket;)Lorg/bouncycastle/jsse/BCExtendedSSLSession;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/jsse/BCSSLSocket;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jsse/BCSSLSocket;

    invoke-interface {p0}, Lorg/bouncycastle/jsse/BCSSLSocket;->getBCHandshakeSession()Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->getHandshakeSession:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->invokeGetter(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLSession;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/SSLSessionUtil;->importSSLSession(Ljavax/net/ssl/SSLSession;)Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static importSSLParameters(Ljavax/net/ssl/SSLSocket;)Lorg/bouncycastle/jsse/BCSSLParameters;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/jsse/BCSSLSocket;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jsse/BCSSLSocket;

    invoke-interface {p0}, Lorg/bouncycastle/jsse/BCSSLSocket;->getParameters()Lorg/bouncycastle/jsse/BCSSLParameters;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_3

    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->getSSLParameters:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->invokeGetter(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLParameters;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->importSSLParameters(Ljavax/net/ssl/SSLParameters;)Lorg/bouncycastle/jsse/BCSSLParameters;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SSLSocket.getSSLParameters returned null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
