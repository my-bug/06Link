.class Lio/github/jaredmdobson/concentus/BurgModified;
.super Ljava/lang/Object;
.source "BurgModified.java"


# static fields
.field private static final MAX_FRAME_SIZE:I = 0x180

.field private static final MAX_RSHIFTS:I = 0x7

.field private static final MIN_RSHIFTS:I = -0x10

.field private static final N_BITS_HEAD_ROOM:I = 0x2

.field private static final QA:I = 0x19


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_burg_modified(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[I[SIIIII)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    const/16 v13, 0x10

    .line 58
    new-array v14, v13, [I

    .line 59
    new-array v15, v13, [I

    .line 60
    new-array v3, v13, [I

    const/16 v4, 0x11

    .line 61
    new-array v5, v4, [I

    .line 62
    new-array v6, v4, [I

    move-object v7, v6

    .line 63
    new-array v6, v13, [I

    mul-int v8, v11, v12

    const/16 v4, 0x180

    const/16 v17, 0x0

    if-gt v8, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 66
    :goto_0
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    move-object/from16 v18, v14

    const/16 v19, 0x1

    .line 69
    invoke-static {v2, v9, v2, v9, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_inner_prod16_aligned_64([SI[SII)J

    move-result-wide v13

    .line 70
    invoke-static {v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ64(J)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x23

    const/4 v8, 0x7

    if-le v4, v8, :cond_1

    const/4 v4, 0x7

    :cond_1
    const/16 v8, -0x10

    if-ge v4, v8, :cond_2

    const/16 v4, -0x10

    :cond_2
    if-lez v4, :cond_3

    .line 80
    invoke-static {v13, v14, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT64(JI)J

    move-result-wide v13

    long-to-int v8, v13

    goto :goto_1

    :cond_3
    long-to-int v8, v13

    neg-int v13, v4

    .line 82
    invoke-static {v8, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v8

    :goto_1
    move v13, v8

    const v14, 0xa7c6

    .line 85
    invoke-static {v14, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v8

    add-int/2addr v8, v13

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v17

    aput v8, v7, v17

    move-object/from16 v21, v3

    move-object/from16 v8, v18

    const/16 v3, 0x10

    const/4 v14, 0x0

    .line 87
    invoke-static {v8, v14, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    if-lez v4, :cond_6

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v12, :cond_5

    mul-int v6, v3, v11

    add-int/2addr v6, v9

    const/4 v14, 0x1

    :goto_3
    move/from16 v22, v3

    add-int/lit8 v3, p8, 0x1

    if-ge v14, v3, :cond_4

    add-int/lit8 v3, v14, -0x1

    .line 92
    aget v23, v8, v3

    move/from16 v24, v3

    add-int v3, v6, v14

    move-object/from16 v25, v5

    sub-int v5, v11, v14

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .line 93
    invoke-static {v2, v6, v2, v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_inner_prod16_aligned_64([SI[SII)J

    move-result-wide v7

    .line 92
    invoke-static {v7, v8, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT64(JI)J

    move-result-wide v7

    long-to-int v3, v7

    add-int v23, v23, v3

    aput v23, v27, v24

    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v22

    move-object/from16 v5, v25

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    goto :goto_3

    :cond_4
    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    add-int/lit8 v3, v22, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object v9, v8

    move v14, v4

    const/4 v1, 0x0

    const/16 v3, 0x10

    move/from16 v8, p8

    goto/16 :goto_8

    :cond_6
    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v12, :cond_a

    mul-int v3, v14, v11

    add-int/2addr v3, v9

    add-int/lit8 v5, v3, 0x1

    sub-int v7, v11, p8

    move v8, v4

    move-object/from16 v4, p3

    move/from16 v16, v14

    move-object/from16 v9, v27

    const/16 v1, 0x11

    move v14, v8

    move/from16 v8, p8

    .line 101
    invoke-static/range {v2 .. v8}, Lio/github/jaredmdobson/concentus/CeltPitchXCorr;->pitch_xcorr([SI[SI[III)I

    const/4 v4, 0x1

    :goto_5
    add-int/lit8 v5, v8, 0x1

    if-ge v4, v5, :cond_8

    add-int v5, v4, v11

    sub-int/2addr v5, v8

    const/4 v7, 0x0

    :goto_6
    if-ge v5, v11, :cond_7

    add-int v22, v3, v5

    .line 104
    aget-short v1, v2, v22

    sub-int v22, v22, v4

    move/from16 v24, v3

    aget-short v3, v2, v22

    invoke-static {v7, v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v7

    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v24

    const/16 v1, 0x11

    goto :goto_6

    :cond_7
    move/from16 v24, v3

    add-int/lit8 v1, v4, -0x1

    .line 106
    aget v3, v6, v1

    add-int/2addr v3, v7

    aput v3, v6, v1

    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v24

    const/16 v1, 0x11

    goto :goto_5

    :cond_8
    const/4 v1, 0x1

    :goto_7
    if-ge v1, v5, :cond_9

    add-int/lit8 v3, v1, -0x1

    .line 109
    aget v4, v9, v3

    aget v7, v6, v3

    move/from16 v22, v1

    neg-int v1, v14

    invoke-static {v7, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v1

    add-int/2addr v4, v1

    aput v4, v9, v3

    add-int/lit8 v1, v22, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v1, v16, 0x1

    move-object/from16 v27, v9

    move v4, v14

    move/from16 v9, p4

    move v14, v1

    goto :goto_4

    :cond_a
    move-object/from16 v9, v27

    move/from16 v8, p8

    move v14, v4

    const/4 v1, 0x0

    const/16 v3, 0x10

    .line 113
    :goto_8
    invoke-static {v9, v1, v15, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const v3, 0xa7c6

    .line 116
    invoke-static {v3, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v4

    add-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x1

    aput v4, v25, v1

    aput v4, v26, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    :goto_9
    if-ge v3, v8, :cond_1b

    const/high16 v16, 0x40000000    # 2.0f

    const/4 v1, -0x2

    if-le v14, v1, :cond_e

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v12, :cond_d

    mul-int v22, v1, v11

    add-int v22, p4, v22

    add-int v24, v22, v3

    .line 129
    aget-short v6, v2, v24

    rsub-int/lit8 v7, v14, 0x10

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v6

    neg-int v6, v6

    add-int v22, v22, v11

    sub-int v22, v22, v3

    add-int/lit8 v28, v22, -0x1

    move/from16 v29, v1

    .line 131
    aget-short v1, v2, v28

    invoke-static {v1, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v1

    neg-int v1, v1

    .line 133
    aget-short v7, v2, v24

    move/from16 v30, v4

    const/16 v4, 0x9

    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v7

    move/from16 v31, v7

    .line 135
    aget-short v7, v2, v28

    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v7

    move v4, v7

    move-object/from16 v28, v9

    move/from16 v7, v31

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v3, :cond_b

    move/from16 v31, v9

    .line 138
    aget v9, v28, v31

    sub-int v32, v24, v31

    add-int/lit8 v32, v32, -0x1

    aget-short v11, v2, v32

    invoke-static {v9, v6, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    aput v9, v28, v31

    .line 140
    aget v9, v15, v31

    add-int v11, v22, v31

    move/from16 v33, v6

    aget-short v6, v2, v11

    invoke-static {v9, v1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    aput v6, v15, v31

    .line 142
    aget v6, v21, v31

    .line 143
    aget-short v9, v2, v32

    invoke-static {v7, v6, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    .line 145
    aget-short v9, v2, v11

    invoke-static {v4, v6, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    add-int/lit8 v9, v31, 0x1

    move/from16 v11, p6

    move/from16 v6, v33

    goto :goto_b

    :cond_b
    neg-int v1, v7

    rsub-int/lit8 v6, v14, 0x7

    .line 148
    invoke-static {v1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v1

    neg-int v4, v4

    .line 150
    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v4

    const/4 v6, 0x0

    :goto_c
    if-gt v6, v3, :cond_c

    .line 153
    aget v7, v25, v6

    sub-int v9, v24, v6

    aget-short v9, v2, v9

    invoke-static {v7, v1, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    aput v7, v25, v6

    .line 155
    aget v7, v26, v6

    add-int v9, v22, v6

    add-int/lit8 v9, v9, -0x1

    aget-short v9, v2, v9

    invoke-static {v7, v4, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    aput v7, v26, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_c
    add-int/lit8 v1, v29, 0x1

    move/from16 v11, p6

    move-object/from16 v9, v28

    move/from16 v4, v30

    goto/16 :goto_a

    :cond_d
    move/from16 v30, v4

    move-object/from16 v28, v9

    goto/16 :goto_10

    :cond_e
    move/from16 v30, v4

    move-object/from16 v28, v9

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v12, :cond_11

    mul-int v4, v1, p6

    add-int v4, p4, v4

    add-int v6, v4, v3

    .line 162
    aget-short v7, v2, v6

    neg-int v9, v14

    invoke-static {v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v7

    neg-int v7, v7

    add-int v4, v4, p6

    sub-int/2addr v4, v3

    add-int/lit8 v11, v4, -0x1

    move/from16 v22, v1

    .line 164
    aget-short v1, v2, v11

    invoke-static {v1, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v1

    neg-int v1, v1

    move/from16 v24, v4

    .line 166
    aget-short v4, v2, v6

    move/from16 v29, v6

    const/16 v6, 0x11

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v4

    .line 168
    aget-short v11, v2, v11

    invoke-static {v11, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v11

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v3, :cond_f

    move/from16 v31, v6

    .line 171
    aget v6, v28, v31

    sub-int v32, v29, v31

    add-int/lit8 v32, v32, -0x1

    move/from16 v33, v9

    aget-short v9, v2, v32

    invoke-static {v6, v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MLA(III)I

    move-result v6

    aput v6, v28, v31

    .line 173
    aget v6, v15, v31

    add-int v9, v24, v31

    move/from16 v34, v7

    aget-short v7, v2, v9

    invoke-static {v6, v1, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MLA(III)I

    move-result v6

    aput v6, v15, v31

    .line 175
    aget v6, v21, v31

    const/16 v7, 0x8

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v6

    .line 177
    aget-short v7, v2, v32

    invoke-static {v4, v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MLA(III)I

    move-result v4

    .line 179
    aget-short v7, v2, v9

    invoke-static {v11, v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MLA(III)I

    move-result v11

    add-int/lit8 v6, v31, 0x1

    move/from16 v9, v33

    move/from16 v7, v34

    goto :goto_e

    :cond_f
    move/from16 v33, v9

    neg-int v1, v4

    neg-int v4, v11

    const/4 v6, 0x0

    :goto_f
    if-gt v6, v3, :cond_10

    .line 187
    aget v7, v25, v6

    sub-int v9, v29, v6

    aget-short v9, v2, v9

    add-int/lit8 v11, v33, -0x1

    .line 188
    invoke-static {v9, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v9

    .line 187
    invoke-static {v7, v1, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v7

    aput v7, v25, v6

    .line 190
    aget v7, v26, v6

    add-int v9, v24, v6

    add-int/lit8 v9, v9, -0x1

    aget-short v9, v2, v9

    .line 191
    invoke-static {v9, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v9

    .line 190
    invoke-static {v7, v4, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v7

    aput v7, v26, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_10
    add-int/lit8 v1, v22, 0x1

    goto/16 :goto_d

    .line 198
    :cond_11
    :goto_10
    aget v1, v28, v3

    .line 200
    aget v4, v15, v3

    const/16 v17, 0x0

    .line 204
    aget v6, v26, v17

    aget v7, v25, v17

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_11
    if-ge v7, v3, :cond_12

    .line 207
    aget v11, v21, v7

    .line 208
    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v22

    move/from16 v24, v3

    add-int/lit8 v3, v22, -0x1

    move/from16 v22, v7

    const/4 v7, 0x7

    .line 209
    invoke-static {v7, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v3

    .line 210
    invoke-static {v11, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v11

    sub-int v20, v24, v22

    add-int/lit8 v29, v20, -0x1

    const/16 v31, 0x7

    .line 213
    aget v7, v15, v29

    invoke-static {v7, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v7

    rsub-int/lit8 v3, v3, 0x7

    invoke-static {v1, v7, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v1

    .line 215
    aget v7, v28, v29

    invoke-static {v7, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v7

    invoke-static {v4, v7, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v4

    .line 217
    aget v7, v26, v20

    invoke-static {v7, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v7

    invoke-static {v9, v7, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v9

    add-int/lit8 v7, v22, 0x1

    move/from16 v20, v1

    .line 219
    aget v1, v26, v7

    move/from16 v22, v4

    aget v4, v25, v7

    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v1

    invoke-static {v1, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v1

    invoke-static {v6, v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v6

    move/from16 v1, v20

    move/from16 v4, v22

    move/from16 v3, v24

    goto :goto_11

    :cond_12
    move/from16 v24, v3

    const/16 v31, 0x7

    add-int/lit8 v3, v24, 0x1

    .line 223
    aput v1, v25, v3

    .line 225
    aput v4, v26, v3

    .line 227
    invoke-static {v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v1

    neg-int v1, v1

    const/4 v4, 0x1

    .line 229
    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v1

    .line 233
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v4

    if-ge v4, v6, :cond_13

    const/16 v4, 0x1f

    .line 234
    invoke-static {v1, v6, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v4

    goto :goto_12

    :cond_13
    if-lez v1, :cond_14

    const v4, 0x7fffffff

    goto :goto_12

    :cond_14
    const/high16 v4, -0x80000000

    .line 240
    :goto_12
    invoke-static {v4, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v6

    sub-int v6, v16, v6

    .line 241
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v6

    if-gt v6, v10, :cond_16

    const/16 v4, 0x1e

    .line 244
    invoke-static {v10, v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v4

    sub-int v4, v16, v4

    .line 246
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v5

    .line 249
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v5

    const/16 v7, 0x10

    .line 251
    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v4

    if-gez v1, :cond_15

    neg-int v1, v4

    move v4, v1

    :cond_15
    move v5, v10

    const/16 v30, 0x1

    goto :goto_13

    :cond_16
    const/16 v7, 0x10

    move v5, v6

    :goto_13
    const/4 v1, 0x0

    :goto_14
    shr-int/lit8 v6, v3, 0x1

    if-ge v1, v6, :cond_17

    .line 265
    aget v6, v21, v1

    sub-int v9, v24, v1

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    .line 267
    aget v7, v21, v9

    move/from16 v20, v1

    .line 269
    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v1

    invoke-static {v6, v1, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v1

    aput v1, v21, v20

    .line 271
    invoke-static {v6, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v1

    invoke-static {v7, v1, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v1

    aput v1, v21, v9

    add-int/lit8 v1, v20, 0x1

    const/16 v7, 0x10

    goto :goto_14

    :cond_17
    const/4 v1, 0x6

    .line 274
    invoke-static {v4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v1

    aput v1, v21, v24

    if-eqz v30, :cond_19

    :goto_15
    if-ge v3, v8, :cond_18

    const/16 v17, 0x0

    .line 280
    aput v17, v21, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_18
    move/from16 v4, v30

    goto :goto_17

    :cond_19
    const/4 v1, 0x0

    :goto_16
    if-gt v1, v3, :cond_1a

    .line 287
    aget v6, v25, v1

    sub-int v7, v24, v1

    const/4 v11, 0x1

    add-int/2addr v7, v11

    .line 289
    aget v9, v26, v7

    move/from16 v19, v1

    .line 291
    invoke-static {v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v1

    invoke-static {v6, v1, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v1

    aput v1, v25, v19

    .line 293
    invoke-static {v6, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v1

    invoke-static {v9, v1, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v1

    aput v1, v26, v7

    add-int/lit8 v1, v19, 0x1

    goto :goto_16

    :cond_1a
    move/from16 v11, p6

    move-object/from16 v9, v28

    move/from16 v4, v30

    const/16 v19, 0x1

    goto/16 :goto_9

    :cond_1b
    move/from16 v30, v4

    :goto_17
    if-eqz v4, :cond_1f

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v8, :cond_1c

    .line 301
    aget v3, v21, v1

    const/16 v4, 0x9

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    neg-int v3, v3

    aput v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_1c
    if-lez v14, :cond_1d

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v12, :cond_1e

    mul-int v3, v1, p6

    add-int v3, p4, v3

    .line 307
    invoke-static {v2, v3, v2, v3, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_inner_prod16_aligned_64([SI[SII)J

    move-result-wide v3

    invoke-static {v3, v4, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT64(JI)J

    move-result-wide v3

    long-to-int v4, v3

    sub-int/2addr v13, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_1d
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v12, :cond_1e

    mul-int v3, v1, p6

    add-int v3, p4, v3

    .line 312
    invoke-static {v2, v3, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_inner_prod_self([SII)I

    move-result v3

    neg-int v4, v14

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v3

    sub-int/2addr v13, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 316
    :cond_1e
    invoke-static {v5, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v1

    const/4 v7, 0x2

    invoke-static {v1, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    iput v1, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 v17, 0x0

    rsub-int/lit8 v13, v14, 0x0

    move-object/from16 v1, p1

    .line 317
    iput v13, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void

    :cond_1f
    move-object/from16 v1, p1

    const/16 v17, 0x0

    .line 320
    aget v2, v25, v17

    const/high16 v3, 0x10000

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v8, :cond_20

    .line 325
    aget v5, v21, v4

    const/16 v6, 0x9

    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v5

    add-int/lit8 v7, v4, 0x1

    .line 327
    aget v9, v25, v7

    invoke-static {v2, v9, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v2

    .line 329
    invoke-static {v3, v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v3

    neg-int v5, v5

    .line 331
    aput v5, p2, v4

    move v4, v7

    goto :goto_1b

    :cond_20
    const v4, 0xa7c6

    .line 333
    invoke-static {v4, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v4

    neg-int v3, v3

    invoke-static {v2, v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v2

    iput v2, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    neg-int v0, v14

    .line 334
    iput v0, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method
