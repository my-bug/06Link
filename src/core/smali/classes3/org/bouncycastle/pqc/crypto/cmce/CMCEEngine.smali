.class Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;
.super Ljava/lang/Object;


# instance fields
.field private COND_BYTES:I

.field private GFBITS:I

.field private GFMASK:I

.field private IRR_BYTES:I

.field private PK_NCOLS:I

.field private PK_NROWS:I

.field private PK_ROW_BYTES:I

.field private SYND_BYTES:I

.field private SYS_N:I

.field private SYS_T:I

.field private benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

.field private countErrorIndices:Z

.field private final defaultKeySize:I

.field private gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

.field private poly:[I

.field private usePadding:Z

.field private usePivots:Z


# direct methods
.method public constructor <init>(III[IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->defaultKeySize:I

    mul-int/lit8 p4, p3, 0x2

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/lit8 p4, p1, -0x4

    const/4 p5, 0x1

    shl-int p4, p5, p4

    mul-int/lit8 p6, p1, 0x2

    sub-int/2addr p6, p5

    mul-int p4, p4, p6

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    mul-int p3, p3, p1

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    sub-int/2addr p2, p3

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    add-int/lit8 p3, p3, 0x7

    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    shl-int p2, p5, p1

    sub-int/2addr p2, p5

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    new-instance p1, Lorg/bouncycastle/pqc/crypto/cmce/GF12;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-direct {p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;-><init>(III)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/pqc/crypto/cmce/GF13;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-direct {p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;-><init>(III)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    rem-int/lit8 p1, p1, 0x8

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int p1, p5, p1

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-le p1, p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    :goto_2
    iput-boolean p5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->countErrorIndices:Z

    return-void
.end method

.method private bm([S[S)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [S

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [S

    const/4 v4, 0x1

    add-int/2addr v1, v4

    new-array v1, v1, [S

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v7, v4

    if-ge v6, v7, :cond_0

    aput-short v5, v1, v6

    aput-short v5, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    aput-short v4, v3, v5

    aput-short v4, v1, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_1
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v6, v9, :cond_5

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    invoke-static {v6, v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->min(SI)I

    move-result v11

    if-gt v9, v11, :cond_1

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v12, v3, v9

    sub-int v13, v6, v9

    aget-short v13, p2, v13

    invoke-virtual {v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul_ext(SS)I

    move-result v11

    xor-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v9, v10}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_reduce(I)S

    move-result v9

    add-int/lit8 v10, v9, -0x1

    int-to-short v10, v10

    shr-int/lit8 v10, v10, 0xf

    int-to-short v10, v10

    and-int/2addr v10, v4

    int-to-short v10, v10

    sub-int/2addr v10, v4

    int-to-short v10, v10

    mul-int/lit8 v11, v7, 0x2

    sub-int v11, v6, v11

    int-to-short v11, v11

    shr-int/lit8 v11, v11, 0xf

    int-to-short v11, v11

    and-int/2addr v11, v4

    int-to-short v11, v11

    sub-int/2addr v11, v4

    int-to-short v11, v11

    and-int/2addr v11, v10

    int-to-short v11, v11

    const/4 v12, 0x0

    :goto_3
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v12, v13, :cond_2

    aget-short v13, v3, v12

    aput-short v13, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v12, v8, v9}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_frac(SS)S

    move-result v12

    const/4 v13, 0x0

    :goto_4
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v13, v14, :cond_3

    aget-short v14, v3, v13

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v4, v1, v13

    invoke-virtual {v15, v12, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v4

    and-int/2addr v4, v10

    xor-int/2addr v4, v14

    int-to-short v4, v4

    aput-short v4, v3, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    xor-int/lit8 v4, v11, -0x1

    and-int v10, v7, v4

    add-int/lit8 v6, v6, 0x1

    sub-int v7, v6, v7

    and-int/2addr v7, v11

    or-int/2addr v7, v10

    int-to-short v7, v7

    add-int/lit8 v14, v14, -0x1

    :goto_5
    if-ltz v14, :cond_4

    add-int/lit8 v10, v14, 0x1

    aget-short v12, v1, v14

    and-int/2addr v12, v4

    aget-short v13, v2, v14

    and-int/2addr v13, v11

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v1, v10

    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    :cond_4
    aput-short v5, v1, v5

    and-int/2addr v4, v8

    and-int v8, v9, v11

    or-int/2addr v4, v8

    int-to-short v8, v4

    int-to-short v6, v6

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_5
    :goto_6
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v5, v1, :cond_6

    sub-int/2addr v1, v5

    aget-short v1, v3, v1

    aput-short v1, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method static cbrecursion([BJJ[SIJJ[I)V
    .locals 32

    move/from16 v0, p6

    move-wide/from16 v1, p9

    move-object/from16 v11, p11

    const-wide/16 v3, 0x7

    const/4 v5, 0x3

    const-wide/16 v6, 0x1

    cmp-long v8, p7, v6

    if-nez v8, :cond_0

    shr-long v1, p1, v5

    long-to-int v2, v1

    aget-byte v1, p0, v2

    invoke-static {v11, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v0

    and-long v3, p1, v3

    long-to-int v4, v3

    shl-int/2addr v0, v4

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    return-void

    :cond_0
    if-eqz p5, :cond_2

    const-wide/16 v12, 0x0

    :goto_0
    cmp-long v10, v12, v1

    if-gez v10, :cond_1

    long-to-int v10, v12

    aget-short v14, p5, v10

    xor-int/lit8 v14, v14, 0x1

    shl-int/lit8 v14, v14, 0x10

    move-wide v15, v3

    xor-long v3, v12, v6

    long-to-int v4, v3

    aget-short v3, p5, v4

    or-int/2addr v3, v14

    aput v3, v11, v10

    add-long/2addr v12, v6

    move-wide v3, v15

    goto :goto_0

    :cond_1
    move-wide v15, v3

    goto :goto_2

    :cond_2
    move-wide v15, v3

    const-wide/16 v3, 0x0

    :goto_1
    cmp-long v10, v3, v1

    if-gez v10, :cond_3

    long-to-int v10, v3

    int-to-long v12, v0

    move-wide/from16 v17, v6

    const/4 v14, 0x3

    add-long v5, v12, v3

    long-to-int v6, v5

    invoke-static {v11, v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x10

    xor-long v6, v3, v17

    add-long/2addr v12, v6

    long-to-int v6, v12

    invoke-static {v11, v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v6

    or-int/2addr v5, v6

    aput v5, v11, v10

    add-long v3, v3, v17

    move-wide/from16 v6, v17

    const/4 v5, 0x3

    goto :goto_1

    :cond_3
    :goto_2
    move-wide/from16 v17, v6

    const/4 v14, 0x3

    long-to-int v3, v1

    const/4 v4, 0x0

    invoke-static {v11, v4, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v5, 0x0

    :goto_3
    const v7, 0xffff

    cmp-long v10, v5, v1

    if-gez v10, :cond_5

    long-to-int v10, v5

    aget v12, v11, v10

    and-int/2addr v7, v12

    int-to-long v12, v7

    cmp-long v19, v5, v12

    if-gez v19, :cond_4

    goto :goto_4

    :cond_4
    move v10, v7

    :goto_4
    add-long v12, v1, v5

    long-to-int v13, v12

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v10

    aput v7, v11, v13

    add-long v5, v5, v17

    goto :goto_3

    :cond_5
    const-wide/16 v5, 0x0

    :goto_5
    cmp-long v10, v5, v1

    if-gez v10, :cond_6

    long-to-int v10, v5

    aget v12, v11, v10

    shl-int/lit8 v12, v12, 0x10

    int-to-long v12, v12

    or-long/2addr v12, v5

    long-to-int v13, v12

    aput v13, v11, v10

    add-long v5, v5, v17

    goto :goto_5

    :cond_6
    invoke-static {v11, v4, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v5, 0x0

    :goto_6
    cmp-long v10, v5, v1

    if-gez v10, :cond_7

    long-to-int v10, v5

    aget v12, v11, v10

    shl-int/lit8 v12, v12, 0x10

    const v9, 0xffff

    add-long v7, v1, v5

    long-to-int v8, v7

    aget v7, v11, v8

    shr-int/lit8 v7, v7, 0x10

    add-int/2addr v12, v7

    aput v12, v11, v10

    add-long v5, v5, v17

    const v7, 0xffff

    goto :goto_6

    :cond_7
    const v9, 0xffff

    invoke-static {v11, v4, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v5, 0xa

    cmp-long v8, p7, v5

    if-gtz v8, :cond_e

    const-wide/16 v5, 0x0

    :goto_7
    cmp-long v8, v5, v1

    const/high16 v10, -0x10000

    if-gez v8, :cond_8

    add-long v7, v1, v5

    long-to-int v8, v7

    long-to-int v7, v5

    aget v7, v11, v7

    and-int/2addr v7, v9

    shl-int/lit8 v7, v7, 0xa

    const v21, 0xffff

    aget v9, v11, v8

    and-int/lit16 v9, v9, 0x3ff

    or-int/2addr v7, v9

    aput v7, v11, v8

    add-long v5, v5, v17

    const v9, 0xffff

    goto :goto_7

    :cond_8
    const v21, 0xffff

    move-wide/from16 v5, v17

    :goto_8
    sub-long v7, p7, v17

    cmp-long v9, v5, v7

    if-gez v9, :cond_d

    const-wide/16 v7, 0x0

    :goto_9
    cmp-long v9, v7, v1

    if-gez v9, :cond_9

    long-to-int v9, v7

    const-wide/16 v22, 0x2

    add-long v12, v1, v7

    long-to-int v13, v12

    aget v12, v11, v13

    and-int/lit16 v12, v12, -0x400

    shl-int/lit8 v12, v12, 0x6

    int-to-long v12, v12

    or-long/2addr v12, v7

    long-to-int v13, v12

    aput v13, v11, v9

    add-long v7, v7, v17

    goto :goto_9

    :cond_9
    const-wide/16 v22, 0x2

    invoke-static {v11, v4, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v7, 0x0

    :goto_a
    cmp-long v9, v7, v1

    if-gez v9, :cond_a

    long-to-int v9, v7

    aget v12, v11, v9

    shl-int/lit8 v12, v12, 0x14

    move-wide/from16 v24, v15

    const/4 v13, 0x3

    add-long v14, v1, v7

    long-to-int v15, v14

    aget v14, v11, v15

    or-int/2addr v12, v14

    aput v12, v11, v9

    add-long v7, v7, v17

    move-wide/from16 v15, v24

    const/4 v14, 0x3

    goto :goto_a

    :cond_a
    move-wide/from16 v24, v15

    const/4 v13, 0x3

    invoke-static {v11, v4, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v7, 0x0

    :goto_b
    cmp-long v9, v7, v1

    if-gez v9, :cond_c

    long-to-int v9, v7

    aget v9, v11, v9

    const v12, 0xfffff

    and-int/2addr v12, v9

    const v14, 0xffc00

    and-int/2addr v9, v14

    add-long v14, v1, v7

    long-to-int v15, v14

    aget v14, v11, v15

    and-int/lit16 v14, v14, 0x3ff

    or-int/2addr v9, v14

    if-ge v12, v9, :cond_b

    goto :goto_c

    :cond_b
    move v12, v9

    :goto_c
    aput v12, v11, v15

    add-long v7, v7, v17

    goto :goto_b

    :cond_c
    add-long v5, v5, v17

    move-wide/from16 v15, v24

    const/4 v14, 0x3

    goto :goto_8

    :cond_d
    move-wide/from16 v24, v15

    const/4 v13, 0x3

    const-wide/16 v22, 0x2

    const-wide/16 v5, 0x0

    :goto_d
    cmp-long v7, v5, v1

    if-gez v7, :cond_17

    add-long v7, v1, v5

    long-to-int v8, v7

    aget v7, v11, v8

    and-int/lit16 v7, v7, 0x3ff

    aput v7, v11, v8

    add-long v5, v5, v17

    goto :goto_d

    :cond_e
    move-wide/from16 v24, v15

    const/high16 v10, -0x10000

    const/4 v13, 0x3

    const v21, 0xffff

    const-wide/16 v22, 0x2

    const-wide/16 v5, 0x0

    :goto_e
    cmp-long v7, v5, v1

    if-gez v7, :cond_f

    add-long v7, v1, v5

    long-to-int v8, v7

    long-to-int v7, v5

    aget v7, v11, v7

    shl-int/lit8 v7, v7, 0x10

    aget v9, v11, v8

    and-int v9, v9, v21

    or-int/2addr v7, v9

    aput v7, v11, v8

    add-long v5, v5, v17

    goto :goto_e

    :cond_f
    move-wide/from16 v5, v17

    :goto_f
    sub-long v7, p7, v17

    cmp-long v9, v5, v7

    if-gez v9, :cond_16

    const-wide/16 v7, 0x0

    :goto_10
    cmp-long v9, v7, v1

    if-gez v9, :cond_10

    long-to-int v9, v7

    add-long v14, v1, v7

    long-to-int v12, v14

    aget v12, v11, v12

    and-int/2addr v12, v10

    int-to-long v14, v12

    or-long/2addr v14, v7

    long-to-int v12, v14

    aput v12, v11, v9

    add-long v7, v7, v17

    goto :goto_10

    :cond_10
    invoke-static {v11, v4, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v7, 0x0

    :goto_11
    cmp-long v9, v7, v1

    if-gez v9, :cond_11

    long-to-int v9, v7

    aget v12, v11, v9

    shl-int/lit8 v12, v12, 0x10

    add-long v14, v1, v7

    long-to-int v15, v14

    aget v14, v11, v15

    and-int v14, v14, v21

    or-int/2addr v12, v14

    aput v12, v11, v9

    add-long v7, v7, v17

    goto :goto_11

    :cond_11
    sub-long v7, p7, v22

    cmp-long v9, v5, v7

    if-gez v9, :cond_13

    const-wide/16 v7, 0x0

    :goto_12
    cmp-long v9, v7, v1

    if-gez v9, :cond_12

    add-long v14, v1, v7

    long-to-int v9, v14

    long-to-int v12, v7

    aget v12, v11, v12

    and-int/2addr v12, v10

    aget v14, v11, v9

    shr-int/lit8 v14, v14, 0x10

    or-int/2addr v12, v14

    aput v12, v11, v9

    add-long v7, v7, v17

    goto :goto_12

    :cond_12
    mul-long v7, v1, v22

    long-to-int v8, v7

    invoke-static {v11, v3, v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v7, 0x0

    :goto_13
    cmp-long v9, v7, v1

    if-gez v9, :cond_13

    add-long v14, v1, v7

    long-to-int v9, v14

    aget v12, v11, v9

    shl-int/lit8 v12, v12, 0x10

    long-to-int v14, v7

    aget v14, v11, v14

    and-int v14, v14, v21

    or-int/2addr v12, v14

    aput v12, v11, v9

    add-long v7, v7, v17

    goto :goto_13

    :cond_13
    invoke-static {v11, v4, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v7, 0x0

    :goto_14
    cmp-long v9, v7, v1

    if-gez v9, :cond_15

    add-long v14, v1, v7

    long-to-int v9, v14

    aget v12, v11, v9

    and-int v14, v12, v10

    long-to-int v15, v7

    aget v15, v11, v15

    and-int v15, v15, v21

    or-int/2addr v14, v15

    if-ge v14, v12, :cond_14

    aput v14, v11, v9

    :cond_14
    add-long v7, v7, v17

    goto :goto_14

    :cond_15
    add-long v5, v5, v17

    goto/16 :goto_f

    :cond_16
    const-wide/16 v5, 0x0

    :goto_15
    cmp-long v7, v5, v1

    if-gez v7, :cond_17

    add-long v7, v1, v5

    long-to-int v8, v7

    aget v7, v11, v8

    and-int v7, v7, v21

    aput v7, v11, v8

    add-long v5, v5, v17

    goto :goto_15

    :cond_17
    const-wide/16 v5, 0x0

    if-eqz p5, :cond_18

    :goto_16
    cmp-long v0, v5, v1

    if-gez v0, :cond_19

    long-to-int v0, v5

    aget-short v7, p5, v0

    shl-int/lit8 v7, v7, 0x10

    int-to-long v7, v7

    add-long/2addr v7, v5

    long-to-int v8, v7

    aput v8, v11, v0

    add-long v5, v5, v17

    goto :goto_16

    :cond_18
    :goto_17
    cmp-long v7, v5, v1

    if-gez v7, :cond_19

    long-to-int v7, v5

    int-to-long v8, v0

    add-long/2addr v8, v5

    long-to-int v9, v8

    invoke-static {v11, v9}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v8

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    add-long/2addr v8, v5

    long-to-int v9, v8

    aput v9, v11, v7

    add-long v5, v5, v17

    goto :goto_17

    :cond_19
    invoke-static {v11, v4, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    move-wide/from16 v5, p1

    const-wide/16 v7, 0x0

    :goto_18
    const/high16 v0, -0x10000

    div-long v9, v1, v22

    cmp-long v12, v7, v9

    if-gez v12, :cond_1a

    mul-long v9, v7, v22

    add-long v14, v1, v9

    long-to-int v12, v14

    aget v16, v11, v12

    const/high16 p1, -0x10000

    and-int/lit8 v0, v16, 0x1

    move-wide/from16 p5, v14

    const/16 v16, 0x3

    int-to-long v13, v0

    add-long/2addr v13, v9

    long-to-int v14, v13

    xor-int/lit8 v13, v14, 0x1

    move-wide/from16 v26, v5

    shr-long v4, v26, v16

    long-to-int v5, v4

    aget-byte v4, p0, v5

    move/from16 p2, v0

    and-long v0, v26, v24

    long-to-int v1, v0

    shl-int v0, p2, v1

    xor-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p0, v5

    add-long v5, v26, p3

    long-to-int v0, v9

    aget v0, v11, v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v14

    aput v0, v11, v12

    add-long v0, p5, v17

    long-to-int v1, v0

    add-long v9, v9, v17

    long-to-int v0, v9

    aget v0, v11, v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v13

    aput v0, v11, v1

    add-long v7, v7, v17

    move-wide/from16 v1, p9

    const/4 v4, 0x0

    const/4 v13, 0x3

    goto :goto_18

    :cond_1a
    move-wide/from16 v26, v5

    const/high16 p1, -0x10000

    const/16 v16, 0x3

    mul-long v0, p9, v22

    long-to-int v2, v0

    invoke-static {v11, v3, v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    mul-long v12, p7, v22

    const-wide/16 v4, 0x3

    sub-long v4, v12, v4

    mul-long v4, v4, p3

    mul-long v4, v4, v9

    add-long v4, v26, v4

    const-wide/16 v6, 0x0

    :goto_19
    cmp-long v2, v6, v9

    move-wide/from16 p5, v0

    if-gez v2, :cond_1b

    mul-long v0, v6, v22

    move-wide/from16 v26, v4

    add-long v4, p9, v0

    long-to-int v2, v4

    aget v2, v11, v2

    and-int/lit8 v8, v2, 0x1

    move-wide/from16 v28, v4

    int-to-long v4, v8

    add-long/2addr v4, v0

    long-to-int v5, v4

    xor-int/lit8 v4, v5, 0x1

    move/from16 p2, v4

    move v14, v5

    shr-long v4, v26, v16

    long-to-int v5, v4

    aget-byte v4, p0, v5

    move/from16 v31, v4

    move/from16 v30, v5

    and-long v4, v26, v24

    long-to-int v5, v4

    shl-int v4, v8, v5

    xor-int v4, v31, v4

    int-to-byte v4, v4

    aput-byte v4, p0, v30

    add-long v4, v26, p3

    long-to-int v8, v0

    shl-int/lit8 v14, v14, 0x10

    and-int v2, v2, v21

    or-int/2addr v2, v14

    aput v2, v11, v8

    add-long v0, v0, v17

    long-to-int v1, v0

    shl-int/lit8 v0, p2, 0x10

    move/from16 p2, v0

    move v2, v1

    add-long v0, v28, v17

    long-to-int v1, v0

    aget v0, v11, v1

    and-int v0, v0, v21

    or-int v0, p2, v0

    aput v0, v11, v2

    add-long v6, v6, v17

    move-wide/from16 v0, p5

    goto :goto_19

    :cond_1b
    move-wide/from16 v26, v4

    const/4 v15, 0x0

    invoke-static {v11, v15, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    sub-long v12, v12, v22

    mul-long v12, v12, p3

    mul-long v12, v12, v9

    sub-long v1, v26, v12

    mul-int/lit8 v3, v3, 0x4

    new-array v0, v3, [S

    const-wide/16 v3, 0x0

    :goto_1a
    cmp-long v5, v3, p5

    if-gez v5, :cond_1c

    mul-long v12, v3, v22

    long-to-int v5, v12

    long-to-int v6, v3

    aget v6, v11, v6

    int-to-short v7, v6

    aput-short v7, v0, v5

    add-long v12, v12, v17

    long-to-int v5, v12

    and-int v6, v6, p1

    shr-int/lit8 v6, v6, 0x10

    int-to-short v6, v6

    aput-short v6, v0, v5

    add-long v3, v3, v17

    goto :goto_1a

    :cond_1c
    const-wide/16 v3, 0x0

    :goto_1b
    cmp-long v5, v3, v9

    if-gez v5, :cond_1d

    long-to-int v5, v3

    mul-long v12, v3, v22

    long-to-int v6, v12

    aget v6, v11, v6

    and-int v6, v6, v21

    ushr-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    aput-short v6, v0, v5

    add-long v5, v3, v9

    long-to-int v6, v5

    add-long v12, v12, v17

    long-to-int v5, v12

    aget v5, v11, v5

    and-int v5, v5, v21

    ushr-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v6

    add-long v3, v3, v17

    goto :goto_1b

    :cond_1d
    const-wide/16 v19, 0x0

    :goto_1c
    const-wide/16 v3, 0x4

    cmp-long v5, v19, v9

    if-gez v5, :cond_1e

    div-long v3, p9, v3

    add-long v3, p9, v3

    add-long v3, v3, v19

    long-to-int v4, v3

    mul-long v12, v19, v22

    add-long v6, v12, v17

    long-to-int v3, v6

    aget-short v3, v0, v3

    shl-int/lit8 v3, v3, 0x10

    long-to-int v5, v12

    aget-short v5, v0, v5

    or-int/2addr v3, v5

    aput v3, v11, v4

    add-long v19, v19, v17

    goto :goto_1c

    :cond_1e
    mul-long v12, p3, v22

    div-long v3, p9, v3

    add-long v14, p9, v3

    long-to-int v0, v14

    mul-int/lit8 v6, v0, 0x2

    sub-long v7, p7, v17

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide v3, v12

    invoke-static/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    add-long v1, v1, p3

    mul-long v14, v14, v22

    add-long/2addr v14, v9

    long-to-int v6, v14

    move-object/from16 v11, p11

    invoke-static/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    return-void
.end method

.method private static controlbitsfrompermutation([B[SJJ)V
    .locals 17

    move-wide/from16 v9, p4

    const-wide/16 v12, 0x2

    mul-long v0, v9, v12

    long-to-int v1, v0

    new-array v11, v1, [I

    long-to-int v14, v9

    new-array v15, v14, [S

    :goto_0
    const/16 v16, 0x0

    const/4 v0, 0x0

    :goto_1
    int-to-long v1, v0

    mul-long v3, p2, v12

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    mul-long v3, v3, v9

    div-long/2addr v3, v12

    const-wide/16 v5, 0x7

    add-long/2addr v3, v5

    const-wide/16 v5, 0x8

    div-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    aput-byte v16, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x1

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-wide/from16 v7, p2

    invoke-static/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    const/4 v1, 0x0

    :goto_2
    int-to-long v2, v1

    cmp-long v4, v2, p4

    if-gez v4, :cond_1

    int-to-short v2, v1

    aput-short v2, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    int-to-long v3, v1

    const/4 v5, 0x4

    cmp-long v6, v3, p2

    if-gez v6, :cond_2

    invoke-static {v15, v0, v2, v1, v14}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->layer([S[BIII)V

    int-to-long v2, v2

    shr-long v4, p4, v5

    add-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    sub-long v3, p2, v12

    long-to-int v1, v3

    :goto_4
    if-ltz v1, :cond_3

    invoke-static {v15, v0, v2, v1, v14}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->layer([S[BIII)V

    int-to-long v2, v2

    shr-long v6, p4, v5

    add-long/2addr v2, v6

    long-to-int v2, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_5
    int-to-long v2, v1

    cmp-long v4, v2, p4

    if-gez v4, :cond_4

    aget-short v2, p1, v1

    aget-short v3, v15, v1

    xor-int/2addr v2, v3

    or-int v2, v16, v2

    int-to-short v2, v2

    add-int/lit8 v1, v1, 0x1

    move/from16 v16, v2

    goto :goto_5

    :cond_4
    if-nez v16, :cond_5

    return-void

    :cond_5
    move-wide/from16 v9, p4

    goto :goto_0
.end method

.method private static ctz(J)I
    .locals 10

    const-wide/16 v0, -0x1

    xor-long/2addr p0, v0

    const-wide v0, 0x101010101010101L

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    ushr-long v5, p0, v4

    and-long/2addr v0, v5

    add-long/2addr v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide p0, 0x808080808080808L

    and-long/2addr p0, v2

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    const/4 v0, 0x2

    ushr-long v6, p0, v0

    or-long/2addr p0, v6

    ushr-long v6, v2, v5

    and-long v8, v6, p0

    add-long/2addr v2, v8

    :goto_1
    if-ge v0, v5, :cond_1

    ushr-long v8, p0, v5

    and-long/2addr p0, v8

    ushr-long/2addr v6, v5

    and-long v8, v6, p0

    add-long/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    long-to-int p0, v2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private decrypt([B[B[B)I
    .locals 11

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [S

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    new-array v3, v2, [S

    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [S

    mul-int/lit8 v5, v0, 0x2

    new-array v5, v5, [S

    const/4 v6, 0x1

    add-int/2addr v0, v6

    new-array v0, v0, [S

    new-array v7, v2, [S

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge v9, v10, :cond_0

    aget-byte v10, p3, v9

    aput-byte v10, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 p3, p3, 0x8

    if-ge v10, p3, :cond_1

    aput-byte v8, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_2
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge p3, v9, :cond_2

    mul-int/lit8 v9, p3, 0x2

    add-int/lit8 v9, v9, 0x28

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {p2, v9, v10}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v9

    aput-short v9, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    aput-short v6, v1, v9

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

    invoke-virtual {p3, v3, p2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->support_gen([S[B)V

    invoke-direct {p0, v4, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->synd([S[S[S[B)V

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->bm([S[S)V

    invoke-direct {p0, v7, v0, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->root([S[S[S)V

    const/4 p2, 0x0

    :goto_3
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 p3, p3, 0x8

    if-ge p2, p3, :cond_3

    aput-byte v8, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_4
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v2, v7, p2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_iszero(S)S

    move-result v0

    and-int/2addr v0, v6

    int-to-short v0, v0

    div-int/lit8 v2, p2, 0x8

    aget-byte v9, p1, v2

    rem-int/lit8 v10, p2, 0x8

    shl-int v10, v0, v10

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p1, v2

    add-int/2addr p3, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_4
    invoke-direct {p0, v5, v1, v3, p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->synd([S[S[S[B)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    xor-int/2addr p1, p3

    :goto_5
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 p2, p2, 0x2

    if-ge v8, p2, :cond_5

    aget-short p2, v4, v8

    aget-short p3, v5, v8

    xor-int/2addr p2, p3

    or-int/2addr p1, p2

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 p1, p1, -0x1

    shr-int/lit8 p1, p1, 0xf

    and-int/2addr p1, v6

    xor-int/2addr p1, v6

    return p1
.end method

.method private encrypt([B[B[BLjava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_error_vector([BLjava/security/SecureRandom;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->syndrome([B[B[B)V

    return-void
.end method

.method private eval([SS)S
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    aget-short v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v2, v1, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v1

    aget-short v2, p1, v0

    xor-int/2addr v1, v2

    int-to-short v1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private generate_error_vector([BLjava/security/SecureRandom;)V
    .locals 10

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [S

    new-array v2, v0, [S

    new-array v0, v0, [B

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->countErrorIndices:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    invoke-virtual {p2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v5, 0x0

    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_1

    mul-int/lit8 v6, v5, 0x2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v3, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v6

    aput-short v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v7, v6, 0x2

    if-ge v3, v7, :cond_3

    if-ge v5, v6, :cond_3

    aget-short v6, v1, v3

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v6, v7, :cond_2

    add-int/lit8 v7, v5, 0x1

    aput-short v6, v2, v5

    move v5, v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-ge v5, v6, :cond_5

    goto :goto_0

    :cond_4
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    invoke-virtual {p2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v5, 0x0

    :goto_3
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v6, :cond_5

    mul-int/lit8 v6, v5, 0x2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v3, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v6

    aput-short v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_4
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v7, :cond_8

    if-eq v6, v3, :cond_8

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v5, :cond_7

    aget-short v8, v2, v5

    aget-short v9, v2, v7

    if-ne v8, v9, :cond_6

    const/4 v6, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    if-nez v6, :cond_0

    const/4 p2, 0x0

    :goto_7
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge p2, v1, :cond_9

    aget-short v1, v2, p2

    and-int/lit8 v1, v1, 0x7

    shl-int v1, v3, v1

    int-to-byte v1, v1

    aput-byte v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_9
    const/4 p2, 0x0

    :goto_8
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    if-ge p2, v1, :cond_b

    aput-byte v4, p1, p2

    const/4 v1, 0x0

    :goto_9
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v1, v3, :cond_a

    aget-short v3, v2, v1

    shr-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    invoke-static {p2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->same_mask32(SS)B

    move-result v3

    int-to-short v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aget-byte v5, p1, p2

    aget-byte v6, v0, v1

    and-int/2addr v3, v6

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 p2, p2, 0x1

    int-to-short p2, p2

    goto :goto_8

    :cond_b
    return-void
.end method

.method private generate_irr_poly([S)I
    .locals 12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v0, v3, v4

    const/4 v0, 0x0

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    aget-object v3, v1, v0

    aput-short v4, v3, v0

    aget-object v3, v1, v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    invoke-static {p1, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v4

    new-array v10, v3, [I

    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v6, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    aget-object v8, v1, v2

    ushr-int/lit8 v3, v2, 0x1

    aget-object v9, v1, v3

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sqr_poly(I[I[S[S[I)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    add-int/lit8 v3, v2, 0x1

    aget-object v8, v1, v3

    aget-object v9, v1, v2

    move-object v11, v10

    move-object v10, p1

    invoke-virtual/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul_poly(I[I[S[S[S[I)V

    move-object v10, v11

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    if-ne v2, v6, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    aget-object v8, v1, v2

    ushr-int/2addr v2, v4

    aget-object v9, v1, v2

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sqr_poly(I[I[S[S[I)V

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v3, :cond_8

    add-int/lit8 v3, v2, 0x1

    move v5, v3

    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-object v7, v1, v2

    aget-short v7, v7, v2

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_iszero(S)S

    move-result v6

    move v7, v2

    :goto_3
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v8, v4

    if-ge v7, v8, :cond_2

    aget-object v8, v1, v7

    aget-short v9, v8, v2

    aget-short v10, v8, v5

    and-int/2addr v10, v6

    int-to-short v10, v10

    xor-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v8, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    aget-object v5, v1, v2

    aget-short v5, v5, v2

    if-nez v5, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v5

    move v6, v2

    :goto_4
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v7, v4

    if-ge v6, v7, :cond_5

    aget-object v7, v1, v6

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v9, v7, v2

    invoke-virtual {v8, v9, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v8

    aput-short v8, v7, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_5
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v6, :cond_7

    if-eq v5, v2, :cond_6

    aget-object v6, v1, v2

    aget-short v6, v6, v5

    move v7, v2

    :goto_6
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v7, v8, :cond_6

    aget-object v8, v1, v7

    aget-short v9, v8, v5

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v11, v8, v2

    invoke-virtual {v10, v11, v6}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v10

    xor-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v8, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_1

    :cond_8
    aget-object v1, v1, v3

    invoke-static {v1, v0, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method

.method static get_q_short([II)S
    .locals 1

    div-int/lit8 v0, p1, 0x2

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    aget p0, p0, v0

    :goto_0
    int-to-short p0, p0

    return p0

    :cond_0
    aget p0, p0, v0

    const/high16 p1, -0x10000

    and-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x10

    goto :goto_0
.end method

.method private static layer([S[BIII)V
    .locals 11

    const/4 v0, 0x1

    shl-int p3, v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p4, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p3, :cond_0

    add-int v5, v2, v4

    aget-short v6, p0, v5

    add-int v7, v5, p3

    aget-short v8, p0, v7

    xor-int/2addr v8, v6

    shr-int/lit8 v9, v3, 0x3

    add-int/2addr v9, p2

    aget-byte v9, p1, v9

    and-int/lit8 v10, v3, 0x7

    shr-int/2addr v9, v10

    and-int/2addr v9, v0

    neg-int v9, v9

    and-int/2addr v8, v9

    xor-int/2addr v6, v8

    int-to-short v6, v6

    aput-short v6, p0, v5

    aget-short v5, p0, v7

    xor-int/2addr v5, v8

    int-to-short v5, v5

    aput-short v5, p0, v7

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v4, p3, 0x2

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static min(SI)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method private mov_columns([[B[S[J)I
    .locals 28

    move-object/from16 v0, p0

    const/16 v1, 0x40

    new-array v2, v1, [J

    const/16 v3, 0x20

    new-array v4, v3, [J

    const/16 v5, 0x9

    new-array v6, v5, [B

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    sub-int/2addr v7, v3

    div-int/lit8 v8, v7, 0x8

    rem-int/lit8 v9, v7, 0x8

    iget-boolean v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    const/4 v11, 0x0

    const/16 v12, 0x8

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v3, :cond_3

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v5, :cond_0

    add-int v14, v7, v10

    aget-object v14, p1, v14

    add-int v15, v8, v13

    aget-byte v14, v14, v15

    aput-byte v14, v6, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_1

    aget-byte v14, v6, v13

    and-int/lit16 v14, v14, 0xff

    shr-int/2addr v14, v9

    add-int/lit8 v15, v13, 0x1

    aget-byte v16, v6, v15

    rsub-int/lit8 v17, v9, 0x8

    shl-int v16, v16, v17

    or-int v14, v14, v16

    int-to-byte v14, v14

    aput-byte v14, v6, v13

    move v13, v15

    goto :goto_2

    :cond_1
    invoke-static {v6, v11}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v13

    aput-wide v13, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_3

    add-int v13, v7, v10

    aget-object v13, p1, v13

    invoke-static {v13, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v13

    aput-wide v13, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v13, 0x0

    aput-wide v13, p3, v11

    const/4 v10, 0x0

    :goto_4
    const-wide/16 v15, 0x1

    if-ge v10, v3, :cond_8

    aget-wide v17, v2, v10

    add-int/lit8 v19, v10, 0x1

    move-wide/from16 v20, v13

    move/from16 v13, v19

    :goto_5
    if-ge v13, v3, :cond_4

    aget-wide v22, v2, v13

    or-long v17, v17, v22

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_4
    cmp-long v13, v17, v20

    if-nez v13, :cond_5

    const/4 v1, -0x1

    return v1

    :cond_5
    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->ctz(J)I

    move-result v13

    const/4 v14, 0x0

    int-to-long v11, v13

    aput-wide v11, v4, v10

    aget-wide v22, p3, v14

    long-to-int v12, v11

    shl-long v11, v15, v12

    or-long v11, v22, v11

    aput-wide v11, p3, v14

    move/from16 v11, v19

    :goto_6
    if-ge v11, v3, :cond_6

    aget-wide v22, v2, v10

    shr-long v24, v22, v13

    and-long v24, v24, v15

    sub-long v24, v24, v15

    aget-wide v26, v2, v11

    and-long v24, v26, v24

    xor-long v22, v22, v24

    aput-wide v22, v2, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_6
    move/from16 v11, v19

    :goto_7
    if-ge v11, v3, :cond_7

    aget-wide v22, v2, v11

    shr-long v24, v22, v13

    move-object/from16 v18, v6

    and-long v5, v24, v15

    neg-long v5, v5

    aget-wide v24, v2, v10

    and-long v5, v24, v5

    xor-long v5, v22, v5

    aput-wide v5, v2, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v18

    const/16 v5, 0x9

    goto :goto_7

    :cond_7
    move/from16 v10, v19

    move-wide/from16 v13, v20

    const/4 v11, 0x0

    const/16 v12, 0x8

    goto :goto_4

    :cond_8
    move-object/from16 v18, v6

    const/4 v14, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_a

    add-int/lit8 v5, v2, 0x1

    move v6, v5

    :goto_9
    if-ge v6, v1, :cond_9

    add-int v10, v7, v2

    aget-short v11, p2, v10

    add-int v13, v7, v6

    aget-short v19, p2, v13

    xor-int v11, v11, v19

    move/from16 v20, v2

    int-to-long v1, v11

    int-to-short v11, v6

    move/from16 p3, v13

    aget-wide v12, v4, v20

    long-to-int v13, v12

    int-to-short v12, v13

    invoke-static {v11, v12}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->same_mask64(SS)J

    move-result-wide v11

    and-long/2addr v1, v11

    aget-short v11, p2, v10

    int-to-long v11, v11

    xor-long/2addr v11, v1

    long-to-int v12, v11

    int-to-short v11, v12

    aput-short v11, p2, v10

    aget-short v10, p2, p3

    int-to-long v10, v10

    xor-long/2addr v1, v10

    long-to-int v2, v1

    int-to-short v1, v2

    aput-short v1, p2, p3

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v20

    const/16 v1, 0x40

    goto :goto_9

    :cond_9
    move v2, v5

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    :goto_a
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v1, v2, :cond_11

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    const/16 v12, 0x9

    :goto_b
    if-ge v2, v12, :cond_b

    aget-object v5, p1, v1

    add-int v6, v8, v2

    aget-byte v5, v5, v6

    aput-byte v5, v18, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    const/16 v5, 0x8

    :goto_c
    if-ge v2, v5, :cond_c

    aget-byte v6, v18, v2

    and-int/lit16 v6, v6, 0xff

    shr-int/2addr v6, v9

    add-int/lit8 v7, v2, 0x1

    aget-byte v10, v18, v7

    rsub-int/lit8 v11, v9, 0x8

    shl-int/2addr v10, v11

    or-int/2addr v6, v10

    int-to-byte v6, v6

    aput-byte v6, v18, v2

    move v2, v7

    goto :goto_c

    :cond_c
    move-object/from16 v2, v18

    invoke-static {v2, v14}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v6

    goto :goto_d

    :cond_d
    move-object/from16 v2, v18

    const/16 v5, 0x8

    const/16 v12, 0x9

    aget-object v6, p1, v1

    invoke-static {v6, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v6

    :goto_d
    const/4 v10, 0x0

    :goto_e
    if-ge v10, v3, :cond_e

    shr-long v17, v6, v10

    move-object v13, v4

    aget-wide v3, v13, v10

    long-to-int v5, v3

    shr-long v20, v6, v5

    xor-long v17, v17, v20

    and-long v17, v17, v15

    long-to-int v4, v3

    shl-long v3, v17, v4

    xor-long/2addr v3, v6

    shl-long v5, v17, v10

    xor-long/2addr v3, v5

    add-int/lit8 v10, v10, 0x1

    move-wide v6, v3

    move-object v4, v13

    const/16 v3, 0x20

    const/16 v5, 0x8

    goto :goto_e

    :cond_e
    move-object v13, v4

    iget-boolean v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v3, :cond_f

    const/4 v14, 0x0

    invoke-static {v2, v14, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    aget-object v3, p1, v1

    add-int/lit8 v4, v8, 0x8

    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    ushr-int/2addr v5, v9

    shl-int/2addr v5, v9

    const/4 v6, 0x7

    aget-byte v7, v2, v6

    and-int/lit16 v7, v7, 0xff

    rsub-int/lit8 v10, v9, 0x8

    ushr-int/2addr v7, v10

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v14, 0x0

    aget-byte v4, v2, v14

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v9

    aget-byte v5, v3, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v10

    ushr-int/2addr v5, v10

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    :goto_f
    const/4 v3, 0x1

    if-lt v6, v3, :cond_10

    aget-object v3, p1, v1

    add-int v4, v8, v6

    aget-byte v5, v2, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v9

    add-int/lit8 v7, v6, -0x1

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    ushr-int/2addr v7, v10

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_f

    :cond_f
    aget-object v3, p1, v1

    invoke-static {v3, v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v18, v2

    move-object v4, v13

    const/16 v3, 0x20

    const/4 v14, 0x0

    goto/16 :goto_a

    :cond_11
    return v14
.end method

.method private pk_gen([B[B[I[S[J)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [S

    const/4 v5, 0x1

    aput-short v5, v4, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_0
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v6, v7, :cond_0

    mul-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, 0x28

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    move-object/from16 v9, p2

    invoke-static {v9, v7, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v7

    aput-short v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v6, v5, v6

    new-array v7, v6, [J

    const/4 v8, 0x0

    :goto_1
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v9, v5, v9

    const/16 v10, 0x1f

    if-ge v8, v9, :cond_1

    aget v9, p3, v8

    int-to-long v11, v9

    aput-wide v11, v7, v8

    shl-long v9, v11, v10

    aput-wide v9, v7, v8

    int-to-long v11, v8

    or-long/2addr v9, v11

    aput-wide v9, v7, v8

    const-wide v11, 0x7fffffffffffffffL

    and-long/2addr v9, v11

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v7, v3, v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort64([JII)V

    const/4 v6, 0x1

    :goto_2
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v8, v5, v8

    const/4 v9, -0x1

    if-ge v6, v8, :cond_3

    add-int/lit8 v8, v6, -0x1

    aget-wide v11, v7, v8

    shr-long/2addr v11, v10

    aget-wide v13, v7, v6

    shr-long/2addr v13, v10

    cmp-long v8, v11, v13

    if-nez v8, :cond_2

    return v9

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    new-array v6, v6, [S

    const/4 v8, 0x0

    :goto_3
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v10, v5, v10

    if-ge v8, v10, :cond_4

    aget-wide v10, v7, v8

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    int-to-long v12, v12

    and-long/2addr v10, v12

    long-to-int v11, v10

    int-to-short v10, v11

    aput-short v10, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_4
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v7, v8, :cond_5

    aget-short v8, v2, v7

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-static {v8, v10}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->bitrev(SI)S

    move-result v8

    aput-short v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    new-array v7, v8, [S

    invoke-direct {v0, v7, v4, v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->root([S[S[S)V

    const/4 v4, 0x0

    :goto_5
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v4, v8, :cond_6

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v10, v7, v4

    invoke-virtual {v8, v10}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v8

    aput-short v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    div-int/lit8 v8, v8, 0x8

    const/4 v10, 0x2

    new-array v10, v10, [I

    aput v8, v10, v5

    aput v4, v10, v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    const/4 v8, 0x0

    :goto_6
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v8, v10, :cond_8

    const/4 v10, 0x0

    :goto_7
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v11, v11, 0x8

    if-ge v10, v11, :cond_7

    aget-object v11, v4, v8

    aput-byte v3, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_8
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v8, v10, :cond_c

    const/4 v10, 0x0

    :goto_9
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v10, v11, :cond_a

    const/4 v11, 0x0

    :goto_a
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    if-ge v11, v12, :cond_9

    add-int/lit8 v13, v10, 0x7

    aget-short v13, v7, v13

    ushr-int/2addr v13, v11

    and-int/2addr v13, v5

    int-to-byte v13, v13

    shl-int/2addr v13, v5

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x6

    aget-short v14, v7, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v5

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x5

    aget-short v14, v7, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v5

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x4

    aget-short v14, v7, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v5

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x3

    aget-short v14, v7, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v5

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x2

    aget-short v14, v7, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v5

    int-to-byte v13, v13

    add-int/lit8 v14, v10, 0x1

    aget-short v14, v7, v14

    ushr-int/2addr v14, v11

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    int-to-byte v13, v13

    shl-int/2addr v13, v5

    int-to-byte v13, v13

    aget-short v14, v7, v10

    ushr-int/2addr v14, v11

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    int-to-byte v13, v13

    mul-int v12, v12, v8

    add-int/2addr v12, v11

    aget-object v12, v4, v12

    div-int/lit8 v14, v10, 0x8

    aput-byte v13, v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v10, v10, 0x8

    goto :goto_9

    :cond_a
    const/4 v10, 0x0

    :goto_b
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v10, v11, :cond_b

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v12, v7, v10

    aget-short v13, v6, v10

    invoke-virtual {v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v11

    aput-short v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_c
    const/4 v6, 0x0

    :goto_c
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v6, v7, :cond_14

    ushr-int/lit8 v8, v6, 0x3

    and-int/lit8 v10, v6, 0x7

    iget-boolean v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-eqz v11, :cond_d

    add-int/lit8 v7, v7, -0x20

    if-ne v6, v7, :cond_d

    move-object/from16 v11, p5

    invoke-direct {v0, v4, v2, v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->mov_columns([[B[S[J)I

    move-result v7

    if-eqz v7, :cond_e

    return v9

    :cond_d
    move-object/from16 v11, p5

    :cond_e
    add-int/lit8 v7, v6, 0x1

    move v12, v7

    :goto_d
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v12, v13, :cond_10

    aget-object v13, v4, v6

    aget-byte v13, v13, v8

    aget-object v14, v4, v12

    aget-byte v14, v14, v8

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    shr-int/2addr v13, v10

    int-to-byte v13, v13

    and-int/2addr v13, v5

    int-to-byte v13, v13

    neg-int v13, v13

    int-to-byte v13, v13

    const/4 v14, 0x0

    :goto_e
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v15, v15, 0x8

    if-ge v14, v15, :cond_f

    aget-object v15, v4, v6

    aget-byte v16, v15, v14

    aget-object v17, v4, v12

    aget-byte v17, v17, v14

    and-int v17, v17, v13

    const/16 v18, 0x1

    xor-int v5, v16, v17

    int-to-byte v5, v5

    aput-byte v5, v15, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x1

    goto :goto_e

    :cond_f
    const/16 v18, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    goto :goto_d

    :cond_10
    const/16 v18, 0x1

    aget-object v5, v4, v6

    aget-byte v5, v5, v8

    shr-int/2addr v5, v10

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_11

    return v9

    :cond_11
    const/4 v5, 0x0

    :goto_f
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v5, v12, :cond_13

    if-eq v5, v6, :cond_12

    aget-object v12, v4, v5

    aget-byte v12, v12, v8

    shr-int/2addr v12, v10

    int-to-byte v12, v12

    and-int/lit8 v12, v12, 0x1

    int-to-byte v12, v12

    neg-int v12, v12

    int-to-byte v12, v12

    const/4 v13, 0x0

    :goto_10
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v14, v14, 0x8

    if-ge v13, v14, :cond_12

    aget-object v14, v4, v5

    aget-byte v15, v14, v13

    aget-object v16, v4, v6

    aget-byte v16, v16, v13

    and-int v16, v16, v12

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_13
    move v6, v7

    const/4 v5, 0x1

    goto/16 :goto_c

    :cond_14
    const/16 v18, 0x1

    if-eqz v1, :cond_18

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v2, :cond_17

    rem-int/lit8 v2, v7, 0x8

    if-nez v2, :cond_15

    aget-object v2, v4, v8

    add-int/lit8 v7, v7, -0x1

    div-int/lit8 v7, v7, 0x8

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v4, v4, 0x8

    invoke-static {v2, v7, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    goto :goto_14

    :cond_15
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_11
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v5, v7, :cond_18

    add-int/lit8 v7, v7, -0x1

    div-int/lit8 v7, v7, 0x8

    :goto_12
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v8, v8, 0x8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_16

    add-int/lit8 v8, v6, 0x1

    aget-object v9, v4, v5

    aget-byte v10, v9, v7

    and-int/lit16 v10, v10, 0xff

    ushr-int/2addr v10, v2

    add-int/lit8 v7, v7, 0x1

    aget-byte v9, v9, v7

    rsub-int/lit8 v11, v2, 0x8

    shl-int/2addr v9, v11

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    move v6, v8

    goto :goto_12

    :cond_16
    add-int/lit8 v8, v6, 0x1

    aget-object v9, v4, v5

    aget-byte v7, v9, v7

    and-int/lit16 v7, v7, 0xff

    ushr-int/2addr v7, v2

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_11

    :cond_17
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    const/4 v5, 0x0

    :goto_13
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v5, v6, :cond_18

    aget-object v7, v4, v5

    div-int/lit8 v6, v6, 0x8

    mul-int v8, v2, v5

    invoke-static {v7, v6, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_18
    :goto_14
    return v3
.end method

.method private root([S[S[S)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v0, v1, :cond_0

    aget-short v1, p3, v0

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->eval([SS)S

    move-result v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static same_mask32(SS)B
    .locals 0

    xor-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 p0, p0, 0x1f

    neg-int p0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static same_mask64(SS)J
    .locals 2

    xor-int/2addr p0, p1

    int-to-long p0, p0

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    const/16 v0, 0x3f

    ushr-long/2addr p0, v0

    neg-long p0, p0

    return-wide p0
.end method

.method private static sort32([III)V
    .locals 13

    sub-int/2addr p2, p1

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sub-int v1, p2, v0

    if-ge v0, v1, :cond_1

    add-int/2addr v0, v0

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-lez v1, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    sub-int v4, p2, v1

    if-ge v3, v4, :cond_3

    and-int v4, v3, v1

    if-nez v4, :cond_2

    add-int v4, p1, v3

    add-int v5, v4, v1

    aget v6, p0, v5

    aget v7, p0, v4

    xor-int v8, v6, v7

    sub-int v9, v6, v7

    xor-int/2addr v6, v9

    and-int/2addr v6, v8

    xor-int/2addr v6, v9

    shr-int/lit8 v6, v6, 0x1f

    and-int/2addr v6, v8

    xor-int/2addr v7, v6

    aput v7, p0, v4

    aget v4, p0, v5

    xor-int/2addr v4, v6

    aput v4, p0, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_3
    if-le v3, v1, :cond_7

    :goto_4
    sub-int v4, p2, v3

    if-ge v2, v4, :cond_6

    and-int v4, v2, v1

    if-nez v4, :cond_5

    add-int v4, p1, v2

    add-int v5, v4, v1

    aget v6, p0, v5

    move v7, v3

    :goto_5
    if-le v7, v1, :cond_4

    add-int v8, v4, v7

    aget v9, p0, v8

    xor-int v10, v9, v6

    sub-int v11, v9, v6

    xor-int v12, v11, v9

    and-int/2addr v12, v10

    xor-int/2addr v11, v12

    shr-int/lit8 v11, v11, 0x1f

    and-int/2addr v10, v11

    xor-int/2addr v6, v10

    xor-int/2addr v9, v10

    aput v9, p0, v8

    ushr-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    aput v6, p0, v5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    ushr-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    :goto_6
    return-void
.end method

.method private static sort64([JII)V
    .locals 18

    sub-int v0, p2, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_6

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sub-int v2, v0, v1

    if-ge v1, v2, :cond_1

    add-int/2addr v1, v1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-lez v2, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    sub-int v5, v0, v2

    const/16 v6, 0x3f

    if-ge v4, v5, :cond_3

    and-int v5, v4, v2

    if-nez v5, :cond_2

    add-int v5, p1, v4

    add-int v7, v5, v2

    aget-wide v8, p0, v7

    aget-wide v10, p0, v5

    sub-long v12, v8, v10

    ushr-long/2addr v12, v6

    neg-long v12, v12

    xor-long/2addr v8, v10

    and-long/2addr v8, v12

    xor-long/2addr v10, v8

    aput-wide v10, p0, v5

    aget-wide v5, p0, v7

    xor-long/2addr v5, v8

    aput-wide v5, p0, v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_3
    if-le v4, v2, :cond_7

    :goto_4
    sub-int v5, v0, v4

    if-ge v3, v5, :cond_6

    and-int v5, v3, v2

    if-nez v5, :cond_5

    add-int v5, p1, v3

    add-int v7, v5, v2

    aget-wide v8, p0, v7

    move v10, v4

    :goto_5
    if-le v10, v2, :cond_4

    add-int v11, v5, v10

    aget-wide v12, p0, v11

    sub-long v14, v12, v8

    ushr-long/2addr v14, v6

    neg-long v14, v14

    xor-long v16, v8, v12

    and-long v14, v14, v16

    xor-long/2addr v8, v14

    xor-long/2addr v12, v14

    aput-wide v12, p0, v11

    ushr-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_4
    aput-wide v8, p0, v7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    ushr-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    ushr-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    :goto_6
    return-void
.end method

.method private synd([S[S[S[B)V
    .locals 7

    const/4 v0, 0x0

    aget-byte v1, p4, v0

    const/4 v2, 0x1

    and-int/2addr v1, v2

    int-to-short v1, v1

    aget-short v3, p3, v0

    invoke-direct {p0, p2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->eval([SS)S

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sq(S)S

    move-result v4

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v4

    neg-int v1, v1

    and-int/2addr v1, v4

    int-to-short v1, v1

    aput-short v1, p1, v0

    const/4 v4, 0x1

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v5, v1, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v1

    aput-short v1, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v1, v3, :cond_2

    div-int/lit8 v3, v1, 0x8

    aget-byte v3, p4, v3

    rem-int/lit8 v4, v1, 0x8

    shr-int/2addr v3, v4

    and-int/2addr v3, v2

    int-to-short v3, v3

    aget-short v4, p3, v1

    invoke-direct {p0, p2, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->eval([SS)S

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sq(S)S

    move-result v5

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v6, v5, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v3

    aget-short v5, p1, v0

    xor-int/2addr v5, v3

    int-to-short v5, v5

    aput-short v5, p1, v0

    const/4 v5, 0x1

    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v3

    aget-short v6, p1, v5

    xor-int/2addr v6, v3

    int-to-short v6, v6

    aput-short v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private syndrome([B[B[B)V
    .locals 12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [S

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    rem-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge v3, v4, :cond_0

    aput-byte v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v3, v5, :cond_5

    const/4 v5, 0x0

    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v6, v6, 0x8

    if-ge v5, v6, :cond_1

    aput-short v2, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_3
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    if-ge v5, v6, :cond_2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v7, v7, 0x8

    sub-int/2addr v7, v6

    add-int/2addr v7, v5

    add-int v6, v4, v5

    aget-byte v6, p2, v6

    int-to-short v6, v6

    aput-short v6, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    iget-boolean v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v5, v5, 0x8

    sub-int/2addr v5, v6

    :goto_4
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v7, v7, 0x8

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    sub-int/2addr v7, v8

    if-lt v5, v7, :cond_3

    aget-short v7, v0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v1

    add-int/lit8 v8, v5, -0x1

    aget-short v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    rsub-int/lit8 v9, v1, 0x8

    ushr-int/2addr v8, v9

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    aput-short v7, v0, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_3
    div-int/lit8 v5, v3, 0x8

    aget-short v7, v0, v5

    rem-int/lit8 v8, v3, 0x8

    shl-int v9, v6, v8

    or-int/2addr v7, v9

    int-to-short v7, v7

    aput-short v7, v0, v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_5
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v10, v10, 0x8

    if-ge v7, v10, :cond_4

    aget-short v10, v0, v7

    aget-byte v11, p3, v7

    and-int/2addr v10, v11

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    ushr-int/lit8 v7, v9, 0x4

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    ushr-int/lit8 v9, v7, 0x2

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    ushr-int/lit8 v9, v7, 0x1

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    and-int/2addr v6, v7

    int-to-byte v6, v6

    aget-byte v7, p1, v5

    shl-int/2addr v6, v8

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method check_c_padding([B)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    add-int/lit8 v0, v0, -0x1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    rem-int/lit8 v0, v0, 0x8

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    and-int/lit16 p1, p1, 0xff

    ushr-int/lit8 p1, p1, 0x7

    int-to-byte p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method check_pk_padding([B)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v0, v2, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    mul-int v3, v0, v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, p1, v3

    or-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, 0xff

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    rem-int/lit8 v0, v0, 0x8

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    and-int/lit16 p1, p1, 0xff

    ushr-int/lit8 p1, p1, 0x7

    int-to-byte p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public decompress_private_key([B)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v2

    new-array v2, v2, [B

    array-length v3, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v3, v3, 0x8

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    const/4 v7, 0x1

    shl-int v4, v7, v4

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v3, v4

    add-int/lit8 v4, v3, 0x20

    new-array v8, v4, [B

    new-instance v5, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v9, 0x100

    invoke-direct {v5, v9}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/16 v9, 0x40

    invoke-interface {v5, v9}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    const/16 v9, 0x20

    invoke-interface {v5, v1, v6, v9}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {v5, v8, v6, v4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    array-length v4, v1

    const/16 v9, 0x28

    if-gt v4, v9, :cond_2

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    new-array v4, v4, [S

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    new-array v10, v5, [B

    sub-int v5, v3, v5

    const/4 v11, 0x0

    :goto_0
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v11, v12, :cond_0

    mul-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v5

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v8, v12, v13}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v12

    aput-short v12, v4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_irr_poly([S)I

    const/4 v5, 0x0

    :goto_1
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v11, :cond_1

    mul-int/lit8 v11, v5, 0x2

    aget-short v12, v4, v5

    invoke-static {v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store_gf([BIS)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    invoke-static {v10, v6, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    array-length v1, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/lit8 v5, v4, 0x28

    if-gt v1, v5, :cond_7

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v5, v7, v1

    new-array v5, v5, [I

    shl-int v10, v7, v1

    new-array v12, v10, [S

    sub-int/2addr v3, v4

    shl-int v1, v7, v1

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    :goto_2
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v10, v7, v4

    if-ge v1, v10, :cond_3

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v3

    invoke-static {v8, v4}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v4

    aput v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-boolean v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    move-object v3, v5

    if-eqz v1, :cond_4

    new-array v5, v7, [J

    const-wide/16 v10, 0x0

    aput-wide v10, v5, v6

    const/4 v1, 0x0

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    goto :goto_5

    :cond_4
    shl-int v1, v7, v4

    new-array v4, v1, [J

    const/4 v5, 0x0

    :goto_3
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v10, v7, v10

    if-ge v5, v10, :cond_5

    aget v10, v3, v5

    int-to-long v10, v10

    aput-wide v10, v4, v5

    const/16 v13, 0x1f

    shl-long/2addr v10, v13

    aput-wide v10, v4, v5

    int-to-long v13, v5

    or-long/2addr v10, v13

    aput-wide v10, v4, v5

    const-wide v13, 0x7fffffffffffffffL

    and-long/2addr v10, v13

    aput-wide v10, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v4, v6, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort64([JII)V

    const/4 v1, 0x0

    :goto_4
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v3, v7, v3

    if-ge v1, v3, :cond_6

    aget-wide v10, v4, v1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    int-to-long v13, v3

    and-long/2addr v10, v13

    long-to-int v3, v10

    int-to-short v3, v3

    aput-short v3, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    new-array v11, v1, [B

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    int-to-long v13, v3

    shl-int v3, v7, v3

    int-to-long v3, v3

    move-wide v15, v3

    invoke-static/range {v11 .. v16}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->controlbitsfrompermutation([B[SJJ)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v3, v9

    invoke-static {v11, v6, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v4, v3, 0x8

    sub-int/2addr v1, v4

    div-int/lit8 v3, v3, 0x8

    invoke-static {v8, v6, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public generate_public_key_from_private_key([B)[B
    .locals 11

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPublicKeySize()I

    move-result v0

    new-array v2, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    const/4 v7, 0x1

    shl-int v1, v7, v0

    new-array v5, v1, [S

    new-array v6, v7, [J

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v6, v1

    shl-int v3, v7, v0

    new-array v4, v3, [I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v3, v3, 0x8

    shl-int v8, v7, v0

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v3, v8

    new-array v8, v3, [B

    add-int/lit8 v9, v3, -0x20

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    sub-int/2addr v9, v10

    shl-int v0, v7, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr v9, v0

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v10, 0x100

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/16 v10, 0x40

    invoke-interface {v0, v10}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    const/16 v10, 0x20

    invoke-interface {v0, p1, v1, v10}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {v0, v8, v1, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v0, v7, v0

    if-ge v1, v0, :cond_0

    mul-int/lit8 v0, v1, 0x4

    add-int/2addr v0, v9

    invoke-static {v8, v0}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v0

    aput v0, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    return-object v2
.end method

.method public getCipherTextSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    return v0
.end method

.method public getCondBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    return v0
.end method

.method public getDefaultSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->defaultKeySize:I

    return v0
.end method

.method public getIrrBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    return v0
.end method

.method public getPrivateKeySize()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x28

    return v0
.end method

.method public getPublicKeySize()I
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    mul-int v0, v0, v1

    return v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public kem_dec([B[B[B)I
    .locals 11

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v0, 0x8

    new-array v1, v1, [B

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    add-int/2addr v0, v2

    new-array v2, v0, [B

    iget-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->check_c_padding([B)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, v1, p3, p2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->decrypt([B[B[B)I

    move-result v5

    int-to-byte v5, v5

    int-to-short v5, v5

    add-int/lit8 v5, v5, -0x1

    int-to-short v5, v5

    shr-int/lit8 v5, v5, 0x8

    int-to-short v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    const/4 v6, 0x0

    :goto_1
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v7, v7, 0x8

    if-ge v6, v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    xor-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v6, 0x28

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v9, v10

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    add-int/2addr v9, v10

    aget-byte v9, p3, v9

    and-int/2addr v8, v9

    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v2, v7

    move v6, v7

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_2
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge p3, v1, :cond_2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    aget-byte v5, p2, p3

    aput-byte v5, v2, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    new-instance p2, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 p3, 0x100

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-interface {p2, v2, v4, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length p3, p1

    invoke-interface {p2, p1, v4, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-boolean p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz p2, :cond_4

    int-to-byte p2, v3

    :goto_3
    array-length p3, p1

    if-ge v4, p3, :cond_3

    aget-byte p3, p1, v4

    or-int/2addr p3, p2

    int-to-byte p3, p3

    aput-byte p3, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    return v3

    :cond_4
    return v4
.end method

.method public kem_enc([B[B[BLjava/security/SecureRandom;)I
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, p3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->check_pk_padding([B)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, p1, p3, v1, p4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->encrypt([B[B[BLjava/security/SecureRandom;)V

    new-instance p3, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 p4, 0x100

    invoke-direct {p3, p4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/4 p4, 0x1

    invoke-interface {p3, p4}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    invoke-interface {p3, v1, v3, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length p4, p1

    invoke-interface {p3, p1, v3, p4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length p4, p2

    invoke-interface {p3, p2, v3, p4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-boolean p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz p3, :cond_3

    int-to-byte p3, v2

    xor-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    const/4 p4, 0x0

    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge p4, v0, :cond_1

    aget-byte v0, p1, p4

    and-int/2addr v0, p3

    int-to-byte v0, v0

    aput-byte v0, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/16 p1, 0x20

    if-ge v3, p1, :cond_2

    aget-byte p1, p2, v3

    and-int/2addr p1, p3

    int-to-byte p1, p1

    aput-byte p1, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    return v3
.end method

.method public kem_keypair([B[BLjava/security/SecureRandom;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const/16 v6, 0x20

    new-array v1, v6, [B

    const/4 v7, 0x1

    new-array v8, v7, [B

    const/4 v9, 0x0

    const/16 v3, 0x40

    aput-byte v3, v8, v9

    move-object/from16 v3, p3

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v3, v3, 0x8

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v4, v7, v4

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v4, v4, 0x2

    add-int v10, v3, v4

    add-int/lit8 v11, v10, 0x20

    new-array v12, v11, [B

    new-array v5, v7, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v5, v9

    new-instance v13, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v3, 0x100

    invoke-direct {v13, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    move-object v3, v1

    :goto_0
    invoke-interface {v13, v8, v9, v7}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length v4, v1

    invoke-interface {v13, v1, v9, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {v13, v12, v9, v11}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    add-int/lit8 v1, v10, 0x20

    invoke-static {v12, v10, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    invoke-static {v3, v9, v2, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v14, v9, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    new-array v3, v1, [S

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v10, v1

    const/4 v4, 0x0

    const/16 v16, 0x1

    :goto_1
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v4, v7, :cond_0

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v1

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v12, v7, v6}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v6

    aput-short v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x20

    goto :goto_1

    :cond_0
    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_irr_poly([S)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    goto :goto_4

    :cond_1
    const/4 v4, 0x0

    :goto_2
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    const/16 v17, 0x28

    if-ge v4, v7, :cond_2

    mul-int/lit8 v7, v4, 0x2

    add-int v7, v17, v7

    aget-short v9, v3, v4

    invoke-static {v2, v7, v9}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store_gf([BIS)V

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v4, v16, v3

    new-array v4, v4, [I

    shl-int v3, v16, v3

    mul-int/lit8 v3, v3, 0x4

    sub-int v7, v1, v3

    const/4 v1, 0x0

    :goto_3
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v9, v16, v3

    if-ge v1, v9, :cond_3

    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v3, v7

    invoke-static {v12, v3}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v3

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    shl-int v1, v16, v3

    new-array v1, v1, [S

    move-object v3, v4

    move-object v4, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    move-result v3

    if-ne v3, v6, :cond_4

    :goto_4
    move-object v1, v14

    move-object v3, v15

    const/16 v6, 0x20

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_4
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    new-array v3, v1, [B

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    int-to-long v8, v6

    shl-int v6, v16, v6

    int-to-long v10, v6

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    invoke-static/range {v19 .. v24}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->controlbitsfrompermutation([B[SJJ)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/lit8 v4, v4, 0x28

    const/4 v6, 0x0

    invoke-static {v3, v6, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v3, v1, 0x8

    sub-int/2addr v7, v3

    array-length v3, v2

    div-int/lit8 v4, v1, 0x8

    sub-int/2addr v3, v4

    div-int/lit8 v1, v1, 0x8

    invoke-static {v12, v7, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-nez v1, :cond_5

    const-wide v3, 0xffffffffL

    const/16 v1, 0x20

    :goto_5
    invoke-static {v2, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    return-void

    :cond_5
    const/16 v1, 0x20

    const/16 v18, 0x0

    aget-wide v3, v5, v18

    goto :goto_5
.end method
