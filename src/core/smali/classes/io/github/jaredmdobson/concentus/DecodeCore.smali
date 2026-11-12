.class Lio/github/jaredmdobson/concentus/DecodeCore;
.super Ljava/lang/Object;
.source "DecodeCore.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_decode_core(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/SilkDecoderControl;[SI[S)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 52
    iget-object v3, v1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->LTPCoef_Q14:[S

    .line 65
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prev_gain_Q16:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 67
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    new-array v7, v4, [S

    .line 68
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v4, v8

    new-array v4, v4, [I

    .line 69
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    new-array v15, v8, [I

    .line 70
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    const/16 v9, 0x10

    add-int/2addr v8, v9

    new-array v8, v8, [I

    .line 72
    sget-object v10, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Quantization_Offsets_Q10:[[S

    iget-object v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v11, v11, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    shr-int/2addr v11, v5

    aget-object v10, v10, v11

    iget-object v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v11, v11, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    aget-short v10, v10, v11

    .line 74
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v11, v11, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    const/4 v12, 0x4

    if-ge v11, v12, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 81
    :goto_1
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v11, v11, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    const/4 v13, 0x0

    .line 82
    :goto_2
    iget v14, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    const/16 v17, 0x1

    const/16 v5, 0xe

    if-ge v13, v14, :cond_5

    .line 83
    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RAND(I)I

    move-result v11

    .line 84
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->exc_Q14:[I

    const/16 v18, 0x4

    aget-short v12, p4, v13

    invoke-static {v12, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    aput v5, v14, v13

    .line 85
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->exc_Q14:[I

    aget v5, v5, v13

    if-lez v5, :cond_2

    .line 86
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->exc_Q14:[I

    aget v12, v5, v13

    add-int/lit16 v12, v12, -0x500

    aput v12, v5, v13

    goto :goto_3

    .line 88
    :cond_2
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->exc_Q14:[I

    aget v5, v5, v13

    if-gez v5, :cond_3

    .line 89
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->exc_Q14:[I

    aget v12, v5, v13

    add-int/lit16 v12, v12, 0x500

    aput v12, v5, v13

    .line 92
    :cond_3
    :goto_3
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->exc_Q14:[I

    aget v12, v5, v13

    shl-int/lit8 v14, v10, 0x4

    add-int/2addr v12, v14

    aput v12, v5, v13

    if-gez v11, :cond_4

    .line 94
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->exc_Q14:[I

    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->exc_Q14:[I

    aget v12, v12, v13

    neg-int v12, v12

    aput v12, v5, v13

    .line 97
    :cond_4
    aget-short v5, p4, v13

    invoke-static {v11, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32_ovflw(II)I

    move-result v11

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    const/4 v12, 0x4

    goto :goto_2

    :cond_5
    const/16 v18, 0x4

    .line 101
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sLPC_Q14_buf:[I

    invoke-static {v10, v6, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v10, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    move/from16 v20, p3

    move/from16 v19, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    .line 107
    :goto_4
    iget v12, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    if-ge v10, v12, :cond_18

    .line 110
    iget-object v12, v1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->PredCoef_Q12:[[S

    shr-int/lit8 v13, v10, 0x1

    aget-object v12, v12, v13

    mul-int/lit8 v13, v10, 0x5

    .line 112
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v14, v14, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    const/16 v22, 0xe

    .line 114
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->Gains_Q16:[I

    aget v5, v5, v10

    move-object/from16 p4, v12

    const/4 v12, 0x6

    invoke-static {v5, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    .line 115
    iget-object v12, v1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->Gains_Q16:[I

    aget v12, v12, v10

    const/16 v6, 0x2f

    invoke-static {v12, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v6

    .line 118
    iget-object v12, v1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->Gains_Q16:[I

    aget v12, v12, v10

    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prev_gain_Q16:I

    move-object/from16 v26, v4

    if-eq v12, v9, :cond_6

    .line 119
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prev_gain_Q16:I

    iget-object v12, v1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->Gains_Q16:[I

    aget v12, v12, v10

    const/16 v4, 0x10

    invoke-static {v9, v12, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v9

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v4, :cond_7

    .line 123
    aget v4, v8, v12

    invoke-static {v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v4

    aput v4, v8, v12

    add-int/lit8 v12, v12, 0x1

    const/16 v4, 0x10

    goto :goto_5

    :cond_6
    const/high16 v9, 0x10000

    :cond_7
    if-eqz v6, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    .line 130
    :goto_6
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 131
    iget-object v4, v1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->Gains_Q16:[I

    aget v4, v4, v10

    iput v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prev_gain_Q16:I

    .line 134
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lossCnt:I

    const/4 v12, 0x2

    if-eqz v4, :cond_9

    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevSignalType:I

    if-ne v4, v12, :cond_9

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v4, v4, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    if-eq v4, v12, :cond_9

    if-ge v10, v12, :cond_9

    const/4 v4, 0x5

    const/4 v12, 0x0

    .line 137
    invoke-static {v3, v12, v13, v4}, Lio/github/jaredmdobson/concentus/Arrays;->MemSetWithOffset([SSII)V

    add-int/lit8 v12, v13, 0x2

    const/16 v14, 0x1000

    .line 138
    aput-short v14, v3, v12

    .line 141
    iget-object v12, v1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->pitchL:[I

    iget v14, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lagPrev:I

    aput v14, v12, v10

    const/4 v12, 0x2

    goto :goto_7

    :cond_9
    const/4 v4, 0x5

    move v12, v14

    :goto_7
    const/4 v14, 0x2

    if-ne v12, v14, :cond_11

    .line 146
    iget-object v11, v1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->pitchL:[I

    aget v29, v11, v10

    if-eqz v10, :cond_c

    if-ne v10, v14, :cond_a

    if-eqz v16, :cond_a

    goto :goto_9

    :cond_a
    const/high16 v6, 0x10000

    if-eq v9, v6, :cond_b

    const/4 v6, 0x0

    :goto_8
    add-int/lit8 v11, v29, 0x2

    if-ge v6, v11, :cond_b

    sub-int v11, v19, v6

    add-int/lit8 v11, v11, -0x1

    .line 171
    aget v14, v26, v11

    invoke-static {v9, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v14

    aput v14, v26, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_b
    move-object/from16 v25, v3

    move-object v4, v8

    move/from16 v18, v10

    move v2, v12

    move/from16 v31, v13

    const/4 v3, 0x2

    const/16 v23, 0x6

    const/16 v28, 0x5

    move-object/from16 v8, p4

    const/16 p4, 0x4

    goto/16 :goto_d

    .line 151
    :cond_c
    :goto_9
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    sub-int v9, v9, v29

    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    sub-int/2addr v9, v11

    const/4 v14, 0x2

    sub-int/2addr v9, v14

    if-lez v9, :cond_d

    const/4 v11, 0x1

    goto :goto_a

    :cond_d
    const/4 v11, 0x0

    .line 152
    :goto_a
    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ne v10, v14, :cond_e

    .line 155
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->outBuf:[S

    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    const/16 v27, 0x2

    iget v14, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    mul-int/lit8 v14, v14, 0x2

    move/from16 v30, v12

    move/from16 v12, p3

    invoke-static {v2, v12, v11, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    :cond_e
    move/from16 v30, v12

    const/16 v27, 0x2

    move/from16 v12, p3

    :goto_b
    move-object v4, v8

    move v8, v9

    .line 158
    iget-object v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->outBuf:[S

    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    mul-int v11, v11, v10

    add-int/2addr v11, v8

    iget v14, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    sub-int/2addr v14, v8

    move/from16 v31, v13

    move v13, v14

    iget v14, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    const/4 v12, 0x0

    move-object/from16 v25, v3

    move/from16 v18, v10

    move v10, v11

    move/from16 v2, v30

    const/4 v3, 0x2

    const/16 v23, 0x6

    const/16 v28, 0x5

    move-object/from16 v11, p4

    const/16 p4, 0x4

    invoke-static/range {v7 .. v14}, Lio/github/jaredmdobson/concentus/Filters;->silk_LPC_analysis_filter([SI[SI[SIII)V

    move-object v8, v11

    if-nez v18, :cond_f

    .line 164
    iget v9, v1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->LTP_scale_Q14:I

    invoke-static {v6, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    invoke-static {v6, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v6

    :cond_f
    const/4 v9, 0x0

    :goto_c
    add-int/lit8 v10, v29, 0x2

    if-ge v9, v10, :cond_10

    sub-int v10, v19, v9

    add-int/lit8 v10, v10, -0x1

    .line 167
    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    sub-int/2addr v11, v9

    add-int/lit8 v11, v11, -0x1

    aget-short v11, v7, v11

    invoke-static {v6, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v11

    aput v11, v26, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_10
    :goto_d
    move/from16 v11, v29

    goto :goto_e

    :cond_11
    move-object/from16 v25, v3

    move-object v4, v8

    move/from16 v18, v10

    move v2, v12

    move/from16 v31, v13

    const/4 v3, 0x2

    const/16 v23, 0x6

    const/16 v28, 0x5

    move-object/from16 v8, p4

    const/16 p4, 0x4

    :goto_e
    if-ne v2, v3, :cond_13

    sub-int v2, v19, v11

    add-int/2addr v2, v3

    const/4 v6, 0x0

    .line 180
    :goto_f
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    if-ge v6, v9, :cond_12

    .line 184
    aget v9, v26, v2

    aget-short v10, v25, v31

    invoke-static {v3, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    add-int/lit8 v10, v2, -0x1

    .line 185
    aget v10, v26, v10

    add-int/lit8 v13, v31, 0x1

    aget-short v12, v25, v13

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    add-int/lit8 v10, v2, -0x2

    .line 186
    aget v10, v26, v10

    add-int/lit8 v13, v31, 0x2

    aget-short v12, v25, v13

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    add-int/lit8 v10, v2, -0x3

    .line 187
    aget v10, v26, v10

    add-int/lit8 v13, v31, 0x3

    aget-short v12, v25, v13

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    add-int/lit8 v10, v2, -0x4

    .line 188
    aget v10, v26, v10

    add-int/lit8 v13, v31, 0x4

    aget-short v12, v25, v13

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    add-int/lit8 v2, v2, 0x1

    .line 192
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->exc_Q14:[I

    add-int v12, v21, v6

    aget v10, v10, v12

    const/4 v12, 0x1

    invoke-static {v10, v9, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v9

    aput v9, v15, v6

    .line 195
    invoke-static {v9, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    aput v9, v26, v19

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v17, 0x1

    goto :goto_f

    :cond_12
    move-object v2, v15

    const/4 v12, 0x0

    goto :goto_10

    .line 199
    :cond_13
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->exc_Q14:[I

    move/from16 v12, v21

    :goto_10
    const/4 v6, 0x0

    .line 203
    :goto_11
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    if-ge v6, v9, :cond_17

    .line 205
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    const/16 v10, 0xa

    if-eq v9, v10, :cond_15

    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    const/16 v13, 0x10

    if-ne v9, v13, :cond_14

    goto :goto_12

    :cond_14
    const/4 v9, 0x0

    goto :goto_13

    :cond_15
    :goto_12
    const/4 v9, 0x1

    :goto_13
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 207
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    const/4 v13, 0x1

    invoke-static {v9, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    add-int/lit8 v14, v6, 0x10

    add-int/lit8 v17, v6, 0xf

    const/16 v29, 0x2

    .line 208
    aget v3, v4, v17

    const/16 v17, 0xa

    const/16 v24, 0x0

    aget-short v10, v8, v24

    invoke-static {v9, v3, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v9, v6, 0xe

    .line 209
    aget v9, v4, v9

    aget-short v10, v8, v13

    invoke-static {v3, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v9, v6, 0xd

    .line 210
    aget v9, v4, v9

    aget-short v10, v8, v29

    invoke-static {v3, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v9, v6, 0xc

    .line 211
    aget v9, v4, v9

    const/4 v10, 0x3

    aget-short v10, v8, v10

    invoke-static {v3, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v9, v6, 0xb

    .line 212
    aget v9, v4, v9

    aget-short v10, v8, p4

    invoke-static {v3, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v9, v6, 0xa

    .line 213
    aget v9, v4, v9

    aget-short v10, v8, v28

    invoke-static {v3, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v9, v6, 0x9

    .line 214
    aget v9, v4, v9

    aget-short v10, v8, v23

    invoke-static {v3, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v9, v6, 0x8

    .line 215
    aget v9, v4, v9

    const/4 v10, 0x7

    aget-short v10, v8, v10

    invoke-static {v3, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v9, v6, 0x7

    .line 216
    aget v9, v4, v9

    const/16 v10, 0x8

    aget-short v13, v8, v10

    invoke-static {v3, v9, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v9, v6, 0x6

    .line 217
    aget v9, v4, v9

    const/16 v13, 0x9

    aget-short v13, v8, v13

    invoke-static {v3, v9, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    .line 218
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    const/16 v13, 0x10

    if-ne v9, v13, :cond_16

    add-int/lit8 v9, v6, 0x5

    .line 219
    aget v9, v4, v9

    aget-short v13, v8, v17

    invoke-static {v3, v9, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v9, v6, 0x4

    .line 220
    aget v9, v4, v9

    const/16 v13, 0xb

    aget-short v13, v8, v13

    invoke-static {v3, v9, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v9, v6, 0x3

    .line 221
    aget v9, v4, v9

    const/16 v13, 0xc

    aget-short v13, v8, v13

    invoke-static {v3, v9, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v9, v6, 0x2

    .line 222
    aget v9, v4, v9

    const/16 v13, 0xd

    aget-short v13, v8, v13

    invoke-static {v3, v9, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v9, v6, 0x1

    .line 223
    aget v9, v4, v9

    aget-short v13, v8, v22

    invoke-static {v3, v9, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    .line 224
    aget v9, v4, v6

    const/16 v13, 0xf

    aget-short v13, v8, v13

    invoke-static {v3, v9, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    :cond_16
    add-int v9, v12, v6

    .line 228
    aget v9, v2, v9

    const/4 v13, 0x4

    invoke-static {v9, v3, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v3

    aput v3, v4, v14

    add-int v9, v20, v6

    .line 231
    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v3

    invoke-static {v3, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, p2, v9

    add-int/lit8 v6, v6, 0x1

    const/16 p4, 0x4

    const/4 v3, 0x2

    goto/16 :goto_11

    :cond_17
    const/4 v13, 0x4

    .line 237
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    const/16 v3, 0x10

    const/4 v12, 0x0

    invoke-static {v4, v2, v4, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    add-int v21, v21, v2

    .line 239
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    add-int v20, v20, v2

    add-int/lit8 v10, v18, 0x1

    move-object/from16 v2, p2

    move-object v8, v4

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/16 v9, 0x10

    const/16 v17, 0x1

    const/16 v18, 0x4

    goto/16 :goto_4

    :cond_18
    move-object v4, v8

    const/16 v3, 0x10

    const/4 v12, 0x0

    .line 243
    iget-object v0, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sLPC_Q14_buf:[I

    invoke-static {v4, v12, v0, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
