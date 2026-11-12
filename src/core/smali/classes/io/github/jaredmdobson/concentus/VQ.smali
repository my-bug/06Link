.class Lio/github/jaredmdobson/concentus/VQ;
.super Ljava/lang/Object;
.source "VQ.java"


# static fields
.field private static SPREAD_FACTOR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x5

    const/16 v2, 0xf

    .line 64
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lio/github/jaredmdobson/concentus/VQ;->SPREAD_FACTOR:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alg_quant([IIIIIILio/github/jaredmdobson/concentus/EntropyCoder;)I
    .locals 19

    move/from16 v2, p2

    .line 164
    new-array v7, v2, [I

    .line 165
    new-array v8, v2, [I

    .line 166
    new-array v9, v2, [I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    const-string v1, "alg_quant() needs at least one pulse"

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(ZLjava/lang/String;)V

    if-le v2, v10, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 176
    :goto_1
    const-string v1, "alg_quant() needs at least two dimensions"

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(ZLjava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v4, p5

    .line 178
    invoke-static/range {v0 .. v6}, Lio/github/jaredmdobson/concentus/VQ;->exp_rotation([IIIIIII)V

    const/4 v0, 0x0

    :goto_2
    add-int v1, p1, v0

    .line 184
    aget v3, p0, v1

    if-lez v3, :cond_2

    .line 185
    aput v10, v9, v0

    goto :goto_3

    :cond_2
    const/4 v3, -0x1

    .line 187
    aput v3, v9, v0

    .line 188
    aget v3, p0, v1

    rsub-int/lit8 v3, v3, 0x0

    aput v3, p0, v1

    .line 191
    :goto_3
    aput v11, v8, v0

    .line 192
    aput v11, v7, v0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_f

    shr-int/lit8 v0, v2, 0x1

    if-le v5, v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_3
    add-int v3, p1, v1

    .line 204
    aget v3, p0, v3

    add-int/2addr v0, v3

    add-int/2addr v1, v10

    if-lt v1, v2, :cond_3

    if-gt v0, v5, :cond_5

    const/16 v1, 0x4000

    .line 211
    aput v1, p0, p1

    add-int/lit8 v0, p1, 0x1

    .line 214
    :cond_4
    aput v11, p0, v0

    add-int/2addr v0, v10

    add-int v3, v2, p1

    if-lt v0, v3, :cond_4

    const/16 v0, 0x4000

    :cond_5
    add-int/lit8 v1, v5, -0x1

    .line 220
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_rcp(I)I

    move-result v0

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q16(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v3

    move v0, v5

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :cond_6
    add-int v12, p1, v1

    .line 225
    aget v13, p0, v12

    invoke-static {v13, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v13

    aput v13, v8, v1

    .line 226
    aput v13, v7, v1

    .line 227
    invoke-static {v4, v13, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v4

    .line 228
    aget v12, p0, v12

    aget v13, v7, v1

    invoke-static {v6, v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    .line 229
    aget v12, v7, v1

    mul-int/lit8 v12, v12, 0x2

    aput v12, v7, v1

    .line 230
    aget v12, v8, v1

    sub-int/2addr v0, v12

    add-int/2addr v1, v10

    if-lt v1, v2, :cond_6

    goto :goto_4

    :cond_7
    move v0, v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_4
    if-lt v0, v10, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    .line 234
    :goto_5
    const-string v3, "Allocated too many pulses in the quick pass"

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(ZLjava/lang/String;)V

    add-int/lit8 v1, v2, 0x3

    if-le v0, v1, :cond_9

    .line 240
    invoke-static {v4, v0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    .line 241
    aget v3, v7, v11

    invoke-static {v1, v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v4

    .line 242
    aget v1, v8, v11

    add-int/2addr v1, v0

    aput v1, v8, v11

    const/4 v0, 0x0

    :cond_9
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_c

    sub-int v3, v5, v0

    add-int/2addr v3, v1

    add-int/2addr v3, v10

    .line 251
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v3

    add-int/2addr v3, v10

    .line 255
    invoke-static {v4, v10}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v4

    const/16 v12, -0x7fff

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_7
    add-int v16, p1, v13

    .line 260
    aget v16, p0, v16

    const/16 v17, 0x1

    invoke-static/range {v16 .. v16}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v10

    invoke-static {v6, v10}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v10

    invoke-static {v10, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v10

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v10

    .line 262
    aget v11, v7, v13

    invoke-static {v4, v11}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v11

    .line 266
    invoke-static {v10, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v10

    move/from16 p4, v0

    .line 270
    invoke-static {v14, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v0

    move/from16 v18, v1

    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    if-le v0, v1, :cond_a

    move v12, v10

    move v14, v11

    move v15, v13

    :cond_a
    add-int/lit8 v13, v13, 0x1

    if-lt v13, v2, :cond_b

    add-int v0, p1, v15

    .line 278
    aget v0, p0, v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v0

    invoke-static {v6, v0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v6

    .line 280
    aget v0, v7, v15

    invoke-static {v4, v0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v4

    .line 284
    aget v0, v7, v15

    add-int/lit8 v0, v0, 0x2

    aput v0, v7, v15

    .line 285
    aget v0, v8, v15

    add-int/lit8 v0, v0, 0x1

    aput v0, v8, v15

    add-int/lit8 v1, v18, 0x1

    move/from16 v0, p4

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_6

    :cond_b
    move/from16 v0, p4

    move/from16 v1, v18

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_7

    :cond_c
    const/4 v11, 0x0

    :goto_8
    add-int v0, p1, v11

    .line 291
    aget v1, v9, v11

    aget v3, p0, v0

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    aput v1, p0, v0

    .line 292
    aget v0, v9, v11

    if-gez v0, :cond_d

    .line 293
    aget v0, v8, v11

    neg-int v0, v0

    aput v0, v8, v11

    :cond_d
    add-int/lit8 v11, v11, 0x1

    if-lt v11, v2, :cond_e

    move-object/from16 v1, p6

    .line 297
    invoke-static {v8, v2, v5, v1}, Lio/github/jaredmdobson/concentus/CWRS;->encode_pulses([IIILio/github/jaredmdobson/concentus/EntropyCoder;)V

    move/from16 v4, p5

    .line 299
    invoke-static {v8, v2, v4}, Lio/github/jaredmdobson/concentus/VQ;->extract_collapse_mask([III)I

    move-result v0

    return v0

    :cond_e
    move/from16 v4, p5

    move-object/from16 v1, p6

    goto :goto_8

    :cond_f
    move/from16 v4, p5

    move-object/from16 v1, p6

    goto/16 :goto_2
.end method

.method static alg_unquant([IIIIIILio/github/jaredmdobson/concentus/EntropyCoder;I)I
    .locals 6

    .line 312
    new-array v0, p2, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 313
    :goto_0
    const-string v4, "alg_unquant() needs at least one pulse"

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(ZLjava/lang/String;)V

    if-le p2, v2, :cond_1

    const/4 v1, 0x1

    .line 314
    :cond_1
    const-string v2, "alg_unquant() needs at least two dimensions"

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(ZLjava/lang/String;)V

    .line 315
    invoke-static {v0, p2, p3, p6}, Lio/github/jaredmdobson/concentus/CWRS;->decode_pulses([IIILio/github/jaredmdobson/concentus/EntropyCoder;)I

    move-result v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p7

    .line 316
    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/VQ;->normalise_residual([I[IIIII)V

    move p6, p4

    move p4, p5

    move p5, p3

    const/4 p3, -0x1

    .line 317
    invoke-static/range {p0 .. p6}, Lio/github/jaredmdobson/concentus/VQ;->exp_rotation([IIIIIII)V

    .line 318
    invoke-static {v0, p2, p4}, Lio/github/jaredmdobson/concentus/VQ;->extract_collapse_mask([III)I

    move-result p0

    return p0
.end method

.method static exp_rotation([IIIIIII)V
    .locals 10

    mul-int/lit8 v0, p5, 0x2

    if-ge v0, p2, :cond_6

    if-nez p6, :cond_0

    goto/16 :goto_5

    .line 77
    :cond_0
    sget-object v0, Lio/github/jaredmdobson/concentus/VQ;->SPREAD_FACTOR:[I

    const/4 v1, 0x1

    add-int/lit8 v2, p6, -0x1

    aget v0, v0, v2

    const/16 v2, 0x7fff

    .line 79
    invoke-static {v2, p2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    mul-int v0, v0, p5

    add-int/2addr v0, p2

    invoke-static {v3, v0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_div(II)I

    move-result v0

    .line 80
    invoke-static {v0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v0

    .line 82
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->celt_cos_norm(I)I

    move-result v8

    .line 83
    invoke-static {v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_cos_norm(I)I

    move-result v9

    mul-int/lit8 v0, p4, 0x8

    const/4 v2, 0x0

    if-lt p2, v0, :cond_2

    :goto_0
    mul-int v0, v1, v1

    add-int/2addr v0, v1

    mul-int v0, v0, p4

    shr-int/lit8 v3, p4, 0x2

    add-int/2addr v0, v3

    if-ge v0, p2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 97
    :goto_1
    invoke-static {p2, p4}, Lio/github/jaredmdobson/concentus/Inlines;->celt_udiv(II)I

    move-result v6

    const/4 p2, 0x0

    :goto_2
    if-ge p2, p4, :cond_6

    if-gez p3, :cond_4

    if-eqz v5, :cond_3

    mul-int v0, p2, v6

    add-int/2addr v0, p1

    move v4, v9

    move v9, v8

    move v8, v4

    move-object v4, p0

    move v7, v5

    move v5, v0

    .line 101
    invoke-static/range {v4 .. v9}, Lio/github/jaredmdobson/concentus/VQ;->exp_rotation1([IIIIII)V

    move v1, v9

    move v9, v8

    move v8, v1

    move v1, v7

    goto :goto_3

    :cond_3
    move v1, v5

    :goto_3
    mul-int v0, p2, v6

    add-int v5, p1, v0

    const/4 v7, 0x1

    move-object v4, p0

    .line 104
    invoke-static/range {v4 .. v9}, Lio/github/jaredmdobson/concentus/VQ;->exp_rotation1([IIIIII)V

    goto :goto_4

    :cond_4
    move v1, v5

    move v0, v9

    mul-int v2, p2, v6

    add-int v3, p1, v2

    rsub-int/lit8 v2, v0, 0x0

    int-to-short v9, v2

    const/4 v7, 0x1

    move-object v4, p0

    move v5, v3

    .line 106
    invoke-static/range {v4 .. v9}, Lio/github/jaredmdobson/concentus/VQ;->exp_rotation1([IIIIII)V

    if-eqz v1, :cond_5

    rsub-int/lit8 v2, v8, 0x0

    int-to-short v7, v2

    move-object v2, p0

    move v5, v1

    move v4, v6

    move v6, v0

    .line 109
    invoke-static/range {v2 .. v7}, Lio/github/jaredmdobson/concentus/VQ;->exp_rotation1([IIIIII)V

    move v9, v6

    move v6, v4

    goto :goto_4

    :cond_5
    move v9, v0

    :goto_4
    add-int/lit8 p2, p2, 0x1

    move v5, v1

    goto :goto_2

    :cond_6
    :goto_5
    return-void
.end method

.method static exp_rotation1([IIIIII)V
    .locals 8

    .line 44
    invoke-static {p5}, Lio/github/jaredmdobson/concentus/Inlines;->NEG16(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    sub-int v3, p2, p3

    const/16 v4, 0xf

    if-ge v1, v3, :cond_0

    .line 47
    aget v3, p0, v2

    add-int v5, v2, p3

    .line 48
    aget v6, p0, v5

    .line 49
    invoke-static {p4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v7

    invoke-static {v7, p5, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v7

    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v7

    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v7

    aput v7, p0, v5

    .line 50
    invoke-static {p4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    invoke-static {v3, v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v3

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v3

    aput v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, p3, 0x2

    sub-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p1, p2

    :goto_1
    if-ltz p2, :cond_1

    .line 56
    aget v1, p0, p1

    add-int v2, p1, p3

    .line 57
    aget v3, p0, v2

    .line 58
    invoke-static {p4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v5

    invoke-static {v5, p5, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v5

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v5

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v5

    aput v5, p0, v2

    .line 59
    invoke-static {p4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    invoke-static {v1, v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v1

    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v1

    aput v1, p0, p1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static extract_collapse_mask([III)I
    .locals 7

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    return v0

    .line 145
    :cond_0
    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->celt_udiv(II)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2
    mul-int v6, v2, p1

    add-int/2addr v6, v5

    .line 153
    aget v6, p0, v6

    or-int/2addr v4, v6

    add-int/2addr v5, v0

    if-lt v5, p1, :cond_2

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_1

    return v3
.end method

.method static normalise_residual([I[IIIII)V
    .locals 4

    .line 126
    invoke-static {p4}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, -0x7

    mul-int/lit8 v1, v1, 0x2

    .line 127
    invoke-static {p4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result p4

    .line 128
    invoke-static {p4}, Lio/github/jaredmdobson/concentus/Inlines;->celt_rsqrt_norm(I)I

    move-result p4

    invoke-static {p4, p5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result p4

    const/4 p5, 0x0

    :cond_0
    add-int v1, p2, p5

    .line 132
    aget v2, p0, p5

    invoke-static {p4, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v2

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v2

    aput v2, p1, v1

    add-int/lit8 p5, p5, 0x1

    if-lt p5, p3, :cond_0

    return-void
.end method

.method static renormalise_vector([IIII)V
    .locals 4

    .line 330
    invoke-static {p0, p1, p0, p1, p2}, Lio/github/jaredmdobson/concentus/Kernels;->celt_inner_prod([II[III)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 331
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, -0x7

    mul-int/lit8 v2, v2, 0x2

    .line 332
    invoke-static {v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->VSHR32(II)I

    move-result v0

    .line 333
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_rsqrt_norm(I)I

    move-result v0

    invoke-static {v0, p3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 337
    aget v2, p0, p1

    invoke-static {p3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v2

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v2

    aput v2, p0, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static stereo_itheta([II[IIII)I
    .locals 7

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-ge p4, p5, :cond_1

    add-int v3, p1, p4

    .line 353
    aget v4, p0, v3

    invoke-static {v4, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v4

    add-int v5, p3, p4

    aget v6, p2, v5

    invoke-static {v6, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v6

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->ADD16(II)I

    move-result v4

    .line 354
    aget v3, p0, v3

    invoke-static {v3, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v3

    aget v5, p2, v5

    invoke-static {v5, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v5

    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v3

    .line 355
    invoke-static {v1, v4, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    .line 356
    invoke-static {v2, v3, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v2

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 359
    :cond_0
    invoke-static {p0, p1, p0, p1, p5}, Lio/github/jaredmdobson/concentus/Kernels;->celt_inner_prod([II[III)I

    move-result p0

    add-int/lit8 v1, p0, 0x1

    .line 360
    invoke-static {p2, p3, p2, p3, p5}, Lio/github/jaredmdobson/concentus/Kernels;->celt_inner_prod([II[III)I

    move-result p0

    add-int/lit8 v2, p0, 0x1

    .line 362
    :cond_1
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result p0

    .line 363
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result p1

    const/16 p2, 0x517d

    .line 365
    invoke-static {p1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_atan2p(II)I

    move-result p0

    invoke-static {p2, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p0

    return p0
.end method
