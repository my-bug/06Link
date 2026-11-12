.class Lio/github/jaredmdobson/concentus/Autocorrelation;
.super Ljava/lang/Object;
.source "Autocorrelation.java"


# static fields
.field private static final QC:I = 0xa

.field private static final QS:I = 0xe


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static _celt_autocorr([I[I[IIII)I
    .locals 8

    sub-int v0, p5, p4

    .line 128
    new-array v1, p5, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 130
    :goto_0
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ltz p3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 131
    :goto_1
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-nez p3, :cond_2

    goto :goto_4

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-ge v4, p5, :cond_3

    .line 137
    aget v5, p0, v4

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ge v4, p3, :cond_4

    .line 140
    aget v5, p0, v4

    aget v6, p2, v4

    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v5

    aput v5, v1, v4

    sub-int v5, p5, v4

    sub-int/2addr v5, v3

    .line 141
    aget v6, p0, v5

    aget v7, p2, v4

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move-object p0, v1

    :goto_4
    shl-int/lit8 p2, p5, 0x7

    add-int/2addr p2, v3

    and-int/lit8 p3, p5, 0x1

    const/16 v4, 0x9

    if-eqz p3, :cond_5

    .line 151
    aget v5, p0, v2

    invoke-static {v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v5

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v5

    add-int/2addr p2, v5

    :cond_5
    :goto_5
    if-ge p3, p5, :cond_6

    .line 155
    aget v5, p0, p3

    invoke-static {v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v5

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v5

    add-int/2addr p2, v5

    add-int/lit8 v5, p3, 0x1

    .line 156
    aget v5, p0, v5

    invoke-static {v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v5

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v5

    add-int/2addr p2, v5

    add-int/lit8 p3, p3, 0x2

    goto :goto_5

    .line 159
    :cond_6
    invoke-static {p2}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x14

    const/4 p3, 0x2

    .line 160
    div-int/2addr p2, p3

    if-lez p2, :cond_7

    const/4 v4, 0x0

    :goto_6
    if-ge v4, p5, :cond_8

    .line 163
    aget v5, p0, v4

    invoke-static {v5, p2}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    move-object v1, p0

    :cond_8
    add-int/lit8 p0, p4, 0x1

    .line 170
    invoke-static {v1, v1, p1, v0, p0}, Lio/github/jaredmdobson/concentus/CeltPitchXCorr;->pitch_xcorr([I[I[III)I

    const/4 p0, 0x0

    :goto_7
    if-gt p0, p4, :cond_a

    add-int v4, p0, v0

    const/4 v5, 0x0

    :goto_8
    if-ge v4, p5, :cond_9

    .line 173
    aget v6, v1, v4

    sub-int v7, v4, p0

    aget v7, v1, v7

    invoke-static {v5, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 175
    :cond_9
    aget v4, p1, p0

    add-int/2addr v4, v5

    aput v4, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_a
    mul-int/lit8 p2, p2, 0x2

    if-gtz p2, :cond_b

    .line 180
    aget p0, p1, v2

    neg-int p5, p2

    invoke-static {v3, p5}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result p5

    add-int/2addr p0, p5

    aput p0, p1, v2

    .line 182
    :cond_b
    aget p0, p1, v2

    const/high16 p5, 0x10000000

    if-ge p0, p5, :cond_d

    int-to-long v0, p0

    .line 183
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->EC_ILOG(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1d

    :goto_9
    if-gt v2, p4, :cond_c

    .line 185
    aget p3, p1, v2

    invoke-static {p3, p0}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result p3

    aput p3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    sub-int/2addr p2, p0

    return p2

    :cond_d
    const/high16 p5, 0x20000000

    if-lt p0, p5, :cond_10

    const/high16 p5, 0x40000000    # 2.0f

    if-lt p0, p5, :cond_e

    const/4 v3, 0x2

    :cond_e
    :goto_a
    if-gt v2, p4, :cond_f

    .line 194
    aget p0, p1, v2

    invoke-static {p0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result p0

    aput p0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_f
    add-int/2addr p2, v3

    :cond_10
    return p2
.end method

.method static _celt_autocorr([S[III)I
    .locals 10

    sub-int v0, p3, p2

    .line 59
    new-array v1, p3, [S

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 60
    :goto_0
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    shl-int/lit8 v4, p3, 0x7

    add-int/2addr v4, v3

    and-int/lit8 v5, p3, 0x1

    const/16 v6, 0x9

    if-eqz v5, :cond_1

    .line 68
    aget-short v7, p0, v2

    invoke-static {v7, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(SS)I

    move-result v7

    invoke-static {v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v7

    add-int/2addr v4, v7

    :cond_1
    :goto_1
    if-ge v5, p3, :cond_2

    .line 71
    aget-short v7, p0, v5

    invoke-static {v7, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(SS)I

    move-result v7

    invoke-static {v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v7, v5, 0x1

    .line 72
    aget-short v7, p0, v7

    invoke-static {v7, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(SS)I

    move-result v7

    invoke-static {v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 74
    :cond_2
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x14

    const/4 v5, 0x2

    .line 75
    div-int/2addr v4, v5

    if-lez v4, :cond_4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, p3, :cond_3

    .line 78
    aget-short v7, p0, v6

    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move-object p0, v1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    add-int/lit8 v1, p2, 0x1

    .line 85
    invoke-static {p0, p0, p1, v0, v1}, Lio/github/jaredmdobson/concentus/CeltPitchXCorr;->pitch_xcorr([S[S[III)I

    const/4 v1, 0x0

    :goto_4
    if-gt v1, p2, :cond_6

    add-int v6, v1, v0

    const/4 v7, 0x0

    :goto_5
    if-ge v6, p3, :cond_5

    .line 88
    aget-short v8, p0, v6

    sub-int v9, v6, v1

    aget-short v9, p0, v9

    invoke-static {v7, v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(ISS)I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 90
    :cond_5
    aget v6, p1, v1

    add-int/2addr v6, v7

    aput v6, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    mul-int/lit8 v4, v4, 0x2

    if-gtz v4, :cond_7

    .line 94
    aget p0, p1, v2

    neg-int p3, v4

    invoke-static {v3, p3}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result p3

    add-int/2addr p0, p3

    aput p0, p1, v2

    .line 96
    :cond_7
    aget p0, p1, v2

    const/high16 p3, 0x10000000

    if-ge p0, p3, :cond_9

    int-to-long v0, p0

    .line 97
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->EC_ILOG(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1d

    :goto_6
    if-gt v2, p2, :cond_8

    .line 99
    aget p3, p1, v2

    invoke-static {p3, p0}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result p3

    aput p3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    sub-int/2addr v4, p0

    return v4

    :cond_9
    const/high16 p3, 0x20000000

    if-lt p0, p3, :cond_c

    const/high16 p3, 0x40000000    # 2.0f

    if-lt p0, p3, :cond_a

    const/4 v3, 0x2

    :cond_a
    :goto_7
    if-gt v2, p2, :cond_b

    .line 108
    aget p0, p1, v2

    invoke-static {p0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result p0

    aput p0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    add-int/2addr v4, v3

    :cond_c
    return v4
.end method

.method static silk_autocorr([ILio/github/jaredmdobson/concentus/BoxedValueInt;[SII)V
    .locals 0

    .line 44
    invoke-static {p3, p4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    .line 45
    invoke-static {p2, p0, p4, p3}, Lio/github/jaredmdobson/concentus/Autocorrelation;->_celt_autocorr([S[III)I

    move-result p0

    iput p0, p1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method

.method static silk_warped_autocorrelation([ILio/github/jaredmdobson/concentus/BoxedValueInt;[SIII)V
    .locals 19

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p5

    const/16 v3, 0x11

    .line 216
    new-array v4, v3, [I

    .line 217
    new-array v3, v3, [J

    and-int/lit8 v5, v2, 0x1

    const/4 v7, 0x1

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 220
    :goto_0
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 221
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    move/from16 v5, p4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_2

    .line 225
    aget-short v9, p2, v8

    const/16 v10, 0xe

    invoke-static {v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0x12

    if-ge v10, v2, :cond_1

    .line 229
    aget v12, v4, v10

    add-int/lit8 v13, v10, 0x1

    aget v14, v4, v13

    sub-int/2addr v14, v9

    invoke-static {v12, v14, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    .line 230
    aput v9, v4, v10

    .line 231
    aget-wide v14, v3, v10

    const/16 v16, 0x0

    aget v6, v4, v16

    move/from16 v18, v8

    const/16 v17, 0x1

    invoke-static {v9, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULL(II)J

    move-result-wide v7

    invoke-static {v7, v8, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT64(JI)J

    move-result-wide v6

    add-long/2addr v14, v6

    aput-wide v14, v3, v10

    .line 233
    aget v6, v4, v13

    add-int/lit8 v10, v10, 0x2

    aget v7, v4, v10

    sub-int/2addr v7, v12

    invoke-static {v6, v7, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 234
    aput v12, v4, v13

    .line 235
    aget-wide v6, v3, v13

    aget v8, v4, v16

    invoke-static {v12, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULL(II)J

    move-result-wide v14

    invoke-static {v14, v15, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT64(JI)J

    move-result-wide v11

    add-long/2addr v6, v11

    aput-wide v6, v3, v13

    move/from16 v8, v18

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    move/from16 v18, v8

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 237
    aput v9, v4, v2

    .line 238
    aget-wide v6, v3, v2

    aget v8, v4, v16

    invoke-static {v9, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULL(II)J

    move-result-wide v8

    invoke-static {v8, v9, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT64(JI)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v3, v2

    add-int/lit8 v8, v18, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 241
    aget-wide v4, v3, v16

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ64(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x23

    const/16 v4, -0x16

    const/16 v5, 0x14

    .line 242
    invoke-static {v1, v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result v1

    add-int/lit8 v4, v1, 0xa

    neg-int v4, v4

    .line 243
    iput v4, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 244
    iget v4, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 v5, -0x1e

    if-lt v4, v5, :cond_3

    iget v0, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 v4, 0xc

    if-gt v0, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ltz v1, :cond_4

    const/4 v0, 0x0

    :goto_4
    add-int/lit8 v4, v2, 0x1

    if-ge v0, v4, :cond_5

    .line 247
    aget-wide v4, v3, v0

    invoke-static {v4, v5, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT64(JI)J

    move-result-wide v4

    long-to-int v5, v4

    aput v5, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v4, v2, 0x1

    if-ge v0, v4, :cond_5

    .line 251
    aget-wide v4, v3, v0

    neg-int v6, v1

    invoke-static {v4, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT64(JI)J

    move-result-wide v4

    long-to-int v5, v4

    aput v5, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 254
    :cond_5
    aget-wide v0, v3, v16

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6

    const/4 v6, 0x1

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return-void
.end method
