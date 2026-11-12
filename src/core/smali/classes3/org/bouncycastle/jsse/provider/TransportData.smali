.class Lorg/bouncycastle/jsse/provider/TransportData;
.super Ljava/lang/Object;


# instance fields
.field private final handshakeSession:Lorg/bouncycastle/jsse/BCExtendedSSLSession;

.field private final parameters:Lorg/bouncycastle/jsse/BCSSLParameters;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/jsse/BCSSLParameters;Lorg/bouncycastle/jsse/BCExtendedSSLSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/TransportData;->parameters:Lorg/bouncycastle/jsse/BCSSLParameters;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/TransportData;->handshakeSession:Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    return-void
.end method

.method static from(Ljava/net/Socket;)Lorg/bouncycastle/jsse/provider/TransportData;
    .locals 2

    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljavax/net/ssl/SSLSocket;

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->importSSLParameters(Ljavax/net/ssl/SSLSocket;)Lorg/bouncycastle/jsse/BCSSLParameters;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/SSLSocketUtil;->importHandshakeSession(Ljavax/net/ssl/SSLSocket;)Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/jsse/provider/TransportData;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/jsse/provider/TransportData;-><init>(Lorg/bouncycastle/jsse/BCSSLParameters;Lorg/bouncycastle/jsse/BCExtendedSSLSession;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method static from(Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/provider/TransportData;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/SSLEngineUtil;->importSSLParameters(Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/BCSSLParameters;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/SSLEngineUtil;->importHandshakeSession(Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/jsse/provider/TransportData;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/jsse/provider/TransportData;-><init>(Lorg/bouncycastle/jsse/BCSSLParameters;Lorg/bouncycastle/jsse/BCExtendedSSLSession;)V

    return-object v0
.end method

.method static getAlgorithmConstraints(Lorg/bouncycastle/jsse/provider/TransportData;Z)Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->DEFAULT:Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/TransportData;->getAlgorithmConstraints(Z)Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    move-result-object p0

    return-object p0
.end method

.method static getStatusResponses(Lorg/bouncycastle/jsse/provider/TransportData;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/jsse/provider/TransportData;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/TransportData;->getStatusResponses()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getAlgorithmConstraints(Z)Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/TransportData;->parameters:Lorg/bouncycastle/jsse/BCSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/BCSSLParameters;->getAlgorithmConstraints()Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->DEFAULT:Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/TransportData;->handshakeSession:Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/BCExtendedSSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->isTLSv12(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/TransportData;->handshakeSession:Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCExtendedSSLSession;->getPeerSupportedSignatureAlgorithmsBC()[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/TransportData;->handshakeSession:Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCExtendedSSLSession;->getLocalSupportedSignatureAlgorithmsBC()[Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    new-instance v1, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

    invoke-direct {v1, v0, p1, v2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;-><init>(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;[Ljava/lang/String;Z)V

    return-object v1

    :cond_2
    if-nez v0, :cond_3

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->DEFAULT:Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

    invoke-direct {p1, v0, v2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;-><init>(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Z)V

    return-object p1
.end method

.method getHandshakeSession()Lorg/bouncycastle/jsse/BCExtendedSSLSession;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/TransportData;->handshakeSession:Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    return-object v0
.end method

.method getParameters()Lorg/bouncycastle/jsse/BCSSLParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/TransportData;->parameters:Lorg/bouncycastle/jsse/BCSSLParameters;

    return-object v0
.end method

.method getStatusResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/TransportData;->handshakeSession:Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/jsse/BCExtendedSSLSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
