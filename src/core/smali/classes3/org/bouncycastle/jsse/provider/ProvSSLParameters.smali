.class final Lorg/bouncycastle/jsse/provider/ProvSSLParameters;
.super Ljava/lang/Object;


# instance fields
.field private algorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

.field private applicationProtocols:[Ljava/lang/String;

.field private cipherSuites:[Ljava/lang/String;

.field private final context:Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

.field private enableRetransmissions:Z

.field private endpointIdentificationAlgorithm:Ljava/lang/String;

.field private engineAPSelector:Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bouncycastle/jsse/BCApplicationProtocolSelector<",
            "Ljavax/net/ssl/SSLEngine;",
            ">;"
        }
    .end annotation
.end field

.field private maximumPacketSize:I

.field private namedGroups:[Ljava/lang/String;

.field private needClientAuth:Z

.field private protocols:[Ljava/lang/String;

.field private sessionToResume:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

.field private signatureSchemes:[Ljava/lang/String;

.field private signatureSchemesCert:[Ljava/lang/String;

.field private sniMatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/BCSNIMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private sniServerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/BCSNIServerName;",
            ">;"
        }
    .end annotation
.end field

.field private socketAPSelector:Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bouncycastle/jsse/BCApplicationProtocolSelector<",
            "Ljavax/net/ssl/SSLSocket;",
            ">;"
        }
    .end annotation
.end field

.field private useCipherSuitesOrder:Z

.field private wantClientAuth:Z


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->wantClientAuth:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->needClientAuth:Z

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->DEFAULT:Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

    iput-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->algorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->useCipherSuitesOrder:Z

    iput-boolean v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->enableRetransmissions:Z

    iput v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->maximumPacketSize:I

    sget-object v0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_STRINGS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->applicationProtocols:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->signatureSchemes:[Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->signatureSchemesCert:[Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->namedGroups:[Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->context:Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->cipherSuites:[Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->protocols:[Ljava/lang/String;

    return-void
.end method

.method private static copyList(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method copy()Lorg/bouncycastle/jsse/provider/ProvSSLParameters;
    .locals 4

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->context:Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->cipherSuites:[Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->protocols:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->wantClientAuth:Z

    iput-boolean v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->wantClientAuth:Z

    iget-boolean v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->needClientAuth:Z

    iput-boolean v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->needClientAuth:Z

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->endpointIdentificationAlgorithm:Ljava/lang/String;

    iput-object v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->endpointIdentificationAlgorithm:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->algorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    iput-object v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->algorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->sniServerNames:Ljava/util/List;

    iput-object v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->sniServerNames:Ljava/util/List;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->sniMatchers:Ljava/util/List;

    iput-object v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->sniMatchers:Ljava/util/List;

    iget-boolean v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->useCipherSuitesOrder:Z

    iput-boolean v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->useCipherSuitesOrder:Z

    iget-boolean v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->enableRetransmissions:Z

    iput-boolean v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->enableRetransmissions:Z

    iget v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->maximumPacketSize:I

    iput v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->maximumPacketSize:I

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->applicationProtocols:[Ljava/lang/String;

    iput-object v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->applicationProtocols:[Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->signatureSchemes:[Ljava/lang/String;

    iput-object v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->signatureSchemes:[Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->signatureSchemesCert:[Ljava/lang/String;

    iput-object v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->signatureSchemesCert:[Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->namedGroups:[Ljava/lang/String;

    iput-object v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->namedGroups:[Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->engineAPSelector:Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    iput-object v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->engineAPSelector:Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->socketAPSelector:Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    iput-object v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->socketAPSelector:Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->sessionToResume:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    iput-object v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->sessionToResume:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    return-object v0
.end method

.method copyForConnection()Lorg/bouncycastle/jsse/provider/ProvSSLParameters;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->copy()Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->DEFAULT:Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

    iget-object v2, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->algorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

    iget-object v2, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->algorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;-><init>(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Z)V

    iput-object v1, v0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->algorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    :cond_0
    return-object v0
.end method

.method public getAlgorithmConstraints()Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->algorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    return-object v0
.end method

.method public getApplicationProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->applicationProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getCipherSuitesArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnableRetransmissions()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->enableRetransmissions:Z

    return v0
.end method

.method public getEndpointIdentificationAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->endpointIdentificationAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEngineAPSelector()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/jsse/BCApplicationProtocolSelector<",
            "Ljavax/net/ssl/SSLEngine;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->engineAPSelector:Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    return-object v0
.end method

.method public getMaximumPacketSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->maximumPacketSize:I

    return v0
.end method

.method public getNamedGroups()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->namedGroups:[Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->needClientAuth:Z

    return v0
.end method

.method public getProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->protocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getProtocolsArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->protocols:[Ljava/lang/String;

    return-object v0
.end method

.method public getSNIMatchers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/jsse/BCSNIMatcher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->sniMatchers:Ljava/util/List;

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->copyList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServerNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/BCSNIServerName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->sniServerNames:Ljava/util/List;

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->copyList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToResume()Lorg/bouncycastle/jsse/provider/ProvSSLSession;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->sessionToResume:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    return-object v0
.end method

.method public getSignatureSchemes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->signatureSchemes:[Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureSchemesCert()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->signatureSchemesCert:[Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocketAPSelector()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/jsse/BCApplicationProtocolSelector<",
            "Ljavax/net/ssl/SSLSocket;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->socketAPSelector:Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    return-object v0
.end method

.method public getUseCipherSuitesOrder()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->useCipherSuitesOrder:Z

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->wantClientAuth:Z

    return v0
.end method

.method public setAlgorithmConstraints(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->algorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    return-void
.end method

.method public setApplicationProtocols([Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->applicationProtocols:[Ljava/lang/String;

    return-void
.end method

.method public setCipherSuites([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->context:Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getSupportedCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->cipherSuites:[Ljava/lang/String;

    return-void
.end method

.method setCipherSuitesArray([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->cipherSuites:[Ljava/lang/String;

    return-void
.end method

.method public setEnableRetransmissions(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->enableRetransmissions:Z

    return-void
.end method

.method public setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->endpointIdentificationAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setEngineAPSelector(Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/jsse/BCApplicationProtocolSelector<",
            "Ljavax/net/ssl/SSLEngine;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->engineAPSelector:Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    return-void
.end method

.method public setMaximumPacketSize(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->maximumPacketSize:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The maximum packet size cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNamedGroups([Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->namedGroups:[Ljava/lang/String;

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->needClientAuth:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->wantClientAuth:Z

    return-void
.end method

.method public setProtocols([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->context:Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->isSupportedProtocols([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->protocols:[Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'protocols\' cannot be null, or contain unsupported protocols"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setProtocolsArray([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->protocols:[Ljava/lang/String;

    return-void
.end method

.method public setSNIMatchers(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/jsse/BCSNIMatcher;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->copyList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->sniMatchers:Ljava/util/List;

    return-void
.end method

.method public setServerNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/BCSNIServerName;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->copyList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->sniServerNames:Ljava/util/List;

    return-void
.end method

.method public setSessionToResume(Lorg/bouncycastle/jsse/provider/ProvSSLSession;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->sessionToResume:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    return-void
.end method

.method public setSignatureSchemes([Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->signatureSchemes:[Ljava/lang/String;

    return-void
.end method

.method public setSignatureSchemesCert([Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->signatureSchemesCert:[Ljava/lang/String;

    return-void
.end method

.method public setSocketAPSelector(Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/jsse/BCApplicationProtocolSelector<",
            "Ljavax/net/ssl/SSLSocket;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->socketAPSelector:Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    return-void
.end method

.method public setUseCipherSuitesOrder(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->useCipherSuitesOrder:Z

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->needClientAuth:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->wantClientAuth:Z

    return-void
.end method
