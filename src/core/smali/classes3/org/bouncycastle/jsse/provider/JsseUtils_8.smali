.class abstract Lorg/bouncycastle/jsse/provider/JsseUtils_8;
.super Lorg/bouncycastle/jsse/provider/JsseUtils_7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportAPSelector;,
        Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportSNIMatcher;,
        Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportAPSelector;,
        Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportSNIMatcher;,
        Lorg/bouncycastle/jsse/provider/JsseUtils_8$UnknownServerName;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_7;-><init>()V

    return-void
.end method

.method static addStatusResponses(Ljava/security/cert/CertPathBuilder;Ljava/security/cert/PKIXBuilderParameters;Ljava/util/Map;)V
    .locals 2
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

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->getFirstRevocationChecker(Ljava/util/List;)Ljava/security/cert/PKIXRevocationChecker;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljava/security/cert/PKIXRevocationChecker;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->putAnyAbsent(Ljava/util/Map;Ljava/util/Map;)I

    move-result p2

    if-lez p2, :cond_2

    invoke-static {v1, p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljava/security/cert/PKIXRevocationChecker;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Ljava/security/cert/PKIXBuilderParameters;->setCertPathCheckers(Ljava/util/List;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljava/security/cert/CertPathBuilder;)Ljava/security/cert/CertPathChecker;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/security/cert/PKIXRevocationChecker;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljava/security/cert/PKIXRevocationChecker;Ljava/util/Map;)V

    invoke-virtual {p1, p0}, Ljava/security/cert/PKIXBuilderParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static exportAPSelector(Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;)Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bouncycastle/jsse/BCApplicationProtocolSelector<",
            "TT;>;)",
            "Ljava/util/function/BiFunction<",
            "TT;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportAPSelector;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportAPSelector;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportAPSelector;->unwrap()Ljava/util/function/BiFunction;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportAPSelector;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportAPSelector;-><init>(Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;)V

    return-object v0
.end method

.method static exportSNIMatcher(Lorg/bouncycastle/jsse/BCSNIMatcher;)Ljavax/net/ssl/SNIMatcher;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportSNIMatcher;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportSNIMatcher;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportSNIMatcher;->unwrap()Ljavax/net/ssl/SNIMatcher;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportSNIMatcher;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportSNIMatcher;-><init>(Lorg/bouncycastle/jsse/BCSNIMatcher;)V

    return-object v0
.end method

.method static exportSNIMatchers(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/jsse/BCSNIMatcher;",
            ">;)",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jsse/BCSNIMatcher;

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->exportSNIMatcher(Lorg/bouncycastle/jsse/BCSNIMatcher;)Ljavax/net/ssl/SNIMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method static exportSNIMatchersDynamic(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/jsse/BCSNIMatcher;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->exportSNIMatchers(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static exportSNIServerName(Lorg/bouncycastle/jsse/BCSNIServerName;)Ljavax/net/ssl/SNIServerName;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SNIServerName;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/BCSNIServerName;->getType()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/BCSNIServerName;->getEncoded()[B

    move-result-object p0

    if-eqz v0, :cond_1

    new-instance v1, Lorg/bouncycastle/jsse/provider/JsseUtils_8$UnknownServerName;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8$UnknownServerName;-><init>(I[B)V

    check-cast v1, Ljavax/net/ssl/SNIServerName;

    return-object v1

    :cond_1
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SNIHostName;-><init>([B)V

    check-cast v0, Ljavax/net/ssl/SNIServerName;

    return-object v0
.end method

.method static exportSNIServerNames(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/jsse/BCSNIServerName;",
            ">;)",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jsse/BCSNIServerName;

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->exportSNIServerName(Lorg/bouncycastle/jsse/BCSNIServerName;)Ljavax/net/ssl/SNIServerName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method static exportSNIServerNamesDynamic(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/jsse/BCSNIServerName;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->exportSNIServerNames(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getFirstRevocationChecker(Ljava/util/List;)Ljava/security/cert/PKIXRevocationChecker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;)",
            "Ljava/security/cert/PKIXRevocationChecker;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    invoke-static {v0}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/security/cert/PKIXRevocationChecker;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static importAPSelector(Ljava/util/function/BiFunction;)Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "TT;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/bouncycastle/jsse/BCApplicationProtocolSelector<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportAPSelector;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportAPSelector;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportAPSelector;->unwrap()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportAPSelector;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportAPSelector;-><init>(Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method static importSNIMatcher(Ljavax/net/ssl/SNIMatcher;)Lorg/bouncycastle/jsse/BCSNIMatcher;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportSNIMatcher;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportSNIMatcher;

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ExportSNIMatcher;->unwrap()Lorg/bouncycastle/jsse/BCSNIMatcher;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportSNIMatcher;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8$ImportSNIMatcher;-><init>(Ljavax/net/ssl/SNIMatcher;)V

    return-object v0
.end method

.method static importSNIMatchers(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/BCSNIMatcher;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljavax/net/ssl/SNIMatcher;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->importSNIMatcher(Ljavax/net/ssl/SNIMatcher;)Lorg/bouncycastle/jsse/BCSNIMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method static importSNIMatchersDynamic(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/BCSNIMatcher;",
            ">;"
        }
    .end annotation

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->importSNIMatchers(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static importSNIServerName(Ljavax/net/ssl/SNIServerName;)Lorg/bouncycastle/jsse/BCSNIServerName;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljavax/net/ssl/SNIServerName;)I

    move-result v0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljavax/net/ssl/SNIServerName;)[B

    move-result-object p0

    if-eqz v0, :cond_1

    new-instance v1, Lorg/bouncycastle/jsse/provider/JsseUtils$BCUnknownServerName;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/jsse/provider/JsseUtils$BCUnknownServerName;-><init>(I[B)V

    return-object v1

    :cond_1
    new-instance v0, Lorg/bouncycastle/jsse/BCSNIHostName;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jsse/BCSNIHostName;-><init>([B)V

    return-object v0
.end method

.method static importSNIServerNames(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/BCSNIServerName;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/JsseUtils_7$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljavax/net/ssl/SNIServerName;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->importSNIServerName(Ljavax/net/ssl/SNIServerName;)Lorg/bouncycastle/jsse/BCSNIServerName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method static importSNIServerNamesDynamic(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/BCSNIServerName;",
            ">;"
        }
    .end annotation

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils_8;->importSNIServerNames(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static putAnyAbsent(Ljava/util/Map;Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
