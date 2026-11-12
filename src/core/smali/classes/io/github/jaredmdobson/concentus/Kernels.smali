.class Lio/github/jaredmdobson/concentus/Kernels;
.super Ljava/lang/Object;
.source "Kernels.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static celt_fir([II[II[IIII[I)V
    .locals 16

    move/from16 v0, p6

    move/from16 v8, p7

    .line 109
    new-array v1, v8, [I

    add-int v2, v0, v8

    .line 110
    new-array v2, v2, [I

    const/4 v9, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_0

    add-int v4, p3, v8

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 113
    aget v4, p2, v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_1

    sub-int v4, v8, v3

    add-int/lit8 v4, v4, -0x1

    .line 117
    aget v4, p8, v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    add-int v4, v3, v8

    add-int v5, p1, v3

    .line 121
    aget v5, p0, v5

    aput v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_3

    add-int v4, p1, v0

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 125
    aget v4, p0, v4

    aput v4, p8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 128
    :cond_3
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v4, v9}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 129
    new-instance v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v5, v9}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 130
    new-instance v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v6, v9}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 131
    new-instance v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v7, v9}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v3, 0x0

    :goto_4
    add-int/lit8 v10, v0, -0x3

    const/16 v11, 0xc

    if-ge v3, v10, :cond_4

    .line 134
    iput v9, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 135
    iput v9, v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 136
    iput v9, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 137
    iput v9, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 138
    invoke-static/range {v1 .. v8}, Lio/github/jaredmdobson/concentus/Kernels;->xcorr_kernel([I[IILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;I)V

    add-int v10, p5, v3

    add-int v12, p1, v3

    .line 139
    aget v13, p0, v12

    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v13

    iget v14, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v14, v11}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v14

    invoke-static {v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v13

    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->SATURATE16(I)S

    move-result v13

    aput v13, p4, v10

    add-int/lit8 v13, v10, 0x1

    add-int/lit8 v14, v12, 0x1

    .line 140
    aget v14, p0, v14

    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v14

    iget v15, v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v15, v11}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v15

    invoke-static {v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v14

    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->SATURATE16(I)S

    move-result v14

    aput v14, p4, v13

    add-int/lit8 v13, v10, 0x2

    add-int/lit8 v14, v12, 0x2

    .line 141
    aget v14, p0, v14

    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v14

    iget v15, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v15, v11}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v15

    invoke-static {v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v14

    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->SATURATE16(I)S

    move-result v14

    aput v14, p4, v13

    add-int/lit8 v10, v10, 0x3

    add-int/lit8 v12, v12, 0x3

    .line 142
    aget v12, p0, v12

    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v12

    iget v13, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v13, v11}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v11

    invoke-static {v12, v11}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v11

    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->SATURATE16(I)S

    move-result v11

    aput v11, p4, v10

    add-int/lit8 v3, v3, 0x4

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v3, v0, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_6
    if-ge v4, v8, :cond_5

    .line 149
    aget v6, v1, v4

    add-int v7, v3, v4

    aget v7, v2, v7

    invoke-static {v5, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    add-int v4, p5, v3

    add-int v6, p1, v3

    .line 152
    aget v6, p0, v6

    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v6

    invoke-static {v5, v11}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v5

    invoke-static {v6, v5}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v5

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->SATURATE16(I)S

    move-result v5

    aput v5, p4, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method static celt_fir([SI[S[SIII[S)V
    .locals 16

    move/from16 v0, p5

    move/from16 v9, p6

    .line 50
    new-array v1, v9, [S

    add-int v2, v0, v9

    .line 51
    new-array v3, v2, [S

    const/4 v10, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v9, :cond_0

    sub-int v4, v9, v2

    add-int/lit8 v4, v4, -0x1

    .line 54
    aget-short v4, p2, v4

    aput-short v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_1

    sub-int v4, v9, v2

    add-int/lit8 v4, v4, -0x1

    .line 58
    aget-short v4, p7, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    add-int v4, v2, v9

    add-int v5, p1, v2

    .line 62
    aget-short v5, p0, v5

    aput-short v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v9, :cond_3

    add-int v4, p1, v0

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    .line 66
    aget-short v4, p0, v4

    aput-short v4, p7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 69
    :cond_3
    new-instance v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v5, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 70
    new-instance v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v6, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 71
    new-instance v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v7, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 72
    new-instance v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v8, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v4, 0x0

    :goto_4
    add-int/lit8 v2, v0, -0x3

    const/16 v11, 0xc

    if-ge v4, v2, :cond_4

    .line 75
    iput v10, v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 76
    iput v10, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 77
    iput v10, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 78
    iput v10, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v2, 0x0

    .line 79
    invoke-static/range {v1 .. v9}, Lio/github/jaredmdobson/concentus/Kernels;->xcorr_kernel([SI[SILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;I)V

    add-int v2, p4, v4

    add-int v12, p1, v4

    .line 80
    aget-short v13, p0, v12

    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(S)I

    move-result v13

    iget v14, v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v14, v11}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v14

    invoke-static {v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v13

    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->SATURATE16(I)S

    move-result v13

    aput-short v13, p3, v2

    add-int/lit8 v13, v2, 0x1

    add-int/lit8 v14, v12, 0x1

    .line 81
    aget-short v14, p0, v14

    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(S)I

    move-result v14

    iget v15, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v15, v11}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v15

    invoke-static {v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v14

    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->SATURATE16(I)S

    move-result v14

    aput-short v14, p3, v13

    add-int/lit8 v13, v2, 0x2

    add-int/lit8 v14, v12, 0x2

    .line 82
    aget-short v14, p0, v14

    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(S)I

    move-result v14

    iget v15, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v15, v11}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v15

    invoke-static {v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v14

    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->SATURATE16(I)S

    move-result v14

    aput-short v14, p3, v13

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v12, v12, 0x3

    .line 83
    aget-short v12, p0, v12

    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(S)I

    move-result v12

    iget v13, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v13, v11}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v11

    invoke-static {v12, v11}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v11

    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->SATURATE16(I)S

    move-result v11

    aput-short v11, p3, v2

    add-int/lit8 v4, v4, 0x4

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v4, v0, :cond_6

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_6
    if-ge v2, v9, :cond_5

    .line 90
    aget-short v6, v1, v2

    add-int v7, v4, v2

    aget-short v7, v3, v7

    invoke-static {v5, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    add-int v2, p4, v4

    add-int v6, p1, v4

    .line 93
    aget-short v6, p0, v6

    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(S)I

    move-result v6

    invoke-static {v5, v11}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v5

    invoke-static {v6, v5}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v5

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->SATURATE16(I)S

    move-result v5

    aput-short v5, p3, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method static celt_inner_prod([II[III)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v2, p1, v0

    .line 334
    aget v2, p0, v2

    add-int v3, p3, v0

    aget v3, p2, v3

    invoke-static {v1, v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static celt_inner_prod([SI[SII)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v2, p1, v0

    .line 316
    aget-short v2, p0, v2

    add-int v3, p3, v0

    aget-short v3, p2, v3

    invoke-static {v1, v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static celt_inner_prod([S[SII)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 325
    aget-short v2, p0, v0

    add-int v3, p2, v0

    aget-short v3, p1, v3

    invoke-static {v1, v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static dual_inner_prod([II[II[IIILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, p6, :cond_0

    add-int v3, p1, v0

    .line 344
    aget v4, p0, v3

    add-int v5, p3, v0

    aget v5, p2, v5

    invoke-static {v1, v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    .line 345
    aget v3, p0, v3

    add-int v4, p5, v0

    aget v4, p4, v4

    invoke-static {v2, v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_0
    iput v1, p7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 348
    iput v2, p8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method

.method static xcorr_kernel([I[IILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;I)V
    .locals 19

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    .line 238
    iget v5, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 239
    iget v6, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 240
    iget v7, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 241
    iget v8, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-lt v4, v10, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 245
    :goto_0
    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v11, p2, 0x1

    .line 248
    aget v12, p1, p2

    add-int/lit8 v13, p2, 0x2

    .line 249
    aget v11, p1, v11

    add-int/lit8 v10, p2, 0x3

    .line 250
    aget v13, p1, v13

    move v14, v12

    move v15, v13

    move v12, v10

    move v13, v11

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    move/from16 p2, v10

    add-int/lit8 v10, v4, -0x3

    if-ge v9, v10, :cond_1

    add-int/lit8 v10, p2, 0x1

    .line 253
    aget v11, p0, p2

    add-int/lit8 v16, v12, 0x1

    move/from16 v17, v10

    .line 254
    aget v10, p1, v12

    .line 255
    invoke-static {v5, v11, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v5

    .line 256
    invoke-static {v6, v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    .line 257
    invoke-static {v7, v11, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v7

    .line 258
    invoke-static {v8, v11, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v8

    add-int/lit8 v11, p2, 0x2

    .line 259
    aget v14, p0, v17

    add-int/lit8 v17, v12, 0x2

    move/from16 v18, v11

    .line 260
    aget v11, p1, v16

    .line 261
    invoke-static {v5, v14, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v5

    .line 262
    invoke-static {v6, v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    .line 263
    invoke-static {v7, v14, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v7

    .line 264
    invoke-static {v8, v14, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v8

    add-int/lit8 v13, p2, 0x3

    .line 265
    aget v14, p0, v18

    add-int/lit8 v16, v12, 0x3

    move/from16 v18, v12

    .line 266
    aget v12, p1, v17

    .line 267
    invoke-static {v5, v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v5

    .line 268
    invoke-static {v6, v14, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    .line 269
    invoke-static {v7, v14, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v7

    .line 270
    invoke-static {v8, v14, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v8

    add-int/lit8 v14, p2, 0x4

    .line 271
    aget v13, p0, v13

    add-int/lit8 v15, v18, 0x4

    move/from16 p2, v14

    .line 272
    aget v14, p1, v16

    .line 273
    invoke-static {v5, v13, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v5

    .line 274
    invoke-static {v6, v13, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    .line 275
    invoke-static {v7, v13, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v7

    .line 276
    invoke-static {v8, v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v8

    add-int/lit8 v9, v9, 0x4

    move v13, v12

    move v12, v15

    move v15, v14

    move v14, v11

    move v11, v10

    move/from16 v10, p2

    goto :goto_1

    :cond_1
    move/from16 v18, v12

    add-int/lit8 v10, v9, 0x1

    if-ge v9, v4, :cond_2

    add-int/lit8 v11, p2, 0x1

    .line 280
    aget v12, p0, p2

    add-int/lit8 v16, v18, 0x1

    move/from16 v17, v9

    .line 281
    aget v9, p1, v18

    .line 282
    invoke-static {v5, v12, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v5

    .line 283
    invoke-static {v6, v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    .line 284
    invoke-static {v7, v12, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v7

    .line 285
    invoke-static {v8, v12, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v8

    move/from16 v12, v16

    goto :goto_2

    :cond_2
    move/from16 v17, v9

    move v9, v11

    move/from16 v12, v18

    move/from16 v11, p2

    :goto_2
    move/from16 p2, v11

    add-int/lit8 v11, v17, 0x2

    if-ge v10, v4, :cond_3

    add-int/lit8 v10, p2, 0x1

    .line 289
    aget v14, p0, p2

    add-int/lit8 v16, v12, 0x1

    .line 290
    aget v12, p1, v12

    .line 291
    invoke-static {v5, v14, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v5

    .line 292
    invoke-static {v6, v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    .line 293
    invoke-static {v7, v14, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v7

    .line 294
    invoke-static {v8, v14, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v8

    move v14, v12

    move/from16 v12, v16

    goto :goto_3

    :cond_3
    move/from16 v10, p2

    :goto_3
    if-ge v11, v4, :cond_4

    .line 298
    aget v4, p0, v10

    .line 299
    aget v10, p1, v12

    .line 300
    invoke-static {v5, v4, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v5

    .line 301
    invoke-static {v6, v4, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    .line 302
    invoke-static {v7, v4, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v7

    .line 303
    invoke-static {v8, v4, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v8

    .line 306
    :cond_4
    iput v5, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 307
    iput v6, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 308
    iput v7, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 309
    iput v8, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method

.method static xcorr_kernel([SI[SILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;I)V
    .locals 18

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v4, p8

    .line 164
    iget v5, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 165
    iget v6, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 166
    iget v7, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 167
    iget v8, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-lt v4, v10, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 170
    :goto_0
    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v11, p3, 0x1

    .line 173
    aget-short v12, p2, p3

    add-int/lit8 v13, p3, 0x2

    .line 174
    aget-short v11, p2, v11

    add-int/lit8 v10, p3, 0x3

    .line 175
    aget-short v13, p2, v13

    move v9, v8

    move v14, v12

    move v15, v13

    move v8, v7

    move v12, v10

    move v13, v11

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v6

    move v6, v5

    :goto_1
    move/from16 v5, p1

    move/from16 p1, v5

    add-int/lit8 v5, v4, -0x3

    if-ge v10, v5, :cond_1

    add-int/lit8 v5, p1, 0x1

    .line 178
    aget-short v11, p0, p1

    add-int/lit8 v16, v12, 0x1

    move/from16 p3, v5

    .line 179
    aget-short v5, p2, v12

    .line 180
    invoke-static {v6, v11, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v6

    .line 181
    invoke-static {v7, v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v7

    .line 182
    invoke-static {v8, v11, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v8

    .line 183
    invoke-static {v9, v11, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v9

    add-int/lit8 v11, p1, 0x2

    .line 184
    aget-short v14, p0, p3

    add-int/lit8 v17, v12, 0x2

    move/from16 p3, v11

    .line 185
    aget-short v11, p2, v16

    .line 186
    invoke-static {v6, v14, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v6

    .line 187
    invoke-static {v7, v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v7

    .line 188
    invoke-static {v8, v14, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v8

    .line 189
    invoke-static {v9, v14, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v9

    add-int/lit8 v13, p1, 0x3

    .line 190
    aget-short v14, p0, p3

    add-int/lit8 v16, v12, 0x3

    move/from16 p3, v12

    .line 191
    aget-short v12, p2, v17

    .line 192
    invoke-static {v6, v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v6

    .line 193
    invoke-static {v7, v14, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v7

    .line 194
    invoke-static {v8, v14, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v8

    .line 195
    invoke-static {v9, v14, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v9

    add-int/lit8 v14, p1, 0x4

    .line 196
    aget-short v13, p0, v13

    add-int/lit8 v15, p3, 0x4

    move/from16 p1, v14

    .line 197
    aget-short v14, p2, v16

    .line 198
    invoke-static {v6, v13, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v6

    .line 199
    invoke-static {v7, v13, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v7

    .line 200
    invoke-static {v8, v13, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v8

    .line 201
    invoke-static {v9, v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v9

    add-int/lit8 v10, v10, 0x4

    move v13, v12

    move v12, v15

    move v15, v14

    move v14, v11

    move v11, v5

    goto :goto_1

    :cond_1
    move/from16 p3, v12

    add-int/lit8 v5, v10, 0x1

    if-ge v10, v4, :cond_2

    add-int/lit8 v11, p1, 0x1

    .line 205
    aget-short v12, p0, p1

    add-int/lit8 v16, p3, 0x1

    move/from16 v17, v10

    .line 206
    aget-short v10, p2, p3

    .line 207
    invoke-static {v6, v12, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v6

    .line 208
    invoke-static {v7, v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v7

    .line 209
    invoke-static {v8, v12, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v8

    .line 210
    invoke-static {v9, v12, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v9

    move/from16 v12, v16

    goto :goto_2

    :cond_2
    move/from16 v17, v10

    move/from16 v12, p3

    move v10, v11

    move/from16 v11, p1

    :goto_2
    move/from16 p1, v11

    add-int/lit8 v11, v17, 0x2

    if-ge v5, v4, :cond_3

    add-int/lit8 v5, p1, 0x1

    .line 214
    aget-short v14, p0, p1

    add-int/lit8 v16, v12, 0x1

    .line 215
    aget-short v12, p2, v12

    .line 216
    invoke-static {v6, v14, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v6

    .line 217
    invoke-static {v7, v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v7

    .line 218
    invoke-static {v8, v14, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v8

    .line 219
    invoke-static {v9, v14, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v9

    move v14, v12

    move/from16 v12, v16

    goto :goto_3

    :cond_3
    move/from16 v5, p1

    :goto_3
    if-ge v11, v4, :cond_4

    .line 223
    aget-short v4, p0, v5

    .line 224
    aget-short v5, p2, v12

    .line 225
    invoke-static {v6, v4, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v6

    .line 226
    invoke-static {v7, v4, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v7

    .line 227
    invoke-static {v8, v4, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v8

    .line 228
    invoke-static {v9, v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v9

    .line 231
    :cond_4
    iput v6, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 232
    iput v7, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 233
    iput v8, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 234
    iput v9, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method
