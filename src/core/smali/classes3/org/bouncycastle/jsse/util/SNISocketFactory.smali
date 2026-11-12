.class public Lorg/bouncycastle/jsse/util/SNISocketFactory;
.super Lorg/bouncycastle/jsse/util/CustomSSLSocketFactory;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field protected static final threadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/bouncycastle/jsse/util/SNISocketFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jsse/util/SNISocketFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/util/SNISocketFactory;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/bouncycastle/jsse/util/SNISocketFactory;->threadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/util/CustomSSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    iput-object p2, p0, Lorg/bouncycastle/jsse/util/SNISocketFactory;->url:Ljava/net/URL;

    return-void
.end method

.method public static getDefault()Ljavax/net/SocketFactory;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jsse/util/SNISocketFactory;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/bouncycastle/jsse/util/SNISocketFactory;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-object p1

    :catchall_0
    move-exception p1

    sget-object v0, Lorg/bouncycastle/jsse/util/SNISocketFactory;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    throw p1
.end method

.method protected configureSocket(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 5

    instance-of v0, p1, Lorg/bouncycastle/jsse/BCSSLSocket;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jsse/BCSSLSocket;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/util/SNISocketFactory;->getBCSNIHostName()Lorg/bouncycastle/jsse/BCSNIHostName;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lorg/bouncycastle/jsse/util/SNISocketFactory;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting SNI on socket: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/jsse/BCSSLParameters;

    invoke-direct {v2}, Lorg/bouncycastle/jsse/BCSSLParameters;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setServerNames(Ljava/util/List;)V

    invoke-interface {v0, v2}, Lorg/bouncycastle/jsse/BCSSLSocket;->setParameters(Lorg/bouncycastle/jsse/BCSSLParameters;)V

    :cond_0
    return-object p1
.end method

.method protected getBCSNIHostName()Lorg/bouncycastle/jsse/BCSNIHostName;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/util/SNISocketFactory;->url:Ljava/net/URL;

    invoke-static {v0}, Lorg/bouncycastle/jsse/util/SNIUtil;->getBCSNIHostName(Ljava/net/URL;)Lorg/bouncycastle/jsse/BCSNIHostName;

    move-result-object v0

    return-object v0
.end method
