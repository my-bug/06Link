.class Lio/github/jaredmdobson/concentus/Pitch;
.super Ljava/lang/Object;
.source "Pitch.java"


# static fields
.field private static final second_check:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 277
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/jaredmdobson/concentus/Pitch;->second_check:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3
        0x2
        0x3
        0x2
        0x5
        0x2
        0x3
        0x2
        0x3
        0x2
        0x5
        0x2
        0x3
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static celt_fir5([I[I[II[I)V
    .locals 19

    const/4 v0, 0x0

    .line 95
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 96
    aget v3, p1, v2

    const/4 v4, 0x2

    .line 97
    aget v5, p1, v4

    const/4 v6, 0x3

    .line 98
    aget v7, p1, v6

    const/4 v8, 0x4

    .line 99
    aget v9, p1, v8

    .line 100
    aget v10, p4, v0

    .line 101
    aget v11, p4, v2

    .line 102
    aget v12, p4, v4

    .line 103
    aget v13, p4, v6

    .line 104
    aget v14, p4, v8

    move/from16 v15, p3

    const/16 v16, 0x0

    :goto_0
    if-ge v0, v15, :cond_0

    .line 106
    aget v17, p0, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v17}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v2

    const/16 v17, 0x2

    const/16 v4, 0xc

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v2

    .line 107
    invoke-static {v2, v1, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v2

    .line 108
    invoke-static {v2, v3, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v2

    .line 109
    invoke-static {v2, v5, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v2

    .line 110
    invoke-static {v2, v7, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v2

    .line 111
    invoke-static {v2, v9, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v2

    .line 116
    aget v14, p0, v0

    .line 117
    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->ROUND16(II)I

    move-result v2

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v11

    move v11, v10

    move v10, v14

    move v14, v13

    move v13, v12

    move v12, v2

    const/4 v2, 0x1

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    const/16 v17, 0x2

    const/16 v18, 0x1

    .line 119
    aput v10, p4, v16

    .line 120
    aput v11, p4, v18

    .line 121
    aput v12, p4, v17

    .line 122
    aput v13, p4, v6

    .line 123
    aput v14, p4, v8

    return-void
.end method

.method static find_best_pitch([I[III[III)V
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p5

    .line 49
    invoke-static/range {p6 .. p6}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v2

    add-int/lit8 v2, v2, -0xe

    const/4 v3, 0x0

    .line 55
    aput v3, p4, v3

    const/4 v4, 0x1

    .line 56
    aput v4, p4, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v5, v0, :cond_0

    .line 58
    aget v7, p1, v5

    invoke-static {v7, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v7

    invoke-static {v7, v1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    move/from16 v8, p3

    move v7, v6

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    .line 61
    aget v12, p0, v9

    if-lez v12, :cond_2

    .line 64
    invoke-static {v12, v2}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result v12

    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v12

    .line 65
    invoke-static {v12, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v12

    .line 66
    invoke-static {v12, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v13

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v14

    if-le v13, v14, :cond_2

    .line 67
    invoke-static {v12, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v5

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v10

    if-le v5, v10, :cond_1

    .line 70
    aget v5, p4, v3

    aput v5, p4, v4

    .line 73
    aput v9, p4, v3

    move v5, v6

    move v10, v11

    move v6, v12

    move v11, v7

    goto :goto_2

    .line 77
    :cond_1
    aput v9, p4, v4

    move v10, v7

    move v5, v12

    :cond_2
    :goto_2
    add-int v12, v9, v0

    .line 82
    aget v12, p1, v12

    invoke-static {v12, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v12

    invoke-static {v12, v1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v12

    aget v13, p1, v9

    invoke-static {v13, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v13

    invoke-static {v13, v1}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v13

    sub-int/2addr v12, v13

    add-int/2addr v7, v12

    .line 83
    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method static pitch_downsample([[I[III)V
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x5

    .line 128
    new-array v2, v2, [I

    const/4 v6, 0x4

    .line 130
    new-array v7, v6, [I

    const/4 v8, 0x0

    .line 131
    filled-new-array {v8, v8, v8, v8, v8}, [I

    move-result-object v9

    .line 136
    aget-object v3, p0, v8

    invoke-static {v3, v8, v0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_maxabs32([III)I

    move-result v3

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-ne v1, v11, :cond_0

    .line 138
    aget-object v4, p0, v10

    invoke-static {v4, v8, v0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_maxabs32([III)I

    move-result v4

    .line 139
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v3

    :cond_0
    if-ge v3, v10, :cond_1

    const/4 v3, 0x1

    .line 144
    :cond_1
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    if-gez v3, :cond_2

    const/4 v3, 0x0

    :cond_2
    if-ne v1, v11, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    shr-int/lit8 v5, v0, 0x1

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v5, :cond_4

    .line 154
    aget-object v4, p0, v8

    mul-int/lit8 v12, v0, 0x2

    add-int/lit8 v13, v12, -0x1

    aget v13, v4, v13

    add-int/lit8 v14, v12, 0x1

    aget v4, v4, v14

    add-int/2addr v13, v4

    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v4

    aget-object v13, p0, v8

    aget v12, v13, v12

    add-int/2addr v4, v12

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v4

    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v4

    aput v4, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_4
    aget-object v0, p0, v8

    aget v0, v0, v10

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v0

    aget-object v4, p0, v8

    aget v4, v4, v8

    add-int/2addr v0, v4

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v0

    invoke-static {v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v0

    aput v0, p1, v8

    if-ne v1, v11, :cond_6

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v5, :cond_5

    .line 161
    aget v1, p1, v0

    aget-object v4, p0, v10

    mul-int/lit8 v12, v0, 0x2

    add-int/lit8 v13, v12, -0x1

    aget v13, v4, v13

    add-int/lit8 v14, v12, 0x1

    aget v4, v4, v14

    add-int/2addr v13, v4

    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v4

    aget-object v13, p0, v10

    aget v12, v13, v12

    add-int/2addr v4, v12

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v4

    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v4

    add-int/2addr v1, v4

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_5
    aget v0, p1, v8

    aget-object v1, p0, v10

    aget v1, v1, v10

    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v1

    aget-object p0, p0, v10

    aget p0, p0, v8

    add-int/2addr v1, p0

    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result p0

    invoke-static {p0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result p0

    add-int/2addr v0, p0

    aput v0, p1, v8

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p1

    .line 166
    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/Autocorrelation;->_celt_autocorr([I[I[IIII)I

    .line 169
    aget p0, v1, v8

    const/16 v2, 0xd

    invoke-static {p0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr p0, v2

    aput p0, v1, v8

    const/4 p0, 0x1

    :goto_2
    if-gt p0, v6, :cond_7

    .line 173
    aget v2, v1, p0

    mul-int/lit8 v3, p0, 0x2

    mul-int v3, v3, p0

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 176
    :cond_7
    invoke-static {v7, v1, v6}, Lio/github/jaredmdobson/concentus/CeltLPC;->celt_lpc([I[II)V

    const/16 p0, 0x7fff

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_8

    const/16 v2, 0x7333

    .line 178
    invoke-static {v2, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p0

    .line 179
    aget v2, v7, v1

    invoke-static {v2, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    aput v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 182
    :cond_8
    aget p0, v7, v8

    add-int/lit16 v1, p0, 0xccd

    .line 183
    aget v2, v7, v10

    const/16 v3, 0x6666

    invoke-static {v3, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p0

    add-int/2addr v2, p0

    .line 184
    aget p0, v7, v11

    aget v4, v7, v10

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v4

    add-int/2addr p0, v4

    const/4 v4, 0x3

    .line 185
    aget v6, v7, v4

    aget v8, v7, v11

    invoke-static {v3, v8}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v8

    add-int/2addr v6, v8

    .line 186
    aget v4, v7, v4

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v3

    filled-new-array {v1, v2, p0, v6, v3}, [I

    move-result-object p0

    .line 188
    invoke-static {v0, p0, v0, v5, v9}, Lio/github/jaredmdobson/concentus/Pitch;->celt_fir5([I[I[II[I)V

    return-void
.end method

.method static pitch_search([II[IIILio/github/jaredmdobson/concentus/BoxedValueInt;)V
    .locals 14

    const/4 v0, 0x0

    .line 196
    filled-new-array {v0, v0}, [I

    move-result-object v5

    const/4 v8, 0x1

    if-lez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 202
    :goto_0
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-lez p4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 203
    :goto_1
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int v1, p3, p4

    shr-int/lit8 v3, p3, 0x2

    .line 206
    new-array v2, v3, [I

    const/4 v9, 0x2

    shr-int/2addr v1, v9

    .line 207
    new-array v4, v1, [I

    shr-int/lit8 v10, p4, 0x1

    .line 208
    new-array v6, v10, [I

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_2

    mul-int/lit8 v11, v7, 0x2

    add-int/2addr v11, p1

    .line 212
    aget v11, p0, v11

    aput v11, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v1, :cond_3

    mul-int/lit8 v11, v7, 0x2

    .line 215
    aget v11, p2, v11

    aput v11, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 218
    :cond_3
    invoke-static {v2, v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->celt_maxabs32([III)I

    move-result v7

    .line 219
    invoke-static {v4, v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->celt_maxabs32([III)I

    move-result v11

    .line 220
    invoke-static {v7, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v7

    invoke-static {v8, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v7

    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v7

    add-int/lit8 v7, v7, -0xb

    if-lez v7, :cond_6

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v3, :cond_4

    .line 223
    aget v12, v2, v11

    invoke-static {v12, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v12

    aput v12, v2, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v1, :cond_5

    .line 226
    aget v12, v4, v11

    invoke-static {v12, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v12

    aput v12, v4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    mul-int/lit8 v7, v7, 0x2

    move v11, v7

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    :goto_6
    shr-int/lit8 v1, p4, 0x2

    .line 235
    invoke-static {v2, v4, v6, v3, v1}, Lio/github/jaredmdobson/concentus/CeltPitchXCorr;->pitch_xcorr([I[I[III)I

    move-result v7

    move-object v2, v4

    move v4, v1

    move-object v1, v6

    const/4 v6, 0x0

    .line 237
    invoke-static/range {v1 .. v7}, Lio/github/jaredmdobson/concentus/Pitch;->find_best_pitch([I[III[III)V

    const/4 v2, 0x0

    const/4 v7, 0x1

    :goto_7
    const/4 v12, -0x1

    if-ge v2, v10, :cond_9

    .line 243
    aput v0, v1, v2

    .line 244
    aget v3, v5, v0

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->abs(I)I

    move-result v3

    if-le v3, v9, :cond_7

    aget v3, v5, v8

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->abs(I)I

    move-result v3

    if-le v3, v9, :cond_7

    goto :goto_9

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    shr-int/lit8 v6, p3, 0x1

    if-ge v3, v6, :cond_8

    add-int v6, p1, v3

    .line 249
    aget v6, p0, v6

    add-int v13, v2, v3

    aget v13, p2, v13

    invoke-static {v6, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v6

    invoke-static {v6, v11}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 252
    :cond_8
    invoke-static {v12, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v3

    aput v3, v1, v2

    .line 253
    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v7

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    shr-int/lit8 v3, p3, 0x1

    add-int/lit8 v6, v11, 0x1

    move-object/from16 v2, p2

    move v4, v10

    .line 255
    invoke-static/range {v1 .. v7}, Lio/github/jaredmdobson/concentus/Pitch;->find_best_pitch([I[III[III)V

    .line 258
    aget p0, v5, v0

    if-lez p0, :cond_b

    add-int/lit8 v10, v4, -0x1

    if-ge p0, v10, :cond_b

    add-int/lit8 p1, p0, -0x1

    .line 260
    aget p1, v1, p1

    .line 261
    aget v2, v1, p0

    add-int/2addr p0, v8

    .line 262
    aget p0, v1, p0

    sub-int v1, p0, p1

    sub-int v3, v2, p1

    const/16 v4, 0x599a

    .line 263
    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(SI)I

    move-result v3

    if-le v1, v3, :cond_a

    goto :goto_a

    :cond_a
    sub-int/2addr p1, p0

    sub-int/2addr v2, p0

    .line 265
    invoke-static {v4, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(SI)I

    move-result p0

    if-le p1, p0, :cond_b

    const/4 v8, -0x1

    goto :goto_a

    :cond_b
    const/4 v8, 0x0

    .line 274
    :goto_a
    aget p0, v5, v0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, v8

    move-object/from16 p1, p5

    iput p0, p1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method

.method static remove_doubling([IIIILio/github/jaredmdobson/concentus/BoxedValueInt;II)I
    .locals 26

    move-object/from16 v10, p4

    const/4 v11, 0x3

    .line 285
    new-array v12, v11, [I

    const/4 v13, 0x2

    .line 289
    div-int/lit8 v1, p1, 0x2

    .line 290
    div-int/lit8 v14, p2, 0x2

    .line 291
    iget v0, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    div-int/2addr v0, v13

    iput v0, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 292
    div-int/lit8 v15, p5, 0x2

    .line 293
    div-int/lit8 v6, p3, 0x2

    .line 295
    iget v0, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    .line 296
    iput v0, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 299
    :cond_0
    iget v0, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/lit8 v2, v1, 0x1

    .line 300
    new-array v2, v2, [I

    .line 301
    new-instance v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v3, 0x0

    invoke-direct {v7, v3}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 302
    new-instance v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v8, v3}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 303
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v4, v3}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    sub-int v5, v1, v0

    move-object/from16 v16, v2

    move-object/from16 v2, p0

    const/16 v17, 0x0

    move v3, v1

    move-object/from16 v18, v4

    move-object/from16 v4, p0

    move v11, v0

    move-object/from16 v17, v16

    const/4 v13, 0x0

    const/16 v16, 0x2

    move-object/from16 v0, p0

    .line 304
    invoke-static/range {v0 .. v8}, Lio/github/jaredmdobson/concentus/Kernels;->dual_inner_prod([II[II[IIILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)V

    .line 305
    iget v0, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 306
    iget v2, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 307
    aput v0, v17, v13

    move v5, v0

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v1, :cond_1

    sub-int v7, v1, v4

    const/16 p1, 0x1

    .line 311
    aget v3, p0, v7

    invoke-static {v3, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    add-int/2addr v5, v3

    add-int/2addr v7, v6

    aget v3, p0, v7

    invoke-static {v3, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    sub-int/2addr v5, v3

    .line 312
    invoke-static {v13, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v3

    aput v3, v17, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x1

    .line 314
    aget v3, v17, v11

    .line 321
    invoke-static {v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result v4

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 322
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v5, -0x7

    mul-int/lit8 v7, v7, 0x2

    .line 323
    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result v4

    .line 324
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->celt_rsqrt_norm(I)I

    move-result v4

    invoke-static {v4, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result v4

    move v7, v4

    move/from16 v19, v11

    const/4 v5, 0x2

    :goto_1
    const/16 v13, 0xf

    move-object/from16 v20, v12

    if-gt v5, v13, :cond_a

    mul-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v5

    mul-int/lit8 v12, v5, 0x2

    .line 334
    invoke-static {v13, v12}, Lio/github/jaredmdobson/concentus/Inlines;->celt_udiv(II)I

    move-result v13

    if-ge v13, v14, :cond_2

    goto/16 :goto_7

    :cond_2
    move/from16 v21, v0

    const/4 v0, 0x2

    if-ne v5, v0, :cond_3

    add-int v12, v13, v11

    if-le v12, v1, :cond_4

    move v0, v3

    move v12, v11

    goto :goto_2

    .line 347
    :cond_3
    sget-object v16, Lio/github/jaredmdobson/concentus/Pitch;->second_check:[I

    aget v16, v16, v5

    mul-int/lit8 v22, v16, 0x2

    mul-int v22, v22, v11

    add-int v0, v22, v5

    invoke-static {v0, v12}, Lio/github/jaredmdobson/concentus/Inlines;->celt_udiv(II)I

    move-result v0

    move v12, v0

    :cond_4
    move v0, v3

    :goto_2
    sub-int v3, v1, v13

    move/from16 v22, v5

    sub-int v5, v1, v12

    move/from16 v23, v2

    move-object/from16 v2, p0

    move/from16 v24, v4

    move-object/from16 v4, p0

    move v10, v0

    move/from16 v25, v12

    move/from16 p1, v14

    move/from16 v14, v21

    move/from16 v9, v23

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move/from16 v21, v7

    move-object v7, v8

    move-object/from16 v8, v18

    move/from16 v18, v15

    move/from16 v15, v24

    .line 350
    invoke-static/range {v0 .. v8}, Lio/github/jaredmdobson/concentus/Kernels;->dual_inner_prod([II[II[IIILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)V

    move-object v2, v8

    move-object v8, v7

    .line 351
    iget v3, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 352
    iget v4, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/2addr v3, v4

    .line 355
    aget v4, v17, v13

    aget v5, v17, v25

    add-int/2addr v4, v5

    .line 360
    invoke-static {v14, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result v5

    add-int/2addr v5, v12

    .line 361
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v7

    shr-int/2addr v7, v12

    add-int/lit8 v23, v7, -0x7

    const/16 v16, 0x2

    const/16 v24, 0x1

    mul-int/lit8 v12, v23, 0x2

    .line 362
    invoke-static {v5, v12}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result v5

    .line 363
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->celt_rsqrt_norm(I)I

    move-result v5

    invoke-static {v5, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v5

    add-int/lit8 v7, v7, 0x1

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result v5

    sub-int v7, v13, v18

    .line 366
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->abs(I)I

    move-result v12

    move-object/from16 v23, v2

    const/4 v2, 0x1

    if-gt v12, v2, :cond_5

    move/from16 v2, p6

    :goto_3
    const/16 v7, 0x599a

    goto :goto_4

    .line 368
    :cond_5
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->abs(I)I

    move-result v2

    const/4 v7, 0x2

    if-gt v2, v7, :cond_6

    mul-int/lit8 v2, v22, 0x5

    mul-int v2, v2, v22

    if-ge v2, v11, :cond_6

    .line 369
    invoke-static/range {p6 .. p6}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v2

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 373
    :goto_4
    invoke-static {v7, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v7

    sub-int/2addr v7, v2

    const/16 v12, 0x2666

    invoke-static {v12, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v7

    mul-int/lit8 v12, p1, 0x3

    if-ge v13, v12, :cond_7

    const/16 v7, 0x6ccd

    .line 378
    invoke-static {v7, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v7

    sub-int/2addr v7, v2

    const/16 v2, 0x3333

    invoke-static {v2, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v7

    goto :goto_5

    :cond_7
    mul-int/lit8 v12, p1, 0x2

    if-ge v13, v12, :cond_8

    const/16 v7, 0x7333

    .line 380
    invoke-static {v7, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v7

    sub-int/2addr v7, v2

    const/16 v2, 0x4000

    invoke-static {v2, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v7

    :cond_8
    :goto_5
    if-le v5, v7, :cond_9

    move v2, v3

    move v3, v4

    move v7, v5

    move/from16 v19, v13

    goto :goto_6

    :cond_9
    move v2, v9

    move v3, v10

    move/from16 v7, v21

    :goto_6
    add-int/lit8 v5, v22, 0x1

    move-object/from16 v10, p4

    move v0, v14

    move v4, v15

    move/from16 v15, v18

    move-object/from16 v12, v20

    move-object/from16 v18, v23

    const/16 v16, 0x2

    move/from16 v14, p1

    const/16 p1, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_7
    move-object/from16 v0, p0

    move v9, v2

    move v10, v3

    move/from16 v21, v7

    const/4 v13, 0x0

    .line 390
    invoke-static {v13, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v2

    if-gt v10, v2, :cond_b

    const/16 v2, 0x7fff

    const/16 v7, 0x7fff

    const/16 v24, 0x1

    goto :goto_8

    :cond_b
    const/16 v24, 0x1

    add-int/lit8 v3, v10, 0x1

    .line 394
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->frac_div32(II)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    move v7, v2

    :goto_8
    const/4 v2, 0x3

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_c

    add-int v4, v19, v3

    add-int/lit8 v4, v4, -0x1

    sub-int v4, v1, v4

    .line 398
    invoke-static {v0, v1, v0, v4, v6}, Lio/github/jaredmdobson/concentus/Kernels;->celt_inner_prod([II[III)I

    move-result v4

    aput v4, v20, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_c
    const/16 v16, 0x2

    .line 401
    aget v0, v20, v16

    const/4 v13, 0x0

    aget v1, v20, v13

    sub-int/2addr v0, v1

    aget v2, v20, v24

    sub-int/2addr v2, v1

    const/16 v1, 0x599a

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(SI)I

    move-result v2

    if-le v0, v2, :cond_d

    move/from16 v4, v21

    const/4 v3, 0x1

    goto :goto_a

    .line 403
    :cond_d
    aget v0, v20, v13

    aget v2, v20, v16

    sub-int/2addr v0, v2

    aget v3, v20, v24

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(SI)I

    move-result v1

    if-le v0, v1, :cond_e

    const/4 v3, -0x1

    move/from16 v4, v21

    goto :goto_a

    :cond_e
    move/from16 v4, v21

    const/4 v3, 0x0

    :goto_a
    if-le v7, v4, :cond_f

    move v7, v4

    :cond_f
    const/16 v16, 0x2

    mul-int/lit8 v19, v19, 0x2

    add-int v0, v19, v3

    move-object/from16 v10, p4

    .line 413
    iput v0, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 415
    iget v0, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move/from16 v9, p2

    if-ge v0, v9, :cond_10

    .line 416
    iput v9, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    :cond_10
    return v7
.end method
