.class public abstract Lorg/bouncycastle/pqc/math/ntru/Polynomial;
.super Ljava/lang/Object;


# instance fields
.field public coeffs:[S

.field protected params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v0

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    return-void
.end method

.method static bothNegativeMask(SS)S
    .locals 0

    and-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0xf

    int-to-short p0, p0

    return p0
.end method

.method static mod3(B)B
    .locals 0

    and-int/lit16 p0, p0, 0xff

    rem-int/lit8 p0, p0, 0x3

    int-to-byte p0, p0

    return p0
.end method

.method static mod3(S)S
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    rem-int/lit8 p0, p0, 0x3

    int-to-short p0, p0

    return p0
.end method

.method static modQ(II)I
    .locals 0

    rem-int/2addr p0, p1

    return p0
.end method

.method private r2InvToRqInv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v4, p2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v4, v2

    neg-int v4, v4

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_1
    if-ge p2, v0, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, p2

    aput-short v3, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p4, p0, p3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    iget-object p1, p4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short p2, p1, v1

    add-int/lit8 p2, p2, 0x2

    int-to-short p2, p2

    aput-short p2, p1, v1

    invoke-virtual {p5, p4, p0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    invoke-virtual {p4, p5, p3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    iget-object p1, p4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short p2, p1, v1

    add-int/lit8 p2, p2, 0x2

    int-to-short p2, p2

    aput-short p2, p1, v1

    invoke-virtual {p0, p4, p5}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    invoke-virtual {p4, p0, p3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    iget-object p1, p4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short p2, p1, v1

    add-int/lit8 p2, p2, 0x2

    int-to-short p2, p2

    aput-short p2, p1, v1

    invoke-virtual {p5, p4, p0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    invoke-virtual {p4, p5, p3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    iget-object p1, p4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short p2, p1, v1

    add-int/lit8 p2, p2, 0x2

    int-to-short p2, p2

    aput-short p2, p1, v1

    invoke-virtual {p0, p4, p5}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    return-void
.end method


# virtual methods
.method public abstract lift(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
.end method

.method public mod3PhiN()V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v2, v1

    add-int/lit8 v4, v0, -0x1

    aget-short v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-short v3, v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3(S)S

    move-result v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public modQPhiN()V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v2, v1

    add-int/lit8 v4, v0, -0x1

    aget-short v4, v2, v4

    sub-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r2Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->r2Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    return-void
.end method

.method r2Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    iget-object v5, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v5, v5

    iget-object v6, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-short v8, v6, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    iget-object v9, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v8, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v9, v5, -0x1

    if-ge v6, v9, :cond_1

    iget-object v10, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v11, v5, -0x2

    sub-int/2addr v11, v6

    move-object/from16 v12, p1

    iget-object v13, v12, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v14, v13, v6

    aget-short v9, v13, v9

    xor-int/2addr v9, v14

    and-int/2addr v9, v8

    int-to-short v9, v9

    aput-short v9, v10, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v7, v6, v9

    const/4 v6, 0x0

    const/4 v10, 0x1

    :goto_2
    mul-int/lit8 v11, v9, 0x2

    sub-int/2addr v11, v8

    if-ge v6, v11, :cond_7

    move v11, v9

    :goto_3
    if-lez v11, :cond_2

    iget-object v12, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v13, v11, -0x1

    aget-short v13, v12, v13

    aput-short v13, v12, v11

    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_2
    iget-object v11, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v7, v11, v7

    iget-object v11, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v11, v11, v7

    iget-object v12, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v12, v12, v7

    and-int/2addr v12, v11

    int-to-short v12, v12

    neg-int v13, v10

    int-to-short v14, v13

    neg-int v11, v11

    int-to-short v11, v11

    invoke-static {v14, v11}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->bothNegativeMask(SS)S

    move-result v11

    xor-int/2addr v13, v10

    and-int/2addr v13, v11

    xor-int/2addr v10, v13

    int-to-short v10, v10

    add-int/2addr v10, v8

    int-to-short v10, v10

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v5, :cond_3

    iget-object v14, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v14, v13

    const/16 v16, 0x0

    iget-object v7, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v17, v7, v13

    xor-int v17, v15, v17

    and-int v8, v11, v17

    int-to-short v8, v8

    xor-int/2addr v15, v8

    int-to-short v15, v15

    aput-short v15, v14, v13

    aget-short v14, v7, v13

    xor-int/2addr v8, v14

    int-to-short v8, v8

    aput-short v8, v7, v13

    iget-object v7, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v7, v13

    iget-object v14, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v14, v13

    xor-int/2addr v15, v8

    and-int/2addr v15, v11

    int-to-short v15, v15

    xor-int/2addr v8, v15

    int-to-short v8, v8

    aput-short v8, v7, v13

    aget-short v7, v14, v13

    xor-int/2addr v7, v15

    int-to-short v7, v7

    aput-short v7, v14, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/16 v16, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v5, :cond_4

    iget-object v8, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v11, v8, v7

    iget-object v13, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v13, v13, v7

    and-int/2addr v13, v12

    xor-int/2addr v11, v13

    int-to-short v11, v11

    aput-short v11, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v5, :cond_5

    iget-object v8, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v11, v8, v7

    iget-object v13, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v13, v13, v7

    and-int/2addr v13, v12

    xor-int/2addr v11, v13

    int-to-short v11, v11

    aput-short v11, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_5
    const/4 v7, 0x0

    :goto_7
    if-ge v7, v9, :cond_6

    iget-object v8, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v11, v7, 0x1

    aget-short v12, v8, v11

    aput-short v12, v8, v7

    move v7, v11

    goto :goto_7

    :cond_6
    iget-object v7, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v16, v7, v9

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_7
    const/16 v16, 0x0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v9, :cond_8

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v4, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v6, v5, -0x2

    sub-int/2addr v6, v1

    aget-short v4, v4, v6

    aput-short v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    iget-object v1, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v16, v1, v9

    return-void
.end method

.method public rqInv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqInv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    return-void
.end method

.method rqInv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 6

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->r2Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->r2InvToRqInv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    return-void
.end method

.method public rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v1, v3, v2

    const/4 v3, 0x1

    :goto_1
    sub-int v4, v0, v2

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v5, v4, v2

    iget-object v6, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int v7, v2, v3

    aget-short v6, v6, v7

    iget-object v7, p2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    sub-int v8, v0, v3

    aget-short v7, v7, v8

    mul-int v6, v6, v7

    add-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v4, v2, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v5, v4, v2

    iget-object v6, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    sub-int v7, v2, v3

    aget-short v6, v6, v7

    iget-object v7, p2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v7, v3

    mul-int v6, v6, v7

    add-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method public rqSumZeroFromBytes([B)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v0, v0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->sqFromBytes([B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aput-short v1, p1, v0

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result p1

    if-ge v1, p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v2, p1, v0

    aget-short v3, p1, v1

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public rqSumZeroToBytes(I)[B
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->sqToBytes(I)[B

    move-result-object p1

    return-object p1
.end method

.method public rqToS3(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, v1

    const v4, 0xffff

    and-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v4

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->modQ(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v2, v2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    ushr-int/2addr v2, v3

    int-to-short v2, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v3, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    rsub-int/lit8 v5, v5, 0x1

    shl-int/2addr v2, v5

    add-int/2addr v4, v2

    int-to-short v2, v4

    aput-short v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3PhiN()V

    return-void
.end method

.method public s3FromBytes([B)V
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    if-ge v2, v3, :cond_0

    aget-byte v3, p1, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    mul-int/lit8 v5, v2, 0x5

    int-to-short v6, v3

    aput-short v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/lit16 v3, v3, 0xff

    mul-int/lit16 v7, v3, 0xab

    ushr-int/lit8 v7, v7, 0x9

    int-to-short v7, v7

    aput-short v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    mul-int/lit8 v7, v3, 0x39

    ushr-int/lit8 v7, v7, 0x9

    int-to-short v7, v7

    aput-short v7, v4, v6

    add-int/lit8 v6, v5, 0x3

    mul-int/lit8 v7, v3, 0x13

    ushr-int/lit8 v7, v7, 0x9

    int-to-short v7, v7

    aput-short v7, v4, v6

    add-int/lit8 v5, v5, 0x4

    mul-int/lit16 v3, v3, 0xcb

    ushr-int/lit8 v3, v3, 0xe

    int-to-short v3, v3

    aput-short v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    mul-int/lit8 v3, v3, 0x5

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    aget-byte p1, p1, v2

    const/4 v3, 0x0

    :goto_1
    mul-int/lit8 v4, v2, 0x5

    add-int/2addr v4, v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    int-to-short v6, p1

    aput-short v6, v5, v4

    and-int/lit16 p1, p1, 0xff

    mul-int/lit16 p1, p1, 0xab

    shr-int/lit8 p1, p1, 0x9

    int-to-byte p1, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v0, v0, -0x1

    aput-short v1, p1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3PhiN()V

    return-void
.end method

.method public s3Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    return-void
.end method

.method s3Inv(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    iget-object v5, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v5, v5

    iget-object v6, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-short v8, v6, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    iget-object v9, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v8, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v9, v5, -0x1

    if-ge v6, v9, :cond_1

    iget-object v10, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v11, v5, -0x2

    sub-int/2addr v11, v6

    move-object/from16 v12, p1

    iget-object v13, v12, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v14, v13, v6

    and-int/lit8 v14, v14, 0x3

    aget-short v9, v13, v9

    and-int/lit8 v9, v9, 0x3

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v14, v9

    int-to-short v9, v14

    invoke-static {v9}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3(S)S

    move-result v9

    aput-short v9, v10, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v7, v6, v9

    const/4 v6, 0x0

    const/4 v10, 0x1

    :goto_2
    mul-int/lit8 v11, v9, 0x2

    sub-int/2addr v11, v8

    if-ge v6, v11, :cond_7

    move v11, v9

    :goto_3
    if-lez v11, :cond_2

    iget-object v12, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v13, v11, -0x1

    aget-short v13, v12, v13

    aput-short v13, v12, v11

    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_2
    iget-object v11, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v7, v11, v7

    iget-object v11, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v11, v11, v7

    mul-int/lit8 v11, v11, 0x2

    iget-object v12, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v12, v12, v7

    mul-int v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v11}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3(B)B

    move-result v11

    int-to-short v11, v11

    neg-int v12, v10

    int-to-short v13, v12

    iget-object v14, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v14, v14, v7

    neg-int v14, v14

    int-to-short v14, v14

    invoke-static {v13, v14}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->bothNegativeMask(SS)S

    move-result v13

    xor-int/2addr v12, v10

    and-int/2addr v12, v13

    xor-int/2addr v10, v12

    int-to-short v10, v10

    add-int/2addr v10, v8

    int-to-short v10, v10

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v5, :cond_3

    iget-object v14, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v14, v12

    const/16 v16, 0x0

    iget-object v7, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v17, v7, v12

    xor-int v17, v15, v17

    and-int v8, v13, v17

    int-to-short v8, v8

    xor-int/2addr v15, v8

    int-to-short v15, v15

    aput-short v15, v14, v12

    aget-short v14, v7, v12

    xor-int/2addr v8, v14

    int-to-short v8, v8

    aput-short v8, v7, v12

    iget-object v7, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v7, v12

    iget-object v14, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v15, v14, v12

    xor-int/2addr v15, v8

    and-int/2addr v15, v13

    int-to-short v15, v15

    xor-int/2addr v8, v15

    int-to-short v8, v8

    aput-short v8, v7, v12

    aget-short v7, v14, v12

    xor-int/2addr v7, v15

    int-to-short v7, v7

    aput-short v7, v14, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/16 v16, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v5, :cond_4

    iget-object v8, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v12, v8, v7

    iget-object v13, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v13, v13, v7

    mul-int v13, v13, v11

    add-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-static {v12}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3(B)B

    move-result v12

    int-to-short v12, v12

    aput-short v12, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v5, :cond_5

    iget-object v8, v4, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v12, v8, v7

    iget-object v13, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v13, v13, v7

    mul-int v13, v13, v11

    add-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-static {v12}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3(B)B

    move-result v12

    int-to-short v12, v12

    aput-short v12, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_5
    const/4 v7, 0x0

    :goto_7
    if-ge v7, v9, :cond_6

    iget-object v8, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v11, v7, 0x1

    aget-short v12, v8, v11

    aput-short v12, v8, v7

    move v7, v11

    goto :goto_7

    :cond_6
    iget-object v7, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v16, v7, v9

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_7
    const/16 v16, 0x0

    iget-object v1, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v1, v1, v16

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v9, :cond_8

    iget-object v4, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v6, v3, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v7, v5, -0x2

    sub-int/2addr v7, v2

    aget-short v6, v6, v7

    mul-int v6, v6, v1

    int-to-byte v6, v6

    invoke-static {v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3(B)B

    move-result v6

    int-to-short v6, v6

    aput-short v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_8
    iget-object v1, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aput-short v16, v1, v9

    return-void
.end method

.method public s3Mul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3PhiN()V

    return-void
.end method

.method public s3ToBytes(I)[B
    .locals 6

    new-array p1, p1, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    mul-int/lit8 v3, v1, 0x5

    add-int/lit8 v4, v3, 0x4

    aget-short v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v3, 0x3

    aget-short v5, v2, v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v3, 0x2

    aget-short v5, v2, v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v3, 0x1

    aget-short v5, v2, v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    mul-int/lit8 v4, v4, 0x3

    aget-short v2, v2, v3

    add-int/2addr v4, v2

    and-int/lit16 v2, v4, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0x5

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    mul-int/lit8 v3, v1, 0x5

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    mul-int/lit8 v0, v0, 0x3

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int v5, v3, v2

    aget-short v4, v4, v5

    add-int/2addr v0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    aput-byte v0, p1, v1

    :cond_2
    return-object p1
.end method

.method public abstract sqFromBytes([B)V
.end method

.method public sqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->rqMul(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->modQPhiN()V

    return-void
.end method

.method public abstract sqToBytes(I)[B
.end method

.method public trinaryZqToZ3()V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v2, v1

    const v4, 0xffff

    and-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v4

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->modQ(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v2, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->logQ()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    ushr-int v4, v3, v4

    xor-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z3ToZq()V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v2, v1

    ushr-int/lit8 v4, v3, 0x1

    neg-int v4, v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
