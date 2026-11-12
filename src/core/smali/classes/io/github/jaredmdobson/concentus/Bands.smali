.class Lio/github/jaredmdobson/concentus/Bands;
.super Ljava/lang/Object;
.source "Bands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/jaredmdobson/concentus/Bands$split_ctx;,
        Lio/github/jaredmdobson/concentus/Bands$band_ctx;
    }
.end annotation


# static fields
.field private static final bit_deinterleave_table:[S

.field private static final bit_interleave_table:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    .line 994
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lio/github/jaredmdobson/concentus/Bands;->bit_interleave_table:[B

    .line 996
    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lio/github/jaredmdobson/concentus/Bands;->bit_deinterleave_table:[S

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x2t
        0x3t
        0x3t
        0x3t
        0x2t
        0x3t
        0x3t
        0x3t
        0x2t
        0x3t
        0x3t
        0x3t
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x3s
        0xcs
        0xfs
        0x30s
        0x33s
        0x3cs
        0x3fs
        0xc0s
        0xc3s
        0xccs
        0xcfs
        0xf0s
        0xf3s
        0xfcs
        0xffs
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static anti_collapse(Lio/github/jaredmdobson/concentus/CeltMode;[[I[SIIIII[I[I[I[II)V
    .locals 21

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p6

    move/from16 v5, p7

    move/from16 v4, p12

    :goto_0
    move-object/from16 v0, p0

    if-ge v3, v5, :cond_a

    .line 228
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    add-int/lit8 v7, v3, 0x1

    aget-short v6, v6, v7

    iget-object v8, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v8, v8, v3

    sub-int/2addr v6, v8

    .line 230
    aget v8, p11, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 231
    aget v8, p11, v3

    add-int/2addr v8, v10

    iget-object v11, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v11, v11, v7

    iget-object v12, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v12, v12, v3

    sub-int/2addr v11, v12

    invoke-static {v8, v11}, Lio/github/jaredmdobson/concentus/Inlines;->celt_udiv(II)I

    move-result v8

    shr-int/2addr v8, v1

    const/4 v11, 0x7

    .line 233
    invoke-static {v8, v11}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x0

    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->celt_exp2(I)I

    move-result v8

    invoke-static {v8, v10}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v8

    const/16 v11, 0x7fff

    .line 234
    invoke-static {v11, v8}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result v8

    const/16 v12, 0x4000

    invoke-static {v12, v8}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(SI)I

    move-result v8

    shl-int v13, v6, v1

    .line 238
    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v14

    shr-int/2addr v14, v10

    rsub-int/lit8 v15, v14, 0x7

    shl-int/2addr v15, v10

    .line 239
    invoke-static {v13, v15}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v15

    .line 240
    invoke-static {v15}, Lio/github/jaredmdobson/concentus/Inlines;->celt_rsqrt_norm(I)I

    move-result v15

    const/16 v16, 0x0

    .line 251
    :goto_2
    iget v11, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int v11, v11, v16

    add-int/2addr v11, v3

    aget v11, p9, v11

    .line 252
    iget v12, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int v12, v12, v16

    add-int/2addr v12, v3

    aget v12, p10, v12

    if-ne v2, v10, :cond_1

    .line 254
    iget v10, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    add-int/2addr v10, v3

    aget v10, p9, v10

    invoke-static {v11, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v11

    .line 255
    iget v10, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    add-int/2addr v10, v3

    aget v10, p10, v10

    invoke-static {v12, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v12

    .line 257
    :cond_1
    iget v10, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int v10, v10, v16

    add-int/2addr v10, v3

    aget v10, p8, v10

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v10

    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v11

    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v11

    sub-int/2addr v10, v11

    .line 258
    invoke-static {v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v10

    const/16 v11, 0x4000

    if-ge v10, v11, :cond_2

    .line 261
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v10

    rsub-int/lit8 v10, v10, 0x0

    int-to-short v10, v10

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->celt_exp2(I)I

    move-result v10

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v10

    const/16 v12, 0x3fff

    .line 262
    invoke-static {v12, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    const/4 v12, 0x3

    if-ne v1, v12, :cond_3

    const/16 v12, 0x5a81

    .line 267
    invoke-static {v12, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result v10

    const/16 v12, 0x5a82

    invoke-static {v12, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q14(II)I

    move-result v10

    .line 269
    :cond_3
    invoke-static {v8, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v10

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v10

    .line 270
    invoke-static {v15, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v10

    invoke-static {v10, v14}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v10

    .line 272
    iget-object v9, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v9, v9, v3

    shl-int/2addr v9, v1

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    :goto_4
    shl-int v12, v18, v1

    if-ge v11, v12, :cond_7

    mul-int v12, v3, v2

    add-int v12, v12, v16

    .line 275
    aget-short v12, p2, v12

    shl-int v19, v18, v11

    and-int v12, v12, v19

    if-nez v12, :cond_6

    add-int v12, v9, v11

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v6, :cond_5

    .line 279
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Bands;->celt_lcg_rand(I)I

    move-result v4

    .line 280
    aget-object v17, p1, v16

    shl-int v19, v0, v1

    add-int v19, v12, v19

    const v20, 0x8000

    and-int v20, v4, v20

    if-eqz v20, :cond_4

    move/from16 v20, v10

    goto :goto_6

    :cond_4
    rsub-int/lit8 v20, v10, 0x0

    :goto_6
    aput v20, v17, v19

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    const/16 v17, 0x1

    :cond_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_4

    :cond_7
    if-eqz v17, :cond_8

    .line 287
    aget-object v0, p1, v16

    const/16 v10, 0x7fff

    invoke-static {v0, v9, v13, v10}, Lio/github/jaredmdobson/concentus/VQ;->renormalise_vector([IIII)V

    goto :goto_7

    :cond_8
    const/16 v10, 0x7fff

    :goto_7
    add-int/lit8 v0, v16, 0x1

    if-lt v0, v2, :cond_9

    move v3, v7

    goto/16 :goto_0

    :cond_9
    move/from16 v16, v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v12, 0x4000

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_a
    return-void
.end method

.method static bitexact_cos(I)I
    .locals 4

    mul-int p0, p0, p0

    add-int/lit16 p0, p0, 0x1000

    shr-int/lit8 p0, p0, 0xd

    const/16 v0, 0x7fff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    rsub-int v0, p0, 0x7fff

    const/16 v3, -0x272

    .line 75
    invoke-static {v3, p0}, Lio/github/jaredmdobson/concentus/Inlines;->FRAC_MUL16(II)I

    move-result v3

    add-int/lit16 v3, v3, 0x2055

    invoke-static {p0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->FRAC_MUL16(II)I

    move-result v3

    add-int/lit16 v3, v3, -0x1de3

    invoke-static {p0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->FRAC_MUL16(II)I

    move-result p0

    add-int/2addr v0, p0

    const/16 p0, 0x7ffe

    if-gt v0, p0, :cond_1

    const/4 v1, 0x1

    .line 76
    :cond_1
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/2addr v0, v2

    return v0
.end method

.method static bitexact_log2tan(II)I
    .locals 3

    int-to-long v0, p1

    .line 81
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->EC_ILOG(J)I

    move-result v0

    int-to-long v1, p0

    .line 82
    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->EC_ILOG(J)I

    move-result v1

    rsub-int/lit8 v2, v0, 0xf

    shl-int/2addr p1, v2

    rsub-int/lit8 v2, v1, 0xf

    shl-int/2addr p0, v2

    sub-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x800

    const/16 v0, -0xa25

    .line 86
    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->FRAC_MUL16(II)I

    move-result v2

    add-int/lit16 v2, v2, 0x1efc

    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->FRAC_MUL16(II)I

    move-result p0

    add-int/2addr v1, p0

    .line 87
    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->FRAC_MUL16(II)I

    move-result p0

    add-int/lit16 p0, p0, 0x1efc

    invoke-static {p1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->FRAC_MUL16(II)I

    move-result p0

    sub-int/2addr v1, p0

    return v1
.end method

.method static celt_lcg_rand(I)I
    .locals 1

    const v0, 0x19660d

    mul-int p0, p0, v0

    const v0, 0x3c6ef35f

    add-int/2addr p0, v0

    return p0
.end method

.method static compute_band_energies(Lio/github/jaredmdobson/concentus/CeltMode;[[I[[IIII)V
    .locals 13

    .line 93
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    .line 94
    iget v1, p0, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    move/from16 v3, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    .line 102
    aget-object v5, p1, v2

    aget-short v6, v0, v4

    shl-int v7, v6, p5

    add-int/lit8 v8, v4, 0x1

    aget-short v9, v0, v8

    sub-int/2addr v9, v6

    shl-int v6, v9, p5

    invoke-static {v5, v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->celt_maxabs32([III)I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_3

    .line 104
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v5

    add-int/lit8 v5, v5, -0xe

    iget-object v7, p0, Lio/github/jaredmdobson/concentus/CeltMode;->logN:[S

    aget-short v7, v7, v4

    shr-int/lit8 v7, v7, 0x3

    add-int v7, v7, p5

    add-int/2addr v7, v6

    shr-int/2addr v7, v6

    add-int/2addr v5, v7

    .line 105
    aget-short v7, v0, v4

    shl-int v7, v7, p5

    const/4 v9, 0x0

    if-lez v5, :cond_2

    .line 108
    :cond_1
    aget-object v10, p1, v2

    aget v10, v10, v7

    invoke-static {v10, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v10

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v10

    aget-object v11, p1, v2

    aget v11, v11, v7

    .line 109
    invoke-static {v11, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v11

    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v11

    .line 108
    invoke-static {v9, v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v9

    add-int/2addr v7, v6

    .line 110
    aget-short v10, v0, v8

    shl-int v10, v10, p5

    if-lt v7, v10, :cond_1

    goto :goto_1

    .line 113
    :cond_2
    aget-object v10, p1, v2

    aget v10, v10, v7

    neg-int v11, v5

    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v10

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v10

    aget-object v12, p1, v2

    aget v12, v12, v7

    .line 114
    invoke-static {v12, v11}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v11

    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v11

    .line 113
    invoke-static {v9, v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v9

    add-int/2addr v7, v6

    .line 115
    aget-short v10, v0, v8

    shl-int v10, v10, p5

    if-lt v7, v10, :cond_2

    .line 118
    :goto_1
    aget-object v7, p2, v2

    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result v9

    neg-int v5, v5

    invoke-static {v9, v5}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result v5

    add-int/2addr v5, v6

    aput v5, v7, v4

    goto :goto_2

    .line 120
    :cond_3
    aget-object v5, p2, v2

    aput v6, v5, v4

    :goto_2
    move v4, v8

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, p4

    if-lt v2, v4, :cond_0

    return-void
.end method

.method static compute_qn(IIIII)I
    .locals 3

    const/16 v0, 0x8

    .line 553
    new-array v0, v0, [S

    fill-array-data v0, :array_0

    mul-int/lit8 v1, p0, 0x2

    add-int/lit8 v2, v1, -0x1

    if-eqz p4, :cond_0

    const/4 p4, 0x2

    if-ne p0, p4, :cond_0

    add-int/lit8 v2, v1, -0x2

    :cond_0
    mul-int p2, p2, v2

    add-int/2addr p2, p1

    .line 564
    invoke-static {p2, v2}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sudiv(II)I

    move-result p0

    sub-int/2addr p1, p3

    add-int/lit8 p1, p1, -0x20

    .line 565
    invoke-static {p1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result p0

    const/16 p1, 0x40

    .line 567
    invoke-static {p1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result p0

    const/4 p1, 0x4

    const/4 p2, 0x1

    if-ge p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p0, 0x7

    .line 572
    aget-short p1, v0, p1

    shr-int/lit8 p0, p0, 0x3

    rsub-int/lit8 p0, p0, 0xe

    shr-int p0, p1, p0

    add-int/2addr p0, p2

    shr-int/2addr p0, p2

    shl-int/2addr p0, p2

    :goto_0
    const/16 p1, 0x100

    if-gt p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 575
    :goto_1
    invoke-static {p2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return p0

    nop

    :array_0
    .array-data 2
        0x4000s
        0x45cas
        0x4c1bs
        0x52ffs
        0x5a82s
        0x62b3s
        0x6ba2s
        0x7560s
    .end array-data
.end method

.method static compute_theta(Lio/github/jaredmdobson/concentus/Bands$band_ctx;Lio/github/jaredmdobson/concentus/Bands$split_ctx;[II[IIILio/github/jaredmdobson/concentus/BoxedValueInt;IIIILio/github/jaredmdobson/concentus/BoxedValueInt;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v6, p11

    move-object/from16 v11, p12

    .line 623
    iget v12, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->encode:I

    .line 624
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->m:Lio/github/jaredmdobson/concentus/CeltMode;

    .line 625
    iget v13, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->i:I

    .line 626
    iget v2, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->intensity:I

    .line 627
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->ec:Lio/github/jaredmdobson/concentus/EntropyCoder;

    .line 628
    iget-object v15, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->bandE:[[I

    .line 631
    iget-object v3, v8, Lio/github/jaredmdobson/concentus/CeltMode;->logN:[S

    aget-short v3, v3, v13

    mul-int/lit8 v4, p10, 0x8

    add-int/2addr v3, v4

    shr-int/lit8 v4, v3, 0x1

    const/4 v7, 0x2

    if-eqz v6, :cond_0

    if-ne v9, v7, :cond_0

    const/16 v16, 0x10

    goto :goto_0

    :cond_0
    const/16 v16, 0x4

    :goto_0
    sub-int v4, v4, v16

    .line 633
    iget v5, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v9, v5, v4, v3, v6}, Lio/github/jaredmdobson/concentus/Bands;->compute_qn(IIIII)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v6, :cond_1

    if-lt v13, v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    const/16 v21, 0x0

    if-eqz v12, :cond_2

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v22, v8

    move v7, v9

    const/4 v9, 0x1

    move v8, v3

    move/from16 v3, p3

    .line 643
    invoke-static/range {v2 .. v7}, Lio/github/jaredmdobson/concentus/VQ;->stereo_itheta([II[IIII)I

    move-result v16

    move/from16 v2, v16

    goto :goto_1

    :cond_2
    move-object/from16 v22, v8

    move v7, v9

    const/4 v9, 0x1

    move v8, v3

    const/4 v2, 0x0

    .line 646
    :goto_1
    invoke-virtual {v14}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell_frac()I

    move-result v23

    const/16 v3, 0x2000

    if-eq v8, v9, :cond_15

    if-eqz v12, :cond_3

    mul-int v2, v2, v8

    add-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0xe

    :cond_3
    if-eqz p11, :cond_a

    const/4 v5, 0x2

    if-le v7, v5, :cond_a

    .line 658
    div-int/lit8 v3, v8, 0x2

    add-int/lit8 v0, v3, 0x1

    mul-int/lit8 v5, v0, 0x3

    add-int v6, v5, v3

    .line 659
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->CapToUInt32(I)J

    move-result-wide v19

    if-eqz v12, :cond_6

    if-gt v2, v3, :cond_4

    mul-int/lit8 v0, v2, 0x3

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v2, -0x1

    sub-int/2addr v0, v3

    add-int/2addr v0, v5

    :goto_2
    int-to-long v9, v0

    if-gt v2, v3, :cond_5

    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v0, 0x3

    goto :goto_3

    :cond_5
    sub-int v0, v2, v3

    add-int/2addr v0, v5

    :goto_3
    int-to-long v6, v0

    move-wide/from16 v17, v6

    move-object v7, v15

    move-wide v15, v9

    .line 662
    invoke-virtual/range {v14 .. v20}, Lio/github/jaredmdobson/concentus/EntropyCoder;->encode(JJJ)V

    move-object/from16 p10, v7

    goto :goto_7

    :cond_6
    move-object/from16 p10, v15

    move-wide/from16 v9, v19

    .line 671
    invoke-virtual {v14, v9, v10}, Lio/github/jaredmdobson/concentus/EntropyCoder;->decode(J)J

    move-result-wide v6

    long-to-int v2, v6

    if-ge v2, v5, :cond_7

    .line 673
    div-int/lit8 v2, v2, 0x3

    goto :goto_4

    :cond_7
    sub-int/2addr v2, v5

    add-int/2addr v2, v0

    :goto_4
    if-gt v2, v3, :cond_8

    mul-int/lit8 v0, v2, 0x3

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v2, -0x1

    sub-int/2addr v0, v3

    add-int/2addr v0, v5

    :goto_5
    int-to-long v6, v0

    if-gt v2, v3, :cond_9

    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v0, 0x3

    goto :goto_6

    :cond_9
    sub-int v0, v2, v3

    add-int/2addr v0, v5

    :goto_6
    int-to-long v4, v0

    move-wide/from16 v17, v4

    move-wide v15, v6

    move-wide/from16 v19, v9

    .line 678
    invoke-virtual/range {v14 .. v20}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_update(JJJ)V

    :goto_7
    const/16 p0, 0x1

    goto/16 :goto_c

    :cond_a
    move-object/from16 p10, v15

    move/from16 v0, p9

    const/4 v6, 0x1

    if-gt v0, v6, :cond_10

    if-eqz p11, :cond_b

    goto/16 :goto_b

    :cond_b
    shr-int/lit8 v0, v8, 0x1

    add-int/lit8 v3, v0, 0x1

    mul-int v4, v3, v3

    if-eqz v12, :cond_e

    if-gt v2, v0, :cond_c

    add-int/lit8 v3, v2, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v3, v8, 0x1

    sub-int/2addr v3, v2

    :goto_8
    if-gt v2, v0, :cond_d

    add-int/lit8 v0, v2, 0x1

    mul-int v0, v0, v2

    const/4 v6, 0x1

    shr-int/2addr v0, v6

    goto :goto_9

    :cond_d
    const/4 v6, 0x1

    add-int/lit8 v0, v8, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v5, v8, 0x2

    sub-int/2addr v5, v2

    mul-int v0, v0, v5

    shr-int/2addr v0, v6

    sub-int v0, v4, v0

    :goto_9
    int-to-long v9, v0

    add-int/2addr v0, v3

    int-to-long v6, v0

    int-to-long v3, v4

    move-wide/from16 v19, v3

    move-wide/from16 v17, v6

    move-wide v15, v9

    .line 705
    invoke-virtual/range {v14 .. v20}, Lio/github/jaredmdobson/concentus/EntropyCoder;->encode(JJJ)V

    goto :goto_7

    :cond_e
    int-to-long v5, v4

    .line 710
    invoke-virtual {v14, v5, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->decode(J)J

    move-result-wide v9

    long-to-int v2, v9

    mul-int v0, v0, v3

    const/4 v9, 0x1

    shr-int/2addr v0, v9

    if-ge v2, v0, :cond_f

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v9

    int-to-long v2, v2

    .line 713
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->isqrt32(J)I

    move-result v0

    sub-int/2addr v0, v9

    shr-int/2addr v0, v9

    add-int/lit8 v2, v0, 0x1

    mul-int v3, v0, v2

    shr-int/2addr v3, v9

    const/16 p0, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v3, v8, 0x1

    mul-int/lit8 v0, v3, 0x2

    sub-int v2, v4, v2

    sub-int/2addr v2, v9

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v9

    const/16 p0, 0x1

    int-to-long v9, v2

    .line 717
    invoke-static {v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->isqrt32(J)I

    move-result v2

    sub-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1

    sub-int v2, v3, v0

    add-int/lit8 v3, v8, 0x2

    sub-int/2addr v3, v0

    mul-int v3, v3, v2

    shr-int/lit8 v3, v3, 0x1

    sub-int v3, v4, v3

    :goto_a
    int-to-long v9, v3

    add-int/2addr v3, v2

    int-to-long v2, v3

    move-wide/from16 v17, v2

    move-wide/from16 v19, v5

    move-wide v15, v9

    .line 722
    invoke-virtual/range {v14 .. v20}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_update(JJJ)V

    move v2, v0

    goto :goto_c

    :cond_10
    :goto_b
    const/16 p0, 0x1

    if-eqz v12, :cond_11

    int-to-long v3, v2

    add-int/lit8 v0, v8, 0x1

    int-to-long v5, v0

    .line 691
    invoke-virtual {v14, v3, v4, v5, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_uint(JJ)V

    goto :goto_c

    :cond_11
    add-int/lit8 v3, v8, 0x1

    int-to-long v2, v3

    .line 693
    invoke-virtual {v14, v2, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_uint(J)J

    move-result-wide v2

    long-to-int v2, v2

    :goto_c
    if-ltz v2, :cond_12

    const/4 v4, 0x1

    goto :goto_d

    :cond_12
    const/4 v4, 0x0

    .line 725
    :goto_d
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v0, 0x4000

    mul-int/lit16 v2, v2, 0x4000

    .line 726
    invoke-static {v2, v8}, Lio/github/jaredmdobson/concentus/Inlines;->celt_udiv(II)I

    move-result v10

    if-eqz v12, :cond_14

    if-eqz p11, :cond_14

    if-nez v10, :cond_13

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v9, p6

    move-object/from16 v7, p10

    move v8, v13

    move-object/from16 v2, v22

    const/16 v13, 0x4000

    const/4 v15, 0x1

    .line 729
    invoke-static/range {v2 .. v9}, Lio/github/jaredmdobson/concentus/Bands;->intensity_stereo(Lio/github/jaredmdobson/concentus/CeltMode;[II[II[[III)V

    goto :goto_e

    :cond_13
    move/from16 v9, p6

    const/16 v13, 0x4000

    const/4 v15, 0x1

    .line 731
    invoke-static/range {p2 .. p6}, Lio/github/jaredmdobson/concentus/Bands;->stereo_split([II[III)V

    goto :goto_e

    :cond_14
    move/from16 v9, p6

    const/16 v13, 0x4000

    const/4 v15, 0x1

    :goto_e
    move-object/from16 v3, p7

    move v2, v10

    goto :goto_13

    :cond_15
    move v9, v7

    move v8, v13

    move-object v7, v15

    const/4 v5, 0x2

    const/16 v13, 0x4000

    const/4 v15, 0x1

    if-eqz p11, :cond_1b

    if-eqz v12, :cond_18

    if-le v2, v3, :cond_16

    const/4 v10, 0x1

    goto :goto_f

    :cond_16
    const/4 v10, 0x0

    :goto_f
    if-eqz v10, :cond_17

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v9, :cond_17

    add-int v3, p5, v2

    .line 740
    aget v4, p4, v3

    rsub-int/lit8 v4, v4, 0x0

    aput v4, p4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_17
    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v2, v22

    const/16 p9, 0x1

    const/4 v15, 0x2

    .line 743
    invoke-static/range {v2 .. v9}, Lio/github/jaredmdobson/concentus/Bands;->intensity_stereo(Lio/github/jaredmdobson/concentus/CeltMode;[II[II[[III)V

    goto :goto_11

    :cond_18
    const/16 p9, 0x1

    const/4 v15, 0x2

    const/4 v10, 0x0

    :goto_11
    move-object/from16 v3, p7

    .line 745
    iget v2, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 v4, 0x10

    if-le v2, v4, :cond_1a

    iget v0, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    if-le v0, v4, :cond_1a

    if-eqz v12, :cond_19

    .line 747
    invoke-virtual {v14, v10, v15}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    goto :goto_12

    :cond_19
    const-wide/16 v4, 0x2

    .line 749
    invoke-virtual {v14, v4, v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v10

    goto :goto_12

    :cond_1a
    const/4 v10, 0x0

    :goto_12
    const/4 v2, 0x0

    goto :goto_14

    :cond_1b
    move-object/from16 v3, p7

    :goto_13
    const/16 p9, 0x1

    const/4 v10, 0x0

    .line 756
    :goto_14
    invoke-virtual {v14}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell_frac()I

    move-result v0

    sub-int v0, v0, v23

    .line 757
    iget v4, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    sub-int/2addr v4, v0

    iput v4, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 v3, 0x7fff

    if-nez v2, :cond_1c

    .line 762
    iget v4, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    shl-int v5, p9, p8

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 v4, -0x4000

    const/4 v5, 0x0

    goto :goto_15

    :cond_1c
    if-ne v2, v13, :cond_1d

    .line 767
    iget v4, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    shl-int v5, p9, p8

    add-int/lit8 v5, v5, -0x1

    shl-int v5, v5, p8

    and-int/2addr v4, v5

    iput v4, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v3, 0x0

    const/16 v4, 0x4000

    const/16 v5, 0x7fff

    goto :goto_15

    :cond_1d
    int-to-short v3, v2

    .line 770
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Bands;->bitexact_cos(I)I

    move-result v3

    rsub-int v4, v2, 0x4000

    int-to-short v4, v4

    .line 771
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Bands;->bitexact_cos(I)I

    move-result v4

    add-int/lit8 v5, p6, -0x1

    shl-int/lit8 v5, v5, 0x7

    .line 774
    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Bands;->bitexact_log2tan(II)I

    move-result v6

    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->FRAC_MUL16(II)I

    move-result v5

    move/from16 v24, v5

    move v5, v4

    move/from16 v4, v24

    .line 777
    :goto_15
    iput v10, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->inv:I

    .line 778
    iput v3, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->imid:I

    .line 779
    iput v5, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->iside:I

    .line 780
    iput v4, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->delta:I

    .line 781
    iput v2, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->itheta:I

    .line 782
    iput v0, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->qalloc:I

    return-void
.end method

.method static deinterleave_hadamard([IIIII)V
    .locals 7

    mul-int v0, p2, p3

    .line 476
    new-array v1, v0, [I

    const/4 v2, 0x0

    if-lez p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 478
    :goto_0
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-eqz p4, :cond_2

    add-int/lit8 p4, p3, -0x2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p3, :cond_4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, p2, :cond_1

    .line 484
    sget-object v5, Lio/github/jaredmdobson/concentus/CeltTables;->ordery_table:[I

    add-int v6, p4, v3

    aget v5, v5, v6

    mul-int v5, v5, p2

    add-int/2addr v5, v4

    mul-int v6, v4, p3

    add-int/2addr v6, v3

    add-int/2addr v6, p1

    aget v6, p0, v6

    aput v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    :goto_3
    if-ge p4, p3, :cond_4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, p2, :cond_3

    mul-int v4, p4, p2

    add-int/2addr v4, v3

    mul-int v5, v3, p3

    add-int/2addr v5, p4

    add-int/2addr v5, p1

    .line 490
    aget v5, p0, v5

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 495
    :cond_4
    invoke-static {v1, v2, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static denormalise_bands(Lio/github/jaredmdobson/concentus/CeltMode;[I[II[IIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p9

    .line 157
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    .line 158
    iget v0, v0, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    mul-int v0, v0, p8

    .line 159
    aget-short v4, v3, p7

    mul-int v4, v4, p8

    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    .line 161
    div-int v2, v0, v2

    invoke-static {v4, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v4

    :cond_0
    const/4 v2, 0x0

    if-eqz p10, :cond_1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    move/from16 v6, p7

    move v7, v4

    move/from16 v4, p6

    .line 168
    :goto_0
    aget-short v8, v3, v4

    mul-int v8, v8, p8

    move/from16 v10, p3

    const/4 v9, 0x0

    .line 170
    :goto_1
    aget-short v11, v3, v4

    mul-int v11, v11, p8

    if-ge v9, v11, :cond_2

    add-int/lit8 v11, v10, 0x1

    .line 171
    aput v2, v1, v10

    add-int/lit8 v9, v9, 0x1

    move v10, v11

    goto :goto_1

    :cond_2
    move v9, v4

    :goto_2
    if-ge v9, v6, :cond_8

    .line 180
    aget-short v11, v3, v9

    mul-int v11, v11, p8

    add-int/lit8 v12, v9, 0x1

    .line 181
    aget-short v13, v3, v12

    mul-int v13, v13, p8

    add-int v14, p5, v9

    .line 182
    aget v14, p4, v14

    sget-object v15, Lio/github/jaredmdobson/concentus/CeltTables;->eMeans:[B

    aget-byte v9, v15, v9

    int-to-short v9, v9

    const/4 v15, 0x6

    invoke-static {v9, v15}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(SI)S

    move-result v9

    invoke-static {v14, v9}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v9

    shr-int/lit8 v14, v9, 0xa

    rsub-int/lit8 v14, v14, 0x10

    const/16 v15, 0x1f

    if-le v14, v15, :cond_3

    const/4 v9, 0x0

    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    and-int/lit16 v9, v9, 0x3ff

    .line 191
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->celt_exp2_frac(I)I

    move-result v9

    :goto_3
    if-gez v14, :cond_6

    const/4 v15, -0x2

    if-ge v14, v15, :cond_4

    const/16 v9, 0x7fff

    const/4 v14, -0x2

    .line 203
    :cond_4
    :goto_4
    aget v15, p1, v8

    invoke-static {v15, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v15

    const/16 p0, 0x1

    neg-int v5, v14

    invoke-static {v15, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v5

    aput v5, v1, v10

    add-int/lit8 v11, v11, 0x1

    if-lt v11, v13, :cond_5

    goto :goto_5

    :cond_5
    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/16 p0, 0x1

    :cond_7
    add-int/lit8 v5, v10, 0x1

    add-int/lit8 v15, v8, 0x1

    .line 207
    aget v8, p1, v8

    invoke-static {v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v8

    invoke-static {v8, v14}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v8

    aput v8, v1, v10

    add-int/lit8 v11, v11, 0x1

    move v10, v5

    move v8, v15

    if-lt v11, v13, :cond_7

    :goto_5
    move v9, v12

    const/4 v5, 0x1

    goto :goto_2

    :cond_8
    const/16 p0, 0x1

    if-gt v4, v6, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    .line 212
    :goto_6
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int v3, p3, v7

    sub-int/2addr v0, v7

    .line 213
    invoke-static {v1, v2, v3, v0}, Lio/github/jaredmdobson/concentus/Arrays;->MemSetWithOffset([IIII)V

    return-void
.end method

.method static haar1([IIII)V
    .locals 9

    shr-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_0

    add-int v3, p1, v1

    mul-int/lit8 v4, p3, 0x2

    mul-int v4, v4, v2

    add-int/2addr v3, v4

    .line 529
    aget v4, p0, v3

    const/16 v5, 0x5a82

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v4

    add-int v6, v3, p3

    .line 530
    aget v7, p0, v6

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v5

    .line 531
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v7

    const/16 v8, 0xf

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v7

    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v7

    aput v7, p0, v3

    .line 532
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SUB32(II)I

    move-result v3

    invoke-static {v3, v8}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v3

    aput v3, p0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static haar1ZeroOffset([III)V
    .locals 9

    shr-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_0

    mul-int/lit8 v3, p2, 0x2

    mul-int v3, v3, v2

    add-int/2addr v3, v1

    .line 544
    aget v4, p0, v3

    const/16 v5, 0x5a82

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v4

    add-int v6, v3, p2

    .line 545
    aget v7, p0, v6

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v5

    .line 546
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v7

    const/16 v8, 0xf

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v7

    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v7

    aput v7, p0, v3

    .line 547
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SUB32(II)I

    move-result v3

    invoke-static {v3, v8}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v3

    aput v3, p0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static hysteresis_decision(I[I[III)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 47
    aget v1, p1, v0

    if-ge p0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le v0, p4, :cond_2

    .line 52
    aget p3, p1, p4

    aget v1, p2, p4

    add-int/2addr p3, v1

    if-ge p0, p3, :cond_2

    move v0, p4

    :cond_2
    if-ge v0, p4, :cond_3

    add-int/lit8 p3, p4, -0x1

    .line 56
    aget p1, p1, p3

    aget p2, p2, p3

    sub-int/2addr p1, p2

    if-le p0, p1, :cond_3

    return p4

    :cond_3
    return v0
.end method

.method static intensity_stereo(Lio/github/jaredmdobson/concentus/CeltMode;[II[II[[III)V
    .locals 4

    const/4 p0, 0x0

    .line 299
    aget-object v0, p5, p0

    aget v0, v0, p6

    const/4 v1, 0x1

    aget-object v2, p5, v1

    aget v2, v2, p6

    invoke-static {v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_zlog2(I)I

    move-result v0

    add-int/lit8 v0, v0, -0xd

    .line 300
    aget-object v2, p5, p0

    aget v2, v2, p6

    invoke-static {v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result v2

    .line 301
    aget-object p5, p5, v1

    aget p5, p5, p6

    invoke-static {p5, v0}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result p5

    .line 302
    invoke-static {v2, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p6

    add-int/2addr p6, v1

    invoke-static {p5, p5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v0

    add-int/2addr p6, v0

    invoke-static {p6}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result p6

    add-int/2addr p6, v1

    const/16 v0, 0xe

    .line 303
    invoke-static {v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v1

    invoke-static {v1, p6}, Lio/github/jaredmdobson/concentus/Inlines;->DIV32_16(II)I

    move-result v1

    .line 304
    invoke-static {p5, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result p5

    invoke-static {p5, p6}, Lio/github/jaredmdobson/concentus/Inlines;->DIV32_16(II)I

    move-result p5

    :goto_0
    if-ge p0, p7, :cond_0

    add-int p6, p2, p0

    .line 307
    aget v2, p1, p6

    add-int v3, p4, p0

    .line 308
    aget v3, p3, v3

    .line 309
    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, p5, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v2

    invoke-static {v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v2

    aput v2, p1, p6

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static interleave_hadamard([IIIII)V
    .locals 8

    mul-int v0, p2, p3

    .line 502
    new-array v1, v0, [I

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    add-int/lit8 p4, p3, -0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_0

    mul-int v5, v4, p3

    add-int/2addr v5, v3

    .line 508
    sget-object v6, Lio/github/jaredmdobson/concentus/CeltTables;->ordery_table:[I

    add-int v7, p4, v3

    aget v6, v6, v7

    mul-int v6, v6, p2

    add-int/2addr v6, v4

    add-int/2addr v6, p1

    aget v6, p0, v6

    aput v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_2
    if-ge p4, p3, :cond_3

    const/4 v3, 0x0

    :goto_3
    if-ge v3, p2, :cond_2

    mul-int v4, v3, p3

    add-int/2addr v4, p4

    mul-int v5, p4, p2

    add-int/2addr v5, v3

    add-int/2addr v5, p1

    .line 514
    aget v5, p0, v5

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 519
    :cond_3
    invoke-static {v1, v2, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static normalise_bands(Lio/github/jaredmdobson/concentus/CeltMode;[[I[[I[[IIII)V
    .locals 9

    .line 130
    iget-object p0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    .line 138
    :goto_0
    aget-object v3, p3, v1

    aget v3, v3, v2

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->celt_zlog2(I)I

    move-result v3

    add-int/lit8 v4, v3, -0xd

    .line 139
    aget-object v5, p3, v1

    aget v5, v5, v2

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result v4

    const/4 v5, 0x3

    .line 140
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v4

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->celt_rcp(I)I

    move-result v4

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v4

    .line 141
    aget-short v5, p0, v2

    mul-int v5, v5, p6

    .line 143
    :cond_1
    aget-object v6, p2, v1

    aget-object v7, p1, v1

    aget v7, v7, v5

    add-int/lit8 v8, v3, -0xe

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result v7

    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v2, 0x1

    .line 144
    aget-short v7, p0, v6

    mul-int v7, v7, p6

    if-lt v5, v7, :cond_1

    if-lt v6, p4, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p5, :cond_0

    return-void

    :cond_2
    move v2, v6

    goto :goto_0
.end method

.method static quant_all_bands(ILio/github/jaredmdobson/concentus/CeltMode;II[I[I[S[[I[IIIII[IIILio/github/jaredmdobson/concentus/EntropyCoder;IILio/github/jaredmdobson/concentus/BoxedValueInt;)V
    .locals 39

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p10

    move/from16 v5, p12

    move-object/from16 v6, p19

    .line 1301
    iget-object v7, v1, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    const/4 v8, 0x1

    if-eqz p5, :cond_0

    const/4 v9, 0x2

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    :goto_0
    if-nez v0, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 1313
    :goto_1
    new-instance v12, Lio/github/jaredmdobson/concentus/Bands$band_ctx;

    invoke-direct {v12}, Lio/github/jaredmdobson/concentus/Bands$band_ctx;-><init>()V

    shl-int v28, v8, p17

    if-eqz p9, :cond_2

    move/from16 v13, v28

    goto :goto_2

    :cond_2
    const/4 v13, 0x1

    .line 1317
    :goto_2
    aget-short v14, v7, v2

    mul-int v29, v28, v14

    .line 1321
    iget v14, v1, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    sub-int/2addr v14, v8

    aget-short v14, v7, v14

    mul-int v14, v14, v28

    sub-int v14, v14, v29

    mul-int v14, v14, v9

    new-array v14, v14, [I

    .line 1322
    iget v15, v1, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    sub-int/2addr v15, v8

    aget-short v15, v7, v15

    mul-int v15, v15, v28

    sub-int v30, v15, v29

    .line 1327
    iget v15, v1, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    sub-int/2addr v15, v8

    aget-short v15, v7, v15

    mul-int v25, v28, v15

    move-object/from16 v15, p7

    .line 1330
    iput-object v15, v12, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->bandE:[[I

    move-object/from16 v15, p16

    .line 1331
    iput-object v15, v12, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->ec:Lio/github/jaredmdobson/concentus/EntropyCoder;

    .line 1332
    iput v0, v12, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->encode:I

    .line 1333
    iput v5, v12, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->intensity:I

    .line 1334
    iput-object v1, v12, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->m:Lio/github/jaredmdobson/concentus/CeltMode;

    .line 1335
    iget v0, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iput v0, v12, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->seed:I

    .line 1336
    iput v4, v12, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->spread:I

    move-object/from16 v19, p4

    move/from16 v0, p11

    move/from16 v16, p15

    move v8, v2

    const/16 v17, 0x1

    const/16 v18, 0x0

    :goto_3
    if-ge v8, v3, :cond_1e

    .line 1351
    iput v8, v12, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->i:I

    add-int/lit8 v10, v3, -0x1

    if-ne v8, v10, :cond_3

    const/16 v27, 0x1

    goto :goto_4

    :cond_3
    const/16 v27, 0x0

    .line 1355
    :goto_4
    aget-short v20, v7, v8

    mul-int v21, v28, v20

    const/16 v32, 0x0

    if-eqz p5, :cond_4

    mul-int v22, v28, v20

    move-object/from16 v23, p5

    goto :goto_5

    :cond_4
    move-object/from16 v23, v32

    const/16 v22, 0x0

    :goto_5
    add-int/lit8 v33, v8, 0x1

    .line 1362
    aget-short v24, v7, v33

    mul-int v24, v24, v28

    mul-int v20, v20, v28

    sub-int v24, v24, v20

    .line 1363
    invoke-virtual {v15}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell_frac()I

    move-result v34

    if-eq v8, v2, :cond_5

    sub-int v16, v16, v34

    :cond_5
    move/from16 p0, v0

    move/from16 v0, v16

    sub-int v2, p14, v34

    add-int/lit8 v3, v2, -0x1

    .line 1370
    iput v3, v12, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    add-int/lit8 v3, p18, -0x1

    move-object/from16 v35, v7

    const/4 v7, 0x3

    if-gt v8, v3, :cond_6

    sub-int v3, p18, v8

    .line 1372
    invoke-static {v7, v3}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v3

    invoke-static {v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sudiv(II)I

    move-result v3

    .line 1373
    aget v16, p8, v8

    add-int v3, v16, v3

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v2

    const/16 v3, 0x3fff

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v2

    move v3, v2

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    if-eqz v11, :cond_8

    .line 1378
    aget-short v2, v35, v8

    mul-int v2, v2, v28

    sub-int v2, v2, v24

    aget-short v16, v35, p2

    mul-int v7, v28, v16

    if-lt v2, v7, :cond_8

    if-nez v17, :cond_7

    if-nez v18, :cond_8

    :cond_7
    move v2, v8

    goto :goto_7

    :cond_8
    move/from16 v2, v18

    .line 1382
    :goto_7
    aget v7, p13, v8

    .line 1383
    iput v7, v12, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->tf_change:I

    move/from16 p9, v0

    .line 1384
    iget v0, v1, Lio/github/jaredmdobson/concentus/CeltMode;->effEBands:I

    if-lt v8, v0, :cond_a

    if-eqz p5, :cond_9

    move-object/from16 v23, v14

    const/16 v22, 0x0

    :cond_9
    move-object/from16 v16, v14

    move-object/from16 v19, v32

    const/16 v21, 0x0

    goto :goto_8

    :cond_a
    move-object/from16 v16, p4

    :goto_8
    move/from16 v0, v22

    move-object/from16 v36, v23

    if-ne v8, v10, :cond_b

    move-object/from16 v19, v32

    :cond_b
    const/16 p11, -0x1

    if-eqz v2, :cond_10

    const/4 v10, 0x3

    if-ne v4, v10, :cond_c

    const/4 v10, 0x1

    if-gt v13, v10, :cond_c

    if-gez v7, :cond_10

    .line 1404
    :cond_c
    aget-short v7, v35, v2

    mul-int v7, v7, v28

    sub-int v7, v7, v29

    sub-int v7, v7, v24

    const/4 v10, 0x0

    invoke-static {v10, v7}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v7

    move/from16 v17, v2

    :goto_9
    add-int/lit8 v17, v17, -0x1

    .line 1406
    aget-short v18, v35, v17

    mul-int v10, v28, v18

    move/from16 p7, v0

    add-int v0, v7, v29

    if-le v10, v0, :cond_d

    move/from16 v0, p7

    const/4 v10, 0x0

    goto :goto_9

    :cond_d
    add-int/lit8 v10, v2, -0x1

    :goto_a
    const/16 v31, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 1408
    aget-short v18, v35, v10

    move/from16 p15, v0

    mul-int v0, v28, v18

    add-int v1, p15, v24

    if-ge v0, v1, :cond_e

    move-object/from16 v1, p1

    move/from16 v0, p15

    goto :goto_a

    :cond_e
    const-wide/16 v0, 0x0

    move/from16 v20, v17

    move-wide/from16 v17, v0

    :goto_b
    mul-int v22, v20, v9

    move-wide/from16 v37, v0

    .line 1412
    aget-short v0, p6, v22

    int-to-long v0, v0

    or-long v0, v37, v0

    add-int v22, v22, v9

    const/16 v31, 0x1

    add-int/lit8 v22, v22, -0x1

    move-wide/from16 v37, v0

    .line 1413
    aget-short v0, p6, v22

    int-to-long v0, v0

    or-long v17, v17, v0

    add-int/lit8 v0, v20, 0x1

    if-lt v0, v10, :cond_f

    move v10, v2

    move/from16 p15, v3

    move-wide/from16 v2, v17

    move-wide/from16 v0, v37

    goto :goto_c

    :cond_f
    move/from16 v20, v0

    move-wide/from16 v0, v37

    goto :goto_b

    :cond_10
    move/from16 p7, v0

    const/16 v31, 0x1

    shl-int v0, v31, v13

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    move v10, v2

    move/from16 p15, v3

    const/4 v7, -0x1

    move-wide v2, v0

    :goto_c
    if-eqz p0, :cond_12

    if-ne v8, v5, :cond_12

    if-eqz v11, :cond_11

    const/4 v4, 0x0

    .line 1426
    :goto_d
    aget-short v17, v35, v8

    mul-int v17, v17, v28

    sub-int v5, v17, v29

    if-ge v4, v5, :cond_11

    .line 1427
    aget v5, v14, v4

    add-int v17, v30, v4

    aget v17, v14, v17

    add-int v5, v5, v17

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v5

    aput v5, v14, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v5, p12

    goto :goto_d

    :cond_11
    const/4 v4, 0x0

    goto :goto_e

    :cond_12
    move/from16 v4, p0

    :goto_e
    if-eqz v4, :cond_17

    move/from16 v17, v13

    move-object/from16 v13, v16

    .line 1432
    div-int/lit8 v16, p15, 0x2

    const/4 v5, -0x1

    if-eq v7, v5, :cond_13

    move-object/from16 v18, v14

    goto :goto_f

    :cond_13
    move-object/from16 v18, v32

    :goto_f
    move-object v5, v14

    move/from16 v14, v21

    if-eqz v27, :cond_14

    move-object/from16 v21, v32

    goto :goto_10

    :cond_14
    move-object/from16 v21, v5

    :goto_10
    aget-short v20, v35, v8

    mul-int v20, v20, v28

    sub-int v22, v20, v29

    const/16 v23, 0x7fff

    long-to-int v1, v0

    move/from16 v20, p17

    move/from16 v26, v1

    move/from16 v15, v24

    move-object/from16 v24, v19

    move/from16 v19, v7

    invoke-static/range {v12 .. v26}, Lio/github/jaredmdobson/concentus/Bands;->quant_band(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v0

    int-to-long v0, v0

    const/4 v13, -0x1

    if-eq v7, v13, :cond_15

    move-object/from16 v18, v5

    goto :goto_11

    :cond_15
    move-object/from16 v18, v32

    :goto_11
    add-int v19, v30, v7

    if-eqz v27, :cond_16

    move-object/from16 v21, v32

    goto :goto_12

    :cond_16
    move-object/from16 v21, v5

    .line 1447
    :goto_12
    aget-short v7, v35, v8

    mul-int v7, v7, v28

    sub-int v7, v7, v29

    add-int v22, v30, v7

    const/16 v23, 0x7fff

    long-to-int v3, v2

    move/from16 v14, p7

    move/from16 v20, p17

    move/from16 v26, v3

    move-object/from16 v13, v36

    invoke-static/range {v12 .. v26}, Lio/github/jaredmdobson/concentus/Bands;->quant_band(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v2

    int-to-long v2, v2

    move-wide v13, v2

    move/from16 v2, p15

    goto/16 :goto_18

    :cond_17
    move-object v5, v14

    move/from16 v14, v21

    move/from16 v17, v24

    move-object/from16 v15, v36

    move-object/from16 v24, v19

    move/from16 v19, v13

    move-object/from16 v13, v16

    move/from16 v16, p7

    if-eqz v15, :cond_1a

    move-wide/from16 v20, v0

    const/4 v0, -0x1

    if-eq v7, v0, :cond_18

    move-wide/from16 v0, v20

    move-object/from16 v20, v5

    goto :goto_13

    :cond_18
    move-wide/from16 v0, v20

    move-object/from16 v20, v32

    :goto_13
    if-eqz v27, :cond_19

    move-object/from16 v23, v32

    goto :goto_14

    :cond_19
    move-object/from16 v23, v5

    .line 1465
    :goto_14
    aget-short v18, v35, v8

    mul-int v18, v18, v28

    sub-int v18, v18, v29

    or-long/2addr v0, v2

    long-to-int v1, v0

    move/from16 v22, p17

    move/from16 v27, v1

    move/from16 v21, v7

    move/from16 v26, v25

    move-object/from16 v25, v24

    move/from16 v24, v18

    move/from16 v18, p15

    invoke-static/range {v12 .. v27}, Lio/github/jaredmdobson/concentus/Bands;->quant_band_stereo(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[II[IIIII[III[II[III)I

    move-result v0

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move-object/from16 v24, v25

    move/from16 v25, v26

    int-to-long v0, v0

    move/from16 v2, v16

    goto :goto_17

    :cond_1a
    move/from16 v16, p15

    move-wide/from16 v20, v0

    move/from16 v15, v17

    move/from16 v17, v19

    const/4 v0, -0x1

    if-eq v7, v0, :cond_1b

    move-object/from16 v18, v5

    goto :goto_15

    :cond_1b
    move-object/from16 v18, v32

    :goto_15
    move-wide/from16 v0, v20

    if-eqz v27, :cond_1c

    move-object/from16 v21, v32

    goto :goto_16

    :cond_1c
    move-object/from16 v21, v5

    .line 1483
    :goto_16
    aget-short v19, v35, v8

    mul-int v19, v19, v28

    sub-int v22, v19, v29

    or-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v23, 0x7fff

    move/from16 v20, p17

    move/from16 v26, v1

    move/from16 v19, v7

    invoke-static/range {v12 .. v26}, Lio/github/jaredmdobson/concentus/Bands;->quant_band(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v0

    move/from16 v2, v16

    int-to-long v0, v0

    :goto_17
    move-wide v13, v0

    :goto_18
    mul-int v3, v8, v9

    const-wide/16 v18, 0xff

    and-long v0, v0, v18

    long-to-int v1, v0

    int-to-short v0, v1

    .line 1502
    aput-short v0, p6, v3

    add-int/2addr v3, v9

    const/16 v31, 0x1

    add-int/lit8 v3, v3, -0x1

    and-long v0, v13, v18

    long-to-int v1, v0

    int-to-short v0, v1

    .line 1503
    aput-short v0, p6, v3

    .line 1504
    aget v0, p8, v8

    add-int v0, v0, v34

    add-int v16, p9, v0

    shl-int/lit8 v0, v15, 0x3

    if-le v2, v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_19

    :cond_1d
    const/4 v0, 0x0

    :goto_19
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v15, p16

    move-object v14, v5

    move/from16 v18, v10

    move/from16 v13, v17

    move-object/from16 v19, v24

    move/from16 v8, v33

    move-object/from16 v7, v35

    move/from16 v5, p12

    move/from16 v17, v0

    move v0, v4

    move/from16 v4, p10

    goto/16 :goto_3

    .line 1510
    :cond_1e
    iget v0, v12, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->seed:I

    iput v0, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method

.method static quant_band(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[III[III[III)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v4, p12

    .line 1014
    iget v5, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->encode:I

    const/4 v11, 0x1

    if-nez v5, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 1019
    :goto_0
    iget v5, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->encode:I

    .line 1020
    iget v6, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->tf_change:I

    if-ne v1, v11, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 1024
    :goto_1
    invoke-static {v3, v1}, Lio/github/jaredmdobson/concentus/Inlines;->celt_udiv(II)I

    move-result v7

    if-ne v3, v11, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p4

    move-object/from16 v6, p9

    move/from16 v7, p10

    .line 1028
    invoke-static/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/Bands;->quant_band_n1(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[II[III[II)I

    move-result v0

    return v0

    :cond_2
    move-object/from16 v0, p1

    move/from16 v8, p2

    if-lez v6, :cond_3

    move v15, v6

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    :goto_2
    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    if-nez v15, :cond_5

    and-int/lit8 v9, v7, 0x1

    if-nez v9, :cond_4

    if-ltz v6, :cond_5

    :cond_4
    if-le v1, v11, :cond_6

    :cond_5
    move/from16 v9, p7

    move/from16 v10, p13

    .line 1037
    invoke-static {v2, v9, v4, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v4

    move v4, v7

    move v7, v10

    goto :goto_3

    :cond_6
    move/from16 v9, p7

    move v4, v7

    move v7, v9

    :goto_3
    move/from16 v9, p14

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v15, :cond_b

    if-eqz v5, :cond_7

    shr-int v12, v3, v10

    const/16 v16, 0x1

    shl-int v11, v16, v10

    .line 1044
    invoke-static {v0, v8, v12, v11}, Lio/github/jaredmdobson/concentus/Bands;->haar1([IIII)V

    goto :goto_5

    :cond_7
    const/16 v16, 0x1

    :goto_5
    if-eqz v2, :cond_8

    shr-int v11, v3, v10

    shl-int v12, v16, v10

    .line 1047
    invoke-static {v2, v7, v11, v12}, Lio/github/jaredmdobson/concentus/Bands;->haar1([IIII)V

    :cond_8
    and-int/lit8 v11, v9, 0xf

    shr-int/lit8 v9, v9, 0x4

    .line 1051
    const-string v12, "e"

    if-gez v11, :cond_9

    .line 1052
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    if-gez v9, :cond_a

    .line 1055
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1057
    :cond_a
    sget-object v1, Lio/github/jaredmdobson/concentus/Bands;->bit_interleave_table:[B

    aget-byte v11, v1, v11

    aget-byte v1, v1, v9

    shl-int/lit8 v1, v1, 0x2

    or-int v9, v11, v1

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p5

    const/4 v11, 0x1

    goto :goto_4

    :cond_b
    const/16 v16, 0x1

    shr-int v1, p5, v15

    shl-int/2addr v4, v15

    move v11, v4

    move v10, v9

    const/4 v12, 0x0

    :goto_6
    and-int/lit8 v4, v11, 0x1

    if-nez v4, :cond_e

    if-gez v6, :cond_e

    if-eqz v5, :cond_c

    .line 1065
    invoke-static {v0, v8, v11, v1}, Lio/github/jaredmdobson/concentus/Bands;->haar1([IIII)V

    :cond_c
    if-eqz v2, :cond_d

    .line 1068
    invoke-static {v2, v7, v11, v1}, Lio/github/jaredmdobson/concentus/Bands;->haar1([IIII)V

    :cond_d
    shl-int v4, v10, v1

    or-int/2addr v10, v4

    shl-int/lit8 v1, v1, 0x1

    shr-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_e
    const/4 v4, 0x1

    if-le v1, v4, :cond_10

    if-eqz v5, :cond_f

    shr-int v4, v11, v15

    shl-int v5, v1, v15

    .line 1082
    invoke-static {v0, v8, v4, v5, v14}, Lio/github/jaredmdobson/concentus/Bands;->deinterleave_hadamard([IIIII)V

    :cond_f
    if-eqz v2, :cond_10

    shr-int v4, v11, v15

    shl-int v5, v1, v15

    .line 1085
    invoke-static {v2, v7, v4, v5, v14}, Lio/github/jaredmdobson/concentus/Bands;->deinterleave_hadamard([IIIII)V

    :cond_10
    move/from16 v4, p4

    move/from16 v9, p11

    move v5, v1

    move-object v6, v2

    move v2, v8

    move/from16 v8, p8

    move-object v1, v0

    move-object/from16 v0, p0

    .line 1089
    invoke-static/range {v0 .. v10}, Lio/github/jaredmdobson/concentus/Bands;->quant_partition(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[IIIII)I

    move-result v0

    if-eqz v13, :cond_15

    const/4 v4, 0x1

    if-le v5, v4, :cond_11

    shr-int v6, v11, v15

    shl-int v7, v5, v15

    .line 1095
    invoke-static {v1, v2, v6, v7, v14}, Lio/github/jaredmdobson/concentus/Bands;->interleave_hadamard([IIIII)V

    :cond_11
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v12, :cond_12

    shr-int/lit8 v5, v5, 0x1

    shl-int/2addr v11, v4

    shr-int v4, v0, v5

    or-int/2addr v0, v4

    .line 1105
    invoke-static {v1, v2, v11, v5}, Lio/github/jaredmdobson/concentus/Bands;->haar1([IIII)V

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v15, :cond_13

    .line 1109
    sget-object v6, Lio/github/jaredmdobson/concentus/Bands;->bit_deinterleave_table:[S

    aget-short v0, v6, v0

    shr-int v6, v3, v4

    const/16 v16, 0x1

    shl-int v7, v16, v4

    .line 1110
    invoke-static {v1, v2, v6, v7}, Lio/github/jaredmdobson/concentus/Bands;->haar1([IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_13
    shl-int v4, v5, v15

    if-eqz p9, :cond_14

    const/16 v5, 0x16

    .line 1118
    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v5

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result v5

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v3, :cond_14

    add-int v6, p10, v12

    add-int v7, v2, v12

    .line 1120
    aget v7, v1, v7

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v7

    aput v7, p9, v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_14
    const/16 v16, 0x1

    shl-int v1, v16, v4

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    :cond_15
    return v0
.end method

.method static quant_band_n1(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[II[III[II)I
    .locals 13

    .line 787
    iget v0, p0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->encode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 795
    :goto_0
    iget v3, p0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->encode:I

    .line 796
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->ec:Lio/github/jaredmdobson/concentus/EntropyCoder;

    if-eqz p3, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move-object v6, p1

    move v7, p2

    const/4 v8, 0x0

    .line 802
    :goto_2
    iget v9, p0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    const/16 v10, 0x8

    if-lt v9, v10, :cond_4

    if-eqz v3, :cond_3

    .line 804
    aget v9, v6, v7

    if-gez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    :goto_3
    int-to-long v11, v9

    .line 805
    invoke-virtual {v4, v11, v12, v2}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bits(JI)V

    goto :goto_4

    .line 807
    :cond_3
    invoke-virtual {v4, v2}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bits(I)I

    move-result v9

    .line 809
    :goto_4
    iget v11, p0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int/2addr v11, v10

    iput v11, p0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    :goto_5
    if-eqz v0, :cond_6

    if-eqz v9, :cond_5

    const/16 v9, -0x4000

    goto :goto_6

    :cond_5
    const/16 v9, 0x4000

    .line 813
    :goto_6
    aput v9, v6, v7

    :cond_6
    add-int/2addr v8, v2

    add-int/lit8 v6, v5, 0x1

    if-lt v8, v6, :cond_8

    if-eqz p6, :cond_7

    .line 819
    aget p0, p1, p2

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result p0

    aput p0, p6, p7

    :cond_7
    return v2

    :cond_8
    move-object/from16 v6, p3

    move/from16 v7, p4

    goto :goto_2
.end method

.method static quant_band_stereo(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[II[IIIII[III[II[III)I
    .locals 26

    move-object/from16 v0, p0

    move/from16 v8, p5

    .line 1138
    iget v1, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->encode:I

    const/4 v13, 0x1

    if-nez v1, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    .line 1142
    :goto_0
    new-instance v9, Lio/github/jaredmdobson/concentus/Bands$split_ctx;

    invoke-direct {v9}, Lio/github/jaredmdobson/concentus/Bands$split_ctx;-><init>()V

    .line 1147
    iget v14, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->encode:I

    .line 1148
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->ec:Lio/github/jaredmdobson/concentus/EntropyCoder;

    if-ne v8, v13, :cond_1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p11

    move/from16 v7, p12

    .line 1152
    invoke-static/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/Bands;->quant_band_n1(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[II[III[II)I

    move-result v0

    return v0

    .line 1157
    :cond_1
    new-instance v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    move/from16 v5, p6

    invoke-direct {v7, v5}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 1158
    new-instance v12, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    move/from16 v0, p15

    invoke-direct {v12, v0}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v11, 0x1

    move-object v1, v9

    move/from16 v9, p7

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move v6, v8

    move-object v15, v10

    move/from16 v8, p7

    move/from16 v10, p10

    .line 1159
    invoke-static/range {v0 .. v12}, Lio/github/jaredmdobson/concentus/Bands;->compute_theta(Lio/github/jaredmdobson/concentus/Bands$band_ctx;Lio/github/jaredmdobson/concentus/Bands$split_ctx;[II[IIILio/github/jaredmdobson/concentus/BoxedValueInt;IIIILio/github/jaredmdobson/concentus/BoxedValueInt;)V

    move v3, v6

    .line 1160
    iget v2, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 1161
    iget v4, v12, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 1163
    iget v5, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->inv:I

    .line 1164
    iget v6, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->imid:I

    .line 1165
    iget v7, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->iside:I

    .line 1166
    iget v8, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->delta:I

    .line 1167
    iget v9, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->itheta:I

    .line 1168
    iget v1, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->qalloc:I

    const/16 v10, 0x4000

    const/4 v11, 0x2

    if-ne v3, v11, :cond_9

    if-eqz v9, :cond_2

    if-eq v9, v10, :cond_2

    const/16 v4, 0x8

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    sub-int/2addr v2, v4

    const/16 v8, 0x2000

    if-le v9, v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 1188
    :goto_2
    iget v9, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    add-int/2addr v1, v4

    sub-int/2addr v9, v1

    iput v9, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    if-eqz v8, :cond_4

    move-object/from16 v18, p1

    move-object/from16 v1, p3

    move v8, v4

    move v4, v2

    move/from16 v2, p4

    goto :goto_3

    :cond_4
    move-object/from16 v1, p1

    move-object/from16 v18, p3

    move v8, v4

    move v4, v2

    move/from16 v2, p2

    :goto_3
    if-eqz v8, :cond_7

    if-eqz v14, :cond_6

    .line 1204
    aget v8, v1, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, v18, v9

    mul-int v8, v8, v9

    add-int/lit8 v9, v2, 0x1

    aget v9, v1, v9

    aget v10, v18, p4

    mul-int v9, v9, v10

    sub-int/2addr v8, v9

    if-gez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    int-to-long v9, v8

    .line 1205
    invoke-virtual {v15, v9, v10, v13}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bits(JI)V

    goto :goto_5

    .line 1207
    :cond_6
    invoke-virtual {v15, v13}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bits(I)I

    move-result v8

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    mul-int/lit8 v8, v8, 0x2

    rsub-int/lit8 v15, v8, 0x1

    const/4 v8, 0x2

    const/16 v11, 0x7fff

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p12

    move-object/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v19, v5

    move/from16 v20, v7

    move/from16 p6, v15

    move/from16 v5, p7

    move/from16 v7, p9

    move v15, v6

    move-object/from16 v6, p8

    .line 1213
    invoke-static/range {v0 .. v14}, Lio/github/jaredmdobson/concentus/Bands;->quant_band(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v0

    rsub-int/lit8 v3, p6, 0x0

    add-int/lit8 v4, v2, 0x1

    .line 1218
    aget v4, v1, v4

    mul-int v3, v3, v4

    aput v3, v18, p4

    add-int/lit8 v3, p4, 0x1

    .line 1219
    aget v1, v1, v2

    mul-int v1, v1, p6

    aput v1, v18, v3

    if-eqz v16, :cond_8

    .line 1222
    aget v1, p1, p2

    invoke-static {v15, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v1

    aput v1, p1, p2

    add-int/lit8 v1, p2, 0x1

    .line 1223
    aget v2, p1, v1

    invoke-static {v15, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    aput v2, p1, v1

    .line 1224
    aget v2, p3, p4

    move/from16 v5, v20

    invoke-static {v5, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    aput v2, p3, p4

    .line 1225
    aget v2, p3, v3

    invoke-static {v5, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    aput v2, p3, v3

    .line 1226
    aget v2, p1, p2

    .line 1227
    aget v4, p3, p4

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v4

    aput v4, p1, p2

    .line 1228
    aget v4, p3, p4

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v2

    aput v2, p3, p4

    .line 1229
    aget v2, p1, v1

    .line 1230
    aget v4, p3, v3

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v4

    aput v4, p1, v1

    .line 1231
    aget v1, p3, v3

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v1

    aput v1, p3, v3

    :cond_8
    move/from16 v3, p5

    move/from16 v21, v15

    goto/16 :goto_8

    :cond_9
    move/from16 v19, v5

    move v15, v6

    move v5, v7

    sub-int v3, v2, v8

    const/16 v21, 0x2

    .line 1237
    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v6, v3}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1239
    iget v6, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int/2addr v6, v1

    iput v6, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    .line 1241
    iget v1, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    const/16 v6, 0x18

    if-lt v3, v2, :cond_b

    const/16 v11, 0x7fff

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v10, p12

    move-object/from16 v12, p13

    move/from16 v13, p14

    move/from16 v22, v1

    move/from16 v18, v2

    move v14, v4

    move/from16 v20, v5

    move/from16 p6, v9

    move/from16 v21, v15

    const/16 v15, 0x18

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p7

    move-object/from16 v9, p11

    move v4, v3

    move/from16 v3, p5

    .line 1245
    invoke-static/range {v0 .. v14}, Lio/github/jaredmdobson/concentus/Bands;->quant_band(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v23

    move/from16 v24, v4

    move/from16 v25, v14

    .line 1248
    iget v1, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int v1, v22, v1

    sub-int v3, v24, v1

    if-le v3, v15, :cond_a

    if-eqz p6, :cond_a

    sub-int/2addr v3, v15

    add-int v2, v18, v3

    move v4, v2

    goto :goto_6

    :cond_a
    move/from16 v4, v18

    :goto_6
    const/4 v13, 0x0

    shr-int v14, v25, p7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v5, p7

    move/from16 v8, p10

    move/from16 v11, v20

    .line 1255
    invoke-static/range {v0 .. v14}, Lio/github/jaredmdobson/concentus/Bands;->quant_band(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v0

    or-int v0, v23, v0

    goto/16 :goto_8

    :cond_b
    move/from16 v22, v1

    move/from16 v18, v2

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v20, v5

    move/from16 p6, v9

    move/from16 v21, v15

    const/16 v15, 0x18

    const/4 v13, 0x0

    shr-int v14, v25, p7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v0, 0x4000

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v5, p7

    move/from16 v8, p10

    move/from16 v4, v18

    move/from16 v11, v20

    .line 1261
    invoke-static/range {v0 .. v14}, Lio/github/jaredmdobson/concentus/Bands;->quant_band(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v18

    .line 1264
    iget v1, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int v1, v22, v1

    sub-int v2, v4, v1

    if-le v2, v15, :cond_c

    move/from16 v1, p6

    const/16 v3, 0x4000

    if-eq v1, v3, :cond_c

    sub-int/2addr v2, v15

    add-int v3, v24, v2

    move v4, v3

    goto :goto_7

    :cond_c
    move/from16 v4, v24

    :goto_7
    const/16 v11, 0x7fff

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p12

    move-object/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, v25

    .line 1270
    invoke-static/range {v0 .. v14}, Lio/github/jaredmdobson/concentus/Bands;->quant_band(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v0

    or-int v0, v18, v0

    :goto_8
    if-eqz v16, :cond_e

    const/4 v8, 0x2

    if-eq v3, v8, :cond_d

    move-object/from16 p6, p1

    move/from16 p7, p2

    move-object/from16 p8, p3

    move/from16 p9, p4

    move/from16 p11, v3

    move/from16 p10, v21

    .line 1280
    invoke-static/range {p6 .. p11}, Lio/github/jaredmdobson/concentus/Bands;->stereo_merge([II[IIII)V

    :cond_d
    if-eqz v19, :cond_e

    move/from16 v1, p4

    :goto_9
    add-int v2, p5, p4

    if-ge v1, v2, :cond_e

    .line 1285
    aget v2, p3, v1

    const/16 v17, 0x0

    rsub-int/lit8 v15, v2, 0x0

    int-to-short v2, v15

    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    return v0
.end method

.method static quant_partition(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[IIIII)I
    .locals 21

    move-object/from16 v0, p0

    move/from16 v2, p3

    move/from16 v1, p4

    move/from16 v5, p5

    move/from16 v3, p8

    move/from16 v13, p9

    .line 840
    iget v4, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->encode:I

    const/4 v14, 0x1

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 848
    :goto_0
    iget v6, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->encode:I

    .line 849
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->m:Lio/github/jaredmdobson/concentus/CeltMode;

    .line 850
    iget v8, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->i:I

    move v9, v4

    .line 851
    iget v4, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->spread:I

    move v10, v6

    .line 852
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->ec:Lio/github/jaredmdobson/concentus/EntropyCoder;

    .line 853
    iget-object v11, v7, Lio/github/jaredmdobson/concentus/CeltMode;->cache:Lio/github/jaredmdobson/concentus/PulseCache;

    iget-object v11, v11, Lio/github/jaredmdobson/concentus/PulseCache;->bits:[S

    .line 855
    iget-object v12, v7, Lio/github/jaredmdobson/concentus/CeltMode;->cache:Lio/github/jaredmdobson/concentus/PulseCache;

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/PulseCache;->index:[S

    add-int/lit8 v16, v3, 0x1

    iget v15, v7, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int v16, v16, v15

    add-int v16, v16, v8

    aget-short v12, v12, v16

    const/4 v15, -0x1

    if-eq v3, v15, :cond_9

    .line 856
    aget-short v16, v11, v12

    add-int v12, v12, v16

    aget-short v11, v11, v12

    add-int/lit8 v11, v11, 0xc

    if-le v1, v11, :cond_9

    const/4 v11, 0x2

    if-le v2, v11, :cond_9

    .line 860
    new-instance v4, Lio/github/jaredmdobson/concentus/Bands$split_ctx;

    invoke-direct {v4}, Lio/github/jaredmdobson/concentus/Bands$split_ctx;-><init>()V

    shr-int/lit8 v6, v2, 0x1

    add-int v2, p2, v6

    add-int/lit8 v8, v3, -0x1

    if-ne v5, v14, :cond_1

    and-int/lit8 v3, p10, 0x1

    shl-int/lit8 v7, p10, 0x1

    or-int/2addr v3, v7

    goto :goto_1

    :cond_1
    move/from16 v3, p10

    :goto_1
    add-int/lit8 v7, v5, 0x1

    shr-int/2addr v7, v14

    move v10, v8

    move v8, v7

    .line 873
    new-instance v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v7, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 874
    new-instance v12, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v12, v3}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v1, 0x2

    const/4 v11, 0x0

    move-object v1, v4

    const/4 v3, 0x2

    move-object/from16 v4, p1

    move/from16 v3, p2

    move v9, v5

    const/4 v15, 0x2

    move v5, v2

    move-object/from16 v2, p1

    .line 875
    invoke-static/range {v0 .. v12}, Lio/github/jaredmdobson/concentus/Bands;->compute_theta(Lio/github/jaredmdobson/concentus/Bands$band_ctx;Lio/github/jaredmdobson/concentus/Bands$split_ctx;[II[IIILio/github/jaredmdobson/concentus/BoxedValueInt;IIIILio/github/jaredmdobson/concentus/BoxedValueInt;)V

    move v3, v6

    move v11, v9

    move-object v2, v12

    move v12, v5

    move v5, v8

    move v8, v10

    .line 876
    iget v4, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 877
    iget v10, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 879
    iget v2, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->imid:I

    .line 880
    iget v6, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->iside:I

    .line 881
    iget v7, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->delta:I

    .line 882
    iget v9, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->itheta:I

    .line 883
    iget v1, v1, Lio/github/jaredmdobson/concentus/Bands$split_ctx;->qalloc:I

    if-le v11, v14, :cond_4

    const/16 v16, 0x1

    and-int/lit16 v14, v9, 0x3fff

    if-eqz v14, :cond_2

    const/16 v14, 0x2000

    if-le v9, v14, :cond_3

    rsub-int/lit8 v14, v8, 0x4

    shr-int v14, v7, v14

    sub-int/2addr v7, v14

    :cond_2
    :goto_2
    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    shl-int/lit8 v14, v3, 0x3

    rsub-int/lit8 v18, v8, 0x5

    shr-int v14, v14, v18

    add-int/2addr v7, v14

    const/4 v14, 0x0

    .line 892
    invoke-static {v14, v7}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v7

    goto :goto_3

    :cond_4
    const/16 v16, 0x1

    goto :goto_2

    :goto_3
    sub-int v7, v4, v7

    .line 895
    div-int/2addr v7, v15

    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v7

    invoke-static {v14, v7}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v7

    sub-int v14, v4, v7

    .line 897
    iget v4, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int/2addr v4, v1

    iput v4, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    if-eqz p6, :cond_5

    add-int v15, p7, v3

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    .line 904
    :goto_4
    iget v1, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    const/16 v4, 0x18

    if-lt v7, v14, :cond_7

    move/from16 v17, v9

    .line 908
    invoke-static {v13, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v9

    move/from16 v2, p2

    move v11, v6

    move v4, v7

    move/from16 p3, v12

    move/from16 p4, v14

    move/from16 v12, v17

    const/16 v14, 0x18

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v17, v1

    move-object/from16 v1, p1

    .line 906
    invoke-static/range {v0 .. v10}, Lio/github/jaredmdobson/concentus/Bands;->quant_partition(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[IIIII)I

    move-result v18

    move/from16 v19, v4

    move/from16 v20, v10

    .line 909
    iget v1, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int v1, v17, v1

    sub-int v7, v19, v1

    if-le v7, v14, :cond_6

    if-eqz v12, :cond_6

    sub-int/2addr v7, v14

    add-int v14, p4, v7

    move v4, v14

    goto :goto_5

    :cond_6
    move/from16 v4, p4

    .line 915
    :goto_5
    invoke-static {v13, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v9

    shr-int v10, v20, v5

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v6, p6

    move v7, v15

    .line 913
    invoke-static/range {v0 .. v10}, Lio/github/jaredmdobson/concentus/Bands;->quant_partition(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[IIIII)I

    move-result v0

    shr-int/lit8 v1, p5, 0x1

    shl-int/2addr v0, v1

    or-int v0, v18, v0

    return v0

    :cond_7
    move/from16 v17, v1

    move v0, v5

    move v11, v6

    move/from16 v19, v7

    move/from16 v20, v10

    move v5, v12

    move/from16 p4, v14

    move v7, v15

    const/16 v14, 0x18

    move v12, v9

    .line 919
    invoke-static {v13, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v9

    shr-int v10, v20, v0

    move-object/from16 v1, p1

    move/from16 v4, p4

    move-object/from16 v6, p6

    move v11, v2

    move v2, v5

    move v5, v0

    move-object/from16 v0, p0

    .line 917
    invoke-static/range {v0 .. v10}, Lio/github/jaredmdobson/concentus/Bands;->quant_partition(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[IIIII)I

    move-result v2

    shr-int/lit8 v1, p5, 0x1

    shl-int v15, v2, v1

    .line 920
    iget v1, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int v1, v17, v1

    sub-int v1, v4, v1

    if-le v1, v14, :cond_8

    const/16 v2, 0x4000

    if-eq v12, v2, :cond_8

    sub-int/2addr v1, v14

    add-int v7, v19, v1

    move v4, v7

    goto :goto_6

    :cond_8
    move/from16 v4, v19

    .line 926
    :goto_6
    invoke-static {v13, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v9

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v10, v20

    .line 924
    invoke-static/range {v0 .. v10}, Lio/github/jaredmdobson/concentus/Bands;->quant_partition(Lio/github/jaredmdobson/concentus/Bands$band_ctx;[IIIII[IIIII)I

    move-result v0

    or-int/2addr v0, v15

    return v0

    :cond_9
    const/16 v16, 0x1

    .line 930
    invoke-static {v7, v8, v3, v1}, Lio/github/jaredmdobson/concentus/Rate;->bits2pulses(Lio/github/jaredmdobson/concentus/CeltMode;III)I

    move-result v1

    .line 931
    invoke-static {v7, v8, v3, v1}, Lio/github/jaredmdobson/concentus/Rate;->pulses2bits(Lio/github/jaredmdobson/concentus/CeltMode;III)I

    move-result v5

    .line 932
    iget v11, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int/2addr v11, v5

    iput v11, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    .line 935
    :goto_7
    iget v11, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    if-gez v11, :cond_a

    if-lez v1, :cond_a

    .line 936
    iget v11, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    add-int/2addr v11, v5

    iput v11, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    add-int/lit8 v1, v1, -0x1

    .line 938
    invoke-static {v7, v8, v3, v1}, Lio/github/jaredmdobson/concentus/Rate;->pulses2bits(Lio/github/jaredmdobson/concentus/CeltMode;III)I

    move-result v5

    .line 939
    iget v11, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int/2addr v11, v5

    iput v11, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->remaining_bits:I

    goto :goto_7

    :cond_a
    if-eqz v1, :cond_c

    .line 943
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Rate;->get_pulses(I)I

    move-result v3

    if-eqz v10, :cond_b

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v5, p5

    .line 947
    invoke-static/range {v0 .. v6}, Lio/github/jaredmdobson/concentus/VQ;->alg_quant([IIIIIILio/github/jaredmdobson/concentus/EntropyCoder;)I

    move-result v0

    return v0

    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v5, p5

    move v7, v13

    .line 949
    invoke-static/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/VQ;->alg_unquant([IIIIIILio/github/jaredmdobson/concentus/EntropyCoder;I)I

    move-result v0

    return v0

    :cond_c
    move-object/from16 v1, p1

    move v3, v2

    move v7, v13

    move/from16 v2, p2

    if-eqz v9, :cond_12

    shl-int v4, v16, p5

    add-int/lit8 v4, v4, -0x1

    and-int v5, p10, v4

    if-nez v5, :cond_d

    const/4 v14, 0x0

    .line 963
    invoke-static {v1, v14, v2, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSetWithOffset([IIII)V

    return v14

    :cond_d
    if-nez p6, :cond_e

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v3, :cond_11

    .line 968
    iget v5, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->seed:I

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Bands;->celt_lcg_rand(I)I

    move-result v5

    iput v5, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->seed:I

    add-int v5, v2, v15

    .line 969
    iget v6, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->seed:I

    shr-int/lit8 v6, v6, 0x14

    aput v6, v1, v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_e
    const/4 v15, 0x0

    :goto_9
    if-ge v15, v3, :cond_10

    .line 976
    iget v4, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->seed:I

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Bands;->celt_lcg_rand(I)I

    move-result v4

    iput v4, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->seed:I

    .line 979
    iget v4, v0, Lio/github/jaredmdobson/concentus/Bands$band_ctx;->seed:I

    const v6, 0x8000

    and-int/2addr v4, v6

    if-eqz v4, :cond_f

    const/4 v4, 0x4

    goto :goto_a

    :cond_f
    const/4 v4, -0x4

    :goto_a
    add-int v6, v2, v15

    add-int v8, p7, v15

    .line 980
    aget v8, p6, v8

    add-int/2addr v8, v4

    aput v8, v1, v6

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_10
    move v4, v5

    .line 985
    :cond_11
    invoke-static {v1, v2, v3, v7}, Lio/github/jaredmdobson/concentus/VQ;->renormalise_vector([IIII)V

    return v4

    :cond_12
    const/16 v17, 0x0

    return v17
.end method

.method static spreading_decision(Lio/github/jaredmdobson/concentus/CeltMode;[[ILio/github/jaredmdobson/concentus/BoxedValueInt;ILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;IIII)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p7

    move/from16 v5, p8

    .line 377
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    const/4 v8, 0x0

    if-lez v4, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 381
    :goto_0
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 383
    aget-short v9, v6, v4

    add-int/lit8 v10, v4, -0x1

    aget-short v10, v6, v10

    sub-int/2addr v9, v10

    mul-int v9, v9, p9

    const/16 v10, 0x8

    if-gt v9, v10, :cond_1

    return v8

    :cond_1
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    const/4 v14, 0x0

    :goto_2
    const/16 v16, 0x0

    const/4 v8, 0x3

    const/16 v17, 0x1

    const/4 v7, 0x2

    if-ge v14, v4, :cond_b

    .line 392
    new-array v8, v8, [I

    aput v16, v8, v16

    aput v16, v8, v17

    aput v16, v8, v7

    .line 393
    aget-object v18, p1, v11

    .line 394
    aget-short v19, v6, v14

    mul-int v20, p9, v19

    add-int/lit8 v21, v14, 0x1

    .line 395
    aget-short v22, v6, v21

    sub-int v22, v22, v19

    const/16 v19, 0x2

    mul-int v7, p9, v22

    if-gt v7, v10, :cond_2

    goto :goto_7

    :cond_2
    move/from16 v10, v20

    :goto_3
    add-int v15, v7, v20

    if-ge v10, v15, :cond_6

    .line 404
    aget v15, v18, v10

    invoke-static {v15, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v15

    invoke-static {v15, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v15

    const/16 v4, 0x800

    if-ge v15, v4, :cond_3

    .line 406
    aget v4, v8, v16

    add-int/lit8 v4, v4, 0x1

    aput v4, v8, v16

    :cond_3
    const/16 v4, 0x200

    if-ge v15, v4, :cond_4

    .line 409
    aget v4, v8, v17

    add-int/lit8 v4, v4, 0x1

    aput v4, v8, v17

    :cond_4
    const/16 v4, 0x80

    if-ge v15, v4, :cond_5

    .line 412
    aget v4, v8, v19

    add-int/lit8 v4, v4, 0x1

    aput v4, v8, v19

    :cond_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, p7

    goto :goto_3

    .line 417
    :cond_6
    iget v4, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    add-int/lit8 v4, v4, -0x4

    if-le v14, v4, :cond_7

    .line 418
    aget v4, v8, v17

    aget v10, v8, v16

    add-int/2addr v4, v10

    mul-int/lit8 v4, v4, 0x20

    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->celt_udiv(II)I

    move-result v4

    add-int/2addr v9, v4

    .line 421
    :cond_7
    aget v4, v8, v19

    mul-int/lit8 v4, v4, 0x2

    if-lt v4, v7, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    aget v10, v8, v17

    mul-int/lit8 v10, v10, 0x2

    if-lt v10, v7, :cond_9

    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    :goto_5
    add-int/2addr v4, v10

    aget v8, v8, v16

    mul-int/lit8 v8, v8, 0x2

    if-lt v8, v7, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    add-int/2addr v4, v7

    const/16 v7, 0x100

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v12, v4

    add-int/lit8 v13, v13, 0x1

    :goto_7
    move/from16 v4, p7

    move/from16 v14, v21

    const/4 v8, 0x0

    const/16 v10, 0x8

    goto/16 :goto_2

    :cond_b
    const/16 v19, 0x2

    add-int/lit8 v11, v11, 0x1

    if-lt v11, v5, :cond_17

    if-eqz p6, :cond_11

    if-eqz v9, :cond_c

    .line 429
    iget v0, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    rsub-int/lit8 v0, v0, 0x4

    add-int v0, v0, p7

    mul-int v0, v0, v5

    invoke-static {v9, v0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_udiv(II)I

    move-result v9

    .line 432
    :cond_c
    iget v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/2addr v0, v9

    shr-int/lit8 v0, v0, 0x1

    iput v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 433
    iget v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 435
    iget v2, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d

    add-int/lit8 v0, v0, 0x4

    goto :goto_8

    .line 437
    :cond_d
    iget v2, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-nez v2, :cond_e

    add-int/lit8 v0, v0, -0x4

    :cond_e
    :goto_8
    const/16 v2, 0x16

    if-le v0, v2, :cond_f

    const/4 v4, 0x2

    .line 441
    iput v4, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    goto :goto_9

    :cond_f
    const/16 v2, 0x12

    if-le v0, v2, :cond_10

    const/4 v0, 0x1

    .line 443
    iput v0, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    .line 445
    iput v0, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    :cond_11
    :goto_9
    if-lez v13, :cond_12

    const/4 v0, 0x1

    goto :goto_a

    :cond_12
    const/4 v0, 0x0

    .line 449
    :goto_a
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ltz v12, :cond_13

    const/4 v0, 0x1

    goto :goto_b

    :cond_13
    const/4 v0, 0x0

    .line 451
    :goto_b
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 452
    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->celt_udiv(II)I

    move-result v0

    .line 455
    iget v2, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/2addr v0, v2

    const/16 v17, 0x1

    shr-int/lit8 v0, v0, 0x1

    .line 456
    iput v0, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    mul-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v1, p3, 0x3

    shl-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x40

    add-int/2addr v0, v1

    const/16 v19, 0x2

    add-int/lit8 v0, v0, 0x2

    shr-int/lit8 v0, v0, 0x2

    const/16 v1, 0x50

    if-ge v0, v1, :cond_14

    return v8

    :cond_14
    const/16 v7, 0x100

    if-ge v0, v7, :cond_15

    return v19

    :cond_15
    const/16 v1, 0x180

    if-ge v0, v1, :cond_16

    const/16 v17, 0x1

    return v17

    :cond_16
    const/16 v16, 0x0

    return v16

    :cond_17
    move/from16 v4, p7

    const/4 v8, 0x0

    const/16 v10, 0x8

    goto/16 :goto_1
.end method

.method static stereo_merge([II[IIII)V
    .locals 18

    move/from16 v9, p4

    .line 327
    new-instance v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 328
    new-instance v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v8, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v6, p5

    .line 335
    invoke-static/range {v0 .. v8}, Lio/github/jaredmdobson/concentus/Kernels;->dual_inner_prod([II[II[IIILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)V

    .line 337
    iget v4, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v4

    iput v4, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v4, 0x1

    .line 339
    invoke-static {v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v5

    .line 340
    invoke-static {v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v11

    iget v12, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/2addr v11, v12

    iget v12, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    .line 341
    invoke-static {v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v5

    iget v8, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/2addr v5, v8

    iget v7, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    const v7, 0x27525

    if-lt v5, v7, :cond_4

    if-ge v11, v7, :cond_0

    goto :goto_1

    .line 347
    :cond_0
    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v7

    shr-int/2addr v7, v4

    .line 348
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v8

    shr-int/2addr v8, v4

    add-int/lit8 v12, v7, -0x7

    shl-int/2addr v12, v4

    .line 349
    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result v11

    .line 350
    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->celt_rsqrt_norm(I)I

    move-result v11

    add-int/lit8 v12, v8, -0x7

    shl-int/2addr v12, v4

    .line 351
    invoke-static {v5, v12}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result v5

    .line 352
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->celt_rsqrt_norm(I)I

    move-result v5

    const/4 v12, 0x7

    if-ge v7, v12, :cond_1

    const/4 v7, 0x7

    :cond_1
    if-ge v8, v12, :cond_2

    const/4 v8, 0x7

    :cond_2
    :goto_0
    if-ge v10, v6, :cond_3

    add-int v12, v3, v10

    .line 364
    aget v13, v2, v12

    invoke-static {v9, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v13

    add-int v14, v1, v10

    .line 365
    aget v15, v0, v14

    const/16 v16, 0x1

    .line 366
    invoke-static {v13, v15}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v4

    invoke-static {v11, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v4

    move/from16 v17, v7

    add-int/lit8 v7, v17, 0x1

    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v4

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v4

    aput v4, v2, v12

    .line 367
    invoke-static {v13, v15}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v4

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v4

    add-int/lit8 v7, v8, 0x1

    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v4

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v4

    aput v4, v0, v14

    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v17

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 343
    :cond_4
    :goto_1
    invoke-static {v2, v3, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static stereo_split([II[III)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p1, v0

    .line 318
    aget v2, p0, v1

    const/16 v3, 0x5a82

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    add-int v4, p3, v0

    .line 319
    aget v5, p2, v4

    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    .line 320
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v5

    const/16 v6, 0xf

    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v5

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v5

    aput v5, p0, v1

    .line 321
    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->SUB32(II)I

    move-result v1

    invoke-static {v1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v1

    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v1

    aput v1, p2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
