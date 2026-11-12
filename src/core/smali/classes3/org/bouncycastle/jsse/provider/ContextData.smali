.class final Lorg/bouncycastle/jsse/provider/ContextData;
.super Ljava/lang/Object;


# instance fields
.field private final clientSessionContext:Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

.field private final context:Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

.field private final crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

.field private final namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;

.field private final serverSessionContext:Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

.field private final signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerContext;

.field private final x509KeyManager:Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

.field private final x509TrustManager:Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ContextData;->context:Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ContextData;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ContextData;->x509KeyManager:Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

    iput-object p4, p0, Lorg/bouncycastle/jsse/provider/ContextData;->x509TrustManager:Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    new-instance p3, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    invoke-direct {p3, p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;)V

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ContextData;->clientSessionContext:Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    new-instance p3, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    invoke-direct {p3, p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;)V

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ContextData;->serverSessionContext:Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->isFips()Z

    move-result p3

    invoke-static {p3, p2}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->createPerContext(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ContextData;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->isFips()Z

    move-result p1

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->createPerContext(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;)Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerContext;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ContextData;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerContext;

    return-void
.end method


# virtual methods
.method getClientSessionContext()Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ContextData;->clientSessionContext:Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    return-object v0
.end method

.method getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ContextData;->context:Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    return-object v0
.end method

.method getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ContextData;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    return-object v0
.end method

.method getNamedGroupsClient(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;[Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ContextData;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->createPerConnectionClient(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;[Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    move-result-object p1

    return-object p1
.end method

.method getNamedGroupsServer(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ContextData;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->createPerConnectionServer(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    move-result-object p1

    return-object p1
.end method

.method getServerSessionContext()Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ContextData;->serverSessionContext:Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    return-object v0
.end method

.method getSignatureSchemes(Ljava/util/Vector;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ContextData;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerContext;

    invoke-static {v0, p1}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getSignatureSchemes(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerContext;Ljava/util/Vector;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getSignatureSchemesClient(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;[Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ContextData;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerContext;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->createPerConnectionClient(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerContext;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;[Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    move-result-object p1

    return-object p1
.end method

.method getSignatureSchemesServer(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ContextData;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerContext;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->createPerConnectionServer(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerContext;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    move-result-object p1

    return-object p1
.end method

.method getX509KeyManager()Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ContextData;->x509KeyManager:Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

    return-object v0
.end method

.method getX509TrustManager()Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ContextData;->x509TrustManager:Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    return-object v0
.end method
