.class Lorg/bouncycastle/jsse/provider/ProvTlsServer;
.super Lorg/bouncycastle/tls/DefaultTlsServer;

# interfaces
.implements Lorg/bouncycastle/jsse/provider/ProvTlsPeer;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final PROPERTY_DEFAULT_DHE_PARAMETERS:Ljava/lang/String; = "jdk.tls.server.defaultDHEParameters"

.field private static final provEphemeralDHKeySize:I

.field private static final provServerDefaultDHEParameters:[Lorg/bouncycastle/tls/crypto/DHGroup;

.field private static final provServerEnableCA:Z

.field private static final provServerEnableSessionResumption:Z

.field private static final provServerEnableStatusRequest:Z = false

.field private static final provServerEnableTrustedCAKeys:Z

.field private static final provServerOmitSigAlgsCert:Z


# instance fields
.field protected credentials:Lorg/bouncycastle/tls/TlsCredentials;

.field protected handshakeComplete:Z

.field protected final jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

.field protected keyManagerMissCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

.field protected matchedSNIServerName:Lorg/bouncycastle/jsse/BCSNIServerName;

.field protected final serverID:Ljava/lang/String;

.field protected final sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

.field protected sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    const/16 v0, 0x400

    const/16 v1, 0x2000

    const-string v2, "jdk.tls.ephemeralDHKeySize"

    const/16 v3, 0x800

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getIntegerSystemProperty(Ljava/lang/String;III)I

    move-result v0

    sput v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provEphemeralDHKeySize:I

    invoke-static {}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->getDefaultDHEParameters()[Lorg/bouncycastle/tls/crypto/DHGroup;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provServerDefaultDHEParameters:[Lorg/bouncycastle/tls/crypto/DHGroup;

    const-string v0, "jdk.tls.server.enableCAExtension"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provServerEnableCA:Z

    const-string v0, "org.bouncycastle.jsse.server.enableSessionResumption"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provServerEnableSessionResumption:Z

    const-string v0, "org.bouncycastle.jsse.server.enableTrustedCAKeysExtension"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provServerEnableTrustedCAKeys:Z

    const-string v0, "org.bouncycastle.jsse.server.omitSigAlgsCertExtension"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provServerOmitSigAlgsCert:Z

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jsse/provider/ProvTlsManager;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;)V
    .locals 1

    invoke-interface {p1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/DefaultTlsServer;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V

    new-instance v0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    invoke-direct {v0}, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->matchedSNIServerName:Lorg/bouncycastle/jsse/BCSNIServerName;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->keyManagerMissCache:Ljava/util/Set;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->credentials:Lorg/bouncycastle/tls/TlsCredentials;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->handshakeComplete:Z

    const-string v0, "server"

    invoke-static {v0, p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getPeerID(Ljava/lang/String;Lorg/bouncycastle/jsse/provider/ProvTlsManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-virtual {p2}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->copyForConnection()Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    return-void
.end method

.method private static getDefaultDHEParameters()[Lorg/bouncycastle/tls/crypto/DHGroup;
    .locals 11

    const-string v0, "jdk.tls.server.defaultDHEParameters"

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getStringSecurityProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->removeAllWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->stripDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    return-object v1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, -0x1

    :cond_2
    add-int/lit8 v5, v4, 0x1

    if-ge v5, v2, :cond_9

    const/16 v6, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v6, v5, :cond_3

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x2

    const/16 v5, 0x2c

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-gt v6, v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v6, 0x1

    const/16 v8, 0x7d

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-gt v8, v7, :cond_5

    goto :goto_2

    :cond_5
    :try_start_0
    invoke-static {v0, v4, v6}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->parseDHParameter(Ljava/lang/String;II)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v0, v7, v8}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->parseDHParameter(Ljava/lang/String;II)Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/bouncycastle/tls/TlsDHUtils;->getStandardGroupForDHParameters(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/tls/crypto/DHGroup;

    move-result-object v7

    if-eqz v7, :cond_6

    :goto_0
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/16 v7, 0x78

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v7

    if-nez v7, :cond_7

    sget-object v6, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non-prime modulus ignored in security property [jdk.tls.server.defaultDHEParameters]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x10

    invoke-virtual {v4, v10}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    new-instance v7, Lorg/bouncycastle/tls/crypto/DHGroup;

    const/4 v9, 0x0

    invoke-direct {v7, v4, v1, v6, v9}, Lorg/bouncycastle/tls/crypto/DHGroup;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    add-int/lit8 v4, v8, 0x1

    if-lt v4, v2, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/tls/crypto/DHGroup;

    new-instance v1, Lorg/bouncycastle/jsse/provider/ProvTlsServer$1;

    invoke-direct {v1}, Lorg/bouncycastle/jsse/provider/ProvTlsServer$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0

    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    :catch_0
    :cond_9
    :goto_2
    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Invalid syntax for security property [jdk.tls.server.defaultDHEParameters]"

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1
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
    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->keyManagerMissCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

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

.method private static parseDHParameter(Ljava/lang/String;II)Ljava/math/BigInteger;
    .locals 1

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x10

    invoke-direct {v0, p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method protected allowCertificateStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public allowLegacyResumption()Z
    .locals 1

    invoke-static {}, Lorg/bouncycastle/jsse/provider/JsseUtils;->allowLegacyResumption()Z

    move-result v0

    return v0
.end method

.method protected allowMultiCertStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected allowTrustedCAIndication()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->trustedIssuers:[Ljava/security/Principal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCertificateRequest()Lorg/bouncycastle/tls/CertificateRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->isClientAuthEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsServerContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v3, v3, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getLocalSignatureAndHashAlgorithms()Ljava/util/Vector;

    move-result-object v3

    sget-boolean v4, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provServerEnableCA:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getX509TrustManager()Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getCertificateAuthorities(Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;)Ljava/util/Vector;

    move-result-object v1

    :cond_1
    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v2, v2, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    invoke-virtual {v2}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getLocalSignatureAndHashAlgorithmsCert()Ljava/util/Vector;

    move-result-object v2

    if-nez v2, :cond_2

    sget-boolean v4, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provServerOmitSigAlgsCert:Z

    if-nez v4, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v2, v2, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    invoke-virtual {v2}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getLocalSignatureAndHashAlgorithms()Ljava/util/Vector;

    move-result-object v2

    :cond_2
    new-instance v4, Lorg/bouncycastle/tls/CertificateRequest;

    invoke-direct {v4, v0, v3, v2, v1}, Lorg/bouncycastle/tls/CertificateRequest;-><init>([BLjava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V

    return-object v4

    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    new-instance v2, Lorg/bouncycastle/tls/CertificateRequest;

    invoke-direct {v2, v0, v3, v1}, Lorg/bouncycastle/tls/CertificateRequest;-><init>([SLjava/util/Vector;Ljava/util/Vector;)V

    return-object v2

    :array_0
    .array-data 2
        0x40s
        0x1s
        0x2s
    .end array-data
.end method

.method public getCertificateStatus()Lorg/bouncycastle/tls/CertificateStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCredentials()Lorg/bouncycastle/tls/TlsCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->credentials:Lorg/bouncycastle/tls/TlsCredentials;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public bridge synthetic getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v0

    return-object v0
.end method

.method public getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v0

    return-object v0
.end method

.method public getDHConfig()Lorg/bouncycastle/tls/crypto/TlsDHConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsDHUtils;->getMinimumFiniteFieldBits(I)I

    move-result v0

    sget v1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provEphemeralDHKeySize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v1, v1, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    invoke-static {v1, v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->selectServerFFDHE(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;I)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;->getResult()I

    move-result v2

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;->isDefaulted()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provServerDefaultDHEParameters:[Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v3}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->isFips()Z

    move-result v3

    if-nez v3, :cond_2

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lorg/bouncycastle/tls/crypto/DHGroup;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    if-lt v6, v0, :cond_1

    if-ltz v2, :cond_0

    invoke-static {v2}, Lorg/bouncycastle/tls/NamedGroup;->getFiniteFieldBits(I)I

    move-result v0

    if-gt v6, v0, :cond_2

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    invoke-direct {v0, v5}, Lorg/bouncycastle/tls/crypto/TlsDHConfig;-><init>(Lorg/bouncycastle/tls/crypto/DHGroup;)V

    return-object v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-static {v0, v2}, Lorg/bouncycastle/tls/TlsDHUtils;->createNamedDHConfig(Lorg/bouncycastle/tls/TlsContext;I)Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getDetailMessageNoCipherSuite()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->offeredCipherSuites:[I

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, " found no selectable cipher suite because none were offered."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, " found no selectable cipher suite among the "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " offered: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v2}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/jsse/provider/JsseUtils;->appendCipherSuiteDetail(Ljava/lang/StringBuilder;Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;I)V

    const/4 v3, 0x1

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v3

    invoke-static {v0, v2, v4}, Lorg/bouncycastle/jsse/provider/JsseUtils;->appendCipherSuiteDetail(Ljava/lang/StringBuilder;Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

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

.method protected getMaximumNegotiableCurveBits()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getMaximumBitsServerECDH(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;->getResult()I

    move-result v0

    return v0
.end method

.method protected getMaximumNegotiableFiniteFieldBits()I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getMaximumBitsServerFFDHE(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;->getResult()I

    move-result v1

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;->isDefaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provServerDefaultDHEParameters:[Lorg/bouncycastle/tls/crypto/DHGroup;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v2}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->isFips()Z

    move-result v2

    if-nez v2, :cond_0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/DHGroup;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    sget v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provEphemeralDHKeySize:I

    if-lt v1, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getNewSessionID()[B
    .locals 2

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provServerEnableSessionResumption:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServerContext;->getNonceGenerator()Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;->generateNonce(I)[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
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

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getProtocolNames([Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedCipherSuite()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSupportedGroups()[I

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v3, v3, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->notifyPeerData([I)V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsServerContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v4, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    iget-object v5, v3, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    invoke-virtual {v0, v4, v2, v5}, Lorg/bouncycastle/jsse/provider/ContextData;->getSignatureSchemesServer(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    move-result-object v2

    iput-object v2, v3, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSigAlgs()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSigAlgsCert()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/jsse/provider/ContextData;->getSignatureSchemes(Ljava/util/Vector;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/provider/ContextData;->getSignatureSchemes(Ljava/util/Vector;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v2, v2, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    invoke-virtual {v2, v3, v1}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->notifyPeerData(Ljava/util/List;Ljava/util/List;)V

    sget-object v2, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " peer signature_algorithms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getSignatureAlgorithmsReport(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " peer signature_algorithms_cert"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getSignatureAlgorithmsReport(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lorg/bouncycastle/jsse/provider/DummyX509KeyManager;->INSTANCE:Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getX509KeyManager()Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;

    move-result-object v3

    if-eq v1, v3, :cond_3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->keyManagerMissCache:Ljava/util/Set;

    invoke-super {p0}, Lorg/bouncycastle/tls/DefaultTlsServer;->getSelectedCipherSuite()I

    move-result v1

    iput-object v4, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->keyManagerMissCache:Ljava/util/Set;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, v3, v1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->validateNegotiatedCipherSuite(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " selected cipher suite: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public getServerExtensions()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/bouncycastle/tls/DefaultTlsServer;->getServerExtensions()Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->matchedSNIServerName:Lorg/bouncycastle/jsse/BCSNIServerName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addServerNameExtensionServer(Ljava/util/Hashtable;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverExtensions:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/bouncycastle/tls/DefaultTlsServer;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->validateNegotiatedProtocol(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Lorg/bouncycastle/tls/ProtocolVersion;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " selected protocol version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getSession()Lorg/bouncycastle/jsse/provider/ProvSSLSession;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    return-object v0
.end method

.method public getSessionToResume([B)Lorg/bouncycastle/tls/TlsSession;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getServerSessionContext()Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    move-result-object v0

    sget-boolean v1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provServerEnableSessionResumption:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->getSessionImpl([B)Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getTlsSession()Lorg/bouncycastle/tls/TlsSession;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->isResumable(Lorg/bouncycastle/jsse/provider/ProvSSLSession;Lorg/bouncycastle/tls/TlsSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    return-object v0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->checkSessionCreationEnabled(Lorg/bouncycastle/jsse/provider/ProvTlsManager;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getSupportedCipherSuites()[I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->getProtocolVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getActiveCipherSuites(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;[Lorg/bouncycastle/tls/ProtocolVersion;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedGroups()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsServerContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, v3, v1}, Lorg/bouncycastle/jsse/provider/ContextData;->getNamedGroupsServer(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    move-result-object v0

    iput-object v0, v2, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getSupportedGroupsLocalServer(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)[I

    move-result-object v0

    return-object v0
.end method

.method protected getSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v0}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getActiveProtocolVersions(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;)[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getTlsContext()Lorg/bouncycastle/tls/TlsContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    return-object v0
.end method

.method protected isClientAuthEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getNeedClientAuth()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getWantClientAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isHandshakeComplete()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->handshakeComplete:Z
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

.method protected isResumable(Lorg/bouncycastle/jsse/provider/ProvSSLSession;Lorg/bouncycastle/tls/TlsSession;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsSession;->isResumable()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsSession;->exportSessionParameters()Lorg/bouncycastle/tls/SessionParameters;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->getCipherSuites()[I

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->getCipherSuite()I

    move-result v2

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->offeredCipherSuites:[I

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->getCipherSuite()I

    move-result v2

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lorg/bouncycastle/tls/SessionParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object p2

    if-nez p2, :cond_3

    return v0

    :cond_3
    iget-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object p2

    const-string v1, ", session: "

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getJsseSessionParameters()Lorg/bouncycastle/jsse/provider/JsseSessionParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/jsse/provider/JsseSessionParameters;->getEndpointIDAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Session not resumable - endpoint ID algorithm mismatch; connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_4
    return v0

    :cond_5
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getJsseSessionParameters()Lorg/bouncycastle/jsse/provider/JsseSessionParameters;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->matchedSNIServerName:Lorg/bouncycastle/jsse/BCSNIServerName;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/JsseSessionParameters;->getMatchedSNIServerName()Lorg/bouncycastle/jsse/BCSNIServerName;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Session not resumable - SNI mismatch; connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_6
    return v0

    :cond_7
    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_0
    return v0
.end method

.method public notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

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
    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

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

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/tls/DefaultTlsServer;->notifyAlertReceived(SS)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_0
    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-static {v2, p1, p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getAlertReceivedLogMessage(Ljava/lang/String;SS)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public notifyClientCertificate(Lorg/bouncycastle/tls/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->isClientAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getX509CertificateChain(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    const-string v1, "TLS-client-auth"

    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getNeedClientAuth()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x74

    goto :goto_1

    :cond_2
    const/16 p1, 0x28

    :goto_1
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3
    return-void

    :cond_4
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public notifyConnectionClosed()V
    .locals 3

    invoke-super {p0}, Lorg/bouncycastle/tls/DefaultTlsServer;->notifyConnectionClosed()V

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " disconnected from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/bouncycastle/tls/DefaultTlsServer;->notifyHandshakeBeginning()V

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " accepting connection from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-static {v2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getPeerReport(Lorg/bouncycastle/jsse/provider/ProvTlsManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
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
    invoke-super {p0}, Lorg/bouncycastle/tls/DefaultTlsServer;->notifyHandshakeComplete()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->handshakeComplete:Z

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " established connection with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-static {v3}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getPeerReport(Lorg/bouncycastle/jsse/provider/ProvTlsManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsServerContext;->getSession()Lorg/bouncycastle/tls/TlsSession;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getTlsSession()Lorg/bouncycastle/tls/TlsSession;

    move-result-object v1

    if-eq v1, v5, :cond_3

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/ContextData;->getServerSessionContext()Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    move-result-object v2

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getPeerHost()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getPeerPort()I

    move-result v4

    new-instance v6, Lorg/bouncycastle/jsse/provider/JsseSessionParameters;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->matchedSNIServerName:Lorg/bouncycastle/jsse/BCSNIServerName;

    invoke-direct {v6, v1, v7}, Lorg/bouncycastle/jsse/provider/JsseSessionParameters;-><init>(Ljava/lang/String;Lorg/bouncycastle/jsse/BCSNIServerName;)V

    sget-boolean v1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provServerEnableSessionResumption:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

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

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

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

.method public notifySession(Lorg/bouncycastle/tls/TlsSession;)V
    .locals 4

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsSession;->getSessionID()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getTlsSession()Lorg/bouncycastle/tls/TlsSession;

    move-result-object v1

    if-ne v1, p1, :cond_0

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resumed session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([B)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " did not specify a session ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " specified new session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->checkSessionCreationEnabled(Lorg/bouncycastle/jsse/provider/ProvTlsManager;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {p1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->getContextData()Lorg/bouncycastle/jsse/provider/ContextData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getServerSessionContext()Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslSession:Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->notifyHandshakeSession(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;Lorg/bouncycastle/jsse/provider/ProvSSLSession;)V

    return-void
.end method

.method protected preferLocalCipherSuites()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getUseCipherSuitesOrder()Z

    move-result v0

    return v0
.end method

.method public processClientExtensions(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/bouncycastle/tls/DefaultTlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientServerNames()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getSNIMatchers()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->findMatchingSNIServerName(Ljava/util/Vector;Ljava/util/Collection;)Lorg/bouncycastle/jsse/BCSNIServerName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->matchedSNIServerName:Lorg/bouncycastle/jsse/BCSNIServerName;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " accepted SNI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->matchedSNIServerName:Lorg/bouncycastle/jsse/BCSNIServerName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x70

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    :goto_0
    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ignored SNI (no matchers specified)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getCertificateAuthoritiesExtension(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->toX500Principals(Ljava/util/Vector;)[Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->trustedIssuers:[Ljava/security/Principal;

    return-void

    :cond_4
    sget-boolean p1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->provServerEnableTrustedCAKeys:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->trustedCAKeys:Ljava/util/Vector;

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getTrustedIssuers(Ljava/util/Vector;)[Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->trustedIssuers:[Ljava/security/Principal;

    :cond_5
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

.method protected selectCipherSuite(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/tls/KeyExchangeAlgorithm;->isAnonymous(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v1, v1, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->trustedIssuers:[Ljava/security/Principal;

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->selectCredentials([Ljava/security/Principal;I)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getCipherSuiteName(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " found no credentials for cipher suite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    invoke-super {p0, p1}, Lorg/bouncycastle/tls/DefaultTlsServer;->selectCipherSuite(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->credentials:Lorg/bouncycastle/tls/TlsCredentials;

    :cond_3
    return p1
.end method

.method protected selectCredentials([Ljava/security/Principal;I)Lorg/bouncycastle/tls/TlsCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const/16 v1, 0x11

    if-eq p2, v1, :cond_0

    const/16 v1, 0x13

    if-eq p2, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eq v0, p2, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServerContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->selectServerCredentials12([Ljava/security/Principal;I)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->selectServerCredentialsLegacy([Ljava/security/Principal;I)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p2, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->selectServerCredentials13([Ljava/security/Principal;[B)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object p1

    return-object p1
.end method

.method protected selectDH(I)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected selectDHDefault(I)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected selectECDH(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->namedGroups:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    invoke-static {v0, p1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->selectServerECDH(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;I)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;->getResult()I

    move-result p1

    return p1
.end method

.method protected selectECDHDefault(I)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected selectProtocolName()Lorg/bouncycastle/tls/ProtocolName;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getEngineAPSelector()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getSocketAPSelector()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/bouncycastle/tls/DefaultTlsServer;->selectProtocolName()Lorg/bouncycastle/tls/ProtocolName;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->clientProtocolNames:Ljava/util/Vector;

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getProtocolNames(Ljava/util/Vector;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->selectApplicationProtocol(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x78

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lorg/bouncycastle/tls/ProtocolName;->asUtf8Encoding(Ljava/lang/String;)Lorg/bouncycastle/tls/ProtocolName;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected selectServerCredentials12([Ljava/security/Principal;I)Lorg/bouncycastle/tls/TlsCredentials;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->getLegacySignatureAlgorithmServer(I)S

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

    iget-object v1, v1, Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;->signatureSchemes:Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->getPeerSigSchemes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;

    invoke-virtual {v4}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getSignatureScheme()I

    move-result v5

    invoke-static {v5, p2}, Lorg/bouncycastle/tls/TlsUtils;->isValidSignatureSchemeForServerKeyExchange(II)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getSignatureAlgorithm()S

    move-result v5

    if-ne v0, v5, :cond_2

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getKeyTypeLegacyServer(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getKeyType()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget-object v6, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->keyManagerMissCache:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->isSupportedPre13()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v4}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo$PerConnection;->hasLocalSignatureScheme(Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (1.2) has no key types to try for KeyExchangeAlgorithm "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_7
    return-object v1

    :cond_8
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v3, v0, p1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->chooseServerKey([Ljava/lang/String;[Ljava/security/Principal;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->handleKeyManagerMisses(Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (1.2) did not select any credentials for KeyExchangeAlgorithm "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_9
    return-object v1

    :cond_a
    invoke-interface {p1}, Lorg/bouncycastle/jsse/BCX509Key;->getKeyType()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v2, p2}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->handleKeyManagerMisses(Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;

    if-eqz v0, :cond_c

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

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

    :cond_b
    iget-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getSignatureAndHashAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    invoke-static {p2, v1, p1, v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->createCredentialedSigner(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jsse/BCX509Key;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/TlsCredentialedSigner;

    move-result-object p1

    return-object p1

    :cond_c
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x50

    const-string v0, "Key manager returned invalid key type"

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected selectServerCredentials13([Ljava/security/Principal;[B)Lorg/bouncycastle/tls/TlsCredentials;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->jsseSecurityParameters:Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;

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

    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getKeyType13()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->keyManagerMissCache:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->isSupportedPost13()Z

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

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (1.3) found no usable signature schemes"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_5
    return-object v2

    :cond_6
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    invoke-interface {v3, v0, p1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->chooseServerKey([Ljava/lang/String;[Ljava/security/Principal;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->handleKeyManagerMisses(Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (1.3) did not select any credentials"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_7
    return-object v2

    :cond_8
    invoke-interface {p1}, Lorg/bouncycastle/jsse/BCX509Key;->getKeyType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->handleKeyManagerMisses(Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;

    if-eqz v1, :cond_a

    sget-object v2, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->serverID:Ljava/lang/String;

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

    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/jsse/provider/SignatureSchemeInfo;->getSignatureAndHashAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-static {v0, v2, p1, v1, p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->createCredentialedSigner13(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jsse/BCX509Key;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[B)Lorg/bouncycastle/tls/TlsCredentialedSigner;

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

.method protected selectServerCredentialsLegacy([Ljava/security/Principal;I)Lorg/bouncycastle/tls/TlsCredentials;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getKeyTypeLegacyServer(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->keyManagerMissCache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->manager:Lorg/bouncycastle/jsse/provider/ProvTlsManager;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v1, v4, p1}, Lorg/bouncycastle/jsse/provider/ProvTlsManager;->chooseServerKey([Ljava/lang/String;[Ljava/security/Principal;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->keyManagerMissCache:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_1
    if-ne v3, p2, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->createCredentialedDecryptor(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jsse/BCX509Key;)Lorg/bouncycastle/tls/TlsCredentialedDecryptor;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v0

    invoke-static {p2, v0, p1, v2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->createCredentialedSigner(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jsse/BCX509Key;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/TlsCredentialedSigner;

    move-result-object p1

    return-object p1
.end method

.method protected shouldSelectProtocolNameEarly()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getEngineAPSelector()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTlsServer;->sslParameters:Lorg/bouncycastle/jsse/provider/ProvSSLParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getSocketAPSelector()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldUseExtendedMasterSecret()Z
    .locals 1

    invoke-static {}, Lorg/bouncycastle/jsse/provider/JsseUtils;->useExtendedMasterSecret()Z

    move-result v0

    return v0
.end method
