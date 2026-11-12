.class Lio/github/jaredmdobson/concentus/PitchAnalysisCore;
.super Ljava/lang/Object;
.source "PitchAnalysisCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;
    }
.end annotation


# static fields
.field private static final CSTRIDE_4KHZ:I = 0x41

.field private static final CSTRIDE_8KHZ:I = 0x84

.field private static final D_COMP_MAX:I = 0x93

.field private static final D_COMP_MIN:I = 0xd

.field private static final D_COMP_STRIDE:I = 0x86

.field private static final MAX_LAG_4KHZ:I = 0x48

.field private static final MAX_LAG_8KHZ:I = 0x8f

.field private static final MIN_LAG_4KHZ:I = 0x8

.field private static final MIN_LAG_8KHZ:I = 0x10

.field private static final SCRATCH_SIZE:I = 0x16

.field private static final SF_LENGTH_4KHZ:I = 0x14

.field private static final SF_LENGTH_8KHZ:I = 0x28


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static silk_P_Ana_calc_corr_st3([Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;[SIIII)V
    .locals 18

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v0, p5

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 630
    :goto_0
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 631
    :goto_1
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v2, 0x4

    if-ne v7, v2, :cond_2

    .line 634
    sget-object v2, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Lag_range_stage3:[[[B

    aget-object v2, v2, v0

    .line 635
    sget-object v3, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage3:[[B

    .line 636
    sget-object v4, Lio/github/jaredmdobson/concentus/SilkTables;->silk_nb_cbk_searchs_stage3:[B

    aget-byte v0, v4, v0

    move v10, v0

    :goto_2
    move-object v11, v2

    move-object v12, v3

    goto :goto_4

    :cond_2
    if-ne v7, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 638
    :goto_3
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 639
    sget-object v2, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Lag_range_stage3_10_ms:[[B

    .line 640
    sget-object v3, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage3_10_ms:[[B

    const/16 v0, 0xc

    const/16 v10, 0xc

    goto :goto_2

    :goto_4
    const/16 v13, 0x16

    .line 643
    new-array v14, v13, [I

    .line 644
    new-array v4, v13, [I

    .line 646
    invoke-static {v5, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    move v1, v0

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v7, :cond_b

    .line 652
    aget-object v0, v11, v15

    aget-byte v16, v0, v8

    .line 653
    aget-byte v0, v0, v9

    sub-int v2, v0, v16

    add-int/lit8 v6, v2, 0x1

    if-gt v6, v13, :cond_4

    const/4 v2, 0x1

    goto :goto_6

    :cond_4
    const/4 v2, 0x0

    .line 654
    :goto_6
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    sub-int v2, v1, p2

    sub-int v3, v2, v0

    move-object/from16 v2, p1

    move v8, v0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    .line 655
    invoke-static/range {v0 .. v6}, Lio/github/jaredmdobson/concentus/CeltPitchXCorr;->pitch_xcorr([SI[SI[III)I

    move/from16 v0, v16

    const/4 v2, 0x0

    :goto_7
    if-gt v0, v8, :cond_6

    if-ge v2, v13, :cond_5

    const/4 v3, 0x1

    goto :goto_8

    :cond_5
    const/4 v3, 0x0

    .line 657
    :goto_8
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    sub-int v3, v8, v0

    .line 658
    aget v3, v4, v3

    aput v3, v14, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 662
    :cond_6
    aget-object v0, v11, v15

    aget-byte v0, v0, v17

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v10, :cond_a

    .line 666
    aget-object v5, v12, v15

    aget-byte v5, v5, v3

    sub-int/2addr v5, v0

    const/4 v6, 0x0

    :goto_a
    const/4 v8, 0x5

    if-ge v6, v8, :cond_9

    add-int v8, v5, v6

    if-ge v8, v13, :cond_7

    const/16 v16, 0x1

    goto :goto_b

    :cond_7
    const/16 v16, 0x0

    .line 668
    :goto_b
    invoke-static/range {v16 .. v16}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ge v8, v2, :cond_8

    const/16 v16, 0x1

    goto :goto_c

    :cond_8
    const/16 v16, 0x0

    .line 669
    :goto_c
    invoke-static/range {v16 .. v16}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    move-object/from16 v9, p0

    .line 670
    invoke-static {v9, v15, v3, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGet([Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;III)Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    move-result-object v13

    iget-object v13, v13, Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;->Values:[I

    aget v8, v14, v8

    aput v8, v13, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    const/16 v13, 0x16

    goto :goto_a

    :cond_9
    move-object/from16 v9, p0

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x1

    const/16 v13, 0x16

    goto :goto_9

    :cond_a
    move-object/from16 v9, p0

    add-int v1, v1, p3

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, p3

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v13, 0x16

    goto/16 :goto_5

    :cond_b
    return-void
.end method

.method static silk_P_Ana_calc_energy_st3([Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;[SIIII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 703
    :goto_0
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v7, 0x2

    if-gt v4, v7, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 704
    :goto_1
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v8, 0x4

    if-ne v3, v8, :cond_2

    .line 707
    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Lag_range_stage3:[[[B

    aget-object v8, v8, v4

    .line 708
    sget-object v9, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage3:[[B

    .line 709
    sget-object v10, Lio/github/jaredmdobson/concentus/SilkTables;->silk_nb_cbk_searchs_stage3:[B

    aget-byte v4, v10, v4

    goto :goto_3

    :cond_2
    if-ne v3, v7, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 711
    :goto_2
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 712
    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Lag_range_stage3_10_ms:[[B

    .line 713
    sget-object v9, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage3_10_ms:[[B

    const/16 v4, 0xc

    :goto_3
    const/16 v10, 0x16

    .line 716
    new-array v11, v10, [I

    .line 718
    invoke-static {v2, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v3, :cond_e

    .line 723
    aget-object v13, v8, v12

    aget-byte v13, v13, v5

    add-int v13, p2, v13

    sub-int v13, v7, v13

    .line 724
    invoke-static {v1, v13, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_inner_prod_self([SII)I

    move-result v14

    if-ltz v14, :cond_4

    const/4 v15, 0x1

    goto :goto_5

    :cond_4
    const/4 v15, 0x0

    .line 725
    :goto_5
    invoke-static {v15}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 726
    aput v14, v11, v5

    .line 729
    aget-object v15, v8, v12

    aget-byte v16, v15, v6

    aget-byte v15, v15, v5

    sub-int v16, v16, v15

    add-int/lit8 v15, v16, 0x1

    const/4 v5, 0x1

    const/16 v16, 0x0

    :goto_6
    if-ge v5, v15, :cond_8

    add-int v17, v13, v2

    sub-int v17, v17, v5

    .line 732
    aget-short v10, v1, v17

    invoke-static {v10, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v10

    sub-int/2addr v14, v10

    if-ltz v14, :cond_5

    const/4 v10, 0x1

    goto :goto_7

    :cond_5
    const/4 v10, 0x0

    .line 733
    :goto_7
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    sub-int v10, v13, v5

    .line 736
    aget-short v10, v1, v10

    invoke-static {v10, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v10

    invoke-static {v14, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_SAT32(II)I

    move-result v14

    if-ltz v14, :cond_6

    const/4 v10, 0x1

    goto :goto_8

    :cond_6
    const/4 v10, 0x0

    .line 737
    :goto_8
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v10, 0x16

    if-ge v6, v10, :cond_7

    const/4 v10, 0x1

    goto :goto_9

    :cond_7
    const/4 v10, 0x0

    .line 738
    :goto_9
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 739
    aput v14, v11, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    const/16 v10, 0x16

    goto :goto_6

    .line 743
    :cond_8
    aget-object v5, v8, v12

    aget-byte v5, v5, v16

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v4, :cond_d

    .line 747
    aget-object v13, v9, v12

    aget-byte v13, v13, v10

    sub-int/2addr v13, v5

    const/4 v14, 0x0

    :goto_b
    const/4 v15, 0x5

    if-ge v14, v15, :cond_c

    add-int v15, v13, v14

    const/16 v1, 0x16

    if-ge v15, v1, :cond_9

    const/16 v17, 0x1

    goto :goto_c

    :cond_9
    const/16 v17, 0x0

    .line 749
    :goto_c
    invoke-static/range {v17 .. v17}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ge v15, v6, :cond_a

    const/16 v17, 0x1

    goto :goto_d

    :cond_a
    const/16 v17, 0x0

    .line 750
    :goto_d
    invoke-static/range {v17 .. v17}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 751
    invoke-static {v0, v12, v10, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGet([Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;III)Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    move-result-object v1

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;->Values:[I

    aget v15, v11, v15

    aput v15, v1, v14

    .line 752
    invoke-static {v0, v12, v10, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGet([Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;III)Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    move-result-object v1

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;->Values:[I

    aget v1, v1, v14

    if-ltz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_e

    :cond_b
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_b

    :cond_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto :goto_a

    :cond_d
    add-int/2addr v7, v2

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v10, 0x16

    goto/16 :goto_4

    :cond_e
    return-void
.end method

.method static silk_pitch_analysis_core([S[ILio/github/jaredmdobson/concentus/BoxedValueShort;Lio/github/jaredmdobson/concentus/BoxedValueByte;Lio/github/jaredmdobson/concentus/BoxedValueInt;IIIIII)I
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v14, p9

    move/from16 v13, p10

    const/4 v9, 0x6

    .line 78
    new-array v10, v9, [I

    const/16 v11, 0x18

    .line 89
    new-array v12, v11, [I

    const/16 v15, 0xb

    .line 94
    new-array v11, v15, [I

    const/16 v15, 0xc

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    if-eq v8, v15, :cond_1

    const/16 v9, 0x10

    const/16 v21, 0x8

    if-ne v8, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    const/16 v21, 0x8

    :goto_0
    const/4 v9, 0x1

    .line 107
    :goto_1
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ltz v14, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 110
    :goto_2
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v9, 0x2

    if-gt v14, v9, :cond_3

    const/16 v22, 0x1

    goto :goto_3

    :cond_3
    const/16 v22, 0x0

    .line 111
    :goto_3
    invoke-static/range {v22 .. v22}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ltz v6, :cond_4

    const/high16 v15, 0x10000

    if-gt v6, v15, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 113
    :goto_4
    invoke-static {v15}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ltz v7, :cond_5

    const/16 v15, 0x2000

    if-gt v7, v15, :cond_5

    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    .line 114
    :goto_5
    invoke-static {v15}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    mul-int/lit8 v15, v13, 0x5

    const/16 v9, 0x14

    add-int/2addr v15, v9

    mul-int v9, v15, v8

    move-object/from16 v25, v11

    mul-int/lit8 v11, v15, 0x4

    mul-int/lit8 v15, v15, 0x8

    mul-int/lit8 v26, v8, 0x5

    mul-int/lit8 v7, v8, 0x2

    move/from16 v27, v7

    mul-int/lit8 v7, v8, 0x12

    move/from16 v28, v7

    add-int/lit8 v7, v28, -0x1

    move/from16 v29, v7

    .line 125
    new-array v7, v15, [S

    const/16 v5, 0x10

    if-ne v8, v5, :cond_6

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 127
    invoke-static {v10, v6, v5}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 128
    invoke-static {v10, v7, v0, v9}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_down2([I[S[SI)V

    :goto_6
    const/4 v5, 0x2

    goto :goto_8

    :cond_6
    const/16 v5, 0xc

    const/4 v6, 0x0

    if-ne v8, v5, :cond_7

    const/4 v5, 0x6

    .line 130
    invoke-static {v10, v6, v5}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 131
    invoke-static {v10, v7, v0, v9}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_down2_3([I[S[SI)V

    goto :goto_6

    :cond_7
    const/16 v5, 0x8

    if-ne v8, v5, :cond_8

    const/4 v5, 0x1

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    .line 133
    :goto_7
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 134
    invoke-static {v0, v6, v7, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 138
    :goto_8
    invoke-static {v10, v6, v5}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 140
    new-array v5, v11, [S

    .line 141
    invoke-static {v10, v5, v7, v15}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_down2([I[S[SI)V

    add-int/lit8 v6, v11, -0x1

    :goto_9
    if-lez v6, :cond_9

    .line 145
    aget-short v10, v5, v6

    add-int/lit8 v18, v6, -0x1

    move/from16 v30, v6

    aget-short v6, v5, v18

    invoke-static {v10, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_SAT16(SS)S

    move-result v6

    aput-short v6, v5, v30

    add-int/lit8 v6, v30, -0x1

    goto :goto_9

    .line 156
    :cond_9
    new-instance v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 157
    new-instance v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v0, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 158
    invoke-static {v6, v0, v5, v11}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SI)V

    .line 159
    iget v10, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 160
    iget v10, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move-object/from16 v30, v5

    if-lez v10, :cond_a

    const/4 v5, 0x1

    .line 163
    invoke-static {v10, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v10

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v11, :cond_a

    move/from16 v18, v5

    .line 165
    aget-short v5, v30, v18

    invoke-static {v5, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT16(SI)S

    move-result v5

    aput-short v5, v30, v18

    add-int/lit8 v5, v18, 0x1

    goto :goto_a

    :cond_a
    mul-int/lit16 v5, v13, 0x84

    .line 174
    new-array v10, v5, [S

    const/16 v11, 0x41

    move/from16 v18, v9

    .line 175
    new-array v9, v11, [I

    shr-int/lit8 v11, v13, 0x1

    move-object/from16 v34, v9

    mul-int/lit8 v9, v11, 0x41

    const/4 v8, 0x0

    .line 176
    invoke-static {v10, v8, v9}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    const/16 v8, 0x14

    const/4 v9, 0x2

    .line 178
    invoke-static {v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v24

    move/from16 v31, v24

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v11, :cond_c

    add-int/lit8 v8, v31, -0x8

    add-int/lit8 v33, v31, -0x48

    const/16 v35, 0x28

    const/16 v36, 0x41

    move-object/from16 v32, v30

    .line 183
    invoke-static/range {v30 .. v36}, Lio/github/jaredmdobson/concentus/CeltPitchXCorr;->pitch_xcorr([SI[SI[III)I

    move/from16 v32, v11

    move-object/from16 v11, v30

    move/from16 v30, v5

    move/from16 v5, v31

    const/16 v31, 0x40

    move-object/from16 v33, v7

    .line 186
    aget v7, v34, v31

    move-object/from16 v35, v0

    move/from16 v31, v15

    const/16 v15, 0x28

    .line 187
    invoke-static {v11, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_inner_prod_self([SII)I

    move-result v0

    move/from16 v36, v5

    .line 188
    invoke-static {v11, v8, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_inner_prod_self([SII)I

    move-result v5

    invoke-static {v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v0

    const/16 v5, 0xfa0

    .line 189
    invoke-static {v15, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    invoke-static {v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v0

    const/16 v5, 0xe

    .line 192
    invoke-static {v7, v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v7

    int-to-short v5, v7

    const/16 v7, 0x41

    const/4 v15, 0x0

    .line 191
    invoke-static {v10, v9, v15, v7, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([SIIIS)V

    const/16 v5, 0x9

    :goto_c
    const/16 v7, 0x48

    if-gt v5, v7, :cond_b

    add-int/lit8 v15, v8, -0x1

    rsub-int/lit8 v38, v5, 0x48

    .line 199
    aget v7, v34, v38

    move/from16 v38, v5

    .line 202
    aget-short v5, v11, v15

    .line 203
    invoke-static {v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    add-int/lit8 v8, v8, 0x27

    aget-short v8, v11, v8

    .line 204
    invoke-static {v8, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v8

    sub-int/2addr v5, v8

    .line 202
    invoke-static {v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v0

    add-int/lit8 v5, v38, -0x8

    const/16 v8, 0xe

    .line 207
    invoke-static {v7, v0, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v7

    int-to-short v7, v7

    const/16 v8, 0x41

    .line 206
    invoke-static {v10, v9, v5, v8, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([SIIIS)V

    add-int/lit8 v5, v38, 0x1

    move v8, v15

    goto :goto_c

    :cond_b
    add-int/lit8 v0, v36, 0x28

    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v30

    move/from16 v15, v31

    move-object/from16 v7, v33

    move/from16 v31, v0

    move-object/from16 v30, v11

    move/from16 v11, v32

    move-object/from16 v0, v35

    goto/16 :goto_b

    :cond_c
    move-object/from16 v35, v0

    move/from16 v30, v5

    move-object/from16 v33, v7

    move/from16 v31, v15

    const/4 v0, 0x4

    if-ne v13, v0, :cond_d

    const/16 v8, 0x48

    :goto_d
    const/16 v5, 0x8

    if-lt v8, v5, :cond_e

    add-int/lit8 v5, v8, -0x8

    const/16 v7, 0x41

    const/4 v15, 0x0

    .line 217
    invoke-static {v10, v15, v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGet([SIII)S

    move-result v9

    const/4 v11, 0x1

    .line 218
    invoke-static {v10, v11, v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGet([SIII)S

    move-result v15

    add-int/2addr v9, v15

    neg-int v7, v8

    .line 220
    invoke-static {v7, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    invoke-static {v9, v9, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    int-to-short v7, v7

    .line 222
    aput-short v7, v10, v5

    add-int/lit8 v8, v8, -0x1

    goto :goto_d

    :cond_d
    const/16 v8, 0x48

    :goto_e
    const/16 v5, 0x8

    if-lt v8, v5, :cond_e

    add-int/lit8 v5, v8, -0x8

    .line 228
    aget-short v7, v10, v5

    const/4 v11, 0x1

    invoke-static {v7, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    neg-int v9, v8

    .line 230
    invoke-static {v9, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    invoke-static {v7, v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    int-to-short v7, v7

    .line 232
    aput-short v7, v10, v5

    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    :cond_e
    const/4 v11, 0x1

    .line 238
    invoke-static {v0, v14, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v5

    mul-int/lit8 v7, v5, 0x3

    const/16 v8, 0x18

    if-gt v7, v8, :cond_f

    const/4 v7, 0x1

    goto :goto_f

    :cond_f
    const/4 v7, 0x0

    .line 239
    :goto_f
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v7, 0x41

    .line 240
    invoke-static {v10, v12, v7, v5}, Lio/github/jaredmdobson/concentus/Sort;->silk_insertion_sort_decreasing_int16([S[III)V

    const/4 v15, 0x0

    .line 243
    aget-short v7, v10, v15

    const/16 v8, 0xccd

    if-ge v7, v8, :cond_10

    .line 246
    invoke-static {v1, v15, v13}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 247
    iput v15, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 248
    iput-short v15, v2, Lio/github/jaredmdobson/concentus/BoxedValueShort;->Val:S

    .line 249
    iput-byte v15, v3, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    const/4 v11, 0x1

    return v11

    :cond_10
    move/from16 v8, p6

    const/4 v11, 0x1

    .line 254
    invoke-static {v8, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v7

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v5, :cond_12

    .line 257
    aget-short v9, v10, v8

    if-le v9, v7, :cond_11

    .line 258
    aget v9, v12, v8

    const/16 v21, 0x8

    add-int/lit8 v9, v9, 0x8

    invoke-static {v9, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    aput v9, v12, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x1

    goto :goto_10

    :cond_11
    move v5, v8

    :cond_12
    if-lez v5, :cond_13

    const/4 v7, 0x1

    goto :goto_11

    :cond_13
    const/4 v7, 0x0

    .line 264
    :goto_11
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v7, 0x86

    .line 266
    new-array v7, v7, [S

    const/16 v8, 0xd

    const/16 v9, 0xd

    :goto_12
    const/16 v11, 0x93

    if-ge v9, v11, :cond_14

    add-int/lit8 v11, v9, -0xd

    const/16 v20, 0x0

    .line 268
    aput-short v20, v7, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_14
    const/4 v9, 0x0

    :goto_13
    if-ge v9, v5, :cond_15

    .line 271
    aget v11, v12, v9

    sub-int/2addr v11, v8

    const/16 v19, 0x1

    aput-short v19, v7, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_15
    const/16 v5, 0x92

    :goto_14
    const/16 v9, 0x10

    if-lt v5, v9, :cond_16

    add-int/lit8 v8, v5, -0xd

    .line 276
    aget-short v9, v7, v8

    add-int/lit8 v11, v5, -0xe

    aget-short v11, v7, v11

    add-int/lit8 v15, v5, -0xf

    aget-short v15, v7, v15

    add-int/2addr v11, v15

    int-to-short v11, v11

    add-int/2addr v9, v11

    int-to-short v9, v9

    aput-short v9, v7, v8

    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    :cond_16
    const/4 v5, 0x0

    const/16 v8, 0x10

    :goto_15
    const/16 v9, 0x90

    if-ge v8, v9, :cond_18

    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v11, v8, -0xc

    .line 281
    aget-short v11, v7, v11

    if-lez v11, :cond_17

    .line 282
    aput v8, v12, v5

    add-int/lit8 v5, v5, 0x1

    :cond_17
    move v8, v9

    goto :goto_15

    :cond_18
    const/16 v8, 0x92

    :goto_16
    const/16 v9, 0x10

    if-lt v8, v9, :cond_19

    add-int/lit8 v9, v8, -0xd

    .line 289
    aget-short v11, v7, v9

    add-int/lit8 v15, v8, -0xe

    aget-short v15, v7, v15

    add-int/lit8 v16, v8, -0xf

    aget-short v16, v7, v16

    add-int v15, v15, v16

    add-int/lit8 v16, v8, -0x10

    aget-short v16, v7, v16

    add-int v15, v15, v16

    int-to-short v15, v15

    add-int/2addr v11, v15

    int-to-short v11, v11

    aput-short v11, v7, v9

    add-int/lit8 v8, v8, -0x1

    goto :goto_16

    :cond_19
    const/16 v8, 0x10

    const/4 v9, 0x0

    :goto_17
    const/16 v11, 0x93

    if-ge v8, v11, :cond_1b

    add-int/lit8 v11, v8, -0xd

    .line 294
    aget-short v11, v7, v11

    if-lez v11, :cond_1a

    add-int/lit8 v11, v8, -0x2

    int-to-short v11, v11

    .line 295
    aput-short v11, v7, v9

    add-int/lit8 v9, v9, 0x1

    :cond_1a
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_1b
    const/4 v15, 0x0

    .line 312
    iput v15, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move-object/from16 v8, v35

    .line 313
    iput v15, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move/from16 v15, v31

    move-object/from16 v11, v33

    .line 314
    invoke-static {v6, v8, v11, v15}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SI)V

    .line 315
    iget v0, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 316
    iget v0, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move-object/from16 v31, v7

    if-lez v0, :cond_1c

    const/4 v7, 0x1

    .line 319
    invoke-static {v0, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v15, :cond_1c

    move/from16 v32, v7

    .line 321
    aget-short v7, v11, v32

    invoke-static {v7, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT16(SI)S

    move-result v7

    aput-short v7, v11, v32

    add-int/lit8 v7, v32, 0x1

    goto :goto_18

    :cond_1c
    move/from16 v0, v30

    const/4 v15, 0x0

    .line 331
    invoke-static {v10, v15, v0}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    const/16 v0, 0xa0

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v13, :cond_1f

    move-object/from16 v30, v12

    const/16 v15, 0x28

    .line 337
    invoke-static {v11, v0, v11, v0, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_inner_prod([SI[SII)I

    move-result v12

    const/4 v15, 0x1

    invoke-static {v12, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v12

    const/4 v15, 0x0

    :goto_1a
    if-ge v15, v9, :cond_1e

    .line 339
    aget-short v32, v31, v15

    move/from16 v33, v9

    sub-int v9, v0, v32

    move/from16 v34, v15

    const/16 v14, 0x28

    .line 343
    invoke-static {v11, v0, v11, v9, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_inner_prod([SI[SII)I

    move-result v15

    if-lez v15, :cond_1d

    .line 345
    invoke-static {v11, v9, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_inner_prod_self([SII)I

    move-result v9

    add-int/lit8 v14, v32, -0xe

    .line 348
    invoke-static {v12, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v9

    move/from16 v35, v0

    const/16 v0, 0xe

    .line 347
    invoke-static {v15, v9, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v9

    int-to-short v0, v9

    const/16 v9, 0x84

    .line 346
    invoke-static {v10, v7, v14, v9, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([SIIIS)V

    goto :goto_1b

    :cond_1d
    move/from16 v35, v0

    const/16 v9, 0x84

    add-int/lit8 v0, v32, -0xe

    const/4 v15, 0x0

    .line 353
    invoke-static {v10, v7, v0, v9, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([SIIIS)V

    :goto_1b
    add-int/lit8 v15, v34, 0x1

    move/from16 v14, p9

    move/from16 v9, v33

    move/from16 v0, v35

    goto :goto_1a

    :cond_1e
    move/from16 v35, v0

    move/from16 v33, v9

    add-int/lit8 v0, v35, 0x28

    add-int/lit8 v7, v7, 0x1

    move/from16 v14, p9

    move-object/from16 v12, v30

    goto :goto_19

    :cond_1f
    move-object/from16 v30, v12

    const/4 v0, 0x3

    if-lez p5, :cond_22

    move/from16 v7, p8

    const/16 v9, 0xc

    if-ne v7, v9, :cond_20

    move/from16 v9, p5

    const/4 v11, 0x1

    .line 371
    invoke-static {v9, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    invoke-static {v9, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v9

    goto :goto_1c

    :cond_20
    move/from16 v9, p5

    const/4 v11, 0x1

    const/16 v12, 0x10

    if-ne v7, v12, :cond_21

    .line 373
    invoke-static {v9, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    .line 375
    :cond_21
    :goto_1c
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v11

    goto :goto_1d

    :cond_22
    move/from16 v9, p5

    move/from16 v7, p8

    const/4 v11, 0x0

    .line 379
    :goto_1d
    invoke-static/range {p7 .. p7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v12

    move/from16 v14, p7

    if-ne v14, v12, :cond_23

    const/4 v12, 0x1

    goto :goto_1e

    :cond_23
    const/4 v12, 0x0

    :goto_1e
    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v12, 0x4

    if-ne v13, v12, :cond_24

    .line 382
    sget-object v12, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage2:[[B

    const/16 v15, 0x8

    if-ne v7, v15, :cond_25

    if-lez p9, :cond_25

    const/16 v15, 0xb

    goto :goto_1f

    .line 390
    :cond_24
    sget-object v12, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage2_10_ms:[[B

    :cond_25
    const/4 v15, 0x3

    :goto_1f
    const/high16 v17, -0x80000000

    move/from16 v32, v9

    move/from16 v33, v11

    move-object/from16 v34, v12

    const/4 v0, 0x0

    const/high16 v9, -0x80000000

    const/4 v11, -0x1

    const/high16 v12, -0x80000000

    const/16 v35, 0x0

    :goto_20
    if-ge v0, v5, :cond_30

    .line 395
    aget v36, v30, v0

    move/from16 v37, v0

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v15, :cond_27

    const/16 v20, 0x0

    .line 397
    aput v20, v25, v0

    move/from16 v38, v0

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v13, :cond_26

    .line 401
    aget-object v39, v34, v0

    aget-byte v39, v39, v38

    add-int v39, v36, v39

    .line 402
    aget v41, v25, v38

    move/from16 v42, v5

    const/16 v40, 0xe

    add-int/lit8 v5, v39, -0xe

    move-object/from16 v39, v8

    const/16 v8, 0x84

    .line 403
    invoke-static {v10, v0, v5, v8}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGet([SIII)S

    move-result v5

    add-int v41, v41, v5

    aput v41, v25, v38

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v39

    move/from16 v5, v42

    goto :goto_22

    :cond_26
    move/from16 v42, v5

    move-object/from16 v39, v8

    const/16 v8, 0x84

    add-int/lit8 v0, v38, 0x1

    move-object/from16 v8, v39

    goto :goto_21

    :cond_27
    move/from16 v42, v5

    move-object/from16 v39, v8

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/high16 v8, -0x80000000

    :goto_23
    if-ge v5, v15, :cond_29

    move/from16 v38, v0

    .line 412
    aget v0, v25, v5

    if-le v0, v8, :cond_28

    move v8, v0

    move v0, v5

    goto :goto_24

    :cond_28
    move/from16 v0, v38

    :goto_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_29
    move/from16 v38, v0

    .line 419
    invoke-static/range {v36 .. v36}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v0

    .line 421
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v5

    if-ne v0, v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_25

    :cond_2a
    const/4 v5, 0x0

    :goto_25
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    mul-int/lit16 v5, v13, 0x666

    move-object/from16 v41, v10

    .line 422
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v10

    if-ne v5, v10, :cond_2b

    const/4 v10, 0x1

    goto :goto_26

    :cond_2b
    const/4 v10, 0x0

    :goto_26
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 423
    invoke-static {v5, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v10

    move/from16 v43, v0

    const/4 v0, 0x7

    invoke-static {v10, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    sub-int v0, v8, v0

    .line 427
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v10

    if-ne v5, v10, :cond_2c

    const/4 v10, 0x1

    goto :goto_27

    :cond_2c
    const/4 v10, 0x0

    :goto_27
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-lez v32, :cond_2e

    sub-int v10, v43, v33

    move/from16 v43, v0

    .line 430
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v0

    if-ne v10, v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_28

    :cond_2d
    const/4 v0, 0x0

    :goto_28
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 431
    invoke-static {v10, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v0

    const/4 v10, 0x7

    invoke-static {v0, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    .line 432
    iget v10, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v5, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    const/16 v10, 0xf

    invoke-static {v5, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    .line 434
    invoke-static {v5, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v5

    add-int/lit8 v0, v0, 0x40

    invoke-static {v5, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v0

    sub-int v0, v43, v0

    goto :goto_29

    :cond_2e
    move/from16 v43, v0

    :goto_29
    if-le v0, v9, :cond_2f

    .line 440
    invoke-static {v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    if-le v8, v5, :cond_2f

    sget-object v5, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage2:[[B

    const/16 v20, 0x0

    aget-object v5, v5, v20

    aget-byte v5, v5, v38

    const/16 v10, 0x10

    if-gt v5, v10, :cond_2f

    move v9, v0

    move v12, v8

    move/from16 v11, v36

    move/from16 v35, v38

    :cond_2f
    add-int/lit8 v0, v37, 0x1

    move-object/from16 v8, v39

    move-object/from16 v10, v41

    move/from16 v5, v42

    goto/16 :goto_20

    :cond_30
    move-object/from16 v39, v8

    const/4 v0, -0x1

    if-ne v11, v0, :cond_31

    const/4 v15, 0x0

    .line 451
    invoke-static {v1, v15, v13}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 452
    iput v15, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 453
    iput-short v15, v2, Lio/github/jaredmdobson/concentus/BoxedValueShort;->Val:S

    .line 454
    iput-byte v15, v3, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    const/16 v19, 0x1

    return v19

    :cond_31
    const/4 v15, 0x0

    .line 460
    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v0

    const/4 v5, 0x2

    invoke-static {v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    iput v0, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 461
    iget v0, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-ltz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_2a

    :cond_32
    const/4 v0, 0x0

    :goto_2a
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v5, 0x8

    if-le v7, v5, :cond_44

    .line 473
    iput v15, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move-object/from16 v8, v39

    .line 474
    iput v15, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move-object/from16 v0, p0

    move/from16 v4, v18

    .line 475
    invoke-static {v6, v8, v0, v4}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SI)V

    .line 476
    iget v5, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 477
    iget v5, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-lez v5, :cond_34

    .line 480
    new-array v6, v4, [S

    const/4 v8, 0x1

    .line 482
    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    const/4 v8, 0x0

    :goto_2b
    if-ge v8, v4, :cond_33

    .line 484
    aget-short v9, v0, v8

    invoke-static {v9, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT16(SI)S

    move-result v9

    aput-short v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    :cond_33
    move-object v10, v6

    goto :goto_2c

    :cond_34
    move-object v10, v0

    .line 494
    :goto_2c
    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v0

    if-ne v11, v0, :cond_35

    const/4 v6, 0x1

    goto :goto_2d

    :cond_35
    const/4 v6, 0x0

    :goto_2d
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v5, 0xc

    if-ne v7, v5, :cond_36

    const/4 v0, 0x3

    .line 496
    invoke-static {v11, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v0

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    :goto_2e
    move/from16 v4, v27

    move/from16 v6, v29

    goto :goto_2f

    :cond_36
    const/4 v0, 0x3

    const/4 v8, 0x1

    const/16 v9, 0x10

    if-ne v7, v9, :cond_37

    .line 498
    invoke-static {v11, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    goto :goto_2e

    .line 500
    :cond_37
    invoke-static {v11, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v0

    goto :goto_2e

    .line 503
    :goto_2f
    invoke-static {v0, v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT_int(III)I

    move-result v0

    add-int/lit8 v9, v0, -0x2

    .line 504
    invoke-static {v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v11

    add-int/lit8 v9, v0, 0x2

    .line 505
    invoke-static {v9, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v9

    const/4 v12, 0x0

    :goto_30
    if-ge v12, v13, :cond_38

    .line 514
    sget-object v14, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage2:[[B

    aget-object v14, v14, v12

    aget-byte v14, v14, v35

    const/16 v23, 0x2

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v0

    aput v14, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_30

    :cond_38
    const/4 v12, 0x4

    if-ne v13, v12, :cond_39

    .line 519
    sget-object v5, Lio/github/jaredmdobson/concentus/SilkTables;->silk_nb_cbk_searchs_stage3:[B

    aget-byte v5, v5, p9

    .line 520
    sget-object v12, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage3:[[B

    move-object/from16 v46, v12

    move v12, v5

    move-object/from16 v5, v46

    goto :goto_31

    .line 523
    :cond_39
    sget-object v12, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage3_10_ms:[[B

    move-object v5, v12

    const/16 v12, 0xc

    :goto_31
    mul-int v14, v13, v12

    .line 527
    new-array v8, v14, [Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    move/from16 v16, v9

    .line 528
    new-array v9, v14, [Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    :goto_32
    if-ge v15, v14, :cond_3a

    .line 530
    new-instance v18, Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    invoke-direct/range {v18 .. v18}, Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;-><init>()V

    aput-object v18, v8, v15

    .line 531
    new-instance v18, Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    invoke-direct/range {v18 .. v18}, Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;-><init>()V

    aput-object v18, v9, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_32

    :cond_3a
    move/from16 v14, p9

    move/from16 v45, v12

    move/from16 v44, v16

    move/from16 v12, v26

    const/4 v15, 0x1

    const/16 v20, 0x0

    const/16 v24, 0x14

    .line 533
    invoke-static/range {v9 .. v14}, Lio/github/jaredmdobson/concentus/PitchAnalysisCore;->silk_P_Ana_calc_corr_st3([Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;[SIIII)V

    move-object/from16 v46, v9

    move-object v9, v8

    move-object/from16 v8, v46

    .line 534
    invoke-static/range {v9 .. v14}, Lio/github/jaredmdobson/concentus/PitchAnalysisCore;->silk_P_Ana_calc_energy_st3([Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;[SIIII)V

    .line 537
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v14

    if-ne v0, v14, :cond_3b

    const/4 v14, 0x1

    goto :goto_33

    :cond_3b
    const/4 v14, 0x0

    :goto_33
    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v14, 0x666

    .line 538
    invoke-static {v14, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v14

    mul-int/lit8 v7, v7, 0x14

    mul-int v12, v12, v13

    .line 542
    invoke-static {v10, v7, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_inner_prod_self([SII)I

    move-result v7

    invoke-static {v7, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    move v12, v11

    move/from16 v15, v44

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_34
    if-gt v12, v15, :cond_42

    move/from16 p0, v0

    move/from16 v16, v10

    move/from16 v0, v17

    move/from16 v1, v45

    const/4 v10, 0x0

    :goto_35
    if-ge v10, v1, :cond_41

    move-object/from16 p4, v5

    move/from16 p5, v7

    move/from16 p6, v11

    const/4 v5, 0x0

    move/from16 v11, p5

    const/4 v7, 0x0

    :goto_36
    if-ge v5, v13, :cond_3d

    move/from16 v17, v12

    .line 549
    invoke-static {v8, v5, v10, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGet([Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;III)Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    move-result-object v12

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;->Values:[I

    aget v12, v12, p6

    .line 548
    invoke-static {v7, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    .line 552
    invoke-static {v9, v5, v10, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGet([Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;III)Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    move-result-object v12

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/PitchAnalysisCore$silk_pe_stage3_vals;->Values:[I

    aget v12, v12, p6

    .line 551
    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v11

    if-ltz v11, :cond_3c

    const/4 v12, 0x1

    goto :goto_37

    :cond_3c
    const/4 v12, 0x0

    .line 554
    :goto_37
    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v5, v5, 0x1

    move/from16 v12, v17

    goto :goto_36

    :cond_3d
    move/from16 v17, v12

    if-lez v7, :cond_3f

    const/16 v5, 0xe

    .line 557
    invoke-static {v7, v11, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v7

    .line 560
    invoke-static {v14, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v11

    rsub-int v11, v11, 0x7fff

    .line 562
    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v12

    if-ne v11, v12, :cond_3e

    const/4 v12, 0x1

    goto :goto_38

    :cond_3e
    const/4 v12, 0x0

    :goto_38
    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 563
    invoke-static {v7, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v7

    goto :goto_39

    :cond_3f
    const/16 v5, 0xe

    const/4 v7, 0x0

    :goto_39
    if-le v7, v0, :cond_40

    .line 569
    sget-object v11, Lio/github/jaredmdobson/concentus/SilkTables;->silk_CB_lags_stage3:[[B

    aget-object v11, v11, v20

    aget-byte v11, v11, v10

    add-int v12, v17, v11

    if-gt v12, v6, :cond_40

    move/from16 v16, v10

    move/from16 v0, v17

    goto :goto_3a

    :cond_40
    move v7, v0

    move/from16 v0, p0

    :goto_3a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, p4

    move/from16 v11, p6

    move/from16 p0, v0

    move v0, v7

    move/from16 v12, v17

    move/from16 v7, p5

    goto :goto_35

    :cond_41
    move-object/from16 p4, v5

    move/from16 p5, v7

    move/from16 p6, v11

    move/from16 v17, v12

    const/16 v5, 0xe

    add-int/lit8 v11, p6, 0x1

    add-int/lit8 v12, v17, 0x1

    move-object/from16 v5, p4

    move/from16 v17, v0

    move/from16 v45, v1

    move/from16 v10, v16

    move/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_34

    :cond_42
    move-object/from16 p4, v5

    const/4 v9, 0x0

    :goto_3b
    if-ge v9, v13, :cond_43

    .line 579
    aget-object v1, p4, v9

    aget-byte v1, v1, v10

    add-int/2addr v1, v0

    aput v1, p1, v9

    move/from16 v5, v28

    .line 580
    invoke-static {v1, v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result v1

    aput v1, p1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    :cond_43
    sub-int/2addr v0, v4

    int-to-short v0, v0

    .line 582
    iput-short v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueShort;->Val:S

    int-to-byte v0, v10

    .line 583
    iput-byte v0, v3, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    goto :goto_3d

    :cond_44
    const/16 v20, 0x0

    const/4 v9, 0x0

    :goto_3c
    if-ge v9, v13, :cond_45

    .line 588
    aget-object v0, v34, v9

    aget-byte v0, v0, v35

    add-int/2addr v0, v11

    aput v0, p1, v9

    const/16 v1, 0x90

    const/16 v5, 0x10

    .line 589
    invoke-static {v0, v5, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result v0

    aput v0, p1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    :cond_45
    const/16 v5, 0x10

    sub-int/2addr v11, v5

    int-to-short v0, v11

    .line 591
    iput-short v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueShort;->Val:S

    move/from16 v0, v35

    int-to-byte v0, v0

    .line 592
    iput-byte v0, v3, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    .line 594
    :goto_3d
    iget-short v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueShort;->Val:S

    if-ltz v0, :cond_46

    const/4 v9, 0x1

    goto :goto_3e

    :cond_46
    const/4 v9, 0x0

    :goto_3e
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v20
.end method
