.class Lio/github/jaredmdobson/concentus/SilkNSQState;
.super Ljava/lang/Object;
.source "SilkNSQState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;,
        Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;
    }
.end annotation


# instance fields
.field lagPrev:I

.field prev_gain_Q16:I

.field rand_seed:I

.field rewhite_flag:I

.field final sAR2_Q14:[I

.field sLF_AR_shp_Q14:I

.field final sLPC_Q14:[I

.field sLTP_buf_idx:I

.field final sLTP_shp_Q14:[I

.field sLTP_shp_buf_idx:I

.field final xq:[S


# direct methods
.method constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x280

    .line 42
    new-array v1, v0, [S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->xq:[S

    .line 43
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    .line 44
    sget v0, Lio/github/jaredmdobson/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    add-int/lit8 v0, v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    const/16 v0, 0x10

    .line 45
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sAR2_Q14:[I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    .line 47
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->lagPrev:I

    .line 48
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    .line 49
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    .line 50
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rand_seed:I

    .line 51
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->prev_gain_Q16:I

    .line 52
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rewhite_flag:I

    return-void
.end method

.method private silk_noise_shape_quantizer(I[I[BI[SI[I[S[SI[SIIIIIIIIIII)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p14

    move/from16 v3, p16

    move/from16 v4, p18

    move/from16 v5, p19

    move/from16 v6, p20

    move/from16 v7, p21

    move/from16 v8, p22

    .line 296
    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    sub-int v9, v9, p13

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 297
    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int v11, v11, p13

    const/4 v12, 0x2

    add-int/2addr v11, v12

    const/4 v13, 0x6

    move/from16 v14, p17

    .line 298
    invoke-static {v14, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v14

    .line 301
    sget v15, Lio/github/jaredmdobson/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    sub-int/2addr v15, v10

    const/16 v16, 0x6

    const/16 p17, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v6, :cond_f

    const/16 v17, 0x2

    .line 305
    iget v12, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rand_seed:I

    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RAND(I)I

    move-result v12

    iput v12, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rand_seed:I

    const/16 v12, 0x10

    const/16 v10, 0xa

    if-eq v8, v10, :cond_1

    if-ne v8, v12, :cond_0

    goto :goto_1

    :cond_0
    const/16 v19, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v19, 0x1

    .line 308
    :goto_2
    invoke-static/range {v19 .. v19}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v10, 0x1

    const/16 v19, 0xa

    .line 310
    invoke-static {v8, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v12

    const/16 v18, 0x1

    .line 311
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    aget v10, v10, v15

    move/from16 v21, v9

    aget-short v9, p8, p17

    invoke-static {v12, v10, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 312
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0x1

    aget v10, v10, v12

    aget-short v12, p8, v18

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 313
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0x2

    aget v10, v10, v12

    aget-short v12, p8, v17

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 314
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0x3

    aget v10, v10, v12

    const/16 v22, 0x3

    aget-short v12, p8, v22

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 315
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0x4

    aget v10, v10, v12

    const/16 v23, 0x4

    aget-short v12, p8, v23

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 316
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0x5

    aget v10, v10, v12

    const/4 v12, 0x5

    aget-short v12, p8, v12

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 317
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0x6

    aget v10, v10, v12

    aget-short v12, p8, v16

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 318
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0x7

    aget v10, v10, v12

    const/4 v12, 0x7

    aget-short v12, p8, v12

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 319
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0x8

    aget v10, v10, v12

    const/16 v24, 0x8

    aget-short v12, p8, v24

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 320
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0x9

    aget v10, v10, v12

    const/16 v12, 0x9

    aget-short v12, p8, v12

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    const/16 v10, 0x10

    if-ne v8, v10, :cond_2

    .line 322
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0xa

    aget v10, v10, v12

    aget-short v12, p8, v19

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 323
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0xb

    aget v10, v10, v12

    const/16 v12, 0xb

    aget-short v12, p8, v12

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 324
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0xc

    aget v10, v10, v12

    const/16 v12, 0xc

    aget-short v12, p8, v12

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 325
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0xd

    aget v10, v10, v12

    const/16 v12, 0xd

    aget-short v12, p8, v12

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 326
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0xe

    aget v10, v10, v12

    const/16 v12, 0xe

    aget-short v12, p8, v12

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 327
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v12, v15, -0xf

    aget v10, v10, v12

    const/16 v12, 0xf

    aget-short v12, p8, v12

    invoke-static {v9, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    :cond_2
    const/4 v10, 0x2

    if-ne v1, v10, :cond_3

    .line 335
    aget v12, p7, v11

    aget-short v8, p9, p10

    invoke-static {v10, v12, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    add-int/lit8 v10, v11, -0x1

    .line 336
    aget v10, p7, v10

    add-int/lit8 v12, p10, 0x1

    aget-short v12, p9, v12

    invoke-static {v8, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    add-int/lit8 v10, v11, -0x2

    .line 337
    aget v10, p7, v10

    add-int/lit8 v12, p10, 0x2

    aget-short v12, p9, v12

    invoke-static {v8, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    add-int/lit8 v10, v11, -0x3

    .line 338
    aget v10, p7, v10

    add-int/lit8 v12, p10, 0x3

    aget-short v12, p9, v12

    invoke-static {v8, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    add-int/lit8 v10, v11, -0x4

    .line 339
    aget v10, p7, v10

    add-int/lit8 v12, p10, 0x4

    aget-short v12, p9, v12

    invoke-static {v8, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    and-int/lit8 v10, v7, 0x1

    if-nez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    .line 346
    :goto_4
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 348
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    aget v10, v10, v15

    .line 349
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sAR2_Q14:[I

    aget v20, v12, p17

    .line 350
    aput v10, v12, p17

    move/from16 v25, v11

    const/4 v12, 0x1

    .line 351
    invoke-static {v7, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v11

    .line 352
    aget-short v12, p11, p12

    invoke-static {v11, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v10

    move/from16 v12, v20

    const/4 v11, 0x2

    :goto_5
    if-ge v11, v7, :cond_5

    .line 354
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sAR2_Q14:[I

    add-int/lit8 v20, v11, -0x1

    move-object/from16 v26, v7

    aget v7, v26, v20

    .line 355
    aput v12, v26, v20

    add-int v20, p12, v11

    add-int/lit8 v26, v20, -0x1

    move/from16 v27, v11

    .line 356
    aget-short v11, p11, v26

    invoke-static {v10, v12, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v10

    .line 357
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sAR2_Q14:[I

    aget v12, v11, v27

    .line 358
    aput v7, v11, v27

    .line 359
    aget-short v11, p11, v20

    invoke-static {v10, v7, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v10

    add-int/lit8 v11, v27, 0x2

    move/from16 v7, p21

    goto :goto_5

    .line 361
    :cond_5
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sAR2_Q14:[I

    add-int/lit8 v11, p21, -0x1

    aput v12, v7, v11

    add-int v7, p12, p21

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    .line 362
    aget-short v7, p11, v7

    invoke-static {v10, v12, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    .line 364
    invoke-static {v7, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v7

    .line 366
    iget v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    move/from16 v12, p15

    invoke-static {v7, v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    .line 368
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    const/16 v18, 0x1

    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    invoke-static {v10, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v10

    .line 369
    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    invoke-static {v10, v11, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWT(III)I

    move-result v10

    const/4 v11, 0x2

    if-gtz p13, :cond_7

    if-eq v1, v11, :cond_6

    goto :goto_6

    :cond_6
    const/16 v17, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/16 v17, 0x1

    .line 371
    :goto_7
    invoke-static/range {v17 .. v17}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 374
    invoke-static {v9, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v1

    invoke-static {v1, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v1

    .line 376
    invoke-static {v1, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v1

    if-lez p13, :cond_8

    .line 380
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    aget v3, v11, v21

    add-int/lit8 v20, v21, -0x2

    aget v11, v11, v20

    invoke-static {v3, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    .line 381
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    add-int/lit8 v20, v21, -0x1

    aget v11, v11, v20

    invoke-static {v3, v11, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWT(III)I

    move-result v3

    const/4 v11, 0x1

    .line 382
    invoke-static {v3, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    add-int/lit8 v20, v21, 0x1

    .line 385
    invoke-static {v8, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v3

    .line 387
    invoke-static {v3, v1, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v1

    const/4 v3, 0x3

    .line 389
    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v11, 0x2

    .line 392
    invoke-static {v1, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v1

    move/from16 v20, v21

    .line 396
    :goto_8
    aget v3, p2, v13

    invoke-static {v3, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v1

    .line 400
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rand_seed:I

    if-gez v3, :cond_9

    neg-int v1, v1

    :cond_9
    const/16 v3, -0x7c00

    const/16 v11, 0x7800

    .line 403
    invoke-static {v1, v3, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT_32(III)I

    move-result v1

    .line 406
    invoke-static {v1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v3

    const/16 v11, 0xa

    .line 407
    invoke-static {v3, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    const/16 v11, 0x50

    if-lez v3, :cond_a

    const/16 v2, 0xa

    .line 409
    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    invoke-static {v3, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v2

    .line 410
    invoke-static {v2, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    const/16 v3, 0x400

    .line 411
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    .line 412
    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v11

    .line 413
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v21

    :goto_9
    move/from16 v4, v21

    goto :goto_a

    :cond_a
    const/16 v2, 0x3b0

    if-nez v3, :cond_b

    .line 416
    invoke-static {v5, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    .line 417
    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v11

    .line 418
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v21

    move v2, v5

    goto :goto_9

    :cond_b
    const/4 v11, -0x1

    if-ne v3, v11, :cond_c

    .line 421
    invoke-static {v5, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v2

    neg-int v3, v2

    .line 422
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v11

    .line 423
    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v21

    move v3, v5

    goto :goto_9

    :cond_c
    const/16 v11, 0xa

    .line 426
    invoke-static {v3, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    const/16 v3, 0x50

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    .line 427
    invoke-static {v2, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    const/16 v3, 0x400

    .line 428
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    neg-int v11, v2

    .line 429
    invoke-static {v11, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v11

    move/from16 v21, v2

    neg-int v2, v3

    .line 430
    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v2

    move v4, v2

    move/from16 v2, v21

    .line 432
    :goto_a
    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v5

    .line 433
    invoke-static {v11, v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v5

    .line 434
    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v1

    .line 435
    invoke-static {v4, v1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v1

    if-ge v1, v5, :cond_d

    move v2, v3

    :cond_d
    add-int v1, p4, v13

    const/16 v11, 0xa

    .line 441
    invoke-static {v2, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p3, v1

    const/4 v3, 0x4

    .line 444
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    .line 445
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rand_seed:I

    if-gez v4, :cond_e

    neg-int v2, v2

    :cond_e
    const/4 v11, 0x1

    .line 450
    invoke-static {v2, v8, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v2

    .line 451
    invoke-static {v2, v9, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v3

    add-int v4, p6, v13

    .line 454
    invoke-static {v3, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v5

    const/16 v8, 0x8

    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v5

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, p5, v4

    add-int/lit8 v15, v15, 0x1

    .line 458
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    aput v3, v4, v15

    const/4 v11, 0x2

    .line 459
    invoke-static {v3, v7, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB_LSHIFT32(III)I

    move-result v3

    .line 460
    iput v3, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    .line 462
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    invoke-static {v3, v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB_LSHIFT32(III)I

    move-result v3

    aput v3, v4, v5

    .line 463
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    const/4 v10, 0x1

    invoke-static {v2, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    aput v2, p7, v3

    .line 464
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    add-int/2addr v2, v10

    iput v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    .line 465
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    add-int/2addr v2, v10

    iput v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    .line 468
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rand_seed:I

    aget-byte v1, p3, v1

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32_ovflw(II)I

    move-result v1

    iput v1, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rand_seed:I

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p1

    move/from16 v2, p14

    move/from16 v3, p16

    move/from16 v4, p18

    move/from16 v5, p19

    move/from16 v7, p21

    move/from16 v8, p22

    move/from16 v9, v20

    move/from16 v11, v25

    const/4 v12, 0x2

    goto/16 :goto_0

    .line 472
    :cond_f
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    sget v2, Lio/github/jaredmdobson/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    const/4 v3, 0x0

    invoke-static {v1, v6, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private silk_noise_shape_quantizer_del_dec([Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;I[I[BI[SI[I[I[S[SI[SIIIIIIIIIIIIIILio/github/jaredmdobson/concentus/BoxedValueInt;I)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p16

    move/from16 v2, p18

    move/from16 v3, p20

    move/from16 v4, p21

    move/from16 v5, p22

    move/from16 v6, p24

    move/from16 v7, p25

    move/from16 v8, p26

    move/from16 v9, p27

    move-object/from16 v10, p28

    move/from16 v11, p29

    if-lez v9, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 831
    :goto_0
    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    mul-int/lit8 v14, v9, 0x2

    .line 832
    new-array v15, v14, [Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v12, v14, :cond_1

    const/16 v17, 0x1

    .line 835
    new-instance v13, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;

    move/from16 v18, v12

    const/4 v12, 0x0

    invoke-direct {v13, v0, v12}, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;-><init>(Lio/github/jaredmdobson/concentus/SilkNSQState;Lio/github/jaredmdobson/concentus/SilkNSQState$1;)V

    aput-object v13, v15, v18

    add-int/lit8 v12, v18, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x1

    .line 838
    iget v12, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    sub-int v12, v12, p15

    add-int/lit8 v12, v12, 0x1

    .line 839
    iget v13, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int v13, v13, p15

    const/4 v14, 0x2

    add-int/2addr v13, v14

    const/4 v14, 0x6

    move/from16 v19, v12

    move/from16 v12, p19

    .line 840
    invoke-static {v12, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v12

    const/4 v14, 0x0

    const/16 v20, 0x6

    :goto_2
    if-ge v14, v5, :cond_1d

    move/from16 p19, v12

    move/from16 v12, p2

    move/from16 v22, v13

    const/4 v13, 0x2

    const/16 v21, 0x4

    if-ne v12, v13, :cond_2

    .line 850
    aget v12, p8, v22

    move-object/from16 v23, v15

    aget-short v15, p11, p12

    invoke-static {v13, v12, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v13, v22, -0x1

    .line 851
    aget v13, p8, v13

    add-int/lit8 v15, p12, 0x1

    aget-short v15, p11, v15

    invoke-static {v12, v13, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v13, v22, -0x2

    .line 852
    aget v13, p8, v13

    add-int/lit8 v15, p12, 0x2

    aget-short v15, p11, v15

    invoke-static {v12, v13, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v13, v22, -0x3

    .line 853
    aget v13, p8, v13

    add-int/lit8 v15, p12, 0x3

    aget-short v15, p11, v15

    invoke-static {v12, v13, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v13, v22, -0x4

    .line 854
    aget v13, p8, v13

    add-int/lit8 v15, p12, 0x4

    aget-short v15, p11, v15

    invoke-static {v12, v13, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    const/4 v13, 0x1

    .line 855
    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v12

    add-int/lit8 v13, v22, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v23, v15

    move/from16 v13, v22

    const/4 v12, 0x0

    :goto_3
    if-lez p15, :cond_3

    .line 865
    iget-object v15, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    move/from16 v22, v13

    aget v13, v15, v19

    add-int/lit8 v24, v19, -0x2

    aget v15, v15, v24

    invoke-static {v13, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v13

    invoke-static {v13, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v13

    .line 866
    iget-object v15, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    add-int/lit8 v24, v19, -0x1

    aget v15, v15, v24

    invoke-static {v13, v15, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWT(III)I

    move-result v13

    const/4 v15, 0x2

    .line 867
    invoke-static {v12, v13, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB_LSHIFT32(III)I

    move-result v13

    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_3
    move/from16 v22, v13

    const/4 v13, 0x0

    :goto_4
    const/4 v15, 0x0

    :goto_5
    const/16 v24, 0x8

    if-ge v15, v9, :cond_10

    .line 876
    aget-object v1, p1, v15

    move/from16 v26, v15

    .line 877
    iget-object v15, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sAR2_Q14:[I

    mul-int/lit8 v27, v26, 0x2

    add-int/lit8 v28, v27, 0x1

    move-object/from16 v29, v15

    .line 884
    iget v15, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    invoke-static {v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RAND(I)I

    move-result v15

    iput v15, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    .line 887
    sget v15, Lio/github/jaredmdobson/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    move/from16 v30, v15

    const/4 v15, 0x1

    add-int/lit8 v17, v30, -0x1

    add-int v30, v17, v14

    const/16 v15, 0x10

    const/16 v5, 0xa

    if-eq v7, v5, :cond_5

    if-ne v7, v15, :cond_4

    goto :goto_6

    :cond_4
    const/4 v5, 0x0

    goto :goto_7

    :cond_5
    :goto_6
    const/4 v5, 0x1

    .line 889
    :goto_7
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v5, 0x1

    .line 891
    invoke-static {v7, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v15

    const/16 v17, 0x1

    .line 892
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    aget v5, v5, v30

    aget-short v0, p10, v16

    invoke-static {v15, v5, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 893
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0x1

    aget v5, v5, v15

    aget-short v15, p10, v17

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 894
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0x2

    aget v5, v5, v15

    const/16 v18, 0x2

    aget-short v15, p10, v18

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 895
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0x3

    aget v5, v5, v15

    const/4 v15, 0x3

    aget-short v15, p10, v15

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 896
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0x4

    aget v5, v5, v15

    aget-short v15, p10, v21

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 897
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0x5

    aget v5, v5, v15

    const/4 v15, 0x5

    aget-short v15, p10, v15

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 898
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0x6

    aget v5, v5, v15

    aget-short v15, p10, v20

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 899
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0x7

    aget v5, v5, v15

    const/4 v15, 0x7

    aget-short v15, p10, v15

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 900
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0x8

    aget v5, v5, v15

    aget-short v15, p10, v24

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 901
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0x9

    aget v5, v5, v15

    const/16 v15, 0x9

    aget-short v15, p10, v15

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    const/16 v5, 0x10

    if-ne v7, v5, :cond_6

    .line 903
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0xa

    aget v5, v5, v15

    const/16 v25, 0xa

    aget-short v15, p10, v25

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 904
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0xb

    aget v5, v5, v15

    const/16 v15, 0xb

    aget-short v15, p10, v15

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 905
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0xc

    aget v5, v5, v15

    const/16 v15, 0xc

    aget-short v15, p10, v15

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 906
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0xd

    aget v5, v5, v15

    const/16 v15, 0xd

    aget-short v15, p10, v15

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 907
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0xe

    aget v5, v5, v15

    const/16 v15, 0xe

    aget-short v15, p10, v15

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 908
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v30, -0xf

    aget v5, v5, v15

    const/16 v15, 0xf

    aget-short v15, p10, v15

    invoke-static {v0, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    :cond_6
    const/4 v5, 0x4

    .line 910
    invoke-static {v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    and-int/lit8 v5, v6, 0x1

    if-nez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_8

    :cond_7
    const/4 v5, 0x0

    .line 915
    :goto_8
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 918
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    aget v5, v5, v30

    aget v15, v29, v16

    invoke-static {v5, v15, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 920
    aget v15, v29, v16

    const/4 v7, 0x1

    aget v17, v29, v7

    sub-int v7, v17, v5

    invoke-static {v15, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    .line 921
    aput v5, v29, v16

    move/from16 v24, v7

    const/4 v15, 0x1

    .line 922
    invoke-static {v6, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v7

    .line 923
    aget-short v15, p13, p14

    invoke-static {v7, v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    move/from16 v7, v24

    const/4 v15, 0x2

    :goto_9
    if-ge v15, v6, :cond_8

    add-int/lit8 v24, v15, -0x1

    .line 927
    aget v6, v29, v24

    aget v30, v29, v15

    move/from16 v31, v15

    sub-int v15, v30, v7

    invoke-static {v6, v15, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 928
    aput v7, v29, v24

    add-int v15, p14, v31

    add-int/lit8 v24, v15, -0x1

    move/from16 v30, v15

    .line 929
    aget-short v15, p13, v24

    invoke-static {v5, v7, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 931
    aget v7, v29, v31

    add-int/lit8 v15, v31, 0x1

    aget v15, v29, v15

    sub-int/2addr v15, v6

    invoke-static {v7, v15, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    .line 932
    aput v6, v29, v31

    .line 933
    aget-short v15, p13, v30

    invoke-static {v5, v6, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    add-int/lit8 v15, v31, 0x2

    move/from16 v6, p24

    goto :goto_9

    :cond_8
    add-int/lit8 v6, p24, -0x1

    .line 935
    aput v7, v29, v6

    add-int v6, p14, p24

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    .line 936
    aget-short v6, p13, v6

    invoke-static {v5, v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 938
    invoke-static {v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    .line 940
    iget v6, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    move/from16 v7, p17

    invoke-static {v5, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    const/4 v15, 0x2

    .line 942
    invoke-static {v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    .line 945
    iget-object v6, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    iget v15, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aget v6, v6, v15

    invoke-static {v6, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    .line 947
    iget v15, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    invoke-static {v6, v15, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWT(III)I

    move-result v6

    const/4 v15, 0x2

    .line 949
    invoke-static {v6, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v6

    .line 954
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v15

    .line 956
    invoke-static {v13, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    .line 958
    invoke-static {v2, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v2

    const/4 v15, 0x4

    .line 960
    invoke-static {v2, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v2

    .line 963
    aget v15, p3, v14

    invoke-static {v15, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v2

    .line 967
    iget v15, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    if-gez v15, :cond_9

    neg-int v2, v2

    :cond_9
    const/16 v15, -0x7c00

    const/16 v7, 0x7800

    .line 970
    invoke-static {v2, v15, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT_32(III)I

    move-result v2

    .line 973
    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v7

    const/16 v15, 0xa

    .line 974
    invoke-static {v7, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v7

    const/16 v15, 0x50

    if-lez v7, :cond_a

    const/16 v8, 0xa

    .line 976
    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    invoke-static {v7, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v7

    .line 977
    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    const/16 v8, 0x400

    .line 978
    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v8

    .line 979
    invoke-static {v7, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v15

    .line 980
    invoke-static {v8, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v24

    :goto_a
    move/from16 v4, v24

    goto :goto_c

    :cond_a
    const/16 v8, 0x3b0

    if-nez v7, :cond_b

    .line 983
    invoke-static {v4, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v8

    .line 984
    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v15

    .line 985
    invoke-static {v8, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v24

    move v7, v4

    goto :goto_a

    :cond_b
    const/4 v15, -0x1

    if-ne v7, v15, :cond_c

    .line 988
    invoke-static {v4, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v7

    neg-int v8, v7

    .line 989
    invoke-static {v8, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v15

    .line 990
    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v24

    goto :goto_b

    :cond_c
    const/16 v8, 0xa

    .line 993
    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    const/16 v15, 0x50

    invoke-static {v7, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    .line 994
    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    const/16 v15, 0x400

    .line 995
    invoke-static {v7, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v15

    neg-int v8, v7

    .line 996
    invoke-static {v8, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v8

    neg-int v4, v15

    .line 997
    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v24

    move v4, v15

    move v15, v8

    :goto_b
    move v8, v4

    goto :goto_a

    .line 999
    :goto_c
    invoke-static {v2, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v3

    .line 1000
    invoke-static {v15, v3, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v3

    const/16 v15, 0xa

    invoke-static {v3, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    .line 1001
    invoke-static {v2, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v2

    .line 1002
    invoke-static {v4, v2, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v2

    invoke-static {v2, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v2

    if-ge v3, v2, :cond_d

    .line 1005
    aget-object v4, v23, v27

    iget v15, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    invoke-static {v15, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    iput v3, v4, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    .line 1006
    aget-object v3, v23, v28

    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    invoke-static {v4, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    iput v2, v3, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    .line 1007
    aget-object v2, v23, v27

    iput v7, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    .line 1008
    aget-object v2, v23, v28

    iput v8, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    goto :goto_d

    .line 1010
    :cond_d
    aget-object v4, v23, v27

    iget v15, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    invoke-static {v15, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    iput v2, v4, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    .line 1011
    aget-object v2, v23, v28

    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    iput v3, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    .line 1012
    aget-object v2, v23, v27

    iput v8, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    .line 1013
    aget-object v2, v23, v28

    iput v7, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    .line 1019
    :goto_d
    aget-object v2, v23, v27

    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    const/4 v15, 0x4

    invoke-static {v2, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v2

    .line 1020
    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    if-gez v3, :cond_e

    neg-int v2, v2

    .line 1025
    :cond_e
    invoke-static {v2, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    .line 1026
    invoke-static {v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    .line 1029
    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v4

    .line 1030
    aget-object v7, v23, v27

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v8

    iput v8, v7, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->sLTP_shp_Q14:I

    .line 1031
    aget-object v7, v23, v27

    iput v4, v7, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->LF_AR_Q14:I

    .line 1032
    aget-object v4, v23, v27

    iput v2, v4, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->LPC_exc_Q14:I

    .line 1033
    aget-object v2, v23, v27

    iput v3, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->xq_Q14:I

    .line 1038
    aget-object v2, v23, v28

    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    const/4 v15, 0x4

    invoke-static {v2, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v2

    .line 1039
    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    if-gez v1, :cond_f

    neg-int v2, v2

    .line 1045
    :cond_f
    invoke-static {v2, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v1

    .line 1046
    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v0

    .line 1049
    invoke-static {v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v2

    .line 1050
    aget-object v3, v23, v28

    invoke-static {v2, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v4

    iput v4, v3, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->sLTP_shp_Q14:I

    .line 1051
    aget-object v3, v23, v28

    iput v2, v3, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->LF_AR_Q14:I

    .line 1052
    aget-object v2, v23, v28

    iput v1, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->LPC_exc_Q14:I

    .line 1053
    aget-object v1, v23, v28

    iput v0, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->xq_Q14:I

    add-int/lit8 v0, v26, 0x1

    move/from16 v2, p18

    move/from16 v3, p20

    move/from16 v4, p21

    move/from16 v5, p22

    move/from16 v6, p24

    move/from16 v7, p25

    move/from16 v8, p26

    move v15, v0

    const/16 v21, 0x4

    move-object/from16 v0, p0

    goto/16 :goto_5

    .line 1056
    :cond_10
    iget v0, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x1f

    iput v0, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 1058
    iget v0, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/2addr v0, v11

    and-int/lit8 v0, v0, 0x1f

    .line 1062
    aget-object v1, v23, v16

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_e
    if-ge v2, v9, :cond_12

    mul-int/lit8 v4, v2, 0x2

    .line 1065
    aget-object v5, v23, v4

    iget v5, v5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    if-ge v5, v1, :cond_11

    .line 1066
    aget-object v1, v23, v4

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    move v3, v2

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1072
    :cond_12
    aget-object v1, p1, v3

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RandState:[I

    aget v1, v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v9, :cond_15

    .line 1074
    aget-object v4, p1, v2

    iget-object v4, v4, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RandState:[I

    aget v4, v4, v0

    if-eq v4, v1, :cond_14

    mul-int/lit8 v4, v2, 0x2

    .line 1076
    aget-object v5, v23, v4

    iget v6, v5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    const v7, 0x7ffffff

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    iput v6, v5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    add-int/lit8 v5, v4, 0x1

    .line 1077
    aget-object v5, v23, v5

    iget v6, v5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    iput v6, v5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    .line 1078
    aget-object v4, v23, v4

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    if-ltz v4, :cond_13

    const/4 v4, 0x1

    goto :goto_10

    :cond_13
    const/4 v4, 0x0

    :goto_10
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1083
    :cond_15
    aget-object v1, v23, v16

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    const/16 v17, 0x1

    .line 1084
    aget-object v2, v23, v17

    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_11
    if-ge v4, v9, :cond_18

    mul-int/lit8 v7, v4, 0x2

    .line 1090
    aget-object v8, v23, v7

    iget v8, v8, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    if-le v8, v1, :cond_16

    .line 1091
    aget-object v1, v23, v7

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    move v5, v4

    :cond_16
    add-int/lit8 v7, v7, 0x1

    .line 1095
    aget-object v8, v23, v7

    iget v8, v8, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    if-ge v8, v2, :cond_17

    .line 1096
    aget-object v2, v23, v7

    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    move v6, v4

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_18
    if-ge v2, v1, :cond_19

    .line 1103
    aget-object v1, p1, v5

    aget-object v2, p1, v6

    invoke-virtual {v1, v2, v14}, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->PartialCopyFrom(Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;I)V

    mul-int/lit8 v5, v5, 0x2

    .line 1104
    aget-object v1, v23, v5

    mul-int/lit8 v6, v6, 0x2

    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v2, v23, v6

    invoke-virtual {v1, v2}, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->Assign(Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;)V

    .line 1108
    :cond_19
    aget-object v1, p1, v3

    if-gtz p23, :cond_1b

    if-lt v14, v11, :cond_1a

    goto :goto_12

    :cond_1a
    move-object/from16 v2, p0

    goto :goto_13

    :cond_1b
    :goto_12
    add-int v2, p5, v14

    sub-int/2addr v2, v11

    .line 1110
    iget-object v3, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Q_Q10:[I

    aget v3, v3, v0

    const/16 v8, 0xa

    invoke-static {v3, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int v2, p7, v14

    sub-int/2addr v2, v11

    .line 1111
    iget-object v3, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Xq_Q14:[I

    aget v3, v3, v0

    aget v4, p9, v0

    .line 1112
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v3

    const/16 v4, 0x8

    .line 1111
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, p6, v2

    move-object/from16 v2, p0

    .line 1113
    iget-object v3, v2, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v4, v2, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    sub-int/2addr v4, v11

    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    aget v5, v5, v0

    aput v5, v3, v4

    .line 1114
    iget v3, v2, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int/2addr v3, v11

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Pred_Q15:[I

    aget v0, v1, v0

    aput v0, p8, v3

    .line 1116
    :goto_13
    iget v0, v2, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    .line 1117
    iget v0, v2, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v9, :cond_1c

    .line 1121
    aget-object v1, p1, v0

    mul-int/lit8 v3, v0, 0x2

    .line 1123
    aget-object v4, v23, v3

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->LF_AR_Q14:I

    iput v4, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    .line 1124
    iget-object v4, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    sget v5, Lio/github/jaredmdobson/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    add-int/2addr v5, v14

    aget-object v6, v23, v3

    iget v6, v6, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->xq_Q14:I

    aput v6, v4, v5

    .line 1125
    iget-object v4, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Xq_Q14:[I

    iget v5, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aget-object v6, v23, v3

    iget v6, v6, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->xq_Q14:I

    aput v6, v4, v5

    .line 1126
    iget-object v4, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Q_Q10:[I

    iget v5, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aget-object v6, v23, v3

    iget v6, v6, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    aput v6, v4, v5

    .line 1127
    iget-object v4, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Pred_Q15:[I

    iget v5, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aget-object v6, v23, v3

    iget v6, v6, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->LPC_exc_Q14:I

    const/4 v15, 0x1

    invoke-static {v6, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v6

    aput v6, v4, v5

    .line 1128
    iget-object v4, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    iget v5, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aget-object v6, v23, v3

    iget v6, v6, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->sLTP_shp_Q14:I

    aput v6, v4, v5

    .line 1129
    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    aget-object v5, v23, v3

    iget v5, v5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v5

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32_ovflw(II)I

    move-result v4

    iput v4, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    .line 1130
    iget-object v4, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RandState:[I

    iget v5, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v6, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    aput v6, v4, v5

    .line 1131
    aget-object v3, v23, v3

    iget v3, v3, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    iput v3, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1c
    const/4 v15, 0x1

    .line 1133
    iget v0, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput p19, p9, v0

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p16

    move/from16 v12, p19

    move/from16 v3, p20

    move/from16 v4, p21

    move/from16 v5, p22

    move/from16 v6, p24

    move/from16 v7, p25

    move/from16 v8, p26

    move-object v0, v2

    move/from16 v13, v22

    move-object/from16 v15, v23

    const/16 v17, 0x1

    move/from16 v2, p18

    goto/16 :goto_2

    :cond_1d
    move-object v2, v0

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v9, :cond_1e

    .line 1138
    aget-object v1, p1, v0

    .line 1139
    iget-object v3, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    sget v4, Lio/github/jaredmdobson/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    move/from16 v5, p22

    const/4 v6, 0x0

    invoke-static {v3, v5, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    const/16 v16, 0x0

    goto :goto_15

    :cond_1e
    return-void
.end method

.method private silk_nsq_del_dec_scale_states(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;[Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;[II[I[S[IIII[I[III)V
    .locals 9

    .line 1163
    aget v0, p12, p8

    .line 1164
    aget v1, p11, p8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result v1

    const/16 v3, 0x2f

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1165
    :goto_0
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 1168
    aget v4, p11, p8

    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->prev_gain_Q16:I

    const/high16 v6, 0x10000

    if-eq v4, v5, :cond_1

    const/16 v7, 0x10

    .line 1169
    invoke-static {v5, v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v4

    goto :goto_1

    :cond_1
    const/high16 v4, 0x10000

    :goto_1
    const/16 v5, 0x8

    .line 1175
    invoke-static {v1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v5

    const/4 v7, 0x0

    .line 1176
    :goto_2
    iget v8, p1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    if-ge v7, v8, :cond_2

    add-int v8, p4, v7

    .line 1177
    aget v8, p3, v8

    invoke-static {v8, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v8

    aput v8, p5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1181
    :cond_2
    aget p3, p11, p8

    iput p3, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->prev_gain_Q16:I

    .line 1184
    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rewhite_flag:I

    const/4 p4, 0x2

    if-eqz p3, :cond_5

    if-nez p8, :cond_3

    move/from16 p3, p10

    .line 1187
    invoke-static {v1, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result p3

    invoke-static {p3, p4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    .line 1189
    :cond_3
    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int/2addr p3, v0

    sub-int/2addr p3, p4

    :goto_3
    iget p5, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    if-ge p3, p5, :cond_5

    const/16 p5, 0x140

    if-ge p3, p5, :cond_4

    const/4 p5, 0x1

    goto :goto_4

    :cond_4
    const/4 p5, 0x0

    .line 1190
    :goto_4
    invoke-static {p5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 1191
    aget-short p5, p6, p3

    invoke-static {v1, p5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result p5

    aput p5, p7, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    if-eq v4, v6, :cond_b

    .line 1198
    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    iget p5, p1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int/2addr p3, p5

    :goto_5
    iget p5, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    if-ge p3, p5, :cond_6

    .line 1199
    iget-object p5, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    aget p6, p5, p3

    invoke-static {v4, p6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result p6

    aput p6, p5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_6
    move/from16 p3, p13

    if-ne p3, p4, :cond_7

    .line 1203
    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rewhite_flag:I

    if-nez p3, :cond_7

    .line 1204
    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int/2addr p3, v0

    sub-int/2addr p3, p4

    :goto_6
    iget p4, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int p4, p4, p14

    if-ge p3, p4, :cond_7

    .line 1205
    aget p4, p7, p3

    invoke-static {v4, p4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result p4

    aput p4, p7, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_7
    move/from16 p3, p9

    const/4 p4, 0x0

    :goto_7
    if-ge p4, p3, :cond_b

    .line 1210
    aget-object p5, p2, p4

    .line 1213
    iget p6, p5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    invoke-static {v4, p6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result p6

    iput p6, p5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    const/4 p6, 0x0

    .line 1216
    :goto_8
    sget v0, Lio/github/jaredmdobson/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    if-ge p6, v0, :cond_8

    .line 1217
    iget-object v0, p5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    iget-object v1, p5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    aget v1, v1, p6

    invoke-static {v4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v1

    aput v1, v0, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_8

    :cond_8
    const/4 p6, 0x0

    .line 1219
    :goto_9
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    if-ge p6, v0, :cond_9

    .line 1220
    iget-object v0, p5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sAR2_Q14:[I

    iget-object v1, p5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sAR2_Q14:[I

    aget v1, v1, p6

    invoke-static {v4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v1

    aput v1, v0, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_9

    :cond_9
    const/4 p6, 0x0

    :goto_a
    const/16 v0, 0x20

    if-ge p6, v0, :cond_a

    .line 1223
    iget-object v0, p5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Pred_Q15:[I

    iget-object v1, p5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Pred_Q15:[I

    aget v1, v1, p6

    invoke-static {v4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v1

    aput v1, v0, p6

    .line 1224
    iget-object v0, p5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    iget-object v1, p5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    aget v1, v1, p6

    invoke-static {v4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v1

    aput v1, v0, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 p4, p4, 0x1

    goto :goto_7

    :cond_b
    return-void
.end method

.method private silk_nsq_scale_states(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;[II[I[S[III[I[II)V
    .locals 10

    .line 491
    aget v0, p10, p7

    .line 492
    aget v1, p9, p7

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result v1

    const/16 v3, 0x2f

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 493
    :goto_0
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 496
    aget v4, p9, p7

    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->prev_gain_Q16:I

    const/16 v6, 0x10

    const/high16 v7, 0x10000

    if-eq v4, v5, :cond_1

    .line 497
    invoke-static {v5, v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v4

    goto :goto_1

    :cond_1
    const/high16 v4, 0x10000

    :goto_1
    const/16 v5, 0x8

    .line 503
    invoke-static {v1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v5

    const/4 v8, 0x0

    .line 504
    :goto_2
    iget v9, p1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    if-ge v8, v9, :cond_2

    add-int v9, p3, v8

    .line 505
    aget v9, p2, v9

    invoke-static {v9, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v9

    aput v9, p4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 509
    :cond_2
    aget p2, p9, p7

    iput p2, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->prev_gain_Q16:I

    .line 512
    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rewhite_flag:I

    const/4 p3, 0x2

    if-eqz p2, :cond_5

    if-nez p7, :cond_3

    move/from16 p2, p8

    .line 515
    invoke-static {v1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result p2

    invoke-static {p2, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    .line 517
    :cond_3
    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int/2addr p2, v0

    sub-int/2addr p2, p3

    :goto_3
    iget p4, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    if-ge p2, p4, :cond_5

    const/16 p4, 0x140

    if-ge p2, p4, :cond_4

    const/4 p4, 0x1

    goto :goto_4

    :cond_4
    const/4 p4, 0x0

    .line 518
    :goto_4
    invoke-static {p4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 519
    aget-short p4, p5, p2

    invoke-static {v1, p4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result p4

    aput p4, p6, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    if-eq v4, v7, :cond_9

    .line 526
    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    iget p1, p1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int/2addr p2, p1

    :goto_5
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    if-ge p2, p1, :cond_6

    .line 527
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    aget p4, p1, p2

    invoke-static {v4, p4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result p4

    aput p4, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_6
    move/from16 p1, p11

    if-ne p1, p3, :cond_7

    .line 531
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rewhite_flag:I

    if-nez p1, :cond_7

    .line 532
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int/2addr p1, v0

    sub-int/2addr p1, p3

    :goto_6
    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    if-ge p1, p2, :cond_7

    .line 533
    aget p2, p6, p1

    invoke-static {v4, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result p2

    aput p2, p6, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 537
    :cond_7
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    invoke-static {v4, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result p1

    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    const/4 p1, 0x0

    .line 540
    :goto_7
    sget p2, Lio/github/jaredmdobson/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    if-ge p1, p2, :cond_8

    .line 541
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    aget p3, p2, p1

    invoke-static {v4, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result p3

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    if-ge v3, v6, :cond_9

    .line 544
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sAR2_Q14:[I

    aget p2, p1, v3

    invoke-static {v4, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result p2

    aput p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    return-void
.end method


# virtual methods
.method Assign(Lio/github/jaredmdobson/concentus/SilkNSQState;)V
    .locals 4

    .line 70
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    .line 71
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkNSQState;->lagPrev:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->lagPrev:I

    .line 72
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    .line 73
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    .line 74
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkNSQState;->rand_seed:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rand_seed:I

    .line 75
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkNSQState;->prev_gain_Q16:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->prev_gain_Q16:I

    .line 76
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkNSQState;->rewhite_flag:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rewhite_flag:I

    .line 77
    iget-object v0, p1, Lio/github/jaredmdobson/concentus/SilkNSQState;->xq:[S

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->xq:[S

    const/4 v2, 0x0

    const/16 v3, 0x280

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget-object v0, p1, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v0, p1, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    sget v3, Lio/github/jaredmdobson/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    add-int/lit8 v3, v3, 0x50

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget-object p1, p1, Lio/github/jaredmdobson/concentus/SilkNSQState;->sAR2_Q14:[I

    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sAR2_Q14:[I

    const/16 v1, 0x10

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method Reset()V
    .locals 3

    .line 55
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->xq:[S

    const/4 v1, 0x0

    const/16 v2, 0x280

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 56
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 57
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    sget v2, Lio/github/jaredmdobson/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    add-int/lit8 v2, v2, 0x50

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 58
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sAR2_Q14:[I

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 59
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    .line 60
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->lagPrev:I

    .line 61
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    .line 62
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    .line 63
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rand_seed:I

    .line 64
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->prev_gain_Q16:I

    .line 65
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rewhite_flag:I

    return-void
.end method

.method silk_NSQ(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SideInfoIndices;[I[B[[S[S[S[I[I[I[I[III)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    .line 166
    iget-byte v2, v12, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    iput v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rand_seed:I

    .line 169
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->lagPrev:I

    .line 171
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->prev_gain_Q16:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 173
    sget-object v3, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Quantization_Offsets_Q10:[[S

    iget-byte v4, v12, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    shr-int/2addr v4, v13

    aget-object v3, v3, v4

    iget-byte v4, v12, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    aget-short v19, v3, v4

    .line 175
    iget-byte v3, v12, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    const/4 v15, 0x0

    goto :goto_1

    :cond_1
    const/4 v15, 0x1

    .line 181
    :goto_1
    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    add-int/2addr v3, v4

    new-array v6, v3, [I

    .line 182
    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    add-int/2addr v3, v4

    new-array v5, v3, [S

    .line 183
    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    new-array v4, v3, [I

    .line 185
    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iput v3, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    .line 186
    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iput v3, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    .line 187
    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    move/from16 v16, v3

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    .line 188
    :goto_2
    iget v8, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v7, v8, :cond_5

    shr-int/lit8 v8, v7, 0x1

    rsub-int/lit8 v9, v15, 0x1

    or-int v18, v8, v9

    mul-int/lit8 v28, v7, 0x5

    mul-int/lit8 v29, v7, 0x10

    .line 194
    aget v8, p8, v7

    if-ltz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 195
    aget v8, p8, v7

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v8

    .line 196
    aget v10, p8, v7

    invoke-static {v10, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v10

    or-int v30, v8, v10

    .line 198
    iput v14, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rewhite_flag:I

    .line 199
    iget-byte v8, v12, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    if-ne v8, v9, :cond_4

    .line 201
    aget v2, p12, v7

    .line 204
    invoke-static {v15, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x3

    and-int/2addr v8, v7

    if-nez v8, :cond_4

    .line 206
    iget v8, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int/2addr v8, v2

    iget v10, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    sub-int/2addr v8, v10

    add-int/lit8 v21, v8, -0x2

    if-lez v21, :cond_3

    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    .line 207
    :goto_4
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 209
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->xq:[S

    iget v9, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    mul-int v9, v9, v7

    add-int v23, v21, v9

    aget-object v24, p5, v18

    iget v9, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int v26, v9, v21

    iget v9, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    const/16 v25, 0x0

    move-object/from16 v20, v5

    move-object/from16 v22, v8

    move/from16 v27, v9

    invoke-static/range {v20 .. v27}, Lio/github/jaredmdobson/concentus/Filters;->silk_LPC_analysis_filter([SI[SI[SIII)V

    .line 212
    iput v13, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rewhite_flag:I

    .line 213
    iget v5, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iput v5, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    goto :goto_5

    :cond_4
    move-object/from16 v20, v5

    :goto_5
    move/from16 v21, v2

    .line 217
    iget-byte v11, v12, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    move-object/from16 v2, p3

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move/from16 v8, p14

    move-object/from16 v5, v20

    invoke-direct/range {v0 .. v11}, Lio/github/jaredmdobson/concentus/SilkNSQState;->silk_nsq_scale_states(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;[II[I[S[III[I[II)V

    move/from16 v25, v3

    move-object v2, v4

    move-object/from16 v23, v5

    move/from16 v24, v7

    .line 219
    iget-byte v3, v12, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->xq:[S

    aget-object v8, p5, v18

    move v4, v15

    aget v15, p9, v24

    move-object v7, v6

    move/from16 v6, v16

    aget v16, p10, v24

    move v9, v4

    move/from16 v4, v17

    aget v17, p11, v24

    iget v10, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    iget v11, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    iget v13, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    move/from16 v18, p13

    move v1, v3

    move/from16 v26, v9

    move/from16 v20, v10

    move/from16 v22, v13

    move/from16 v13, v21

    move/from16 v10, v28

    move/from16 v12, v29

    move/from16 v14, v30

    const/16 v27, 0x1

    move-object/from16 v3, p4

    move-object/from16 v9, p6

    move/from16 v21, v11

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v22}, Lio/github/jaredmdobson/concentus/SilkNSQState;->silk_noise_shape_quantizer(I[I[BI[SI[I[S[SI[SIIIIIIIIIII)V

    move-object/from16 v1, p1

    move v3, v6

    move-object v6, v7

    .line 243
    iget v5, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v5, v25, v5

    .line 244
    iget v7, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v17, v4, v7

    .line 245
    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v16, v3, v4

    add-int/lit8 v7, v24, 0x1

    move-object/from16 v12, p2

    move-object v4, v2

    move v3, v5

    move v2, v13

    move-object/from16 v5, v23

    move/from16 v15, v26

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_5
    const/16 v27, 0x1

    .line 249
    iget v2, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    add-int/lit8 v2, v2, -0x1

    aget v2, p12, v2

    iput v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->lagPrev:I

    .line 252
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->xq:[S

    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([SIII)V

    .line 253
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    invoke-static {v2, v3, v5, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([IIII)V

    return-void
.end method

.method silk_NSQ_del_dec(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SideInfoIndices;[I[B[[S[S[S[I[I[I[I[III)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p2

    .line 582
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->lagPrev:I

    .line 584
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->prev_gain_Q16:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 587
    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    new-array v3, v3, [Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;

    const/4 v6, 0x0

    .line 588
    :goto_1
    iget v7, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    if-ge v6, v7, :cond_1

    .line 589
    new-instance v7, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;

    iget v8, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-direct {v7, v0, v8}, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;-><init>(Lio/github/jaredmdobson/concentus/SilkNSQState;I)V

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 592
    :goto_2
    iget v7, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    if-ge v6, v7, :cond_2

    .line 593
    aget-object v7, v3, v6

    .line 594
    iget-byte v8, v15, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    add-int/2addr v8, v6

    and-int/lit8 v8, v8, 0x3

    iput v8, v7, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    .line 595
    iget v8, v7, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    iput v8, v7, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->SeedInit:I

    .line 596
    iput v5, v7, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    .line 597
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    iput v8, v7, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    .line 598
    iget-object v8, v7, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    iget-object v9, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v10, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int/2addr v10, v4

    aget v9, v9, v10

    aput v9, v8, v5

    .line 599
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    iget-object v9, v7, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    sget v10, Lio/github/jaredmdobson/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    invoke-static {v8, v5, v9, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sAR2_Q14:[I

    iget-object v7, v7, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sAR2_Q14:[I

    iget v9, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v8, v5, v7, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 603
    :cond_2
    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Quantization_Offsets_Q10:[[S

    iget-byte v7, v15, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    shr-int/2addr v7, v4

    aget-object v6, v6, v7

    iget-byte v7, v15, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    aget-short v21, v6, v7

    .line 607
    iget v6, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    const/16 v7, 0x20

    invoke-static {v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v6

    .line 610
    iget-byte v8, v15, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v8, 0x0

    .line 611
    :goto_3
    iget v10, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v8, v10, :cond_4

    .line 612
    aget v10, p12, v8

    add-int/lit8 v10, v10, -0x3

    invoke-static {v6, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    if-lez v2, :cond_4

    add-int/lit8 v8, v2, -0x3

    .line 615
    invoke-static {v6, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v6

    :cond_4
    move v14, v6

    .line 618
    iget-byte v6, v15, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    const/4 v8, 0x4

    if-ne v6, v8, :cond_5

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    const/4 v6, 0x1

    .line 624
    :goto_4
    iget v8, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iget v10, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    add-int/2addr v8, v10

    new-array v8, v8, [I

    .line 625
    iget v10, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iget v11, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    add-int/2addr v10, v11

    new-array v10, v10, [S

    .line 626
    iget v11, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    new-array v11, v11, [I

    .line 627
    new-array v7, v7, [I

    .line 630
    iget v12, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    .line 631
    iget v13, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iput v13, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    .line 632
    iget v13, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iput v13, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    move/from16 v16, v12

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v7

    move-object v7, v8

    const/4 v8, 0x0

    .line 634
    :goto_5
    iget v5, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v8, v5, :cond_11

    shr-int/lit8 v5, v8, 0x1

    rsub-int/lit8 v22, v6, 0x1

    or-int v31, v5, v22

    .line 638
    aget v5, p8, v8

    if-ltz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 639
    aget v5, p8, v8

    invoke-static {v5, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    .line 640
    aget v4, p8, v8

    const/4 v9, 0x1

    invoke-static {v4, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    const/16 v9, 0x10

    invoke-static {v4, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    or-int v33, v5, v4

    const/4 v4, 0x0

    .line 642
    iput v4, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rewhite_flag:I

    .line 643
    iget-byte v5, v15, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    const/4 v9, 0x2

    if-ne v5, v9, :cond_10

    .line 645
    aget v2, p12, v8

    const/4 v5, 0x1

    .line 648
    invoke-static {v6, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v20

    rsub-int/lit8 v5, v20, 0x3

    and-int/2addr v5, v8

    if-nez v5, :cond_f

    if-ne v8, v9, :cond_d

    .line 652
    aget-object v5, v3, v4

    iget v5, v5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    move/from16 v34, v2

    const/4 v9, 0x1

    .line 654
    :goto_7
    iget v2, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    if-ge v9, v2, :cond_8

    .line 655
    aget-object v2, v3, v9

    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    if-ge v2, v5, :cond_7

    .line 656
    aget-object v2, v3, v9

    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    move v5, v2

    move v4, v9

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    .line 660
    :goto_8
    iget v5, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    if-ge v2, v5, :cond_b

    if-eq v2, v4, :cond_a

    .line 662
    aget-object v5, v3, v2

    iget v9, v5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    const v18, 0x7ffffff

    add-int v9, v9, v18

    iput v9, v5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    .line 663
    aget-object v5, v3, v2

    iget v5, v5, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    if-ltz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_9

    :cond_9
    const/4 v5, 0x0

    :goto_9
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 668
    :cond_b
    aget-object v2, v3, v4

    add-int v4, v13, v14

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v14, :cond_c

    const/16 v30, 0x1

    add-int/lit8 v4, v4, -0x1

    and-int/lit8 v4, v4, 0x1f

    add-int v9, v17, v5

    sub-int/2addr v9, v14

    move-object/from16 v35, v3

    .line 672
    iget-object v3, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Q_Q10:[I

    aget v3, v3, v4

    move/from16 v18, v4

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p4, v9

    .line 673
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->xq:[S

    add-int v4, v16, v5

    sub-int/2addr v4, v14

    iget-object v9, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Xq_Q14:[I

    aget v9, v9, v18

    move-object/from16 v23, v3

    const/16 v30, 0x1

    aget v3, p11, v30

    .line 674
    invoke-static {v9, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v3

    const/16 v9, 0xe

    .line 673
    invoke-static {v3, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v23, v4

    .line 675
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    sub-int/2addr v4, v14

    add-int/2addr v4, v5

    iget-object v9, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    aget v9, v9, v18

    aput v9, v3, v4

    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v18

    move-object/from16 v3, v35

    goto :goto_a

    :cond_c
    const/16 v18, 0x0

    goto :goto_b

    :cond_d
    move/from16 v34, v2

    :goto_b
    move-object/from16 v35, v3

    .line 682
    iget v2, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int v2, v2, v34

    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    sub-int/2addr v2, v3

    const/16 v32, 0x2

    add-int/lit8 v23, v2, -0x2

    if-lez v23, :cond_e

    const/4 v9, 0x1

    goto :goto_c

    :cond_e
    const/4 v9, 0x0

    .line 683
    :goto_c
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 685
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->xq:[S

    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    mul-int v3, v3, v8

    add-int v25, v23, v3

    aget-object v26, p5, v31

    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int v28, v3, v23

    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    const/16 v27, 0x0

    move-object/from16 v24, v2

    move/from16 v29, v3

    move-object/from16 v22, v10

    invoke-static/range {v22 .. v29}, Lio/github/jaredmdobson/concentus/Filters;->silk_LPC_analysis_filter([SI[SI[SIII)V

    .line 688
    iget v2, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iput v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_buf_idx:I

    const/4 v5, 0x1

    .line 689
    iput v5, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->rewhite_flag:I

    goto :goto_d

    :cond_f
    move/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v22, v10

    const/4 v5, 0x1

    const/16 v32, 0x2

    goto :goto_d

    :cond_10
    move-object/from16 v35, v3

    move-object/from16 v22, v10

    const/4 v5, 0x1

    const/16 v32, 0x2

    move/from16 v34, v2

    :goto_d
    move/from16 v23, v18

    .line 693
    iget v9, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    move v2, v13

    iget-byte v13, v15, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    move-object/from16 v3, p3

    move/from16 v10, p14

    move v15, v2

    move/from16 v32, v6

    move-object v5, v11

    move-object/from16 v18, v12

    move/from16 v4, v19

    move-object/from16 v6, v22

    move-object/from16 v2, v35

    const/16 v30, 0x1

    const/16 v35, 0x2

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v14}, Lio/github/jaredmdobson/concentus/SilkNSQState;->silk_nsq_del_dec_scale_states(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;[Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;[II[I[S[IIII[I[III)V

    move/from16 v38, v4

    move-object v3, v5

    move-object/from16 v36, v6

    move/from16 v37, v8

    move/from16 v29, v14

    .line 709
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v4, v15}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move-object/from16 v15, p2

    move-object v5, v2

    .line 710
    iget-byte v2, v15, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->xq:[S

    aget-object v10, p5, v31

    mul-int/lit8 v12, v37, 0x5

    mul-int/lit8 v14, v37, 0x10

    move-object v8, v5

    move/from16 v5, v17

    aget v17, p9, v37

    move-object/from16 v9, v18

    aget v18, p10, v37

    aget v19, p11, v37

    iget v11, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    add-int/lit8 v31, v23, 0x1

    iget v13, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    iget v0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    move/from16 v25, v0

    iget v0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    move/from16 v26, v0

    iget v0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    move/from16 v20, p13

    move/from16 v27, v0

    move-object/from16 v28, v4

    move-object v1, v8

    move/from16 v22, v11

    move/from16 v24, v13

    move/from16 v15, v34

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    move-object/from16 v11, p6

    move-object/from16 v13, p7

    move-object v8, v7

    move/from16 v7, v16

    move/from16 v16, v33

    invoke-direct/range {v0 .. v29}, Lio/github/jaredmdobson/concentus/SilkNSQState;->silk_noise_shape_quantizer_del_dec([Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;I[I[BI[SI[I[I[S[SI[SIIIIIIIIIIIIIILio/github/jaredmdobson/concentus/BoxedValueInt;I)V

    move-object v2, v1

    move v12, v7

    move-object v7, v8

    move-object/from16 v1, v28

    move/from16 v14, v29

    .line 740
    iget v13, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move-object/from16 v1, p1

    .line 742
    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v19, v38, v4

    .line 743
    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v17, v5, v4

    .line 744
    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v16, v12, v4

    add-int/lit8 v8, v37, 0x1

    move-object v11, v3

    move-object v12, v9

    move/from16 v18, v31

    move/from16 v6, v32

    move-object/from16 v10, v36

    const/4 v4, 0x1

    const/4 v9, 0x2

    move-object v3, v2

    move v2, v15

    move-object/from16 v15, p2

    goto/16 :goto_5

    :cond_11
    move-object v2, v3

    move v15, v13

    move/from16 v12, v16

    move/from16 v5, v17

    const/4 v4, 0x0

    const/16 v30, 0x1

    .line 748
    aget-object v3, v2, v4

    iget v3, v3, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 750
    :goto_e
    iget v8, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    if-ge v6, v8, :cond_13

    .line 751
    aget-object v8, v2, v6

    iget v8, v8, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    if-ge v8, v3, :cond_12

    .line 752
    aget-object v3, v2, v6

    iget v3, v3, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    move v7, v6

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 758
    :cond_13
    aget-object v2, v2, v7

    .line 759
    iget v3, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->SeedInit:I

    int-to-byte v3, v3

    move-object/from16 v6, p2

    iput-byte v3, v6, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    add-int v13, v15, v14

    .line 761
    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    add-int/lit8 v3, v3, -0x1

    aget v3, p11, v3

    const/4 v6, 0x6

    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v3

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v14, :cond_14

    add-int/lit8 v13, v13, -0x1

    and-int/lit8 v13, v13, 0x1f

    add-int v17, v5, v6

    sub-int v17, v17, v14

    .line 764
    iget-object v7, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Q_Q10:[I

    aget v7, v7, v13

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, p4, v17

    .line 765
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->xq:[S

    add-int v16, v12, v6

    sub-int v16, v16, v14

    iget-object v9, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Xq_Q14:[I

    aget v9, v9, v13

    .line 766
    invoke-static {v9, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v9

    const/16 v10, 0x8

    .line 765
    invoke-static {v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v9

    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v7, v16

    .line 767
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    sub-int/2addr v9, v14

    add-int/2addr v9, v6

    iget-object v10, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    aget v10, v10, v13

    aput v10, v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 769
    :cond_14
    iget-object v3, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    iget v5, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLPC_Q14:[I

    sget v7, Lio/github/jaredmdobson/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    invoke-static {v3, v5, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    iget-object v3, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->sAR2_Q14:[I

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sAR2_Q14:[I

    iget v6, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v3, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 773
    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    iput v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    .line 774
    iget v2, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    add-int/lit8 v2, v2, -0x1

    aget v2, p12, v2

    iput v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->lagPrev:I

    .line 777
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->xq:[S

    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    iget v5, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    invoke-static {v2, v3, v4, v5}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([SIII)V

    .line 778
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    invoke-static {v2, v3, v4, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([IIII)V

    return-void
.end method
