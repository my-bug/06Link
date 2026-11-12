.class public Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;
.super Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;)V

    return-void
.end method


# virtual methods
.method public sqFromBytes([B)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x3

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    int-to-short v5, v5

    aput-short v5, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    add-int/lit8 v3, v3, 0x1

    aget-byte v5, p1, v6

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput-short v0, p1, v1

    return-void
.end method

.method public sqToBytes(I)[B
    .locals 8

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x3

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    mul-int/lit8 v4, v1, 0x2

    aget-short v3, v3, v4

    const v5, 0xffff

    and-int/2addr v3, v5

    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->modQ(II)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v3, v2, 0x1

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    aget-short v6, v6, v4

    and-int/2addr v6, v5

    invoke-static {v6, v0}, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->modQ(II)I

    move-result v6

    ushr-int/lit8 v6, v6, 0x8

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    add-int/lit8 v4, v4, 0x1

    aget-short v7, v7, v4

    and-int/2addr v7, v5

    invoke-static {v7, v0}, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->modQ(II)I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v3

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    aget-short v3, v3, v4

    and-int/2addr v3, v5

    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->modQ(II)I

    move-result v3

    ushr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
