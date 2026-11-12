.class Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;
.super Lorg/bouncycastle/jsse/provider/AbstractAlgorithmConstraints;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;,
        Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;,
        Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$DisabledConstraint;,
        Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$KeySizeConstraint;
    }
.end annotation


# static fields
.field private static final INCLUDE_PREFIX:Ljava/lang/String; = "include "

.field private static final KEYWORD_KEYSIZE:Ljava/lang/String; = "keySize"

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final constraintsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;",
            ">;>;"
        }
    .end annotation
.end field

.field private final disabledAlgorithms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/jsse/provider/AlgorithmDecomposer;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/jsse/provider/AlgorithmDecomposer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/AbstractAlgorithmConstraints;-><init>(Lorg/bouncycastle/jsse/provider/AlgorithmDecomposer;)V

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->disabledAlgorithms:Ljava/util/Set;

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->constraintsMap:Ljava/util/Map;

    return-void
.end method

.method private static addConstraint(Ljava/util/Map;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;",
            ">;>;",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addConstraint(Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "include "

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    return v1

    :cond_0
    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v2, 0x1

    if-gez p2, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->getCanonicalAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object p0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$DisabledConstraint;->INSTANCE:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$DisabledConstraint;

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->addConstraint(Ljava/util/Map;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;)V

    return v2

    :cond_1
    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->getCanonicalAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x26

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "keySize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->parse(Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    move-result-object p2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    new-instance v1, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$KeySizeConstraint;

    invoke-direct {v1, p2, v0}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$KeySizeConstraint;-><init>(Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;I)V

    invoke-static {p1, p0, v1}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->addConstraint(Ljava/util/Map;Ljava/lang/String;Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;)V

    return v2

    :cond_5
    return v1
.end method

.method private checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->checkPrimitives(Ljava/util/Set;)V

    invoke-virtual {p0, p3}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->checkKey(Ljava/security/Key;)V

    invoke-static {p2}, Lorg/bouncycastle/jsse/provider/JsseUtils;->isNameSpecified(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    :cond_0
    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getKeyAlgorithm(Ljava/security/Key;)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p4}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-static {p3}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->getConstraintsAlgorithm(Ljava/security/Key;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->getConstraints(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;

    invoke-virtual {p2, p3}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;->permits(Ljava/security/Key;)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method static create(Lorg/bouncycastle/jsse/provider/AlgorithmDecomposer;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;
    .locals 6

    invoke-static {p1, p2}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getStringArraySecurityProperty(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    aget-object v3, p2, v2

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->addConstraint(Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring unsupported entry in \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;-><init>(Lorg/bouncycastle/jsse/provider/AlgorithmDecomposer;Ljava/util/Set;Ljava/util/Map;)V

    return-object p1
.end method

.method private static getCanonicalAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "DiffieHellman"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "DH"

    return-object p0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SHA-"

    const-string v1, "SHA"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getConstraints(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method private static getConstraintsAlgorithm(Ljava/lang/String;Ljava/security/AlgorithmParameters;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->getCanonicalAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->getCanonicalAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getConstraintsAlgorithm(Ljava/security/Key;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/JsseUtils;->getKeyAlgorithm(Ljava/security/Key;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->getCanonicalAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->checkPrimitives(Ljava/util/Set;)V

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->checkAlgorithmName(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->disabledAlgorithms:Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->containsAnyPartIgnoreCase(Ljava/util/Set;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {p2, p3}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->getConstraintsAlgorithm(Ljava/lang/String;Ljava/security/AlgorithmParameters;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->getConstraints(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;

    invoke-virtual {p2, p3}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;->permits(Ljava/security/AlgorithmParameters;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->checkAlgorithmName(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result p1

    return p1
.end method

.method public final permits(Ljava/util/Set;Ljava/security/Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;",
            ">;",
            "Ljava/security/Key;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result p1

    return p1
.end method
