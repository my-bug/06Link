.class Lio/github/jaredmdobson/concentus/FindLPC;
.super Ljava/lang/Object;
.source "FindLPC.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_find_LPC(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;[S[SI)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x10

    .line 44
    new-array v5, v2, [I

    .line 46
    new-instance v12, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 47
    new-instance v14, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v14, v13}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 48
    new-instance v15, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v15, v13}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 49
    new-instance v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v3, v13}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move-object v4, v3

    .line 50
    new-instance v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v3, v13}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move-object v6, v4

    .line 51
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v4, v13}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 54
    new-array v7, v2, [I

    .line 57
    new-array v8, v2, [S

    .line 58
    new-array v2, v2, [S

    .line 60
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    iget v10, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    add-int v22, v9, v10

    .line 63
    iget-object v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    const/4 v10, 0x4

    iput-byte v10, v9, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    const/4 v9, 0x4

    .line 66
    iget v10, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    move-object/from16 v18, v7

    const/4 v7, 0x0

    move-object/from16 v26, v6

    move-object v13, v8

    move-object/from16 v27, v14

    move/from16 v9, v22

    const/4 v14, 0x4

    const/16 v25, 0x0

    move-object/from16 v6, p2

    move/from16 v8, p3

    invoke-static/range {v3 .. v11}, Lio/github/jaredmdobson/concentus/BurgModified;->silk_burg_modified(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[I[SIIIII)V

    .line 67
    iget v6, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 68
    iget v7, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 70
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInterpolatedNLSFs:I

    if-eqz v8, :cond_7

    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    if-nez v8, :cond_7

    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ne v8, v14, :cond_7

    mul-int/lit8 v20, v22, 0x2

    const/16 v23, 0x2

    .line 74
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    move-object/from16 v19, p2

    move/from16 v21, p3

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v24, v8

    invoke-static/range {v16 .. v24}, Lio/github/jaredmdobson/concentus/BurgModified;->silk_burg_modified(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[I[SIIIII)V

    move-object/from16 v8, v18

    move/from16 v11, v20

    move/from16 v10, v22

    .line 75
    iget v3, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 76
    iget v4, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    sub-int v9, v4, v7

    const/16 v14, 0x20

    if-ltz v9, :cond_0

    if-ge v9, v14, :cond_2

    .line 83
    invoke-static {v3, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    sub-int/2addr v6, v3

    goto :goto_1

    :cond_0
    const/16 v7, -0x20

    if-le v9, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 86
    :goto_0
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    neg-int v7, v9

    .line 87
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    sub-int/2addr v6, v3

    move v7, v4

    .line 92
    :cond_2
    :goto_1
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    invoke-static {v1, v8, v3}, Lio/github/jaredmdobson/concentus/NLSF;->silk_A2NLSF([S[II)V

    .line 94
    new-array v3, v11, [S

    const/4 v4, 0x3

    :goto_2
    if-ltz v4, :cond_7

    .line 99
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prev_NLSFq_Q15:[S

    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    invoke-static {v2, v8, v1, v4, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_interpolate([S[S[SII)V

    .line 102
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    invoke-static {v13, v2, v8}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF2A([S[SI)V

    const/16 v21, 0x0

    .line 105
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, p2

    move-object/from16 v16, v3

    move/from16 v23, v8

    move/from16 v22, v11

    move-object/from16 v20, v13

    invoke-static/range {v16 .. v23}, Lio/github/jaredmdobson/concentus/Filters;->silk_LPC_analysis_filter([SI[SI[SIII)V

    move/from16 v20, v22

    .line 107
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    sub-int v9, v10, v9

    invoke-static {v12, v15, v3, v8, v9}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SII)V

    .line 109
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    add-int/2addr v8, v10

    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    sub-int v9, v10, v9

    move-object/from16 v14, v26

    move-object/from16 v11, v27

    invoke-static {v11, v14, v3, v8, v9}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SII)V

    .line 112
    iget v8, v15, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v9, v14, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    sub-int/2addr v8, v9

    if-ltz v8, :cond_3

    .line 114
    iget v9, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v9, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v8

    iput v8, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 115
    iget v8, v15, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    goto :goto_3

    .line 117
    :cond_3
    iget v9, v12, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    rsub-int/lit8 v8, v8, 0x0

    invoke-static {v9, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v8

    iput v8, v12, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 118
    iget v8, v14, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    :goto_3
    rsub-int/lit8 v8, v8, 0x0

    .line 120
    iget v9, v12, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move-object/from16 v16, v2

    iget v2, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v9, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    sub-int v9, v8, v7

    if-ltz v9, :cond_5

    .line 125
    invoke-static {v2, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    if-ge v9, v6, :cond_4

    move-object/from16 v17, v3

    const/16 v3, 0x20

    goto :goto_4

    :cond_4
    move-object/from16 v17, v3

    const/16 v3, 0x20

    goto :goto_5

    :cond_5
    neg-int v9, v9

    move-object/from16 v17, v3

    const/16 v3, 0x20

    if-ge v9, v3, :cond_6

    .line 131
    invoke-static {v6, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 145
    :goto_4
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    int-to-byte v7, v4

    iput-byte v7, v6, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    move v6, v2

    move v7, v8

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v27, v11

    move-object/from16 v26, v14

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v11, v20

    const/16 v14, 0x20

    goto/16 :goto_2

    .line 150
    :cond_7
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v2, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    const/4 v14, 0x4

    if-ne v2, v14, :cond_8

    .line 152
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    invoke-static {v1, v5, v2}, Lio/github/jaredmdobson/concentus/NLSF;->silk_A2NLSF([S[II)V

    .line 155
    :cond_8
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v1, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    if-eq v1, v14, :cond_a

    iget v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInterpolatedNLSFs:I

    if-eqz v1, :cond_9

    iget v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    if-nez v1, :cond_9

    iget v0, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ne v0, v14, :cond_9

    goto :goto_6

    :cond_9
    const/4 v13, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v13, 0x1

    :goto_7
    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return-void
.end method
