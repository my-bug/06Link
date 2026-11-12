.class Lio/github/jaredmdobson/concentus/LinearAlgebra;
.super Ljava/lang/Object;
.source "LinearAlgebra.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static silk_LDL_factorize([III[I[I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    .line 102
    new-array v7, v4, [I

    .line 104
    new-array v8, v4, [I

    const/16 v2, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-gt v4, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 108
    :goto_0
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 111
    aget v2, v0, v1

    invoke-static {v4, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v3

    add-int/2addr v3, v1

    sub-int/2addr v3, v10

    aget v3, v0, v3

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_SAT32(II)I

    move-result v2

    const/16 v3, 0x53e3

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v2

    const/16 v3, 0x200

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_32(II)I

    move-result v11

    const/4 v2, 0x1

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v4, :cond_7

    if-ne v2, v10, :cond_7

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_6

    .line 116
    invoke-static {v2, v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGetPointer(III)I

    move-result v3

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_3
    if-ge v5, v2, :cond_1

    .line 119
    aget v14, v8, v5

    add-int v15, v3, v5

    const/16 v16, 0x1

    aget v10, v6, v15

    invoke-static {v14, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v10

    aput v10, v7, v5

    .line 121
    aget v14, v6, v15

    invoke-static {v13, v10, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v13

    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x1

    goto :goto_3

    :cond_1
    const/16 v16, 0x1

    .line 124
    invoke-static {v0, v1, v2, v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGet([IIIII)I

    move-result v3

    invoke-static {v3, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v3

    if-ge v3, v11, :cond_3

    add-int/lit8 v2, v12, 0x1

    .line 127
    invoke-static {v2, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v2

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v10

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_2

    .line 130
    invoke-static {v0, v1, v2, v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGet([IIIII)I

    move-result v3

    invoke-static {v3, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v5

    move v3, v2

    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([IIIIII)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_4

    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 135
    :cond_3
    aput v3, v8, v2

    const/16 v0, 0x24

    .line 139
    invoke-static {v3, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v0

    const/4 v1, 0x4

    .line 141
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    const/high16 v10, 0x1000000

    .line 143
    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v3

    invoke-static {v10, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v3

    .line 145
    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v3

    mul-int/lit8 v5, v2, 0x2

    .line 149
    aput v0, p4, v5

    add-int/lit8 v5, v5, 0x1

    .line 150
    aput v3, p4, v5

    const/high16 v5, 0x10000

    .line 152
    invoke-static {v6, v2, v2, v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([IIIII)V

    .line 155
    invoke-static {v2, v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGetPointer(III)I

    move-result v5

    add-int v5, v5, p1

    add-int/lit8 v10, v2, 0x1

    .line 157
    invoke-static {v10, v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGetPointer(III)I

    move-result v13

    move v14, v10

    :goto_5
    if-ge v14, v4, :cond_5

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v2, :cond_4

    .line 161
    aget v1, v7, v15

    add-int v17, v13, v15

    move/from16 v18, v5

    aget v5, v6, v17

    invoke-static {v9, v1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v9

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v18

    const/4 v1, 0x4

    goto :goto_6

    :cond_4
    move/from16 v18, v5

    add-int v5, v18, v14

    .line 164
    aget v1, p0, v5

    invoke-static {v1, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v1

    .line 168
    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v5

    .line 169
    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v1

    const/4 v9, 0x4

    invoke-static {v1, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    .line 168
    invoke-static {v5, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v1

    invoke-static {v6, v14, v2, v4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixSet([IIIII)V

    add-int/2addr v13, v4

    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v18

    const/4 v1, 0x4

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v10

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_6
    const/16 v16, 0x1

    const/4 v2, 0x0

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_7
    const/16 v16, 0x1

    xor-int/lit8 v0, v2, 0x1

    .line 177
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return-void
.end method

.method private static silk_LS_SolveFirst([II[I[I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 210
    invoke-static {v1, v0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGetPointer(III)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    add-int v5, v2, v3

    .line 213
    aget v5, p0, v5

    aget v6, p3, v3

    invoke-static {v4, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 215
    :cond_0
    aget v2, p2, v1

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v2

    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static silk_LS_SolveLast([II[I[I)V
    .locals 7

    add-int/lit8 v0, p1, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    const/4 v2, 0x0

    .line 231
    invoke-static {v2, v1, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MatrixGetPointer(III)I

    move-result v3

    move v4, v0

    :goto_1
    if-le v4, v1, :cond_0

    .line 234
    invoke-static {v4, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    add-int/2addr v5, v3

    aget v5, p0, v5

    aget v6, p3, v4

    invoke-static {v2, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 236
    :cond_0
    aget v3, p2, v1

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v2

    aput v2, p3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static silk_LS_divide_Q16([I[II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    mul-int/lit8 v1, v0, 0x2

    .line 190
    aget v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 191
    aget v1, p1, v1

    .line 193
    aget v3, p0, v0

    .line 194
    invoke-static {v3, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v1

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v2

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static silk_solve_LDL([III[I[I)V
    .locals 3

    const/16 v0, 0x10

    if-gt p2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    mul-int v1, p2, p2

    .line 45
    new-array v1, v1, [I

    .line 46
    new-array v0, v0, [I

    const/16 v2, 0x20

    .line 54
    new-array v2, v2, [I

    .line 62
    invoke-static {p0, p1, p2, v1, v2}, Lio/github/jaredmdobson/concentus/LinearAlgebra;->silk_LDL_factorize([III[I[I)V

    .line 69
    invoke-static {v1, p2, p3, v0}, Lio/github/jaredmdobson/concentus/LinearAlgebra;->silk_LS_SolveFirst([II[I[I)V

    .line 77
    invoke-static {v0, v2, p2}, Lio/github/jaredmdobson/concentus/LinearAlgebra;->silk_LS_divide_Q16([I[II)V

    .line 84
    invoke-static {v1, p2, v0, p4}, Lio/github/jaredmdobson/concentus/LinearAlgebra;->silk_LS_SolveLast([II[I[I)V

    return-void
.end method
