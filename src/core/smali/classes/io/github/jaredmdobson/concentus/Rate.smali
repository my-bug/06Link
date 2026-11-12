.class Lio/github/jaredmdobson/concentus/Rate;
.super Ljava/lang/Object;
.source "Rate.java"


# static fields
.field private static final ALLOC_STEPS:I = 0x6

.field private static final LOG2_FRAC_TABLE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    .line 39
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/jaredmdobson/concentus/Rate;->LOG2_FRAC_TABLE:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x8t
        0xdt
        0x10t
        0x13t
        0x15t
        0x17t
        0x18t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x20t
        0x21t
        0x22t
        0x22t
        0x23t
        0x24t
        0x24t
        0x25t
        0x25t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bits2pulses(Lio/github/jaredmdobson/concentus/CeltMode;III)I
    .locals 5

    add-int/lit8 p2, p2, 0x1

    .line 58
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->cache:Lio/github/jaredmdobson/concentus/PulseCache;

    iget-object v0, v0, Lio/github/jaredmdobson/concentus/PulseCache;->bits:[S

    .line 59
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltMode;->cache:Lio/github/jaredmdobson/concentus/PulseCache;

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/PulseCache;->index:[S

    iget p0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int p2, p2, p0

    add-int/2addr p2, p1

    aget-short p0, v1, p2

    .line 62
    aget-short p1, v0, p0

    const/4 p2, -0x1

    add-int/2addr p3, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    add-int v3, v2, p1

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v3, v3, 0x1

    add-int v4, p0, v3

    .line 67
    aget-short v4, v0, v4

    if-lt v4, p3, :cond_0

    move p1, v3

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int p2, p0, v2

    .line 73
    aget-short p2, v0, p2

    :goto_2
    sub-int p2, p3, p2

    add-int/2addr p0, p1

    aget-short p0, v0, p0

    sub-int/2addr p0, p3

    if-gt p2, p0, :cond_3

    return v2

    :cond_3
    return p1
.end method

.method static compute_allocation(Lio/github/jaredmdobson/concentus/CeltMode;II[I[IILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;ILio/github/jaredmdobson/concentus/BoxedValueInt;[I[I[IIILio/github/jaredmdobson/concentus/EntropyCoder;III)I
    .locals 30

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v0, p13

    const/4 v4, 0x0

    move/from16 v5, p8

    .line 358
    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v5

    .line 359
    iget v6, v1, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    const/16 v7, 0x8

    if-lt v5, v7, :cond_0

    const/16 v11, 0x8

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    sub-int/2addr v5, v11

    const/4 v8, 0x2

    if-ne v0, v8, :cond_3

    .line 367
    sget-object v9, Lio/github/jaredmdobson/concentus/Rate;->LOG2_FRAC_TABLE:[B

    sub-int v10, v3, v2

    aget-byte v9, v9, v10

    if-le v9, v5, :cond_1

    goto :goto_2

    :cond_1
    sub-int/2addr v5, v9

    if-lt v5, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    sub-int/2addr v5, v7

    move v15, v7

    move v13, v9

    move v9, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v9, v5

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 377
    :goto_3
    new-array v5, v6, [I

    .line 378
    new-array v7, v6, [I

    move-object v10, v7

    .line 379
    new-array v7, v6, [I

    .line 380
    new-array v12, v6, [I

    move v14, v2

    const/16 p8, 0x2

    :goto_4
    if-ge v14, v3, :cond_5

    shl-int/lit8 v4, v0, 0x3

    const/16 v17, 0x1

    .line 384
    iget-object v8, v1, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    add-int/lit8 v18, v14, 0x1

    aget-short v8, v8, v18

    iget-object v0, v1, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v0, v0, v14

    sub-int/2addr v8, v0

    mul-int/lit8 v8, v8, 0x3

    shl-int v0, v8, p14

    shl-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x4

    invoke-static {v4, v0}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v0

    aput v0, v7, v14

    .line 386
    iget-object v0, v1, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v0, v0, v18

    iget-object v8, v1, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v8, v8, v14

    sub-int/2addr v0, v8

    mul-int v0, v0, p13

    add-int/lit8 v8, p5, -0x5

    sub-int v8, v8, p14

    mul-int v0, v0, v8

    sub-int v8, v3, v14

    add-int/lit8 v8, v8, -0x1

    mul-int v0, v0, v8

    add-int/lit8 v8, p14, 0x3

    shl-int v8, v17, v8

    mul-int v0, v0, v8

    shr-int/lit8 v0, v0, 0x6

    aput v0, v12, v14

    .line 390
    iget-object v0, v1, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v0, v0, v18

    iget-object v8, v1, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v8, v8, v14

    sub-int/2addr v0, v8

    shl-int v0, v0, p14

    const/4 v8, 0x1

    if-ne v0, v8, :cond_4

    .line 391
    aget v0, v12, v14

    sub-int/2addr v0, v4

    aput v0, v12, v14

    :cond_4
    move/from16 v0, p13

    move/from16 v14, v18

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    const/4 v8, 0x1

    .line 395
    iget v0, v1, Lio/github/jaredmdobson/concentus/CeltMode;->nbAllocVectors:I

    sub-int/2addr v0, v8

    const/4 v4, 0x1

    :goto_5
    add-int v14, v4, v0

    shr-int/2addr v14, v8

    move/from16 p5, v0

    move v0, v3

    const/4 v8, 0x0

    const/16 v18, 0x0

    :goto_6
    add-int/lit8 v19, v0, -0x1

    if-le v0, v2, :cond_a

    move/from16 v20, v0

    .line 402
    iget-object v0, v1, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v0, v0, v20

    move/from16 v20, v0

    iget-object v0, v1, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v0, v0, v19

    sub-int v0, v20, v0

    mul-int v0, v0, p13

    move/from16 v20, v0

    .line 403
    iget-object v0, v1, Lio/github/jaredmdobson/concentus/CeltMode;->allocVectors:[S

    mul-int v21, v14, v6

    add-int v21, v21, v19

    aget-short v0, v0, v21

    mul-int v0, v0, v20

    shl-int v0, v0, p14

    shr-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_6

    .line 406
    aget v20, v12, v19

    add-int v0, v0, v20

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v0

    .line 409
    :cond_6
    aget v2, p3, v19

    add-int/2addr v0, v2

    .line 411
    aget v2, v7, v19

    if-ge v0, v2, :cond_8

    if-eqz v18, :cond_7

    goto :goto_7

    :cond_7
    shl-int/lit8 v2, p13, 0x3

    if-lt v0, v2, :cond_9

    add-int/2addr v8, v2

    goto :goto_8

    .line 414
    :cond_8
    :goto_7
    aget v2, p4, v19

    invoke-static {v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v0

    add-int/2addr v8, v0

    const/16 v18, 0x1

    :cond_9
    :goto_8
    move/from16 v2, p1

    move/from16 v0, v19

    goto :goto_6

    :cond_a
    if-le v8, v9, :cond_b

    add-int/lit8 v14, v14, -0x1

    move v0, v14

    goto :goto_9

    :cond_b
    add-int/lit8 v4, v14, 0x1

    move/from16 v0, p5

    :goto_9
    move v2, v4

    if-le v2, v0, :cond_12

    add-int/lit8 v0, v2, -0x1

    move/from16 v4, p1

    move v8, v4

    :goto_a
    if-ge v4, v3, :cond_11

    .line 432
    iget-object v14, v1, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    add-int/lit8 v17, v4, 0x1

    aget-short v14, v14, v17

    move/from16 p5, v0

    iget-object v0, v1, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v0, v0, v4

    sub-int/2addr v14, v0

    mul-int v0, p13, v14

    .line 433
    iget-object v14, v1, Lio/github/jaredmdobson/concentus/CeltMode;->allocVectors:[S

    mul-int v18, p5, v6

    add-int v18, v18, v4

    aget-short v14, v14, v18

    mul-int v14, v14, v0

    shl-int v14, v14, p14

    shr-int/lit8 v14, v14, 0x2

    move/from16 v18, v0

    .line 434
    iget v0, v1, Lio/github/jaredmdobson/concentus/CeltMode;->nbAllocVectors:I

    if-lt v2, v0, :cond_c

    aget v0, p4, v4

    goto :goto_b

    :cond_c
    iget-object v0, v1, Lio/github/jaredmdobson/concentus/CeltMode;->allocVectors:[S

    mul-int v19, v2, v6

    add-int v19, v19, v4

    aget-short v0, v0, v19

    mul-int v0, v0, v18

    shl-int v0, v0, p14

    shr-int/lit8 v0, v0, 0x2

    :goto_b
    if-lez v14, :cond_d

    .line 437
    aget v18, v12, v4

    add-int v14, v14, v18

    move/from16 v18, v0

    const/4 v0, 0x0

    invoke-static {v0, v14}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v14

    goto :goto_c

    :cond_d
    move/from16 v18, v0

    const/4 v0, 0x0

    :goto_c
    if-lez v18, :cond_e

    .line 440
    aget v16, v12, v4

    add-int v1, v18, v16

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v1

    move v0, v1

    goto :goto_d

    :cond_e
    move/from16 v0, v18

    :goto_d
    if-lez p5, :cond_f

    .line 443
    aget v1, p3, v4

    add-int/2addr v14, v1

    .line 445
    :cond_f
    aget v1, p3, v4

    add-int/2addr v0, v1

    if-lez v1, :cond_10

    move v8, v4

    :cond_10
    sub-int/2addr v0, v14

    const/4 v1, 0x0

    .line 449
    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v0

    .line 450
    aput v14, v5, v4

    .line 451
    aput v0, v10, v4

    move-object/from16 v1, p0

    move/from16 v0, p5

    move/from16 v4, v17

    goto :goto_a

    :cond_11
    move/from16 v2, p1

    move-object/from16 v12, p6

    move-object/from16 v14, p7

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    move/from16 v19, p13

    move/from16 v20, p14

    move-object/from16 v21, p15

    move/from16 v22, p16

    move/from16 v23, p17

    move/from16 v24, p18

    move v4, v8

    move-object v6, v10

    move-object/from16 v8, p4

    move-object/from16 v10, p9

    .line 454
    invoke-static/range {v1 .. v24}, Lio/github/jaredmdobson/concentus/Rate;->interp_bits2pulses(Lio/github/jaredmdobson/concentus/CeltMode;III[I[I[I[IILio/github/jaredmdobson/concentus/BoxedValueInt;ILio/github/jaredmdobson/concentus/BoxedValueInt;ILio/github/jaredmdobson/concentus/BoxedValueInt;I[I[I[IIILio/github/jaredmdobson/concentus/EntropyCoder;III)I

    move-result v0

    return v0

    :cond_12
    move/from16 v25, v2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v25

    const/4 v8, 0x1

    goto/16 :goto_5
.end method

.method static get_pulses(I)I
    .locals 2

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    return p0

    :cond_0
    and-int/lit8 v1, p0, 0x7

    add-int/2addr v1, v0

    shr-int/lit8 p0, p0, 0x3

    add-int/lit8 p0, p0, -0x1

    shl-int p0, v1, p0

    return p0
.end method

.method static interp_bits2pulses(Lio/github/jaredmdobson/concentus/CeltMode;III[I[I[I[IILio/github/jaredmdobson/concentus/BoxedValueInt;ILio/github/jaredmdobson/concentus/BoxedValueInt;ILio/github/jaredmdobson/concentus/BoxedValueInt;I[I[I[IIILio/github/jaredmdobson/concentus/EntropyCoder;III)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, p11

    move-object/from16 v4, p13

    move/from16 v5, p18

    move-object/from16 v6, p20

    shl-int/lit8 v7, v5, 0x3

    const/4 v9, 0x1

    if-le v5, v9, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    shl-int/lit8 v11, p19, 0x3

    const/16 v12, 0x40

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    const/4 v15, 0x6

    if-ge v13, v15, :cond_6

    add-int v16, v14, v12

    shr-int/lit8 v16, v16, 0x1

    move/from16 v15, p2

    const/4 v9, 0x0

    const/16 v17, 0x6

    const/16 v19, 0x0

    :goto_2
    add-int/lit8 v20, v15, -0x1

    if-le v15, v1, :cond_4

    .line 111
    aget v15, p4, v20

    aget v21, p5, v20

    mul-int v21, v21, v16

    shr-int/lit8 v21, v21, 0x6

    add-int v15, v15, v21

    .line 112
    aget v8, p6, v20

    if-ge v15, v8, :cond_2

    if-eqz v19, :cond_1

    goto :goto_3

    :cond_1
    if-lt v15, v7, :cond_3

    add-int/2addr v9, v7

    goto :goto_4

    .line 115
    :cond_2
    :goto_3
    aget v8, p7, v20

    invoke-static {v15, v8}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v8

    add-int/2addr v9, v8

    const/16 v19, 0x1

    :cond_3
    :goto_4
    move/from16 v15, v20

    goto :goto_2

    :cond_4
    if-le v9, v2, :cond_5

    move/from16 v12, v16

    goto :goto_5

    :cond_5
    move/from16 v14, v16

    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    const/16 v17, 0x6

    move/from16 v12, p2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_6
    add-int/lit8 v13, v12, -0x1

    if-le v12, v1, :cond_9

    .line 130
    aget v12, p4, v13

    aget v15, p5, v13

    mul-int v15, v15, v14

    shr-int/lit8 v15, v15, 0x6

    add-int/2addr v12, v15

    .line 131
    aget v15, p6, v13

    if-ge v12, v15, :cond_8

    if-nez v8, :cond_8

    if-lt v12, v7, :cond_7

    move v12, v7

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    goto :goto_7

    :cond_8
    const/4 v8, 0x1

    .line 142
    :goto_7
    aget v15, p7, v13

    invoke-static {v12, v15}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v12

    .line 143
    aput v12, p15, v13

    add-int/2addr v9, v12

    move v12, v13

    goto :goto_6

    :cond_9
    move/from16 v12, p2

    move/from16 v8, p12

    :goto_8
    add-int/lit8 v13, v12, -0x1

    move/from16 v14, p3

    if-gt v13, v14, :cond_a

    add-int v2, v2, p10

    move/from16 v16, v8

    move/from16 p12, v9

    goto/16 :goto_c

    :cond_a
    sub-int v15, v2, v9

    .line 168
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v2, v2, v12

    move/from16 p12, v2

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v2, v2, v1

    sub-int v2, p12, v2

    invoke-static {v15, v2}, Lio/github/jaredmdobson/concentus/Inlines;->celt_udiv(II)I

    move-result v2

    move/from16 p12, v2

    .line 169
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v2, v2, v12

    move/from16 v16, v2

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v2, v2, v1

    sub-int v2, v16, v2

    mul-int v2, v2, p12

    sub-int/2addr v15, v2

    .line 170
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v2, v2, v13

    move/from16 v16, v2

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v2, v2, v1

    sub-int v2, v16, v2

    sub-int/2addr v15, v2

    const/4 v2, 0x0

    invoke-static {v15, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v15

    .line 171
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v2, v2, v12

    move/from16 v16, v2

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v2, v2, v13

    sub-int v2, v16, v2

    .line 172
    aget v16, p15, v13

    mul-int v17, p12, v2

    add-int v16, v16, v17

    add-int v15, v16, v15

    move/from16 p12, v2

    .line 176
    aget v2, p6, v13

    move/from16 v16, v8

    add-int/lit8 v8, v7, 0x8

    invoke-static {v2, v8}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v2

    if-lt v15, v2, :cond_29

    if-eqz p21, :cond_f

    add-int/lit8 v2, v1, 0x2

    if-le v12, v2, :cond_e

    move/from16 v2, p22

    if-ge v13, v2, :cond_b

    const/4 v8, 0x7

    goto :goto_9

    :cond_b
    const/16 v8, 0x9

    :goto_9
    mul-int v8, v8, p12

    shl-int v8, v8, p19

    shl-int/lit8 v8, v8, 0x3

    shr-int/lit8 v8, v8, 0x4

    if-le v15, v8, :cond_c

    move/from16 v8, p23

    if-gt v13, v8, :cond_d

    goto :goto_a

    :cond_c
    move/from16 v8, p23

    :cond_d
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 187
    invoke-virtual {v6, v2, v8}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    move/from16 p12, v9

    goto/16 :goto_20

    :cond_e
    :goto_a
    const/4 v8, 0x1

    .line 184
    invoke-virtual {v6, v8, v8}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    move/from16 p12, v9

    goto :goto_b

    :cond_f
    move/from16 p12, v9

    const-wide/16 v8, 0x1

    .line 188
    invoke-virtual {v6, v8, v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v2

    if-eqz v2, :cond_28

    :goto_b
    move/from16 v2, p8

    :goto_c
    if-le v12, v1, :cond_10

    const/4 v8, 0x1

    goto :goto_d

    :cond_10
    const/4 v8, 0x0

    .line 211
    :goto_d
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-lez v16, :cond_12

    if-eqz p21, :cond_11

    .line 215
    iget v8, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v8, v12}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v8

    iput v8, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 216
    iget v8, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    sub-int/2addr v8, v1

    int-to-long v8, v8

    add-int/lit8 v13, v12, 0x1

    sub-int/2addr v13, v1

    int-to-long v13, v13

    invoke-virtual {v6, v8, v9, v13, v14}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_uint(JJ)V

    goto :goto_e

    :cond_11
    add-int/lit8 v8, v12, 0x1

    sub-int/2addr v8, v1

    int-to-long v8, v8

    .line 218
    invoke-virtual {v6, v8, v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_uint(J)J

    move-result-wide v8

    long-to-int v9, v8

    add-int v8, v1, v9

    iput v8, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    goto :goto_e

    :cond_12
    const/4 v8, 0x0

    .line 221
    iput v8, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 224
    :goto_e
    iget v8, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-gt v8, v1, :cond_13

    add-int v2, v2, p14

    move v8, v2

    const/4 v2, 0x0

    goto :goto_f

    :cond_13
    move v8, v2

    move/from16 v2, p14

    :goto_f
    if-lez v2, :cond_15

    if-eqz p21, :cond_14

    .line 230
    iget v2, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v9, 0x1

    invoke-virtual {v6, v2, v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    goto :goto_10

    :cond_14
    const-wide/16 v13, 0x1

    .line 232
    invoke-virtual {v6, v13, v14}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v2

    iput v2, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    goto :goto_10

    :cond_15
    const/4 v2, 0x0

    .line 235
    iput v2, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    :goto_10
    sub-int v8, v8, p12

    .line 240
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v2, v2, v12

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v6, v6, v1

    sub-int/2addr v2, v6

    invoke-static {v8, v2}, Lio/github/jaredmdobson/concentus/Inlines;->celt_udiv(II)I

    move-result v2

    .line 241
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v6, v6, v12

    iget-object v9, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v9, v9, v1

    sub-int/2addr v6, v9

    mul-int v6, v6, v2

    sub-int/2addr v8, v6

    move v6, v1

    :goto_11
    if-ge v6, v12, :cond_16

    .line 243
    aget v9, p15, v6

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    add-int/lit8 v14, v6, 0x1

    aget-short v13, v13, v14

    iget-object v15, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v15, v15, v6

    sub-int/2addr v13, v15

    mul-int v13, v13, v2

    add-int/2addr v9, v13

    aput v9, p15, v6

    move v6, v14

    goto :goto_11

    :cond_16
    move v2, v1

    :goto_12
    if-ge v2, v12, :cond_17

    .line 246
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    add-int/lit8 v9, v2, 0x1

    aget-short v6, v6, v9

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v13, v13, v2

    sub-int/2addr v6, v13

    invoke-static {v8, v6}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v6

    .line 247
    aget v13, p15, v2

    add-int/2addr v13, v6

    aput v13, p15, v2

    sub-int/2addr v8, v6

    move v2, v9

    goto :goto_12

    :cond_17
    const/4 v2, 0x0

    :goto_13
    if-ge v1, v12, :cond_24

    .line 259
    aget v6, p15, v1

    if-ltz v6, :cond_18

    const/4 v6, 0x1

    goto :goto_14

    :cond_18
    const/4 v6, 0x0

    :goto_14
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 260
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    add-int/lit8 v8, v1, 0x1

    aget-short v6, v6, v8

    iget-object v9, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v9, v9, v1

    sub-int/2addr v6, v9

    shl-int v6, v6, p19

    .line 262
    aget v9, p15, v1

    add-int/2addr v9, v2

    const/4 v14, 0x1

    if-le v6, v14, :cond_1f

    .line 265
    aget v14, p7, v1

    sub-int v14, v9, v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v14

    sub-int/2addr v9, v14

    .line 266
    aput v9, p15, v1

    mul-int v9, v5, v6

    const/4 v15, 0x2

    if-ne v5, v15, :cond_19

    if-le v6, v15, :cond_19

    .line 269
    iget v13, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-nez v13, :cond_19

    iget v13, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-ge v1, v13, :cond_19

    const/4 v13, 0x1

    goto :goto_15

    :cond_19
    const/4 v13, 0x0

    :goto_15
    add-int/2addr v9, v13

    .line 271
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/CeltMode;->logN:[S

    aget-short v13, v13, v1

    add-int/2addr v13, v11

    mul-int v13, v13, v9

    shr-int/lit8 v16, v13, 0x1

    mul-int/lit8 v17, v9, 0x15

    sub-int v16, v16, v17

    if-ne v6, v15, :cond_1a

    shl-int/lit8 v6, v9, 0x3

    shr-int/2addr v6, v15

    add-int v16, v16, v6

    .line 284
    :cond_1a
    aget v6, p15, v1

    add-int v15, v6, v16

    mul-int/lit8 v17, v9, 0x2

    shl-int/lit8 v0, v17, 0x3

    if-ge v15, v0, :cond_1b

    shr-int/lit8 v0, v13, 0x2

    :goto_16
    add-int v16, v16, v0

    goto :goto_17

    :cond_1b
    add-int v0, v6, v16

    mul-int/lit8 v15, v9, 0x3

    shl-int/lit8 v15, v15, 0x3

    if-ge v0, v15, :cond_1c

    shr-int/lit8 v0, v13, 0x3

    goto :goto_16

    :cond_1c
    :goto_17
    add-int v6, v6, v16

    shl-int/lit8 v0, v9, 0x2

    add-int/2addr v6, v0

    const/4 v15, 0x0

    .line 291
    invoke-static {v15, v6}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v0

    aput v0, p16, v1

    .line 292
    invoke-static {v0, v9}, Lio/github/jaredmdobson/concentus/Inlines;->celt_udiv(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    aput v0, p16, v1

    mul-int v0, v0, v5

    .line 295
    aget v6, p15, v1

    shr-int/lit8 v13, v6, 0x3

    if-le v0, v13, :cond_1d

    shr-int v0, v6, v10

    shr-int/lit8 v0, v0, 0x3

    .line 296
    aput v0, p16, v1

    .line 300
    :cond_1d
    aget v0, p16, v1

    const/16 v6, 0x8

    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v0

    aput v0, p16, v1

    shl-int/lit8 v6, v9, 0x3

    mul-int v0, v0, v6

    .line 304
    aget v6, p15, v1

    add-int v6, v6, v16

    if-lt v0, v6, :cond_1e

    const/4 v0, 0x1

    goto :goto_18

    :cond_1e
    const/4 v0, 0x0

    :goto_18
    aput v0, p17, v1

    .line 307
    aget v0, p15, v1

    aget v6, p16, v1

    mul-int v6, v6, v5

    shl-int/lit8 v6, v6, 0x3

    sub-int/2addr v0, v6

    aput v0, p15, v1

    goto :goto_19

    :cond_1f
    sub-int v0, v9, v7

    const/4 v15, 0x0

    .line 311
    invoke-static {v15, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v14

    sub-int/2addr v9, v14

    .line 312
    aput v9, p15, v1

    .line 313
    aput v15, p16, v1

    const/16 v18, 0x1

    .line 314
    aput v18, p17, v1

    :goto_19
    if-lez v14, :cond_21

    add-int/lit8 v0, v10, 0x3

    shr-int v0, v14, v0

    .line 323
    aget v6, p16, v1

    const/16 v9, 0x8

    rsub-int/lit8 v13, v6, 0x8

    invoke-static {v0, v13}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v0

    .line 324
    aget v6, p16, v1

    add-int/2addr v6, v0

    aput v6, p16, v1

    mul-int v0, v0, v5

    shl-int/lit8 v0, v0, 0x3

    sub-int v2, v14, v2

    if-lt v0, v2, :cond_20

    const/4 v2, 0x1

    goto :goto_1a

    :cond_20
    const/4 v2, 0x0

    .line 326
    :goto_1a
    aput v2, p17, v1

    sub-int/2addr v14, v0

    :cond_21
    move v2, v14

    .line 331
    aget v0, p15, v1

    if-ltz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_1b

    :cond_22
    const/4 v0, 0x0

    :goto_1b
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 332
    aget v0, p16, v1

    if-ltz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_1c

    :cond_23
    const/4 v0, 0x0

    :goto_1c
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    move-object/from16 v0, p0

    move v1, v8

    goto/16 :goto_13

    :cond_24
    move-object/from16 v0, p9

    .line 336
    iput v2, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move/from16 v2, p2

    :goto_1d
    if-ge v1, v2, :cond_27

    .line 340
    aget v0, p15, v1

    shr-int/2addr v0, v10

    shr-int/lit8 v0, v0, 0x3

    aput v0, p16, v1

    mul-int v0, v0, v5

    shl-int/lit8 v0, v0, 0x3

    .line 341
    aget v3, p15, v1

    if-ne v0, v3, :cond_25

    const/4 v0, 0x1

    goto :goto_1e

    :cond_25
    const/4 v0, 0x0

    :goto_1e
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v21, 0x0

    .line 342
    aput v21, p15, v1

    .line 343
    aget v0, p16, v1

    const/4 v8, 0x1

    if-ge v0, v8, :cond_26

    const/4 v0, 0x1

    goto :goto_1f

    :cond_26
    const/4 v0, 0x0

    :goto_1f
    aput v0, p17, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_27
    return v12

    :cond_28
    const/4 v8, 0x1

    :goto_20
    move/from16 v2, p2

    move-object/from16 v0, p9

    add-int/lit8 v9, p12, 0x8

    add-int/lit8 v15, v15, -0x8

    goto :goto_21

    :cond_29
    move/from16 v2, p2

    move-object/from16 v0, p9

    move/from16 p12, v9

    const/4 v8, 0x1

    .line 196
    :goto_21
    aget v17, p15, v13

    add-int v17, v17, v16

    sub-int v9, v9, v17

    if-lez v16, :cond_2a

    .line 198
    sget-object v16, Lio/github/jaredmdobson/concentus/Rate;->LOG2_FRAC_TABLE:[B

    sub-int v17, v13, v1

    aget-byte v16, v16, v17

    :cond_2a
    add-int v9, v9, v16

    if-lt v15, v7, :cond_2b

    add-int/2addr v9, v7

    .line 204
    aput v7, p15, v13

    const/16 v21, 0x0

    goto :goto_22

    :cond_2b
    const/16 v21, 0x0

    .line 207
    aput v21, p15, v13

    :goto_22
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v2, p8

    move/from16 v8, v16

    goto/16 :goto_8
.end method

.method static pulses2bits(Lio/github/jaredmdobson/concentus/CeltMode;III)I
    .locals 2

    add-int/lit8 p2, p2, 0x1

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_0
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->cache:Lio/github/jaredmdobson/concentus/PulseCache;

    iget-object v0, v0, Lio/github/jaredmdobson/concentus/PulseCache;->bits:[S

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltMode;->cache:Lio/github/jaredmdobson/concentus/PulseCache;

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/PulseCache;->index:[S

    iget p0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int p2, p2, p0

    add-int/2addr p2, p1

    aget-short p0, v1, p2

    add-int/2addr p0, p3

    aget-short p0, v0, p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
