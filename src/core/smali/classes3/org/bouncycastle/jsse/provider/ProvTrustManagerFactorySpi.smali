.class Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;
.super Ljavax/net/ssl/TrustManagerFactorySpi;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final provKeyStoreTypeCompat:Z


# instance fields
.field protected final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field protected final isInFipsMode:Z

.field protected x509TrustManager:Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->LOG:Ljava/util/logging/Logger;

    const-string v0, "keystore.type.compat"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSecurityProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->provKeyStoreTypeCompat:Z

    return-void
.end method

.method constructor <init>(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->isInFipsMode:Z

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method

.method private static collectTrustAnchor(Ljava/util/Set;Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/security/cert/Certificate;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/cert/TrustAnchor;

    check-cast p1, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static createTrustStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->getTrustStoreType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "javax.net.ssl.trustStoreProvider"

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getStringSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    return-object p0
.end method

.method static getDefaultTrustStore()Ljava/security/KeyStore;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Initializing default trust store from path: "

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->provKeyStoreTypeCompat:Z

    if-eqz v2, :cond_0

    const-string v2, "pkcs12"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "javax.net.ssl.trustStore"

    invoke-static {v3}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getStringSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NONE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_2
    const-string v3, "java.home"

    invoke-static {v3}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getStringSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/lib/security/jssecacerts"

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v7, "jks"

    if-eqz v6, :cond_4

    if-eqz v2, :cond_3

    move-object v1, v7

    :cond_3
    move-object v3, v4

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/lib/security/cacerts"

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v2, :cond_6

    move-object v1, v7

    goto :goto_2

    :cond_5
    :goto_1
    move-object v3, v5

    :cond_6
    :goto_2
    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->createTrustStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const-string v2, "javax.net.ssl.trustStorePassword"

    invoke-static {v2}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getSensitiveStringSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v5

    :goto_3
    if-nez v3, :cond_8

    :try_start_0
    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Initializing default trust store as empty"

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_4

    :cond_8
    sget-object v4, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->LOG:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_4
    :try_start_1
    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    goto :goto_6

    :catch_0
    :try_start_2
    const-string v1, "BCFKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_9
    return-object v1

    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_a
    throw v0
.end method

.method private static getTrustAnchors(Ljava/security/KeyStore;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    :goto_1
    invoke-static {v0, v2}, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->collectTrustAnchor(Ljava/util/Set;Ljava/security/cert/Certificate;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private static getTrustStoreType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "javax.net.ssl.trustStoreType"

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getStringSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->x509TrustManager:Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->getExportX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TrustManagerFactory not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/KeyStore;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const-string v0, "Skipped default trust store"

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->getDefaultTrustStore()Ljava/security/KeyStore;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Failed to load default trust store"

    invoke-direct {v0, v1, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception v1

    sget-object v2, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->getTrustAnchors(Ljava/security/KeyStore;)Ljava/util/Set;

    move-result-object p1

    :try_start_1
    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;

    iget-boolean v1, p0, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->isInFipsMode:Z

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;-><init>(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/util/Set;)V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->x509TrustManager:Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_4

    return-void

    :catch_4
    move-exception p1

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Failed to create trust manager"

    invoke-direct {v0, v1, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/net/ssl/CertPathTrustManagerParameters;

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/net/ssl/CertPathTrustManagerParameters;

    invoke-virtual {p1}, Ljavax/net/ssl/CertPathTrustManagerParameters;->getParameters()Ljava/security/cert/CertPathParameters;

    move-result-object p1

    instance-of v0, p1, Ljava/security/cert/PKIXParameters;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;

    iget-boolean v1, p0, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->isInFipsMode:Z

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    check-cast p1, Ljava/security/cert/PKIXParameters;

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;-><init>(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/security/cert/PKIXParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvTrustManagerFactorySpi;->x509TrustManager:Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "parameters must inherit from PKIXParameters"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "spec cannot be null"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown spec: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
