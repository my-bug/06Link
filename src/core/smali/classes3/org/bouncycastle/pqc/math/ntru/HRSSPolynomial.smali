.class public Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
.super Lorg/bouncycastle/pqc/math/ntru/Polynomial;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    return-void
.end method


# virtual methods
.method public lift(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 13

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v1

    rem-int/lit8 v2, v0, 0x3

    const/4 v3, 0x3

    rsub-int/lit8 v2, v2, 0x3

    int-to-short v2, v2

    iget-object v4, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    const/4 v6, 0x0

    aget-short v5, v5, v6

    rsub-int/lit8 v7, v2, 0x2

    mul-int v5, v5, v7

    iget-object v8, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    const/4 v9, 0x1

    aget-short v8, v8, v9

    iget-object v8, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    const/4 v10, 0x2

    aget-short v8, v8, v10

    mul-int v8, v8, v2

    add-int/2addr v5, v8

    int-to-short v5, v5

    aput-short v5, v4, v6

    iget-object v4, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v5, v5, v9

    mul-int v5, v5, v7

    iget-object v8, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v8, v10

    int-to-short v5, v5

    aput-short v5, v4, v9

    iget-object v4, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v5, v5, v10

    mul-int v5, v5, v7

    int-to-short v5, v5

    aput-short v5, v4, v10

    const/4 v4, 0x3

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    iget-object v7, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v7, v6

    iget-object v11, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v11, v11, v4

    mul-int/lit8 v12, v2, 0x2

    add-int/2addr v12, v5

    mul-int v11, v11, v12

    add-int/2addr v8, v11

    int-to-short v8, v8

    aput-short v8, v7, v6

    iget-object v7, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v7, v9

    iget-object v11, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v11, v11, v4

    add-int v12, v5, v2

    mul-int v11, v11, v12

    add-int/2addr v8, v11

    int-to-short v8, v8

    aput-short v8, v7, v9

    iget-object v7, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v7, v10

    iget-object v11, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v11, v11, v4

    mul-int v11, v11, v5

    add-int/2addr v8, v11

    int-to-short v5, v8

    aput-short v5, v7, v10

    rem-int/2addr v12, v3

    int-to-short v5, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v4, v9

    iget-object v8, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v8, v6

    add-int/2addr v2, v5

    mul-int v8, v8, v2

    add-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v4, v9

    iget-object v4, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v4, v10

    iget-object v8, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v8, v6

    mul-int v8, v8, v5

    add-int/2addr v7, v8

    int-to-short v5, v7

    aput-short v5, v4, v10

    iget-object v4, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v5, v4, v10

    iget-object v7, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v7, v9

    mul-int v7, v7, v2

    add-int/2addr v5, v7

    int-to-short v2, v5

    aput-short v2, v4, v10

    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v2, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v4, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v5, v3, -0x3

    aget-short v4, v4, v5

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v5, v5, v3

    iget-object v7, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v8, v3, -0x1

    aget-short v7, v7, v8

    add-int/2addr v5, v7

    iget-object v7, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v8, v3, -0x2

    aget-short v7, v7, v8

    add-int/2addr v5, v7

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3PhiN()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->z3ToZq()V

    iget-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v2, v2, v6

    neg-int v2, v2

    int-to-short v2, v2

    aput-short v2, p1, v6

    :goto_2
    add-int/lit8 p1, v0, -0x1

    if-ge v6, p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v2, v6, 0x1

    iget-object v3, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, v6

    iget-object v4, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v4, v2

    sub-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, p1, v2

    move v6, v2

    goto :goto_2

    :cond_2
    return-void
.end method

.method public sqFromBytes([B)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v5, v1, 0x8

    mul-int/lit8 v6, v1, 0xd

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v6, 0x1

    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    and-int/lit8 v9, v9, 0x1f

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v7, v9

    int-to-short v7, v7

    aput-short v7, v2, v5

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v7, v5, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    ushr-int/lit8 v8, v8, 0x5

    add-int/lit8 v9, v6, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    shl-int/lit8 v9, v9, 0x3

    or-int/2addr v8, v9

    add-int/lit8 v9, v6, 0x3

    aget-byte v10, p1, v9

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    and-int/lit8 v10, v10, 0x3

    shl-int/lit8 v10, v10, 0xb

    or-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, v2, v7

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v7, v5, 0x2

    aget-byte v8, p1, v9

    and-int/lit16 v8, v8, 0xff

    ushr-int/2addr v8, v4

    add-int/lit8 v9, v6, 0x4

    aget-byte v10, p1, v9

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    and-int/lit8 v10, v10, 0x7f

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, v2, v7

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v7, v5, 0x3

    aget-byte v8, p1, v9

    and-int/lit16 v8, v8, 0xff

    ushr-int/lit8 v8, v8, 0x7

    add-int/lit8 v9, v6, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    shl-int/lit8 v9, v9, 0x1

    or-int/2addr v8, v9

    add-int/lit8 v9, v6, 0x6

    aget-byte v10, p1, v9

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    and-int/lit8 v10, v10, 0xf

    shl-int/lit8 v10, v10, 0x9

    or-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, v2, v7

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v7, v5, 0x4

    aget-byte v8, p1, v9

    and-int/lit16 v8, v8, 0xff

    ushr-int/2addr v8, v3

    add-int/lit8 v9, v6, 0x7

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    shl-int/lit8 v3, v9, 0x4

    or-int/2addr v3, v8

    add-int/lit8 v8, v6, 0x8

    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    and-int/lit8 v9, v9, 0x1

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr v3, v9

    int-to-short v3, v3

    aput-short v3, v2, v7

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v3, v5, 0x5

    aget-byte v7, p1, v8

    and-int/lit16 v7, v7, 0xff

    ushr-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v6, 0x9

    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    and-int/lit8 v9, v9, 0x3f

    shl-int/lit8 v9, v9, 0x7

    or-int/2addr v7, v9

    int-to-short v7, v7

    aput-short v7, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v3, v5, 0x6

    aget-byte v7, p1, v8

    and-int/lit16 v7, v7, 0xff

    ushr-int/lit8 v7, v7, 0x6

    add-int/lit8 v8, v6, 0xa

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    shl-int/lit8 v4, v8, 0x2

    or-int/2addr v4, v7

    add-int/lit8 v7, v6, 0xb

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0xa

    or-int/2addr v4, v8

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v5, v5, 0x7

    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x3

    add-int/lit8 v6, v6, 0xc

    aget-byte v4, p1, v6

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v2, v5

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v1, 0x8

    mul-int/lit8 v1, v1, 0xd

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v1, 0x1

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    and-int/lit8 v7, v7, 0x1f

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    int-to-short v5, v5

    aput-short v5, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v5, v3, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x5

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, 0x3

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0xb

    or-int/2addr v6, v8

    int-to-short v6, v6

    aput-short v6, v2, v5

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v5, v3, 0x2

    aget-byte v6, p1, v7

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v4, v6, 0x2

    add-int/lit8 v6, v1, 0x4

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    and-int/lit8 v7, v7, 0x7f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v4, v7

    int-to-short v4, v4

    aput-short v4, v2, v5

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v3, v3, 0x3

    aget-byte v4, p1, v6

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x7

    add-int/lit8 v5, v1, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x6

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0x9

    or-int/2addr p1, v4

    int-to-short p1, p1

    aput-short p1, v2, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v1, 0x8

    mul-int/lit8 v1, v1, 0xd

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v1, 0x1

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v3, v3, 0x1

    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x5

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x3

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0xb

    or-int/2addr p1, v4

    int-to-short p1, p1

    aput-short p1, v2, v3

    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput-short v0, p1, v1

    return-void
.end method

.method public sqToBytes(I)[B
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-array v1, v1, [B

    const/16 v2, 0x8

    new-array v3, v2, [S

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v6

    div-int/2addr v6, v2

    const v7, 0xffff

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x7

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v5, v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_0

    iget-object v15, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v16, v5, 0x8

    add-int v16, v16, v6

    aget-short v15, v15, v16

    and-int/2addr v15, v7

    const/16 p1, 0x0

    iget-object v4, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v4

    invoke-static {v15, v4}, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->modQ(II)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/16 p1, 0x0

    mul-int/lit8 v4, v5, 0xd

    aget-short v6, v3, p1

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    add-int/lit8 v7, v4, 0x1

    ushr-int/2addr v6, v2

    aget-short v15, v3, v14

    and-int/lit8 v16, v15, 0x7

    shl-int/lit8 v16, v16, 0x5

    or-int v6, v6, v16

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    add-int/lit8 v6, v4, 0x2

    ushr-int/lit8 v7, v15, 0x3

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v4, 0x3

    ushr-int/lit8 v7, v15, 0xb

    aget-short v15, v3, v13

    and-int/lit8 v16, v15, 0x3f

    shl-int/lit8 v13, v16, 0x2

    or-int/2addr v7, v13

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v4, 0x4

    ushr-int/lit8 v7, v15, 0x6

    aget-short v13, v3, v12

    and-int/lit8 v15, v13, 0x1

    shl-int/2addr v15, v11

    or-int/2addr v7, v15

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v4, 0x5

    ushr-int/lit8 v7, v13, 0x1

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v4, 0x6

    ushr-int/lit8 v7, v13, 0x9

    aget-short v13, v3, v10

    and-int/lit8 v15, v13, 0xf

    shl-int/lit8 v10, v15, 0x4

    or-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v4, 0x7

    ushr-int/lit8 v7, v13, 0x4

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v4, 0x8

    ushr-int/lit8 v7, v13, 0xc

    aget-short v10, v3, v9

    and-int/lit8 v13, v10, 0x7f

    shl-int/2addr v13, v14

    or-int/2addr v7, v13

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v4, 0x9

    ushr-int/lit8 v7, v10, 0x7

    aget-short v10, v3, v8

    and-int/lit8 v13, v10, 0x3

    shl-int/lit8 v8, v13, 0x6

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v4, 0xa

    ushr-int/lit8 v7, v10, 0x2

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v4, 0xb

    ushr-int/lit8 v7, v10, 0xa

    aget-short v8, v3, v11

    and-int/lit8 v10, v8, 0x1f

    shl-int/2addr v10, v12

    or-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v4, v4, 0xc

    ushr-int/lit8 v6, v8, 0x5

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0x0

    const/4 v4, 0x0

    :goto_2
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v6

    mul-int/lit8 v15, v5, 0x8

    sub-int/2addr v6, v15

    if-ge v4, v6, :cond_2

    iget-object v6, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/2addr v15, v4

    aget-short v6, v6, v15

    and-int/2addr v6, v7

    iget-object v15, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v15

    invoke-static {v6, v15}, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->modQ(II)I

    move-result v6

    int-to-short v6, v6

    aput-short v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v4, v2, :cond_3

    aput-short p1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    iget-object v4, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v4

    iget-object v6, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v6

    div-int/2addr v6, v2

    mul-int/lit8 v6, v6, 0x8

    sub-int/2addr v4, v6

    if-eq v4, v13, :cond_5

    if-eq v4, v10, :cond_4

    return-object v1

    :cond_4
    mul-int/lit8 v4, v5, 0xd

    aget-short v6, v3, p1

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    add-int/lit8 v7, v4, 0x1

    ushr-int/2addr v6, v2

    aget-short v15, v3, v14

    and-int/lit8 v16, v15, 0x7

    shl-int/lit8 v16, v16, 0x5

    or-int v6, v6, v16

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    add-int/lit8 v6, v4, 0x2

    ushr-int/lit8 v7, v15, 0x3

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v4, 0x3

    ushr-int/lit8 v7, v15, 0xb

    aget-short v15, v3, v13

    and-int/lit8 v16, v15, 0x3f

    shl-int/lit8 v16, v16, 0x2

    or-int v7, v7, v16

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v4, 0x4

    ushr-int/lit8 v7, v15, 0x6

    aget-short v15, v3, v12

    and-int/lit8 v16, v15, 0x1

    shl-int/lit8 v11, v16, 0x7

    or-int/2addr v7, v11

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v4, 0x5

    ushr-int/lit8 v7, v15, 0x1

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/2addr v4, v8

    ushr-int/lit8 v6, v15, 0x9

    aget-short v7, v3, v10

    and-int/lit8 v7, v7, 0xf

    shl-int/2addr v7, v10

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    :cond_5
    mul-int/lit8 v5, v5, 0xd

    aget-short v4, v3, p1

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v6, v5, 0x1

    ushr-int/lit8 v2, v4, 0x8

    aget-short v4, v3, v14

    and-int/lit8 v7, v4, 0x7

    shl-int/2addr v7, v9

    or-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    add-int/lit8 v2, v5, 0x2

    ushr-int/lit8 v6, v4, 0x3

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    add-int/2addr v5, v12

    ushr-int/lit8 v2, v4, 0xb

    aget-short v3, v3, v13

    and-int/lit8 v3, v3, 0x3f

    shl-int/2addr v3, v13

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    return-object v1
.end method
