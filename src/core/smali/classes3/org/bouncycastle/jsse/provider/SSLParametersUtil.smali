.class abstract Lorg/bouncycastle/jsse/provider/SSLParametersUtil;
.super Ljava/lang/Object;


# static fields
.field private static final getAlgorithmConstraints:Ljava/lang/reflect/Method;

.field private static final getApplicationProtocols:Ljava/lang/reflect/Method;

.field private static final getEnableRetransmissions:Ljava/lang/reflect/Method;

.field private static final getEndpointIdentificationAlgorithm:Ljava/lang/reflect/Method;

.field private static final getMaximumPacketSize:Ljava/lang/reflect/Method;

.field private static final getNamedGroups:Ljava/lang/reflect/Method;

.field private static final getSNIMatchers:Ljava/lang/reflect/Method;

.field private static final getServerNames:Ljava/lang/reflect/Method;

.field private static final getSignatureSchemes:Ljava/lang/reflect/Method;

.field private static final getUseCipherSuitesOrder:Ljava/lang/reflect/Method;

.field private static final setAlgorithmConstraints:Ljava/lang/reflect/Method;

.field private static final setApplicationProtocols:Ljava/lang/reflect/Method;

.field private static final setEnableRetransmissions:Ljava/lang/reflect/Method;

.field private static final setEndpointIdentificationAlgorithm:Ljava/lang/reflect/Method;

.field private static final setMaximumPacketSize:Ljava/lang/reflect/Method;

.field private static final setNamedGroups:Ljava/lang/reflect/Method;

.field private static final setSNIMatchers:Ljava/lang/reflect/Method;

.field private static final setServerNames:Ljava/lang/reflect/Method;

.field private static final setSignatureSchemes:Ljava/lang/reflect/Method;

