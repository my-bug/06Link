.class Lio/github/jaredmdobson/concentus/Analysis;
.super Ljava/lang/Object;
.source "Analysis.java"


# static fields
.field private static final M_PI:D = 3.141592653

.field private static final NB_TONAL_SKIP_BANDS:I = 0x9

.field private static final cA:F = 0.43157974f

.field private static final cB:F = 0.678484f

.field private static final cC:F = 0.08595542f

.field private static final cE:F = 1.5707964f


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fast_atan2f(FF)F
    .locals 9

    .line 50
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->ABS16(F)F

    move-result v0

    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->ABS16(F)F

    move-result v1

    add-float/2addr v0, v1

    const v1, 0x3089705f    # 1.0E-9f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const v0, 0x5368d4a5    # 1.0E12f

    mul-float p1, p1, v0

    mul-float p0, p0, v0

    :cond_0
    mul-float v0, p1, p1

    mul-float v1, p0, p0

    const v2, 0x3edcf805

    const v3, 0x3db00965

    const v4, 0x3f2db121

    const v5, -0x4036f025

    const v6, 0x3fc90fdb

    const/4 v7, 0x0

    cmpg-float v8, v0, v1

    if-gez v8, :cond_4

    mul-float v4, v4, v0

    add-float/2addr v4, v1

    mul-float v3, v3, v0

    add-float/2addr v3, v1

    mul-float v4, v4, v3

    cmpl-float v3, v4, v7

    if-eqz v3, :cond_2

    neg-float p1, p1

    mul-float p1, p1, p0

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    mul-float p1, p1, v1

    div-float/2addr p1, v4

    cmpg-float p0, p0, v7

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const v5, 0x3fc90fdb

    :goto_0
    add-float/2addr p1, v5

    return p1

    :cond_2
    cmpg-float p0, p0, v7

    if-gez p0, :cond_3

    return v5

    :cond_3
    return v6

    :cond_4
    mul-float v4, v4, v1

    add-float/2addr v4, v0

    mul-float v3, v3, v1

    add-float/2addr v3, v0

    mul-float v4, v4, v3

    cmpl-float v3, v4, v7

    if-eqz v3, :cond_7

    mul-float p1, p1, p0

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    mul-float v0, v0, p1

    div-float/2addr v0, v4

    cmpg-float p0, p0, v7

    if-gez p0, :cond_5

    const p0, -0x4036f025

    goto :goto_1

    :cond_5
    const p0, 0x3fc90fdb

    :goto_1
    add-float/2addr v0, p0

    cmpg-float p0, p1, v7

    if-gez p0, :cond_6

    goto :goto_2

    :cond_6
    const v5, 0x3fc90fdb

    :goto_2
    sub-float/2addr v0, v5

    return v0

    :cond_7
    cmpg-float v0, p0, v7

    if-gez v0, :cond_8

    const v0, -0x4036f025

    goto :goto_3

    :cond_8
    const v0, 0x3fc90fdb

    :goto_3
    mul-float p1, p1, p0

    cmpg-float p0, p1, v7

    if-gez p0, :cond_9

    goto :goto_4

    :cond_9
    const v5, 0x3fc90fdb

    :goto_4
    sub-float/2addr v0, v5

    return v0
.end method

