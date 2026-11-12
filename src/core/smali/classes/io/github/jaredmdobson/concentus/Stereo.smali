.class Lio/github/jaredmdobson/concentus/Stereo;
.super Ljava/lang/Object;
.source "Stereo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_stereo_LR_to_MS(Lio/github/jaredmdobson/concentus/StereoEncodeState;[SI[SI[[BLio/github/jaredmdobson/concentus/BoxedValueByte;[IIIIII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p11

    move/from16 v10, p12

    const/4 v5, 0x2

    .line 204
    new-array v12, v5, [I

    .line 206
    new-instance v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v13, 0x0

    invoke-direct {v6, v13}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 207
    new-instance v14, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v14, v13}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    add-int/lit8 v15, p2, -0x2

    add-int/lit8 v7, v10, 0x2

    .line 215
    new-array v8, v7, [S

    const/4 v9, 0x0

    :goto_0
    const/4 v11, 0x1

    if-ge v9, v7, :cond_0

    add-int v16, p2, v9

    add-int/lit8 v16, v16, -0x2

    .line 219
    aget-short v16, v1, v16

    add-int v17, p4, v9

    add-int/lit8 v17, v17, -0x2

    aget-short v17, p3, v17

    add-int v5, v16, v17

    sub-int v13, v16, v17

    add-int v16, v15, v9

    .line 221
    invoke-static {v5, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v1, v16

    .line 222
    invoke-static {v13, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v5

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v8, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x2

    const/4 v13, 0x0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->sMid:[S

    const/4 v7, 0x2

    const/4 v9, 0x0

    invoke-static {v5, v9, v1, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->sSide:[S

    invoke-static {v5, v9, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v5, v15, v10

    .line 228
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->sMid:[S

    invoke-static {v1, v5, v13, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->sSide:[S

    invoke-static {v8, v10, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 232
    new-array v6, v10, [S

    .line 233
    new-array v13, v10, [S

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_1

    add-int v9, v15, v7

    .line 235
    aget-short v16, v1, v9

    add-int/lit8 v17, v9, 0x2

    aget-short v17, v1, v17

    const/16 v20, 0x1

    add-int v11, v16, v17

    add-int/lit8 v9, v9, 0x1

    aget-short v1, p1, v9

    move-object/from16 p2, v5

    const/4 v5, 0x1

    invoke-static {v11, v1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v1

    const/4 v5, 0x2

    invoke-static {v1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v1

    int-to-short v5, v1

    .line 236
    aput-short v5, v6, v7

    .line 237
    aget-short v5, p1, v9

    sub-int/2addr v5, v1

    int-to-short v1, v5

    aput-short v1, v13, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 p2, v5

    .line 241
    new-array v7, v10, [S

    .line 242
    new-array v1, v10, [S

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v10, :cond_2

    .line 244
    aget-short v9, v8, v5

    add-int/lit8 v11, v5, 0x2

    aget-short v11, v8, v11

    add-int/2addr v9, v11

    add-int/lit8 v11, v5, 0x1

    move-object/from16 v16, v1

    aget-short v1, v8, v11

    move/from16 v17, v5

    const/4 v5, 0x1

    invoke-static {v9, v1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v1

    const/4 v9, 0x2

    invoke-static {v1, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v1

    int-to-short v5, v1

    .line 245
    aput-short v5, v7, v17

    .line 246
    aget-short v5, v8, v11

    sub-int/2addr v5, v1

    int-to-short v1, v5

    aput-short v1, v16, v17

    move v5, v11

    move-object/from16 v1, v16

    goto :goto_2

    :cond_2
    move-object/from16 v16, v1

    mul-int/lit8 v1, v4, 0xa

    if-ne v10, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const/16 v5, 0x148

    if-eqz v1, :cond_4

    const/16 v9, 0x148

    goto :goto_4

    :cond_4
    const/16 v9, 0x28f

    :goto_4
    move/from16 v11, p9

    .line 253
    invoke-static {v11, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v11

    invoke-static {v11, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v11

    move-object v9, v8

    .line 255
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_side_amp_Q0:[I

    move-object/from16 v17, v9

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move/from16 v18, v1

    const/4 v1, 0x1

    invoke-static/range {v5 .. v11}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_find_predictor(Lio/github/jaredmdobson/concentus/BoxedValueInt;[S[S[IIII)I

    move-result v6

    const/16 v19, 0x0

    aput v6, v12, v19

    .line 256
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_side_amp_Q0:[I

    const/4 v9, 0x2

    move/from16 v10, p12

    move-object v6, v13

    move-object/from16 v7, v16

    move-object v13, v5

    move-object v5, v14

    invoke-static/range {v5 .. v11}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_find_predictor(Lio/github/jaredmdobson/concentus/BoxedValueInt;[S[S[IIII)I

    move-result v6

    aput v6, v12, v1

    .line 259
    iget v5, v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v6, v13, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v7, 0x3

    invoke-static {v5, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v5

    const/high16 v6, 0x10000

    .line 260
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v5

    if-eqz v18, :cond_5

    const/16 v8, 0x4b0

    goto :goto_5

    :cond_5
    const/16 v8, 0x258

    :goto_5
    sub-int v8, p8, v8

    if-ge v8, v1, :cond_6

    const/4 v8, 0x1

    :cond_6
    const/16 v9, 0x7d0

    const/16 v13, 0x384

    .line 268
    invoke-static {v9, v4, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v9

    const/16 v13, 0x7fff

    if-ge v9, v13, :cond_7

    const/4 v13, 0x1

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    .line 269
    :goto_6
    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 271
    invoke-static {v7, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v7

    const/high16 v13, 0xd0000

    add-int/2addr v13, v7

    const/16 v14, 0x13

    .line 272
    invoke-static {v8, v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v13

    const/4 v14, 0x0

    aput v13, p7, v14

    const/high16 p2, 0x10000

    const/16 v6, 0x10

    const/16 v19, 0x0

    const/16 v14, 0x4000

    if-ge v13, v9, :cond_8

    .line 275
    aput v9, p7, v19

    sub-int v13, v8, v9

    .line 276
    aput v13, p7, v1

    .line 278
    invoke-static {v13, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v13

    sub-int/2addr v13, v9

    add-int v7, v7, p2

    .line 279
    invoke-static {v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v7

    .line 278
    invoke-static {v13, v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v7

    const/4 v13, 0x0

    .line 280
    invoke-static {v7, v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result v7

    move v13, v7

    const/4 v7, 0x0

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    sub-int v13, v8, v13

    .line 282
    aput v13, p7, v1

    const/16 v13, 0x4000

    .line 287
    :goto_7
    iget-short v14, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    iget-short v6, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    sub-int/2addr v13, v6

    invoke-static {v14, v13, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    .line 290
    iput-byte v7, v3, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    const/16 v6, 0xb

    if-eqz p10, :cond_9

    .line 294
    aput v7, v12, v7

    .line 295
    aput v7, v12, v1

    .line 296
    invoke-static {v12, v2}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_quant_pred([I[[B)V

    :goto_8
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 297
    :cond_9
    iget-short v7, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->width_prev_Q14:S

    const/16 v11, 0xe

    if-nez v7, :cond_b

    mul-int/lit8 v7, v8, 0x8

    mul-int/lit8 v13, v9, 0xd

    if-lt v7, v13, :cond_a

    iget-short v7, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    .line 298
    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v7

    const/16 v13, 0x333

    if-ge v7, v13, :cond_b

    .line 301
    :cond_a
    iget-short v5, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    const/16 v19, 0x0

    aget v7, v12, v19

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    invoke-static {v5, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    aput v5, v12, v19

    .line 302
    iget-short v5, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    aget v7, v12, v1

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    invoke-static {v5, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    aput v5, v12, v1

    .line 303
    invoke-static {v12, v2}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_quant_pred([I[[B)V

    .line 306
    aput v19, v12, v19

    .line 307
    aput v19, v12, v1

    .line 308
    aput v8, p7, v19

    .line 309
    aput v19, p7, v1

    .line 310
    iput-byte v1, v3, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    goto :goto_8

    .line 311
    :cond_b
    iget-short v7, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->width_prev_Q14:S

    if-eqz v7, :cond_d

    mul-int/lit8 v7, v8, 0x8

    mul-int/lit8 v9, v9, 0xb

    if-lt v7, v9, :cond_c

    iget-short v7, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    .line 312
    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v5

    const/16 v7, 0x148

    if-ge v5, v7, :cond_d

    .line 315
    :cond_c
    iget-short v5, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    const/16 v19, 0x0

    aget v7, v12, v19

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    invoke-static {v5, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    aput v5, v12, v19

    .line 316
    iget-short v5, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    aget v7, v12, v1

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    invoke-static {v5, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    aput v5, v12, v1

    .line 317
    invoke-static {v12, v2}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_quant_pred([I[[B)V

    .line 320
    aput v19, v12, v19

    .line 321
    aput v19, v12, v1

    goto :goto_8

    :cond_d
    const/16 v19, 0x0

    .line 322
    iget-short v5, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    const/16 v7, 0x3ccd

    if-le v5, v7, :cond_e

    .line 324
    invoke-static {v12, v2}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_quant_pred([I[[B)V

    const/16 v9, 0x4000

    goto :goto_9

    .line 328
    :cond_e
    iget-short v5, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    aget v7, v12, v19

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    invoke-static {v5, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    aput v5, v12, v19

    .line 329
    iget-short v5, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    aget v7, v12, v1

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    invoke-static {v5, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    aput v5, v12, v1

    .line 330
    invoke-static {v12, v2}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_quant_pred([I[[B)V

    .line 331
    iget-short v2, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    move v9, v2

    .line 335
    :goto_9
    iget-byte v2, v3, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    if-ne v2, v1, :cond_10

    .line 336
    iget-short v2, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->silent_side_len:S

    mul-int/lit8 v5, v4, 0x8

    sub-int v5, v10, v5

    int-to-short v5, v5

    add-int/2addr v2, v5

    int-to-short v2, v2

    iput-short v2, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->silent_side_len:S

    .line 337
    iget-short v2, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->silent_side_len:S

    mul-int/lit8 v5, v4, 0x5

    if-ge v2, v5, :cond_f

    const/4 v7, 0x0

    .line 338
    iput-byte v7, v3, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    const/16 v2, 0x2710

    .line 341
    iput-short v2, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->silent_side_len:S

    goto :goto_a

    :cond_10
    const/4 v7, 0x0

    .line 344
    iput-short v7, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->silent_side_len:S

    .line 347
    :goto_a
    iget-byte v2, v3, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    if-nez v2, :cond_11

    aget v2, p7, v1

    if-ge v2, v1, :cond_11

    .line 348
    aput v1, p7, v1

    sub-int/2addr v8, v1

    .line 349
    invoke-static {v1, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v2

    aput v2, p7, v7

    .line 353
    :cond_11
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->pred_prev_Q13:[S

    aget-short v2, v2, v7

    neg-int v2, v2

    .line 354
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->pred_prev_Q13:[S

    aget-short v3, v3, v1

    neg-int v3, v3

    .line 355
    iget-short v5, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->width_prev_Q14:S

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    const/16 v11, 0x8

    mul-int/lit8 v4, v4, 0x8

    const/high16 v13, 0x10000

    .line 356
    invoke-static {v13, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v13

    .line 357
    aget v14, v12, v7

    const/16 v19, 0x0

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->pred_prev_Q13:[S

    aget-short v7, v7, v19

    sub-int/2addr v14, v7

    invoke-static {v14, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v7

    const/16 v14, 0x10

    invoke-static {v7, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x0

    .line 358
    aget v16, v12, v1

    iget-object v11, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->pred_prev_Q13:[S

    aget-short v11, v11, v1

    sub-int v11, v16, v11

    invoke-static {v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v11

    invoke-static {v11, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v11

    rsub-int/lit8 v11, v11, 0x0

    .line 359
    iget-short v14, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->width_prev_Q14:S

    sub-int v14, v9, v14

    invoke-static {v14, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v13

    invoke-static {v13, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v13

    const/4 v14, 0x0

    :goto_b
    const/16 v8, 0x9

    if-ge v14, v4, :cond_12

    add-int/2addr v2, v7

    add-int/2addr v3, v11

    add-int/2addr v5, v13

    add-int v16, v15, v14

    .line 364
    aget-short v18, p1, v16

    add-int/lit8 v20, v16, 0x2

    aget-short v20, p1, v20

    add-int v6, v18, v20

    add-int/lit8 v16, v16, 0x1

    move/from16 p6, v4

    aget-short v4, p1, v16

    invoke-static {v6, v4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT(III)I

    move-result v4

    invoke-static {v4, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    add-int/lit8 v6, v14, 0x1

    .line 366
    aget-short v8, v17, v6

    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v8

    invoke-static {v8, v4, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    .line 368
    aget-short v8, p1, v16

    const/16 v1, 0xb

    const/16 v20, 0x1

    invoke-static {v8, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v8

    invoke-static {v4, v8, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int v14, p4, v14

    add-int/lit8 v14, v14, -0x1

    const/16 v4, 0x8

    .line 370
    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v1

    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p3, v14

    move/from16 v4, p6

    move v14, v6

    const/4 v1, 0x1

    const/16 v6, 0xb

    goto :goto_b

    :cond_12
    move/from16 p6, v4

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 373
    aget v1, v12, v19

    rsub-int/lit8 v13, v1, 0x0

    .line 374
    aget v1, v12, v20

    rsub-int/lit8 v1, v1, 0x0

    const/16 v2, 0xa

    .line 375
    invoke-static {v9, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    :goto_c
    if-ge v4, v10, :cond_13

    add-int v3, v15, v4

    .line 377
    aget-short v5, p1, v3

    add-int/lit8 v6, v3, 0x2

    aget-short v6, p1, v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    aget-short v6, p1, v3

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT(III)I

    move-result v5

    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    .line 379
    aget-short v11, v17, v6

    invoke-static {v2, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v11

    invoke-static {v11, v5, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 381
    aget-short v3, p1, v3

    const/16 v11, 0xb

    invoke-static {v3, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    invoke-static {v5, v3, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int v4, p4, v4

    sub-int/2addr v4, v7

    const/16 v5, 0x8

    .line 383
    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, p3, v4

    move v4, v6

    const/16 v20, 0x1

    goto :goto_c

    :cond_13
    const/4 v7, 0x1

    .line 385
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->pred_prev_Q13:[S

    const/16 v19, 0x0

    aget v2, v12, v19

    int-to-short v2, v2

    aput-short v2, v1, v19

    .line 386
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->pred_prev_Q13:[S

    aget v2, v12, v7

    int-to-short v2, v2

    aput-short v2, v1, v7

    int-to-short v1, v9

    .line 387
    iput-short v1, v0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->width_prev_Q14:S

    return-void
.end method

.method static silk_stereo_MS_to_LR(Lio/github/jaredmdobson/concentus/StereoDecodeState;[SI[SI[III)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p7

    .line 412
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->sMid:[S

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v6, v7, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->sSide:[S

    invoke-static {v6, v7, v3, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v6, v2, v5

    .line 414
    iget-object v9, v0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->sMid:[S

    invoke-static {v1, v6, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v6, v4, v5

    .line 415
    iget-object v9, v0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->sSide:[S

    invoke-static {v3, v6, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->pred_prev_Q13:[S

    aget-short v6, v6, v7

    .line 419
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->pred_prev_Q13:[S

    const/4 v9, 0x1

    aget-short v8, v8, v9

    const/16 v10, 0x8

    mul-int/lit8 v11, p6, 0x8

    const/high16 v12, 0x10000

    .line 420
    invoke-static {v12, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v12

    .line 421
    aget v13, p5, v7

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->pred_prev_Q13:[S

    aget-short v14, v14, v7

    sub-int/2addr v13, v14

    invoke-static {v13, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v13

    .line 422
    aget v15, p5, v9

    const/16 v16, 0x0

    iget-object v7, v0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->pred_prev_Q13:[S

    aget-short v7, v7, v9

    sub-int/2addr v15, v7

    invoke-static {v15, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v7

    invoke-static {v7, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v7

    const/4 v12, 0x0

    :goto_0
    const/16 v15, 0x9

    if-ge v12, v11, :cond_0

    add-int/2addr v6, v13

    add-int/2addr v8, v7

    add-int v17, v2, v12

    .line 426
    aget-short v18, v1, v17

    add-int/lit8 v19, v17, 0x2

    aget-short v19, v1, v19

    add-int v14, v18, v19

    add-int/lit8 v17, v17, 0x1

    aget-short v10, v1, v17

    invoke-static {v14, v10, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT(III)I

    move-result v10

    invoke-static {v10, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v10

    add-int v14, v4, v12

    add-int/2addr v14, v9

    .line 428
    aget-short v15, v3, v14

    const/16 v9, 0x8

    const/16 v19, 0x1

    invoke-static {v15, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v15

    invoke-static {v15, v10, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v10

    .line 430
    aget-short v15, v1, v17

    const/16 v9, 0xb

    invoke-static {v15, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    invoke-static {v10, v9, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    const/16 v10, 0x8

    .line 432
    invoke-static {v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v9

    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v3, v14

    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x1

    const/16 v10, 0x8

    goto :goto_0

    :cond_0
    const/16 v19, 0x1

    .line 434
    aget v6, p5, v16

    .line 435
    aget v7, p5, v19

    :goto_1
    if-ge v11, v5, :cond_1

    add-int v8, v2, v11

    .line 437
    aget-short v9, v1, v8

    add-int/lit8 v10, v8, 0x2

    aget-short v10, v1, v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    aget-short v10, v1, v8

    const/4 v12, 0x1

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT(III)I

    move-result v9

    invoke-static {v9, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    add-int v10, v4, v11

    add-int/2addr v10, v12

    .line 439
    aget-short v12, v3, v10

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v12

    invoke-static {v12, v9, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 441
    aget-short v8, v1, v8

    const/16 v12, 0xb

    invoke-static {v8, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v8

    invoke-static {v9, v8, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    .line 443
    invoke-static {v8, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v8

    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v8

    int-to-short v8, v8

    aput-short v8, v3, v10

    add-int/lit8 v11, v11, 0x1

    const/16 v19, 0x1

    goto :goto_1

    .line 445
    :cond_1
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->pred_prev_Q13:[S

    aget v7, p5, v16

    int-to-short v7, v7

    aput-short v7, v6, v16

    .line 446
    iget-object v0, v0, Lio/github/jaredmdobson/concentus/StereoDecodeState;->pred_prev_Q13:[S

    const/16 v19, 0x1

    aget v6, p5, v19

    int-to-short v6, v6

    aput-short v6, v0, v19

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_2

    add-int v0, v2, v7

    add-int/lit8 v0, v0, 0x1

    .line 450
    aget-short v6, v1, v0

    add-int v8, v4, v7

    add-int/lit8 v8, v8, 0x1

    aget-short v9, v3, v8

    add-int v10, v6, v9

    sub-int/2addr v6, v9

    .line 452
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v1, v0

    .line 453
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static silk_stereo_decode_mid_only(Lio/github/jaredmdobson/concentus/EntropyCoder;Lio/github/jaredmdobson/concentus/BoxedValueInt;)V
    .locals 2

    .line 80
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_stereo_only_code_mid_iCDF:[S

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result p0

    iput p0, p1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method

.method static silk_stereo_decode_pred(Lio/github/jaredmdobson/concentus/EntropyCoder;[I)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 45
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v2

    .line 49
    sget-object v3, Lio/github/jaredmdobson/concentus/SilkTables;->silk_stereo_pred_joint_iCDF:[S

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v3

    const/4 v5, 0x0

    .line 50
    aget-object v6, v2, v5

    const/4 v7, 0x5

    invoke-static {v3, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v8

    aput v8, v6, v0

    const/4 v6, 0x1

    .line 51
    aget-object v8, v2, v6

    aget-object v9, v2, v5

    aget v9, v9, v0

    mul-int/lit8 v9, v9, 0x5

    sub-int/2addr v3, v9

    aput v3, v8, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 53
    aget-object v7, v2, v3

    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_uniform3_iCDF:[S

    invoke-virtual {p0, v8, v4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v8

    aput v8, v7, v5

    .line 54
    aget-object v7, v2, v3

    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_uniform5_iCDF:[S

    invoke-virtual {p0, v8, v4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-ge p0, v0, :cond_1

    .line 59
    aget-object v3, v2, p0

    aget v4, v3, v5

    aget v7, v3, v0

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v4, v7

    aput v4, v3, v5

    .line 60
    sget-object v3, Lio/github/jaredmdobson/concentus/SilkTables;->silk_stereo_pred_quant_Q13:[S

    aget-object v4, v2, p0

    aget v4, v4, v5

    aget-short v3, v3, v4

    .line 61
    sget-object v4, Lio/github/jaredmdobson/concentus/SilkTables;->silk_stereo_pred_quant_Q13:[S

    aget-object v7, v2, p0

    aget v7, v7, v5

    add-int/2addr v7, v6

    aget-short v4, v4, v7

    sub-int/2addr v4, v3

    const/16 v7, 0x199a

    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    .line 63
    aget-object v7, v2, p0

    aget v7, v7, v6

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    invoke-static {v3, v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v3

    aput v3, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 67
    :cond_1
    aget p0, p1, v5

    aget v0, p1, v6

    sub-int/2addr p0, v0

    aput p0, p1, v5

    return-void
.end method

.method static silk_stereo_encode_mid_only(Lio/github/jaredmdobson/concentus/EntropyCoder;B)V
    .locals 2

    .line 110
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_stereo_only_code_mid_iCDF:[S

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, v1}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    return-void
.end method

.method static silk_stereo_encode_pred(Lio/github/jaredmdobson/concentus/EntropyCoder;[[B)V
    .locals 8

    const/4 v0, 0x0

    .line 92
    aget-object v1, p1, v0

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    const/4 v3, 0x5

    mul-int/lit8 v1, v1, 0x5

    const/4 v4, 0x1

    aget-object v5, p1, v4

    aget-byte v5, v5, v2

    add-int/2addr v1, v5

    const/16 v5, 0x19

    if-ge v1, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 93
    :goto_0
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 94
    sget-object v5, Lio/github/jaredmdobson/concentus/SilkTables;->silk_stereo_pred_joint_iCDF:[S

    const/16 v6, 0x8

    invoke-virtual {p0, v1, v5, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 96
    aget-object v5, p1, v1

    aget-byte v5, v5, v0

    const/4 v7, 0x3

    if-ge v5, v7, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 97
    aget-object v5, p1, v1

    aget-byte v5, v5, v4

    if-ge v5, v3, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 98
    aget-object v5, p1, v1

    aget-byte v5, v5, v0

    sget-object v7, Lio/github/jaredmdobson/concentus/SilkTables;->silk_uniform3_iCDF:[S

    invoke-virtual {p0, v5, v7, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    .line 99
    aget-object v5, p1, v1

    aget-byte v5, v5, v4

    sget-object v7, Lio/github/jaredmdobson/concentus/SilkTables;->silk_uniform5_iCDF:[S

    invoke-virtual {p0, v5, v7, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method static silk_stereo_find_predictor(Lio/github/jaredmdobson/concentus/BoxedValueInt;[S[S[IIII)I
    .locals 8

    .line 133
    new-instance v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 134
    new-instance v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v2, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 135
    new-instance v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v3, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 136
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v4, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 140
    invoke-static {v0, v3, p1, p5}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SI)V

    .line 141
    invoke-static {v2, v4, p2, p5}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SI)V

    .line 142
    iget v5, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v6, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v5

    and-int/lit8 v6, v5, 0x1

    add-int/2addr v5, v6

    .line 145
    iget v6, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v4, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    sub-int v4, v5, v4

    invoke-static {v6, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v4

    iput v4, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 146
    iget v4, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v3, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    sub-int v3, v5, v3

    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v3

    iput v3, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 147
    iget v3, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v3

    iput v3, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 148
    invoke-static {p1, p2, v5, p5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_inner_prod_aligned_scale([S[SII)I

    move-result p1

    .line 149
    iget p2, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 p5, 0xd

    invoke-static {p1, p2, p5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result p2

    const/16 p5, -0x4000

    const/16 v3, 0x4000

    .line 150
    invoke-static {p2, p5, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result p2

    .line 151
    invoke-static {p2, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result p5

    .line 154
    invoke-static {p5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v3

    invoke-static {p6, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result p6

    const v3, 0x8000

    if-ge p6, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 157
    :goto_0
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 158
    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    .line 159
    aget v5, p3, p4

    iget v6, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 160
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v6

    invoke-static {v6, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v6

    aget v7, p3, p4

    sub-int/2addr v6, v7

    .line 159
    invoke-static {v5, v6, p6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    aput v5, p3, p4

    .line 162
    iget v5, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result p1

    const/4 v6, 0x4

    invoke-static {v5, p1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB_LSHIFT32(III)I

    move-result p1

    iput p1, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 163
    iget p1, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v0, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v0, p5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result p5

    const/4 v0, 0x6

    invoke-static {p1, p5, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result p1

    iput p1, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/lit8 p1, p4, 0x1

    .line 164
    aget p5, p3, p1

    iget v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 165
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v0

    invoke-static {v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    aget v2, p3, p1

    sub-int/2addr v0, v2

    .line 164
    invoke-static {p5, v0, p6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result p5

    aput p5, p3, p1

    .line 168
    aget p1, p3, p4

    invoke-static {p1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result p1

    const/16 p3, 0xe

    invoke-static {p5, p1, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result p1

    iput p1, p0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 169
    iget p1, p0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 p3, 0x7fff

    invoke-static {p1, v1, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result p1

    iput p1, p0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return p2
.end method

.method static silk_stereo_quant_pred([I[[B)V
    .locals 15

    const/4 v0, 0x0

    .line 472
    aget-object v1, p1, v0

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([BBI)V

    const/4 v1, 0x1

    .line 473
    aget-object v3, p1, v1

    invoke-static {v3, v0, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([BBI)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v5, :cond_3

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-nez v7, :cond_2

    const/16 v9, 0xf

    if-ge v8, v9, :cond_2

    .line 482
    sget-object v9, Lio/github/jaredmdobson/concentus/SilkTables;->silk_stereo_pred_quant_Q13:[S

    aget-short v9, v9, v8

    .line 483
    sget-object v10, Lio/github/jaredmdobson/concentus/SilkTables;->silk_stereo_pred_quant_Q13:[S

    add-int/lit8 v11, v8, 0x1

    aget-short v10, v10, v11

    sub-int/2addr v10, v9

    const/16 v12, 0x199a

    invoke-static {v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v10

    const/4 v12, 0x0

    :goto_2
    if-nez v7, :cond_1

    const/4 v13, 0x5

    if-ge v12, v13, :cond_1

    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v13, v1

    .line 487
    invoke-static {v9, v10, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v13

    .line 488
    aget v14, p0, v3

    sub-int/2addr v14, v13

    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v14

    if-ge v14, v6, :cond_0

    .line 492
    aget-object v4, p1, v3

    aput-byte v8, v4, v0

    .line 493
    aput-byte v12, v4, v1

    move v4, v13

    move v6, v14

    goto :goto_3

    :cond_0
    const/4 v7, 0x1

    :goto_3
    add-int/lit8 v12, v12, 0x1

    int-to-byte v12, v12

    goto :goto_2

    :cond_1
    int-to-byte v8, v11

    goto :goto_1

    .line 501
    :cond_2
    aget-object v6, p1, v3

    aget-byte v7, v6, v0

    invoke-static {v7, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 502
    aget-object v6, p1, v3

    aget-byte v7, v6, v0

    aget-byte v5, v6, v5

    mul-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    sub-int/2addr v7, v5

    int-to-byte v5, v7

    aput-byte v5, v6, v0

    .line 503
    aput v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 507
    :cond_3
    aget v2, p0, v0

    aget v1, p0, v1

    sub-int/2addr v2, v1

    aput v2, p0, v0

    return-void
.end method
