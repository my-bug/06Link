.class Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;
.super Lorg/bouncycastle/jsse/provider/AbstractAlgorithmConstraints;


# static fields
.field static final DEFAULT:Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

.field private static final DEFAULT_CERTPATH_DISABLED_ALGORITHMS:Ljava/lang/String; = "MD2, MD5, SHA1 jdkCA & usage TLSServer, RSA keySize < 1024, DSA keySize < 1024, EC keySize < 224, SHA1 usage SignedJAR & denyAfter 2019-01-01"

.field private static final DEFAULT_TLS_DISABLED_ALGORITHMS:Ljava/lang/String; = "SSLv3, TLSv1, TLSv1.1, DTLSv1.0, RC4, DES, MD5withRSA, DH keySize < 1024, EC keySize < 224, 3DES_EDE_CBC, anon, NULL, ECDH"

.field static final DEFAULT_TLS_ONLY:Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final PROPERTY_CERTPATH_DISABLED_ALGORITHMS:Ljava/lang/String; = "jdk.certpath.disabledAlgorithms"

.field private static final PROPERTY_TLS_DISABLED_ALGORITHMS:Ljava/lang/String; = "jdk.tls.disabledAlgorithms"

.field private static final provTlsDisabledAlgorithms:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;

.field private static final provX509DisabledAlgorithms:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;


# instance fields
.field private final configAlgorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

.field private final enableX509Constraints:Z

.field private final supportedSignatureAlgorithms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;->INSTANCE_TLS:Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;

    const-string v1, "jdk.tls.disabledAlgorithms"

    const-string v2, "SSLv3, TLSv1, TLSv1.1, DTLSv1.0, RC4, DES, MD5withRSA, DH keySize < 1024, EC keySize < 224, 3DES_EDE_CBC, anon, NULL, ECDH"

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->create(Lorg/bouncycastle/jsse/provider/AlgorithmDecomposer;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->provTlsDisabledAlgorithms:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;->INSTANCE_X509:Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;

    const-string v1, "jdk.certpath.disabledAlgorithms"

    const-string v2, "MD2, MD5, SHA1 jdkCA & usage TLSServer, RSA keySize < 1024, DSA keySize < 1024, EC keySize < 224, SHA1 usage SignedJAR & denyAfter 2019-01-01"

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->create(Lorg/bouncycastle/jsse/provider/AlgorithmDecomposer;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->provX509DisabledAlgorithms:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;-><init>(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Z)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->DEFAULT:Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;-><init>(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Z)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->DEFAULT_TLS_ONLY:Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jsse/provider/AbstractAlgorithmConstraints;-><init>(Lorg/bouncycastle/jsse/provider/AlgorithmDecomposer;)V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->configAlgorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->supportedSignatureAlgorithms:Ljava/util/Set;

    iput-boolean p2, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->enableX509Constraints:Z

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;[Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jsse/provider/AbstractAlgorithmConstraints;-><init>(Lorg/bouncycastle/jsse/provider/AlgorithmDecomposer;)V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->configAlgorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->asUnmodifiableSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->supportedSignatureAlgorithms:Ljava/util/Set;

    iput-boolean p3, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->enableX509Constraints:Z

    return-void
.end method

.method private getAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isSupportedSignatureAlgorithm(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->supportedSignatureAlgorithms:Ljava/util/Set;

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->containsIgnoreCase(Ljava/util/Set;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->checkPrimitives(Ljava/util/Set;)V

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->checkAlgorithmName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->supportedSignatureAlgorithms:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->getAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->isSupportedSignatureAlgorithm(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->LOG:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Signature algorithm \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not in supported signature algorithms"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    move-object p2, v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->configAlgorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->provTlsDisabledAlgorithms:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->enableX509Constraints:Z

    if-eqz v0, :cond_5

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->provX509DisabledAlgorithms:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->checkPrimitives(Ljava/util/Set;)V

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->checkAlgorithmName(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->checkKey(Ljava/security/Key;)V

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->supportedSignatureAlgorithms:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->getAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->isSupportedSignatureAlgorithm(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->LOG:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Signature algorithm \'"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not in supported signature algorithms"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    move-object p2, v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->configAlgorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->provTlsDisabledAlgorithms:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->enableX509Constraints:Z

    if-eqz v0, :cond_5

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->provX509DisabledAlgorithms:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public permits(Ljava/util/Set;Ljava/security/Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;",
            ">;",
            "Ljava/security/Key;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->checkPrimitives(Ljava/util/Set;)V

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->checkKey(Ljava/security/Key;)V

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->configAlgorithmConstraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->provTlsDisabledAlgorithms:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->enableX509Constraints:Z

    if-eqz v0, :cond_2

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmConstraints;->provX509DisabledAlgorithms:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
