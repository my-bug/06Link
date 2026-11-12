.class Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;
.super Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;


# static fields
.field static final INSTANCE_TLS:Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;

.field static final INSTANCE_X509:Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;


# instance fields
.field private final enableTLSAlgorithms:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;-><init>(Z)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;->INSTANCE_TLS:Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;-><init>(Z)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;->INSTANCE_X509:Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;->enableTLSAlgorithms:Z

    return-void
.end method


# virtual methods
.method public decompose(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "TLS_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;->getCipherSuiteInfo(Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->getCipherSuite()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/tls/CipherSuite;->isSCSV(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvAlgorithmDecomposer;->enableTLSAlgorithms:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->getDecompositionTLS()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/CipherSuiteInfo;->getDecompositionX509()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;->decompose(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
