.class Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;
.super Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

# interfaces
.implements Lorg/bouncycastle/jsse/provider/ImportX509TrustManager;


# instance fields
.field final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field final isInFipsMode:Z

.field final x509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Ljavax/net/ssl/X509TrustManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->isInFipsMode:Z

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method private checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->checkAlgorithmConstraints([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->checkExtendedTrust([Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    return-void
.end method

.method private checkAlgorithmConstraints([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/bouncycastle/jsse/provider/TransportData;->getAlgorithmConstraints(Lorg/bouncycastle/jsse/provider/TransportData;Z)Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    move-result-object v3

    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->getTrustedCerts()Ljava/util/Set;

    move-result-object v4

    invoke-static {p4}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->getRequiredExtendedKeyUsage(Z)Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    move-result-object v6

    invoke-static {p4, p2}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->getRequiredKeyUsage(ZLjava/lang/String;)I

    move-result v7

    :try_start_0
    iget-boolean v1, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->isInFipsMode:Z

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->checkChain(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Ljava/util/Set;[Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/x509/KeyPurposeId;I)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Ljava/security/cert/CertificateException;

    const-string p3, "Certificates do not conform to algorithm constraints"

    invoke-direct {p2, p3, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static checkChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'chain\' must be a chain of at least one certificate"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static copyChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->checkChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method private getTrustedCerts()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->copyChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->copyChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljava/net/Socket;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->copyChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->copyChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->copyChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljava/net/Socket;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->copyChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method
