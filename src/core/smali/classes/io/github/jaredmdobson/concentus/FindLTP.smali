.class Lio/github/jaredmdobson/concentus/FindLTP;
.super Ljava/lang/Object;
.source "FindLTP.java"


# static fields
.field private static final LTP_CORRS_HEAD_ROOM:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_find_LTP([S[ILio/github/jaredmdobson/concentus/BoxedValueInt;[S[I[IIII[I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v3, p6

    move/from16 v10, p7

    const/4 v11, 0x5

    .line 72
    new-array v12, v11, [I

    .line 73
    new-array v13, v11, [I

    const/4 v14, 0x4

    .line 74
    new-array v15, v14, [I

    .line 75
    new-array v1, v14, [I

    .line 77
    new-array v2, v14, [I

    .line 84
    new-array v4, v11, [I

    .line 85
    new-array v5, v14, [I

    const/4 v6, 0x0

    move/from16 v7, p8

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    const/16 p8, 0x10

    const/4 v14, 0x2

    if-ge v8, v10, :cond_8

    .line 92
    aget v19, p4, v8

    add-int/lit8 v19, v19, 0x2

    sub-int v19, v7, v19

    .line 93
    new-instance v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v11, v6}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 94
    new-instance v14, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v14, v6}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move-object/from16 v6, p3

    .line 95
    invoke-static {v11, v14, v6, v7, v3}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SII)V

    .line 97
    iget v11, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput v11, v5, v8

    .line 98
    iget v11, v14, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 101
    aget v14, v5, v8

    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v14

    move-object/from16 v22, v1

    const/4 v1, 0x2

    if-ge v14, v1, :cond_0

    .line 103
    aget v1, v5, v8

    rsub-int/lit8 v14, v14, 0x2

    invoke-static {v1, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v1

    aput v1, v5, v8

    add-int/2addr v11, v14

    .line 106
    :cond_0
    aput v11, p9, v8

    move v1, v8

    .line 107
    new-instance v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    aget v14, p9, v1

    invoke-direct {v8, v14}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move-object v14, v4

    const/4 v4, 0x5

    move-object/from16 v23, v5

    const/4 v5, 0x2

    move/from16 v21, v1

    move-object v1, v6

    move/from16 v24, v7

    move/from16 v7, v16

    move-object/from16 v6, p1

    move-object/from16 v16, v2

    move/from16 v2, v19

    move-object/from16 v19, v14

    const/4 v14, 0x0

    .line 108
    invoke-static/range {v1 .. v8}, Lio/github/jaredmdobson/concentus/CorrelateMatrix;->silk_corrMatrix([SIIII[IILio/github/jaredmdobson/concentus/BoxedValueInt;)V

    .line 110
    iget v8, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput v8, p9, v21

    const/4 v6, 0x5

    move-object/from16 v3, p3

    move-object v1, v15

    move v15, v7

    move-object/from16 v7, v19

    move-object/from16 v19, v1

    move-object/from16 v1, p3

    move/from16 v5, p6

    move-object/from16 v25, v13

    move/from16 v4, v24

    move-object/from16 v13, p1

    .line 113
    invoke-static/range {v1 .. v8}, Lio/github/jaredmdobson/concentus/CorrelateMatrix;->silk_corrVector([SI[SIII[II)V

    move v8, v5

    .line 115
    aget v1, p9, v21

    if-le v1, v11, :cond_1

    .line 116
    aget v2, v23, v21

    sub-int/2addr v1, v11

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    aput v1, v23, v21

    .line 119
    :cond_1
    aget v1, v23, v21

    if-ltz v1, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 122
    aget v1, v23, v21

    const/16 v2, 0x444

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    const/4 v11, 0x5

    .line 123
    invoke-static {v13, v15, v14, v14, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGet([IIIII)I

    move-result v3

    invoke-static {v1, v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    const/4 v3, 0x4

    .line 124
    invoke-static {v13, v15, v3, v3, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGet([IIIII)I

    move-result v4

    invoke-static {v1, v4, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    const/4 v6, 0x5

    move-object v1, v13

    move v2, v15

    move/from16 v4, v21

    move-object/from16 v3, v23

    .line 125
    invoke-static/range {v1 .. v6}, Lio/github/jaredmdobson/concentus/RegularizeCorrelations;->silk_regularize_correlations([II[IIII)V

    move-object v6, v1

    .line 127
    invoke-static {v6, v15, v11, v7, v12}, Lio/github/jaredmdobson/concentus/LinearAlgebra;->silk_solve_LDL([III[I[I)V

    move/from16 v1, v17

    .line 131
    invoke-static {v12, v0, v1}, Lio/github/jaredmdobson/concentus/FindLTP;->silk_fit_LTP([I[SI)V

    .line 134
    aget v5, v23, v21

    const/4 v6, 0x5

    move-object v4, v7

    const/16 v7, 0xe

    move-object/from16 v2, p1

    move v3, v15

    invoke-static/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/ResidualEnergy;->silk_residual_energy16_covar([SI[II[IIII)I

    move-result v5

    move-object v6, v2

    move v7, v3

    aput v5, v22, v21

    .line 138
    aget v0, p9, v21

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v0

    .line 139
    aget v2, v22, v21

    aget v3, p5, v21

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v2

    const/16 v3, 0x28f

    .line 140
    invoke-static {v8, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    aget v5, p9, v21

    sub-int/2addr v5, v0

    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    .line 142
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result v2

    .line 143
    aget v3, p5, v21

    const/4 v5, 0x0

    int-to-long v14, v3

    shl-long v13, v14, p8

    const-wide/32 v26, 0x7fffffff

    cmp-long v3, v13, v26

    if-gez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 145
    aget v3, p5, v21

    const/16 v11, 0x10

    invoke-static {v3, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v2

    .line 147
    aget v3, p9, v21

    const/16 v11, 0x1f

    add-int/2addr v3, v11

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1a

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    move v3, v7

    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v13, v7, 0x19

    if-ge v3, v13, :cond_4

    .line 153
    aget v13, v6, v3

    invoke-static {v13, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 155
    :cond_4
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    if-ltz v2, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 157
    :goto_4
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ge v2, v11, :cond_6

    const/4 v3, 0x1

    .line 159
    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    invoke-static {v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_32(II)I

    move-result v0

    :cond_6
    const/16 v2, 0x19

    .line 162
    invoke-static {v6, v7, v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_scale_vector32_Q26_lshift_18([IIII)V

    const/4 v2, 0x2

    const/4 v11, 0x5

    .line 165
    invoke-static {v6, v7, v2, v2, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGet([IIIII)I

    move-result v0

    aput v0, v16, v21

    if-ltz v0, :cond_7

    const/16 v20, 0x1

    goto :goto_5

    :cond_7
    const/16 v20, 0x0

    .line 167
    :goto_5
    invoke-static/range {v20 .. v20}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int v7, v24, v8

    add-int/lit8 v17, v1, 0x5

    add-int/lit8 v0, v21, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x5

    move v3, v8

    move-object/from16 v2, v16

    move-object/from16 v15, v19

    move-object/from16 v1, v22

    move-object/from16 v5, v23

    move v8, v0

    move/from16 v16, v13

    move-object/from16 v13, v25

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v22, v1

    move-object/from16 v16, v2

    move-object/from16 v23, v5

    move-object/from16 v25, v13

    move-object/from16 v19, v15

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v10, :cond_9

    .line 176
    aget v1, p9, v6

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    if-eqz v9, :cond_c

    const/4 v3, 0x1

    .line 183
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v10, :cond_a

    .line 186
    aget v4, v23, v6

    aget v7, p5, v6

    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v4

    aget v7, p9, v6

    sub-int v7, v0, v7

    add-int/2addr v7, v3

    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    .line 188
    aget v4, v22, v6

    aget v7, p5, v6

    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v4

    aget v7, p9, v6

    sub-int v7, v0, v7

    add-int/2addr v7, v3

    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 191
    :cond_a
    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result v1

    const/16 v11, 0x10

    .line 194
    invoke-static {v2, v1, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v1

    .line 195
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v2

    add-int/lit16 v2, v2, -0x800

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v2

    iput v2, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 197
    iget v2, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v1

    add-int/lit16 v1, v1, -0x800

    invoke-static {v3, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v1

    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v1

    if-ne v2, v1, :cond_b

    const/4 v6, 0x1

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    :goto_8
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    :cond_c
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v10, :cond_e

    .line 204
    aput v5, v19, v6

    move v2, v1

    :goto_a
    const/16 v18, 0x5

    add-int/lit8 v3, v1, 0x5

    if-ge v2, v3, :cond_d

    .line 206
    aget v3, v19, v6

    aget-short v4, p0, v2

    add-int/2addr v3, v4

    aput v3, v19, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_d
    add-int/lit8 v6, v6, 0x1

    move v1, v3

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v10, :cond_f

    .line 217
    aget v3, v19, v6

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v3

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_32(II)I

    move-result v1

    .line 220
    aget v3, v16, v6

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    aget v4, p9, v6

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_32(II)I

    move-result v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_f
    const v3, 0x28000

    if-gt v1, v3, :cond_10

    const/4 v6, 0x1

    goto :goto_c

    :cond_10
    const/4 v6, 0x0

    .line 224
    :goto_c
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v2, v2, 0x20

    .line 227
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0xe

    add-int/lit8 v1, v0, 0x1d

    sub-int/2addr v2, v1

    const/4 v14, 0x0

    .line 232
    invoke-static {v2, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x106

    .line 236
    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    const/16 v20, 0x1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v10, :cond_11

    .line 241
    aget v3, v16, v6

    aget v4, p9, v6

    sub-int v4, v0, v4

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v1

    .line 243
    aget v3, v16, v6

    aget v4, p9, v6

    sub-int v4, v0, v4

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    aget v4, v19, v6

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_11
    const/16 v0, 0xc

    .line 246
    invoke-static {v2, v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v0

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v10, :cond_15

    .line 251
    aget v2, p9, v6

    rsub-int/lit8 v3, v2, 0x2

    if-lez v3, :cond_12

    .line 252
    aget v3, v16, v6

    rsub-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v2

    goto :goto_f

    .line 254
    :cond_12
    aget v3, v16, v6

    add-int/lit8 v2, v2, -0x2

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v2

    :goto_f
    const/16 v3, 0xa

    const v4, 0x666667

    .line 260
    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    add-int/2addr v3, v2

    .line 258
    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v2

    aget v3, v19, v6

    const/4 v4, 0x2

    .line 261
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    invoke-static {v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB_SAT32(II)I

    move-result v3

    const/4 v5, 0x4

    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v3

    .line 257
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_10
    const/4 v11, 0x5

    if-ge v3, v11, :cond_13

    add-int v7, v1, v3

    .line 266
    aget-short v7, p0, v7

    const/16 v8, 0x666

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_16(SS)S

    move-result v7

    aput v7, v25, v3

    add-int/2addr v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 271
    :cond_13
    invoke-static {v2, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v11, 0x5

    :goto_11
    if-ge v3, v11, :cond_14

    add-int v5, v1, v3

    .line 274
    aget-short v7, p0, v5

    const/4 v8, 0x4

    invoke-static {v2, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v9

    aget v12, v25, v3

    invoke-static {v9, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v9

    add-int/2addr v7, v9

    const/16 v9, -0x3e80

    const/16 v12, 0x6d60

    invoke-static {v7, v9, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT_32(III)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, p0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_14
    const/4 v8, 0x4

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_15
    return-void
.end method

.method static silk_fit_LTP([I[SI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    .line 293
    aget v2, p0, v0

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v2

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
