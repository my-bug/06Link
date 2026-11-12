.class Lio/github/jaredmdobson/concentus/NoiseShapeAnalysis;
.super Ljava/lang/Object;
.source "NoiseShapeAnalysis.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static limit_warped_coefs([I[IIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p4

    neg-int v3, v3

    add-int/lit8 v5, v4, -0x1

    move v6, v5

    :goto_0
    if-lez v6, :cond_0

    add-int/lit8 v7, v6, -0x1

    .line 73
    aget v8, v0, v7

    aget v9, v0, v6

    invoke-static {v8, v9, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    aput v8, v0, v7

    .line 74
    aget v8, v1, v7

    aget v9, v1, v6

    invoke-static {v8, v9, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    aput v8, v1, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    neg-int v3, v3

    neg-int v6, v3

    const/high16 v7, 0x10000

    .line 77
    invoke-static {v7, v6, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    const/4 v8, 0x0

    .line 78
    aget v9, v0, v8

    const/high16 v10, 0x1000000

    invoke-static {v10, v9, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    const/16 v11, 0x18

    .line 79
    invoke-static {v6, v9, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v9

    .line 80
    aget v12, v1, v8

    invoke-static {v10, v12, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    .line 81
    invoke-static {v6, v12, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v6

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v4, :cond_1

    .line 83
    aget v13, v0, v12

    invoke-static {v9, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v13

    aput v13, v0, v12

    .line 84
    aget v13, v1, v12

    invoke-static {v6, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v13

    aput v13, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    const/16 v14, 0xa

    if-ge v12, v14, :cond_9

    const/4 v14, -0x1

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v4, :cond_3

    .line 91
    aget v16, v0, v15

    const/16 p2, 0x0

    invoke-static/range {v16 .. v16}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs_int32(I)I

    move-result v8

    aget v16, v1, v15

    invoke-static/range {v16 .. v16}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs_int32(I)I

    move-result v11

    invoke-static {v8, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result v8

    if-le v8, v14, :cond_2

    move v14, v8

    move v13, v15

    :cond_2
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    const/16 v11, 0x18

    goto :goto_3

    :cond_3
    const/16 p2, 0x0

    if-gt v14, v2, :cond_4

    return-void

    :cond_4
    const/4 v8, 0x1

    :goto_4
    if-ge v8, v4, :cond_5

    add-int/lit8 v11, v8, -0x1

    .line 104
    aget v15, v0, v11

    aget v10, v0, v8

    invoke-static {v15, v10, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v10

    aput v10, v0, v11

    .line 105
    aget v10, v1, v11

    aget v15, v1, v8

    invoke-static {v10, v15, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v10

    aput v10, v1, v11

    add-int/lit8 v8, v8, 0x1

    const/high16 v10, 0x1000000

    goto :goto_4

    :cond_5
    const/16 v8, 0x20

    .line 107
    invoke-static {v9, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v9

    .line 108
    invoke-static {v6, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v6

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v4, :cond_6

    .line 110
    aget v10, v0, v8

    invoke-static {v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v10

    aput v10, v0, v8

    .line 111
    aget v10, v1, v8

    invoke-static {v6, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v10

    aput v10, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    sub-int v6, v14, v2

    const/16 v8, 0x333

    const/16 v9, 0x66

    .line 116
    invoke-static {v8, v9, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v8

    invoke-static {v6, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    add-int/lit8 v8, v13, 0x1

    .line 117
    invoke-static {v14, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v8

    const/16 v9, 0x16

    .line 115
    invoke-static {v6, v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v6

    const v8, 0xfd71

    sub-int/2addr v8, v6

    .line 118
    invoke-static {v0, v4, v8}, Lio/github/jaredmdobson/concentus/BWExpander;->silk_bwexpander_32([III)V

    .line 119
    invoke-static {v1, v4, v8}, Lio/github/jaredmdobson/concentus/BWExpander;->silk_bwexpander_32([III)V

    neg-int v3, v3

    move v6, v5

    :goto_6
    if-lez v6, :cond_7

    add-int/lit8 v8, v6, -0x1

    .line 124
    aget v9, v0, v8

    aget v10, v0, v6

    invoke-static {v9, v10, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    aput v9, v0, v8

    .line 125
    aget v9, v1, v8

    aget v10, v1, v6

    invoke-static {v9, v10, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    aput v9, v1, v8

    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_7
    neg-int v3, v3

    neg-int v6, v3

    .line 128
    invoke-static {v7, v6, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 129
    aget v8, v0, p2

    const/high16 v9, 0x1000000

    invoke-static {v9, v8, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    const/16 v10, 0x18

    .line 130
    invoke-static {v6, v8, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v8

    .line 131
    aget v11, v1, p2

    invoke-static {v9, v11, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v11

    .line 132
    invoke-static {v6, v11, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v6

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v4, :cond_8

    .line 134
    aget v14, v0, v11

    invoke-static {v8, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v14

    aput v14, v0, v11

    .line 135
    aget v14, v1, v11

    invoke-static {v6, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v14

    aput v14, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v12, v12, 0x1

    move v9, v8

    const/4 v8, 0x0

    const/high16 v10, 0x1000000

    const/16 v11, 0x18

    goto/16 :goto_2

    :cond_9
    const/16 p2, 0x0

    .line 138
    invoke-static/range {p2 .. p2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return-void
.end method

.method static silk_noise_shape_analysis(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SilkEncoderControl;[SI[SI)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 156
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

    const/16 v3, 0x11

    .line 161
    new-array v4, v3, [I

    const/16 v3, 0x10

    .line 162
    new-array v10, v3, [I

    .line 163
    new-array v11, v3, [I

    .line 164
    new-array v12, v3, [I

    .line 170
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_shape:I

    sub-int v5, p5, v5

    .line 179
    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->SNR_dB_Q7:I

    .line 182
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->input_quality_bands_Q15:[I

    const/4 v13, 0x0

    aget v7, v7, v13

    iget-object v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->input_quality_bands_Q15:[I

    const/4 v14, 0x1

    aget v8, v8, v14

    add-int/2addr v7, v8

    const/4 v15, 0x2

    invoke-static {v7, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v7

    iput v7, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->input_quality_Q14:I

    add-int/lit16 v7, v6, -0xa00

    const/4 v8, 0x4

    .line 186
    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v7

    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Sigmoid;->silk_sigm_Q15(I)I

    move-result v7

    invoke-static {v7, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v7

    iput v7, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->coding_quality_Q14:I

    .line 190
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useCBR:I

    const/16 v9, 0x8

    const/16 v3, 0x100

    if-nez v7, :cond_0

    .line 191
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    rsub-int v7, v7, 0x100

    .line 192
    invoke-static {v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v8

    invoke-static {v8, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v7

    const/4 v8, -0x8

    .line 194
    invoke-static {v8, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v7

    iget v8, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->input_quality_Q14:I

    add-int/lit16 v8, v8, 0x4000

    iget v9, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->coding_quality_Q14:I

    .line 195
    invoke-static {v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v8

    .line 193
    invoke-static {v6, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 199
    :cond_0
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v7, v7, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    if-ne v7, v15, :cond_1

    const/16 v7, 0x200

    .line 201
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPCorr_Q15:I

    invoke-static {v6, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    goto :goto_0

    :cond_1
    const v7, -0x1999a

    .line 204
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->SNR_dB_Q7:I

    const/16 v9, 0xc00

    .line 205
    invoke-static {v9, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    iget v8, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->input_quality_Q14:I

    rsub-int v8, v8, 0x4000

    .line 204
    invoke-static {v6, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 217
    :goto_0
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v7, v7, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    if-ne v7, v15, :cond_2

    .line 219
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-byte v13, v7, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    .line 220
    iput v13, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->sparseness_Q8:I

    move-object/from16 v23, v4

    const/16 v3, 0x199a

    const/high16 v7, 0x10000

    const/16 v17, 0x2

    const/16 v22, 0x0

    :goto_1
    move v13, v6

    goto/16 :goto_4

    .line 223
    :cond_2
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    invoke-static {v7, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    .line 227
    new-instance v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v3, v13}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/16 v17, 0x2

    .line 228
    new-instance v15, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v15, v13}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move/from16 v9, p3

    const/4 v14, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_2
    const/4 v8, 0x5

    move-object/from16 v23, v4

    .line 229
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    invoke-static {v8, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v14, v4, :cond_4

    move-object/from16 v4, p2

    .line 230
    invoke-static {v3, v15, v4, v9, v7}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SII)V

    .line 231
    iget v8, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move-object/from16 v24, v3

    .line 232
    iget v3, v15, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 233
    invoke-static {v7, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v22

    add-int v8, v8, v22

    .line 236
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v8

    if-lez v14, :cond_3

    sub-int v21, v8, v21

    .line 238
    invoke-static/range {v21 .. v21}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v21

    add-int v13, v13, v21

    :cond_3
    add-int/2addr v9, v7

    add-int/lit8 v14, v14, 0x1

    move/from16 v22, v3

    move/from16 v21, v8

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    goto :goto_2

    :cond_4
    add-int/lit16 v13, v13, -0x280

    const/16 v3, 0x199a

    .line 244
    invoke-static {v13, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Sigmoid;->silk_sigm_Q15(I)I

    move-result v4

    const/4 v7, 0x7

    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    iput v4, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->sparseness_Q8:I

    .line 248
    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->sparseness_Q8:I

    const/16 v7, 0xc0

    if-le v4, v7, :cond_5

    .line 249
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    const/4 v7, 0x0

    iput-byte v7, v4, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    goto :goto_3

    .line 251
    :cond_5
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    const/4 v7, 0x1

    iput-byte v7, v4, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    .line 255
    :goto_3
    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->sparseness_Q8:I

    add-int/lit8 v4, v4, -0x80

    const/high16 v7, 0x10000

    invoke-static {v6, v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    goto/16 :goto_1

    .line 266
    :goto_4
    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->predGain_Q16:I

    const/16 v6, 0x42

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    const v6, 0xf333

    .line 268
    invoke-static {v7, v4, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v4

    const/16 v8, 0x10

    .line 267
    invoke-static {v6, v4, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v4

    .line 269
    iget v6, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->coding_quality_Q14:I

    const/4 v14, 0x3

    invoke-static {v14, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v6

    sub-int v9, v7, v6

    const/16 v6, 0x28f

    invoke-static {v9, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    .line 271
    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v8

    .line 272
    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v15

    const/16 v4, 0xe

    .line 274
    invoke-static {v8, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v6

    const/4 v8, 0x2

    invoke-static {v15, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    invoke-static {v6, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v6

    .line 276
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    if-lez v8, :cond_6

    .line 278
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    iget v9, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->coding_quality_Q14:I

    const/16 v3, 0xa3d

    invoke-static {v8, v9, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    move v7, v3

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    const/high16 v18, 0x10000

    .line 290
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapeWinLength:I

    new-array v3, v3, [S

    move/from16 v27, v5

    move/from16 v8, v22

    const/4 v5, 0x0

    .line 291
    :goto_6
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v5, v9, :cond_11

    .line 294
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int/lit8 v9, v9, 0x3

    .line 295
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapeWinLength:I

    sub-int/2addr v4, v9

    const/4 v14, 0x1

    invoke-static {v4, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v29

    const/16 v25, 0x0

    const/16 v28, 0x1

    move-object/from16 v26, p4

    move-object/from16 v24, v3

    .line 297
    invoke-static/range {v24 .. v29}, Lio/github/jaredmdobson/concentus/ApplySineWindow;->silk_apply_sine_window([SI[SIII)V

    move/from16 v21, v5

    move/from16 v14, v27

    move/from16 v4, v29

    add-int v5, v14, v4

    move/from16 v22, v6

    move-object/from16 v6, p4

    .line 299
    invoke-static {v6, v5, v3, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v25, v4, v9

    add-int v27, v14, v25

    const/16 v28, 0x2

    move-object/from16 v26, v6

    .line 301
    invoke-static/range {v24 .. v29}, Lio/github/jaredmdobson/concentus/ApplySineWindow;->silk_apply_sine_window([SI[SIII)V

    .line 304
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v27, v14, v3

    .line 305
    new-instance v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v5, v8}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 306
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    if-lez v3, :cond_7

    .line 308
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapeWinLength:I

    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    move/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v6, v24

    const/4 v14, 0x4

    invoke-static/range {v4 .. v9}, Lio/github/jaredmdobson/concentus/Autocorrelation;->silk_warped_autocorrelation([ILio/github/jaredmdobson/concentus/BoxedValueInt;[SIII)V

    const/4 v14, 0x1

    goto :goto_7

    :cond_7
    move/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v6, v24

    const/4 v14, 0x4

    .line 311
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapeWinLength:I

    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    const/4 v14, 0x1

    add-int/2addr v9, v14

    invoke-static {v4, v5, v6, v8, v9}, Lio/github/jaredmdobson/concentus/Autocorrelation;->silk_autocorr([ILio/github/jaredmdobson/concentus/BoxedValueInt;[SII)V

    .line 313
    :goto_7
    iget v8, v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 v20, 0x0

    .line 316
    aget v5, v4, v20

    const/4 v9, 0x4

    invoke-static {v5, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v14

    const/16 v9, 0x34

    invoke-static {v14, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v9

    const/4 v14, 0x1

    invoke-static {v9, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_32(II)I

    move-result v9

    invoke-static {v5, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v5

    aput v5, v4, v20

    .line 320
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v10, v4, v5}, Lio/github/jaredmdobson/concentus/Schur;->silk_schur64([I[II)I

    move-result v5

    if-ltz v5, :cond_8

    const/4 v9, 0x1

    goto :goto_8

    :cond_8
    const/4 v9, 0x0

    .line 321
    :goto_8
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 324
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v12, v10, v9}, Lio/github/jaredmdobson/concentus/K2A;->silk_k2a_Q16([I[II)V

    neg-int v9, v8

    const/16 v14, -0xc

    if-lt v9, v14, :cond_9

    const/4 v14, 0x1

    goto :goto_9

    :cond_9
    const/4 v14, 0x0

    .line 328
    :goto_9
    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v14, 0x1e

    if-gt v9, v14, :cond_a

    const/4 v14, 0x1

    goto :goto_a

    :cond_a
    const/4 v14, 0x0

    .line 329
    :goto_a
    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    and-int/lit8 v14, v9, 0x1

    if-eqz v14, :cond_b

    add-int/lit8 v9, v9, -0x1

    shr-int/lit8 v5, v5, 0x1

    .line 337
    :cond_b
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v5

    const/16 v19, 0x1

    shr-int/lit8 v9, v9, 0x1

    .line 341
    iget-object v14, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    const/16 v16, 0x10

    rsub-int/lit8 v9, v9, 0x10

    invoke-static {v5, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v5

    aput v5, v14, v21

    .line 343
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    if-lez v5, :cond_e

    .line 345
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v12, v7, v5}, Lio/github/jaredmdobson/concentus/NoiseShapeAnalysis;->warped_gain([III)I

    move-result v5

    .line 346
    iget-object v9, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v9, v9, v21

    if-ltz v9, :cond_c

    const/4 v9, 0x1

    goto :goto_b

    :cond_c
    const/4 v9, 0x0

    :goto_b
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 347
    iget-object v9, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v9, v9, v21

    const/4 v14, 0x1

    invoke-static {v9, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v9

    invoke-static {v9, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v9

    const v14, 0x3fffffff    # 1.9999999f

    if-lt v9, v14, :cond_d

    .line 348
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    const v9, 0x7fffffff

    aput v9, v5, v21

    goto :goto_c

    .line 350
    :cond_d
    iget-object v9, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    iget-object v14, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v14, v14, v21

    invoke-static {v14, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v5

    aput v5, v9, v21

    .line 355
    :cond_e
    :goto_c
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v12, v5, v15}, Lio/github/jaredmdobson/concentus/BWExpander;->silk_bwexpander_32([III)V

    .line 358
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    const/4 v9, 0x0

    invoke-static {v12, v9, v11, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/high16 v5, 0x10000

    if-gt v3, v5, :cond_f

    const/4 v5, 0x1

    goto :goto_d

    :cond_f
    const/4 v5, 0x0

    .line 361
    :goto_d
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 362
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v11, v5, v3}, Lio/github/jaredmdobson/concentus/BWExpander;->silk_bwexpander_32([III)V

    .line 365
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v12, v5}, Lio/github/jaredmdobson/concentus/LPCInversePredGain;->silk_LPC_inverse_pred_gain_Q24([II)I

    move-result v5

    .line 366
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v11, v9}, Lio/github/jaredmdobson/concentus/LPCInversePredGain;->silk_LPC_inverse_pred_gain_Q24([II)I

    move-result v9

    const/16 v14, 0x599a

    .line 369
    invoke-static {v5, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v5

    const/4 v14, 0x1

    invoke-static {v5, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v5

    .line 370
    iget-object v14, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->GainsPre_Q14:[I

    move/from16 v22, v3

    const/16 v3, 0xe

    invoke-static {v5, v9, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v5

    add-int/lit16 v5, v5, 0x1333

    aput v5, v14, v21

    const v5, 0x3ffbe78

    .line 373
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v12, v11, v7, v5, v9}, Lio/github/jaredmdobson/concentus/NoiseShapeAnalysis;->limit_warped_coefs([I[IIII)V

    const/4 v5, 0x0

    .line 376
    :goto_e
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    if-ge v5, v9, :cond_10

    .line 377
    iget-object v9, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->AR1_Q13:[S

    mul-int/lit8 v14, v21, 0x10

    add-int/2addr v14, v5

    aget v3, v11, v5

    move-object/from16 v23, v4

    const/16 v4, 0xb

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v9, v14

    .line 378
    iget-object v3, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->AR2_Q13:[S

    aget v9, v12, v5

    invoke-static {v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v4

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v14

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v23

    const/16 v3, 0xe

    goto :goto_e

    :cond_10
    move-object/from16 v23, v4

    add-int/lit8 v5, v21, 0x1

    move-object v3, v6

    move/from16 v6, v22

    const/16 v4, 0xe

    const/4 v14, 0x3

    const/high16 v18, 0x10000

    goto/16 :goto_6

    :cond_11
    const/16 v3, -0x800

    const/16 v4, 0x28f6

    .line 390
    invoke-static {v3, v13, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    neg-int v3, v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_log2lin(I)I

    move-result v3

    const/16 v5, 0x800

    const/16 v6, 0x100

    .line 391
    invoke-static {v5, v6, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_log2lin(I)I

    move-result v4

    if-lez v3, :cond_12

    const/4 v5, 0x1

    goto :goto_f

    :cond_12
    const/4 v5, 0x0

    .line 392
    :goto_f
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v5, 0x0

    .line 393
    :goto_10
    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v5, v6, :cond_14

    .line 394
    iget-object v6, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    iget-object v7, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v7, v7, v5

    invoke-static {v7, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v7

    aput v7, v6, v5

    .line 395
    iget-object v6, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v6, v6, v5

    if-ltz v6, :cond_13

    const/4 v6, 0x1

    goto :goto_11

    :cond_13
    const/4 v6, 0x0

    :goto_11
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 396
    iget-object v6, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    iget-object v7, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v7, v7, v5

    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_POS_SAT32(II)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 399
    :cond_14
    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->coding_quality_Q14:I

    const/16 v4, 0x19a

    const v5, 0x333333

    invoke-static {v5, v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MLA(III)I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    const/high16 v18, 0x10000

    add-int v3, v3, v18

    const/4 v4, 0x0

    .line 401
    :goto_12
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v4, v5, :cond_15

    .line 402
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->GainsPre_Q14:[I

    iget-object v6, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->GainsPre_Q14:[I

    aget v6, v6, v4

    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 413
    :cond_15
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->input_quality_bands_Q15:[I

    const/16 v20, 0x0

    aget v3, v3, v20

    add-int/lit16 v3, v3, -0x8000

    const/16 v4, 0x1000

    invoke-static {v4, v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    const/16 v4, 0x40

    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v3

    .line 415
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    .line 416
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v4, v4, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    const/16 v5, -0x4000

    const v6, 0xffff

    const/4 v8, 0x2

    if-ne v4, v8, :cond_17

    const/16 v4, 0xccd

    .line 419
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v4

    const/4 v7, 0x0

    .line 420
    :goto_13
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    const v9, 0xc000

    if-ge v7, v8, :cond_16

    .line 421
    iget-object v8, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->pitchL:[I

    aget v8, v8, v7

    invoke-static {v9, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v8

    add-int/2addr v8, v4

    .line 423
    iget-object v9, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    rsub-int v10, v8, 0x4000

    invoke-static {v3, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v11

    sub-int/2addr v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v10

    aput v10, v9, v7

    .line 424
    iget-object v9, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    aget v10, v9, v7

    add-int/lit16 v8, v8, -0x4000

    and-int/2addr v8, v6

    or-int/2addr v8, v10

    aput v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_16
    const/16 v19, 0x1

    .line 426
    invoke-static/range {v19 .. v19}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const v3, 0x59999a

    .line 428
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    .line 429
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    .line 428
    invoke-static {v9, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    sub-int/2addr v5, v3

    const/16 v20, 0x0

    goto :goto_15

    :cond_17
    const/16 v4, 0x5333

    .line 431
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v4

    .line 434
    iget-object v7, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    rsub-int v8, v4, 0x4000

    const v9, 0x999a

    .line 435
    invoke-static {v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v9

    invoke-static {v3, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    sub-int/2addr v8, v3

    const/16 v11, 0x10

    .line 434
    invoke-static {v8, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    const/16 v20, 0x0

    aput v3, v7, v20

    .line 436
    iget-object v3, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    aget v7, v3, v20

    add-int/lit16 v4, v4, -0x4000

    and-int/2addr v4, v6

    or-int/2addr v4, v7

    aput v4, v3, v20

    const/4 v7, 0x1

    .line 437
    :goto_14
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v7, v3, :cond_18

    .line 438
    iget-object v3, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    iget-object v4, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    aget v4, v4, v20

    aput v4, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 451
    :cond_18
    :goto_15
    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->coding_quality_Q14:I

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    const/high16 v4, 0x20000

    sub-int/2addr v4, v3

    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPCorr_Q15:I

    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    const/16 v4, 0x199a

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    .line 455
    iget v6, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->input_quality_Q14:I

    const/4 v8, 0x2

    .line 456
    invoke-static {v6, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v6

    const/high16 v18, 0x10000

    sub-int v9, v18, v6

    .line 455
    invoke-static {v3, v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    .line 458
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v4, v4, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    if-ne v4, v8, :cond_19

    .line 460
    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->coding_quality_Q14:I

    const/4 v14, 0x4

    .line 461
    invoke-static {v4, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    const/high16 v6, 0x40000

    sub-int/2addr v6, v4

    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->input_quality_Q14:I

    invoke-static {v6, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    sub-int v9, v18, v4

    const/16 v4, 0x3333

    const/16 v6, 0x4ccd

    .line 460
    invoke-static {v6, v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    const/4 v14, 0x1

    .line 465
    invoke-static {v4, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    iget v0, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPCorr_Q15:I

    const/16 v6, 0xf

    .line 466
    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v0

    .line 465
    invoke-static {v4, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v7

    goto :goto_16

    :cond_19
    const/4 v7, 0x0

    :goto_16
    const/4 v13, 0x0

    const/4 v14, 0x4

    :goto_17
    if-ge v13, v14, :cond_1a

    .line 479
    iget v0, v2, Lio/github/jaredmdobson/concentus/SilkShapeState;->HarmBoost_smth_Q16:I

    iget v4, v2, Lio/github/jaredmdobson/concentus/SilkShapeState;->HarmBoost_smth_Q16:I

    sub-int v4, v3, v4

    const/16 v6, 0x6666

    .line 480
    invoke-static {v0, v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    iput v0, v2, Lio/github/jaredmdobson/concentus/SilkShapeState;->HarmBoost_smth_Q16:I

    .line 481
    iget v0, v2, Lio/github/jaredmdobson/concentus/SilkShapeState;->HarmShapeGain_smth_Q16:I

    iget v4, v2, Lio/github/jaredmdobson/concentus/SilkShapeState;->HarmShapeGain_smth_Q16:I

    sub-int v4, v7, v4

    .line 482
    invoke-static {v0, v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    iput v0, v2, Lio/github/jaredmdobson/concentus/SilkShapeState;->HarmShapeGain_smth_Q16:I

    .line 483
    iget v0, v2, Lio/github/jaredmdobson/concentus/SilkShapeState;->Tilt_smth_Q16:I

    iget v4, v2, Lio/github/jaredmdobson/concentus/SilkShapeState;->Tilt_smth_Q16:I

    sub-int v4, v5, v4

    .line 484
    invoke-static {v0, v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    iput v0, v2, Lio/github/jaredmdobson/concentus/SilkShapeState;->Tilt_smth_Q16:I

    .line 486
    iget-object v0, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->HarmBoost_Q14:[I

    iget v4, v2, Lio/github/jaredmdobson/concentus/SilkShapeState;->HarmBoost_smth_Q16:I

    const/4 v8, 0x2

    invoke-static {v4, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v4

    aput v4, v0, v13

    .line 487
    iget-object v0, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->HarmShapeGain_Q14:[I

    iget v4, v2, Lio/github/jaredmdobson/concentus/SilkShapeState;->HarmShapeGain_smth_Q16:I

    invoke-static {v4, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v4

    aput v4, v0, v13

    .line 488
    iget-object v0, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Tilt_Q14:[I

    iget v4, v2, Lio/github/jaredmdobson/concentus/SilkShapeState;->Tilt_smth_Q16:I

    invoke-static {v4, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v4

    aput v4, v0, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_17

    :cond_1a
    return-void
.end method

.method static warped_gain([III)I
    .locals 2

    neg-int p1, p1

    add-int/lit8 v0, p2, -0x1

    .line 49
    aget v0, p0, v0

    add-int/lit8 p2, p2, -0x2

    :goto_0
    if-ltz p2, :cond_0

    .line 51
    aget v1, p0, p2

    invoke-static {v1, v0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    const/high16 p0, 0x1000000

    neg-int p1, p1

    .line 53
    invoke-static {p0, v0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result p0

    const/16 p1, 0x28

    .line 54
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result p0

    return p0
.end method
