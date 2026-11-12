.class final Lorg/bouncycastle/pqc/crypto/cmce/GF12;
.super Lorg/bouncycastle/pqc/crypto/cmce/GF;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/cmce/GF;-><init>()V

    return-void
.end method

.method private gf_mul_ext_par(SSSS)I
    .locals 6

    and-int/lit8 v0, p2, 0x1

    mul-int v0, v0, p1

    and-int/lit8 v1, p4, 0x1

    mul-int v1, v1, p3

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    shl-int v4, v2, v3

    and-int v5, p2, v4

    mul-int v5, v5, p1

    xor-int/2addr v0, v5

    and-int/2addr v4, p4

    mul-int v4, v4, p3

    xor-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    xor-int p1, v0, v1

    return p1
.end method


# virtual methods
.method protected gf_frac(SS)S
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_inv(S)S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result p1

    return p1
.end method

.method protected gf_inv(S)S
    .locals 3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v2

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result p1

    return p1
.end method

.method protected gf_mul(SS)S
    .locals 4

    and-int/lit8 v0, p2, 0x1

    mul-int v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    shl-int v3, v1, v2

    and-int/2addr v3, p2

    mul-int v3, v3, p1

    xor-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_reduce(I)S

    move-result p1

    return p1
.end method

.method protected gf_mul_ext(SS)I
    .locals 4

    and-int/lit8 v0, p2, 0x1

    mul-int v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    shl-int v3, v1, v2

    and-int/2addr v3, p2

    mul-int v3, v3, p1

    xor-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected gf_mul_poly(I[I[S[S[S[I)V
    .locals 11

    const/4 v0, 0x0

    aget-short v1, p4, v0

    aget-short v2, p5, v0

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul_ext(SS)I

    move-result v1

    aput v1, p6, v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p1, :cond_1

    add-int v3, v2, v2

    add-int/lit8 v4, v3, -0x1

    aput v0, p6, v4

    aget-short v4, p4, v2

    aget-short v5, p5, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_0

    add-int v7, v2, v6

    aget v8, p6, v7

    aget-short v9, p5, v6

    aget-short v10, p4, v6

    invoke-direct {p0, v4, v9, v10, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul_ext_par(SSSS)I

    move-result v9

    xor-int/2addr v8, v9

    aput v8, p6, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul_ext(SS)I

    move-result v4

    aput v4, p6, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p1, -0x1

    mul-int/lit8 v2, v2, 0x2

    :goto_2
    if-lt v2, p1, :cond_3

    aget v3, p6, v2

    const/4 v4, 0x0

    :goto_3
    array-length v5, p2

    sub-int/2addr v5, v1

    if-ge v4, v5, :cond_2

    sub-int v5, v2, p1

    aget v6, p2, v4

    add-int/2addr v5, v6

    aget v6, p6, v5

    xor-int/2addr v6, v3

    aput v6, p6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    sub-int v4, v2, p1

    aget v5, p6, v4

    shl-int/lit8 v3, v3, 0x1

    xor-int/2addr v3, v5

    aput v3, p6, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    :goto_4
    if-ge v0, p1, :cond_4

    aget p2, p6, v0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_reduce(I)S

    move-result p2

    aput-short p2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method protected gf_reduce(I)S
    .locals 4

    and-int/lit16 v0, p1, 0xfff

    ushr-int/lit8 v1, p1, 0xc

    const v2, 0x1ff000

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x9

    const/high16 v3, 0xe00000

    and-int/2addr v3, p1

    ushr-int/lit8 v3, v3, 0x12

    ushr-int/lit8 p1, p1, 0x15

    xor-int/2addr v0, v1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v3

    xor-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method protected gf_sq(S)S
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/math/raw/Interleave;->expand16to32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_reduce(I)S

    move-result p1

    return p1
.end method

.method protected gf_sq_ext(S)I
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/math/raw/Interleave;->expand16to32(I)I

    move-result p1

    return p1
.end method

.method protected gf_sqr_poly(I[I[S[S[I)V
    .locals 6

    const/4 v0, 0x0

    aget-short v1, p4, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq_ext(S)I

    move-result v1

    aput v1, p5, v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p1, :cond_0

    add-int v3, v2, v2

    add-int/lit8 v4, v3, -0x1

    aput v0, p5, v4

    aget-short v4, p4, v2

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq_ext(S)I

    move-result v4

    aput v4, p5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p1, -0x1

    mul-int/lit8 p4, p4, 0x2

    :goto_1
    if-lt p4, p1, :cond_2

    aget v2, p5, p4

    const/4 v3, 0x0

    :goto_2
    array-length v4, p2

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_1

    sub-int v4, p4, p1

    aget v5, p2, v3

    add-int/2addr v4, v5

    aget v5, p5, v4

    xor-int/2addr v5, v2

    aput v5, p5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    sub-int v3, p4, p1

    aget v4, p5, v3

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v2, v4

    aput v2, p5, v3

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v0, p1, :cond_3

    aget p2, p5, v0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_reduce(I)S

    move-result p2

    aput-short p2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method