.method static run_analysis(Lio/github/jaredmdobson/concentus/TonalityAnalysisState;Lio/github/jaredmdobson/concentus/CeltMode;[SIIIIIIIILio/github/jaredmdobson/concentus/AnalysisInfo;)V
    .locals 15

    move/from16 v0, p5

    move-object/from16 v1, p11

    if-eqz p2, :cond_1

    move/from16 v2, p9

    mul-int/lit16 v2, v2, 0xc3

    .line 558
    div-int/lit8 v2, v2, 0x64

    move/from16 v3, p4

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v2

    .line 560
    iget v3, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->analysis_offset:I

    sub-int v3, v2, v3

    .line 561
    iget v4, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->analysis_offset:I

    move v9, v4

    :cond_0
    const/16 v14, 0x1e0

    .line 563
    invoke-static {v14, v3}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v8

    move-object v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p10

    invoke-static/range {v4 .. v13}, Lio/github/jaredmdobson/concentus/Analysis;->tonality_analysis(Lio/github/jaredmdobson/concentus/TonalityAnalysisState;Lio/github/jaredmdobson/concentus/CeltMode;[SIIIIIII)V

    add-int/2addr v9, v14

    add-int/lit16 v3, v3, -0x1e0

    if-gtz v3, :cond_0

    .line 567
    iput v2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->analysis_offset:I

    .line 569
    iget v2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->analysis_offset:I

    sub-int/2addr v2, v0

    iput v2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->analysis_offset:I

    :cond_1
    const/4 v2, 0x0

    .line 572
    iput v2, v1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->valid:I

    .line 573
    invoke-static {p0, v1, v0}, Lio/github/jaredmdobson/concentus/Analysis;->tonality_get_info(Lio/github/jaredmdobson/concentus/TonalityAnalysisState;Lio/github/jaredmdobson/concentus/AnalysisInfo;I)V

    return-void
.end method

.method static tonality_analysis(Lio/github/jaredmdobson/concentus/TonalityAnalysisState;Lio/github/jaredmdobson/concentus/CeltMode;[SIIIIIII)V
    .locals 44

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 149
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->angle:[F

    .line 150
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->d_angle:[F

    .line 151
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->d2_angle:[F

    const/16 v5, 0x12

    .line 154
    new-array v6, v5, [F

    .line 155
    new-array v7, v5, [F

    const/16 v8, 0x8

    .line 156
    new-array v9, v8, [F

    const/16 v10, 0x19

    .line 157
    new-array v10, v10, [F

    const/4 v11, 0x2

    .line 166
    new-array v12, v11, [F

    .line 176
    iget v13, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->last_transition:I

    const/4 v14, 0x1

    add-int/2addr v13, v14

    iput v13, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->last_transition:I

    .line 177
    iget v13, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->count:I

    add-int/2addr v13, v14

    const/16 v15, 0x14

    invoke-static {v15, v13}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v13

    int-to-float v13, v13

    const/high16 v16, 0x3f800000    # 1.0f

    div-float v13, v16, v13

    const/16 v17, 0x14

    .line 178
    iget v15, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->count:I

    add-int/2addr v15, v14

    const/16 v18, 0x1

    const/16 v14, 0x32

    invoke-static {v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v14

    int-to-float v14, v14

    div-float v14, v16, v14

    .line 179
    iget v15, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->count:I

    add-int/lit8 v15, v15, 0x1

    const/16 v19, 0x2

    const/16 v11, 0x3e8

    invoke-static {v11, v15}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v11

    int-to-float v11, v11

    div-float v11, v16, v11

    .line 181
    iget v15, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->count:I

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v5, 0x4

    if-ge v15, v5, :cond_0

    .line 182
    iput v8, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_prob:F

    :cond_0
    move-object/from16 v15, p1

    .line 184
    iget-object v15, v15, Lio/github/jaredmdobson/concentus/CeltMode;->mdct:Lio/github/jaredmdobson/concentus/MDCTLookup;

    iget-object v15, v15, Lio/github/jaredmdobson/concentus/MDCTLookup;->kfft:[Lio/github/jaredmdobson/concentus/FFTState;

    const/high16 v22, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    aget-object v15, v15, v8

    .line 185
    iget v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->count:I

    const/16 v8, 0xf0

    if-nez v5, :cond_1

    .line 186
    iput v8, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem_fill:I

    .line 189
    :cond_1
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->inmem:[I

    iget v8, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem_fill:I

    move-object/from16 v33, v2

    iget v2, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem_fill:I

    move-object/from16 v34, v3

    const/16 v3, 0x2d0

    rsub-int v2, v2, 0x2d0

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v27

    move-object/from16 v23, p2

    move/from16 v24, p3

    move/from16 v28, p5

    move/from16 v29, p6

    move/from16 v30, p7

    move/from16 v31, p8

    move-object/from16 v25, v5

    move/from16 v26, v8

    invoke-static/range {v23 .. v31}, Lio/github/jaredmdobson/concentus/Downmix;->downmix_int([SI[IIIIIII)V

    .line 191
    iget v2, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem_fill:I

    add-int/2addr v2, v1

    if-ge v2, v3, :cond_2

    .line 192
    iget v2, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem_fill:I

    add-int/2addr v2, v1

    iput v2, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem_fill:I

    return-void

    .line 197
    :cond_2
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->info:[Lio/github/jaredmdobson/concentus/AnalysisInfo;

    iget v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->write_pos:I

    add-int/lit8 v8, v5, 0x1

    iput v8, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->write_pos:I

    aget-object v2, v2, v5

    .line 198
    iget v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->write_pos:I

    const/16 v8, 0xc8

    if-lt v5, v8, :cond_3

    .line 199
    iget v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->write_pos:I

    sub-int/2addr v5, v8

    iput v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->write_pos:I

    :cond_3
    const/16 v5, 0x3c0

    .line 202
    new-array v8, v5, [I

    .line 203
    new-array v5, v5, [I

    const/16 v3, 0xf0

    .line 204
    new-array v1, v3, [F

    move-object/from16 v25, v1

    .line 205
    new-array v1, v3, [F

    move-object/from16 v26, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_4

    .line 207
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusTables;->analysis_window:[F

    aget v3, v3, v1

    mul-int/lit8 v27, v1, 0x2

    move/from16 v28, v3

    .line 208
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->inmem:[I

    aget v3, v3, v1

    int-to-float v3, v3

    mul-float v3, v3, v28

    float-to-int v3, v3

    aput v3, v8, v27

    add-int/lit8 v27, v27, 0x1

    .line 209
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->inmem:[I

    const/16 v32, 0xf0

    add-int v29, v32, v1

    aget v3, v3, v29

    int-to-float v3, v3

    mul-float v3, v3, v28

    float-to-int v3, v3

    aput v3, v8, v27

    rsub-int v3, v1, 0x1df

    mul-int/lit8 v27, v3, 0x2

    move/from16 v29, v3

    .line 210
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->inmem:[I

    aget v3, v3, v29

    int-to-float v3, v3

    mul-float v3, v3, v28

    float-to-int v3, v3

    aput v3, v8, v27

    add-int/lit8 v27, v27, 0x1

    .line 211
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->inmem:[I

    move-object/from16 v29, v3

    rsub-int v3, v1, 0x2cf

    aget v3, v29, v3

    int-to-float v3, v3

    mul-float v3, v3, v28

    float-to-int v3, v3

    aput v3, v8, v27

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0xf0

    goto :goto_0

    .line 213
    :cond_4
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->inmem:[I

    const/16 v3, 0x1e0

    move-object/from16 v27, v4

    move-object/from16 v28, v6

    const/4 v4, 0x0

    const/16 v6, 0xf0

    invoke-static {v1, v3, v4, v6}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([IIII)V

    .line 215
    iget v1, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem_fill:I

    const/16 v3, 0x2d0

    rsub-int v1, v1, 0x2d0

    sub-int v39, p4, v1

    .line 216
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->inmem:[I

    move/from16 v4, p5

    add-int/2addr v3, v4

    iget v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem_fill:I

    sub-int v40, v3, v4

    const/16 v38, 0xf0

    move-object/from16 v35, p2

    move/from16 v36, p3

    move/from16 v41, p6

    move/from16 v42, p7

    move/from16 v43, p8

    move-object/from16 v37, v1

    invoke-static/range {v35 .. v43}, Lio/github/jaredmdobson/concentus/Downmix;->downmix_int([SI[IIIIIII)V

    move/from16 v1, v39

    add-int/2addr v1, v6

    .line 217
    iput v1, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem_fill:I

    .line 219
    invoke-static {v15, v8, v5}, Lio/github/jaredmdobson/concentus/KissFFT;->opus_fft(Lio/github/jaredmdobson/concentus/FFTState;[I[I)V

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v6, :cond_5

    mul-int/lit8 v3, v1, 0x2

    .line 226
    aget v4, v5, v3

    int-to-float v8, v4

    rsub-int v15, v1, 0x1e0

    mul-int/lit8 v15, v15, 0x2

    aget v6, v5, v15

    move/from16 v24, v1

    int-to-float v1, v6

    add-float/2addr v8, v1

    add-int/lit8 v3, v3, 0x1

    .line 227
    aget v1, v5, v3

    int-to-float v3, v1

    add-int/lit8 v15, v15, 0x1

    aget v15, v5, v15

    move/from16 v29, v3

    int-to-float v3, v15

    sub-float v3, v29, v3

    int-to-float v1, v1

    int-to-float v15, v15

    add-float/2addr v1, v15

    int-to-float v6, v6

    int-to-float v4, v4

    sub-float/2addr v6, v4

    const v4, 0x3e22f983

    .line 231
    invoke-static {v3, v8}, Lio/github/jaredmdobson/concentus/Analysis;->fast_atan2f(FF)F

    move-result v3

    mul-float v3, v3, v4

    .line 232
    aget v4, v33, v24

    sub-float v4, v3, v4

    .line 233
    aget v8, v34, v24

    sub-float v8, v4, v8

    const v15, 0x3e22f983

    .line 235
    invoke-static {v6, v1}, Lio/github/jaredmdobson/concentus/Analysis;->fast_atan2f(FF)F

    move-result v1

    mul-float v1, v1, v15

    sub-float v3, v1, v3

    sub-float v4, v3, v4

    add-float v6, v8, v22

    move/from16 p2, v3

    move/from16 p3, v4

    float-to-double v3, v6

    .line 239
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v8, v3

    .line 240
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->ABS16(F)F

    move-result v3

    aput v3, v26, v24

    mul-float v8, v8, v8

    mul-float v8, v8, v8

    add-float v4, p3, v22

    float-to-double v3, v4

    .line 244
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float v4, p3, v3

    .line 245
    aget v3, v26, v24

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->ABS16(F)F

    move-result v6

    add-float/2addr v3, v6

    aput v3, v26, v24

    mul-float v4, v4, v4

    mul-float v4, v4, v4

    .line 249
    aget v3, v27, v24

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v8, v8, v6

    add-float/2addr v3, v8

    add-float/2addr v3, v4

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float v3, v3, v6

    const v6, 0x477385d1

    mul-float v6, v6, v3

    add-float v6, v6, v16

    div-float v3, v16, v6

    const v6, 0x3c75c28f    # 0.015f

    sub-float/2addr v3, v6

    .line 250
    aput v3, v25, v24

    .line 252
    aput v1, v33, v24

    .line 253
    aput p2, v34, v24

    .line 254
    aput v4, v27, v24

    add-int/lit8 v1, v24, 0x1

    const/16 v6, 0xf0

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 260
    iput v1, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->activity:F

    .line 263
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->count:I

    if-nez v3, :cond_6

    const/4 v3, 0x0

    :goto_2
    const/16 v4, 0x12

    if-ge v3, v4, :cond_6

    .line 265
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowE:[F

    const v6, 0x501502f9    # 1.0E10f

    aput v6, v4, v3

    .line 266
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->highE:[F

    const v6, -0x2feafd07    # -1.0E10f

    aput v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    :goto_3
    const v29, 0x3c23d70a    # 0.01f

    move-object/from16 v30, v5

    const/16 v5, 0x12

    if-ge v3, v5, :cond_b

    .line 275
    sget-object v21, Lio/github/jaredmdobson/concentus/OpusTables;->tbands:[I

    aget v21, v21, v3

    move/from16 v5, v21

    const/16 v21, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    :goto_4
    sget-object v34, Lio/github/jaredmdobson/concentus/OpusTables;->tbands:[I

    add-int/lit8 v35, v3, 0x1

    move/from16 p4, v6

    aget v6, v34, v35

    if-ge v5, v6, :cond_7

    mul-int/lit8 v6, v5, 0x2

    move/from16 p5, v6

    .line 276
    aget v6, v30, p5

    move-object/from16 v34, v7

    int-to-float v7, v6

    int-to-float v6, v6

    mul-float v7, v7, v6

    rsub-int v6, v5, 0x1e0

    mul-int/lit8 v6, v6, 0x2

    move/from16 v36, v5

    aget v5, v30, v6

    move/from16 p6, v6

    int-to-float v6, v5

    int-to-float v5, v5

    mul-float v6, v6, v5

    add-float/2addr v7, v6

    add-int/lit8 v6, p5, 0x1

    aget v5, v30, v6

    int-to-float v6, v5

    int-to-float v5, v5

    mul-float v6, v6, v5

    add-float/2addr v7, v6

    add-int/lit8 v6, p6, 0x1

    aget v5, v30, v6

    int-to-float v6, v5

    int-to-float v5, v5

    mul-float v6, v6, v5

    add-float/2addr v7, v6

    const v5, 0x247ff2d6    # 5.55E-17f

    mul-float v7, v7, v5

    add-float v21, v21, v7

    .line 281
    aget v5, v25, v36

    mul-float v5, v5, v7

    add-float v33, v33, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v7, v7, v5

    .line 282
    aget v5, v26, v36

    sub-float v5, v22, v5

    mul-float v7, v7, v5

    add-float v32, v32, v7

    add-int/lit8 v5, v36, 0x1

    move/from16 v6, p4

    move-object/from16 v7, v34

    goto :goto_4

    :cond_7
    move-object/from16 v34, v7

    .line 285
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->E:[[F

    iget v6, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->E_count:I

    aget-object v5, v5, v6

    aput v21, v5, v3

    const v5, 0x26901d7d    # 1.0E-15f

    add-float v5, v21, v5

    div-float v32, v32, v5

    add-float v6, p4, v32

    const v7, 0x2edbe6ff    # 1.0E-10f

    add-float v7, v21, v7

    move/from16 p5, v5

    move/from16 p4, v6

    float-to-double v5, v7

    move-wide/from16 v36, v5

    .line 288
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr v4, v5

    .line 289
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v34, v3

    .line 290
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowE:[F

    aget v6, v34, v3

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowE:[F

    aget v7, v7, v3

    add-float v7, v7, v29

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(FF)F

    move-result v6

    aput v6, v5, v3

    .line 291
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->highE:[F

    aget v6, v34, v3

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->highE:[F

    aget v7, v7, v3

    const v21, 0x3dcccccd    # 0.1f

    sub-float v7, v7, v21

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(FF)F

    move-result v6

    aput v6, v5, v3

    .line 292
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->highE:[F

    aget v5, v5, v3

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowE:[F

    aget v6, v6, v3

    add-float v6, v6, v16

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    .line 293
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->highE:[F

    aget v6, v5, v3

    add-float v6, v6, v22

    aput v6, v5, v3

    .line 294
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowE:[F

    aget v6, v5, v3

    sub-float v6, v6, v22

    aput v6, v5, v3

    .line 296
    :cond_8
    aget v5, v34, v3

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowE:[F

    aget v6, v6, v3

    sub-float/2addr v5, v6

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->highE:[F

    aget v6, v6, v3

    const v7, 0x26901d7d    # 1.0E-15f

    add-float/2addr v6, v7

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowE:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    add-float/2addr v8, v5

    move/from16 p6, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_5
    const/16 v4, 0x8

    if-ge v5, v4, :cond_9

    .line 300
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->E:[[F

    aget-object v4, v4, v5

    aget v4, v4, v3

    move/from16 v21, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v6, v4

    .line 301
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->E:[[F

    aget-object v4, v4, v21

    aget v4, v4, v3

    add-float/2addr v7, v4

    add-int/lit8 v5, v21, 0x1

    goto :goto_5

    :cond_9
    const/high16 v4, 0x41000000    # 8.0f

    mul-float v7, v7, v4

    float-to-double v4, v7

    const-wide v36, 0x3cd203af9ee75616L    # 1.0E-15

    .line 304
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double v4, v4, v36

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float/2addr v6, v4

    const v4, 0x3f7d70a4    # 0.99f

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(FF)F

    move-result v4

    mul-float v4, v4, v4

    mul-float v4, v4, v4

    add-float v24, v24, v4

    div-float v5, v33, p5

    .line 309
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->prev_band_tonality:[F

    aget v6, v6, v3

    mul-float v4, v4, v6

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(FF)F

    move-result v4

    aput v4, v28, v3

    add-float/2addr v15, v4

    const/16 v4, 0x9

    if-lt v3, v4, :cond_a

    add-int/lit8 v4, v3, -0x9

    .line 312
    aget v4, v28, v4

    sub-float/2addr v15, v4

    :cond_a
    add-int/lit8 v4, v3, -0x12

    int-to-float v4, v4

    const v5, 0x3cf5c28f    # 0.03f

    mul-float v4, v4, v5

    add-float v4, v4, v16

    mul-float v4, v4, v15

    .line 314
    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(FF)F

    move-result v1

    .line 315
    aget v4, v28, v3

    add-int/lit8 v5, v3, -0x8

    int-to-float v5, v5

    mul-float v4, v4, v5

    add-float v27, v27, v4

    .line 316
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->prev_band_tonality:[F

    aget v5, v28, v3

    aput v5, v4, v3

    move/from16 v6, p4

    move/from16 v4, p6

    move-object/from16 v5, v30

    move-object/from16 v7, v34

    move/from16 v3, v35

    goto/16 :goto_3

    :cond_b
    move/from16 p4, v6

    move-object/from16 v34, v7

    const/16 v20, 0x8

    add-int/lit8 v3, p9, -0x8

    const/4 v5, 0x0

    .line 322
    invoke-static {v5, v3}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v3

    shl-int v3, v18, v3

    int-to-float v3, v3

    const v5, 0x3a156c0d    # 5.7E-4f

    div-float/2addr v5, v3

    const/high16 v3, 0x4d000000    # 1.3421773E8f

    mul-float v5, v5, v3

    mul-float v5, v5, v5

    move/from16 v21, v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_6
    const/16 v1, 0x15

    move/from16 p5, v5

    if-ge v3, v1, :cond_e

    .line 329
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusTables;->extra_bands:[I

    aget v1, v1, v3

    .line 330
    sget-object v25, Lio/github/jaredmdobson/concentus/OpusTables;->extra_bands:[I

    add-int/lit8 v26, v3, 0x1

    const p6, 0x3d4ccccd    # 0.05f

    aget v5, v25, v26

    move/from16 p7, v1

    move/from16 v25, v3

    const/4 v3, 0x0

    :goto_7
    if-ge v1, v5, :cond_c

    mul-int/lit8 v28, v1, 0x2

    move/from16 p8, v5

    .line 332
    aget v5, v30, v28

    move/from16 p9, v6

    int-to-float v6, v5

    int-to-float v5, v5

    mul-float v6, v6, v5

    rsub-int v5, v1, 0x1e0

    mul-int/lit8 v5, v5, 0x2

    move/from16 v31, v1

    aget v1, v30, v5

    move/from16 v32, v5

    int-to-float v5, v1

    int-to-float v1, v1

    mul-float v5, v5, v1

    add-float/2addr v6, v5

    add-int/lit8 v28, v28, 0x1

    aget v1, v30, v28

    int-to-float v5, v1

    int-to-float v1, v1

    mul-float v5, v5, v1

    add-float/2addr v6, v5

    add-int/lit8 v5, v32, 0x1

    aget v1, v30, v5

    int-to-float v5, v1

    int-to-float v1, v1

    mul-float v5, v5, v1

    add-float/2addr v6, v5

    add-float/2addr v3, v6

    add-int/lit8 v1, v31, 0x1

    move/from16 v5, p8

    move/from16 v6, p9

    goto :goto_7

    :cond_c
    move/from16 p8, v5

    move/from16 p9, v6

    .line 336
    invoke-static {v15, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(FF)F

    move-result v15

    .line 337
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->meanE:[F

    sub-float v5, v16, v11

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->meanE:[F

    aget v6, v6, v25

    mul-float v5, v5, v6

    invoke-static {v5, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(FF)F

    move-result v5

    aput v5, v1, v25

    .line 338
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->meanE:[F

    aget v1, v1, v25

    invoke-static {v3, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(FF)F

    move-result v1

    mul-float v7, v7, p6

    .line 340
    invoke-static {v7, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(FF)F

    move-result v7

    float-to-double v5, v1

    const-wide v31, 0x3fb999999999999aL    # 0.1

    move-wide/from16 v35, v5

    float-to-double v5, v7

    .line 347
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v31

    cmpl-double v3, v35, v5

    if-lez v3, :cond_d

    const v3, 0x4e6e6b28    # 1.0E9f

    mul-float v3, v3, v1

    cmpl-float v3, v3, v15

    if-lez v3, :cond_d

    sub-int v5, p8, p7

    int-to-float v3, v5

    mul-float v5, p5, v3

    cmpl-float v1, v1, v5

    if-lez v1, :cond_d

    move/from16 v6, v25

    goto :goto_8

    :cond_d
    move/from16 v6, p9

    :goto_8
    move/from16 v5, p5

    move/from16 v3, v26

    goto/16 :goto_6

    :cond_e
    move/from16 p9, v6

    const p6, 0x3d4ccccd    # 0.05f

    .line 351
    iget v1, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->count:I

    const/4 v3, 0x2

    if-gt v1, v3, :cond_f

    const/16 v6, 0x14

    goto :goto_9

    :cond_f
    move/from16 v6, p9

    :goto_9
    float-to-double v3, v4

    .line 354
    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    double-to-float v1, v3

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v1, v1, v3

    .line 355
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->Etracker:F

    const v4, 0x3cf5c28f    # 0.03f

    sub-float/2addr v3, v4

    invoke-static {v3, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(FF)F

    move-result v3

    iput v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->Etracker:F

    .line 356
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowECount:F

    sub-float v4, v16, v14

    mul-float v3, v3, v4

    iput v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowECount:F

    .line 357
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->Etracker:F

    const/high16 v4, 0x41f00000    # 30.0f

    sub-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_10

    .line 358
    iget v1, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowECount:F

    add-float/2addr v1, v14

    iput v1, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowECount:F

    :cond_10
    const/4 v1, 0x0

    :goto_a
    const/16 v4, 0x8

    if-ge v1, v4, :cond_12

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    const/16 v5, 0x10

    if-ge v3, v5, :cond_11

    .line 364
    sget-object v5, Lio/github/jaredmdobson/concentus/OpusTables;->dct_table:[F

    mul-int/lit8 v7, v1, 0x10

    add-int/2addr v7, v3

    aget v5, v5, v7

    aget v7, v34, v3

    mul-float v5, v5, v7

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 366
    :cond_11
    aput v4, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_12
    const/high16 v1, 0x41900000    # 18.0f

    div-float v24, v24, v1

    div-float/2addr v8, v1

    .line 371
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->count:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_13

    const/high16 v8, 0x3f000000    # 0.5f

    :cond_13
    div-float v1, p4, v1

    sub-float v3, v16, v1

    mul-float v3, v3, v8

    add-float/2addr v3, v1

    .line 375
    iput v3, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->activity:F

    const/high16 v3, 0x41100000    # 9.0f

    div-float v3, v21, v3

    .line 377
    iget v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->prev_tonality:F

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v4, v4, v5

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(FF)F

    move-result v3

    .line 378
    iput v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->prev_tonality:F

    const/high16 v4, 0x42800000    # 64.0f

    div-float v4, v27, v4

    .line 381
    iput v4, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality_slope:F

    .line 383
    iget v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->E_count:I

    add-int/lit8 v4, v4, 0x1

    const/16 v20, 0x8

    rem-int/lit8 v4, v4, 0x8

    iput v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->E_count:I

    .line 384
    iget v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->count:I

    .line 385
    iput v3, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality:F

    const/4 v3, 0x0

    :goto_c
    const/4 v4, 0x4

    if-ge v3, v4, :cond_14

    .line 388
    aget v4, v9, v3

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v7, v3, 0x18

    aget v5, v5, v7

    add-float/2addr v4, v5

    const v5, -0x42041dd2    # -0.12299f

    mul-float v4, v4, v5

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    aget v5, v5, v3

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v8, v3, 0x10

    aget v7, v7, v8

    add-float/2addr v5, v7

    const v7, 0x3efbe0df    # 0.49195f

    mul-float v5, v5, v7

    add-float/2addr v4, v5

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v7, v3, 0x8

    aget v5, v5, v7

    const v7, 0x3f326a01    # 0.69693f

    mul-float v5, v5, v7

    add-float/2addr v4, v5

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->cmean:[F

    aget v5, v5, v3

    const v7, 0x3fb7aace    # 1.4349f

    mul-float v5, v5, v7

    sub-float/2addr v4, v5

    aput v4, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    :goto_d
    if-ge v3, v4, :cond_15

    .line 392
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->cmean:[F

    sub-float v5, v16, v13

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->cmean:[F

    aget v7, v7, v3

    mul-float v5, v5, v7

    aget v7, v9, v3

    mul-float v7, v7, v13

    add-float/2addr v5, v7

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x4

    goto :goto_d

    :cond_15
    const/4 v3, 0x0

    :goto_e
    if-ge v3, v4, :cond_16

    add-int/lit8 v5, v3, 0x4

    .line 396
    aget v7, v9, v3

    iget-object v8, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v11, v3, 0x18

    aget v8, v8, v11

    sub-float/2addr v7, v8

    const v8, 0x3f21e8e6    # 0.63246f

    mul-float v7, v7, v8

    iget-object v8, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    aget v8, v8, v3

    iget-object v11, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v14, v3, 0x10

    aget v11, v11, v14

    sub-float/2addr v8, v11

    const v11, 0x3ea1e8e6    # 0.31623f

    mul-float v8, v8, v11

    add-float/2addr v7, v8

    aput v7, v10, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_16
    const/4 v3, 0x0

    :goto_f
    const/4 v4, 0x3

    if-ge v3, v4, :cond_17

    add-int/lit8 v4, v3, 0x8

    .line 399
    aget v5, v9, v3

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v8, v3, 0x18

    aget v7, v7, v8

    add-float/2addr v5, v7

    const v7, 0x3f08d64d

    mul-float v5, v5, v7

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    aget v7, v7, v3

    iget-object v8, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v11, v3, 0x10

    aget v8, v8, v11

    add-float/2addr v7, v8

    const v8, 0x3e88d64d

    mul-float v7, v7, v8

    sub-float/2addr v5, v7

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    aget v7, v7, v4

    const v8, 0x3f08d64d

    mul-float v7, v7, v8

    sub-float/2addr v5, v7

    aput v5, v10, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 402
    :cond_17
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->count:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_18

    const/4 v3, 0x0

    :goto_10
    const/16 v4, 0x9

    if-ge v3, v4, :cond_18

    .line 404
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->std:[F

    sub-float v5, v16, v13

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->std:[F

    aget v7, v7, v3

    mul-float v5, v5, v7

    aget v7, v10, v3

    mul-float v8, v13, v7

    mul-float v8, v8, v7

    add-float/2addr v5, v8

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_18
    const/4 v3, 0x0

    const/16 v4, 0x8

    :goto_11
    if-ge v3, v4, :cond_19

    .line 409
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v7, v3, 0x18

    iget-object v8, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v11, v3, 0x10

    aget v8, v8, v11

    aput v8, v5, v7

    .line 410
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v8, v3, 0x8

    aget v7, v7, v8

    aput v7, v5, v11

    .line 411
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    aget v7, v7, v3

    aput v7, v5, v8

    .line 412
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    aget v7, v9, v3

    aput v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_19
    const/4 v3, 0x0

    const/16 v4, 0x9

    :goto_12
    if-ge v3, v4, :cond_1a

    add-int/lit8 v5, v3, 0xb

    .line 415
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->std:[F

    aget v7, v7, v3

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v10, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 417
    :cond_1a
    iget v3, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality:F

    aput v3, v10, v17

    const/16 v3, 0x15

    .line 418
    iget v4, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->activity:F

    aput v4, v10, v3

    const/16 v3, 0x16

    .line 419
    aput v24, v10, v3

    const/16 v3, 0x17

    .line 420
    iget v4, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality_slope:F

    aput v4, v10, v3

    .line 421
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowECount:F

    const/16 v4, 0x18

    aput v3, v10, v4

    .line 423
    iget-boolean v3, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->enabled:Z

    if-eqz v3, :cond_27

    .line 424
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusTables;->net:Lio/github/jaredmdobson/concentus/MLPState;

    invoke-static {v3, v10, v12}, Lio/github/jaredmdobson/concentus/MultiLayerPerceptron;->mlp_process(Lio/github/jaredmdobson/concentus/MLPState;[F[F)V

    const/4 v4, 0x0

    .line 425
    aget v3, v12, v4

    add-float v3, v3, v16

    mul-float v3, v3, v22

    aput v3, v12, v4

    const v4, 0x3f9ae148    # 1.21f

    mul-float v4, v4, v3

    mul-float v4, v4, v3

    add-float v4, v4, v29

    float-to-double v7, v3

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    .line 427
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v3, v7

    const v5, 0x3e6b851f    # 0.23f

    mul-float v3, v3, v5

    sub-float/2addr v4, v3

    const/4 v5, 0x0

    aput v4, v12, v5

    .line 429
    aget v3, v12, v18

    mul-float v3, v3, v22

    add-float v3, v3, v22

    aput v3, v12, v18

    mul-float v4, v4, v3

    sub-float v7, v16, v3

    mul-float v7, v7, v22

    add-float/2addr v4, v7

    .line 431
    aput v4, v12, v5

    const v5, 0x3851b717    # 5.0E-5f

    mul-float v3, v3, v5

    const v5, 0x3f733333    # 0.95f

    .line 457
    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(FF)F

    move-result v4

    const v5, 0x3d4ccccd    # 0.05f

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(FF)F

    move-result v4

    const v7, 0x3f733333    # 0.95f

    .line 458
    iget v8, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_prob:F

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(FF)F

    move-result v7

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(FF)F

    move-result v7

    sub-float v8, v4, v7

    .line 459
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->ABS16(F)F

    move-result v8

    mul-float v8, v8, v5

    sub-float v5, v16, v7

    mul-float v5, v5, v4

    sub-float v4, v16, v4

    mul-float v7, v7, v4

    add-float/2addr v5, v7

    div-float/2addr v8, v5

    add-float v8, v8, v29

    .line 464
    iget v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_prob:F

    sub-float v4, v16, v4

    sub-float v5, v16, v3

    mul-float v4, v4, v5

    iget v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_prob:F

    mul-float v7, v7, v3

    add-float/2addr v4, v7

    .line 465
    iget v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_prob:F

    mul-float v7, v7, v5

    iget v9, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_prob:F

    sub-float v9, v16, v9

    mul-float v9, v9, v3

    add-float/2addr v7, v9

    const/4 v9, 0x0

    .line 468
    aget v10, v12, v9

    sub-float v10, v16, v10

    float-to-double v10, v10

    float-to-double v13, v8

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v8, v10

    mul-float v4, v4, v8

    .line 469
    aget v8, v12, v9

    float-to-double v10, v8

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v8, v10

    mul-float v7, v7, v8

    add-float/2addr v4, v7

    div-float/2addr v7, v4

    .line 471
    iput v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_prob:F

    .line 472
    iget v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_prob:F

    iput v4, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->music_prob:F

    .line 477
    aget v4, v12, v9

    sub-float v4, v16, v4

    float-to-double v7, v4

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v4, v7

    .line 478
    aget v7, v12, v9

    float-to-double v7, v7

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 479
    iget v8, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->count:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1b

    .line 480
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pspeech:[F

    aput v22, v8, v9

    .line 481
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pmusic:[F

    aput v22, v8, v9

    .line 485
    :cond_1b
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pspeech:[F

    aget v8, v8, v9

    iget-object v11, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pspeech:[F

    aget v11, v11, v10

    add-float/2addr v8, v11

    .line 486
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pmusic:[F

    aget v11, v11, v9

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pmusic:[F

    aget v13, v13, v10

    add-float/2addr v11, v13

    .line 488
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pspeech:[F

    mul-float v13, v8, v5

    mul-float v13, v13, v4

    aput v13, v10, v9

    .line 489
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pmusic:[F

    mul-float v5, v5, v11

    mul-float v5, v5, v7

    aput v5, v10, v9

    const/4 v5, 0x1

    :goto_13
    const/16 v9, 0xc7

    if-ge v5, v9, :cond_1c

    .line 492
    iget-object v9, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pspeech:[F

    iget-object v10, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pspeech:[F

    add-int/lit8 v13, v5, 0x1

    aget v10, v10, v13

    mul-float v10, v10, v4

    aput v10, v9, v5

    .line 493
    iget-object v9, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pmusic:[F

    iget-object v10, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pmusic:[F

    aget v10, v10, v13

    mul-float v10, v10, v7

    aput v10, v9, v5

    move v5, v13

    goto :goto_13

    .line 496
    :cond_1c
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pspeech:[F

    mul-float v11, v11, v3

    mul-float v11, v11, v4

    aput v11, v5, v9

    .line 498
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pmusic:[F

    mul-float v8, v8, v3

    mul-float v8, v8, v7

    aput v8, v4, v9

    const v3, 0x1e3ce508    # 1.0E-20f

    const/4 v3, 0x0

    const v4, 0x1e3ce508    # 1.0E-20f

    :goto_14
    const/16 v5, 0xc8

    if-ge v3, v5, :cond_1d

    .line 502
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pspeech:[F

    aget v5, v5, v3

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pmusic:[F

    aget v7, v7, v3

    add-float/2addr v5, v7

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1d
    div-float v3, v16, v4

    const/4 v4, 0x0

    :goto_15
    const/16 v5, 0xc8

    if-ge v4, v5, :cond_1e

    .line 506
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pspeech:[F

    aget v7, v5, v4

    mul-float v7, v7, v3

    aput v7, v5, v4

    .line 507
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pmusic:[F

    aget v7, v5, v4

    mul-float v7, v7, v3

    aput v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 509
    :cond_1e
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pmusic:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v3, 0x1

    const/16 v5, 0xc8

    :goto_16
    if-ge v3, v5, :cond_1f

    .line 511
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pspeech:[F

    aget v4, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_1f
    const/16 v18, 0x1

    .line 515
    aget v3, v12, v18

    float-to-double v3, v3

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    cmpl-double v5, v3, v7

    if-lez v5, :cond_21

    .line 516
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_prob:F

    float-to-double v3, v3

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    cmpl-double v5, v3, v7

    if-lez v5, :cond_20

    .line 518
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_confidence_count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_confidence_count:I

    int-to-float v3, v3

    div-float v3, v16, v3

    .line 519
    iget v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_confidence_count:I

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v4

    iput v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_confidence_count:I

    .line 520
    iget v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_confidence:F

    const/4 v5, 0x0

    aget v7, v12, v5

    iget v5, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_confidence:F

    sub-float/2addr v7, v5

    const v5, -0x41b33333    # -0.2f

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(FF)F

    move-result v5

    mul-float v3, v3, v5

    add-float/2addr v4, v3

    iput v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_confidence:F

    .line 522
    :cond_20
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_prob:F

    float-to-double v3, v3

    const-wide v7, 0x3fb999999999999aL    # 0.1

    cmpg-double v5, v3, v7

    if-gez v5, :cond_23

    .line 524
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->speech_confidence_count:I

    const/16 v18, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->speech_confidence_count:I

    int-to-float v3, v3

    div-float v16, v16, v3

    .line 525
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->speech_confidence_count:I

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v3

    iput v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->speech_confidence_count:I

    .line 526
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->speech_confidence:F

    const/4 v4, 0x0

    aget v5, v12, v4

    iget v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->speech_confidence:F

    sub-float/2addr v5, v4

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(FF)F

    move-result v4

    mul-float v16, v16, v4

    add-float v3, v3, v16

    iput v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->speech_confidence:F

    goto :goto_17

    .line 529
    :cond_21
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_confidence_count:I

    if-nez v3, :cond_22

    const v3, 0x3f666666    # 0.9f

    .line 530
    iput v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_confidence:F

    .line 532
    :cond_22
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->speech_confidence_count:I

    if-nez v3, :cond_23

    const v3, 0x3dcccccd    # 0.1f

    .line 533
    iput v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->speech_confidence:F

    .line 537
    :cond_23
    :goto_17
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->last_music:I

    iget v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_prob:F

    cmpl-float v4, v4, v22

    if-lez v4, :cond_24

    const/4 v4, 0x1

    goto :goto_18

    :cond_24
    const/4 v4, 0x0

    :goto_18
    if-eq v3, v4, :cond_25

    const/4 v4, 0x0

    .line 538
    iput v4, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->last_transition:I

    goto :goto_19

    :cond_25
    const/4 v4, 0x0

    .line 540
    :goto_19
    iget v3, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_prob:F

    cmpl-float v3, v3, v22

    if-lez v3, :cond_26

    const/4 v8, 0x1

    goto :goto_1a

    :cond_26
    const/4 v8, 0x0

    :goto_1a
    iput v8, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->last_music:I

    goto :goto_1b

    :cond_27
    const/4 v0, 0x0

    .line 542
    iput v0, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->music_prob:F

    .line 545
    :goto_1b
    iput v6, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->bandwidth:I

    .line 546
    iput v1, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->noisiness:F

    const/4 v10, 0x1

    .line 547
    iput v10, v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;->valid:I

    return-void
.end method

.method static tonality_analysis_init(Lio/github/jaredmdobson/concentus/TonalityAnalysisState;)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->Reset()V

    return-void
.end method

.method static tonality_get_info(Lio/github/jaredmdobson/concentus/TonalityAnalysisState;Lio/github/jaredmdobson/concentus/AnalysisInfo;I)V
    .locals 5

    .line 83
    iget v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_pos:I

    .line 84
    iget v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->write_pos:I

    iget v2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_pos:I

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0xc8

    :cond_0
    const/16 v2, 0x1e0

    const/4 v3, 0x0

    const/16 v4, 0xc8

    if-le p2, v2, :cond_1

    .line 89
    iget v2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->write_pos:I

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_1

    const/4 v0, 0x0

    .line 95
    :cond_1
    iget v2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->write_pos:I

    if-ne v0, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    if-gez v0, :cond_3

    const/16 v0, 0xc7

    .line 102
    :cond_3
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->info:[Lio/github/jaredmdobson/concentus/AnalysisInfo;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lio/github/jaredmdobson/concentus/AnalysisInfo;->Assign(Lio/github/jaredmdobson/concentus/AnalysisInfo;)V

    .line 103
    iget v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_subframe:I

    div-int/lit8 p2, p2, 0x78

    add-int/2addr v0, p2

    iput v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_subframe:I

    .line 104
    :goto_0
    iget p2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_subframe:I

    const/4 v0, 0x4

    if-lt p2, v0, :cond_4

    .line 105
    iget p2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_subframe:I

    sub-int/2addr p2, v0

    iput p2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_subframe:I

    .line 106
    iget p2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_pos:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_pos:I

    goto :goto_0

    .line 108
    :cond_4
    iget p2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_pos:I

    if-lt p2, v4, :cond_5

    .line 109
    iget p2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_pos:I

    sub-int/2addr p2, v4

    iput p2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_pos:I

    :cond_5
    add-int/lit8 v1, v1, -0xa

    .line 114
    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    rsub-int v1, p2, 0xc8

    if-ge v3, v1, :cond_6

    .line 120
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pmusic:[F

    aget v1, v1, v3

    add-float/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-ge v3, v4, :cond_7

    .line 123
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pspeech:[F

    aget p2, p2, v3

    add-float/2addr v0, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 125
    :cond_7
    iget p2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_confidence:F

    mul-float p2, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget p0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->speech_confidence:F

    mul-float v1, v1, p0

    add-float/2addr p2, v1

    .line 128
    iput p2, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->music_prob:F

    return-void
.end method
