.class Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;
.super Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final keyUsagesServer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final provCheckRevocation:Z

.field private static final provTrustManagerCheckEKU:Z


# instance fields
.field private final exportX509TrustManager:Ljavax/net/ssl/X509TrustManager;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final isInFipsMode:Z

.field private final pkixParametersTemplate:Ljava/security/cert/PKIXBuilderParameters;

.field private final trustedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->LOG:Ljava/util/logging/Logger;

    const-string v0, "com.sun.net.ssl.checkRevocation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->provCheckRevocation:Z

    const-string v0, "org.bouncycastle.jsse.trustManager.checkEKU"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->provTrustManagerCheckEKU:Z

    invoke-static {}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->createKeyUsagesServer()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->keyUsagesServer:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/security/cert/PKIXParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->isInFipsMode:Z

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p3}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->getTrustedCerts(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->trustedCerts:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->pkixParametersTemplate:Ljava/security/cert/PKIXBuilderParameters;

    goto :goto_0

    :cond_0
    instance-of p1, p3, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz p1, :cond_1

    check-cast p3, Ljava/security/cert/PKIXBuilderParameters;

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->pkixParametersTemplate:Ljava/security/cert/PKIXBuilderParameters;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {p3}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p3}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->pkixParametersTemplate:Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {p3}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/security/cert/PKIXBuilderParameters;->setAnyPolicyInhibited(Z)V

    invoke-virtual {p3}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/cert/PKIXBuilderParameters;->setCertPathCheckers(Ljava/util/List;)V

    invoke-virtual {p3}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/cert/PKIXBuilderParameters;->setCertStores(Ljava/util/List;)V

    invoke-virtual {p3}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/cert/PKIXBuilderParameters;->setDate(Ljava/util/Date;)V

    invoke-virtual {p3}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/security/cert/PKIXBuilderParameters;->setExplicitPolicyRequired(Z)V

    invoke-virtual {p3}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/cert/PKIXBuilderParameters;->setInitialPolicies(Ljava/util/Set;)V

    invoke-virtual {p3}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/security/cert/PKIXBuilderParameters;->setPolicyMappingInhibited(Z)V

    invoke-virtual {p3}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/security/cert/PKIXBuilderParameters;->setPolicyQualifiersRejected(Z)V

    invoke-virtual {p3}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    invoke-virtual {p3}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/cert/PKIXBuilderParameters;->setSigProvider(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/X509TrustManagerUtil;->exportX509TrustManager(Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->exportX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method constructor <init>(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/bouncycastle/jcajce/util/JcaJceHelper;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->isInFipsMode:Z

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->getTrustedCerts(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->trustedCerts:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->pkixParametersTemplate:Ljava/security/cert/PKIXBuilderParameters;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {p1, p3, p2}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->pkixParametersTemplate:Ljava/security/cert/PKIXBuilderParameters;

    sget-boolean p2, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->provCheckRevocation:Z

    invoke-virtual {p1, p2}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/X509TrustManagerUtil;->exportX509TrustManager(Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->exportX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method private static varargs addKeyUsageServer(Ljava/util/Map;I[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I[I)V"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    invoke-static {v2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getAuthTypeServer(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Duplicate keys in server key usages"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private static addStatusResponses(Ljava/security/cert/CertPathBuilder;Ljava/security/cert/PKIXBuilderParameters;[Ljava/security/cert/X509Certificate;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertPathBuilder;",
            "Ljava/security/cert/PKIXBuilderParameters;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    aget-object v4, p2, v2

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    :try_start_0
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/jsse/provider/PKIXUtil;->addStatusResponses(Ljava/security/cert/CertPathBuilder;Ljava/security/cert/PKIXBuilderParameters;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->LOG:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string p3, "Failed to add status responses for revocation checking"

    invoke-virtual {p1, p2, p3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private buildCertPath([Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Ljava/util/List;)[Ljava/security/cert/X509Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;",
            "Ljava/util/List<",
            "[B>;)[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "PKIX"

    const-string v1, "Collection"

    const/4 v2, 0x0

    aget-object v3, p1, v2

    iget-object v4, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->trustedCerts:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/security/cert/X509Certificate;

    aput-object v3, p1, v2

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v4, "X.509"

    invoke-interface {v2, v4}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/CertificateFactory;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->getCertStoreParameters(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertStoreParameters;

    move-result-object v4

    :try_start_0
    invoke-static {v1, v4, v2}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/security/Provider;)Ljava/security/cert/CertStore;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v1, v4}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v1

    :goto_0
    :try_start_1
    invoke-static {v0, v2}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertPathBuilder;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {v0}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->pkixParametersTemplate:Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXBuilderParameters;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXBuilderParameters;

    new-instance v4, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;

    iget-boolean v5, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->isInFipsMode:Z

    iget-object v6, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v4, v5, v6, p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;-><init>(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)V

    invoke-virtual {v2, v4}, Ljava/security/cert/PKIXBuilderParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    invoke-virtual {v2, v1}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    invoke-virtual {v2}, Ljava/security/cert/PKIXBuilderParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object p2

    invoke-static {v3, p2}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->createTargetCertConstraints(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertSelector;)Ljava/security/cert/X509CertSelector;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/security/cert/PKIXBuilderParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {v0, v2, p1, p3}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->addStatusResponses(Ljava/security/cert/CertPathBuilder;Ljava/security/cert/PKIXBuilderParameters;[Ljava/security/cert/X509Certificate;Ljava/util/List;)V

    :cond_1
    invoke-virtual {v0, v2}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object p1

    check-cast p1, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {p1}, Ljava/security/cert/PKIXCertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object p2

    invoke-virtual {p1}, Ljava/security/cert/PKIXCertPathBuilderResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->getTrustedChain(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method static checkEndpointID(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->stripSquareBrackets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "HTTPS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :goto_0
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/HostnameUtil;->checkHostname(Ljava/lang/String;Ljava/security/cert/X509Certificate;Z)V

    return-void

    :cond_0
    const-string v0, "LDAP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LDAPS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/security/cert/CertificateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown endpoint ID algorithm: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private static checkEndpointID(Ljava/security/cert/X509Certificate;Ljava/lang/String;ZLorg/bouncycastle/jsse/BCExtendedSSLSession;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p3}, Lorg/bouncycastle/jsse/BCExtendedSSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lorg/bouncycastle/jsse/BCExtendedSSLSession;->getRequestedServerNames()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getSNIHostName(Ljava/util/List;)Lorg/bouncycastle/jsse/BCSNIHostName;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/jsse/BCSNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    :try_start_0
    invoke-static {p2, p0, p1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->checkEndpointID(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server\'s endpoint ID did not match the SNI host_name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {v0, p0, p1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->checkEndpointID(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method static checkExtendedTrust([Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jsse/provider/TransportData;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/TransportData;->getParameters()Lorg/bouncycastle/jsse/BCSSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/BCSSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->isNameSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/TransportData;->getHandshakeSession()Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-static {p0, v0, p2, p1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->checkEndpointID(Ljava/security/cert/X509Certificate;Ljava/lang/String;ZLorg/bouncycastle/jsse/BCExtendedSSLSession;)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "No handshake session"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->pkixParametersTemplate:Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->validateChain([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->checkExtendedTrust([Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Unable to build a CertPath: no PKIXBuilderParameters available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'authType\' must be a non-null, non-empty string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'chain\' must be a chain of at least one certificate"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static createKeyUsagesServer()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x11

    const/16 v2, 0x13

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x0

    filled-new-array {v3, v4, v1, v2, v5}, [I

    move-result-object v1

    invoke-static {v0, v5, v1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->addKeyUsageServer(Ljava/util/Map;I[I)V

    const/4 v1, 0x1

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->addKeyUsageServer(Ljava/util/Map;I[I)V

    const/16 v1, 0x10

    const/16 v2, 0x12

    const/4 v3, 0x7

    const/16 v4, 0x9

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->addKeyUsageServer(Ljava/util/Map;I[I)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static createTargetCertConstraints(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertSelector;)Ljava/security/cert/X509CertSelector;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager$1;-><init>(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertSelector;)V

    return-object v0
.end method

.method private getCertStoreParameters(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertStoreParameters;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->trustedCerts:Ljava/util/Set;

    aget-object v2, p2, p1

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method static getRequiredExtendedKeyUsage(Z)Lorg/bouncycastle/asn1/x509/KeyPurposeId;
    .locals 1

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->provTrustManagerCheckEKU:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    sget-object p0, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    return-object p0

    :cond_1
    sget-object p0, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_clientAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    return-object p0
.end method

.method static getRequiredKeyUsage(ZLjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->keyUsagesServer:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/security/cert/CertificateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported server authType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getTrustedCert(Ljava/security/cert/TrustAnchor;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "No certificate for TrustAnchor"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getTrustedCerts(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getTrustedChain(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->getTrustedCert(Ljava/security/cert/TrustAnchor;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    aput-object p0, v1, v0

    return-object v1
.end method

.method private validateChain([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)[Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3, v0}, Lorg/bouncycastle/jsse/provider/TransportData;->getAlgorithmConstraints(Lorg/bouncycastle/jsse/provider/TransportData;Z)Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    move-result-object v0

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->getStatusResponses(Lorg/bouncycastle/jsse/provider/TransportData;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->buildCertPath([Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Ljava/util/List;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-static {p4}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->getRequiredExtendedKeyUsage(Z)Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    move-result-object p3

    invoke-static {p4, p2}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->getRequiredKeyUsage(ZLjava/lang/String;)I

    move-result p2

    iget-object p4, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static {p4, v0, p1, p3, p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->checkCertPathExtras(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;[Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/x509/KeyPurposeId;I)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/cert/CertificateException;

    const-string p3, "Unable to construct a valid chain"

    invoke-direct {p2, p3, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljava/net/Socket;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljava/net/Socket;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/TransportData;Z)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->trustedCerts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method getExportX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->exportX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method
