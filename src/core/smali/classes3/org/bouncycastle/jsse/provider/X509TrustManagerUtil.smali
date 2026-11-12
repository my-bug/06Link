.class abstract Lorg/bouncycastle/jsse/provider/X509TrustManagerUtil;
.super Ljava/lang/Object;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final exportX509TrustManagerConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final importX509TrustManagerConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final x509ExtendedTrustManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "javax.net.ssl.X509ExtendedTrustManager"

    const-class v1, Lorg/bouncycastle/jsse/provider/X509TrustManagerUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/X509TrustManagerUtil;->LOG:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    sput-object v2, Lorg/bouncycastle/jsse/provider/X509TrustManagerUtil;->x509ExtendedTrustManagerClass:Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getMethods(Ljava/lang/String;)[Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "org.bouncycastle.jsse.provider.ExportX509TrustManager_7"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getDeclaredConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :cond_0
    move-object v0, v1

    :goto_1
    sput-object v0, Lorg/bouncycastle/jsse/provider/X509TrustManagerUtil;->exportX509TrustManagerConstructor:Ljava/lang/reflect/Constructor;

    sget-object v0, Lorg/bouncycastle/jsse/provider/X509TrustManagerUtil;->x509ExtendedTrustManagerClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    :try_start_2
    const-string v4, "org.bouncycastle.jsse.provider.ImportX509TrustManager_7"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getDeclaredConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    sput-object v1, Lorg/bouncycastle/jsse/provider/X509TrustManagerUtil;->importX509TrustManagerConstructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static exportX509TrustManager(Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager;

    invoke-interface {p0}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager;->unwrap()Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/jsse/provider/X509TrustManagerUtil;->exportX509TrustManagerConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    new-instance v0, Lorg/bouncycastle/jsse/provider/ExportX509TrustManager_5;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/ExportX509TrustManager_5;-><init>(Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;)V

    return-object v0
.end method

.method static importX509TrustManager(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Ljavax/net/ssl/X509TrustManager;)Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;
    .locals 3

    sget-object v0, Lorg/bouncycastle/jsse/provider/X509TrustManagerUtil;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Importing X509TrustManager implementation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    instance-of v0, p2, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    return-object p2

    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/jsse/provider/ExportX509TrustManager;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/jsse/provider/ExportX509TrustManager;

    invoke-interface {p2}, Lorg/bouncycastle/jsse/provider/ExportX509TrustManager;->unwrap()Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lorg/bouncycastle/jsse/provider/X509TrustManagerUtil;->importX509TrustManagerConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_2

    sget-object v1, Lorg/bouncycastle/jsse/provider/X509TrustManagerUtil;->x509ExtendedTrustManagerClass:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jsse/BCX509ExtendedTrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    new-instance v0, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ImportX509TrustManager_5;-><init>(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Ljavax/net/ssl/X509TrustManager;)V

    return-object v0
.end method
