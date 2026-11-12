.class Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;
.super Ljava/lang/Object;


# instance fields
.field fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    return-void
.end method


# virtual methods
.method BerExp(Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_log2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_trunc(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_log2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p2

    xor-int/lit8 v0, v1, 0x3f

    rsub-int/lit8 v2, v1, 0x3f

    ushr-int/lit8 v2, v2, 0x1f

    neg-int v2, v2

    and-int/2addr v0, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_expm_p63(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide p2

    const/4 v1, 0x1

    shl-long/2addr p2, v1

    const-wide/16 v1, 0x1

    sub-long/2addr p2, v1

    ushr-long/2addr p2, v0

    const/16 v0, 0x40

    :cond_0
    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_get_u8()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    ushr-long v2, p2, v0

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0xff

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    if-gtz v0, :cond_0

    :cond_1
    ushr-int/lit8 p1, v1, 0x1f

    return p1
.end method

.method gaussian0_sampler(Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;)I
    .locals 9

    const/16 v0, 0x36

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_get_u64()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_get_u8()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    long-to-int v4, v2

    const v5, 0xffffff

    and-int/2addr v4, v5

    const/16 v6, 0x18

    ushr-long v6, v2, v6

    long-to-int v7, v6

    and-int/2addr v5, v7

    const/16 v6, 0x30

    ushr-long/2addr v2, v6

    long-to-int v3, v2

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v6, v2, 0x2

    aget v6, v1, v6

    add-int/lit8 v7, v2, 0x1

    aget v7, v1, v7

    aget v8, v1, v2

    sub-int v6, v4, v6

    ushr-int/lit8 v6, v6, 0x1f

    sub-int v7, v5, v7

    sub-int/2addr v7, v6

    ushr-int/lit8 v6, v7, 0x1f

    sub-int v7, p1, v8

    sub-int/2addr v7, v6

    ushr-int/lit8 v6, v7, 0x1f

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    return v3

    :array_0
    .array-data 4
        0xa3f7f4
        0x2ed3ac
        0x391802
        0x54d32b
        0x181f3f
        0x7ddb82
        0x227dcd
        0xd09348
        0x29c1ff
        0xad175
        0x4377c7
        0x994ae4
        0x29584
        0x6caef3
        0x3f1f6f
        0x774a
        0xc754ed
        0x74bd5f
        0x1024
        0xdd542b
        0x776ae4
        0x1a1
        0xffdc65
        0xad63da
        0x1f
        0x80d88a
        0x7b6428
        0x1
        0xc3fdb2
        0x40c69
        0x0
        0x12cf24
        0xd031fb
        0x0
        0x949f
        0x8b091f
        0x0
        0x366
        0x5da998
        0x0
        0xe
        0xbf6ebb
        0x0
        0x0
        0x2f5d7e
        0x0
        0x0
        0x7098
        0x0
        0x0
        0xc6
        0x0
        0x0
        0x1
    .end array-data
.end method

.method sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sampler(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result p1

    return p1
.end method

.method sampler(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_floor(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->sigma_min:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v2, p3, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p3

    :cond_0
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->gaussian0_sampler(Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;)I

    move-result v2

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_get_u8()B

    move-result v3

    and-int/lit8 v3, v3, 0x1

    shl-int/lit8 v4, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    mul-int v4, v4, v2

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    mul-int v2, v2, v2

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_2sqrsigma0:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v5, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    invoke-virtual {p0, v4, v2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->BerExp(Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v2

    if-eqz v2, :cond_0

    add-int/2addr v1, v3

    return v1
.end method
