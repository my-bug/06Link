.class Lio/github/jaredmdobson/concentus/VoiceActivityDetection;
.super Ljava/lang/Object;
.source "VoiceActivityDetection.java"


# static fields
.field private static final tiltWeights:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1770

    const/16 v1, -0x2ee0

    const/16 v2, 0x7530

    .line 42
    filled-new-array {v2, v0, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lio/github/jaredmdobson/concentus/VoiceActivityDetection;->tiltWeights:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_VAD_GetNoiseLevels([ILio/github/jaredmdobson/concentus/SilkVADState;)V
    .locals 11

    .line 352
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkVADState;->counter:I

    const/16 v1, 0x3e8

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_0

    .line 354
    iget v0, p1, Lio/github/jaredmdobson/concentus/SilkVADState;->counter:I

    invoke-static {v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    add-int/2addr v0, v4

    int-to-short v0, v0

    const/16 v1, 0x7fff

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_8

    .line 361
    iget-object v5, p1, Lio/github/jaredmdobson/concentus/SilkVADState;->NL:[I

    aget v5, v5, v1

    if-ltz v5, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 362
    :goto_2
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 365
    aget v6, p0, v1

    iget-object v7, p1, Lio/github/jaredmdobson/concentus/SilkVADState;->NoiseLevelBias:[I

    aget v7, v7, v1

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_POS_SAT32(II)I

    move-result v6

    if-lez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    .line 366
    :goto_3
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const v7, 0x7fffffff

    .line 369
    invoke-static {v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v8

    if-ltz v8, :cond_3

    const/4 v9, 0x1

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    .line 370
    :goto_4
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v9, 0x3

    .line 373
    invoke-static {v5, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    if-le v6, v9, :cond_4

    const/16 v5, 0x80

    goto :goto_5

    :cond_4
    if-ge v6, v5, :cond_5

    const/16 v5, 0x400

    goto :goto_5

    .line 378
    :cond_5
    invoke-static {v8, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v5

    const/16 v6, 0x800

    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v5

    .line 382
    :goto_5
    invoke-static {v5, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v5

    .line 385
    iget-object v6, p1, Lio/github/jaredmdobson/concentus/SilkVADState;->inv_NL:[I

    iget-object v9, p1, Lio/github/jaredmdobson/concentus/SilkVADState;->inv_NL:[I

    aget v9, v9, v1

    iget-object v10, p1, Lio/github/jaredmdobson/concentus/SilkVADState;->inv_NL:[I

    aget v10, v10, v1

    sub-int/2addr v8, v10

    invoke-static {v9, v8, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    aput v5, v6, v1

    .line 386
    iget-object v5, p1, Lio/github/jaredmdobson/concentus/SilkVADState;->inv_NL:[I

    aget v5, v5, v1

    if-ltz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 389
    iget-object v5, p1, Lio/github/jaredmdobson/concentus/SilkVADState;->inv_NL:[I

    aget v5, v5, v1

    invoke-static {v7, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v5

    if-ltz v5, :cond_7

    const/4 v6, 0x1

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    .line 390
    :goto_7
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const v6, 0xffffff

    .line 393
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v5

    .line 396
    iget-object v6, p1, Lio/github/jaredmdobson/concentus/SilkVADState;->NL:[I

    aput v5, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 400
    :cond_8
    iget p0, p1, Lio/github/jaredmdobson/concentus/SilkVADState;->counter:I

    add-int/2addr p0, v4

    iput p0, p1, Lio/github/jaredmdobson/concentus/SilkVADState;->counter:I

    return-void
.end method

.method static silk_VAD_GetSA_Q8(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;[SI)I
    .locals 33

    move-object/from16 v0, p0

    const/4 v1, 0x4

    .line 95
    new-array v2, v1, [I

    .line 96
    new-array v3, v1, [I

    .line 98
    new-array v4, v1, [I

    .line 100
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sVAD:Lio/github/jaredmdobson/concentus/SilkVADState;

    const/4 v6, 0x1

    .line 103
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v7, 0x140

    .line 104
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    const/4 v9, 0x0

    if-lt v7, v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 105
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    const/16 v8, 0x200

    if-gt v7, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 106
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    const/4 v10, 0x3

    invoke-static {v8, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v8

    const/16 v11, 0x8

    mul-int/lit8 v8, v8, 0x8

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 115
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    invoke-static {v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v18

    .line 116
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v25

    .line 117
    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    invoke-static {v7, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v7

    .line 128
    aput v9, v4, v9

    add-int v12, v7, v25

    .line 129
    aput v12, v4, v6

    add-int/2addr v12, v7

    .line 130
    aput v12, v4, v8

    add-int v12, v12, v25

    .line 131
    aput v12, v4, v10

    add-int v12, v12, v18

    .line 132
    new-array v12, v12, [S

    .line 135
    iget-object v13, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->AnaState:[I

    aget v31, v4, v10

    iget v14, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    move-object/from16 v30, v12

    move-object/from16 v26, p1

    move/from16 v27, p2

    move-object/from16 v29, v12

    move-object/from16 v28, v13

    move/from16 v32, v14

    invoke-static/range {v26 .. v32}, Lio/github/jaredmdobson/concentus/Filters;->silk_ana_filt_bank_1([SI[I[S[SII)V

    .line 139
    iget-object v14, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->AnaState1:[I

    aget v17, v4, v8

    const/4 v13, 0x0

    move-object/from16 v15, v29

    move-object/from16 v16, v29

    invoke-static/range {v12 .. v18}, Lio/github/jaredmdobson/concentus/Filters;->silk_ana_filt_bank_1([SI[I[S[SII)V

    .line 143
    iget-object v12, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->AnaState2:[I

    aget v24, v4, v6

    const/16 v20, 0x0

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    move-object/from16 v21, v12

    move-object/from16 v19, v29

    invoke-static/range {v19 .. v25}, Lio/github/jaredmdobson/concentus/Filters;->silk_ana_filt_bank_1([SI[I[S[SII)V

    sub-int/2addr v7, v6

    .line 153
    aget-short v12, v29, v7

    invoke-static {v12, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v12

    int-to-short v12, v12

    aput-short v12, v29, v7

    :goto_3
    if-lez v7, :cond_3

    add-int/lit8 v13, v7, -0x1

    .line 157
    aget-short v14, v29, v13

    invoke-static {v14, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v14

    int-to-short v14, v14

    aput-short v14, v29, v13

    .line 158
    aget-short v13, v29, v7

    sub-int/2addr v13, v14

    int-to-short v13, v13

    aput-short v13, v29, v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 161
    :cond_3
    aget-short v7, v29, v9

    iget-short v13, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->HPstate:S

    sub-int/2addr v7, v13

    int-to-short v7, v7

    aput-short v7, v29, v9

    .line 162
    iput-short v12, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->HPstate:S

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_4
    if-ge v7, v1, :cond_8

    .line 173
    iget v13, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    rsub-int/lit8 v14, v7, 0x4

    invoke-static {v14, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v14

    invoke-static {v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v13

    .line 176
    invoke-static {v13, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v13

    .line 181
    iget-object v14, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->XnrgSubfr:[I

    aget v14, v14, v7

    aput v14, v2, v7

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_5
    if-ge v14, v1, :cond_7

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_6
    if-ge v8, v13, :cond_5

    .line 188
    aget v17, v4, v7

    add-int v17, v17, v8

    add-int v17, v17, v15

    const/16 v18, 0x0

    aget-short v9, v29, v17

    invoke-static {v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    .line 190
    invoke-static {v12, v9, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v12

    if-ltz v12, :cond_4

    const/4 v9, 0x1

    goto :goto_7

    :cond_4
    const/4 v9, 0x0

    .line 192
    :goto_7
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    goto :goto_6

    :cond_5
    const/16 v18, 0x0

    if-ge v14, v10, :cond_6

    .line 197
    aget v8, v2, v7

    invoke-static {v8, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_POS_SAT32(II)I

    move-result v8

    aput v8, v2, v7

    goto :goto_8

    .line 200
    :cond_6
    aget v8, v2, v7

    invoke-static {v12, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    invoke-static {v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_POS_SAT32(II)I

    move-result v8

    aput v8, v2, v7

    :goto_8
    add-int/2addr v15, v13

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    goto :goto_5

    :cond_7
    const/16 v18, 0x0

    .line 206
    iget-object v8, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->XnrgSubfr:[I

    aput v12, v8, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    goto :goto_4

    :cond_8
    const/16 v18, 0x0

    .line 216
    invoke-static {v2, v5}, Lio/github/jaredmdobson/concentus/VoiceActivityDetection;->silk_VAD_GetNoiseLevels([ILio/github/jaredmdobson/concentus/SilkVADState;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_9
    if-ge v4, v1, :cond_c

    .line 228
    aget v9, v2, v4

    iget-object v12, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->NL:[I

    aget v12, v12, v4

    sub-int/2addr v9, v12

    if-lez v9, :cond_b

    .line 231
    aget v12, v2, v4

    const/high16 v13, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr v13, v12

    if-nez v13, :cond_9

    .line 232
    invoke-static {v12, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v12

    iget-object v13, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->NL:[I

    aget v13, v13, v4

    add-int/2addr v13, v6

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v12

    aput v12, v3, v4

    goto :goto_a

    .line 234
    :cond_9
    iget-object v13, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->NL:[I

    aget v13, v13, v4

    invoke-static {v13, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v13

    add-int/2addr v13, v6

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v12

    aput v12, v3, v4

    .line 238
    :goto_a
    aget v12, v3, v4

    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v12

    add-int/lit16 v12, v12, -0x400

    .line 241
    invoke-static {v7, v12, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v7

    const/high16 v13, 0x100000

    if-ge v9, v13, :cond_a

    .line 247
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v9

    const/4 v13, 0x6

    invoke-static {v9, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    invoke-static {v9, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v12

    .line 249
    :cond_a
    sget-object v9, Lio/github/jaredmdobson/concentus/VoiceActivityDetection;->tiltWeights:[I

    aget v9, v9, v4

    invoke-static {v8, v9, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    goto :goto_b

    :cond_b
    const/16 v9, 0x100

    .line 251
    aput v9, v3, v4

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 256
    :cond_c
    invoke-static {v7, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v4

    .line 260
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    const v7, 0xafc8

    .line 270
    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x80

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Sigmoid;->silk_sigm_Q15(I)I

    move-result v4

    .line 279
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Sigmoid;->silk_sigm_Q15(I)I

    move-result v7

    add-int/lit16 v7, v7, -0x4000

    invoke-static {v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    iput v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->input_tilt_Q15:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_c
    if-ge v7, v1, :cond_d

    add-int/lit8 v9, v7, 0x1

    .line 291
    aget v11, v2, v7

    iget-object v12, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->NL:[I

    aget v7, v12, v7

    sub-int/2addr v11, v7

    invoke-static {v11, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v7

    mul-int v7, v7, v9

    add-int/2addr v8, v7

    move v7, v9

    goto :goto_c

    :cond_d
    if-gtz v8, :cond_e

    .line 296
    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    goto :goto_e

    :cond_e
    const v2, 0x8000

    if-ge v8, v2, :cond_10

    .line 298
    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int/lit8 v7, v7, 0xa

    if-ne v6, v7, :cond_f

    const/16 v6, 0x10

    .line 299
    invoke-static {v8, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v6

    goto :goto_d

    :cond_f
    const/16 v6, 0xf

    .line 301
    invoke-static {v8, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v6

    .line 305
    :goto_d
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v6

    add-int/2addr v6, v2

    .line 306
    invoke-static {v6, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    :cond_10
    :goto_e
    const/4 v2, 0x7

    .line 310
    invoke-static {v4, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v2

    const/16 v6, 0xff

    invoke-static {v2, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v2

    iput v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    const/16 v2, 0x1000

    .line 320
    invoke-static {v4, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    .line 322
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int/lit8 v6, v6, 0xa

    if-ne v4, v6, :cond_11

    shr-int/lit8 v2, v2, 0x1

    :cond_11
    const/4 v4, 0x0

    :goto_f
    if-ge v4, v1, :cond_12

    .line 328
    iget-object v6, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->NrgRatioSmth_Q8:[I

    iget-object v7, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->NrgRatioSmth_Q8:[I

    aget v7, v7, v4

    aget v8, v3, v4

    iget-object v9, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->NrgRatioSmth_Q8:[I

    aget v9, v9, v4

    sub-int/2addr v8, v9

    invoke-static {v7, v8, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    aput v7, v6, v4

    .line 331
    iget-object v6, v5, Lio/github/jaredmdobson/concentus/SilkVADState;->NrgRatioSmth_Q8:[I

    aget v6, v6, v4

    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v6

    add-int/lit16 v6, v6, -0x400

    mul-int/lit8 v6, v6, 0x3

    .line 333
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->input_quality_bands_Q15:[I

    add-int/lit16 v6, v6, -0x800

    invoke-static {v6, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Sigmoid;->silk_sigm_Q15(I)I

    move-result v6

    aput v6, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_12
    return v18
.end method

.method static silk_VAD_Init(Lio/github/jaredmdobson/concentus/SilkVADState;)I
    .locals 6

    .line 53
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/SilkVADState;->Reset()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 58
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->NoiseLevelBias:[I

    add-int/lit8 v3, v1, 0x1

    int-to-short v4, v3

    const/16 v5, 0x32

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_32(II)I

    move-result v4

    aput v4, v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 63
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->NL:[I

    iget-object v4, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->NoiseLevelBias:[I

    aget v4, v4, v1

    const/16 v5, 0x64

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v4

    aput v4, v3, v1

    .line 64
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->inv_NL:[I

    iget-object v4, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->NL:[I

    aget v4, v4, v1

    const v5, 0x7fffffff

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0xf

    .line 67
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->counter:I

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 71
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/SilkVADState;->NrgRatioSmth_Q8:[I

    const/16 v4, 0x6400

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return v0
.end method
