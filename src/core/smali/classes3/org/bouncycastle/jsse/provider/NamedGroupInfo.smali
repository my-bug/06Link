.class Lorg/bouncycastle/jsse/provider/NamedGroupInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;,
        Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;,
        Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;,
        Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;
    }
.end annotation


# static fields
.field private static final CANDIDATES_DEFAULT:[I

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final PROPERTY_NAMED_GROUPS:Ljava/lang/String; = "jdk.tls.namedGroups"


# instance fields
.field private final algorithmParameters:Ljava/security/AlgorithmParameters;

.field private final all:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field private final enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->LOG:Ljava/util/logging/Logger;

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->CANDIDATES_DEFAULT:[I

    return-void

    :array_0
    .array-data 4
        0x1d
        0x1e
        0x17
        0x18
        0x19
        0x1f
        0x20
        0x21
        0x100
        0x101
        0x102
    .end array-data
.end method

.method constructor <init>(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;Ljava/security/AlgorithmParameters;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->all:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->algorithmParameters:Ljava/security/AlgorithmParameters;

    iput-boolean p3, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->enabled:Z

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;[I)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getNamedGroupInfos(Ljava/util/Map;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static addNamedGroup(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;ZZLjava/util/Map;Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/jsse/provider/NamedGroupInfo;",
            ">;",
            "Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;",
            ")V"
        }
    .end annotation

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->namedGroup:I
    invoke-static {p5}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->access$500(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)I

    move-result v0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/FipsUtils;->isFipsNamedGroup(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_4

    :cond_0
    const/4 p0, 0x0

    if-eqz p2, :cond_1

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->char2:Z
    invoke-static {p5}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->access$600(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->bitsFFDHE:I
    invoke-static {p5}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->access$700(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)I

    move-result p2

    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->jcaGroup:Ljava/lang/String;
    invoke-static {p5}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->access$800(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->hasNamedGroup(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, 0x0

    :goto_1
    const/4 p3, 0x0

    if-eqz p2, :cond_4

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getNamedGroupAlgorithmParameters(I)Ljava/security/AlgorithmParameters;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    :cond_4
    :goto_2
    move p0, p2

    :goto_3
    new-instance p1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    invoke-direct {p1, p5, p3, p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;-><init>(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;Ljava/security/AlgorithmParameters;Z)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p4, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Duplicate entries for NamedGroupInfo"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createCandidates(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)[I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/jsse/provider/NamedGroupInfo;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")[I"
        }
    .end annotation

    array-length v0, p1

    new-array v1, v0, [I

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "\'"

    if-ge v3, v2, :cond_3

    aget-object v6, p1, v3

    invoke-static {v6}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getNamedGroupByName(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_0

    sget-object v7, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->LOG:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' contains unrecognised NamedGroup: "

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    if-nez v8, :cond_1

    sget-object v7, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->LOG:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' contains unsupported NamedGroup: "

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v7, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->LOG:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' contains disabled NamedGroup: "

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v4, 0x1

    aput v7, v1, v4

    move v4, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-ge v4, v0, :cond_4

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_4
    array-length p0, v1

    const/4 p1, 0x1

    if-ge p0, p1, :cond_5

    sget-object p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->LOG:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' contained no usable NamedGroup values"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method

.method private static createCandidatesFromProperty(Ljava/util/Map;Ljava/lang/String;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/jsse/provider/NamedGroupInfo;",
            ">;",
            "Ljava/lang/String;",
            ")[I"
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getStringArraySystemProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->CANDIDATES_DEFAULT:[I

    return-object p0

    :cond_0
    invoke-static {p0, v0, p1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->createCandidates(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private static createIndex(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/jsse/provider/NamedGroupInfo;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "org.bouncycastle.jsse.ec.disableChar2"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "org.bouncycastle.ec.disable_f2m"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const-string v3, "jsse.enableFFDHE"

    invoke-static {v3, v0}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-static {}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->values()[Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v5, v6, v8

    move v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->addNamedGroup(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;ZZLjava/util/Map;Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    return-object v4
.end method

.method private static createPerConnection(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;
    .locals 7

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getNamedGroups()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;->candidates:[I
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;->access$100(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;->index:Ljava/util/Map;
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;->access$200(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "SSLParameters.namedGroups"

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->createCandidates(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLParameters;->getAlgorithmConstraints()Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    move-result-object p1

    invoke-static {p3}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p3

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    array-length v1, v0

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;->index:Ljava/util/Map;
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;->access$200(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1, p3, p2}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->isActive(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;ZZ)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->hasAnyECDSA(Ljava/util/Map;)Z

    move-result p0

    new-instance p1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    invoke-direct {p1, v2, p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;-><init>(Ljava/util/LinkedHashMap;Z)V

    return-object p1
.end method

.method static createPerConnectionClient(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;[Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;
    .locals 1

    invoke-static {p2}, Lorg/bouncycastle/tls/ProtocolVersion;->getLatestTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {p2}, Lorg/bouncycastle/tls/ProtocolVersion;->getEarliestTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p2

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->createPerConnection(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    move-result-object p0

    return-object p0
.end method

.method static createPerConnectionServer(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;
    .locals 0

    invoke-static {p0, p1, p2, p2}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->createPerConnection(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;Lorg/bouncycastle/jsse/provider/ProvSSLParameters;Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;

    move-result-object p0

    return-object p0
.end method

.method static createPerContext(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->createIndex(ZLorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "jdk.tls.namedGroups"

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->createCandidatesFromProperty(Ljava/util/Map;Ljava/lang/String;)[I

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;-><init>(Ljava/util/Map;[I)V

    return-object v0
.end method

.method static getMaximumBitsServerECDH(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;
    .locals 7

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->getPeer()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    invoke-virtual {v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getBitsECDH()I

    move-result v5

    if-le v5, v3, :cond_0

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->local:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->access$300(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getNamedGroup()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_1
    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->local:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->access$300(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    invoke-virtual {v2}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getBitsECDH()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v3, v1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;-><init>(IZ)V

    return-object p0
.end method

.method static getMaximumBitsServerFFDHE(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->getPeer()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getNamedGroup()I

    move-result v4

    invoke-static {v4}, Lorg/bouncycastle/tls/NamedGroup;->isFiniteField(I)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getBitsFFDHE()I

    move-result v3

    if-le v3, v2, :cond_0

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->local:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->access$300(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    if-nez v1, :cond_3

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->local:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->access$300(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getBitsFFDHE()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;

    xor-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;-><init>(IZ)V

    return-object p0
.end method

.method static getNamedGroup(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;I)Lorg/bouncycastle/jsse/provider/NamedGroupInfo;
    .locals 0

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;->index:Ljava/util/Map;
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;->access$200(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerContext;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    return-object p0
.end method

.method private static getNamedGroupByName(Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->values()[Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->name:Ljava/lang/String;
    invoke-static {v3}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->access$900(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->namedGroup:I
    invoke-static {v3}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->access$500(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static getNamedGroupInfos(Ljava/util/Map;[I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/jsse/provider/NamedGroupInfo;",
            ">;[I)",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/NamedGroupInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    array-length v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    if-eqz v3, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1
.end method

.method static getSupportedGroupsLocalClient(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->local:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->access$300(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static getSupportedGroupsLocalServer(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)[I
    .locals 4

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->local:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->access$300(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static hasAnyECDSA(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/jsse/provider/NamedGroupInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getNamedGroup()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/tls/NamedGroup;->refersToAnECDSACurve(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static hasAnyECDSALocal(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Z
    .locals 0

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->localECDSA:Z
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->access$400(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Z

    move-result p0

    return p0
.end method

.method static hasLocal(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;I)Z
    .locals 0

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->local:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->access$300(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isPermittedBy(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)Z
    .locals 3

    sget-object v0, Lorg/bouncycastle/jsse/provider/JsseUtils;->KEY_AGREEMENT_CRYPTO_PRIMITIVES_BC:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getJcaGroup()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getJcaAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->algorithmParameters:Ljava/security/AlgorithmParameters;

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static selectServerECDH(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;I)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;
    .locals 7

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->getPeer()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    invoke-virtual {v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getBitsECDH()I

    move-result v5

    if-lt v5, p1, :cond_0

    invoke-virtual {v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getNamedGroup()I

    move-result v4

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->local:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->access$300(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;-><init>(IZ)V

    return-object p0

    :cond_1
    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->local:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->access$300(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getBitsECDH()I

    move-result v4

    if-lt v4, p1, :cond_2

    new-instance p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;

    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getNamedGroup()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;-><init>(IZ)V

    return-object p0

    :cond_3
    new-instance p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    const/4 p1, -0x1

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;-><init>(IZ)V

    return-object p0
.end method

.method static selectServerFFDHE(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;I)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->getPeer()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getNamedGroup()I

    move-result v4

    invoke-static {v4}, Lorg/bouncycastle/tls/NamedGroup;->isFiniteField(I)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-virtual {v3}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getBitsFFDHE()I

    move-result v3

    if-lt v3, p1, :cond_0

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->local:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->access$300(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;

    invoke-direct {p0, v4, v1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;-><init>(IZ)V

    return-object p0

    :cond_1
    move v1, v2

    :cond_2
    const/4 v0, 0x1

    if-nez v1, :cond_4

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->local:Ljava/util/LinkedHashMap;
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;->access$300(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$PerConnection;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;

    invoke-virtual {v2}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getBitsFFDHE()I

    move-result v3

    if-lt v3, p1, :cond_3

    new-instance p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;

    invoke-virtual {v2}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->getNamedGroup()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;-><init>(IZ)V

    return-object p0

    :cond_4
    new-instance p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;

    const/4 p1, -0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$DefaultedResult;-><init>(IZ)V

    return-object p0
.end method


# virtual methods
.method getBitsECDH()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->all:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->bitsECDH:I
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->access$1000(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)I

    move-result v0

    return v0
.end method

.method getBitsFFDHE()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->all:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->bitsFFDHE:I
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->access$700(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)I

    move-result v0

    return v0
.end method

.method getJcaAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->all:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->jcaAlgorithm:Ljava/lang/String;
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->access$1100(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getJcaGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->all:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->jcaGroup:Ljava/lang/String;
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->access$800(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNamedGroup()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->all:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->namedGroup:I
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->access$500(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)I

    move-result v0

    return v0
.end method

.method isActive(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;ZZ)Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->enabled:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->isSupportedPost13()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->isSupportedPre13()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->isPermittedBy(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->enabled:Z

    return v0
.end method

.method isSupportedPost13()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->all:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->supportedPost13:Z
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->access$1200(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Z

    move-result v0

    return v0
.end method

.method isSupportedPre13()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->all:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->supportedPre13:Z
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->access$1300(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo;->all:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    # getter for: Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->text:Ljava/lang/String;
    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->access$1400(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
