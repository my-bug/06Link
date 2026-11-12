.class Lorg/bouncycastle/jsse/provider/ProvSSLConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jsse/BCSSLConnection;


# static fields
.field private static final CONNECTION_IDS:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected final tlsPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->CONNECTION_IDS:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jsse/provider/ProvTlsPeer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->tlsPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

    return-void
.end method

.method static allocateConnectionID()J
    .locals 2

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->CONNECTION_IDS:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->getTlsContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/tls/TlsContext;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public getApplicationProtocol()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->getTlsContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersConnection()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getApplicationProtocol(Lorg/bouncycastle/tls/SecurityParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelBinding(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "tls-exporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->getTlsContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object p1

    const/4 v0, 0x3

    :goto_0
    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/TlsContext;->exportChannelBinding(I)[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "tls-server-end-point"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->getTlsContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "tls-unique"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->getTlsContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->tlsPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsPeer;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSession()Lorg/bouncycastle/jsse/BCExtendedSSLSession;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->getSession()Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lorg/bouncycastle/jsse/provider/ProvSSLSession;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->tlsPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsPeer;->getSession()Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object v0

    return-object v0
.end method

.method protected getTlsContext()Lorg/bouncycastle/tls/TlsContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;->tlsPeer:Lorg/bouncycastle/jsse/provider/ProvTlsPeer;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsPeer;->getTlsContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    return-object v0
.end method
