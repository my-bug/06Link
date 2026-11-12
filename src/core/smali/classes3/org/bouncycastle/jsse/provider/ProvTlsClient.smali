.class Lorg/bouncycastle/jsse/provider/ProvTlsClient;
.super Lorg/bouncycastle/tls/DefaultTlsClient;

# interfaces
.implements Lorg/bouncycastle/jsse/provider/ProvTlsPeer;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final provClientEnableCA:Z

.field private static final provClientEnableSessionResumption:Z

.field private static final provClientEnableStatusRequest:Z

.field private static final provClientEnableTrustedCAKeys:Z

.field private static final provClientOmitSigAlgsCert:Z

.field private static final provEnableSNIExtension:Z


# instance fields
.field protected final clientID:Ljava/lang/String;

.field protected handshakeComplete:Z

.field protected final jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

.field protected final manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

.field protected final sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

.field protected sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    const-string v0, "jdk.tls.client.enableCAExtension"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->provClientEnableCA:Z

    const-string v0, "org.bouncycastle.jsse.client.enableSessionResumption"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->provClientEnableSessionResumption:Z

    const-string v0, "jdk.tls.client.enableStatusRequestExtension"

    invoke-static {v0, v2}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->provClientEnableStatusRequest:Z

    const-string v0, "org.bouncycastle.jsse.client.enableTrustedCAKeysExtension"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->provClientEnableTrustedCAKeys:Z

    const-string v0, "org.bouncycastle.jsse.client.omitSigAlgsCertExtension"

    invoke-static {v0, v2}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->provClientOmitSigAlgsCert:Z

    const-string v0, "jsse.enableSNIExtension"

    invoke-static {v0, v2}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->provEnableSNIExtension:Z

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jsse/provider/ProvTlsManager;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;)V
    .locals 1

    invoke-interface {p1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/DefaultTlsClient;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V

    new-instance v0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    invoke-direct {v0}, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->handshakeComplete:Z

    const-string v0, "client"

    invoke-static {v0, p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getPeerID(Ljava/lang/String;Lorg/bouncycastle/jsse/provider/ProvTlsManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-virtual {p2}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->copyForConnection()Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/jsse/provider/ProvTlsClient;)Lorg/bouncycastle/tls/TlsClientContext;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->context:Lorg/bouncycastle/tls/TlsClientContext;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/bouncycastle/jsse/provider/ProvTlsClient;)Lorg/bouncycastle/tls/TlsClientContext;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->context:Lorg/bouncycastle/tls/TlsClientContext;

    return-object p0
.end method

.method private handleKeyManagerMisses(Ljava/util/LinkedHashMap;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " found no credentials for signature scheme \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' (keyType \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public allowLegacyResumption()Z
    .locals 1

    invoke-static {}, Lorg/bouncycastle/jsse/provider/JsseUtils;->allowLegacyResumption()Z

    move-result v0

    return v0
.end method

.method public getAuthentication()Lorg/bouncycastle/tls/TlsAuthentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/ProvTlsClient$1;-><init>(Lorg/bouncycastle/jsse/provider/ProvTlsClient;)V

    return-object v0
.end method

.method protected getCertificateAuthorities()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/asn1/x500/X500Name;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->provClientEnableCA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getX509TrustManager()Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getCertificateAuthorities(Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;)Ljava/util/Vector;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCertificateStatusRequest()Lorg/bouncycastle/tls/CertificateStatusRequest;
    .locals 3

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->provClientEnableStatusRequest:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/OCSPStatusRequest;

    invoke-direct {v0, v1, v1}, Lorg/bouncycastle/tls/OCSPStatusRequest;-><init>(Ljava/util/Vector;Lorg/bouncycastle/asn1/x509/Extensions;)V

    new-instance v1, Lorg/bouncycastle/tls/CertificateStatusRequest;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tls/CertificateStatusRequest;-><init>(SLjava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v0

    return-object v0
.end method

.method public getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v0

    return-object v0
.end method

.method public getDHGroupVerifier()Lorg/bouncycastle/tls/TlsDHGroupVerifier;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvDHGroupVerifier;

    invoke-direct {v0}, Lorg/bouncycastle/jsse/provider/ProvDHGroupVerifier;-><init>()V

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    return-object v0
.end method

.method protected getKeyTypesLegacy([S)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-short v2, p1, v1

    invoke-static {v2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getKeyTypeLegacyClient(S)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMaxCertificateChainLength()I
    .locals 1

    invoke-static {}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getMaxCertificateChainLength()I

    move-result v0

    return v0
.end method

.method public getMaxHandshakeMessageSize()I
    .locals 1

    invoke-static {}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getMaxHandshakeMessageSize()I

    move-result v0

    return v0
.end method

.method protected getMultiCertStatusRequest()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->provClientEnableStatusRequest:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/OCSPStatusRequest;

    invoke-direct {v0, v1, v1}, Lorg/bouncycastle/tls/OCSPStatusRequest;-><init>(Ljava/util/Vector;Lorg/bouncycastle/asn1/x509/Extensions;)V

    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    new-instance v3, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;-><init>(SLjava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;-><init>(SLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected getProtocolNames()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/tls/ProtocolName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getProtocolNames([Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method protected getResumableSessionParameters(Lorg/bouncycastle/jsse/provider/ProvSSLSession;Lorg/bouncycastle/tls/TlsSession;)Lorg/bouncycastle/tls/SessionParameters;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsSession;->isResumable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsSession;->exportSessionParameters()Lorg/bouncycastle/tls/SessionParameters;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->getCipherSuites()[I

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->getCipherSuite()I

    move-result v2

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->getProtocolVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/bouncycastle/tls/ProtocolVersion;->contains([Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getJsseSessionParameters()Lorg/bouncycastle/jsse/provider/JsseSessionParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/JsseSessionParameters;->getEndpointIDAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object p2, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p2, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Session not resumable - endpoint ID algorithm mismatch; connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", session: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_4
    return-object v0

    :cond_5
    return-object p2

    :cond_6
    :goto_0
    return-object v0
.end method

.method protected getSNIServerNames()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/tls/ServerName;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->provEnableSNIExtension:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getServerNames()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getPeerHostSNI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Lorg/bouncycastle/util/IPAddress;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/bouncycastle/jsse/BCSNIHostName;

    invoke-direct {v2, v1}, Lorg/bouncycastle/jsse/BCSNIHostName;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Failed to add peer host as default SNI host_name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jsse/BCSNIServerName;

    new-instance v3, Lorg/bouncycastle/tls/ServerName;

    invoke-virtual {v2}, Lorg/bouncycastle/jsse/BCSNIServerName;->getType()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v2}, Lorg/bouncycastle/jsse/BCSNIServerName;->getEncoded()[B

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/tls/ServerName;-><init>(S[B)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSession()Lorg/bouncycastle/jsse/provider/ProvSSLSession;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    return-object v0
.end method

.method public getSessionToResume()Lorg/bouncycastle/tls/TlsSession;
    .locals 3

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->provClientEnableSessionResumption:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getSessionToResume()Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getClientSessionContext()Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v2}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getPeerPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->getSessionImpl(Ljava/lang/String;I)Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getTlsSession()Lorg/bouncycastle/tls/TlsSession;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->getResumableSessionParameters(Lorg/bouncycastle/jsse/provider/ProvSSLSession;Lorg/bouncycastle/tls/TlsSession;)Lorg/bouncycastle/tls/SessionParameters;

    move-result-object v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getEnableSessionCreation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SessionParameters;->getCipherSuite()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->cipherSuites:[I

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->checkSessionCreationEnabled(Lorg/bouncycastle/jsse/provider/ProvTlsManager;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSupportedCipherSuites()[I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->getProtocolVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getActiveCipherSuites(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;[Lorg/bouncycastle/tls/ProtocolVersion;)[I

    move-result-object v0

    return-object v0
.end method

.method protected getSupportedGroups(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object p1, p1, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getSupportedGroupsLocalClient(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Ljava/util/Vector;

    move-result-object p1

    return-object p1
.end method

.method protected getSupportedSignatureAlgorithms()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getLocalSignatureAndHashAlgorithms()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method protected getSupportedSignatureAlgorithmsCert()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getLocalSignatureAndHashAlgorithmsCert()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_0

    sget-boolean v1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->provClientOmitSigAlgsCert:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getLocalSignatureAndHashAlgorithms()Ljava/util/Vector;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getActiveProtocolVersions(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;)[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getTlsContext()Lorg/bouncycastle/tls/TlsContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->context:Lorg/bouncycastle/tls/TlsClientContext;

    return-object v0
.end method

.method protected getTrustedCAIndication()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/bouncycastle/tls/TrustedAuthority;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->provClientEnableTrustedCAKeys:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getX509TrustManager()Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getCertificateAuthorities(Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/x500/X500Name;

    new-instance v3, Lorg/bouncycastle/tls/TrustedAuthority;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/tls/TrustedAuthority;-><init>(SLjava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized isHandshakeComplete()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->handshakeComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lorg/bouncycastle/tls/DefaultTlsClient;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    if-ne p2, v0, :cond_1

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_0
    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-static {v2, p1, p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getAlertRaisedLogMessage(Ljava/lang/String;SS)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {v1, v0, p1, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public notifyAlertReceived(SS)V
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/tls/DefaultTlsClient;->notifyAlertReceived(SS)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_0
    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-static {v2, p1, p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getAlertReceivedLogMessage(Ljava/lang/String;SS)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public notifyConnectionClosed()V
    .locals 3

    invoke-super {p0}, Lorg/bouncycastle/tls/DefaultTlsClient;->notifyConnectionClosed()V

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " disconnected from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-static {v2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getPeerReport(Lorg/bouncycastle/jsse/provider/ProvTlsManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyHandshakeBeginning()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/bouncycastle/tls/DefaultTlsClient;->notifyHandshakeBeginning()V

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " opening connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-static {v2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getPeerReport(Lorg/bouncycastle/jsse/provider/ProvTlsManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->getProtocolVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, v3, v1}, Lorg/bouncycastle/jsse/provider/ContextData;->getNamedGroupsClient(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;[Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    move-result-object v3

    iput-object v3, v2, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    iget-object v4, v2, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    invoke-virtual {v0, v3, v1, v4}, Lorg/bouncycastle/jsse/provider/ContextData;->getSignatureSchemesClient(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;[Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    move-result-object v0

    iput-object v0, v2, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    return-void
.end method

.method public declared-synchronized notifyHandshakeComplete()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/bouncycastle/tls/DefaultTlsClient;->notifyHandshakeComplete()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->handshakeComplete:Z

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " established connection with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-static {v3}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getPeerReport(Lorg/bouncycastle/jsse/provider/ProvTlsManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->context:Lorg/bouncycastle/tls/TlsClientContext;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsClientContext;->getSession()Lorg/bouncycastle/tls/TlsSession;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getTlsSession()Lorg/bouncycastle/tls/TlsSession;

    move-result-object v1

    if-eq v1, v5, :cond_3

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/ContextData;->getClientSessionContext()Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    move-result-object v2

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getPeerHost()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getPeerPort()I

    move-result v4

    new-instance v6, Lorg/bouncycastle/jsse/provider/JsseSessionParameters;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lorg/bouncycastle/jsse/provider/JsseSessionParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/jsse/BCSNIServerName;)V

    sget-boolean v1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->provClientEnableSessionResumption:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->context:Lorg/bouncycastle/tls/TlsClientContext;

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->reportSession(Ljava/lang/String;ILorg/bouncycastle/tls/TlsSession;Lorg/bouncycastle/jsse/provider/JsseSessionParameters;Z)Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    new-instance v1, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;

    invoke-direct {v1, p0}, Lorg/bouncycastle/jsse/provider/ProvSSLConnection;-><init>(Lorg/bouncycastle/jsse/provider/ProvTlsPeer;)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->notifyHandshakeComplete(Lorg/bouncycastle/jsse/provider/ProvSSLConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifySecureRenegotiation(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    const-string p1, "sun.security.ssl.allowLegacyHelloMessages"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public notifySelectedCipherSuite(I)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->validateNegotiatedCipherSuite(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " notified of selected cipher suite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/tls/DefaultTlsClient;->notifySelectedCipherSuite(I)V

    return-void
.end method

.method public notifyServerVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->validateNegotiatedProtocol(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Lorg/bouncycastle/tls/ProtocolVersion;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " notified of selected protocol version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/tls/DefaultTlsClient;->notifyServerVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    return-void
.end method

.method public notifySessionID([B)V
    .locals 4

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getId()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Server resumed session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([B)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Server did not specify a session ID"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Server specified new session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->checkSessionCreationEnabled(Lorg/bouncycastle/jsse/provider/ProvTlsManager;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {p1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getClientSessionContext()Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->context:Lorg/bouncycastle/tls/TlsClientContext;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->notifyHandshakeSession(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;Lorg/bouncycastle/jsse/provider/ProvSSLSession;)V

    return-void
.end method

.method public notifySessionToResume(Lorg/bouncycastle/tls/TlsSession;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->checkSessionCreationEnabled(Lorg/bouncycastle/jsse/provider/ProvTlsManager;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/tls/DefaultTlsClient;->notifySessionToResume(Lorg/bouncycastle/tls/TlsSession;)V

    return-void
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/bouncycastle/tls/DefaultTlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->context:Lorg/bouncycastle/tls/TlsClientContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientServerNames()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasServerNameExtensionServer(Ljava/util/Hashtable;)Z

    move-result p1

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Server accepted SNI?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requiresCloseNotify()Z
    .locals 1

    invoke-static {}, Lorg/bouncycastle/jsse/provider/JsseUtils;->requireCloseNotify()Z

    move-result v0

    return v0
.end method

.method public requiresExtendedMasterSecret()Z
    .locals 1

    invoke-static {}, Lorg/bouncycastle/jsse/provider/JsseUtils;->allowLegacyMasterSecret()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected selectClientCredentials12([Ljava/security/Principal;[S)Lorg/bouncycastle/tls/TlsCredentials;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getPeerSigSchemes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;

    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getKeyType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getSignatureAlgorithm()S

    move-result v5

    invoke-static {v5}, Lorg/bouncycastle/tls/SignatureAlgorithm;->getClientCertificateType(S)S

    move-result v5

    if-ltz v5, :cond_0

    invoke-static {p2, v5}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->isSupportedPre13()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->hasLocalSignatureScheme(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (1.2) found no usable signature schemes"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_5
    return-object v0

    :cond_6
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    sget-object v2, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v2, p2, p1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->chooseClientKey([Ljava/lang/String;[Ljava/security/Principal;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->handleKeyManagerMisses(Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (1.2) did not select any credentials"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_7
    return-object v0

    :cond_8
    invoke-interface {p1}, Lorg/bouncycastle/jsse/BCX509Key;->getKeyType()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->handleKeyManagerMisses(Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;

    if-eqz v0, :cond_a

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (1.2) selected credentials for signature scheme \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' (keyType \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'), with private key algorithm \'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/bouncycastle/jsse/BCX509Key;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getPrivateKeyAlgorithm(Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_9
    iget-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->context:Lorg/bouncycastle/tls/TlsClientContext;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getSignatureAndHashAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    invoke-static {p2, v1, p1, v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->createCredentialedSigner(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jsse/BCX509Key;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/TlsCredentialedSigner;

    move-result-object p1

    return-object p1

    :cond_a
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x50

    const-string v0, "Key manager returned invalid key type"

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected selectClientCredentials13([Ljava/security/Principal;[B)Lorg/bouncycastle/tls/TlsCredentials;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getPeerSigSchemes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;

    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getKeyType13()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->isSupportedPost13()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->hasLocalSignatureScheme(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (1.3) found no usable signature schemes"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_4
    return-object v2

    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v3, v0, p1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->chooseClientKey([Ljava/lang/String;[Ljava/security/Principal;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->handleKeyManagerMisses(Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (1.3) did not select any credentials"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_6
    return-object v2

    :cond_7
    invoke-interface {p1}, Lorg/bouncycastle/jsse/BCX509Key;->getKeyType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->handleKeyManagerMisses(Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;

    if-eqz v1, :cond_9

    sget-object v2, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->clientID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (1.3) selected credentials for signature scheme \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' (keyType \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'), with private key algorithm \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/bouncycastle/jsse/BCX509Key;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getPrivateKeyAlgorithm(Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->context:Lorg/bouncycastle/tls/TlsClientContext;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getSignatureAndHashAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-static {v0, v2, p1, v1, p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->createCredentialedSigner13(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jsse/BCX509Key;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[B)Lorg/bouncycastle/tls/TlsCredentialedSigner;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x50

    const-string v0, "Key manager returned invalid key type"

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected selectClientCredentialsLegacy([Ljava/security/Principal;[S)Lorg/bouncycastle/tls/TlsCredentials;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->getKeyTypesLegacy([S)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0, p2, p1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->chooseClientKey([Ljava/lang/String;[Ljava/security/Principal;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    iget-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->context:Lorg/bouncycastle/tls/TlsClientContext;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsClient;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v0

    invoke-static {p2, v0, p1, v2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->createCredentialedSigner(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jsse/BCX509Key;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/TlsCredentialedSigner;

    move-result-object p1

    return-object p1
.end method

.method public shouldUseCompatibilityMode()Z
    .locals 1

    invoke-static {}, Lorg/bouncycastle/jsse/provider/JsseUtils;->useCompatibilityMode()Z

    move-result v0

    return v0
.end method

.method public shouldUseExtendedMasterSecret()Z
    .locals 1

    invoke-static {}, Lorg/bouncycastle/jsse/provider/JsseUtils;->useExtendedMasterSecret()Z

    move-result v0

    return v0
.end method
