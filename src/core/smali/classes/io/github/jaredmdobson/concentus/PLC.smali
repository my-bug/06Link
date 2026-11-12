.class Lio/github/jaredmdobson/concentus/PLC;
.super Ljava/lang/Object;
.source "PLC.java"


# static fields
.field private static final HARM_ATT_Q15:[S

.field private static final NB_ATT:I = 0x2

.field private static final PLC_RAND_ATTENUATE_UV_Q15:[S

.field private static final PLC_RAND_ATTENUATE_V_Q15:[S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 40
    new-array v1, v0, [S

    fill-array-data v1, :array_0

    sput-object v1, Lio/github/jaredmdobson/concentus/PLC;->HARM_ATT_Q15:[S

    .line 42
    new-array v1, v0, [S

    fill-array-data v1, :array_1

    sput-object v1, Lio/github/jaredmdobson/concentus/PLC;->PLC_RAND_ATTENUATE_V_Q15:[S

    .line 44
    new-array v0, v0, [S

    fill-array-data v0, :array_2

    sput-object v0, Lio/github/jaredmdobson/concentus/PLC;->PLC_RAND_ATTENUATE_UV_Q15:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x7eb8s
        0x799as
    .end array-data

    :array_1
    .array-data 2
        0x799as
        0x6666s
    .end array-data

    :array_2
    .array-data 2
        0x7eb8s
        0x7333s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_PLC(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/SilkDecoderControl;[SII)V
    .locals 2

    .line 66
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    iget v1, v1, Lio/github/jaredmdobson/concentus/PLCStruct;->fs_kHz:I

    if-eq v0, v1, :cond_0

    .line 67
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/PLC;->silk_PLC_Reset(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;)V

    .line 68
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    iput v1, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->fs_kHz:I

    :cond_0
    if-eqz p4, :cond_1

    .line 79
    invoke-static {p0, p1, p2, p3}, Lio/github/jaredmdobson/concentus/PLC;->silk_PLC_conceal(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/SilkDecoderControl;[SI)V

    .line 81
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lossCnt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lossCnt:I

    return-void

    .line 90
    :cond_1
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/PLC;->silk_PLC_update(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/SilkDecoderControl;)V

    return-void
.end method

.method static silk_PLC_Reset(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    iput v1, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->pitchL_Q8:I

    .line 52
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    iget-object v0, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->prevGain_Q16:[I

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    aput v2, v0, v1

    .line 53
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    iget-object v0, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->prevGain_Q16:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 54
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    const/16 v1, 0x14

    iput v1, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->subfr_length:I

    .line 55
    iget-object p0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    const/4 v0, 0x2

    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->nb_subfr:I

    return-void
.end method

.method static silk_PLC_conceal(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/SilkDecoderControl;[SI)V
    .locals 28

    move-object/from16 v0, p0

    .line 218
    new-instance v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v9, 0x0

    invoke-direct {v1, v9}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 219
    new-instance v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v3, v9}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 220
    new-instance v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v2, v9}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 221
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v4, v9}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 228
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    new-array v10, v5, [S

    .line 229
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v5, v6

    new-array v11, v5, [I

    .line 230
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    .line 233
    iget-object v5, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->prevGain_Q16:[I

    aget v5, v5, v9

    const/4 v13, 0x6

    invoke-static {v5, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    .line 234
    iget-object v6, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->prevGain_Q16:[I

    const/4 v14, 0x1

    aget v6, v6, v14

    invoke-static {v6, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    filled-new-array {v5, v6}, [I

    move-result-object v6

    .line 236
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->first_frame_after_reset:I

    const/16 v15, 0x10

    if-eqz v5, :cond_0

    .line 237
    iget-object v5, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    invoke-static {v5, v9, v15}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 240
    :cond_0
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->exc_Q14:[I

    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    invoke-static/range {v1 .. v8}, Lio/github/jaredmdobson/concentus/PLC;->silk_PLC_energy(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[I[III)V

    .line 242
    iget v1, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v4, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    iget v3, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v2, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 244
    iget v1, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->nb_subfr:I

    sub-int/2addr v1, v14

    iget v2, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->subfr_length:I

    mul-int v1, v1, v2

    add-int/lit8 v1, v1, -0x80

    invoke-static {v9, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v1

    goto :goto_0

    .line 247
    :cond_1
    iget v1, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->nb_subfr:I

    iget v2, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->subfr_length:I

    mul-int v1, v1, v2

    add-int/lit8 v1, v1, -0x80

    invoke-static {v9, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v1

    .line 251
    :goto_0
    iget-object v2, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->LTPCoef_Q14:[S

    .line 252
    iget-short v3, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->randScale_Q14:S

    .line 255
    sget-object v4, Lio/github/jaredmdobson/concentus/PLC;->HARM_ATT_Q15:[S

    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lossCnt:I

    invoke-static {v14, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v5

    aget-short v4, v4, v5

    .line 256
    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevSignalType:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    .line 257
    sget-object v5, Lio/github/jaredmdobson/concentus/PLC;->PLC_RAND_ATTENUATE_V_Q15:[S

    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lossCnt:I

    invoke-static {v14, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v8

    aget-short v5, v5, v8

    goto :goto_1

    .line 259
    :cond_2
    sget-object v5, Lio/github/jaredmdobson/concentus/PLC;->PLC_RAND_ATTENUATE_UV_Q15:[S

    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lossCnt:I

    invoke-static {v14, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v8

    aget-short v5, v5, v8

    .line 263
    :goto_1
    iget-object v8, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    iget v13, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    const v14, 0xfd71

    invoke-static {v8, v13, v14}, Lio/github/jaredmdobson/concentus/BWExpander;->silk_bwexpander([SII)V

    .line 266
    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lossCnt:I

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/16 v18, 0x0

    const/16 v9, 0x8

    if-nez v8, :cond_5

    .line 270
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevSignalType:I

    const/16 v8, 0xe

    const/16 v19, 0x4000

    if-ne v3, v7, :cond_4

    const/4 v3, 0x0

    const/16 v15, 0x4000

    :goto_2
    if-ge v3, v13, :cond_3

    .line 272
    aget-short v19, v2, v3

    sub-int v15, v15, v19

    int-to-short v15, v15

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/16 v3, 0xccd

    .line 274
    invoke-static {v3, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_16(SS)S

    move-result v3

    .line 276
    iget-short v15, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLTP_scale_Q14:S

    invoke-static {v3, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v3

    invoke-static {v3, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    int-to-short v3, v3

    goto :goto_3

    .line 281
    :cond_4
    iget-object v3, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    iget v15, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    invoke-static {v3, v15}, Lio/github/jaredmdobson/concentus/LPCInversePredGain;->silk_LPC_inverse_pred_gain([SI)I

    move-result v3

    const/high16 v15, 0x40000000    # 2.0f

    .line 283
    invoke-static {v15, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v13

    invoke-static {v13, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_32(II)I

    move-result v3

    .line 284
    invoke-static {v15, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v13

    invoke-static {v13, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_32(II)I

    move-result v3

    .line 285
    invoke-static {v3, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    .line 287
    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    invoke-static {v3, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    const/16 v3, 0x4000

    .line 291
    :cond_5
    :goto_3
    iget v8, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->rand_seed:I

    .line 292
    iget v13, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->pitchL_Q8:I

    invoke-static {v13, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v19

    .line 293
    iget v13, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    .line 296
    iget v15, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    sub-int v15, v15, v19

    iget v14, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    sub-int/2addr v15, v14

    sub-int/2addr v15, v7

    if-lez v15, :cond_6

    const/4 v14, 0x1

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    .line 297
    :goto_4
    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 298
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->outBuf:[S

    move-object/from16 v23, v14

    iget-object v14, v12, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    iget v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    sub-int/2addr v9, v15

    const/16 v25, 0x2

    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    move-object/from16 v26, v11

    move v11, v15

    const/4 v15, 0x0

    move/from16 v27, v13

    move v13, v11

    move/from16 v21, v1

    move/from16 v17, v7

    move/from16 v16, v9

    move-object v7, v12

    move-object/from16 v12, v23

    move-object/from16 v9, v26

    const/4 v1, 0x5

    const/16 v20, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x6

    invoke-static/range {v10 .. v17}, Lio/github/jaredmdobson/concentus/Filters;->silk_LPC_analysis_filter([SI[SI[SIII)V

    .line 300
    iget-object v12, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->prevGain_Q16:[I

    aget v12, v12, v20

    const/16 v13, 0x2e

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v12

    const v13, 0x3fffffff    # 1.9999999f

    .line 301
    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v12

    .line 302
    iget v13, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    add-int v15, v11, v13

    :goto_5
    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    if-ge v15, v11, :cond_7

    .line 303
    aget-short v11, v10, v15

    invoke-static {v12, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v11

    aput v11, v9, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_7
    move/from16 v13, v27

    const/4 v10, 0x0

    .line 313
    :goto_6
    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    if-ge v10, v11, :cond_a

    sub-int v11, v13, v19

    add-int/lit8 v11, v11, 0x2

    const/4 v14, 0x0

    .line 316
    :goto_7
    iget v15, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    if-ge v14, v15, :cond_8

    .line 320
    aget v15, v9, v11

    const/16 v16, 0x4

    aget-short v12, v2, v18

    const/4 v1, 0x2

    invoke-static {v1, v15, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v15, v11, -0x1

    .line 321
    aget v15, v9, v15

    const/16 v25, 0x2

    aget-short v1, v2, v20

    invoke-static {v12, v15, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v12, v11, -0x2

    .line 322
    aget v12, v9, v12

    aget-short v15, v2, v25

    invoke-static {v1, v12, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v12, v11, -0x3

    .line 323
    aget v12, v9, v12

    aget-short v15, v2, v22

    invoke-static {v1, v12, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v12, v11, -0x4

    .line 324
    aget v12, v9, v12

    aget-short v15, v2, v16

    invoke-static {v1, v12, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v11, v11, 0x1

    .line 328
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RAND(I)I

    move-result v8

    const/16 v12, 0x19

    .line 329
    invoke-static {v8, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v12

    and-int/lit8 v12, v12, 0x7f

    .line 330
    iget-object v15, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->exc_Q14:[I

    add-int v12, v21, v12

    aget v12, v15, v12

    invoke-static {v1, v12, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    const/4 v12, 0x2

    invoke-static {v1, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v1

    aput v1, v9, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x5

    const/16 v25, 0x2

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_8
    const/16 v11, 0xf

    const/4 v12, 0x5

    if-ge v1, v12, :cond_9

    .line 336
    aget-short v12, v2, v1

    invoke-static {v4, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v12

    invoke-static {v12, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v11

    int-to-short v11, v11

    aput-short v11, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 339
    :cond_9
    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v1

    invoke-static {v1, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    int-to-short v3, v1

    .line 342
    iget v1, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->pitchL_Q8:I

    iget v11, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->pitchL_Q8:I

    const/16 v12, 0x28f

    invoke-static {v1, v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    iput v1, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->pitchL_Q8:I

    .line 343
    iget v1, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->pitchL_Q8:I

    const/16 v11, 0x12

    iget v12, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v11

    const/16 v12, 0x8

    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v11

    invoke-static {v1, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_32(II)I

    move-result v1

    iput v1, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->pitchL_Q8:I

    .line 344
    iget v1, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->pitchL_Q8:I

    invoke-static {v1, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v19

    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x5

    const/16 v25, 0x2

    goto/16 :goto_6

    :cond_a
    const/16 v16, 0x4

    .line 354
    iget v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    add-int/lit8 v2, v1, -0x10

    .line 357
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sLPC_Q14_buf:[I

    const/16 v5, 0x10

    const/4 v10, 0x0

    invoke-static {v4, v10, v9, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    const/16 v10, 0xa

    if-lt v4, v10, :cond_b

    const/4 v14, 0x1

    goto :goto_9

    :cond_b
    const/4 v14, 0x0

    :goto_9
    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v4, 0x0

    .line 361
    :goto_a
    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    if-ge v4, v11, :cond_d

    add-int v11, v1, v4

    .line 365
    iget v12, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v12

    add-int/lit8 v14, v11, -0x1

    .line 366
    aget v14, v9, v14

    iget-object v15, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    const/16 v18, 0x0

    aget-short v15, v15, v18

    invoke-static {v12, v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v14, v11, -0x2

    .line 367
    aget v14, v9, v14

    iget-object v15, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    aget-short v15, v15, v13

    invoke-static {v12, v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v13, v11, -0x3

    .line 368
    aget v13, v9, v13

    iget-object v14, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    const/16 v25, 0x2

    aget-short v14, v14, v25

    invoke-static {v12, v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v13, v11, -0x4

    .line 369
    aget v13, v9, v13

    iget-object v14, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    aget-short v14, v14, v22

    invoke-static {v12, v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v13, v11, -0x5

    .line 370
    aget v13, v9, v13

    iget-object v14, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    aget-short v14, v14, v16

    invoke-static {v12, v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v13, v11, -0x6

    .line 371
    aget v13, v9, v13

    iget-object v14, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    const/16 v17, 0x5

    aget-short v14, v14, v17

    invoke-static {v12, v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v13, v11, -0x7

    .line 372
    aget v13, v9, v13

    iget-object v14, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    aget-short v14, v14, v23

    invoke-static {v12, v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v13, v11, -0x8

    .line 373
    aget v13, v9, v13

    iget-object v14, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    const/4 v15, 0x7

    aget-short v14, v14, v15

    invoke-static {v12, v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v13, v11, -0x9

    .line 374
    aget v13, v9, v13

    iget-object v14, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    const/16 v24, 0x8

    aget-short v14, v14, v24

    invoke-static {v12, v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v13, v11, -0xa

    .line 375
    aget v13, v9, v13

    iget-object v14, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    const/16 v15, 0x9

    aget-short v14, v14, v15

    invoke-static {v12, v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    const/16 v13, 0xa

    .line 376
    :goto_b
    iget v14, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    if-ge v13, v14, :cond_c

    sub-int v14, v11, v13

    const/16 v20, 0x1

    add-int/lit8 v14, v14, -0x1

    .line 377
    aget v14, v9, v14

    iget-object v15, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    aget-short v15, v15, v13

    invoke-static {v12, v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 381
    :cond_c
    aget v13, v9, v11

    const/4 v14, 0x4

    invoke-static {v13, v12, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v12

    aput v12, v9, v11

    add-int v11, p3, v4

    const/16 v20, 0x1

    .line 384
    aget v13, v6, v20

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v12

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v12

    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v12

    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v12

    int-to-short v12, v12

    aput-short v12, p2, v11

    add-int/lit8 v4, v4, 0x1

    const/16 v16, 0x4

    goto/16 :goto_a

    .line 388
    :cond_d
    iget v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v2, v1

    iget-object v0, v0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sLPC_Q14_buf:[I

    const/4 v10, 0x0

    invoke-static {v9, v2, v0, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    iput v8, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->rand_seed:I

    .line 398
    iput-short v3, v7, Lio/github/jaredmdobson/concentus/PLCStruct;->randScale_Q14:S

    const/4 v9, 0x0

    const/4 v14, 0x4

    :goto_c
    if-ge v9, v14, :cond_e

    move-object/from16 v0, p1

    .line 400
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->pitchL:[I

    aput v19, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_e
    return-void
.end method

.method static silk_PLC_energy(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[I[III)V
    .locals 10

    move/from16 v0, p6

    mul-int/lit8 v1, v0, 0x2

    .line 192
    new-array v1, v1, [S

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_0

    add-int v7, v4, v6

    add-int v8, v3, p7

    sub-int/2addr v8, v5

    mul-int v8, v8, v0

    add-int/2addr v8, v6

    .line 198
    aget v8, p4, v8

    aget v9, p5, v3

    .line 199
    invoke-static {v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v8

    const/16 v9, 0x8

    .line 198
    invoke-static {v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v8

    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v8

    int-to-short v8, v8

    aput-short v8, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    :cond_1
    invoke-static {p0, p1, v1, v0}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SI)V

    .line 206
    invoke-static {p2, p3, v1, v0, v0}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SII)V

    return-void
.end method

.method static silk_PLC_glue_frames(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;[SII)V
    .locals 6

    .line 412
    new-instance v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 413
    new-instance v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v2, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 414
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    .line 416
    iget v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lossCnt:I

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 418
    new-instance p0, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {p0, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 419
    new-instance v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v0, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 420
    invoke-static {p0, v0, p1, p2, p3}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SII)V

    .line 421
    iget p0, p0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iput p0, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy:I

    .line 422
    iget p0, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iput p0, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy_shift:I

    .line 424
    iput v5, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->last_frame_lost:I

    return-void

    .line 426
    :cond_0
    iget-object p0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    iget p0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->last_frame_lost:I

    if-eqz p0, :cond_4

    .line 428
    invoke-static {v2, v0, p1, p2, p3}, Lio/github/jaredmdobson/concentus/SumSqrShift;->silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SII)V

    .line 431
    iget p0, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v4, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy_shift:I

    if-le p0, v4, :cond_1

    .line 432
    iget p0, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy:I

    iget v0, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v4, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy_shift:I

    sub-int/2addr v0, v4

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result p0

    iput p0, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy:I

    goto :goto_0

    .line 433
    :cond_1
    iget p0, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v4, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy_shift:I

    if-ge p0, v4, :cond_2

    .line 434
    iget p0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v4, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy_shift:I

    iget v0, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    sub-int/2addr v4, v0

    invoke-static {p0, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result p0

    iput p0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 438
    :cond_2
    :goto_0
    iget p0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v0, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy:I

    if-le p0, v0, :cond_4

    .line 442
    iget p0, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy:I

    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result p0

    sub-int/2addr p0, v5

    .line 444
    iget v0, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy:I

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    iput v0, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy:I

    .line 445
    iget v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    rsub-int/lit8 p0, p0, 0x18

    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_32(II)I

    move-result p0

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result p0

    iput p0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 447
    iget p0, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy:I

    iget v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result v0

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result p0

    .line 449
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result p0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p0

    const/high16 v0, 0x10000

    sub-int v2, v0, p0

    .line 450
    invoke-static {v2, p3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v2

    const/4 v4, 0x2

    .line 452
    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    move v4, p2

    :goto_1
    add-int v5, p2, p3

    if-ge v4, v5, :cond_4

    .line 455
    aget-short v5, p1, v4

    invoke-static {p0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, p1, v4

    add-int/2addr p0, v2

    if-le p0, v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 463
    :cond_4
    :goto_2
    iput v1, v3, Lio/github/jaredmdobson/concentus/PLCStruct;->last_frame_lost:I

    return-void
.end method

.method static silk_PLC_update(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/SilkDecoderControl;)V
    .locals 12

    .line 107
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    .line 110
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v1, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevSignalType:I

    .line 112
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v1, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v1, v6, :cond_5

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 114
    :goto_0
    iget v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    mul-int v8, v8, v1

    iget-object v9, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->pitchL:[I

    iget v10, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    sub-int/2addr v10, v4

    aget v9, v9, v10

    if-ge v8, v9, :cond_3

    .line 115
    iget v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    if-ne v1, v8, :cond_0

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v8, v3, :cond_1

    .line 120
    iget-object v10, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->LTPCoef_Q14:[S

    iget v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    sub-int/2addr v11, v4

    sub-int/2addr v11, v1

    mul-int/lit8 v11, v11, 0x5

    add-int/2addr v11, v8

    aget-short v10, v10, v11

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-le v9, v7, :cond_2

    .line 125
    iget-object v7, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->LTPCoef_Q14:[S

    iget v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v1

    invoke-static {v8, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v8

    iget-object v10, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->LTPCoef_Q14:[S

    invoke-static {v7, v8, v10, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget-object v7, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->pitchL:[I

    iget v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v1

    aget v7, v7, v8

    invoke-static {v7, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    iput v7, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->pitchL_Q8:I

    move v7, v9

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_3
    :goto_2
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->LTPCoef_Q14:[S

    invoke-static {v1, v5, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 132
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->LTPCoef_Q14:[S

    int-to-short v2, v7

    aput-short v2, v1, v6

    const/16 v1, 0x2ccd

    if-ge v7, v1, :cond_4

    const/16 v2, 0xa

    .line 139
    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    .line 140
    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result v7

    invoke-static {v1, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v1

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_6

    .line 142
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->LTPCoef_Q14:[S

    iget-object v9, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->LTPCoef_Q14:[S

    aget-short v9, v9, v7

    invoke-static {v9, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v9

    invoke-static {v9, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    const/16 v1, 0x3ccd

    if-le v7, v1, :cond_6

    const/16 v2, 0xe

    .line 148
    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    .line 149
    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result v7

    invoke-static {v1, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v1

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v3, :cond_6

    .line 151
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->LTPCoef_Q14:[S

    iget-object v9, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->LTPCoef_Q14:[S

    aget-short v9, v9, v7

    invoke-static {v9, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v9

    invoke-static {v9, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 155
    :cond_5
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    const/16 v7, 0x12

    invoke-static {v1, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v1

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    iput v1, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->pitchL_Q8:I

    .line 156
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->LTPCoef_Q14:[S

    invoke-static {v1, v5, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 160
    :cond_6
    iget-object v1, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->PredCoef_Q12:[[S

    aget-object v1, v1, v4

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    iget v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget v1, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->LTP_scale_Q14:I

    int-to-short v1, v1

    iput-short v1, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLTP_scale_Q14:S

    .line 164
    iget-object p1, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->Gains_Q16:[I

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    sub-int/2addr v1, v6

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->prevGain_Q16:[I

    invoke-static {p1, v1, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    iput p1, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->subfr_length:I

    .line 167
    iget p0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    iput p0, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->nb_subfr:I

    return-void
.end method
