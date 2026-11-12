.class Lio/github/jaredmdobson/concentus/CeltLPC;
.super Ljava/lang/Object;
.source "CeltLPC.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static celt_iir([II[I[IIII[I)V
    .locals 19

    move/from16 v0, p5

    move/from16 v8, p6

    .line 93
    new-array v1, v8, [I

    add-int v2, v0, v8

    .line 94
    new-array v3, v2, [I

    and-int/lit8 v4, v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 95
    :goto_0
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 97
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v4, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 98
    new-instance v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v5, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 99
    new-instance v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v6, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 100
    new-instance v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v7, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_1

    sub-int v12, v8, v11

    sub-int/2addr v12, v9

    .line 104
    aget v12, p2, v12

    aput v12, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_2

    sub-int v12, v8, v11

    sub-int/2addr v12, v9

    .line 107
    aget v12, p7, v12

    rsub-int/lit8 v12, v12, 0x0

    aput v12, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v11, v2, :cond_3

    .line 110
    aput v10, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    move-object v2, v3

    const/4 v3, 0x0

    :goto_4
    add-int/lit8 v11, v0, -0x3

    const/16 v12, 0xc

    if-ge v3, v11, :cond_4

    add-int v11, p1, v3

    .line 114
    aget v13, p0, v11

    iput v13, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/lit8 v13, v11, 0x1

    .line 115
    aget v13, p0, v13

    iput v13, v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/lit8 v13, v11, 0x2

    .line 116
    aget v13, p0, v13

    iput v13, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/lit8 v11, v11, 0x3

    .line 117
    aget v11, p0, v11

    iput v11, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 118
    invoke-static/range {v1 .. v8}, Lio/github/jaredmdobson/concentus/Kernels;->xcorr_kernel([I[IILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;I)V

    .line 119
    iget v11, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 120
    iget v13, v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 121
    iget v14, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 122
    iget v15, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int v16, v3, v8

    .line 125
    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->ROUND16(II)I

    move-result v17

    rsub-int/lit8 v17, v17, 0x0

    aput v17, v2, v16

    add-int v17, p4, v3

    .line 126
    aput v11, p3, v17

    .line 127
    aget v11, v2, v16

    const/16 v18, 0x1

    aget v9, p2, v10

    invoke-static {v13, v11, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v9

    add-int/lit8 v11, v16, 0x1

    .line 128
    invoke-static {v9, v12}, Lio/github/jaredmdobson/concentus/Inlines;->ROUND16(II)I

    move-result v13

    rsub-int/lit8 v13, v13, 0x0

    aput v13, v2, v11

    add-int/lit8 v13, v17, 0x1

    .line 129
    aput v9, p3, v13

    .line 130
    aget v9, v2, v11

    aget v13, p2, v10

    invoke-static {v14, v9, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v9

    .line 131
    aget v13, v2, v16

    aget v14, p2, v18

    invoke-static {v9, v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v9

    add-int/lit8 v13, v16, 0x2

    .line 132
    invoke-static {v9, v12}, Lio/github/jaredmdobson/concentus/Inlines;->ROUND16(II)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x0

    aput v14, v2, v13

    add-int/lit8 v14, v17, 0x2

    .line 133
    aput v9, p3, v14

    .line 135
    aget v9, v2, v13

    aget v13, p2, v10

    invoke-static {v15, v9, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v9

    .line 136
    aget v11, v2, v11

    aget v13, p2, v18

    invoke-static {v9, v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v9

    .line 137
    aget v11, v2, v16

    const/4 v13, 0x2

    aget v13, p2, v13

    invoke-static {v9, v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v9

    add-int/lit8 v16, v16, 0x3

    .line 138
    invoke-static {v9, v12}, Lio/github/jaredmdobson/concentus/Inlines;->ROUND16(II)I

    move-result v11

    rsub-int/lit8 v11, v11, 0x0

    aput v11, v2, v16

    add-int/lit8 v17, v17, 0x3

    .line 139
    aput v9, p3, v17

    add-int/lit8 v3, v3, 0x4

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_4
    const/16 v18, 0x1

    :goto_5
    if-ge v3, v0, :cond_6

    add-int v4, p1, v3

    .line 142
    aget v4, p0, v4

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v8, :cond_5

    .line 144
    aget v6, v1, v5

    add-int v7, v3, v5

    aget v7, v2, v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v6

    sub-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_5
    add-int v5, v3, v8

    .line 146
    invoke-static {v4, v12}, Lio/github/jaredmdobson/concentus/Inlines;->ROUND16(II)I

    move-result v6

    aput v6, v2, v5

    add-int v5, p4, v3

    .line 147
    aput v4, p3, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    :goto_7
    if-ge v10, v8, :cond_7

    add-int v1, p4, v0

    sub-int/2addr v1, v10

    add-int/lit8 v1, v1, -0x1

    .line 150
    aget v1, p3, v1

    aput v1, p7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method

.method static celt_lpc([I[II)V
    .locals 11

    const/4 v0, 0x0

    .line 45
    aget v1, p1, v0

    .line 46
    new-array v2, p2, [I

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    .line 54
    aget v6, v2, v4

    sub-int v7, v3, v4

    aget v7, p1, v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 56
    aget v6, p1, v4

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 57
    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v5

    invoke-static {v5, v1}, Lio/github/jaredmdobson/concentus/Inlines;->frac_div32(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x0

    .line 59
    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v6

    aput v6, v2, v3

    const/4 v6, 0x0

    :goto_2
    shr-int/lit8 v7, v4, 0x1

    if-ge v6, v7, :cond_1

    .line 63
    aget v7, v2, v6

    add-int/lit8 v8, v3, -0x1

    sub-int/2addr v8, v6

    .line 64
    aget v9, v2, v8

    .line 65
    invoke-static {v5, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result v10

    add-int/2addr v10, v7

    aput v10, v2, v6

    .line 66
    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result v7

    add-int/2addr v9, v7

    aput v9, v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 69
    :cond_1
    invoke-static {v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result v3

    invoke-static {v3, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result v3

    sub-int/2addr v1, v3

    .line 72
    aget v3, p1, v0

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v3

    if-ge v1, v3, :cond_2

    goto :goto_3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    :goto_3
    if-ge v0, p2, :cond_4

    .line 79
    aget p1, v2, v0

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->ROUND16(II)I

    move-result p1

    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
