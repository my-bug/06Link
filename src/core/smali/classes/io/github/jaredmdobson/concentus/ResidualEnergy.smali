.class Lio/github/jaredmdobson/concentus/ResidualEnergy;
.super Ljava/lang/Object;
.source "ResidualEnergy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_residual_energy([I[I[S[[S[IIII)V
    .locals 18

    move/from16 v0, p5

    move/from16 v1, p6

    .line 49
    new-instance v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 50
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v4, v3}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    add-int v5, p7, v0

    mul-int/lit8 v12, v5, 0x2

    .line 60
    new-array v6, v12, [S

    shr-int/lit8 v14, v1, 0x1

    mul-int/lit8 v7, v14, 0x2

    const/4 v15, 0x1

    if-ne v7, v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 61
    :goto_0
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1
    const/4 v8, 0x2

    if-ge v7, v14, :cond_2

    .line 64
    aget-object v10, p3, v7

    const/4 v11, 0x0

    move v13, v7

    const/4 v7, 0x0

    move-object/from16 v8, p2

    move/from16 v16, v13

    const/4 v3, 0x2

    const/16 v17, 0x0

    move/from16 v13, p7

    invoke-static/range {v6 .. v13}, Lio/github/jaredmdobson/concentus/Filters;->silk_LPC_analysis_filter([SI[SI[SIII)V

    move/from16 v8, p7

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_1

    .line 70
    invoke-static {v4, v2, v6, v8, v0}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SII)V

    mul-int/lit8 v10, v16, 0x2

    add-int/2addr v10, v7

    .line 71
    iget v11, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput v11, p0, v10

    .line 74
    iget v11, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    rsub-int/lit8 v11, v11, 0x0

    aput v11, p1, v10

    add-int/2addr v8, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr v9, v12

    add-int/lit8 v7, v16, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    const/16 v17, 0x0

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_3

    .line 86
    aget v2, p0, v0

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v2

    sub-int/2addr v2, v15

    .line 87
    aget v4, p4, v0

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v4

    sub-int/2addr v4, v15

    .line 89
    aget v5, p4, v0

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v5

    .line 92
    invoke-static {v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v5

    .line 96
    aget v6, p0, v0

    invoke-static {v6, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v6

    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v5

    aput v5, p0, v0

    .line 98
    aget v5, p1, v0

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x40

    add-int/2addr v5, v2

    aput v5, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method static silk_residual_energy16_covar([SI[II[IIII)I
    .locals 14

    move/from16 v0, p6

    move/from16 v1, p7

    .line 116
    new-array v2, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 120
    :goto_0
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v5, 0x10

    if-gt v0, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 121
    :goto_1
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-lez v1, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 122
    :goto_2
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ge v1, v5, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 123
    :goto_3
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    sub-int/2addr v5, v1

    move v1, p1

    const/4 v6, 0x0

    :goto_4
    add-int v7, p1, v0

    if-ge v1, v7, :cond_4

    .line 130
    aget-short v7, p0, v1

    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_32(II)I

    move-result v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 132
    :cond_4
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x11

    invoke-static {v5, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v1

    .line 134
    aget v7, p2, p3

    mul-int v8, v0, v0

    add-int v8, p3, v8

    sub-int/2addr v8, v4

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_32(II)I

    move-result v7

    .line 135
    invoke-static {v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v6

    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x5

    invoke-static {v1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v1

    .line 136
    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v1

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v0, :cond_6

    add-int v7, p1, v6

    .line 138
    aget-short v7, p0, v7

    invoke-static {v7, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    aput v7, v2, v6

    .line 139
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v7

    const v8, 0x8000

    if-gt v7, v8, :cond_5

    const/4 v7, 0x1

    goto :goto_6

    :cond_5
    const/4 v7, 0x0

    :goto_6
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    sub-int/2addr v5, v1

    const/4 p0, 0x0

    const/4 v1, 0x0

    :goto_7
    if-ge p0, v0, :cond_7

    .line 147
    aget v6, p4, p0

    aget v7, v2, p0

    invoke-static {v1, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 p0, v5, 0x1

    move/from16 v6, p5

    .line 149
    invoke-static {v6, p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    sub-int/2addr v6, v1

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_8
    if-ge v1, v0, :cond_9

    mul-int v8, v1, v0

    add-int v8, p3, v8

    add-int/lit8 v9, v1, 0x1

    move v10, v9

    const/4 v11, 0x0

    :goto_9
    if-ge v10, v0, :cond_8

    add-int v12, v8, v10

    .line 158
    aget v12, p2, v12

    aget v13, v2, v10

    invoke-static {v11, v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_8
    add-int/2addr v8, v1

    .line 160
    aget v8, p2, v8

    invoke-static {v8, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v8

    aget v10, v2, v1

    invoke-static {v11, v8, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    .line 161
    aget v1, v2, v1

    invoke-static {v7, v8, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    move v1, v9

    goto :goto_8

    .line 163
    :cond_9
    invoke-static {v6, v7, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v0

    if-ge v0, v4, :cond_a

    return v4

    :cond_a
    add-int/lit8 v5, v5, 0x2

    const v1, 0x7fffffff

    .line 169
    invoke-static {v1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    if-le v0, v1, :cond_b

    const p0, 0x3fffffff    # 1.9999999f

    return p0

    .line 172
    :cond_b
    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p0

    return p0
.end method
