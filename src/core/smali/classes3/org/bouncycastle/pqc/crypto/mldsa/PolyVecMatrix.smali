.class Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;
.super Ljava/lang/Object;


# instance fields
.field private final dilithiumK:I

.field private final dilithiumL:I

.field private final mat:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->dilithiumK:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumL()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->dilithiumL:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->mat:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->dilithiumK:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->mat:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v2, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addString()Ljava/lang/String;
    .locals 4

    const-string v0, "["

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->dilithiumK:I

    const-string v3, "]\n"

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Outer Matrix "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->mat:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->dilithiumK:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "],\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public expandMatrix([B)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->dilithiumK:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->dilithiumL:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->mat:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mldsa/Poly;

    move-result-object v3

    shl-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v2

    int-to-short v4, v4

    invoke-virtual {v3, p1, v4}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;->uniformBlocks([BS)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->dilithiumK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mldsa/Poly;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->mat:[Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, p2}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;->pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ": \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->addString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
