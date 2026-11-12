.class abstract Lorg/bouncycastle/jsse/provider/PKIXUtil;
.super Ljava/lang/Object;


# static fields
.field private static final pkixRevocationCheckerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lorg/bouncycastle/jsse/provider/PKIXUtil;->pkixRevocationCheckerClass:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addStatusResponses(Ljava/security/cert/CertPathBuilder;Ljava/security/cert/PKIXBuilderParameters;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertPathBuilder;",
            "Ljava/security/cert/PKIXBuilderParameters;",
            "Ljava/util/Map<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;)V"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/jsse/provider/PKIXUtil;->pkixRevocationCheckerClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->addStatusResponses(Ljava/security/cert/CertPathBuilder;Ljava/security/cert/PKIXBuilderParameters;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
