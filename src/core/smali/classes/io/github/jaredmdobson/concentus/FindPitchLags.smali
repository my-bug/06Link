.class Lio/github/jaredmdobson/concentus/FindPitchLags;
.super Ljava/lang/Object;
.source "FindPitchLags.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_find_pitch_lags(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SilkEncoderControl;[S[SI)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x11

    .line 49
    new-array v2, v2, [I

    const/16 v3, 0x10

    .line 50
    new-array v4, v3, [S

    .line 51
    new-array v5, v3, [I

    .line 52
    new-array v10, v3, [S

    .line 61
    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_pitch:I

    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    add-int/2addr v6, v7

    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    add-int v12, v6, v7

    .line 64
    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_LPC_win_length:I

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-lt v12, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 66
    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int v9, p4, v6

    .line 77
    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_LPC_win_length:I

    new-array v6, v6, [S

    add-int v7, v9, v12

    .line 80
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_LPC_win_length:I

    sub-int v19, v7, v8

    const/16 v20, 0x1

    .line 82
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_pitch:I

    const/16 v17, 0x0

    move-object/from16 v18, p3

    move-object/from16 v16, v6

    move/from16 v21, v7

    invoke-static/range {v16 .. v21}, Lio/github/jaredmdobson/concentus/ApplySineWindow;->silk_apply_sine_window([SI[SIII)V

    .line 85
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_pitch:I

    .line 86
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_pitch:I

    add-int v8, v19, v8

    .line 87
    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_LPC_win_length:I

    iget v13, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_pitch:I

    invoke-static {v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v13

    sub-int/2addr v11, v13

    move-object/from16 v13, p3

    invoke-static {v13, v8, v6, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_LPC_win_length:I

    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_pitch:I

    invoke-static {v3, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    sub-int/2addr v11, v3

    add-int v17, v7, v11

    .line 91
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_LPC_win_length:I

    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_pitch:I

    invoke-static {v7, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    sub-int/2addr v3, v7

    add-int v19, v8, v3

    const/16 v20, 0x2

    .line 92
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_pitch:I

    move/from16 v21, v3

    move-object/from16 v18, v13

    invoke-static/range {v16 .. v21}, Lio/github/jaredmdobson/concentus/ApplySineWindow;->silk_apply_sine_window([SI[SIII)V

    .line 95
    new-instance v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v3, v15}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 96
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_LPC_win_length:I

    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    add-int/2addr v8, v14

    invoke-static {v2, v3, v6, v7, v8}, Lio/github/jaredmdobson/concentus/Autocorrelation;->silk_autocorr([ILio/github/jaredmdobson/concentus/BoxedValueInt;[SII)V

    .line 97
    iget v3, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 100
    aget v3, v2, v15

    const/16 v6, 0x42

    invoke-static {v3, v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/2addr v3, v14

    aput v3, v2, v15

    .line 103
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    invoke-static {v4, v2, v3}, Lio/github/jaredmdobson/concentus/Schur;->silk_schur([S[II)I

    move-result v3

    .line 106
    aget v2, v2, v15

    invoke-static {v3, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v3

    const/16 v6, 0x10

    invoke-static {v2, v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v2

    iput v2, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->predGain_Q16:I

    .line 109
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    invoke-static {v5, v4, v2}, Lio/github/jaredmdobson/concentus/K2A;->silk_k2a([I[SI)V

    const/4 v2, 0x0

    .line 112
    :goto_1
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    if-ge v2, v3, :cond_1

    .line 113
    aget v3, v5, v2

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    :cond_1
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    const v3, 0xfd71

    invoke-static {v10, v2, v3}, Lio/github/jaredmdobson/concentus/BWExpander;->silk_bwexpander([SII)V

    const/4 v11, 0x0

    .line 126
    iget v13, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    const/4 v7, 0x0

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    invoke-static/range {v6 .. v13}, Lio/github/jaredmdobson/concentus/Filters;->silk_LPC_analysis_filter([SI[SI[SIII)V

    .line 128
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v2, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    if-eqz v2, :cond_3

    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    if-nez v2, :cond_3

    const/16 v2, -0x20

    .line 131
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    const/16 v4, 0x1333

    invoke-static {v4, v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v2

    const v3, -0x33332

    .line 132
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    invoke-static {v2, v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    .line 133
    iget-byte v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prevSignalType:B

    invoke-static {v3, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    const/16 v4, -0x4cc

    invoke-static {v2, v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v2

    const/16 v3, -0x665

    .line 134
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->input_tilt_Q15:I

    invoke-static {v2, v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    .line 135
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v23

    .line 144
    new-instance v2, Lio/github/jaredmdobson/concentus/BoxedValueShort;

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-short v3, v3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    invoke-direct {v2, v3}, Lio/github/jaredmdobson/concentus/BoxedValueShort;-><init>(S)V

    .line 145
    new-instance v3, Lio/github/jaredmdobson/concentus/BoxedValueByte;

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v4, v4, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    invoke-direct {v3, v4}, Lio/github/jaredmdobson/concentus/BoxedValueByte;-><init>(B)V

    .line 146
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPCorr_Q15:I

    invoke-direct {v4, v5}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 147
    iget-object v1, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->pitchL:[I

    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prevLag:I

    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationThreshold_Q16:I

    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationComplexity:I

    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    move-object/from16 v16, p2

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    invoke-static/range {v16 .. v26}, Lio/github/jaredmdobson/concentus/PitchAnalysisCore;->silk_pitch_analysis_core([S[ILio/github/jaredmdobson/concentus/BoxedValueShort;Lio/github/jaredmdobson/concentus/BoxedValueByte;Lio/github/jaredmdobson/concentus/BoxedValueInt;IIIIII)I

    move-result v1

    if-nez v1, :cond_2

    .line 150
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    const/4 v5, 0x2

    iput-byte v5, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    goto :goto_2

    .line 152
    :cond_2
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-byte v14, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    .line 155
    :goto_2
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-short v2, v2, Lio/github/jaredmdobson/concentus/BoxedValueShort;->Val:S

    iput-short v2, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    .line 156
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v2, v3, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    iput-byte v2, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    .line 157
    iget v1, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iput v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPCorr_Q15:I

    return-void

    .line 159
    :cond_3
    iget-object v1, v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->pitchL:[I

    const/4 v2, 0x4

    invoke-static {v1, v15, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 160
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-short v15, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    .line 161
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-byte v15, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    .line 162
    iput v15, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPCorr_Q15:I

    return-void
.end method
