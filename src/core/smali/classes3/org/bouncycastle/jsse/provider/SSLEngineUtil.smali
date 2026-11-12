.class abstract Lorg/bouncycastle/jsse/provider/SSLEngineUtil;
.super Ljava/lang/Object;


# static fields
.field private static final getHandshakeSession:Ljava/lang/reflect/Method;

.field private static final getSSLParameters:Ljava/lang/reflect/Method;

.field private static final useEngine8:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "javax.net.ssl.SSLEngine"

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getMethods(Ljava/lang/String;)[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "getHandshakeSession"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLEngineUtil;->getHandshakeSession:Ljava/lang/reflect/Method;

    const-string v1, "getSSLParameters"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLEngineUtil;->getSSLParameters:Ljava/lang/reflect/Method;

    const-string v1, "getApplicationProtocol"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->hasMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/SSLEngineUtil;->useEngine8:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Lorg/bouncycastle/jsse/provider/ContextData;)Ljavax/net/ssl/SSLEngine;
    .locals 1

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/SSLEngineUtil;->useEngine8:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine_8;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine_8;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;)V

    return-object v0
.end method

.method static create(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/SSLEngineUtil;->useEngine8:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine_8;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine_8;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;I)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLEngine;-><init>(Lorg/bouncycastle/jsse/provider/ContextData;Ljava/lang/String;I)V

    return-object v0
.end method

.method static importHandshakeSession(Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/BCExtendedSSLSession;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/jsse/BCSSLEngine;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jsse/BCSSLEngine;

    invoke-interface {p0}, Lorg/bouncycastle/jsse/BCSSLEngine;->getBCHandshakeSession()Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLEngineUtil;->getHandshakeSession:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->invokeGetter(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLSession;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/SSLSessionUtil;->importSSLSession(Ljavax/net/ssl/SSLSession;)Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static importSSLParameters(Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/BCSSLParameters;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/jsse/BCSSLEngine;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jsse/BCSSLEngine;

    invoke-interface {p0}, Lorg/bouncycastle/jsse/BCSSLEngine;->getParameters()Lorg/bouncycastle/jsse/BCSSLParameters;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_3

    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLEngineUtil;->getSSLParameters:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->invokeGetter(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLParameters;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->importSSLParameters(Ljavax/net/ssl/SSLParameters;)Lorg/bouncycastle/jsse/BCSSLParameters;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SSLEngine.getSSLParameters returned null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
