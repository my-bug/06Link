.class public Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;
.super Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;


# static fields
.field private static final K:I = 0x56

.field private static final L:I = 0x560

.field private static final M:I = 0x158


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;)V

    return-void
.end method


# virtual methods
.method public sqFromBytes([B)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v4, v1, 0x4

    mul-int/lit8 v5, v1, 0x7

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    int-to-short v6, v6

    aput-short v6, v2, v4

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    add-int/lit8 v6, v4, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    ushr-int/lit8 v7, v7, 0x6

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    shl-int/2addr v8, v3

    or-int/2addr v7, v8

    add-int/lit8 v8, v5, 0x3

    aget-byte v9, p1, v8

    and-int/lit8 v9, v9, 0xf

    int-to-short v9, v9

    shl-int/lit8 v9, v9, 0xa

    or-int/2addr v7, v9

    int-to-short v7, v7

    aput-short v7, v2, v6

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    add-int/lit8 v6, v4, 0x2

    aget-byte v7, p1, v8

    and-int/lit16 v7, v7, 0xff

    ushr-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v5, 0x4

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    add-int/lit8 v8, v5, 0x5

    aget-byte v9, p1, v8

    and-int/lit8 v9, v9, 0x3

    int-to-short v9, v9

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr v7, v9

    int-to-short v7, v7

    aput-short v7, v2, v6

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    add-int/lit8 v4, v4, 0x3

    aget-byte v6, p1, v8

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v3, v6, 0x2

    add-int/lit8 v5, v5, 0x6

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v3, v5

    int-to-short v3, v3

    aput-short v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v4, v1, 0x4

    mul-int/lit8 v1, v1, 0x7

    aget-byte v5, p1, v1

    add-int/lit8 v6, v1, 0x1

    aget-byte v7, p1, v6

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    int-to-short v5, v5

    aput-short v5, v2, v4

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    add-int/lit8 v4, v4, 0x1

    aget-byte v5, p1, v6

    ushr-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p1, v6

    int-to-short v6, v6

    shl-int/lit8 v3, v6, 0x2

    or-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x3

    aget-byte p1, p1, v1

    int-to-short p1, p1

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xa

    or-int/2addr p1, v3

    int-to-short p1, p1

    aput-short p1, v2, v4

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput-short v0, p1, v1

    return-void
.end method

.method public sqToBytes(I)[B
    .locals 11

    new-array p1, p1, [B

    const/4 v0, 0x4

    new-array v1, v0, [S

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v4

    div-int/2addr v4, v0

    const v5, 0xffff

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_0

    iget-object v9, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v10, v3, 0x4

    add-int/2addr v10, v4

    aget-short v9, v9, v10

    and-int/2addr v9, v5

    iget-object v10, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v10

    invoke-static {v9, v10}, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->modQ(II)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v4, v3, 0x7

    aget-short v5, v1, v2

    and-int/lit16 v9, v5, 0xff

    int-to-byte v9, v9

    aput-byte v9, p1, v4

    add-int/lit8 v9, v4, 0x1

    ushr-int/lit8 v5, v5, 0x8

    aget-short v7, v1, v7

    and-int/lit8 v10, v7, 0x3

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v5, v10

    int-to-byte v5, v5

    aput-byte v5, p1, v9

    add-int/lit8 v5, v4, 0x2

    ushr-int/lit8 v9, v7, 0x2

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, p1, v5

    add-int/lit8 v5, v4, 0x3

    ushr-int/lit8 v7, v7, 0xa

    aget-short v9, v1, v8

    and-int/lit8 v10, v9, 0xf

    shl-int/2addr v10, v0

    or-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, p1, v5

    add-int/lit8 v5, v4, 0x4

    ushr-int/lit8 v7, v9, 0x4

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, p1, v5

    add-int/lit8 v5, v4, 0x5

    ushr-int/lit8 v7, v9, 0xc

    aget-short v6, v1, v6

    and-int/lit8 v9, v6, 0x3f

    shl-int/lit8 v8, v9, 0x2

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v5

    add-int/lit8 v4, v4, 0x6

    ushr-int/lit8 v5, v6, 0x6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v4

    rem-int/2addr v4, v0

    if-ne v4, v8, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v4

    sub-int/2addr v4, v8

    aget-short v0, v0, v4

    and-int/2addr v0, v5

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v4

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->modQ(II)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, v1, v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v4

    sub-int/2addr v4, v7

    aget-short v0, v0, v4

    and-int/2addr v0, v5

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v4

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->modQ(II)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, v1, v7

    mul-int/lit8 v3, v3, 0x7

    aget-short v1, v1, v2

    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit8 v4, v0, 0x3

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 v1, v3, 0x2

    ushr-int/lit8 v2, v0, 0x2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/2addr v3, v6

    ushr-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    :cond_2
    return-object p1
.end method
