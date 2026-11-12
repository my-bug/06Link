.class Lio/github/jaredmdobson/concentus/FindPredCoefs;
.super Ljava/lang/Object;
.source "FindPredCoefs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_find_pred_coefs(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SilkEncoderControl;[S[SII)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    .line 45
    new-array v8, v2, [I

    .line 46
    new-array v13, v2, [I

    .line 47
    new-array v3, v2, [I

    const/16 v12, 0x10

    .line 48
    new-array v4, v12, [S

    .line 53
    new-array v2, v2, [I

    const v5, 0x1ffffff

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 57
    :goto_0
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v7, v9, :cond_0

    .line 58
    iget-object v9, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v9, v9, v7

    invoke-static {v5, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 60
    :goto_1
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    const/high16 v10, 0x10000

    const/16 v11, 0xe

    const/4 v14, 0x1

    if-ge v7, v9, :cond_3

    .line 62
    iget-object v9, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v9, v9, v7

    if-lez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    :goto_2
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 64
    iget-object v9, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v9, v9, v7

    invoke-static {v5, v9, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v9

    aput v9, v8, v7

    const/16 v11, 0x16b

    .line 67
    invoke-static {v9, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result v9

    aput v9, v8, v7

    .line 70
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v11

    if-ne v9, v11, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    :goto_3
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 71
    aget v9, v8, v7

    invoke-static {v9, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v9

    .line 72
    invoke-static {v9, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    aput v9, v3, v7

    .line 75
    aget v9, v8, v7

    invoke-static {v10, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v9

    aput v9, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 78
    :cond_3
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    mul-int v5, v5, v7

    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    add-int/2addr v5, v7

    new-array v5, v5, [S

    .line 79
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v7, v7, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    const/4 v9, 0x2

    if-ne v7, v9, :cond_5

    .line 89
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iget v15, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    sub-int/2addr v7, v15

    iget-object v15, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->pitchL:[I

    aget v15, v15, v6

    add-int/2addr v15, v9

    if-lt v7, v15, :cond_4

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 91
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    mul-int/lit8 v7, v7, 0x19

    new-array v15, v7, [I

    .line 94
    new-instance v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    iget v9, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPredCodGain_Q7:I

    invoke-direct {v7, v9}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 95
    iget-object v14, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPCoef_Q14:[S

    iget-object v9, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->pitchL:[I

    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    iget v10, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    move-object/from16 v17, p2

    move-object/from16 v23, v2

    move-object/from16 v19, v3

    move/from16 v20, v6

    move-object/from16 v16, v7

    move-object/from16 v18, v9

    move/from16 v21, v10

    move/from16 v22, v11

    invoke-static/range {v14 .. v23}, Lio/github/jaredmdobson/concentus/FindLTP;->silk_find_LTP([S[ILio/github/jaredmdobson/concentus/BoxedValueInt;[S[I[IIII[I)V

    move-object/from16 v2, v16

    .line 98
    iget v2, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iput v2, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPredCodGain_Q7:I

    .line 101
    new-instance v2, Lio/github/jaredmdobson/concentus/BoxedValueByte;

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v3, v3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    invoke-direct {v2, v3}, Lio/github/jaredmdobson/concentus/BoxedValueByte;-><init>(B)V

    .line 102
    new-instance v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sum_log_gain_Q7:I

    invoke-direct {v3, v6}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 103
    iget-object v14, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPCoef_Q14:[S

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTPIndex:[B

    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->mu_LTP_Q9:I

    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPQuantLowComplexity:I

    iget v10, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v19, v7

    move/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v18, v15

    move-object v15, v6

    invoke-static/range {v14 .. v21}, Lio/github/jaredmdobson/concentus/QuantizeLTPGains;->silk_quant_LTP_gains([S[BLio/github/jaredmdobson/concentus/BoxedValueByte;Lio/github/jaredmdobson/concentus/BoxedValueInt;[IIII)V

    .line 106
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v2, v2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    iput-byte v2, v6, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    .line 107
    iget v2, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iput v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sum_log_gain_Q7:I

    move/from16 v2, p5

    .line 110
    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/LTPScaleControl;->silk_LTP_scale_ctrl(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SilkEncoderControl;I)V

    .line 113
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    sub-int v2, p4, v2

    iget-object v6, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPCoef_Q14:[S

    iget-object v7, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->pitchL:[I

    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    iget v10, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    move-object v14, v4

    move-object v3, v5

    const/high16 v24, 0x10000

    const/16 v25, 0xe

    move-object/from16 v4, p3

    move v5, v2

    const/4 v2, 0x0

    invoke-static/range {v3 .. v11}, Lio/github/jaredmdobson/concentus/LTPAnalysisFilter;->silk_LTP_analysis_filter([S[SI[S[I[IIII)V

    move-object v11, v3

    const/high16 v3, 0x10000

    const/16 v4, 0xe

    goto :goto_6

    :cond_5
    move-object v14, v4

    move-object v11, v5

    const/4 v2, 0x0

    const/high16 v24, 0x10000

    const/16 v25, 0xe

    .line 125
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    sub-int v3, p4, v3

    move/from16 v18, v3

    const/4 v6, 0x0

    const/16 v16, 0x0

    .line 127
    :goto_5
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v6, v3, :cond_6

    .line 128
    aget v19, v8, v6

    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    add-int v20, v3, v4

    move-object/from16 v17, p3

    move-object v15, v11

    const/high16 v3, 0x10000

    const/16 v4, 0xe

    invoke-static/range {v15 .. v20}, Lio/github/jaredmdobson/concentus/Inlines;->silk_scale_copy_vector16([SI[SIII)V

    .line 130
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    add-int/2addr v5, v7

    add-int v16, v16, v5

    .line 131
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v18, v18, v5

    add-int/lit8 v6, v6, 0x1

    const/high16 v24, 0x10000

    const/16 v25, 0xe

    goto :goto_5

    :cond_6
    const/high16 v3, 0x10000

    const/16 v4, 0xe

    .line 134
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPCoef_Q14:[S

    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    mul-int/lit8 v6, v6, 0x5

    invoke-static {v5, v2, v6}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 135
    iput v2, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPredCodGain_Q7:I

    .line 136
    iput v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sum_log_gain_Q7:I

    .line 140
    :goto_6
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    if-eqz v5, :cond_7

    const v3, 0xa3d70a

    goto :goto_7

    .line 143
    :cond_7
    iget v5, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPredCodGain_Q7:I

    const/16 v6, 0x5555

    const/16 v7, 0x800

    invoke-static {v7, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_log2lin(I)I

    move-result v5

    const/high16 v6, 0x30000

    .line 145
    iget v7, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->coding_quality_Q14:I

    .line 147
    invoke-static {v3, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    const/16 v6, 0x2710

    .line 146
    invoke-static {v6, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v3

    .line 145
    invoke-static {v5, v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v3

    .line 151
    :goto_7
    invoke-static {v0, v14, v11, v3}, Lio/github/jaredmdobson/concentus/FindLPC;->silk_find_LPC(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;[S[SI)V

    .line 154
    iget-object v3, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->PredCoef_Q12:[[S

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prev_NLSFq_Q15:[S

    invoke-static {v0, v3, v14, v4}, Lio/github/jaredmdobson/concentus/NLSF;->silk_process_NLSFs(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;[[S[S[S)V

    .line 157
    iget-object v9, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->ResNrg:[I

    iget-object v10, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->ResNrgQ:[I

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->PredCoef_Q12:[[S

    move-object v3, v14

    iget v14, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    iget v15, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    move-object v12, v1

    move/from16 v16, v4

    const/16 v1, 0x10

    invoke-static/range {v9 .. v16}, Lio/github/jaredmdobson/concentus/ResidualEnergy;->silk_residual_energy([I[I[S[[S[IIII)V

    .line 161
    iget-object v0, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prev_NLSFq_Q15:[S

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
