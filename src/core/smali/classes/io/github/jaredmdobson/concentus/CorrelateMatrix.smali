.class Lio/github/jaredmdobson/concentus/CorrelateMatrix;
.super Ljava/lang/Object;
.source "CorrelateMatrix.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_corrMatrix([SIIII[IILio/github/jaredmdobson/concentus/BoxedValueInt;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v9, p7

    .line 100
    new-instance v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v10, 0x0

    invoke-direct {v3, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 101
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v4, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    add-int v5, v2, p3

    const/4 v11, 0x1

    sub-int/2addr v5, v11

    .line 102
    invoke-static {v3, v4, v0, v1, v5}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SII)V

    .line 103
    iget v3, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 104
    iget v4, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 107
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v5

    sub-int v5, p4, v5

    invoke-static {v5, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result v5

    .line 109
    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v3

    add-int/2addr v4, v5

    move v5, v1

    :goto_0
    add-int v12, v1, p3

    add-int/lit8 v13, v12, -0x1

    if-ge v5, v13, :cond_0

    .line 115
    aget-short v6, v0, v5

    invoke-static {v6, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v6

    invoke-static {v6, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v6

    sub-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget v1, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-ge v4, v1, :cond_1

    .line 119
    iget v1, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    sub-int/2addr v1, v4

    invoke-static {v3, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v3

    .line 120
    iget v4, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    :cond_1
    move v8, v3

    move v1, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v7, p3

    move-object/from16 v3, p5

    move/from16 v4, p6

    .line 125
    invoke-static/range {v3 .. v8}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([IIIIII)V

    const/4 v5, 0x1

    :goto_1
    if-ge v5, v7, :cond_2

    add-int v3, v13, v2

    sub-int/2addr v3, v5

    .line 129
    aget-short v3, v0, v3

    invoke-static {v3, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v3

    invoke-static {v3, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v3

    invoke-static {v8, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v3

    sub-int v4, v13, v5

    .line 130
    aget-short v4, v0, v4

    invoke-static {v4, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    invoke-static {v4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v4

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v8

    move v6, v5

    move-object/from16 v3, p5

    move/from16 v4, p6

    .line 131
    invoke-static/range {v3 .. v8}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([IIIIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v12, v12, -0x2

    if-lez v1, :cond_5

    const/4 v5, 0x1

    :goto_2
    if-ge v5, v7, :cond_7

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    add-int v4, v13, v3

    .line 143
    aget-short v4, v0, v4

    add-int v6, v12, v3

    aget-short v6, v0, v6

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    invoke-static {v4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v4

    add-int/2addr v8, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    move-object/from16 v3, p5

    move/from16 v4, p6

    .line 146
    invoke-static/range {v3 .. v8}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([IIIIII)V

    const/4 v3, 0x0

    move/from16 v7, p3

    move-object/from16 v3, p5

    move v6, v5

    const/4 v5, 0x0

    .line 147
    invoke-static/range {v3 .. v8}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([IIIIII)V

    move v14, v6

    const/4 v5, 0x1

    :goto_4
    sub-int v3, p3, v14

    if-ge v5, v3, :cond_4

    add-int v3, v13, v2

    sub-int/2addr v3, v5

    .line 149
    aget-short v3, v0, v3

    add-int v4, v12, v2

    sub-int/2addr v4, v5

    aget-short v4, v0, v4

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v3

    invoke-static {v3, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v3

    invoke-static {v8, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v3

    sub-int v4, v13, v5

    .line 150
    aget-short v4, v0, v4

    sub-int v6, v12, v5

    aget-short v6, v0, v6

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    invoke-static {v4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v4

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v8

    add-int v6, v14, v5

    move v3, v6

    move v6, v5

    move v5, v3

    move/from16 v7, p3

    move-object/from16 v3, p5

    move/from16 v4, p6

    .line 151
    invoke-static/range {v3 .. v8}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([IIIIII)V

    move v15, v6

    move v6, v5

    move v5, v15

    .line 152
    invoke-static/range {v3 .. v8}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([IIIIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    move/from16 v7, p3

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v5, v14, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x1

    :goto_5
    if-ge v5, v7, :cond_7

    .line 160
    invoke-static {v0, v13, v0, v12, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_inner_prod([SI[SII)I

    move-result v8

    const/4 v6, 0x0

    move-object/from16 v3, p5

    move/from16 v4, p6

    .line 161
    invoke-static/range {v3 .. v8}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([IIIIII)V

    const/4 v3, 0x0

    move/from16 v7, p3

    move-object/from16 v3, p5

    move v6, v5

    const/4 v5, 0x0

    .line 162
    invoke-static/range {v3 .. v8}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([IIIIII)V

    move v10, v6

    const/4 v5, 0x1

    :goto_6
    sub-int v3, p3, v10

    if-ge v5, v3, :cond_6

    add-int v3, v13, v2

    sub-int/2addr v3, v5

    .line 165
    aget-short v3, v0, v3

    add-int v4, v12, v2

    sub-int/2addr v4, v5

    aget-short v4, v0, v4

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v3

    invoke-static {v8, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v3

    sub-int v4, v13, v5

    .line 166
    aget-short v4, v0, v4

    sub-int v6, v12, v5

    aget-short v6, v0, v6

    invoke-static {v3, v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v8

    add-int v6, v10, v5

    move v3, v6

    move v6, v5

    move v5, v3

    move/from16 v7, p3

    move-object/from16 v3, p5

    move/from16 v4, p6

    .line 167
    invoke-static/range {v3 .. v8}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([IIIIII)V

    move v15, v6

    move v6, v5

    move v5, v15

    .line 168
    invoke-static/range {v3 .. v8}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([IIIIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v5, v10, 0x1

    move/from16 v7, p3

    goto :goto_5

    .line 173
    :cond_7
    iput v1, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method

.method static silk_corrVector([SI[SIII[II)V
    .locals 6

    add-int/2addr p1, p5

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    if-lez p7, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, p4, :cond_0

    add-int v4, p1, v2

    .line 66
    aget-short v4, p0, v4

    add-int v5, p3, v2

    aget-short v5, p2, v5

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    invoke-static {v4, p7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 68
    :cond_0
    aput v3, p6, v0

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez p7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 74
    :goto_2
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    :goto_3
    if-ge v1, p5, :cond_3

    .line 76
    invoke-static {p0, p1, p2, p3, p4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_inner_prod([SI[SII)I

    move-result p7

    aput p7, p6, v1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method
