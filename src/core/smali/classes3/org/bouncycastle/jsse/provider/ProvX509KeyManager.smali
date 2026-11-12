.class Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;
.super Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$DefaultPublicKeyFilter;,
        Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$ECPublicKeyFilter13;,
        Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;,
        Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;,
        Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;
    }
.end annotation


# static fields
.field private static final FILTERS_CLIENT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILTERS_SERVER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final provKeyManagerCheckEKU:Z


# instance fields
.field private final builders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/KeyStore$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final isInFipsMode:Z

.field private final versions:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->LOG:Ljava/util/logging/Logger;

    const-string v0, "org.bouncycastle.jsse.keyManager.checkEKU"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->provKeyManagerCheckEKU:Z

    invoke-static {}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->createFiltersClient()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->FILTERS_CLIENT:Ljava/util/Map;

    invoke-static {}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->createFiltersServer()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->FILTERS_SERVER:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/bouncycastle/jcajce/util/JcaJceHelper;",
            "Ljava/util/List<",
            "Ljava/security/KeyStore$Builder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/jsse/BCX509ExtendedKeyManager;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->versions:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, p0, v3, v1, v2}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$1;-><init>(Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;IFZ)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->cachedEntries:Ljava/util/Map;

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->isInFipsMode:Z

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->builders:Ljava/util/List;

    return-void
.end method

