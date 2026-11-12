.class final Lorg/bouncycastle/pqc/crypto/cmce/GF13;
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
    const/16 v4, 0xd

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

.method private gf_sq2(S)S
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/math/raw/Interleave;->expand16to32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/math/raw/Interleave;->expand16to32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

    move-result p1

    return p1
.end method

.method private gf_sq2mul(SS)S
    .locals 9

    int-to-long v0, p1

    int-to-long p1, p2

    const/16 v2, 0x12

    shl-long v3, p1, v2

    const-wide/16 v5, 0x40

    and-long/2addr v5, v0

    mul-long v3, v3, v5

    const/16 v5, 0x15

    shl-long v5, v0, v5

    xor-long/2addr v0, v5

    const-wide/32 v5, 0x10000001

    and-long/2addr v5, v0

    mul-long v5, v5, p1

    xor-long/2addr v3, v5

    const/4 v5, 0x3

    shl-long v5, p1, v5

    const-wide/32 v7, 0x20000002

    and-long/2addr v7, v0

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    const/4 v5, 0x6

    shl-long v5, p1, v5

    const-wide/32 v7, 0x40000004

    and-long/2addr v7, v0

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    const/16 v5, 0x9

    shl-long v5, p1, v5

    const-wide v7, 0x80000008L

    and-long/2addr v7, v0

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    const/16 v5, 0xc

    shl-long v5, p1, v5

    const-wide v7, 0x100000010L

    and-long/2addr v7, v0

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    const/16 v5, 0xf

    shl-long/2addr p1, v5

    const-wide v5, 0x200000020L

    and-long/2addr v0, v5

    mul-long p1, p1, v0

    xor-long/2addr p1, v3

    const-wide v0, 0x1ffff80000000000L

    and-long/2addr v0, p1

    ushr-long v3, v0, v2

    const/16 v5, 0x14

    ushr-long v6, v0, v5

    xor-long/2addr v3, v6

    const/16 v6, 0x18

    ushr-long v7, v0, v6

    xor-long/2addr v3, v7

    const/16 v7, 0x1a

    ushr-long/2addr v0, v7

    xor-long/2addr v0, v3

    xor-long/2addr p1, v0

    const-wide v0, 0x7fffc000000L

    and-long/2addr v0, p1

    ushr-long v2, v0, v2

    ushr-long v4, v0, v5

    xor-long/2addr v2, v4

    ushr-long v4, v0, v6

    xor-long/2addr v2, v4

    ushr-long/2addr v0, v7

    xor-long/2addr v0, v2

    xor-long/2addr p1, v0

    long-to-int p2, p1

    const p1, 0x3ffffff

    and-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

    move-result p1

    return p1
.end method

.method private gf_sqmul(SS)S
    .locals 8

    int-to-long v0, p1

    int-to-long p1, p2

    const/4 v2, 0x6

    shl-long v2, p1, v2

    const-wide/16 v4, 0x40

    and-long/2addr v4, v0

    mul-long v2, v2, v4

    const/4 v4, 0x7

    shl-long v4, v0, v4

    xor-long/2addr v0, v4

    const-wide/16 v4, 0x4001

    and-long/2addr v4, v0

    mul-long v4, v4, p1

    xor-long/2addr v2, v4

    const/4 v4, 0x1

    shl-long v4, p1, v4

    const-wide/32 v6, 0x8002

    and-long/2addr v6, v0

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x2

    shl-long v4, p1, v4

    const-wide/32 v6, 0x10004

    and-long/2addr v6, v0

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x3

    shl-long v4, p1, v4

    const-wide/32 v6, 0x20008

    and-long/2addr v6, v0

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x4

    shl-long v4, p1, v4

    const-wide/32 v6, 0x40010

    and-long/2addr v6, v0

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x5

    shl-long/2addr p1, v4

    const-wide/32 v4, 0x80020

    and-long/2addr v0, v4

    mul-long p1, p1, v0

    xor-long/2addr p1, v2

    const-wide v0, 0x1ffc000000L

    and-long/2addr v0, p1

    const/16 v2, 0x12

    ushr-long v2, v0, v2

    const/16 v4, 0x14

    ushr-long v4, v0, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x18

    ushr-long v4, v0, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x1a

    ushr-long/2addr v0, v4

    xor-long/2addr v0, v2

    xor-long/2addr p1, v0

    long-to-int p2, p1

    const p1, 0x3ffffff

    and-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

    move-result p1

    return p1
