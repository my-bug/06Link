.class Lio/github/jaredmdobson/concentus/Resampler;
.super Ljava/lang/Object;
.source "Resampler.java"


# static fields
.field private static final ORDER_FIR:I = 0x4

.field private static final USE_silk_resampler_copy:I = 0x0

.field private static final USE_silk_resampler_private_IIR_FIR:I = 0x2

.field private static final USE_silk_resampler_private_down_FIR:I = 0x3

.field private static final USE_silk_resampler_private_up2_HQ_wrapper:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static rateID(I)I
    .locals 4

    shr-int/lit8 v0, p0, 0xc

    const/16 v1, 0x3e80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v0, v1

    const/16 v1, 0x5dc0

    if-le p0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    shr-int p0, v0, v2

    sub-int/2addr p0, v3

    return p0
.end method

.method static silk_resampler(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)I
    .locals 11

    move v6, p4

    move/from16 v7, p5

    .line 196
    iget v3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    const/4 v4, 0x1

    const/4 v8, 0x0

    if-lt v7, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 198
    iget v3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->inputDelay:I

    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    if-gt v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 200
    iget v3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->inputDelay:I

    sub-int v9, v3, v5

    .line 202
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->delayBuf:[S

    .line 205
    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->inputDelay:I

    invoke-static {p3, p4, v3, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->resampler_function:I

    if-eq v5, v4, :cond_4

    const/4 v4, 0x2

    if-eq v5, v4, :cond_3

    const/4 v4, 0x3

    if-eq v5, v4, :cond_2

    .line 221
    iget v4, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v4, v6, v9

    .line 222
    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_out_kHz:I

    add-int v2, p2, v5

    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    sub-int v5, v7, v5

    invoke-static {p3, v4, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v3

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 217
    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_private_down_FIR(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)V

    move-object v10, v3

    .line 218
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_out_kHz:I

    add-int v2, p2, v1

    add-int v4, v6, v9

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    sub-int v5, v7, v1

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_private_down_FIR(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)V

    goto :goto_2

    :cond_3
    move-object v10, v3

    const/4 v4, 0x0

    .line 213
    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_private_IIR_FIR(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)V

    .line 214
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_out_kHz:I

    add-int v2, p2, v1

    add-int v4, v6, v9

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    sub-int v5, v7, v1

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_private_IIR_FIR(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)V

    goto :goto_2

    :cond_4
    move-object v10, v3

    .line 209
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sIIR:[I

    const/4 v4, 0x0

    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_private_up2_HQ([I[SI[SII)V

    .line 210
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sIIR:[I

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_out_kHz:I

    add-int v2, p2, v1

    add-int v4, v6, v9

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    sub-int v5, v7, v1

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_private_up2_HQ([I[SI[SII)V

    :goto_2
    add-int v0, v6, v7

    .line 227
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->inputDelay:I

    sub-int/2addr v0, v1

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->inputDelay:I

    invoke-static {p3, v0, v10, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    return v0
.end method

.method static silk_resampler_down2([I[S[SI)V
    .locals 8

    const/4 v0, 0x1

    .line 244
    invoke-static {p3, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result p3

    .line 247
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 248
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 253
    aget-short v4, p2, v3

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    .line 256
    aget v6, p0, v1

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v6

    const/16 v7, -0x647f

    .line 257
    invoke-static {v6, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 258
    aget v7, p0, v1

    invoke-static {v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    .line 259
    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v4

    aput v4, p0, v1

    add-int/2addr v3, v0

    .line 262
    aget-short v3, p2, v3

    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    .line 265
    aget v4, p0, v0

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v4

    const/16 v5, 0x2690

    .line 266
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    .line 267
    aget v5, p0, v0

    invoke-static {v7, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v5

    .line 268
    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v5

    .line 269
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    aput v3, p0, v0

    const/16 v3, 0xb

    .line 272
    invoke-static {v5, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static silk_resampler_down2_3([I[S[SI)V
    .locals 19

    move-object/from16 v0, p0

    const/16 v1, 0x1e4

    .line 289
    new-array v2, v1, [I

    const/4 v8, 0x0

    const/4 v9, 0x4

    .line 295
    invoke-static {v0, v8, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v10, p3

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v1, 0x1e0

    .line 299
    invoke-static {v10, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v7

    const/4 v3, 0x4

    .line 302
    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_2_3_COEFS_LQ:[S

    const/4 v1, 0x4

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_private_AR2([II[II[SI[SI)V

    move v1, v7

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    if-le v1, v4, :cond_0

    .line 310
    aget v6, v2, v3

    sget-object v12, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_2_3_COEFS_LQ:[S

    aget-short v12, v12, v4

    invoke-static {v6, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    add-int/lit8 v12, v3, 0x1

    .line 311
    aget v13, v2, v12

    sget-object v14, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_2_3_COEFS_LQ:[S

    const/4 v15, 0x3

    aget-short v14, v14, v15

    invoke-static {v6, v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    add-int/lit8 v13, v3, 0x2

    .line 312
    aget v14, v2, v13

    sget-object v16, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_2_3_COEFS_LQ:[S

    const/16 v17, 0x5

    const/16 p3, 0x2

    aget-short v4, v16, v17

    invoke-static {v6, v14, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    add-int/lit8 v6, v3, 0x3

    .line 313
    aget v14, v2, v6

    sget-object v16, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_2_3_COEFS_LQ:[S

    const/16 v18, 0x3

    aget-short v15, v16, v9

    invoke-static {v4, v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    add-int/lit8 v14, v11, 0x1

    const/4 v15, 0x6

    .line 316
    invoke-static {v4, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v4

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p1, v11

    .line 318
    aget v4, v2, v12

    sget-object v12, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_2_3_COEFS_LQ:[S

    aget-short v12, v12, v9

    invoke-static {v4, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    .line 319
    aget v12, v2, v13

    sget-object v13, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_2_3_COEFS_LQ:[S

    aget-short v13, v13, v17

    invoke-static {v4, v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    .line 320
    aget v12, v2, v6

    sget-object v13, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_2_3_COEFS_LQ:[S

    aget-short v13, v13, v18

    invoke-static {v4, v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    add-int/2addr v3, v9

    .line 321
    aget v3, v2, v3

    sget-object v12, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_2_3_COEFS_LQ:[S

    aget-short v12, v12, p3

    invoke-static {v4, v3, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v11, v11, 0x2

    .line 324
    invoke-static {v3, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, p1, v14

    add-int/lit8 v1, v1, -0x3

    move v3, v6

    goto :goto_1

    :cond_0
    add-int/2addr v5, v7

    sub-int/2addr v10, v7

    if-lez v10, :cond_1

    .line 335
    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 342
    :cond_1
    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static silk_resampler_init(Lio/github/jaredmdobson/concentus/SilkResamplerState;III)I
    .locals 8

    .line 85
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Reset()V

    const v0, 0xbb80

    const/16 v1, 0x5dc0

    const/4 v2, -0x1

    const/16 v3, 0x3e80

    const/16 v4, 0x2ee0

    const/16 v5, 0x1f40

    const/4 v6, 0x0

    if-eqz p3, :cond_3

    if-eq p1, v5, :cond_0

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    if-eq p2, v5, :cond_2

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_2

    .line 91
    :cond_1
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v2

    .line 94
    :cond_2
    sget-object p3, Lio/github/jaredmdobson/concentus/SilkTables;->delay_matrix_enc:[[B

    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Resampler;->rateID(I)I

    move-result v0

    aget-object p3, p3, v0

    invoke-static {p2}, Lio/github/jaredmdobson/concentus/Resampler;->rateID(I)I

    move-result v0

    aget-byte p3, p3, v0

    iput p3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->inputDelay:I

    goto :goto_0

    :cond_3
    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_4

    if-ne p1, v3, :cond_5

    :cond_4
    if-eq p2, v5, :cond_6

    if-eq p2, v4, :cond_6

    if-eq p2, v3, :cond_6

    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_6

    .line 98
    :cond_5
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v2

    .line 101
    :cond_6
    sget-object p3, Lio/github/jaredmdobson/concentus/SilkTables;->delay_matrix_dec:[[B

    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Resampler;->rateID(I)I

    move-result v0

    aget-object p3, p3, v0

    invoke-static {p2}, Lio/github/jaredmdobson/concentus/Resampler;->rateID(I)I

    move-result v0

    aget-byte p3, p3, v0

    iput p3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->inputDelay:I

    :goto_0
    const/16 p3, 0x3e8

    .line 104
    invoke-static {p1, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v0

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    .line 105
    invoke-static {p2, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result p3

    iput p3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_out_kHz:I

    .line 108
    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Fs_in_kHz:I

    mul-int/lit8 p3, p3, 0xa

    iput p3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->batchSize:I

    const/4 p3, 0x2

    const/4 v0, 0x1

    if-le p2, p1, :cond_8

    .line 114
    invoke-static {p1, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v1

    if-ne p2, v1, :cond_7

    .line 117
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->resampler_function:I

    goto/16 :goto_1

    .line 120
    :cond_7
    iput p3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->resampler_function:I

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_8
    if-ge p2, p1, :cond_f

    const/4 v1, 0x3

    .line 125
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->resampler_function:I

    const/4 v3, 0x4

    .line 126
    invoke-static {p2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v4

    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v5

    const/16 v7, 0x12

    if-ne v4, v5, :cond_9

    .line 128
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Fracs:I

    .line 129
    iput v7, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    .line 130
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_3_4_COEFS:[S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Coefs:[S

    goto :goto_1

    .line 131
    :cond_9
    invoke-static {p2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v4

    invoke-static {p1, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v5

    if-ne v4, v5, :cond_a

    .line 133
    iput p3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Fracs:I

    .line 134
    iput v7, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    .line 135
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_2_3_COEFS:[S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Coefs:[S

    goto :goto_1

    .line 136
    :cond_a
    invoke-static {p2, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v4

    if-ne v4, p1, :cond_b

    .line 138
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Fracs:I

    const/16 v1, 0x18

    .line 139
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    .line 140
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_1_2_COEFS:[S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Coefs:[S

    goto :goto_1

    .line 141
    :cond_b
    invoke-static {p2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v1

    const/16 v4, 0x24

    if-ne v1, p1, :cond_c

    .line 143
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Fracs:I

    .line 144
    iput v4, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    .line 145
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_1_3_COEFS:[S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Coefs:[S

    goto :goto_1

    .line 146
    :cond_c
    invoke-static {p2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v1

    if-ne v1, p1, :cond_d

    .line 148
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Fracs:I

    .line 149
    iput v4, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    .line 150
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_1_4_COEFS:[S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Coefs:[S

    goto :goto_1

    :cond_d
    const/4 v1, 0x6

    .line 151
    invoke-static {p2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v1

    if-ne v1, p1, :cond_e

    .line 153
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Fracs:I

    .line 154
    iput v4, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    .line 155
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Resampler_1_6_COEFS:[S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Coefs:[S

    goto :goto_1

    .line 158
    :cond_e
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v2

    .line 163
    :cond_f
    iput v6, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->resampler_function:I

    :goto_1
    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v2, v1, 0xe

    .line 167
    invoke-static {p1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v2

    invoke-static {v2, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v2

    invoke-static {v2, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result p3

    iput p3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->invRatio_Q16:I

    .line 170
    :goto_3
    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->invRatio_Q16:I

    invoke-static {p3, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result p3

    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v2

    if-ge p3, v2, :cond_10

    .line 171
    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->invRatio_Q16:I

    add-int/2addr p3, v0

    iput p3, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->invRatio_Q16:I

    goto :goto_3

    :cond_10
    return v6
.end method

.method static silk_resampler_private_AR2([II[II[SI[SI)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p7, :cond_0

    .line 365
    aget v2, p0, p1

    add-int v3, p5, v1

    aget-short v3, p4, v3

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v2

    add-int v3, p3, v1

    .line 366
    aput v2, p2, v3

    const/4 v3, 0x2

    .line 367
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    .line 368
    aget v4, p0, v3

    aget-short v5, p6, v0

    invoke-static {v4, v2, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    aput v4, p0, p1

    const/4 v4, 0x1

    .line 369
    aget-short v4, p6, v4

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    aput v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static silk_resampler_private_IIR_FIR(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)V
    .locals 9

    .line 578
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->batchSize:I

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    add-int/2addr v0, v1

    new-array v3, v0, [S

    .line 581
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sFIR_i16:[S

    const/4 v8, 0x0

    invoke-static {v0, v8, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->invRatio_Q16:I

    move v6, p4

    .line 586
    :goto_0
    iget p4, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->batchSize:I

    invoke-static {p5, p4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v7

    .line 589
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sIIR:[I

    const/16 v4, 0x8

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_private_up2_HQ([I[SI[SII)V

    const/16 p3, 0x11

    .line 591
    invoke-static {v7, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result p3

    .line 593
    invoke-static {p1, p2, v3, p3, v0}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_private_IIR_FIR_INTERPOL([SI[SII)I

    move-result p2

    add-int/2addr v6, v7

    sub-int/2addr p5, v7

    if-lez p5, :cond_0

    shl-int/lit8 p3, v7, 0x1

    .line 599
    invoke-static {v3, p3, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v5

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v7, 0x1

    .line 606
    iget-object p0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sFIR_i16:[S

    invoke-static {v3, p1, p0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static silk_resampler_private_IIR_FIR_INTERPOL([SI[SII)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    const v2, 0xffff

    and-int/2addr v2, v1

    const/16 v3, 0xc

    .line 545
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    shr-int/lit8 v3, v1, 0x10

    .line 548
    aget-short v4, p2, v3

    sget-object v5, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_frac_FIR_12:[[S

    aget-object v5, v5, v2

    aget-short v5, v5, v0

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    .line 549
    aget-short v5, p2, v5

    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_frac_FIR_12:[[S

    aget-object v6, v6, v2

    const/4 v7, 0x1

    aget-short v6, v6, v7

    invoke-static {v4, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v4

    add-int/lit8 v5, v3, 0x2

    .line 550
    aget-short v5, p2, v5

    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_frac_FIR_12:[[S

    aget-object v6, v6, v2

    const/4 v8, 0x2

    aget-short v6, v6, v8

    invoke-static {v4, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v4

    add-int/lit8 v5, v3, 0x3

    .line 551
    aget-short v5, p2, v5

    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_frac_FIR_12:[[S

    aget-object v6, v6, v2

    const/4 v9, 0x3

    aget-short v6, v6, v9

    invoke-static {v4, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v4

    add-int/lit8 v5, v3, 0x4

    .line 552
    aget-short v5, p2, v5

    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_frac_FIR_12:[[S

    rsub-int/lit8 v2, v2, 0xb

    aget-object v6, v6, v2

    aget-short v6, v6, v9

    invoke-static {v4, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v4

    add-int/lit8 v5, v3, 0x5

    .line 553
    aget-short v5, p2, v5

    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_frac_FIR_12:[[S

    aget-object v6, v6, v2

    aget-short v6, v6, v8

    invoke-static {v4, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v4

    add-int/lit8 v5, v3, 0x6

    .line 554
    aget-short v5, p2, v5

    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_frac_FIR_12:[[S

    aget-object v6, v6, v2

    aget-short v6, v6, v7

    invoke-static {v4, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v4

    add-int/lit8 v3, v3, 0x7

    .line 555
    aget-short v3, p2, v3

    sget-object v5, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_frac_FIR_12:[[S

    aget-object v2, v5, v2

    aget-short v2, v2, v0

    invoke-static {v4, v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    const/16 v4, 0xf

    .line 556
    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v2

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p0, p1

    add-int/2addr v1, p4

    move p1, v3

    goto/16 :goto_0

    :cond_0
    return p1
.end method

.method static silk_resampler_private_down_FIR(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)V
    .locals 14

    .line 499
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->batchSize:I

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    add-int/2addr v0, v1

    new-array v3, v0, [I

    .line 502
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sFIR_i32:[I

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    const/4 v10, 0x0

    invoke-static {v0, v10, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    iget v9, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->invRatio_Q16:I

    move/from16 v0, p2

    move/from16 v6, p4

    move/from16 v11, p5

    .line 507
    :goto_0
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->batchSize:I

    invoke-static {v11, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v8

    .line 510
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sIIR:[I

    iget v4, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    iget-object v7, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Coefs:[S

    const/4 v2, 0x0

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v8}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_private_AR2([II[II[SI[SI)V

    move v13, v6

    move v12, v8

    const/16 v1, 0x10

    .line 512
    invoke-static {v12, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v8

    .line 515
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Coefs:[S

    iget v6, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    iget v7, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Fracs:I

    const/4 v5, 0x2

    move-object v1, p1

    move v2, v0

    invoke-static/range {v1 .. v9}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_private_down_FIR_INTERPOL([SI[I[SIIIII)I

    move-result v0

    add-int v6, v13, v12

    sub-int/2addr v11, v12

    const/4 v1, 0x1

    if-le v11, v1, :cond_0

    .line 523
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    invoke-static {v3, v12, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 530
    :cond_0
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->sFIR_i32:[I

    iget p0, p0, Lio/github/jaredmdobson/concentus/SilkResamplerState;->FIR_Order:I

    invoke-static {v3, v12, v0, v10, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static silk_resampler_private_down_FIR_INTERPOL([SI[I[SIIIII)I
    .locals 11

    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x6

    const/16 v6, 0x12

    if-eq v0, v6, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    .line 476
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return p1

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    .line 449
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    .line 452
    aget v1, p2, v0

    add-int/lit8 v7, v0, 0x23

    aget v7, p2, v7

    invoke-static {v1, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v1

    aget-short v7, p3, p4

    invoke-static {v1, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v1

    add-int/lit8 v7, v0, 0x1

    .line 453
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x22

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0x1

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0x2

    .line 454
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x21

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0x2

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0x3

    .line 455
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x20

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0x3

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0x4

    .line 456
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x1f

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0x4

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0x5

    .line 457
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x1e

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0x5

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0x6

    .line 458
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x1d

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0x6

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0x7

    .line 459
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x1c

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0x7

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0x8

    .line 460
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x1b

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0x8

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0x9

    .line 461
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x1a

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0x9

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0xa

    .line 462
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x19

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0xa

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0xb

    .line 463
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x18

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0xb

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0xc

    .line 464
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x17

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0xc

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0xd

    .line 465
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x16

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0xd

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0xe

    .line 466
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x15

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0xe

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0xf

    .line 467
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x14

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0xf

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0x10

    .line 468
    aget v7, p2, v7

    add-int/lit8 v8, v0, 0x13

    aget v8, p2, v8

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v8, p4, 0x10

    aget-short v8, p3, v8

    invoke-static {v1, v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v7, v0, 0x11

    .line 469
    aget v7, p2, v7

    add-int/2addr v0, v6

    aget v0, p2, v0

    invoke-static {v7, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v0

    add-int/lit8 v7, p4, 0x11

    aget-short v7, p3, v7

    invoke-static {v1, v0, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 472
    invoke-static {v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p0, p1

    add-int v3, v3, p8

    move p1, v1

    goto/16 :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    .line 426
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    .line 429
    aget v1, p2, v0

    add-int/lit8 v6, v0, 0x17

    aget v6, p2, v6

    invoke-static {v1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v1

    aget-short v6, p3, p4

    invoke-static {v1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v1

    add-int/lit8 v6, v0, 0x1

    .line 430
    aget v6, p2, v6

    add-int/lit8 v7, v0, 0x16

    aget v7, p2, v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    add-int/lit8 v7, p4, 0x1

    aget-short v7, p3, v7

    invoke-static {v1, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v6, v0, 0x2

    .line 431
    aget v6, p2, v6

    add-int/lit8 v7, v0, 0x15

    aget v7, p2, v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    add-int/lit8 v7, p4, 0x2

    aget-short v7, p3, v7

    invoke-static {v1, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v6, v0, 0x3

    .line 432
    aget v6, p2, v6

    add-int/lit8 v7, v0, 0x14

    aget v7, p2, v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    add-int/lit8 v7, p4, 0x3

    aget-short v7, p3, v7

    invoke-static {v1, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v6, v0, 0x4

    .line 433
    aget v6, p2, v6

    add-int/lit8 v7, v0, 0x13

    aget v7, p2, v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    add-int/lit8 v7, p4, 0x4

    aget-short v7, p3, v7

    invoke-static {v1, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v6, v0, 0x5

    .line 434
    aget v6, p2, v6

    add-int/lit8 v7, v0, 0x12

    aget v7, p2, v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    add-int/lit8 v7, p4, 0x5

    aget-short v7, p3, v7

    invoke-static {v1, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v6, v0, 0x6

    .line 435
    aget v6, p2, v6

    add-int/lit8 v7, v0, 0x11

    aget v7, p2, v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    add-int/lit8 v7, p4, 0x6

    aget-short v7, p3, v7

    invoke-static {v1, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v6, v0, 0x7

    .line 436
    aget v6, p2, v6

    add-int/lit8 v7, v0, 0x10

    aget v7, p2, v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    add-int/lit8 v7, p4, 0x7

    aget-short v7, p3, v7

    invoke-static {v1, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v6, v0, 0x8

    .line 437
    aget v6, p2, v6

    add-int/lit8 v7, v0, 0xf

    aget v7, p2, v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    add-int/lit8 v7, p4, 0x8

    aget-short v7, p3, v7

    invoke-static {v1, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v6, v0, 0x9

    .line 438
    aget v6, p2, v6

    add-int/lit8 v7, v0, 0xe

    aget v7, p2, v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    add-int/lit8 v7, p4, 0x9

    aget-short v7, p3, v7

    invoke-static {v1, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v6, v0, 0xa

    .line 439
    aget v6, p2, v6

    add-int/lit8 v7, v0, 0xd

    aget v7, p2, v7

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    add-int/lit8 v7, p4, 0xa

    aget-short v7, p3, v7

    invoke-static {v1, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v6, v0, 0xb

    .line 440
    aget v6, p2, v6

    add-int/lit8 v0, v0, 0xc

    aget v0, p2, v0

    invoke-static {v6, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v0

    add-int/lit8 v6, p4, 0xb

    aget-short v6, p3, v6

    invoke-static {v1, v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 443
    invoke-static {v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p0, p1

    add-int v3, v3, p8

    move p1, v1

    goto/16 :goto_1

    :cond_3
    return p1

    :cond_4
    :goto_2
    if-ge v3, v2, :cond_5

    .line 392
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    const v6, 0xffff

    and-int/2addr v6, v3

    .line 395
    invoke-static {v6, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    mul-int/lit8 v7, v6, 0x9

    add-int/2addr v7, p4

    .line 399
    aget v8, p2, v0

    aget-short v9, p3, v7

    invoke-static {v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v8

    add-int/lit8 v9, v0, 0x1

    .line 400
    aget v9, p2, v9

    add-int/lit8 v10, v7, 0x1

    aget-short v10, p3, v10

    invoke-static {v8, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    add-int/lit8 v9, v0, 0x2

    .line 401
    aget v9, p2, v9

    add-int/lit8 v10, v7, 0x2

    aget-short v10, p3, v10

    invoke-static {v8, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    add-int/lit8 v9, v0, 0x3

    .line 402
    aget v9, p2, v9

    add-int/lit8 v10, v7, 0x3

    aget-short v10, p3, v10

    invoke-static {v8, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    add-int/lit8 v9, v0, 0x4

    .line 403
    aget v9, p2, v9

    add-int/lit8 v10, v7, 0x4

    aget-short v10, p3, v10

    invoke-static {v8, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    add-int/lit8 v9, v0, 0x5

    .line 404
    aget v9, p2, v9

    add-int/lit8 v10, v7, 0x5

    aget-short v10, p3, v10

    invoke-static {v8, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    add-int/lit8 v9, v0, 0x6

    .line 405
    aget v9, p2, v9

    add-int/lit8 v10, v7, 0x6

    aget-short v10, p3, v10

    invoke-static {v8, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    add-int/lit8 v9, v0, 0x7

    .line 406
    aget v9, p2, v9

    add-int/lit8 v10, v7, 0x7

    aget-short v10, p3, v10

    invoke-static {v8, v9, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    add-int/lit8 v9, v0, 0x8

    .line 407
    aget v9, p2, v9

    add-int/lit8 v7, v7, 0x8

    aget-short v7, p3, v7

    invoke-static {v8, v9, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    add-int/lit8 v8, v1, -0x1

    sub-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x9

    add-int/2addr v8, p4

    add-int/lit8 v6, v0, 0x11

    .line 409
    aget v6, p2, v6

    aget-short v9, p3, v8

    invoke-static {v7, v6, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    add-int/lit8 v7, v0, 0x10

    .line 410
    aget v7, p2, v7

    add-int/lit8 v9, v8, 0x1

    aget-short v9, p3, v9

    invoke-static {v6, v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    add-int/lit8 v7, v0, 0xf

    .line 411
    aget v7, p2, v7

    add-int/lit8 v9, v8, 0x2

    aget-short v9, p3, v9

    invoke-static {v6, v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    add-int/lit8 v7, v0, 0xe

    .line 412
    aget v7, p2, v7

    add-int/lit8 v9, v8, 0x3

    aget-short v9, p3, v9

    invoke-static {v6, v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    add-int/lit8 v7, v0, 0xd

    .line 413
    aget v7, p2, v7

    add-int/lit8 v9, v8, 0x4

    aget-short v9, p3, v9

    invoke-static {v6, v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    add-int/lit8 v7, v0, 0xc

    .line 414
    aget v7, p2, v7

    add-int/lit8 v9, v8, 0x5

    aget-short v9, p3, v9

    invoke-static {v6, v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    add-int/lit8 v7, v0, 0xb

    .line 415
    aget v7, p2, v7

    add-int/lit8 v9, v8, 0x6

    aget-short v9, p3, v9

    invoke-static {v6, v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    add-int/lit8 v7, v0, 0xa

    .line 416
    aget v7, p2, v7

    add-int/lit8 v9, v8, 0x7

    aget-short v9, p3, v9

    invoke-static {v6, v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    add-int/lit8 v0, v0, 0x9

    .line 417
    aget v0, p2, v0

    add-int/lit8 v8, v8, 0x8

    aget-short v7, p3, v8

    invoke-static {v6, v0, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    add-int/lit8 v6, p1, 0x1

    .line 420
    invoke-static {v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p0, p1

    add-int v3, v3, p8

    move p1, v6

    goto/16 :goto_2

    :cond_5
    return p1
.end method

.method static silk_resampler_private_up2_HQ([I[SI[SII)V
    .locals 10

    .line 628
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_up2_hq_0:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 629
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_up2_hq_0:[S

    aget-short v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 630
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_up2_hq_0:[S

    const/4 v3, 0x2

    aget-short v0, v0, v3

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 631
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_up2_hq_1:[S

    aget-short v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 632
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_up2_hq_1:[S

    aget-short v0, v0, v2

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 633
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_up2_hq_1:[S

    aget-short v0, v0, v3

    if-gez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p5, :cond_6

    add-int v4, p4, v0

    .line 638
    aget-short v4, p3, v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    .line 641
    aget v6, p0, v1

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v6

    .line 642
    sget-object v7, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_up2_hq_0:[S

    aget-short v7, v7, v1

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    .line 643
    aget v7, p0, v1

    invoke-static {v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    .line 644
    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    aput v6, p0, v1

    .line 647
    aget v6, p0, v2

    invoke-static {v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v6

    .line 648
    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_up2_hq_0:[S

    aget-short v8, v8, v2

    invoke-static {v6, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    .line 649
    aget v8, p0, v2

    invoke-static {v8, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v8

    .line 650
    invoke-static {v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    aput v6, p0, v2

    .line 653
    aget v6, p0, v3

    invoke-static {v8, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v6

    .line 654
    sget-object v7, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_up2_hq_0:[S

    aget-short v7, v7, v3

    invoke-static {v6, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 655
    aget v7, p0, v3

    invoke-static {v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    .line 656
    invoke-static {v8, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    aput v6, p0, v3

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, p2

    .line 659
    invoke-static {v7, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v7

    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, p1, v6

    const/4 v7, 0x3

    .line 662
    aget v8, p0, v7

    invoke-static {v4, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v8

    .line 663
    sget-object v9, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_up2_hq_1:[S

    aget-short v9, v9, v1

    invoke-static {v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v8

    .line 664
    aget v9, p0, v7

    invoke-static {v9, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v9

    .line 665
    invoke-static {v4, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v4

    aput v4, p0, v7

    const/4 v4, 0x4

    .line 668
    aget v7, p0, v4

    invoke-static {v9, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v7

    .line 669
    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_up2_hq_1:[S

    aget-short v8, v8, v2

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v7

    .line 670
    aget v8, p0, v4

    invoke-static {v8, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v8

    .line 671
    invoke-static {v9, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    aput v7, p0, v4

    const/4 v4, 0x5

    .line 674
    aget v7, p0, v4

    invoke-static {v8, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v7

    .line 675
    sget-object v9, Lio/github/jaredmdobson/concentus/SilkTables;->silk_resampler_up2_hq_1:[S

    aget-short v9, v9, v3

    invoke-static {v7, v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    .line 676
    aget v9, p0, v4

    invoke-static {v9, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v9

    .line 677
    invoke-static {v8, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    aput v7, p0, v4

    add-int/2addr v6, v2

    .line 680
    invoke-static {v9, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v4

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p1, v6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_6
    return-void
.end method