.method private static addECFilter13(Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;",
            ">;I)V"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/NamedGroup;->canBeNegotiated(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->getCurveName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "EC"

    invoke-static {v1, p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getKeyType13(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$ECPublicKeyFilter13;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$ECPublicKeyFilter13;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilterToMap(Ljava/util/Map;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;)V

    return-void

    :cond_0
    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to register public key filter for EC with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->getText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid named group for TLS 1.3 EC filter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static varargs addFilter(Ljava/util/Map;ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PublicKey;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$DefaultPublicKeyFilter;

    invoke-direct {v0, p2, p3, p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$DefaultPublicKeyFilter;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p4, p2

    invoke-static {p0, p3, v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilterToMap(Ljava/util/Map;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static varargs addFilter(Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PublicKey;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilter(Ljava/util/Map;ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method

.method private static addFilter(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2, v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilter(Ljava/util/Map;ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method

.method private static varargs addFilterLegacyServer(Ljava/util/Map;ILjava/lang/String;Ljava/lang/Class;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PublicKey;",
            ">;[I)V"
        }
    .end annotation

    invoke-static {p4}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getKeyTypesLegacyServer([I)[Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilter(Ljava/util/Map;ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method

.method private static varargs addFilterLegacyServer(Ljava/util/Map;ILjava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;",
            ">;I",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilterLegacyServer(Ljava/util/Map;ILjava/lang/String;Ljava/lang/Class;[I)V

    return-void
.end method

.method private static varargs addFilterLegacyServer(Ljava/util/Map;Ljava/lang/Class;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PublicKey;",
            ">;[I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilterLegacyServer(Ljava/util/Map;ILjava/lang/String;Ljava/lang/Class;[I)V

    return-void
.end method

.method private static varargs addFilterLegacyServer(Ljava/util/Map;Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;",
            ">;",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilterLegacyServer(Ljava/util/Map;ILjava/lang/String;[I)V

    return-void
.end method

.method private static addFilterToMap(Ljava/util/Map;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Duplicate keys in filters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static addToMatches(Ljava/util/List;Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;",
            ">;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;",
            ")",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/security/Principal;",
            "Lorg/bouncycastle/jsse/provider/TransportData;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getBestMatch(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;

    move-result-object p2

    sget-object p3, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->NOTHING:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;

    invoke-virtual {p2, p3}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->compareTo(Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;)I

    move-result p3

    if-gez p3, :cond_1

    iget p3, p2, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->keyTypeIndex:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getNextVersionSuffix()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getAlias(Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->LOG:Ljava/util/logging/Logger;

    sget-object p4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p3, p4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Found matching key of type: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", returning alias: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    return-object p2

    :cond_1
    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->LOG:Ljava/util/logging/Logger;

    const-string p2, "No matching key found"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private chooseKeyBC(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/security/Principal;",
            "Lorg/bouncycastle/jsse/provider/TransportData;",
            "Z)",
            "Lorg/bouncycastle/jsse/BCX509Key;"
        }
    .end annotation

    const-string v0, "Found matching key of type: "

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getBestMatch(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;

    move-result-object p2

    sget-object p3, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->NOTHING:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;

    invoke-virtual {p2, p3}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->compareTo(Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;)I

    move-result p3

    if-gez p3, :cond_1

    :try_start_0
    iget p3, p2, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->keyTypeIndex:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget v3, p2, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->builderIndex:I

    iget-object v4, p2, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->localAlias:Ljava/lang/String;

    iget-object v5, p2, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->cachedKeyStore:Ljava/security/KeyStore;

    iget-object v6, p2, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->cachedCertificateChain:[Ljava/security/cert/X509Certificate;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->createKeyBC(Ljava/lang/String;ILjava/lang/String;Ljava/security/KeyStore;[Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p3, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->LOG:Ljava/util/logging/Logger;

    sget-object p4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p3, p4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", from alias: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->builderIndex:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->localAlias:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    sget-object p2, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->LOG:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string p4, "Failed to load private key"

    invoke-virtual {p2, p3, p4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->LOG:Ljava/util/logging/Logger;

    const-string p2, "No matching key found"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static createFiltersClient()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Ed25519"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilter(Ljava/util/Map;Ljava/lang/String;)V

    const-string v1, "Ed448"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilter(Ljava/util/Map;Ljava/lang/String;)V

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addECFilter13(Ljava/util/Map;I)V

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addECFilter13(Ljava/util/Map;I)V

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addECFilter13(Ljava/util/Map;I)V

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addECFilter13(Ljava/util/Map;I)V

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addECFilter13(Ljava/util/Map;I)V

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addECFilter13(Ljava/util/Map;I)V

    const-string v1, "RSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilter(Ljava/util/Map;Ljava/lang/String;)V

    const-string v1, "RSASSA-PSS"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilter(Ljava/util/Map;Ljava/lang/String;)V

    const-class v1, Ljava/security/interfaces/DSAPublicKey;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "DSA"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilter(Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)V

    const-class v1, Ljava/security/interfaces/ECPublicKey;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "EC"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilter(Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static createFiltersServer()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Ed25519"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilter(Ljava/util/Map;Ljava/lang/String;)V

    const-string v1, "Ed448"

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilter(Ljava/util/Map;Ljava/lang/String;)V

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addECFilter13(Ljava/util/Map;I)V

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addECFilter13(Ljava/util/Map;I)V

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addECFilter13(Ljava/util/Map;I)V

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addECFilter13(Ljava/util/Map;I)V

    const/16 v2, 0x18

    invoke-static {v0, v2}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addECFilter13(Ljava/util/Map;I)V

    const/16 v2, 0x19

    invoke-static {v0, v2}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addECFilter13(Ljava/util/Map;I)V

    const-string v2, "RSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilter(Ljava/util/Map;Ljava/lang/String;)V

    const-string v3, "RSASSA-PSS"

    invoke-static {v0, v3}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilter(Ljava/util/Map;Ljava/lang/String;)V

    const-class v3, Ljava/security/interfaces/DSAPublicKey;

    const/4 v4, 0x3

    const/16 v5, 0x16

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilterLegacyServer(Ljava/util/Map;Ljava/lang/Class;[I)V

    const-class v3, Ljava/security/interfaces/ECPublicKey;

    const/16 v4, 0x11

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilterLegacyServer(Ljava/util/Map;Ljava/lang/Class;[I)V

    const/4 v3, 0x5

    const/16 v4, 0x13

    filled-new-array {v3, v4, v1}, [I

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilterLegacyServer(Ljava/util/Map;Ljava/lang/String;[I)V

    const/4 v1, 0x1

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v0, v3, v2, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addFilterLegacyServer(Ljava/util/Map;ILjava/lang/String;[I)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private createKeyBC(Ljava/lang/String;ILjava/lang/String;Ljava/security/KeyStore;[Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->builders:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/KeyStore$Builder;

    invoke-virtual {p2, p3}, Ljava/security/KeyStore$Builder;->getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object p2

    invoke-static {p4, p3, p2}, Lorg/bouncycastle/jsse/provider/KeyStoreUtil;->getKey(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/Key;

    move-result-object p2

    instance-of p3, p2, Ljava/security/PrivateKey;

    if-eqz p3, :cond_0

    new-instance p3, Lorg/bouncycastle/jsse/provider/ProvX509Key;

    check-cast p2, Ljava/security/PrivateKey;

    invoke-direct {p3, p1, p2, p5}, Lorg/bouncycastle/jsse/provider/ProvX509Key;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-object p3

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getAlias(Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->builderIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->localAlias:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAliases(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getAlias(Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getAliases(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)[Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/security/Principal;",
            "Lorg/bouncycastle/jsse/provider/TransportData;",
            "Z)[",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->builders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getUniquePrincipals([Ljava/security/Principal;)Ljava/util/Set;

    move-result-object v8

    const/4 v0, 0x1

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Lorg/bouncycastle/jsse/provider/TransportData;->getAlgorithmConstraints(Lorg/bouncycastle/jsse/provider/TransportData;Z)Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    move-result-object v9

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-static/range {p3 .. p4}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getRequestedHostName(Lorg/bouncycastle/jsse/provider/TransportData;Z)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->builders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v14, :cond_3

    :try_start_0
    iget-object v0, v1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->builders:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$Builder;

    invoke-virtual {v0}, Ljava/security/KeyStore$Builder;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_1
    const/16 v16, 0x0

    goto :goto_5

    :cond_0
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v15
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    :try_start_1
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v6, p1

    move/from16 v10, p4

    move-object v13, v3

    const/16 v16, 0x0

    move-object v3, v0

    :try_start_2
    invoke-direct/range {v1 .. v12}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getPotentialMatch(ILjava/security/KeyStore$Builder;Ljava/security/KeyStore;Ljava/lang/String;Ljava/util/List;ILjava/util/Set;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;ZLjava/util/Date;Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->NOTHING:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->compareTo(Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-static {v13, v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->addToMatches(Ljava/util/List;Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v13, v0

    :cond_1
    move-object/from16 v1, p0

    move-object v0, v3

    move-object v3, v13

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v13

    goto :goto_4

    :cond_2
    move-object v13, v3

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v13, v3

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_3
    const/16 v16, 0x0

    :goto_4
    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to fully process KeyStore.Builder at index "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p0

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getNextVersionSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getAliases(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v16, 0x0

    :cond_5
    return-object v16
.end method

.method private getBestMatch(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/security/Principal;",
            "Lorg/bouncycastle/jsse/provider/TransportData;",
            "Z)",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;"
        }
    .end annotation

    move-object/from16 v1, p0

    sget-object v0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->NOTHING:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;

    iget-object v2, v1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->builders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getUniquePrincipals([Ljava/security/Principal;)Ljava/util/Set;

    move-result-object v8

    const/4 v13, 0x1

    move-object/from16 v3, p3

    invoke-static {v3, v13}, Lorg/bouncycastle/jsse/provider/TransportData;->getAlgorithmConstraints(Lorg/bouncycastle/jsse/provider/TransportData;Z)Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    move-result-object v9

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-static/range {p3 .. p4}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getRequestedHostName(Lorg/bouncycastle/jsse/provider/TransportData;Z)Ljava/lang/String;

    move-result-object v12

    iget-object v3, v1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->builders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    const/4 v3, 0x0

    move v3, v2

    const/4 v4, 0x0

    move-object v2, v0

    :goto_0
    if-ge v4, v14, :cond_5

    :try_start_0
    iget-object v0, v1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->builders:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$Builder;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v5, v2

    move v2, v4

    :try_start_1
    invoke-virtual {v0}, Ljava/security/KeyStore$Builder;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    if-nez v4, :cond_0

    const/16 p2, 0x1

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v15
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_3

    move v7, v3

    :goto_1
    :try_start_2
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v6, p1

    move/from16 v10, p4

    move-object v13, v5

    const/16 p2, 0x1

    move-object v5, v3

    move-object v3, v0

    :try_start_3
    invoke-direct/range {v1 .. v12}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getPotentialMatch(ILjava/security/KeyStore$Builder;Ljava/security/KeyStore;Ljava/lang/String;Ljava/util/List;ILjava/util/Set;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;ZLjava/util/Date;Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;

    move-result-object v5

    invoke-virtual {v5, v13}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->compareTo(Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;)I

    move-result v0
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_1

    if-gez v0, :cond_2

    :try_start_4
    invoke-virtual {v5}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->isIdeal()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v5

    :cond_1
    invoke-virtual {v5}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v5, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->keyTypeIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_0

    move v7, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v5, v13

    :cond_3
    :goto_2
    move-object/from16 v1, p0

    move-object v0, v3

    const/4 v13, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    move v3, v7

    move-object v5, v13

    goto :goto_5

    :cond_4
    move-object v13, v5

    const/16 p2, 0x1

    move v3, v7

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v13, v5

    const/16 p2, 0x1

    :goto_3
    move v3, v7

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v5, v2

    move v2, v4

    :goto_4
    const/16 p2, 0x1

    :goto_5
    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to fully process KeyStore.Builder at index "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    add-int/lit8 v4, v2, 0x1

    move-object/from16 v1, p0

    move-object v2, v5

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_5
    move-object v5, v2

    return-object v5

    :cond_6
    return-object v0
.end method

.method private static getCertificateQuality(Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_0

    :try_start_1
    const-string p1, "HTTPS"

    invoke-static {p2, p0, p1}, Lorg/bouncycastle/jsse/provider/ProvX509TrustManager;->checkEndpointID(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;->MISMATCH_SNI:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    return-object p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getPublicKeyAlgorithm(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RSA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->supportsKeyUsage([ZI)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->supportsKeyUsage([ZI)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;->RSA_MULTI_USE:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    return-object p0

    :cond_1
    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;->OK:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    return-object p0

    :catch_1
    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;->EXPIRED:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    return-object p0
.end method

.method static getKeyTypeQuality(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/util/List;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;ZLjava/util/Date;Ljava/lang/String;[Ljava/security/cert/X509Certificate;I)Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/bouncycastle/jcajce/util/JcaJceHelper;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;",
            "Z",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;"
        }
    .end annotation

    invoke-interface {p2, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object p8, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EE cert potentially usable for key type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    invoke-static {p0, p1, p7, p3, p4}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->isSuitableChain(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;[Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Z)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unsuitable chain for key type: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p8, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;->NONE:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    aget-object p0, p7, p0

    invoke-static {p0, p5, p6}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getCertificateQuality(Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    move-result-object p0

    return-object p0
.end method

.method static varargs getKeyTypes([Ljava/lang/String;)Ljava/util/List;
    .locals 5
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

    if-eqz p0, :cond_3

    array-length v0, p0

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key types cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private static varargs getKeyTypesLegacyServer([I)[Ljava/lang/String;
    .locals 4

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getKeyTypeLegacyServer(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getNextVersionSuffix()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->versions:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getPotentialKeyType(Ljava/util/List;ILjava/util/Set;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Z[Ljava/security/cert/X509Certificate;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/security/Principal;",
            ">;",
            "Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;",
            "Z[",
            "Ljava/security/cert/X509Certificate;",
            ")I"
        }
    .end annotation

    invoke-static {p5, p2}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->isSuitableChainForIssuers([Ljava/security/cert/X509Certificate;Ljava/util/Set;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p2, 0x0

    aget-object p2, p5, p2

    invoke-static {p2, p0, p1, p3, p4}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getSuitableKeyTypeForEECert(Ljava/security/cert/X509Certificate;Ljava/util/List;ILorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Z)I

    move-result p0

    return p0
.end method

.method private getPotentialMatch(ILjava/security/KeyStore$Builder;Ljava/security/KeyStore;Ljava/lang/String;Ljava/util/List;ILjava/util/Set;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;ZLjava/util/Date;Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/security/KeyStore$Builder;",
            "Ljava/security/KeyStore;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/security/Principal;",
            ">;",
            "Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;",
            "Z",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")",
            "Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-virtual/range {p3 .. p4}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual/range {p3 .. p4}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getX509CertificateChain([Ljava/security/cert/Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v5

    move-object v0, p5

    move v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p9

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getPotentialKeyType(Ljava/util/List;ILjava/util/Set;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Z[Ljava/security/cert/X509Certificate;)I

    move-result v8

    if-ltz v8, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->isInFipsMode:Z

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-object v2, p5

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v6, p11

    move-object v7, v5

    move-object/from16 v5, p10

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getKeyTypeQuality(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/util/List;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;ZLjava/util/Date;Ljava/lang/String;[Ljava/security/cert/X509Certificate;I)Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    move-result-object p2

    move-object v5, v7

    sget-object p5, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;->NONE:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;

    if-eq p5, p2, :cond_0

    new-instance p5, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;

    move/from16 p8, p1

    move-object p6, p2

    move-object/from16 p10, p3

    move-object/from16 p9, p4

    move-object/from16 p11, v5

    move/from16 p7, v8

    invoke-direct/range {p5 .. p11}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;-><init>(Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$MatchQuality;IILjava/lang/String;Ljava/security/KeyStore;[Ljava/security/cert/X509Certificate;)V

    return-object p5

    :cond_0
    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;->NOTHING:Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$Match;

    return-object p1
.end method

.method private getPrivateKeyEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->cachedEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->loadPrivateKeyEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->cachedEntries:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method static getRequestedHostName(Lorg/bouncycastle/jsse/provider/TransportData;Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/TransportData;->getHandshakeSession()Lorg/bouncycastle/jsse/BCExtendedSSLSession;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/BCExtendedSSLSession;->getRequestedServerNames()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getSNIHostName(Ljava/util/List;)Lorg/bouncycastle/jsse/BCSNIHostName;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/BCSNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getRequiredExtendedKeyUsage(Z)Lorg/bouncycastle/asn1/x509/KeyPurposeId;
    .locals 1

    sget-boolean v0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->provKeyManagerCheckEKU:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    sget-object p0, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    return-object p0

    :cond_1
    sget-object p0, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_clientAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    return-object p0
.end method

.method private static getSuitableKeyTypeForEECert(Ljava/security/cert/X509Certificate;Ljava/util/List;ILorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;",
            "Z)I"
        }
    .end annotation

    if-eqz p4, :cond_0

    sget-object p4, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->FILTERS_SERVER:Ljava/util/Map;

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->FILTERS_CLIENT:Ljava/util/Map;

    :goto_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0, p0, p3}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;->accepts(Ljava/security/PublicKey;[ZLorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static getUniquePrincipals([Ljava/security/Principal;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method private static isSuitableChain(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;[Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Z)Z
    .locals 7

    :try_start_0
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {p4}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getRequiredExtendedKeyUsage(Z)Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    move-result-object v5

    const/4 v6, -0x1

    move v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/jsse/provider/ProvAlgorithmChecker;->checkChain(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;Ljava/util/Set;[Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/x509/KeyPurposeId;I)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->LOG:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string p3, "Certificate chain check failed"

    invoke-virtual {p1, p2, p3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static isSuitableChainForIssuers([Ljava/security/cert/X509Certificate;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set<",
            "Ljava/security/Principal;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    array-length v2, p0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_3
    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v0
.end method

.method static isSuitableKeyType(ZLjava/lang/String;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jsse/provider/TransportData;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->FILTERS_SERVER:Ljava/util/Map;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->FILTERS_CLIENT:Ljava/util/Map;

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lorg/bouncycastle/jsse/provider/TransportData;->getAlgorithmConstraints(Lorg/bouncycastle/jsse/provider/TransportData;Z)Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager$PublicKeyFilter;->accepts(Ljava/security/PublicKey;[ZLorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)Z

    move-result p0

    return p0
.end method

.method private loadPrivateKeyEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;
    .locals 5

    const/16 v0, 0x2e

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-le v0, v3, :cond_0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->builders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->builders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$Builder;

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/security/KeyStore$Builder;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/security/KeyStore$Builder;->getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    instance-of v1, v0, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load PrivateKeyEntry: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljava/net/Socket;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseClientKeyBC([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljava/net/Socket;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->chooseKeyBC(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    return-object p1
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseEngineClientKeyBC([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->chooseKeyBC(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    return-object p1
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseEngineServerKeyBC([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljavax/net/ssl/SSLEngine;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->chooseKeyBC(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljava/net/Socket;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseServerKeyBC([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/TransportData;->from(Ljava/net/Socket;)Lorg/bouncycastle/jsse/provider/TransportData;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->chooseKeyBC(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)Lorg/bouncycastle/jsse/BCX509Key;

    move-result-object p1

    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getPrivateKeyEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getAliases(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getKeyBC(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jsse/BCX509Key;
    .locals 3

    invoke-direct {p0, p2}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getPrivateKeyEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getX509CertificateChain([Ljava/security/cert/Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvX509Key;

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/jsse/provider/ProvX509Key;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getPrivateKeyEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/bouncycastle/jsse/provider/ProvX509KeyManager;->getAliases(Ljava/util/List;[Ljava/security/Principal;Lorg/bouncycastle/jsse/provider/TransportData;Z)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
