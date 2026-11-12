.class Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private gaussElim([[S)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_1

    aget-object v4, p1, v1

    aget-short v4, v4, v1

    if-nez v4, :cond_0

    move v4, v1

    :goto_2
    aget-object v5, p1, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    aget-object v5, p1, v1

    aget-short v6, v5, v4

    aget-object v7, p1, v3

    aget-short v7, v7, v4

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    aget-object v3, p1, v1

    aget-short v3, v3, v1

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->invElem(S)S

    move-result v3

    if-eqz v3, :cond_5

    aget-object v4, p1, v1

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multVect(S[S)[S

    move-result-object v3

    aput-object v3, p1, v1

    const/4 v3, 0x0

    :goto_3
    array-length v4, p1

    if-ge v3, v4, :cond_4

    if-ne v1, v3, :cond_2

    goto :goto_5

    :cond_2
    aget-object v4, p1, v3

    aget-short v4, v4, v1

    move v5, v1

    :goto_4
    aget-object v6, p1, v0

    array-length v6, v6

    if-ge v5, v6, :cond_3

    aget-object v6, p1, v1

    aget-short v6, v6, v5

    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v6

    aget-object v7, p1, v3

    aget-short v8, v7, v5

    invoke-static {v8, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "The matrix is not invertible"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method


# virtual methods
.method public addMatrix([[S[[S)[[S
    .locals 7

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v2, v1

    aget-object v3, p2, v0

    array-length v3, v3

    if-ne v2, v3, :cond_2

    array-length v2, p1

    array-length v1, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v2, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    aget-object v4, p1, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v2

    aget-object v5, p1, v2

    aget-short v5, v5, v3

    aget-object v6, p2, v2

    aget-short v6, v6, v3

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Addition is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public addMatrixTranspose([[S)[[S
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Addition is not possible!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addVect([S[S)[S
    .locals 5

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    array-length v0, p1

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-short v3, p1, v2

    aget-short v4, p2, v2

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Addition is not possible! vector1.length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vector2.length: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public inverse([[S)[[S
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    if-ne v0, v2, :cond_4

    :try_start_0
    array-length v0, p1

    array-length v2, p1

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    const/4 v2, 0x0

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    aget-object v4, p1, v2

    aget-object v6, v0, v2

    array-length v7, p1

    invoke-static {v4, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p1

    :goto_1
    array-length v6, p1

    mul-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_0

    aget-object v6, v0, v2

    aput-short v1, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    aget-object v4, v0, v2

    array-length v6, v0

    add-int/2addr v6, v2

    aput-short v5, v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->gaussElim([[S)V

    array-length p1, v0

    array-length v2, v0

    new-array v4, v3, [I

    aput v2, v4, v5

    aput p1, v4, v1

    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_3

    array-length v2, v0

    :goto_3
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_2

    aget-object v4, p1, v1

    array-length v5, v0

    sub-int v5, v2, v5

    aget-object v6, v0, v1

    aget-short v6, v6, v2

    aput-short v6, v4, v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "The matrix is not invertible. Please choose another one!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public multMatrix(S[[S)[[S
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    aget-object v2, p2, v1

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    aget-object v4, p2, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    aget-object v5, p2, v2

    aget-short v5, v5, v3

    invoke-static {p1, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public multVect(S[S)[S
    .locals 4

    array-length v0, p2

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-short v3, p2, v2

    invoke-static {p1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public multVects([S[S)[[S
    .locals 7

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    aget-short v5, p1, v2

    aget-short v6, p2, v3

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public multiplyMatrix([[S[S)[S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p2

    if-ne v1, v2, :cond_2

    array-length v1, p1

    new-array v1, v1, [S

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget-object v4, p1, v2

    aget-short v4, v4, v3

    aget-short v5, p2, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v4

    aget-short v5, v1, v2

    invoke-static {v5, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public multiplyMatrix([[S[[S)[[S
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p2

    if-ne v1, v2, :cond_3

    array-length v1, p1

    aget-object v2, p2, v0

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    :goto_2
    aget-object v5, p2, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    aget-object v5, p1, v2

    aget-short v5, v5, v3

    aget-object v6, p2, v3

    aget-short v6, v6, v4

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v5

    aget-object v6, v1, v2

    aget-short v7, v6, v4

    invoke-static {v7, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public multiplyMatrix_quad([[S[S)S
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v3, v2

    if-ne v0, v3, :cond_2

    array-length v0, v2

    array-length v2, p2

    if-ne v0, v2, :cond_2

    array-length v0, p1

    new-array v0, v0, [S

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_0

    aget-object v5, p1, v2

    aget-short v5, v5, v4

    aget-short v6, p2, v4

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v5

    aget-short v6, v0, v2

    invoke-static {v6, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v0, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    aget-short v4, v0, v2

    aget-short v5, p2, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v4

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public obfuscate_l1_polys([[S[[[S[[[S)[[[S
    .locals 9

    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v2, v1

    aget-object v3, p3, v0

    array-length v4, v3

    if-ne v2, v4, :cond_4

    aget-object v1, v1, v0

    array-length v1, v1

    aget-object v2, v3, v0

    array-length v4, v2

    if-ne v1, v4, :cond_4

    array-length v1, p2

    aget-object v4, p1, v0

    array-length v4, v4

    if-ne v1, v4, :cond_4

    array-length v1, p3

    array-length v4, p1

    if-ne v1, v4, :cond_4

    array-length v1, p3

    array-length v3, v3

    array-length v2, v2

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x2

    aput v2, v4, v5

    const/4 v2, 0x1

    aput v3, v4, v2

    aput v1, v4, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    const/4 v2, 0x0

    :goto_0
    aget-object v3, p2, v0

    array-length v3, v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    aget-object v4, p2, v0

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    :goto_2
    array-length v5, p1

    if-ge v4, v5, :cond_1

    const/4 v5, 0x0

    :goto_3
    aget-object v6, p1, v0

    array-length v6, v6

    if-ge v5, v6, :cond_0

    aget-object v6, p1, v4

    aget-short v6, v6, v5

    aget-object v7, p2, v5

    aget-object v7, v7, v2

    aget-short v7, v7, v3

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v6

    aget-object v7, v1, v4

    aget-object v7, v7, v2

    aget-short v8, v7, v3

    invoke-static {v8, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v7, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_0
    aget-object v5, v1, v4

    aget-object v5, v5, v2

    aget-object v6, p3, v4

    aget-object v6, v6, v2

    aget-short v6, v6, v3

    aget-short v7, v5, v3

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public solveEquation([[S[S)[S
    .locals 9

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    array-length v0, p1

    array-length v1, p1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v1, v4, v3

    const/4 v1, 0x0

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    array-length v3, p1

    new-array v3, v3, [S

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_1

    aget-object v5, p1, v4

    aget-object v6, v0, v4

    aget-object v7, p1, v1

    array-length v7, v7

    invoke-static {v5, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, v0, v4

    array-length v6, p2

    aget-short v7, p2, v4

    array-length v8, p2

    aget-short v8, v5, v8

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v7

    aput-short v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->gaussElim([[S)V

    :goto_1
    array-length p1, v0

    if-ge v1, p1, :cond_2

    aget-object p1, v0, v1

    array-length v4, p2

    aget-short p1, p1, v4

    aput-short p1, v3, v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v3

    :catch_0
    return-object v2
.end method

.method public to_UT([[S)[[S
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    if-ne v0, v2, :cond_2

    array-length v0, p1

    array-length v2, p1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    aget-object v4, p1, v2

    aget-short v4, v4, v2

    aput-short v4, v3, v2

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    :goto_1
    aget-object v5, p1, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    aget-object v5, v0, v2

    aget-object v6, p1, v2

    aget-short v6, v6, v4

    aget-object v7, p1, v4

    aget-short v7, v7, v2

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Computation to upper triangular matrix is not possible!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public transpose([[S)[[S
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    aget-object v4, p1, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    aget-object v5, p1, v2

    aget-short v5, v5, v3

    aput-short v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
