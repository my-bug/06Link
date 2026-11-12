.class abstract Lorg/bouncycastle/jsse/provider/SSLSessionUtil;
.super Ljava/lang/Object;


# static fields
.field private static final exportSSLSessionConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field

.field private static final extendedSSLSessionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final importSSLSessionConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lorg/bouncycastle/jsse/BCExtendedSSLSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "getRequestedServerNames"

    const-string v1, "javax.net.ssl.ExtendedSSLSession"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v2

    :goto_0
    sput-object v3, Lorg/bouncycastle/jsse/provider/SSLSessionUtil;->extendedSSLSessionClass:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getMethods(Ljava/lang/String;)[Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5, v0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->hasMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "org.bouncycastle.jsse.provider.ExportSSLSession_8"

    goto :goto_1

    :cond_0
    const-string v5, "org.bouncycastle.jsse.provider.ExportSSLSession_7"

    :goto_1
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getDeclaredConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    :cond_1
    move-object v5, v2

    :goto_2
    sput-object v5, Lorg/bouncycastle/jsse/provider/SSLSessionUtil;->exportSSLSessionConstructor:Ljava/lang/reflect/Constructor;

    sget-object v5, Lorg/bouncycastle/jsse/provider/SSLSessionUtil;->extendedSSLSessionClass:Ljava/lang/Class;

    if-eqz v5, :cond_3

    :try_start_2
    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getMethods(Ljava/lang/String;)[Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1, v0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->hasMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "org.bouncycastle.jsse.provider.ImportSSLSession_8"

    goto :goto_3

    :cond_2
    const-string v0, "org.bouncycastle.jsse.provider.ImportSSLSession_7"

    :goto_3
    new-array v1, v4, [Ljava/lang/Class;

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getDeclaredConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v0

    :catch_2
    :cond_3
    sput-object v2, Lorg/bouncycastle/jsse/provider/SSLSessionUtil;->importSSLSessionConstructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static exportSSLSession(Lorg/bouncycastle/jsse/BCExtendedSSLSession;)Ljavax/net/ssl/SSLSession;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jsse/provider/ImportSSLSession;

    invoke-interface {p0}, Lorg/bouncycastle/jsse/provider/ImportSSLSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLSessionUtil;->exportSSLSessionConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    new-instance v0, Lorg/bouncycastle/jsse/provider/ExportSSLSession_5;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/ExportSSLSession_5;-><init>(Lorg/bouncycastle/jsse/BCExtendedSSLSession;)V

    return-object v0
.end method

.method static importSSLSession(Ljavax/net/ssl/SSLSession;)Lorg/bouncycastle/jsse/BCExtendedSSLSession;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/jsse/provider/ExportSSLSession;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/jsse/provider/ExportSSLSession;

    invoke-interface {p0}, Lorg/bouncycastle/jsse/provider/ExportSSLSession;->unwrap()Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLSessionUtil;->importSSLSessionConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_2

    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLSessionUtil;->extendedSSLSessionClass:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jsse/BCExtendedSSLSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    new-instance v0, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/ImportSSLSession_5;-><init>(Ljavax/net/ssl/SSLSession;)V

    return-object v0
.end method
