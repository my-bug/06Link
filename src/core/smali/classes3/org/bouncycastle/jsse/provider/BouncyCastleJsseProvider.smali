.class public Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;
.super Ljava/security/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$BcJsseService;
    }
.end annotation


# static fields
.field private static final JSSE_CONFIG_PROPERTY:Ljava/lang/String; = "org.bouncycastle.jsse.config"

.field private static final PROVIDER_INFO:Ljava/lang/String; = "Bouncy Castle JSSE Provider Version 1.0.20"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "BCJSSE"

.field private static final PROVIDER_VERSION:D = 1.002

.field private static final attributeMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final creatorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/EngineCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final isInFipsMode:Z

.field private final serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$BcJsseService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->attributeMaps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "org.bouncycastle.jsse.config"

    const-string v1, "default"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->getPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-wide v0, 0x3ff0083126e978d5L    # 1.002

    const-string v2, "Bouncy Castle JSSE Provider Version 1.0.20"

    const-string v3, "BCJSSE"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->serviceMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->creatorMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fips"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->createCryptoProvider(Ljava/lang/String;)Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->configure(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->isInFipsMode:Z

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to set up JcaTlsCryptoProvider: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Ljava/security/Provider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;-><init>(ZLjava/security/Provider;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    const-wide v0, 0x3ff0083126e978d5L    # 1.002

    const-string v2, "Bouncy Castle JSSE Provider Version 1.0.20"

    const-string v3, "BCJSSE"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->serviceMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->creatorMap:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

    invoke-direct {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->configure(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->isInFipsMode:Z

    return-void
.end method

.method public constructor <init>(ZLjava/security/Provider;)V
    .locals 4

    const-wide v0, 0x3ff0083126e978d5L    # 1.002

    const-string v2, "Bouncy Castle JSSE Provider Version 1.0.20"

    const-string v3, "BCJSSE"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->serviceMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->creatorMap:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

    invoke-direct {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;-><init>()V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->configure(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->isInFipsMode:Z

    return-void
.end method

.method public constructor <init>(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)V
    .locals 4

    const-wide v0, 0x3ff0083126e978d5L    # 1.002

    const-string v2, "Bouncy Castle JSSE Provider Version 1.0.20"

    const-string v3, "BCJSSE"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->serviceMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->creatorMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->configure(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->isInFipsMode:Z

    return-void
.end method

.method static synthetic access$000([Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->specifyClientProtocols([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private configure(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)Z
    .locals 3

    new-instance v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$1;-><init>(Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)V

    const-string v1, "KeyManagerFactory.X.509"

    const-string v2, "org.bouncycastle.jsse.provider.KeyManagerFactory"

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAlgorithmImplementation(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/EngineCreator;)V

    const-string v0, "Alg.Alias.KeyManagerFactory.X509"

    const-string v1, "X.509"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAlias(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyManagerFactory.PKIX"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAlias(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$2;-><init>(Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)V

    const-string v1, "TrustManagerFactory.PKIX"

    const-string v2, "org.bouncycastle.jsse.provider.TrustManagerFactory"

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAlgorithmImplementation(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/EngineCreator;)V

    const-string v0, "Alg.Alias.TrustManagerFactory.X.509"

    const-string v1, "PKIX"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAlias(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.TrustManagerFactory.X509"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAlias(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$3;-><init>(Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)V

    const-string v1, "SSLContext.TLS"

    const-string v2, "org.bouncycastle.jsse.provider.SSLContext.TLS"

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAlgorithmImplementation(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/EngineCreator;)V

    new-instance v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$4;-><init>(Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)V

    const-string v1, "SSLContext.TLSV1"

    const-string v2, "org.bouncycastle.jsse.provider.SSLContext.TLSv1"

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAlgorithmImplementation(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/EngineCreator;)V

    new-instance v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$5;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$5;-><init>(Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)V

    const-string v1, "SSLContext.TLSV1.1"

    const-string v2, "org.bouncycastle.jsse.provider.SSLContext.TLSv1_1"

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAlgorithmImplementation(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/EngineCreator;)V

    new-instance v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$6;-><init>(Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)V

    const-string v1, "SSLContext.TLSV1.2"

    const-string v2, "org.bouncycastle.jsse.provider.SSLContext.TLSv1_2"

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAlgorithmImplementation(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/EngineCreator;)V

    new-instance v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$7;-><init>(Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)V

    const-string v1, "SSLContext.TLSV1.3"

    const-string v2, "org.bouncycastle.jsse.provider.SSLContext.TLSv1_3"

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAlgorithmImplementation(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/EngineCreator;)V

    new-instance v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$8;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$8;-><init>(Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;)V

    const-string p2, "SSLContext.DEFAULT"

    const-string v1, "org.bouncycastle.jsse.provider.SSLContext.Default"

    invoke-virtual {p0, p2, v1, v0}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAlgorithmImplementation(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/EngineCreator;)V

    const-string p2, "Alg.Alias.SSLContext.SSL"

    const-string v0, "TLS"

    invoke-virtual {p0, p2, v0}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAlias(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Alg.Alias.SSLContext.SSLV3"

    const-string v0, "TLSV1"

    invoke-virtual {p0, p2, v0}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAlias(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private createCryptoProvider(Ljava/lang/String;)Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "\': "

    const-string v1, "unable to create Provider/JcaTlsCryptoProvider class \'"

    const-string v2, "unrecognized class: "

    const-string v3, "default"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

    invoke-direct {p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;-><init>()V

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

    invoke-direct {p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;-><init>()V

    invoke-virtual {p1, v3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

    move-result-object p1

    return-object p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

    if-eqz v4, :cond_2

    check-cast v3, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

    return-object v3

    :cond_2
    instance-of v4, v3, Ljava/security/Provider;

    if-eqz v4, :cond_3

    new-instance v2, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

    invoke-direct {v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;-><init>()V

    check-cast v3, Ljava/security/Provider;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to find Provider/JcaTlsCryptoProvider class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doPut(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$9;-><init>(Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static declared-synchronized getAttributeMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->attributeMaps:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    invoke-interface {v1, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static getPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$10;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$10;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static varargs specifyClientProtocols([Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method addAlgorithmImplementation(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/EngineCreator;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ImplementedIn"

    const-string v1, "Software"

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->doPut(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->creatorMap:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "duplicate provider key ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") found"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method addAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->doPut(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duplicate provider key ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->doPut(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "duplicate provider attribute key ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") found"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public configure(Ljava/lang/String;)Ljava/security/Provider;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 11

    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->serviceMap:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$BcJsseService;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Alg.Alias."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0, v7}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v9}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v2, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->serviceMap:Ljava/util/Map;

    invoke-interface {p2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$BcJsseService;

    invoke-static {v2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->getAttributeMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iget-object p2, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->creatorMap:Ljava/util/Map;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Lorg/bouncycastle/jsse/provider/EngineCreator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    move-object v2, p1

    :try_start_1
    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$BcJsseService;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lorg/bouncycastle/jsse/provider/EngineCreator;)V

    iget-object p1, v1, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->serviceMap:Ljava/util/Map;

    invoke-interface {p1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move-object v1, p0

    iget-object p1, v1, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->serviceMap:Ljava/util/Map;

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider$BcJsseService;

    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, p0

    :goto_2
    move-object p1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_6
    move-object v1, p0

    return-object v0
.end method

.method public final declared-synchronized getServices()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider$Service;

    invoke-virtual {v2}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public isFipsMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;->isInFipsMode:Z

    return v0
.end method
