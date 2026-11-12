.class abstract Lorg/bouncycastle/jsse/provider/FipsUtils;
.super Ljava/lang/Object;


# static fields
.field private static final FIPS_SUPPORTED_CIPHERSUITES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIPS_SUPPORTED_PROTOCOLS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final provAllowGCMCiphersIn12:Z

.field private static final provAllowRSAKeyExchange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.bouncycastle.jsse.fips.allowGCMCiphersIn12"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/FipsUtils;->provAllowGCMCiphersIn12:Z

    const-string v0, "org.bouncycastle.jsse.fips.allowRSAKeyExchange"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/FipsUtils;->provAllowRSAKeyExchange:Z

    invoke-static {}, Lorg/bouncycastle/jsse/provider/FipsUtils;->createFipsSupportedCipherSuites()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/FipsUtils;->FIPS_SUPPORTED_CIPHERSUITES:Ljava/util/Set;

    invoke-static {}, Lorg/bouncycastle/jsse/provider/FipsUtils;->createFipsSupportedProtocols()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/FipsUtils;->FIPS_SUPPORTED_PROTOCOLS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFipsSupportedCipherSuites()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "TLS_AES_128_CCM_8_SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_AES_128_CCM_SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_AES_128_GCM_SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_AES_256_GCM_SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CCM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CCM_8"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CCM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CCM_8"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CCM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CCM_8"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CCM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CCM_8"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lorg/bouncycastle/jsse/provider/FipsUtils;->provAllowGCMCiphersIn12:Z

    if-eqz v1, :cond_0

    const-string v2, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean v2, Lorg/bouncycastle/jsse/provider/FipsUtils;->provAllowRSAKeyExchange:Z

    if-eqz v2, :cond_1

    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS_RSA_WITH_AES_128_CCM"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS_RSA_WITH_AES_128_CCM_8"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS_RSA_WITH_AES_256_CCM"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS_RSA_WITH_AES_256_CCM_8"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static createFipsSupportedProtocols()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "TLSv1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLSv1.1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLSv1.2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLSv1.3"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static isFipsCipherSuite(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lorg/bouncycastle/jsse/provider/FipsUtils;->FIPS_SUPPORTED_CIPHERSUITES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isFipsNamedGroup(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static isFipsProtocol(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lorg/bouncycastle/jsse/provider/FipsUtils;->FIPS_SUPPORTED_PROTOCOLS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isFipsSignatureScheme(I)Z
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x201 -> :sswitch_0
        0x202 -> :sswitch_0
        0x203 -> :sswitch_0
        0x301 -> :sswitch_0
        0x302 -> :sswitch_0
        0x303 -> :sswitch_0
        0x401 -> :sswitch_0
        0x402 -> :sswitch_0
        0x403 -> :sswitch_0
        0x501 -> :sswitch_0
        0x503 -> :sswitch_0
        0x601 -> :sswitch_0
        0x603 -> :sswitch_0
        0x804 -> :sswitch_0
        0x805 -> :sswitch_0
        0x806 -> :sswitch_0
        0x809 -> :sswitch_0
        0x80a -> :sswitch_0
        0x80b -> :sswitch_0
    .end sparse-switch
.end method

.method static removeNonFipsCipherSuites(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/jsse/provider/FipsUtils;->FIPS_SUPPORTED_CIPHERSUITES:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static removeNonFipsProtocols(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/jsse/provider/FipsUtils;->FIPS_SUPPORTED_PROTOCOLS:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method