.field private static final setUseCipherSuitesOrder:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "javax.net.ssl.SSLParameters"

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getMethods(Ljava/lang/String;)[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "getAlgorithmConstraints"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getAlgorithmConstraints:Ljava/lang/reflect/Method;

    const-string v1, "setAlgorithmConstraints"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setAlgorithmConstraints:Ljava/lang/reflect/Method;

    const-string v1, "getApplicationProtocols"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getApplicationProtocols:Ljava/lang/reflect/Method;

    const-string v1, "setApplicationProtocols"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setApplicationProtocols:Ljava/lang/reflect/Method;

    const-string v1, "getEnableRetransmissions"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getEnableRetransmissions:Ljava/lang/reflect/Method;

    const-string v1, "setEnableRetransmissions"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setEnableRetransmissions:Ljava/lang/reflect/Method;

    const-string v1, "getEndpointIdentificationAlgorithm"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getEndpointIdentificationAlgorithm:Ljava/lang/reflect/Method;

    const-string v1, "setEndpointIdentificationAlgorithm"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setEndpointIdentificationAlgorithm:Ljava/lang/reflect/Method;

    const-string v1, "getMaximumPacketSize"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getMaximumPacketSize:Ljava/lang/reflect/Method;

    const-string v1, "setMaximumPacketSize"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setMaximumPacketSize:Ljava/lang/reflect/Method;

    const-string v1, "getNamedGroups"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getNamedGroups:Ljava/lang/reflect/Method;

    const-string v1, "setNamedGroups"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setNamedGroups:Ljava/lang/reflect/Method;

    const-string v1, "getServerNames"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getServerNames:Ljava/lang/reflect/Method;

    const-string v1, "setServerNames"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setServerNames:Ljava/lang/reflect/Method;

    const-string v1, "getSignatureSchemes"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getSignatureSchemes:Ljava/lang/reflect/Method;

    const-string v1, "setSignatureSchemes"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setSignatureSchemes:Ljava/lang/reflect/Method;

    const-string v1, "getSNIMatchers"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getSNIMatchers:Ljava/lang/reflect/Method;

    const-string v1, "setSNIMatchers"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setSNIMatchers:Ljava/lang/reflect/Method;

    const-string v1, "getUseCipherSuitesOrder"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getUseCipherSuitesOrder:Ljava/lang/reflect/Method;

    const-string v1, "setUseCipherSuitesOrder"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->findMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setUseCipherSuitesOrder:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->invokeGetter(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getParameters(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;)Lorg/bouncycastle/jsse/BCSSLParameters;
    .locals 3

    new-instance v0, Lorg/bouncycastle/jsse/BCSSLParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jsse/BCSSLParameters;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setNeedClientAuth(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getWantClientAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setWantClientAuth(Z)V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getAlgorithmConstraints()Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setAlgorithmConstraints(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getServerNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setServerNames(Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getSNIMatchers()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setSNIMatchers(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getUseCipherSuitesOrder()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setUseCipherSuitesOrder(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getEnableRetransmissions()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setEnableRetransmissions(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getMaximumPacketSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setMaximumPacketSize(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getSignatureSchemes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setSignatureSchemes([Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getSignatureSchemesCert()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setSignatureSchemesCert([Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getNamedGroups()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/jsse/BCSSLParameters;->setNamedGroups([Ljava/lang/String;)V

    return-object v0
.end method

.method static getSSLParameters(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;)Ljavax/net/ssl/SSLParameters;
    .locals 3

    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/net/ssl/SSLParameters;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getWantClientAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    :goto_0
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setAlgorithmConstraints:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getAlgorithmConstraints()Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jsse/provider/JsseUtils_7;->exportAlgorithmConstraintsDynamic(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->set(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :cond_1
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setEndpointIdentificationAlgorithm:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->set(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :cond_2
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setServerNames:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getServerNames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->exportSNIServerNamesDynamic(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->set(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :cond_3
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setSNIMatchers:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getSNIMatchers()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->exportSNIMatchersDynamic(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->set(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :cond_4
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setUseCipherSuitesOrder:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getUseCipherSuitesOrder()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->set(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :cond_5
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setApplicationProtocols:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->set(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :cond_6
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setEnableRetransmissions:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getEnableRetransmissions()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->set(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :cond_7
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setMaximumPacketSize:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getMaximumPacketSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->set(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :cond_8
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setSignatureSchemes:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getSignatureSchemes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->set(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :cond_9
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->setNamedGroups:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getNamedGroups()[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->set(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :cond_a
    return-object v0
.end method

.method static importSSLParameters(Ljavax/net/ssl/SSLParameters;)Lorg/bouncycastle/jsse/BCSSLParameters;
    .locals 3

    new-instance v0, Lorg/bouncycastle/jsse/BCSSLParameters;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jsse/BCSSLParameters;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setNeedClientAuth(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setWantClientAuth(Z)V

    :goto_0
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getEndpointIdentificationAlgorithm:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    invoke-static {p0, v1}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getAlgorithmConstraints:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    invoke-static {p0, v1}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/JsseUtils_7;->importAlgorithmConstraintsDynamic(Ljava/lang/Object;)Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setAlgorithmConstraints(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)V

    :cond_2
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getServerNames:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    invoke-static {p0, v1}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->importSNIServerNamesDynamic(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setServerNames(Ljava/util/List;)V

    :cond_3
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getSNIMatchers:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_4

    invoke-static {p0, v1}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->importSNIMatchersDynamic(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setSNIMatchers(Ljava/util/Collection;)V

    :cond_4
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getUseCipherSuitesOrder:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_5

    invoke-static {p0, v1}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setUseCipherSuitesOrder(Z)V

    :cond_5
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getApplicationProtocols:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_6

    invoke-static {p0, v1}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    :cond_6
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getEnableRetransmissions:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    invoke-static {p0, v1}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setEnableRetransmissions(Z)V

    :cond_7
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getMaximumPacketSize:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_8

    invoke-static {p0, v1}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setMaximumPacketSize(I)V

    :cond_8
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getSignatureSchemes:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_9

    invoke-static {p0, v1}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/BCSSLParameters;->setSignatureSchemes([Ljava/lang/String;)V

    :cond_9
    sget-object v1, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getNamedGroups:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_a

    invoke-static {p0, v1}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/jsse/BCSSLParameters;->setNamedGroups([Ljava/lang/String;)V

    :cond_a
    return-object v0
.end method

.method private static set(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/ReflectionUtil;->invokeSetter(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    return-void
.end method

.method static setParameters(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Lorg/bouncycastle/jsse/BCSSLParameters;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setCipherSuites([Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setProtocols([Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getNeedClientAuth()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setNeedClientAuth(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getWantClientAuth()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setWantClientAuth(Z)V

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getAlgorithmConstraints()Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setAlgorithmConstraints(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)V

    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getServerNames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setServerNames(Ljava/util/List;)V

    :cond_5
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getSNIMatchers()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setSNIMatchers(Ljava/util/Collection;)V

    :cond_6
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getUseCipherSuitesOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setUseCipherSuitesOrder(Z)V

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getEnableRetransmissions()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setEnableRetransmissions(Z)V

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getMaximumPacketSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setMaximumPacketSize(I)V

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getSignatureSchemes()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setSignatureSchemes([Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getNamedGroups()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setNamedGroups([Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/BCSSLParameters;->getSignatureSchemesCert()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setSignatureSchemesCert([Ljava/lang/String;)V

    return-void
.end method

.method static setSSLParameters(Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setCipherSuites([Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setProtocols([Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setNeedClientAuth(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setWantClientAuth(Z)V

    :goto_0
    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getEndpointIdentificationAlgorithm:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    invoke-static {p1, v0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getAlgorithmConstraints:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    invoke-static {p1, v0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils_7;->importAlgorithmConstraintsDynamic(Ljava/lang/Object;)Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setAlgorithmConstraints(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)V

    :cond_4
    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getServerNames:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    invoke-static {p1, v0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->importSNIServerNamesDynamic(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setServerNames(Ljava/util/List;)V

    :cond_5
    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getSNIMatchers:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    invoke-static {p1, v0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->importSNIMatchersDynamic(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setSNIMatchers(Ljava/util/Collection;)V

    :cond_6
    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getUseCipherSuitesOrder:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    invoke-static {p1, v0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setUseCipherSuitesOrder(Z)V

    :cond_7
    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getApplicationProtocols:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_8

    invoke-static {p1, v0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    :cond_8
    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getEnableRetransmissions:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    invoke-static {p1, v0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setEnableRetransmissions(Z)V

    :cond_9
    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getMaximumPacketSize:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_a

    invoke-static {p1, v0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setMaximumPacketSize(I)V

    :cond_a
    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getSignatureSchemes:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    invoke-static {p1, v0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setSignatureSchemes([Ljava/lang/String;)V

    :cond_b
    sget-object v0, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->getNamedGroups:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_c

    invoke-static {p1, v0}, Lorg/bouncycastle/jsse/provider/SSLParametersUtil;->get(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->setNamedGroups([Ljava/lang/String;)V

    :cond_c
    return-void
.end method