.end method


# virtual methods
.method protected gf_frac(SS)S
    .locals 1

    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sqmul(SS)S

    move-result p1

    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2mul(SS)S

    move-result p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2(S)S

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2mul(SS)S

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2(S)S

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2mul(SS)S

    move-result p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sqmul(SS)S

    move-result p1

    return p1
.end method

.method protected gf_inv(S)S
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_frac(SS)S

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
    const/16 v3, 0xd

    if-ge v2, v3, :cond_0

    shl-int v3, v1, v2

    and-int/2addr v3, p2

    mul-int v3, v3, p1

    xor-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

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
    const/16 v3, 0xd

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
    .locals 10

    const/4 v0, 0x0

    aget-short v1, p4, v0

    aget-short v2, p5, v0

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_mul_ext(SS)I

    move-result v1

    aput v1, p6, v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p1, :cond_1

    add-int v2, v1, v1

    add-int/lit8 v3, v2, -0x1

    aput v0, p6, v3

    aget-short v3, p4, v1

    aget-short v4, p5, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_0

    add-int v6, v1, v5

    aget v7, p6, v6

    aget-short v8, p5, v5

    aget-short v9, p4, v5

    invoke-direct {p0, v3, v8, v9, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_mul_ext_par(SSSS)I

    move-result v8

    xor-int/2addr v7, v8

    aput v7, p6, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_mul_ext(SS)I

    move-result v3

    aput v3, p6, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p4, p1, -0x1

    mul-int/lit8 p4, p4, 0x2

    :goto_2
    if-lt p4, p1, :cond_3

    aget v1, p6, p4

    const/4 v2, 0x0

    :goto_3
    array-length v3, p2

    if-ge v2, v3, :cond_2

    sub-int v3, p4, p1

    aget v4, p2, v2

    add-int/2addr v3, v4

    aget v4, p6, v3

    xor-int/2addr v4, v1

    aput v4, p6, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_3
    :goto_4
    if-ge v0, p1, :cond_4

    aget p2, p6, v0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

    move-result p2

    aput-short p2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method protected gf_reduce(I)S
    .locals 5

    and-int/lit16 v0, p1, 0x1fff

    ushr-int/lit8 p1, p1, 0xd

    shl-int/lit8 v1, p1, 0x4

    shl-int/lit8 v2, p1, 0x3

    xor-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x1

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0xd

    and-int/lit16 v1, v1, 0x1fff

    shl-int/lit8 v3, v2, 0x4

    shl-int/lit8 v4, v2, 0x3

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x1

    xor-int/2addr v3, v4

    xor-int/2addr p1, v0

    xor-int/2addr p1, v2

    xor-int/2addr p1, v1

    xor-int/2addr p1, v3

    int-to-short p1, p1

    return p1
.end method

.method protected gf_sq(S)S
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/math/raw/Interleave;->expand16to32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

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
    .locals 5

    const/4 v0, 0x0

    aget-short v1, p4, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq_ext(S)I

    move-result v1

    aput v1, p5, v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p1, :cond_0

    add-int v2, v1, v1

    add-int/lit8 v3, v2, -0x1

    aput v0, p5, v3

    aget-short v3, p4, v1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq_ext(S)I

    move-result v3

    aput v3, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p1, -0x1

    mul-int/lit8 p4, p4, 0x2

    :goto_1
    if-lt p4, p1, :cond_2

    aget v1, p5, p4

    const/4 v2, 0x0

    :goto_2
    array-length v3, p2

    if-ge v2, v3, :cond_1

    sub-int v3, p4, p1

    aget v4, p2, v2

    add-int/2addr v3, v4

    aget v4, p5, v3

    xor-int/2addr v4, v1

    aput v4, p5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v0, p1, :cond_3

    aget p2, p5, v0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

    move-result p2

    aput-short p2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method
