.class Lio/github/jaredmdobson/concentus/KissFFT;
.super Ljava/lang/Object;
.source "KissFFT.java"


# static fields
.field static final MAXFACTORS:I = 0x8


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static HALF_OF(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static S_MUL(II)I
    .locals 0

    .line 49
    invoke-static {p1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result p0

    return p0
.end method

.method static S_MUL(IS)I
    .locals 0

    .line 53
    invoke-static {p1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(SI)I

    move-result p0

    return p0
.end method

.method static kf_bfly2([IIII)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 67
    :goto_0
    invoke-static {p2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p3, :cond_1

    add-int/lit8 v0, p1, 0x8

    .line 71
    aget v2, p0, v0

    add-int/lit8 v3, p1, 0x9

    .line 72
    aget v4, p0, v3

    .line 73
    aget v5, p0, p1

    sub-int/2addr v5, v2

    aput v5, p0, v0

    add-int/lit8 v0, p1, 0x1

    .line 74
    aget v5, p0, v0

    sub-int/2addr v5, v4

    aput v5, p0, v3

    .line 75
    aget v3, p0, p1

    add-int/2addr v3, v2

    aput v3, p0, p1

    .line 76
    aget v2, p0, v0

    add-int/2addr v2, v4

    aput v2, p0, v0

    add-int/lit8 v0, p1, 0xa

    .line 78
    aget v2, p0, v0

    add-int/lit8 v3, p1, 0xb

    aget v4, p0, v3

    add-int/2addr v2, v4

    const/16 v4, 0x5a82

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v2

    .line 79
    aget v5, p0, v3

    aget v6, p0, v0

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v5

    add-int/lit8 v6, p1, 0x2

    .line 80
    aget v7, p0, v6

    sub-int/2addr v7, v2

    aput v7, p0, v0

    add-int/lit8 v0, p1, 0x3

    .line 81
    aget v7, p0, v0

    sub-int/2addr v7, v5

    aput v7, p0, v3

    .line 82
    aget v3, p0, v6

    add-int/2addr v3, v2

    aput v3, p0, v6

    .line 83
    aget v2, p0, v0

    add-int/2addr v2, v5

    aput v2, p0, v0

    add-int/lit8 v0, p1, 0xd

    .line 85
    aget v2, p0, v0

    add-int/lit8 v3, p1, 0xc

    .line 86
    aget v5, p0, v3

    rsub-int/lit8 v5, v5, 0x0

    add-int/lit8 v6, p1, 0x4

    .line 87
    aget v7, p0, v6

    sub-int/2addr v7, v2

    aput v7, p0, v3

    add-int/lit8 v3, p1, 0x5

    .line 88
    aget v7, p0, v3

    sub-int/2addr v7, v5

    aput v7, p0, v0

    .line 89
    aget v0, p0, v6

    add-int/2addr v0, v2

    aput v0, p0, v6

    .line 90
    aget v0, p0, v3

    add-int/2addr v0, v5

    aput v0, p0, v3

    add-int/lit8 v0, p1, 0xf

    .line 92
    aget v2, p0, v0

    add-int/lit8 v3, p1, 0xe

    aget v5, p0, v3

    sub-int/2addr v2, v5

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v2

    .line 93
    aget v5, p0, v0

    rsub-int/lit8 v5, v5, 0x0

    aget v6, p0, v3

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v4

    add-int/lit8 v5, p1, 0x6

    .line 94
    aget v6, p0, v5

    sub-int/2addr v6, v2

    aput v6, p0, v3

    add-int/lit8 v3, p1, 0x7

    .line 95
    aget v6, p0, v3

    sub-int/2addr v6, v4

    aput v6, p0, v0

    .line 96
    aget v0, p0, v5

    add-int/2addr v0, v2

    aput v0, p0, v5

    .line 97
    aget v0, p0, v3

    add-int/2addr v0, v4

    aput v0, p0, v3

    add-int/lit8 p1, p1, 0x10

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method static kf_bfly3([IIILio/github/jaredmdobson/concentus/FFTState;III)V
    .locals 20

    move-object/from16 v0, p3

    mul-int/lit8 v1, p4, 0x2

    mul-int/lit8 v2, p4, 0x4

    move/from16 v4, p5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    mul-int/lit8 v6, v5, 0x2

    mul-int v6, v6, p6

    add-int v6, p1, v6

    move/from16 v9, p4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    add-int v10, v6, v1

    .line 207
    aget v11, p0, v10

    iget-object v12, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v12, v12, v7

    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v11

    add-int/lit8 v12, v10, 0x1

    aget v13, p0, v12

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    add-int/lit8 v15, v7, 0x1

    aget-short v14, v14, v15

    invoke-static {v13, v14}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v13

    sub-int/2addr v11, v13

    .line 208
    aget v13, p0, v10

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v14, v14, v15

    invoke-static {v13, v14}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v13

    aget v14, p0, v12

    iget-object v15, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v15, v15, v7

    invoke-static {v14, v15}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v14

    add-int/2addr v13, v14

    add-int v14, v6, v2

    .line 209
    aget v15, p0, v14

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v3, v3, v8

    invoke-static {v15, v3}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v3

    add-int/lit8 v15, v14, 0x1

    move/from16 v16, v1

    aget v1, p0, v15

    move/from16 v17, v2

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    add-int/lit8 v18, v8, 0x1

    aget-short v2, v2, v18

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    sub-int/2addr v3, v1

    .line 210
    aget v1, p0, v14

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v2, v2, v18

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    aget v2, p0, v15

    move/from16 v18, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v8

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    add-int v1, v18, v1

    add-int v2, v11, v3

    add-int v18, v13, v1

    sub-int/2addr v11, v3

    sub-int/2addr v13, v1

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v7, v1

    mul-int/lit8 v1, p2, 0x4

    add-int/2addr v8, v1

    .line 220
    aget v1, p0, v6

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/KissFFT;->HALF_OF(I)I

    move-result v3

    sub-int/2addr v1, v3

    aput v1, p0, v10

    add-int/lit8 v1, v6, 0x1

    .line 221
    aget v3, p0, v1

    invoke-static/range {v18 .. v18}, Lio/github/jaredmdobson/concentus/KissFFT;->HALF_OF(I)I

    move-result v19

    sub-int v3, v3, v19

    aput v3, p0, v12

    const/16 v3, -0x6eda

    .line 223
    invoke-static {v11, v3}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(II)I

    move-result v11

    .line 224
    invoke-static {v13, v3}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(II)I

    move-result v3

    .line 226
    aget v13, p0, v6

    add-int/2addr v13, v2

    aput v13, p0, v6

    .line 227
    aget v2, p0, v1

    add-int v2, v2, v18

    aput v2, p0, v1

    .line 229
    aget v1, p0, v10

    add-int/2addr v1, v3

    aput v1, p0, v14

    .line 230
    aget v1, p0, v12

    sub-int/2addr v1, v11

    aput v1, p0, v15

    .line 232
    aget v1, p0, v10

    sub-int/2addr v1, v3

    aput v1, p0, v10

    .line 233
    aget v1, p0, v12

    add-int/2addr v1, v11

    aput v1, p0, v12

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_0

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0

    :cond_0
    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method static kf_bfly4([IIILio/github/jaredmdobson/concentus/FFTState;III)V
    .locals 23

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move/from16 v0, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 118
    aget v1, p0, v0

    add-int/lit8 v3, v0, 0x4

    aget v5, p0, v3

    sub-int v6, v1, v5

    add-int/lit8 v7, v0, 0x1

    .line 119
    aget v8, p0, v7

    add-int/lit8 v9, v0, 0x5

    aget v10, p0, v9

    sub-int/2addr v8, v10

    add-int/2addr v1, v5

    .line 120
    aput v1, p0, v0

    .line 121
    aget v1, p0, v7

    aget v5, p0, v9

    add-int/2addr v1, v5

    aput v1, p0, v7

    add-int/lit8 v1, v0, 0x2

    .line 122
    aget v5, p0, v1

    add-int/lit8 v10, v0, 0x6

    aget v11, p0, v10

    add-int/2addr v5, v11

    add-int/lit8 v11, v0, 0x3

    .line 123
    aget v12, p0, v11

    add-int/lit8 v13, v0, 0x7

    aget v14, p0, v13

    add-int/2addr v12, v14

    .line 124
    aget v14, p0, v0

    sub-int/2addr v14, v5

    aput v14, p0, v3

    .line 125
    aget v3, p0, v7

    sub-int/2addr v3, v12

    aput v3, p0, v9

    .line 126
    aget v3, p0, v0

    add-int/2addr v3, v5

    aput v3, p0, v0

    .line 127
    aget v3, p0, v7

    add-int/2addr v3, v12

    aput v3, p0, v7

    .line 128
    aget v3, p0, v1

    aget v5, p0, v10

    sub-int/2addr v3, v5

    .line 129
    aget v5, p0, v11

    aget v7, p0, v13

    sub-int/2addr v5, v7

    add-int v7, v6, v5

    .line 130
    aput v7, p0, v1

    sub-int v1, v8, v3

    .line 131
    aput v1, p0, v11

    sub-int/2addr v6, v5

    .line 132
    aput v6, p0, v10

    add-int/2addr v8, v3

    .line 133
    aput v8, p0, v13

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    mul-int/lit8 v5, v3, 0x2

    mul-int v5, v5, p6

    add-int v5, p1, v5

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v5

    mul-int/lit8 v7, v1, 0x4

    add-int/2addr v7, v5

    mul-int/lit8 v8, v1, 0x6

    add-int/2addr v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v9, v1, :cond_1

    .line 149
    aget v13, p0, v6

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v14, v14, v10

    invoke-static {v13, v14}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v13

    add-int/lit8 v14, v6, 0x1

    aget v15, p0, v14

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    add-int/lit8 v16, v10, 0x1

    aget-short v4, v4, v16

    invoke-static {v15, v4}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v4

    sub-int/2addr v13, v4

    .line 150
    aget v4, p0, v6

    iget-object v15, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v15, v15, v16

    invoke-static {v4, v15}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v4

    aget v15, p0, v14

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v10

    invoke-static {v15, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    add-int/2addr v4, v1

    .line 151
    aget v1, p0, v7

    iget-object v15, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v15, v15, v11

    invoke-static {v1, v15}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    add-int/lit8 v15, v7, 0x1

    move/from16 v16, v1

    aget v1, p0, v15

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    add-int/lit8 v17, v11, 0x1

    aget-short v2, v2, v17

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    sub-int v1, v16, v1

    .line 152
    aget v2, p0, v7

    move/from16 v16, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v17

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    aget v2, p0, v15

    move/from16 v17, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v11

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    add-int v1, v17, v1

    .line 153
    aget v2, p0, v8

    move/from16 v17, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v12

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    add-int/lit8 v2, v8, 0x1

    move/from16 v18, v1

    aget v1, p0, v2

    move/from16 v19, v2

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    add-int/lit8 v20, v12, 0x1

    aget-short v2, v2, v20

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    sub-int v1, v18, v1

    .line 154
    aget v2, p0, v8

    move/from16 v18, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v20

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    aget v2, p0, v19

    move/from16 v20, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v12

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    add-int v1, v20, v1

    .line 155
    aget v2, p0, v5

    sub-int v20, v2, v16

    add-int/lit8 v21, v5, 0x1

    .line 156
    aget v22, p0, v21

    sub-int v22, v22, v17

    add-int v2, v2, v16

    .line 157
    aput v2, p0, v5

    .line 158
    aget v2, p0, v21

    add-int v2, v2, v17

    aput v2, p0, v21

    add-int v2, v13, v18

    add-int v16, v4, v1

    sub-int v13, v13, v18

    sub-int/2addr v4, v1

    .line 163
    aget v1, p0, v5

    sub-int/2addr v1, v2

    aput v1, p0, v7

    .line 164
    aget v1, p0, v21

    sub-int v1, v1, v16

    aput v1, p0, v15

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v10, v1

    mul-int/lit8 v1, p2, 0x4

    add-int/2addr v11, v1

    mul-int/lit8 v1, p2, 0x6

    add-int/2addr v12, v1

    .line 168
    aget v1, p0, v5

    add-int/2addr v1, v2

    aput v1, p0, v5

    .line 169
    aget v1, p0, v21

    add-int v1, v1, v16

    aput v1, p0, v21

    add-int v1, v20, v4

    .line 170
    aput v1, p0, v6

    sub-int v1, v22, v13

    .line 171
    aput v1, p0, v14

    sub-int v20, v20, v4

    .line 172
    aput v20, p0, v8

    add-int v22, v22, v13

    .line 173
    aput v22, p0, v19

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p4

    move/from16 v2, p5

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p4

    move/from16 v2, p5

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method static kf_bfly5([IIILio/github/jaredmdobson/concentus/FFTState;III)V
    .locals 35

    move-object/from16 v0, p3

    move/from16 v1, p4

    const/4 v4, 0x0

    :goto_0
    move/from16 v3, p5

    if-ge v4, v3, :cond_1

    mul-int/lit8 v5, v4, 0x2

    mul-int v5, v5, p6

    add-int v5, p1, v5

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v5

    mul-int/lit8 v7, v1, 0x4

    add-int/2addr v7, v5

    mul-int/lit8 v8, v1, 0x6

    add-int/2addr v8, v5

    mul-int/lit8 v9, v1, 0x8

    add-int/2addr v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v10, v1, :cond_0

    .line 276
    aget v15, p0, v5

    add-int/lit8 v16, v5, 0x1

    .line 277
    aget v17, p0, v16

    const/16 v18, 0x0

    .line 279
    aget v2, p0, v6

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v11

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    add-int/lit8 v2, v6, 0x1

    move/from16 v19, v1

    aget v1, p0, v2

    move/from16 v20, v2

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    add-int/lit8 v21, v11, 0x1

    aget-short v2, v2, v21

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    sub-int v1, v19, v1

    .line 280
    aget v2, p0, v6

    move/from16 v19, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v21

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    aget v2, p0, v20

    move/from16 v21, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v11

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    add-int v1, v21, v1

    .line 281
    aget v2, p0, v7

    move/from16 v21, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v12

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    add-int/lit8 v2, v7, 0x1

    move/from16 v22, v1

    aget v1, p0, v2

    move/from16 v23, v2

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    add-int/lit8 v24, v12, 0x1

    aget-short v2, v2, v24

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    sub-int v1, v22, v1

    .line 282
    aget v2, p0, v7

    move/from16 v22, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v24

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    aget v2, p0, v23

    move/from16 v24, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v12

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    add-int v1, v24, v1

    .line 283
    aget v2, p0, v8

    move/from16 v24, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v13

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    add-int/lit8 v2, v8, 0x1

    move/from16 v25, v1

    aget v1, p0, v2

    move/from16 v26, v2

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    add-int/lit8 v27, v13, 0x1

    aget-short v2, v2, v27

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    sub-int v1, v25, v1

    .line 284
    aget v2, p0, v8

    move/from16 v25, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v27

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    aget v2, p0, v26

    move/from16 v27, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v13

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    add-int v1, v27, v1

    .line 285
    aget v2, p0, v9

    move/from16 v27, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v14

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    add-int/lit8 v2, v9, 0x1

    move/from16 v28, v1

    aget v1, p0, v2

    move/from16 v29, v2

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    add-int/lit8 v30, v14, 0x1

    aget-short v2, v2, v30

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    sub-int v1, v28, v1

    .line 286
    aget v2, p0, v9

    move/from16 v28, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v30

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    aget v2, p0, v29

    move/from16 v30, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    aget-short v1, v1, v14

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    add-int v1, v30, v1

    mul-int/lit8 v2, p2, 0x2

    add-int/2addr v11, v2

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v12, v2

    mul-int/lit8 v2, p2, 0x6

    add-int/2addr v13, v2

    mul-int/lit8 v2, p2, 0x8

    add-int/2addr v14, v2

    add-int v2, v19, v28

    add-int v0, v21, v1

    move/from16 v30, v1

    sub-int v1, v19, v28

    sub-int v3, v21, v30

    move/from16 v19, v4

    add-int v4, v22, v25

    move/from16 v21, v5

    add-int v5, v24, v27

    move/from16 v28, v6

    sub-int v6, v22, v25

    move/from16 v22, v7

    sub-int v7, v24, v27

    .line 302
    aget v24, p0, v21

    add-int v25, v2, v4

    add-int v24, v24, v25

    aput v24, p0, v21

    .line 303
    aget v24, p0, v16

    add-int v25, v0, v5

    add-int v24, v24, v25

    aput v24, p0, v16

    move/from16 v16, v8

    const/16 v8, 0x278e

    .line 305
    invoke-static {v2, v8}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v24

    add-int v24, v15, v24

    const/16 v8, -0x678e

    invoke-static {v4, v8}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v27

    add-int v24, v24, v27

    const/16 v8, 0x278e

    .line 306
    invoke-static {v0, v8}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v30

    add-int v30, v17, v30

    const/16 v8, -0x678e

    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v31

    add-int v30, v30, v31

    const/16 v8, -0x79bc

    .line 308
    invoke-static {v3, v8}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v31

    const/16 v8, -0x4b3d

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v32

    add-int v31, v31, v32

    const/16 v8, -0x79bc

    .line 309
    invoke-static {v1, v8}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v33

    rsub-int/lit8 v8, v33, 0x0

    move/from16 v33, v8

    const/16 v8, -0x4b3d

    invoke-static {v6, v8}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v34

    sub-int v8, v33, v34

    sub-int v33, v24, v31

    .line 311
    aput v33, p0, v28

    sub-int v33, v30, v8

    .line 312
    aput v33, p0, v20

    add-int v24, v24, v31

    .line 313
    aput v24, p0, v9

    add-int v30, v30, v8

    .line 314
    aput v30, p0, v29

    const/16 v8, -0x678e

    .line 316
    invoke-static {v2, v8}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v2

    add-int/2addr v15, v2

    const/16 v2, 0x278e

    invoke-static {v4, v2}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v4

    add-int/2addr v15, v4

    .line 317
    invoke-static {v0, v8}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v0

    add-int v17, v17, v0

    invoke-static {v5, v2}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v0

    add-int v17, v17, v0

    const/16 v8, -0x4b3d

    .line 318
    invoke-static {v3, v8}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v0

    rsub-int/lit8 v2, v0, 0x0

    const/16 v0, -0x79bc

    invoke-static {v7, v0}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v3

    add-int/2addr v2, v3

    .line 319
    invoke-static {v1, v8}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v1

    invoke-static {v6, v0}, Lio/github/jaredmdobson/concentus/KissFFT;->S_MUL(IS)I

    move-result v0

    sub-int/2addr v1, v0

    add-int v0, v15, v2

    .line 321
    aput v0, p0, v22

    add-int v0, v17, v1

    .line 322
    aput v0, p0, v23

    sub-int/2addr v15, v2

    .line 323
    aput v15, p0, v16

    sub-int v17, v17, v1

    .line 324
    aput v17, p0, v26

    add-int/lit8 v5, v21, 0x2

    add-int/lit8 v6, v28, 0x2

    add-int/lit8 v7, v22, 0x2

    add-int/lit8 v8, v16, 0x2

    add-int/lit8 v9, v9, 0x2

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v3, p5

    move/from16 v4, v19

    goto/16 :goto_1

    :cond_0
    move/from16 v19, v4

    const/16 v18, 0x0

    add-int/lit8 v4, v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, p4

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method static opus_fft(Lio/github/jaredmdobson/concentus/FFTState;[I[I)V
    .locals 8

    .line 383
    iget v0, p0, Lio/github/jaredmdobson/concentus/FFTState;->scale_shift:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 384
    iget-short v2, p0, Lio/github/jaredmdobson/concentus/FFTState;->scale:S

    const/4 v3, 0x0

    if-eq p1, p2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 386
    :goto_0
    const-string v5, "In-place FFT not supported"

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(ZLjava/lang/String;)V

    const/4 v4, 0x0

    .line 389
    :goto_1
    iget v5, p0, Lio/github/jaredmdobson/concentus/FFTState;->nfft:I

    if-ge v4, v5, :cond_1

    .line 390
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/FFTState;->bitrev:[S

    aget-short v5, v5, v4

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v4, 0x2

    aget v7, p1, v6

    invoke-static {v2, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q16(SI)I

    move-result v7

    invoke-static {v7, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v7

    aput v7, p2, v5

    .line 391
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/FFTState;->bitrev:[S

    aget-short v5, v5, v4

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    add-int/2addr v6, v1

    aget v6, p1, v6

    invoke-static {v2, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q16(SI)I

    move-result v6

    invoke-static {v6, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v6

    aput v6, p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 394
    :cond_1
    invoke-static {p0, p2, v3}, Lio/github/jaredmdobson/concentus/KissFFT;->opus_fft_impl(Lio/github/jaredmdobson/concentus/FFTState;[II)V

    return-void
.end method

.method static opus_fft_impl(Lio/github/jaredmdobson/concentus/FFTState;[II)V
    .locals 13

    const/16 v0, 0x8

    .line 339
    new-array v0, v0, [I

    .line 344
    iget v1, p0, Lio/github/jaredmdobson/concentus/FFTState;->shift:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget v1, p0, Lio/github/jaredmdobson/concentus/FFTState;->shift:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x1

    .line 346
    aput v3, v0, v2

    .line 349
    :goto_1
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/FFTState;->factors:[S

    mul-int/lit8 v5, v2, 0x2

    aget-short v4, v4, v5

    .line 350
    iget-object v6, p0, Lio/github/jaredmdobson/concentus/FFTState;->factors:[S

    add-int/2addr v5, v3

    aget-short v5, v6, v5

    add-int/lit8 v6, v2, 0x1

    .line 351
    aget v7, v0, v2

    mul-int v7, v7, v4

    aput v7, v0, v6

    if-ne v5, v3, :cond_7

    .line 355
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/FFTState;->factors:[S

    const/4 v5, 0x2

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v3

    aget-short v4, v4, v6

    move v10, v4

    :goto_2
    if-ltz v2, :cond_6

    if-eqz v2, :cond_1

    .line 358
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/FFTState;->factors:[S

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v6, v3

    aget-short v4, v4, v6

    move v12, v4

    goto :goto_3

    :cond_1
    const/4 v12, 0x1

    .line 362
    :goto_3
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/FFTState;->factors:[S

    mul-int/lit8 v6, v2, 0x2

    aget-short v4, v4, v6

    if-eq v4, v5, :cond_5

    const/4 v6, 0x3

    if-eq v4, v6, :cond_4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_3

    const/4 v6, 0x5

    if-eq v4, v6, :cond_2

    move-object v9, p0

    move-object p0, p1

    move v7, p2

    goto :goto_5

    .line 373
    :cond_2
    aget v11, v0, v2

    shl-int v8, v11, v1

    move-object v9, p0

    move-object v6, p1

    move v7, p2

    invoke-static/range {v6 .. v12}, Lio/github/jaredmdobson/concentus/KissFFT;->kf_bfly5([IIILio/github/jaredmdobson/concentus/FFTState;III)V

    goto :goto_4

    :cond_3
    move-object v9, p0

    move-object v6, p1

    move v7, p2

    .line 367
    aget v11, v0, v2

    shl-int v8, v11, v1

    invoke-static/range {v6 .. v12}, Lio/github/jaredmdobson/concentus/KissFFT;->kf_bfly4([IIILio/github/jaredmdobson/concentus/FFTState;III)V

    goto :goto_4

    :cond_4
    move-object v9, p0

    move-object v6, p1

    move v7, p2

    .line 370
    aget v11, v0, v2

    shl-int v8, v11, v1

    invoke-static/range {v6 .. v12}, Lio/github/jaredmdobson/concentus/KissFFT;->kf_bfly3([IIILio/github/jaredmdobson/concentus/FFTState;III)V

    :goto_4
    move-object p0, v6

    goto :goto_5

    :cond_5
    move-object v9, p0

    move-object p0, p1

    move v7, p2

    .line 364
    aget p1, v0, v2

    invoke-static {p0, v7, v10, p1}, Lio/github/jaredmdobson/concentus/KissFFT;->kf_bfly2([IIII)V

    :goto_5
    add-int/lit8 v2, v2, -0x1

    move-object p1, p0

    move p2, v7

    move-object p0, v9

    move v10, v12

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    move v2, v6

    goto :goto_1
.end method
