.class Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jsse/provider/AlgorithmDecomposer;


# static fields
.field static final INSTANCE_JCA:Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;

.field private static final PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "with|and|(?<!padd)in"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;->PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;

    invoke-direct {v0}, Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;-><init>()V

    sput-object v0, Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;->INSTANCE_JCA:Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureBothIfEither(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    move-object p1, p2

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public decompose(Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    sget-object v5, Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "SHA1"

    const-string v1, "SHA-1"

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;->ensureBothIfEither(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SHA224"

    const-string v1, "SHA-224"

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;->ensureBothIfEither(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SHA256"

    const-string v1, "SHA-256"

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;->ensureBothIfEither(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SHA384"

    const-string v1, "SHA-384"

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;->ensureBothIfEither(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SHA512"

    const-string v1, "SHA-512"

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/jsse/provider/JcaAlgorithmDecomposer;->ensureBothIfEither(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
