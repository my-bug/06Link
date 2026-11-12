.class Lio/github/jaredmdobson/concentus/CeltCommon;
.super Ljava/lang/Object;
.source "CeltCommon.java"


# static fields
.field private static final gains:[[S

.field private static final inv_table:[S

.field private static final tf_select_table:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x80

    .line 40
    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/jaredmdobson/concentus/CeltCommon;->inv_table:[S

    const/4 v0, 0x3

    .line 1152
    new-array v1, v0, [S

    fill-array-data v1, :array_1

    new-array v2, v0, [S

    fill-array-data v2, :array_2

    new-array v3, v0, [S

    fill-array-data v3, :array_3

    new-array v4, v0, [[S

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v2, 0x2

    aput-object v3, v4, v2

    sput-object v4, Lio/github/jaredmdobson/concentus/CeltCommon;->gains:[[S

    const/16 v3, 0x8

    .line 1217
    new-array v4, v3, [B

    fill-array-data v4, :array_4

    new-array v6, v3, [B

    fill-array-data v6, :array_5

    new-array v7, v3, [B

    fill-array-data v7, :array_6

    new-array v3, v3, [B

    fill-array-data v3, :array_7

    const/4 v8, 0x4

    new-array v8, v8, [[B

    aput-object v4, v8, v5

    aput-object v6, v8, v1

    aput-object v7, v8, v2

    aput-object v3, v8, v0

    sput-object v8, Lio/github/jaredmdobson/concentus/CeltCommon;->tf_select_table:[[B

    return-void

    :array_0
    .array-data 2
        0xffs
        0xffs
        0x9cs
        0x6es
        0x56s
        0x46s
        0x3bs
        0x33s
        0x2ds
        0x28s
        0x25s
        0x21s
        0x1fs
        0x1cs
        0x1as
        0x19s
        0x17s
        0x16s
        0x15s
        0x14s
        0x13s
        0x12s
        0x11s
        0x10s
        0x10s
        0xfs
        0xfs
        0xes
        0xds
        0xds
        0xcs
        0xcs
        0xcs
        0xcs
        0xbs
        0xbs
        0xbs
        0xas
        0xas
        0xas
        0x9s
        0x9s
        0x9s
        0x9s
        0x9s
        0x9s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x3s
        0x3s
        0x3s
        0x3s
        0x3s
        0x3s
        0x3s
        0x3s
        0x3s
        0x3s
        0x3s
        0x3s
        0x3s
        0x3s
        0x3s
        0x3s
        0x3s
        0x2s
    .end array-data

    :array_1
    .array-data 2
        0x2740s
        0x1bc8s
        0x1098s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x3b60s
        0x2250s
        0x0s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x6660s
        0xcd0s
        0x0s
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        -0x1t
        0x0t
        -0x2t
        0x1t
        0x0t
        0x1t
        -0x1t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        -0x2t
        0x0t
        -0x3t
        0x2t
        0x0t
        0x1t
        -0x1t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        -0x2t
        0x0t
        -0x3t
        0x3t
        0x0t
        0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alloc_trim_analysis(Lio/github/jaredmdobson/concentus/CeltMode;[[I[[IIIILio/github/jaredmdobson/concentus/AnalysisInfo;Lio/github/jaredmdobson/concentus/BoxedValueInt;III)I
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    const/16 v4, 0x400

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v8, 0x2

    if-ne v1, v8, :cond_2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x12

    const/4 v12, 0x1

    if-ge v9, v5, :cond_0

    .line 654
    aget-object v13, p1, v6

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v14, v14, v9

    shl-int v14, v14, p4

    aget-object v12, p1, v12

    iget-object v15, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v15, v15, v9

    shl-int v15, v15, p4

    const/16 v16, 0x500

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    add-int/lit8 v17, v9, 0x1

    aget-short v7, v7, v17

    const/16 v18, 0x0

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v6, v6, v9

    sub-int/2addr v7, v6

    shl-int v6, v7, p4

    invoke-static {v13, v14, v12, v15, v6}, Lio/github/jaredmdobson/concentus/Kernels;->celt_inner_prod([II[III)I

    move-result v6

    .line 656
    invoke-static {v6, v11}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v6

    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v6

    invoke-static {v10, v6}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v10

    move/from16 v9, v17

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const/16 v16, 0x500

    const/16 v18, 0x0

    const/16 v6, 0x1000

    .line 658
    invoke-static {v6, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v6

    .line 659
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->ABS32(I)I

    move-result v6

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v6

    move/from16 v7, p9

    move v10, v6

    const/16 v9, 0x8

    :goto_1
    if-ge v9, v7, :cond_1

    .line 663
    aget-object v13, p1, v18

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v14, v14, v9

    shl-int v14, v14, p4

    aget-object v15, p1, v12

    iget-object v12, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v12, v12, v9

    shl-int v12, v12, p4

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    add-int/lit8 v19, v9, 0x1

    aget-short v5, v5, v19

    iget-object v8, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v8, v8, v9

    sub-int/2addr v5, v8

    shl-int v5, v5, p4

    invoke-static {v13, v14, v15, v12, v5}, Lio/github/jaredmdobson/concentus/Kernels;->celt_inner_prod([II[III)I

    move-result v5

    .line 665
    invoke-static {v5, v11}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v5

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v5

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->ABS16(S)S

    move-result v5

    invoke-static {v10, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v10

    move/from16 v9, v19

    const/16 v5, 0x8

    const/4 v8, 0x2

    const/4 v12, 0x1

    goto :goto_1

    .line 667
    :cond_1
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->ABS32(I)I

    move-result v0

    invoke-static {v4, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v0

    .line 670
    invoke-static {v6, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v5

    const v6, 0x100419

    sub-int v5, v6, v5

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->celt_log2(I)I

    move-result v5

    .line 672
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v7

    invoke-static {v0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v0

    sub-int/2addr v6, v0

    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->celt_log2(I)I

    move-result v0

    invoke-static {v7, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v0

    add-int/lit16 v5, v5, -0x1800

    const/4 v6, 0x2

    .line 674
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v5

    add-int/lit16 v0, v0, -0x1800

    .line 675
    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v0

    const/16 v6, 0x6000

    .line 677
    invoke-static {v6, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v5

    const/16 v6, -0x400

    invoke-static {v6, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v5

    add-int v7, v16, v5

    .line 678
    iget v5, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/lit8 v5, v5, 0x40

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v0

    rsub-int/lit8 v6, v0, 0x0

    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v0

    iput v0, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    goto :goto_2

    :cond_2
    const/16 v16, 0x500

    const/16 v18, 0x0

    const/16 v7, 0x500

    :goto_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x0

    :goto_4
    add-int/lit8 v6, p3, -0x1

    if-ge v5, v6, :cond_3

    .line 685
    aget-object v6, p2, v3

    aget v6, v6, v5

    mul-int/lit8 v8, v5, 0x2

    const/16 v20, 0x2

    add-int/lit8 v8, v8, 0x2

    sub-int v8, v8, p3

    mul-int v6, v6, v8

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_5

    mul-int v1, v1, v6

    .line 688
    div-int/2addr v0, v1

    const/16 v1, 0x200

    .line 690
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->NEG16(S)S

    move-result v3

    add-int/2addr v0, v4

    const/4 v6, 0x2

    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v0

    const/4 v4, 0x6

    div-int/2addr v0, v4

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v0

    invoke-static {v3, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v0

    sub-int/2addr v7, v0

    move/from16 v5, p10

    .line 691
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v0

    sub-int/2addr v7, v0

    move/from16 v8, p8

    .line 692
    invoke-static {v8, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v7, v0

    .line 693
    iget-boolean v0, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->enabled:Z

    if-eqz v0, :cond_4

    iget v0, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->valid:I

    if-eqz v0, :cond_4

    .line 694
    iget v0, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality_slope:F

    const v2, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v2

    const/high16 v2, 0x44000000    # 512.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v0

    const/16 v1, -0x200

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v0

    sub-int/2addr v7, v0

    :cond_4
    const/16 v9, 0x8

    .line 697
    invoke-static {v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v0

    const/16 v1, 0xa

    .line 698
    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v0

    const/4 v10, 0x0

    invoke-static {v10, v0}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v0

    return v0

    :cond_5
    move/from16 v8, p8

    move/from16 v5, p10

    goto :goto_3
.end method

.method static celt_plc_pitch_search([[II)I
    .locals 6

    .line 1092
    new-instance v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/16 v0, 0x400

    .line 1093
    new-array v0, v0, [I

    const/16 v1, 0x800

    .line 1094
    invoke-static {p0, v0, v1, p1}, Lio/github/jaredmdobson/concentus/Pitch;->pitch_downsample([[I[III)V

    const/16 v3, 0x530

    const/16 v4, 0x26c

    const/16 v1, 0x168

    move-object v2, v0

    .line 1096
    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/Pitch;->pitch_search([II[IIILio/github/jaredmdobson/concentus/BoxedValueInt;)V

    .line 1099
    iget p0, v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    rsub-int p0, p0, 0x2d0

    iput p0, v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 1101
    iget p0, v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return p0
.end method

.method static celt_preemphasis([SI[IIIII[ILio/github/jaredmdobson/concentus/BoxedValueInt;I)V
    .locals 14

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p6

    move-object/from16 v4, p8

    const/4 v5, 0x0

    .line 358
    aget v6, p7, v5

    .line 359
    iget v7, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v8, 0x1

    .line 362
    aget v9, p7, v8

    const/4 v10, 0x3

    const/16 v11, 0xc

    if-nez v9, :cond_1

    if-ne v3, v8, :cond_1

    if-nez p9, :cond_1

    :goto_0
    if-ge v5, v2, :cond_0

    mul-int v3, p5, v5

    add-int/2addr v3, p1

    .line 364
    aget-short v3, p0, v3

    add-int v8, v1, v5

    .line 366
    invoke-static {v3, v11}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v9

    sub-int/2addr v9, v7

    aput v9, v0, v8

    .line 367
    invoke-static {v6, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    invoke-static {v3, v10}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 369
    :cond_0
    iput v7, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void

    .line 373
    :cond_1
    div-int v9, v2, v3

    if-eq v3, v8, :cond_2

    .line 375
    invoke-static {v0, v5, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSetWithOffset([IIII)V

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_3

    mul-int v12, v8, v3

    add-int/2addr v12, v1

    mul-int v13, p5, v8

    add-int/2addr v13, p1

    .line 378
    aget-short v13, p0, v13

    aput v13, v0, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v5, v2, :cond_4

    add-int p0, v1, v5

    .line 383
    aget p1, v0, p0

    .line 385
    invoke-static {p1, v11}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v3

    sub-int/2addr v3, v7

    aput v3, v0, p0

    .line 386
    invoke-static {v6, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p0

    invoke-static {p0, v10}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 389
    :cond_4
    iput v7, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method

.method static celt_preemphasis([S[IIIII[ILio/github/jaredmdobson/concentus/BoxedValueInt;I)V
    .locals 7

    const/4 v0, 0x0

    .line 399
    aget v1, p6, v0

    .line 400
    iget v2, p7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v3, 0x1

    .line 403
    aget p6, p6, v3

    const/4 v4, 0x3

    const/16 v5, 0xc

    if-nez p6, :cond_1

    if-ne p5, v3, :cond_1

    if-nez p8, :cond_1

    :goto_0
    if-ge v0, p3, :cond_0

    mul-int p5, p4, v0

    .line 406
    aget-short p5, p0, p5

    add-int p6, p2, v0

    .line 408
    invoke-static {p5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result p8

    sub-int/2addr p8, v2

    aput p8, p1, p6

    .line 409
    invoke-static {v1, p5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p5

    invoke-static {p5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    iput v2, p7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void

    .line 415
    :cond_1
    div-int p6, p3, p5

    if-eq p5, v3, :cond_2

    .line 417
    invoke-static {p1, v0, p2, p3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSetWithOffset([IIII)V

    :cond_2
    const/4 p8, 0x0

    :goto_1
    if-ge p8, p6, :cond_3

    mul-int v3, p8, p5

    add-int/2addr v3, p2

    mul-int v6, p4, p8

    .line 420
    aget-short v6, p0, v6

    aput v6, p1, v3

    add-int/lit8 p8, p8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v0, p3, :cond_4

    add-int p0, p2, v0

    .line 425
    aget p4, p1, p0

    .line 427
    invoke-static {p4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result p5

    sub-int/2addr p5, v2

    aput p5, p1, p0

    .line 428
    invoke-static {v1, p4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p0

    invoke-static {p0, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 431
    :cond_4
    iput v2, p7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method

.method static celt_synthesis(Lio/github/jaredmdobson/concentus/CeltMode;[[I[[I[I[IIIIIIIII)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v11, p8

    .line 996
    iget v12, v0, Lio/github/jaredmdobson/concentus/CeltMode;->overlap:I

    .line 997
    iget v13, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    .line 998
    iget v2, v0, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    shl-int v14, v2, p10

    .line 999
    new-array v2, v14, [I

    const/4 v15, 0x1

    shl-int v8, v15, p10

    if-eqz p9, :cond_0

    .line 1007
    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    .line 1008
    iget v4, v0, Lio/github/jaredmdobson/concentus/CeltMode;->maxLM:I

    move/from16 v16, v3

    move v3, v8

    goto :goto_0

    .line 1011
    :cond_0
    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    shl-int v3, v3, p10

    .line 1012
    iget v4, v0, Lio/github/jaredmdobson/concentus/CeltMode;->maxLM:I

    sub-int v4, v4, p10

    move/from16 v16, v3

    const/4 v3, 0x1

    :goto_0
    move/from16 v17, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v11, v4, :cond_2

    if-ne v1, v15, :cond_2

    .line 1018
    aget-object v1, p1, v5

    move v4, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p11

    move/from16 v10, p12

    move v13, v4

    const/4 v11, 0x0

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v10}, Lio/github/jaredmdobson/concentus/Bands;->denormalise_bands(Lio/github/jaredmdobson/concentus/CeltMode;[I[II[IIIIIII)V

    .line 1021
    aget v1, p3, v15

    div-int/lit8 v3, v12, 0x2

    add-int/2addr v1, v3

    .line 1022
    aget-object v3, p2, v15

    invoke-static {v2, v11, v3, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v13, :cond_1

    .line 1024
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/CeltMode;->mdct:Lio/github/jaredmdobson/concentus/MDCTLookup;

    aget-object v4, p2, v15

    add-int v6, v1, v5

    aget-object v7, p2, v11

    aget v8, p3, v11

    mul-int v9, v16, v5

    add-int/2addr v8, v9

    iget-object v9, v0, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move/from16 p6, v6

    move-object/from16 p7, v7

    move/from16 p8, v8

    move-object/from16 p9, v9

    move/from16 p10, v12

    move/from16 p12, v13

    move/from16 p11, v17

    invoke-static/range {p4 .. p12}, Lio/github/jaredmdobson/concentus/MDCT;->clt_mdct_backward(Lio/github/jaredmdobson/concentus/MDCTLookup;[II[II[IIII)V

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v4, p12

    add-int/lit8 v5, v5, 0x1

    move v13, v4

    move v12, v6

    move/from16 v17, v7

    goto :goto_1

    :cond_1
    move v4, v13

    const/4 v5, 0x0

    :goto_2
    move v6, v12

    move/from16 v7, v17

    if-ge v5, v4, :cond_6

    .line 1027
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->mdct:Lio/github/jaredmdobson/concentus/MDCTLookup;

    aget-object v3, p2, v15

    aget v8, p3, v15

    mul-int v9, v16, v5

    add-int/2addr v8, v9

    iget-object v9, v0, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    move-object/from16 p4, v1

    move-object/from16 p5, v2

    move-object/from16 p7, v3

    move/from16 p12, v4

    move/from16 p6, v5

    move/from16 p10, v6

    move/from16 p11, v7

    move/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p4 .. p12}, Lio/github/jaredmdobson/concentus/MDCT;->clt_mdct_backward(Lio/github/jaredmdobson/concentus/MDCTLookup;[II[II[IIII)V

    move/from16 v11, p6

    move/from16 v12, p10

    move/from16 v17, p11

    move/from16 v8, p12

    add-int/lit8 v5, v11, 0x1

    move v4, v8

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    if-ne v11, v15, :cond_4

    if-ne v1, v4, :cond_4

    .line 1031
    aget v1, p3, v18

    div-int/lit8 v4, v12, 0x2

    add-int v11, v1, v4

    .line 1032
    aget-object v1, p1, v18

    move v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p11

    move/from16 v10, p12

    move v15, v4

    const/16 v19, 0x1

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v10}, Lio/github/jaredmdobson/concentus/Bands;->denormalise_bands(Lio/github/jaredmdobson/concentus/CeltMode;[I[II[IIIIIII)V

    move-object/from16 v20, v2

    .line 1035
    aget-object v1, p1, v19

    aget-object v2, p2, v18

    move-object/from16 v0, p0

    move v3, v11

    move v5, v13

    invoke-static/range {v0 .. v10}, Lio/github/jaredmdobson/concentus/Bands;->denormalise_bands(Lio/github/jaredmdobson/concentus/CeltMode;[I[II[IIIIIII)V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v14, :cond_3

    .line 1038
    aget v1, v20, v5

    aget-object v2, p2, v18

    add-int v11, v3, v5

    aget v2, v2, v11

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v1

    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v1

    aput v1, v20, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v15, :cond_6

    .line 1041
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->mdct:Lio/github/jaredmdobson/concentus/MDCTLookup;

    aget-object v2, p2, v18

    aget v3, p3, v18

    mul-int v4, v16, v5

    add-int/2addr v3, v4

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    move-object/from16 p4, v1

    move-object/from16 p7, v2

    move/from16 p8, v3

    move-object/from16 p9, v4

    move/from16 p6, v5

    move/from16 p10, v12

    move/from16 p12, v15

    move/from16 p11, v17

    move-object/from16 p5, v20

    invoke-static/range {p4 .. p12}, Lio/github/jaredmdobson/concentus/MDCT;->clt_mdct_backward(Lio/github/jaredmdobson/concentus/MDCTLookup;[II[II[IIII)V

    move-object/from16 v2, p5

    move/from16 v1, p6

    move/from16 v13, p12

    add-int/lit8 v5, v1, 0x1

    move-object/from16 v20, v2

    move v15, v13

    goto :goto_4

    :cond_4
    move v14, v13

    move v13, v3

    const/4 v15, 0x0

    .line 1047
    :goto_5
    aget-object v1, p1, v15

    const/4 v3, 0x0

    mul-int v5, v15, v14

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p11

    move/from16 v10, p12

    invoke-static/range {v0 .. v10}, Lio/github/jaredmdobson/concentus/Bands;->denormalise_bands(Lio/github/jaredmdobson/concentus/CeltMode;[I[II[IIIIIII)V

    move-object v9, v0

    move v10, v8

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v13, :cond_5

    .line 1050
    iget-object v0, v9, Lio/github/jaredmdobson/concentus/CeltMode;->mdct:Lio/github/jaredmdobson/concentus/MDCTLookup;

    aget-object v3, p2, v15

    aget v1, p3, v15

    mul-int v4, v16, v5

    add-int/2addr v4, v1

    move-object/from16 v20, v2

    move v2, v5

    iget-object v5, v9, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    move v6, v12

    move v8, v13

    move/from16 v7, v17

    move-object/from16 v1, v20

    invoke-static/range {v0 .. v8}, Lio/github/jaredmdobson/concentus/MDCT;->clt_mdct_backward(Lio/github/jaredmdobson/concentus/MDCTLookup;[II[II[IIII)V

    move v0, v2

    move v4, v8

    move-object v2, v1

    add-int/lit8 v5, v0, 0x1

    move v13, v4

    goto :goto_6

    :cond_5
    move v6, v12

    move v4, v13

    move/from16 v7, v17

    add-int/lit8 v15, v15, 0x1

    if-lt v15, v11, :cond_7

    :cond_6
    return-void

    :cond_7
    move v13, v4

    move v12, v6

    move/from16 v17, v7

    move-object v0, v9

    move v8, v10

    goto :goto_5
.end method

.method static comb_filter([II[IIIIIIIII[II)V
    .locals 22

    move/from16 v0, p4

    move/from16 v4, p5

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    move/from16 v5, p10

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 1174
    :cond_0
    sget-object v6, Lio/github/jaredmdobson/concentus/CeltCommon;->gains:[[S

    aget-object v7, v6, v3

    const/4 v8, 0x0

    aget-short v7, v7, v8

    invoke-static {v1, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v7

    .line 1175
    aget-object v9, v6, v3

    const/4 v10, 0x1

    aget-short v9, v9, v10

    invoke-static {v1, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v9

    .line 1176
    aget-object v11, v6, v3

    const/4 v12, 0x2

    aget-short v11, v11, v12

    invoke-static {v1, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v11

    .line 1177
    aget-object v13, v6, v5

    aget-short v13, v13, v8

    invoke-static {v2, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v13

    .line 1178
    aget-object v14, v6, v5

    aget-short v10, v14, v10

    invoke-static {v2, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v10

    .line 1179
    aget-object v6, v6, v5

    aget-short v6, v6, v12

    invoke-static {v2, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v6

    sub-int v14, p3, v4

    add-int/lit8 v15, v14, 0x1

    .line 1180
    aget v15, p2, v15

    .line 1181
    aget v16, p2, v14

    add-int/lit8 v17, v14, -0x1

    .line 1182
    aget v17, p2, v17

    sub-int/2addr v14, v12

    .line 1183
    aget v14, p2, v14

    if-ne v1, v2, :cond_1

    if-ne v0, v4, :cond_1

    if-ne v3, v5, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move/from16 v1, p12

    :goto_0
    move/from16 v3, v16

    move/from16 v5, v17

    :goto_1
    if-ge v8, v1, :cond_2

    add-int v16, p3, v8

    sub-int v17, v16, v4

    add-int/lit8 v17, v17, 0x2

    const/16 v18, 0x2

    .line 1190
    aget v12, p2, v17

    .line 1191
    aget v0, p11, v8

    invoke-static {v0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v0

    add-int v17, p1, v8

    .line 1192
    aget v19, p2, v16

    move/from16 p7, v1

    rsub-int v1, v0, 0x7fff

    int-to-short v1, v1

    .line 1193
    invoke-static {v1, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    sub-int v16, v16, p4

    aget v4, p2, v16

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v2

    add-int v19, v19, v2

    .line 1194
    invoke-static {v1, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    add-int/lit8 v4, v16, 0x1

    aget v4, p2, v4

    add-int/lit8 v20, v16, -0x1

    move/from16 v21, v7

    aget v7, p2, v20

    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v4

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v2

    add-int v19, v19, v2

    .line 1195
    invoke-static {v1, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v1

    add-int/lit8 v2, v16, 0x2

    aget v2, p2, v2

    add-int/lit8 v16, v16, -0x2

    aget v4, p2, v16

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v2

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v1

    add-int v19, v19, v1

    .line 1196
    invoke-static {v0, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v1

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v1

    add-int v19, v19, v1

    .line 1197
    invoke-static {v0, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v1

    invoke-static {v15, v5}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v2

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v1

    add-int v19, v19, v1

    .line 1198
    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v0

    invoke-static {v12, v14}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v1

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v0

    add-int v19, v19, v0

    aput v19, p0, v17

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p4

    move/from16 v4, p5

    move/from16 v1, p7

    move/from16 v2, p8

    move v14, v5

    move/from16 v7, v21

    move v5, v3

    move v3, v15

    move v15, v12

    const/4 v12, 0x2

    goto/16 :goto_1

    :cond_2
    if-nez p8, :cond_3

    :goto_2
    return-void

    :cond_3
    add-int v1, p1, v8

    add-int v3, p3, v8

    sub-int v5, p6, v8

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p5

    move v8, v6

    move v7, v10

    move v6, v13

    .line 1214
    invoke-static/range {v0 .. v8}, Lio/github/jaredmdobson/concentus/CeltCommon;->comb_filter_const([II[IIIIIII)V

    return-void
.end method

.method static comb_filter_const([II[IIIIIII)V
    .locals 13

    sub-int v0, p3, p4

    add-int/lit8 v1, v0, -0x2

    .line 1135
    aget v1, p2, v1

    add-int/lit8 v2, v0, -0x1

    .line 1136
    aget v2, p2, v2

    .line 1137
    aget v3, p2, v0

    add-int/lit8 v4, v0, 0x1

    .line 1138
    aget v4, p2, v4

    const/4 v5, 0x0

    move v6, v2

    move v2, v1

    move v1, v6

    move/from16 v6, p5

    :goto_0
    if-ge v5, v6, :cond_0

    add-int v7, v0, v5

    add-int/lit8 v7, v7, 0x2

    .line 1140
    aget v7, p2, v7

    add-int v8, p1, v5

    add-int v9, p3, v5

    .line 1141
    aget v9, p2, v9

    move/from16 v10, p6

    .line 1142
    invoke-static {v10, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v11

    add-int/2addr v9, v11

    .line 1143
    invoke-static {v4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v11

    move/from16 v12, p7

    invoke-static {v12, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v11

    add-int/2addr v9, v11

    .line 1144
    invoke-static {v7, v2}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v2

    move/from16 v11, p8

    invoke-static {v11, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v2

    add-int/2addr v9, v2

    aput v9, p0, v8

    add-int/lit8 v5, v5, 0x1

    move v2, v1

    move v1, v3

    move v3, v4

    move v4, v7

    goto :goto_0

    :cond_0
    return-void
.end method

.method static compute_mdcts(Lio/github/jaredmdobson/concentus/CeltMode;I[[I[[IIIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p7

    .line 303
    iget v10, v0, Lio/github/jaredmdobson/concentus/CeltMode;->overlap:I

    const/4 v13, 0x1

    if-eqz p1, :cond_0

    .line 310
    iget v4, v0, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    .line 311
    iget v5, v0, Lio/github/jaredmdobson/concentus/CeltMode;->maxLM:I

    move/from16 v12, p1

    goto :goto_0

    .line 314
    :cond_0
    iget v4, v0, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    shl-int v4, v4, p6

    .line 315
    iget v5, v0, Lio/github/jaredmdobson/concentus/CeltMode;->maxLM:I

    sub-int v5, v5, p6

    const/4 v12, 0x1

    :goto_0
    move v14, v4

    move v11, v5

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v12, :cond_1

    .line 321
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/CeltMode;->mdct:Lio/github/jaredmdobson/concentus/MDCTLookup;

    aget-object v5, p2, v16

    mul-int v6, v8, v14

    aget-object v7, p3, v16

    iget-object v9, v0, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    invoke-static/range {v4 .. v12}, Lio/github/jaredmdobson/concentus/MDCT;->clt_mdct_forward(Lio/github/jaredmdobson/concentus/MDCTLookup;[II[II[IIII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v16, 0x1

    if-lt v4, v2, :cond_6

    const/4 v0, 0x2

    if-ne v2, v0, :cond_2

    if-ne v1, v13, :cond_2

    const/4 v0, 0x0

    :goto_3
    mul-int v2, v12, v14

    if-ge v0, v2, :cond_2

    .line 336
    aget-object v2, p3, v15

    aget v4, v2, v0

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v4

    aget-object v5, p3, v13

    aget v5, v5, v0

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v5

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    if-eq v3, v13, :cond_5

    const/4 v0, 0x0

    :cond_3
    mul-int v2, v12, v14

    .line 342
    div-int v4, v2, v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_4

    .line 344
    aget-object v6, p3, v0

    aget v7, v6, v5

    mul-int v7, v7, v3

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 346
    :cond_4
    aget-object v5, p3, v0

    sub-int/2addr v2, v4

    invoke-static {v5, v15, v4, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSetWithOffset([IIII)V

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_3

    :cond_5
    return-void

    :cond_6
    move/from16 v16, v4

    goto :goto_1
.end method

.method static compute_vbr(Lio/github/jaredmdobson/concentus/CeltMode;Lio/github/jaredmdobson/concentus/AnalysisInfo;IIIIIIIIIIIILio/github/jaredmdobson/concentus/OpusFramesize;IIII)I
    .locals 14

    move/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p11

    .line 64
    iget v5, p0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    .line 65
    iget-object p0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    if-eqz p5, :cond_0

    move/from16 v6, p5

    goto :goto_0

    :cond_0
    move v6, v5

    .line 68
    :goto_0
    aget-short v7, p0, v6

    shl-int v7, v7, p3

    const/4 v8, 0x2

    if-ne v2, v8, :cond_1

    .line 70
    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v9

    aget-short v9, p0, v9

    shl-int v9, v9, p3

    add-int/2addr v7, v9

    .line 74
    :cond_1
    iget-boolean v9, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->enabled:Z

    if-eqz v9, :cond_2

    iget v9, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->valid:I

    if-eqz v9, :cond_2

    iget v9, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->activity:F

    float-to-double v9, v9

    const-wide v11, 0x3fd999999999999aL    # 0.4

    cmpg-double v13, v9, v11

    if-gez v13, :cond_2

    shl-int/lit8 v9, v7, 0x3

    int-to-float v9, v9

    const v10, 0x3ecccccd    # 0.4f

    .line 75
    iget v11, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->activity:F

    sub-float/2addr v10, v11

    mul-float v9, v9, v10

    float-to-int v9, v9

    sub-int v9, p2, v9

    goto :goto_1

    :cond_2
    move/from16 v9, p2

    :goto_1
    if-ne v2, v8, :cond_3

    .line 83
    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v3

    .line 84
    aget-short v6, p0, v3

    shl-int v6, v6, p3

    sub-int/2addr v6, v3

    const/16 v3, 0x6666

    .line 86
    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    invoke-static {v3, v7}, Lio/github/jaredmdobson/concentus/Inlines;->DIV32_16(II)I

    move-result v3

    const/16 v10, 0x100

    move/from16 v11, p9

    .line 87
    invoke-static {v11, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v10

    .line 89
    invoke-static {v3, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v3

    add-int/lit8 v10, v10, -0x1a

    shl-int/lit8 v6, v6, 0x3

    .line 90
    invoke-static {v10, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v6

    const/16 v10, 0x8

    invoke-static {v6, v10}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v6

    .line 89
    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result v3

    sub-int/2addr v9, v3

    :cond_3
    const/16 v3, 0x10

    shl-int v3, v3, p3

    sub-int v3, p10, v3

    add-int/2addr v9, v3

    .line 95
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_VARIABLE:Lio/github/jaredmdobson/concentus/OpusFramesize;

    move-object/from16 v6, p14

    if-ne v6, v3, :cond_4

    const/16 v3, 0x148

    goto :goto_2

    :cond_4
    const/16 v3, 0x28f

    :goto_2
    sub-int v3, v4, v3

    .line 97
    invoke-static {v3, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v3

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v3

    add-int/2addr v9, v3

    .line 100
    iget-boolean v3, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->enabled:Z

    if-eqz v3, :cond_5

    iget v3, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->valid:I

    if-eqz v3, :cond_5

    if-nez p15, :cond_5

    .line 105
    iget v0, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality:F

    const v3, 0x3e19999a    # 0.15f

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(FF)F

    move-result v0

    const v3, 0x3db851ec    # 0.09f

    sub-float/2addr v0, v3

    shl-int/lit8 v3, v7, 0x3

    int-to-float v3, v3

    const v6, 0x3f99999a    # 1.2f

    mul-float v6, v6, v3

    mul-float v6, v6, v0

    float-to-int v0, v6

    add-int/2addr v9, v0

    if-eqz p12, :cond_5

    const v0, 0x3f4ccccd    # 0.8f

    mul-float v3, v3, v0

    float-to-int v0, v3

    add-int/2addr v9, v0

    :cond_5
    const/16 v0, 0xa

    if-eqz p16, :cond_6

    if-nez p15, :cond_6

    shl-int/lit8 v3, v7, 0x3

    move/from16 v6, p17

    .line 114
    invoke-static {v6, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    invoke-static {v3, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v3

    add-int/2addr v3, v9

    .line 116
    div-int/lit8 v9, v9, 0x4

    invoke-static {v9, v3}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v9

    :cond_6
    sub-int/2addr v5, v8

    .line 122
    aget-short p0, p0, v5

    shl-int p0, p0, p3

    mul-int p0, p0, v2

    shl-int/lit8 p0, p0, 0x3

    move/from16 v2, p13

    .line 124
    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result p0

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result p0

    shr-int/lit8 v2, v9, 0x2

    .line 125
    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result p0

    .line 126
    invoke-static {v9, p0}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result p0

    const/4 v2, 0x0

    if-eqz p16, :cond_7

    if-eqz p15, :cond_a

    :cond_7
    if-nez p8, :cond_8

    const v3, 0xfa00

    if-ge v1, v3, :cond_a

    :cond_8
    add-int/lit16 v3, v1, -0x7d00

    .line 132
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v3

    if-eqz p8, :cond_9

    const/16 v5, 0x55c3

    .line 134
    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v3

    :cond_9
    sub-int p0, p0, p2

    .line 136
    invoke-static {v3, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result p0

    add-int p0, p2, p0

    :cond_a
    if-nez p16, :cond_b

    const/16 v3, 0xccd

    if-ge v4, v3, :cond_b

    const v3, 0x17700

    sub-int/2addr v3, v1

    const/16 v1, 0x7d00

    .line 142
    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v1

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v1

    const/16 v2, 0xd01

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v1

    move/from16 v2, p18

    .line 143
    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v0

    .line 144
    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v0

    add-int/2addr p0, v0

    :cond_b
    mul-int/lit8 v0, p2, 0x2

    .line 148
    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result p0

    return p0
.end method

.method static deemphasis([[I[I[SIIII[I[II)V
    .locals 16

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    .line 928
    new-array v3, v0, [I

    const/4 v4, 0x0

    .line 929
    aget v5, p7, v4

    .line 930
    div-int v6, v0, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 936
    :goto_0
    aget v9, p8, v7

    .line 937
    aget-object v10, p0, v7

    .line 938
    aget v11, p1, v7

    add-int v12, p3, v7

    const/4 v13, 0x1

    if-le v2, v13, :cond_1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_0

    add-int v14, v11, v8

    .line 943
    aget v14, v10, v14

    add-int/2addr v14, v9

    .line 944
    invoke-static {v5, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v9

    .line 945
    aput v14, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x1

    goto :goto_5

    :cond_1
    if-eqz p9, :cond_2

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v0, :cond_4

    add-int v14, v11, v13

    .line 951
    aget v14, v10, v14

    add-int/2addr v14, v9

    .line 952
    invoke-static {v5, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v9

    mul-int v15, v13, v1

    add-int/2addr v15, v12

    .line 953
    aget-short v4, p2, v15

    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->SIG2WORD16(I)S

    move-result v14

    invoke-static {v4, v14}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v4

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->SAT16(I)S

    move-result v4

    aput-short v4, p2, v15

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_4

    add-int v13, v11, v4

    .line 957
    aget v13, v10, v13

    add-int v14, v13, v9

    if-lez v13, :cond_3

    if-lez v9, :cond_3

    if-gez v14, :cond_3

    const v14, 0x7fffffff

    const v9, 0x7fffffff

    goto :goto_4

    .line 963
    :cond_3
    invoke-static {v5, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v9

    :goto_4
    mul-int v13, v4, v1

    add-int/2addr v13, v12

    .line 965
    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->SIG2WORD16(I)S

    move-result v14

    aput-short v14, p2, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 968
    :cond_4
    :goto_5
    aput v9, p8, v7

    if-eqz v8, :cond_5

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v6, :cond_5

    mul-int v9, v4, v1

    add-int/2addr v9, v12

    mul-int v10, v4, v2

    .line 974
    aget v10, v3, v10

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->SIG2WORD16(I)S

    move-result v10

    aput-short v10, p2, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v7, v7, 0x1

    if-lt v7, v1, :cond_6

    return-void

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method static dynalloc_analysis([[I[[IIIII[II[SIII[SIILio/github/jaredmdobson/concentus/BoxedValueInt;I[I)I
    .locals 19

    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p13

    move/from16 v5, p14

    const/4 v6, 0x2

    .line 799
    invoke-static {v6, v0}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v7

    mul-int v8, v2, v0

    .line 800
    new-array v8, v8, [I

    const/4 v9, 0x0

    .line 802
    invoke-static {v3, v9, v0}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    const/4 v0, 0x0

    :goto_0
    const/16 v10, 0xa

    const/4 v11, 0x6

    if-ge v0, v1, :cond_0

    const/16 v12, 0x40

    .line 808
    aget-short v13, p8, v0

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(SS)I

    move-result v12

    add-int/lit16 v12, v12, 0x200

    rsub-int/lit8 v13, p7, 0x9

    .line 809
    invoke-static {v13, v10}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v10

    add-int/2addr v12, v10

    sget-object v10, Lio/github/jaredmdobson/concentus/CeltTables;->eMeans:[B

    aget-byte v10, v10, v0

    int-to-short v10, v10

    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(SI)S

    move-result v10

    sub-int/2addr v12, v10

    add-int/lit8 v10, v0, 0x5

    mul-int v10, v10, v10

    .line 810
    invoke-static {v11, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v10

    add-int/2addr v12, v10

    aput v12, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, -0x7f9a

    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v1, :cond_1

    .line 815
    aget-object v14, p0, v12

    aget v14, v14, v13

    aget v15, v8, v13

    sub-int/2addr v14, v15

    invoke-static {v0, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v0

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v12, 0x1

    if-lt v12, v2, :cond_16

    const/16 v12, 0x32

    if-le v5, v12, :cond_15

    const/4 v12, 0x1

    if-lt v4, v12, :cond_15

    if-nez p16, :cond_15

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 825
    :goto_3
    aget-object v15, v7, v13

    .line 826
    aget-object v16, p1, v13

    aget v16, v16, v9

    aput v16, v15, v9

    const/16 p2, 0x1

    :goto_4
    if-ge v12, v1, :cond_3

    .line 831
    aget-object v16, p1, v13

    aget v10, v16, v12

    add-int/lit8 v17, v12, -0x1

    aget v11, v16, v17

    add-int/lit16 v11, v11, 0x200

    if-le v10, v11, :cond_2

    move v14, v12

    .line 834
    :cond_2
    aget v11, v15, v17

    add-int/lit16 v11, v11, 0x600

    invoke-static {v11, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v10

    aput v10, v15, v12

    add-int/lit8 v12, v12, 0x1

    const/16 v10, 0xa

    const/4 v11, 0x6

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v14, -0x1

    :goto_5
    if-ltz v10, :cond_4

    .line 837
    aget v11, v15, v10

    add-int/lit8 v12, v10, 0x1

    aget v12, v15, v12

    add-int/lit16 v12, v12, 0x800

    aget-object v16, p1, v13

    aget v6, v16, v10

    invoke-static {v12, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v6

    invoke-static {v11, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v6

    aput v6, v15, v10

    add-int/lit8 v10, v10, -0x1

    const/4 v6, 0x2

    goto :goto_5

    :cond_4
    const/4 v6, 0x2

    :goto_6
    add-int/lit8 v10, v1, -0x2

    if-ge v6, v10, :cond_5

    .line 845
    aget v10, v15, v6

    aget-object v11, p1, v13

    add-int/lit8 v12, v6, -0x2

    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/CeltCommon;->median_of_5([II)I

    move-result v11

    add-int/lit16 v11, v11, -0x400

    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v10

    aput v10, v15, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 847
    :cond_5
    aget-object v6, p1, v13

    invoke-static {v6, v9}, Lio/github/jaredmdobson/concentus/CeltCommon;->median_of_3([II)I

    move-result v6

    add-int/lit16 v6, v6, -0x400

    .line 848
    aget v11, v15, v9

    invoke-static {v11, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v11

    aput v11, v15, v9

    .line 849
    aget v11, v15, p2

    invoke-static {v11, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v6

    aput v6, v15, p2

    .line 850
    aget-object v6, p1, v13

    add-int/lit8 v11, v1, -0x3

    invoke-static {v6, v11}, Lio/github/jaredmdobson/concentus/CeltCommon;->median_of_3([II)I

    move-result v6

    add-int/lit16 v6, v6, -0x400

    .line 851
    aget v11, v15, v10

    invoke-static {v11, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v11

    aput v11, v15, v10

    add-int/lit8 v10, v1, -0x1

    .line 852
    aget v11, v15, v10

    invoke-static {v11, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v6

    aput v6, v15, v10

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v1, :cond_6

    .line 855
    aget v10, v15, v6

    aget v11, v8, v6

    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v10

    aput v10, v15, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v13, v13, 0x1

    if-lt v13, v2, :cond_14

    const/16 v6, 0x1000

    const/4 v8, 0x2

    if-ne v2, v8, :cond_7

    move/from16 v8, p3

    :goto_8
    if-ge v8, v1, :cond_8

    .line 861
    aget-object v10, v7, p2

    aget v11, v10, v8

    aget-object v12, v7, v9

    aget v12, v12, v8

    sub-int/2addr v12, v6

    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v11

    aput v11, v10, v8

    .line 862
    aget-object v10, v7, v9

    aget v11, v10, v8

    aget-object v12, v7, p2

    aget v12, v12, v8

    sub-int/2addr v12, v6

    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v11

    aput v11, v10, v8

    .line 863
    aget-object v10, v7, v9

    aget-object v11, p0, v9

    aget v11, v11, v8

    aget v12, v10, v8

    sub-int/2addr v11, v12

    invoke-static {v9, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v11

    aget-object v12, p0, p2

    aget v12, v12, v8

    aget-object v13, v7, p2

    aget v13, v13, v8

    sub-int/2addr v12, v13

    invoke-static {v9, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v11

    aput v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_7
    move/from16 v8, p3

    :goto_9
    if-ge v8, v1, :cond_8

    .line 867
    aget-object v10, v7, v9

    aget-object v11, p0, v9

    aget v11, v11, v8

    aget v12, v10, v8

    sub-int/2addr v11, v12

    invoke-static {v9, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v11

    aput v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_8
    move/from16 v8, p3

    :goto_a
    if-ge v8, v1, :cond_9

    .line 871
    aget-object v10, v7, v9

    aget v11, v10, v8

    aget v12, p17, v8

    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v11

    aput v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_9
    if-eqz p10, :cond_a

    if-eqz p11, :cond_b

    :cond_a
    if-nez p9, :cond_b

    move/from16 v8, p3

    :goto_b
    if-ge v8, v1, :cond_b

    .line 876
    aget-object v10, v7, v9

    aget v11, v10, v8

    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v11

    aput v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_b
    move/from16 v8, p3

    const/4 v10, 0x0

    :goto_c
    if-ge v8, v1, :cond_13

    const/16 v11, 0x8

    if-ge v8, v11, :cond_c

    .line 885
    aget-object v12, v7, v9

    aget v13, v12, v8

    const/16 v17, 0x2

    mul-int/lit8 v13, v13, 0x2

    aput v13, v12, v8

    goto :goto_d

    :cond_c
    const/16 v17, 0x2

    :goto_d
    const/16 v12, 0xc

    if-lt v8, v12, :cond_d

    .line 888
    aget-object v12, v7, v9

    aget v13, v12, v8

    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v13

    aput v13, v12, v8

    .line 890
    :cond_d
    aget-object v12, v7, v9

    aget v13, v12, v8

    invoke-static {v13, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v13

    aput v13, v12, v8

    add-int/lit8 v12, v8, 0x1

    .line 892
    aget-short v13, p12, v12

    aget-short v14, p12, v8

    sub-int/2addr v13, v14

    mul-int v13, v13, v2

    shl-int/2addr v13, v4

    const/4 v14, 0x6

    if-ge v13, v14, :cond_e

    .line 894
    aget-object v11, v7, v9

    aget v11, v11, v8

    const/16 v15, 0xa

    invoke-static {v11, v15}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v11

    mul-int v13, v13, v11

    :goto_e
    shl-int/lit8 v13, v13, 0x3

    goto :goto_f

    :cond_e
    const/16 v15, 0xa

    const/16 v14, 0x30

    if-le v13, v14, :cond_f

    .line 897
    aget-object v14, v7, v9

    aget v14, v14, v8

    mul-int/lit8 v14, v14, 0x8

    invoke-static {v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v14

    mul-int v13, v13, v14

    shl-int/lit8 v13, v13, 0x3

    .line 898
    div-int/2addr v13, v11

    move v11, v14

    goto :goto_f

    .line 900
    :cond_f
    aget-object v11, v7, v9

    aget v11, v11, v8

    mul-int v11, v11, v13

    const/16 v18, 0x6

    div-int/lit8 v11, v11, 0x6

    invoke-static {v11, v15}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v11

    mul-int/lit8 v13, v11, 0x6

    goto :goto_e

    :goto_f
    if-eqz p10, :cond_11

    if-eqz p11, :cond_10

    if-nez p9, :cond_10

    goto :goto_10

    :cond_10
    const/16 v18, 0x6

    goto :goto_11

    :cond_11
    :goto_10
    add-int v14, v10, v13

    const/16 v18, 0x6

    shr-int/lit8 v14, v14, 0x6

    .line 904
    div-int/lit8 v6, v5, 0x4

    if-le v14, v6, :cond_12

    shl-int/lit8 v9, v6, 0x6

    sub-int v1, v9, v10

    .line 907
    aput v1, v3, v8

    goto :goto_12

    .line 911
    :cond_12
    :goto_11
    aput v11, v3, v8

    add-int/2addr v10, v13

    move v8, v12

    const/16 v6, 0x1000

    goto/16 :goto_c

    :cond_13
    move-object/from16 v6, p15

    move v9, v10

    goto :goto_13

    :cond_14
    const/16 v17, 0x2

    const/16 v18, 0x6

    const/4 v6, 0x2

    const/16 v10, 0xa

    const/4 v11, 0x6

    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_15
    :goto_12
    move-object/from16 v6, p15

    .line 917
    :goto_13
    iput v9, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return v0

    :cond_16
    move-object/from16 v6, p15

    const/16 v17, 0x2

    const/4 v6, 0x2

    goto/16 :goto_1
.end method

.method static init_caps(Lio/github/jaredmdobson/concentus/CeltMode;[III)V
    .locals 6

    const/4 v0, 0x0

    .line 1225
    :goto_0
    iget v1, p0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    if-ge v0, v1, :cond_0

    .line 1227
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    add-int/lit8 v2, v0, 0x1

    aget-short v1, v1, v2

    iget-object v3, p0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v3, v3, v0

    sub-int/2addr v1, v3

    shl-int/2addr v1, p2

    .line 1228
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/CeltMode;->cache:Lio/github/jaredmdobson/concentus/PulseCache;

    iget-object v3, v3, Lio/github/jaredmdobson/concentus/PulseCache;->caps:[S

    iget v4, p0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int/lit8 v5, p2, 0x2

    add-int/2addr v5, p3

    add-int/lit8 v5, v5, -0x1

    mul-int v4, v4, v5

    add-int/2addr v4, v0

    aget-short v3, v3, v4

    add-int/lit8 v3, v3, 0x40

    mul-int v3, v3, p3

    mul-int v3, v3, v1

    shr-int/lit8 v1, v3, 0x2

    aput v1, p1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method static l1_metric([IIII)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 439
    aget v2, p0, v0

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->ABS32(I)I

    move-result v2

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int p2, p2, p3

    .line 443
    invoke-static {v1, p2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_32_Q15(III)I

    move-result p0

    return p0
.end method

.method static median_of_3([II)I
    .locals 3

    .line 775
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    move v1, v0

    move v0, v2

    :goto_0
    add-int/lit8 p1, p1, 0x2

    .line 782
    aget p0, p0, p1

    if-ge v0, p0, :cond_1

    return v0

    :cond_1
    if-ge v1, p0, :cond_2

    return p0

    :cond_2
    return v1
.end method

.method static median_of_5([II)I
    .locals 5

    add-int/lit8 v0, p1, 0x2

    .line 736
    aget v0, p0, v0

    .line 737
    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    if-le v1, v2, :cond_0

    move v4, v2

    move v2, v1

    move v1, v4

    :cond_0
    add-int/lit8 v3, p1, 0x3

    .line 744
    aget v3, p0, v3

    add-int/lit8 p1, p1, 0x4

    aget p0, p0, p1

    if-le v3, p0, :cond_1

    move v4, v3

    move v3, p0

    move p0, v4

    :cond_1
    if-le v1, v3, :cond_2

    move v4, v2

    move v2, p0

    move p0, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-le v0, v2, :cond_4

    if-ge v2, v1, :cond_3

    .line 762
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result p0

    return p0

    .line 764
    :cond_3
    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result p0

    return p0

    :cond_4
    if-ge v0, v1, :cond_5

    .line 767
    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result p0

    return p0

    .line 769
    :cond_5
    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result p0

    return p0
.end method

.method static patch_transient_decision([[I[[IIIII)I
    .locals 8

    const/16 p2, 0x1a

    .line 264
    new-array p2, p2, [I

    const/16 v0, 0x400

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p5, v2, :cond_0

    .line 268
    aget-object v3, p1, v1

    aget v3, v3, p3

    aput v3, p2, p3

    add-int/lit8 v3, p3, 0x1

    :goto_0
    if-ge v3, p4, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 270
    aget v4, p2, v4

    sub-int/2addr v4, v0

    aget-object v5, p1, v1

    aget v5, v5, v3

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v4

    aput v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    :cond_0
    aget-object v3, p1, v1

    aget v3, v3, p3

    aget-object v4, p1, v2

    aget v4, v4, p3

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v3

    aput v3, p2, p3

    add-int/lit8 v3, p3, 0x1

    :goto_1
    if-ge v3, p4, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 275
    aget v4, p2, v4

    sub-int/2addr v4, v0

    aget-object v5, p1, v1

    aget v5, v5, v3

    aget-object v6, p1, v2

    aget v6, v6, v3

    .line 276
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v5

    .line 275
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v4

    aput v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p4, -0x2

    :goto_2
    if-lt p1, p3, :cond_2

    .line 280
    aget v3, p2, p1

    add-int/lit8 v4, p1, 0x1

    aget v4, p2, v4

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v3

    aput v3, p2, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    const/4 v3, 0x0

    :cond_3
    const/4 v4, 0x2

    .line 285
    invoke-static {v4, p3}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v5

    :goto_3
    add-int/lit8 v6, p4, -0x1

    if-ge v5, v6, :cond_4

    .line 287
    aget-object v6, p0, p1

    aget v6, v6, v5

    invoke-static {v1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v6

    .line 288
    aget v7, p2, v5

    invoke-static {v1, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v7

    .line 289
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v6

    invoke-static {v1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v6

    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    if-lt p1, p5, :cond_3

    .line 292
    invoke-static {v4, p3}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result p0

    sub-int/2addr v6, p0

    mul-int p5, p5, v6

    invoke-static {v3, p5}, Lio/github/jaredmdobson/concentus/Inlines;->DIV32(II)I

    move-result p0

    if-le p0, v0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method static resampling_factor(I)I
    .locals 1

    const/16 v0, 0x1f40

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2ee0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e80

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5dc0

    if-eq p0, v0, :cond_1

    const v0, 0xbb80

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    .line 1123
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x6

    return p0
.end method

.method static stereo_analysis(Lio/github/jaredmdobson/concentus/CeltMode;[[II)I
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    const/16 v5, 0xd

    if-ge v2, v5, :cond_1

    .line 713
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v5, v5, v2

    shl-int/2addr v5, p2

    :goto_1
    iget-object v6, p0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    add-int/lit8 v7, v2, 0x1

    aget-short v6, v6, v7

    shl-int/2addr v6, p2

    if-ge v5, v6, :cond_0

    .line 716
    aget-object v6, p1, v1

    aget v6, v6, v5

    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v6

    .line 717
    aget-object v7, p1, v0

    aget v7, v7, v5

    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v7

    .line 718
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v8

    .line 719
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SUB32(II)I

    move-result v9

    .line 720
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->ABS32(I)I

    move-result v6

    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->ABS32(I)I

    move-result v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v6

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v4

    .line 721
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->ABS32(I)I

    move-result v6

    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->ABS32(I)I

    move-result v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v6

    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v2, v7

    goto :goto_0

    :cond_1
    const/16 p1, 0x5a82

    .line 724
    invoke-static {p1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(SI)I

    move-result p1

    if-gt p2, v0, :cond_2

    const/4 v2, 0x5

    goto :goto_2

    :cond_2
    const/16 v2, 0xd

    .line 730
    :goto_2
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v3, v3, v5

    add-int/2addr p2, v0

    shl-int/2addr v3, p2

    add-int/2addr v3, v2

    invoke-static {v3, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result p1

    iget-object p0, p0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short p0, p0, v5

    shl-int/2addr p0, p2

    .line 731
    invoke-static {p0, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result p0

    if-le p1, p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method static tf_analysis(Lio/github/jaredmdobson/concentus/CeltMode;II[II[[IIILio/github/jaredmdobson/concentus/BoxedValueInt;II)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p8

    const/4 v3, 0x2

    .line 460
    new-array v4, v3, [I

    move/from16 v5, p9

    rsub-int v5, v5, 0x2000

    const/16 v6, -0x1000

    .line 464
    invoke-static {v6, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v5

    const/16 v6, 0x51f

    invoke-static {v6, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q14(II)I

    move-result v5

    .line 467
    new-array v6, v1, [I

    .line 468
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v7, v7, v1

    iget-object v8, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    add-int/lit8 v9, v1, -0x1

    aget-short v8, v8, v9

    sub-int/2addr v7, v8

    shl-int v7, v7, p7

    new-array v7, v7, [I

    .line 469
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v8, v8, v1

    iget-object v10, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v10, v10, v9

    sub-int/2addr v8, v10

    shl-int v8, v8, p7

    new-array v8, v8, [I

    .line 470
    new-array v10, v1, [I

    .line 471
    new-array v11, v1, [I

    const/4 v12, 0x0

    .line 473
    iput v12, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x1

    if-ge v13, v1, :cond_b

    .line 479
    iget-object v15, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    add-int/lit8 v16, v13, 0x1

    aget-short v15, v15, v16

    const/16 p6, 0x2

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v3, v3, v13

    sub-int/2addr v15, v3

    shl-int v3, v15, p7

    .line 481
    iget-object v15, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v15, v15, v16

    iget-object v12, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v12, v12, v13

    sub-int/2addr v15, v12

    if-ne v15, v14, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    .line 482
    :goto_1
    aget-object v15, p5, p10

    const/16 v17, 0x1

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    aget-short v14, v14, v13

    shl-int v14, v14, p7

    const/4 v0, 0x0

    invoke-static {v15, v14, v7, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_1

    move/from16 v14, p7

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    .line 487
    :goto_2
    invoke-static {v7, v3, v14, v5}, Lio/github/jaredmdobson/concentus/CeltCommon;->l1_metric([IIII)I

    move-result v14

    if-eqz p2, :cond_2

    if-nez v12, :cond_2

    .line 491
    invoke-static {v7, v0, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shr-int v0, v3, p7

    shl-int v15, v17, p7

    .line 492
    invoke-static {v8, v0, v15}, Lio/github/jaredmdobson/concentus/Bands;->haar1ZeroOffset([III)V

    add-int/lit8 v0, p7, 0x1

    .line 493
    invoke-static {v8, v3, v0, v5}, Lio/github/jaredmdobson/concentus/CeltCommon;->l1_metric([IIII)I

    move-result v0

    if-ge v0, v14, :cond_2

    const/4 v14, -0x1

    goto :goto_3

    :cond_2
    move v0, v14

    const/4 v14, 0x0

    :goto_3
    move v15, v14

    move v14, v0

    const/4 v0, 0x0

    :goto_4
    if-nez p2, :cond_3

    if-nez v12, :cond_3

    const/16 v18, 0x1

    goto :goto_5

    :cond_3
    const/16 v18, 0x0

    :goto_5
    move-object/from16 v19, v4

    add-int v4, p7, v18

    if-ge v0, v4, :cond_6

    if-eqz p2, :cond_4

    sub-int v4, p7, v0

    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v4, v0, 0x1

    :goto_6
    move/from16 v18, v0

    shr-int v0, v3, v18

    move-object/from16 v20, v6

    shl-int v6, v17, v18

    .line 509
    invoke-static {v7, v0, v6}, Lio/github/jaredmdobson/concentus/Bands;->haar1ZeroOffset([III)V

    .line 511
    invoke-static {v7, v3, v4, v5}, Lio/github/jaredmdobson/concentus/CeltCommon;->l1_metric([IIII)I

    move-result v0

    if-ge v0, v14, :cond_5

    add-int/lit8 v4, v18, 0x1

    move v14, v0

    move v15, v4

    :cond_5
    add-int/lit8 v0, v18, 0x1

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    goto :goto_4

    :cond_6
    move-object/from16 v20, v6

    if-eqz p2, :cond_7

    mul-int/lit8 v15, v15, 0x2

    .line 521
    aput v15, v20, v13

    goto :goto_7

    :cond_7
    mul-int/lit8 v15, v15, -0x2

    .line 523
    aput v15, v20, v13

    .line 525
    :goto_7
    iget v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-eqz p2, :cond_8

    move/from16 v3, p7

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    :goto_8
    aget v4, v20, v13

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    iput v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-eqz v12, :cond_a

    .line 528
    aget v0, v20, v13

    if-eqz v0, :cond_9

    mul-int/lit8 v3, p7, -0x2

    if-ne v0, v3, :cond_a

    :cond_9
    add-int/lit8 v0, v0, -0x1

    .line 529
    aput v0, v20, v13

    :cond_a
    move-object/from16 v0, p0

    move/from16 v13, v16

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    const/4 v3, 0x2

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v19, v4

    move-object/from16 v20, v6

    const/16 v17, 0x1

    const/4 v0, 0x0

    :goto_9
    const/4 v2, 0x2

    if-ge v0, v2, :cond_e

    if-eqz p2, :cond_c

    const/4 v2, 0x0

    goto :goto_a

    :cond_c
    move/from16 v2, p4

    :goto_a
    move v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x1

    :goto_b
    if-ge v4, v1, :cond_d

    add-int v5, v3, p4

    .line 541
    invoke-static {v2, v5}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v5

    add-int v2, v2, p4

    .line 542
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v2

    .line 543
    aget v3, v20, v4

    sget-object v6, Lio/github/jaredmdobson/concentus/CeltTables;->tf_select_table:[[B

    aget-object v6, v6, p7

    mul-int/lit8 v7, p2, 0x4

    mul-int/lit8 v8, v0, 0x2

    add-int/2addr v7, v8

    aget-byte v6, v6, v7

    const/4 v8, 0x2

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->abs(I)I

    move-result v3

    add-int/2addr v3, v5

    .line 544
    aget v5, v20, v4

    sget-object v6, Lio/github/jaredmdobson/concentus/CeltTables;->tf_select_table:[[B

    aget-object v6, v6, p7

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->abs(I)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    move/from16 v21, v3

    move v3, v2

    move/from16 v2, v21

    goto :goto_b

    .line 546
    :cond_d
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v2

    .line 547
    aput v2, v19, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 551
    :cond_e
    aget v0, v19, v17

    const/4 v2, 0x0

    aget v3, v19, v2

    if-ge v0, v3, :cond_f

    if-eqz p2, :cond_f

    const/4 v0, 0x1

    goto :goto_c

    :cond_f
    const/4 v0, 0x0

    :goto_c
    if-eqz p2, :cond_10

    const/4 v2, 0x0

    goto :goto_d

    :cond_10
    move/from16 v2, p4

    :goto_d
    move v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x1

    :goto_e
    if-ge v4, v1, :cond_13

    add-int v5, v3, p4

    if-ge v2, v5, :cond_11

    const/4 v6, 0x0

    .line 565
    aput v6, v10, v4

    move v5, v2

    goto :goto_f

    :cond_11
    const/4 v6, 0x0

    .line 568
    aput v17, v10, v4

    :goto_f
    add-int v2, v2, p4

    if-ge v2, v3, :cond_12

    .line 575
    aput v6, v11, v4

    move v3, v2

    goto :goto_10

    .line 578
    :cond_12
    aput v17, v11, v4

    .line 580
    :goto_10
    aget v2, v20, v4

    sget-object v7, Lio/github/jaredmdobson/concentus/CeltTables;->tf_select_table:[[B

    aget-object v7, v7, p7

    mul-int/lit8 v8, p2, 0x4

    mul-int/lit8 v12, v0, 0x2

    add-int/2addr v8, v12

    aget-byte v7, v7, v8

    const/4 v12, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v2, v7

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->abs(I)I

    move-result v2

    add-int/2addr v2, v5

    .line 581
    aget v5, v20, v4

    sget-object v7, Lio/github/jaredmdobson/concentus/CeltTables;->tf_select_table:[[B

    aget-object v7, v7, p7

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->abs(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_13
    const/4 v6, 0x0

    const/4 v12, 0x2

    if-ge v2, v3, :cond_14

    goto :goto_11

    :cond_14
    const/4 v6, 0x1

    .line 583
    :goto_11
    aput v6, p3, v9

    sub-int/2addr v1, v12

    :goto_12
    if-ltz v1, :cond_16

    add-int/lit8 v2, v1, 0x1

    .line 586
    aget v3, p3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 587
    aget v2, v11, v2

    aput v2, p3, v1

    goto :goto_13

    .line 589
    :cond_15
    aget v2, v10, v2

    aput v2, p3, v1

    :goto_13
    add-int/lit8 v1, v1, -0x1

    const/16 v17, 0x1

    goto :goto_12

    :cond_16
    return v0
.end method

.method static tf_decode(III[IILio/github/jaredmdobson/concentus/EntropyCoder;)V
    .locals 13

    move-object/from16 v0, p5

    .line 1065
    iget v1, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    mul-int/lit8 v1, v1, 0x8

    .line 1066
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eqz p2, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    :goto_0
    const/4 v6, 0x0

    if-lez p4, :cond_1

    add-int v7, v2, v5

    const/4 v8, 0x1

    add-int/2addr v7, v8

    if-gt v7, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    sub-int/2addr v1, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v7, p0

    :goto_2
    if-ge v7, p1, :cond_4

    add-int v11, v2, v5

    if-gt v11, v1, :cond_2

    int-to-long v11, v5

    .line 1073
    invoke-virtual {v0, v11, v12}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v2

    xor-int/2addr v10, v2

    .line 1074
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v2

    or-int/2addr v9, v10

    .line 1077
    :cond_2
    aput v10, p3, v7

    if-eqz p2, :cond_3

    const/4 v5, 0x4

    goto :goto_3

    :cond_3
    const/4 v5, 0x5

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_5

    .line 1081
    sget-object v1, Lio/github/jaredmdobson/concentus/CeltTables;->tf_select_table:[[B

    aget-object v1, v1, p4

    mul-int/lit8 v2, p2, 0x4

    add-int v5, v2, v9

    aget-byte v1, v1, v5

    sget-object v5, Lio/github/jaredmdobson/concentus/CeltTables;->tf_select_table:[[B

    aget-object v5, v5, p4

    add-int/2addr v2, v3

    add-int/2addr v2, v9

    aget-byte v2, v5, v2

    if-eq v1, v2, :cond_5

    const-wide/16 v1, 0x1

    .line 1084
    invoke-virtual {v0, v1, v2}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v6

    :cond_5
    :goto_4
    if-ge p0, p1, :cond_6

    .line 1087
    sget-object v0, Lio/github/jaredmdobson/concentus/CeltTables;->tf_select_table:[[B

    aget-object v0, v0, p4

    mul-int/lit8 v1, p2, 0x4

    mul-int/lit8 v2, v6, 0x2

    add-int/2addr v1, v2

    aget v2, p3, p0

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    aput v0, p3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method static tf_encode(III[IIILio/github/jaredmdobson/concentus/EntropyCoder;)V
    .locals 13

    move-object/from16 v0, p6

    .line 604
    iget v1, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    mul-int/lit8 v1, v1, 0x8

    .line 605
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eqz p2, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez p4, :cond_1

    add-int v8, v2, v5

    add-int/2addr v8, v7

    if-gt v8, v1, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    sub-int/2addr v1, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v9, p0

    :goto_2
    if-ge v9, p1, :cond_4

    add-int v12, v2, v5

    if-gt v12, v1, :cond_2

    .line 613
    aget v2, p3, v9

    xor-int/2addr v2, v11

    invoke-virtual {v0, v2, v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    .line 614
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v2

    .line 615
    aget v11, p3, v9

    or-int/2addr v10, v11

    goto :goto_3

    .line 618
    :cond_2
    aput v11, p3, v9

    :goto_3
    if-eqz p2, :cond_3

    const/4 v5, 0x4

    goto :goto_4

    :cond_3
    const/4 v5, 0x5

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_5

    .line 623
    sget-object v1, Lio/github/jaredmdobson/concentus/CeltTables;->tf_select_table:[[B

    aget-object v1, v1, p4

    mul-int/lit8 v2, p2, 0x4

    add-int v5, v2, v10

    aget-byte v1, v1, v5

    sget-object v5, Lio/github/jaredmdobson/concentus/CeltTables;->tf_select_table:[[B

    aget-object v5, v5, p4

    add-int/2addr v2, v3

    add-int/2addr v2, v10

    aget-byte v2, v5, v2

    if-eq v1, v2, :cond_5

    move/from16 v1, p5

    .line 626
    invoke-virtual {v0, v1, v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    if-ge p0, p1, :cond_6

    .line 631
    sget-object v0, Lio/github/jaredmdobson/concentus/CeltTables;->tf_select_table:[[B

    aget-object v0, v0, p4

    mul-int/lit8 v2, p2, 0x4

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v2, v5

    aget v5, p3, p0

    add-int/2addr v2, v5

    aget-byte v0, v0, v2

    aput v0, p3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method static transient_analysis([[IIILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)I
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v2, 0x0

    .line 162
    iput v2, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 163
    new-array v3, v0, [I

    .line 165
    div-int/lit8 v4, v0, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0xe

    const/4 v8, 0x1

    move/from16 v9, p2

    if-ge v5, v9, :cond_6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    const/16 v13, 0xc

    if-ge v10, v0, :cond_0

    .line 176
    aget-object v14, p0, v5

    aget v14, v14, v10

    invoke-static {v14, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v13

    .line 177
    invoke-static {v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v11

    add-int/2addr v12, v11

    .line 178
    invoke-static {v13, v8}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v14

    sub-int/2addr v12, v14

    .line 179
    invoke-static {v11, v8}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v14

    sub-int/2addr v13, v14

    const/4 v14, 0x2

    .line 180
    invoke-static {v11, v14}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v11

    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v11

    aput v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    move v11, v12

    move v12, v13

    goto :goto_1

    .line 185
    :cond_0
    invoke-static {v3, v2, v13}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 190
    invoke-static {v3, v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_maxabs32([III)I

    move-result v10

    add-int/2addr v10, v8

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v10

    sub-int/2addr v7, v10

    if-eqz v7, :cond_1

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v0, :cond_1

    .line 193
    aget v11, v3, v10

    invoke-static {v11, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v11

    aput v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    if-ge v7, v4, :cond_2

    mul-int/lit8 v12, v7, 0x2

    .line 203
    aget v14, v3, v12

    invoke-static {v14, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v14

    add-int/2addr v12, v8

    aget v12, v3, v12

    invoke-static {v12, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v12

    add-int/2addr v14, v12

    const/16 v12, 0x10

    invoke-static {v14, v12}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v12

    add-int/2addr v10, v12

    sub-int/2addr v12, v11

    const/4 v14, 0x4

    .line 205
    invoke-static {v12, v14}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v12

    add-int/2addr v11, v12

    aput v11, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v4, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    if-ltz v7, :cond_3

    .line 213
    aget v14, v3, v7

    sub-int/2addr v14, v12

    const/4 v15, 0x3

    invoke-static {v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v14

    add-int/2addr v12, v14

    aput v12, v3, v7

    .line 215
    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v11

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 226
    :cond_3
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result v7

    shr-int/lit8 v10, v4, 0x1

    invoke-static {v11, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v10

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result v10

    invoke-static {v7, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v7

    const/16 v10, 0x14

    .line 228
    invoke-static {v4, v10}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v10

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v7

    invoke-static {v8, v7}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v7

    div-int/2addr v10, v7

    const/4 v7, 0x0

    :goto_5
    add-int/lit8 v11, v4, -0x5

    if-ge v13, v11, :cond_4

    .line 234
    aget v11, v3, v13

    add-int/2addr v11, v8

    invoke-static {v11, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v11

    const/16 v12, 0x7f

    invoke-static {v12, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result v11

    invoke-static {v2, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v11

    .line 236
    sget-object v12, Lio/github/jaredmdobson/concentus/CeltCommon;->inv_table:[S

    aget-short v11, v12, v11

    add-int/2addr v7, v11

    add-int/lit8 v13, v13, 0x4

    goto :goto_5

    :cond_4
    mul-int/lit16 v7, v7, 0x100

    add-int/lit8 v8, v4, -0x11

    mul-int/lit8 v8, v8, 0x6

    .line 240
    div-int/2addr v7, v8

    if-le v7, v6, :cond_5

    .line 242
    iput v5, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move v6, v7

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0xc8

    if-le v6, v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    :goto_6
    mul-int/lit8 v6, v6, 0x1b

    .line 249
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2a

    invoke-static {v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v0

    const/16 v1, 0xa3

    .line 251
    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v0

    const/16 v1, 0x71

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v0

    invoke-static {v0, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v0

    const v1, 0x2395810

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result v0

    move-object/from16 v1, p3

    iput v0, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return v8
.end method
