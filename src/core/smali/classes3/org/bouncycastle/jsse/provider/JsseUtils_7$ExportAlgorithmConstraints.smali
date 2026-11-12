.class Lorg/bouncycastle/jsse/provider/JsseUtils_7$ExportAlgorithmConstraints;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/AlgorithmConstraints;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/JsseUtils_7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExportAlgorithmConstraints"
.end annotation


# instance fields
.field private final constraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_7$ExportAlgorithmConstraints;->constraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    return-void
.end method


# virtual methods
.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_7$ExportAlgorithmConstraints;->constraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils_7;->importCryptoPrimitives(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result p1

    return p1
.end method

.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_7$ExportAlgorithmConstraints;->constraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils_7;->importCryptoPrimitives(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result p1

    return p1
.end method

.method public permits(Ljava/util/Set;Ljava/security/Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/security/Key;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_7$ExportAlgorithmConstraints;->constraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/JsseUtils_7;->importCryptoPrimitives(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result p1

    return p1
.end method

.method unwrap()Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/JsseUtils_7$ExportAlgorithmConstraints;->constraints:Lorg/bouncycastle/jsse/java/security/BCAlgorithmConstraints;

    return-object v0
.end method
