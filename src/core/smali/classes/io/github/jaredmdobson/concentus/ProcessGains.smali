.class Lio/github/jaredmdobson/concentus/ProcessGains;
.super Ljava/lang/Object;
.source "ProcessGains.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_process_gains(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SilkEncoderControl;I)V
    .locals 12

    .line 42
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

    .line 47
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v1, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 49
    iget v1, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPredCodGain_Q7:I

    add-int/lit16 v1, v1, -0x600

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v1

    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Sigmoid;->silk_sigm_Q15(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    const/4 v4, 0x0

    .line 50
    :goto_0
    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v4, v5, :cond_0

    .line 51
    iget-object v5, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    iget-object v6, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v6, v6, v4

    iget-object v7, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v7, v7, v4

    invoke-static {v6, v7, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->SNR_dB_Q7:I

    rsub-int v1, v1, 0x22be

    const/16 v4, 0x547b

    .line 58
    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v1

    .line 57
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_log2lin(I)I

    move-result v1

    iget v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v1

    const/4 v4, 0x0

    .line 60
    :goto_1
    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ge v4, v5, :cond_5

    .line 62
    iget-object v5, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->ResNrg:[I

    aget v5, v5, v4

    .line 63
    invoke-static {v5, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v5

    .line 64
    iget-object v8, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->ResNrgQ:[I

    aget v8, v8, v4

    if-lez v8, :cond_1

    .line 65
    iget-object v8, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->ResNrgQ:[I

    aget v8, v8, v4

    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v5

    goto :goto_2

    .line 66
    :cond_1
    iget-object v8, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->ResNrgQ:[I

    aget v8, v8, v4

    neg-int v8, v8

    const v9, 0x7fffffff

    invoke-static {v9, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v8

    if-lt v5, v8, :cond_2

    const v5, 0x7fffffff

    goto :goto_2

    .line 69
    :cond_2
    iget-object v8, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->ResNrgQ:[I

    aget v8, v8, v4

    neg-int v8, v8

    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    .line 71
    :goto_2
    iget-object v8, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v8, v8, v4

    .line 72
    invoke-static {v8, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v9

    invoke-static {v5, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_SAT32(II)I

    move-result v9

    const/16 v10, 0x10

    const/16 v11, 0x7fff

    if-ge v9, v11, :cond_4

    .line 75
    invoke-static {v5, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    invoke-static {v5, v8, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 76
    :goto_3
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 77
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v5

    const v7, 0x7fffff

    .line 79
    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v5

    .line 80
    iget-object v7, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v5

    aput v5, v7, v4

    goto :goto_4

    .line 83
    :cond_4
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v5

    .line 85
    invoke-static {v5, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v5

    .line 86
    iget-object v6, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    invoke-static {v5, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v5

    aput v5, v6, v4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 93
    :cond_5
    iget-object v1, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    iget-object v4, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->GainsUnq_Q16:[I

    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    invoke-static {v1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iget-byte v1, v0, Lio/github/jaredmdobson/concentus/SilkShapeState;->LastGainIndex:B

    iput-byte v1, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->lastGainIndexPrev:B

    .line 97
    new-instance v1, Lio/github/jaredmdobson/concentus/BoxedValueByte;

    iget-byte v4, v0, Lio/github/jaredmdobson/concentus/SilkShapeState;->LastGainIndex:B

    invoke-direct {v1, v4}, Lio/github/jaredmdobson/concentus/BoxedValueByte;-><init>(B)V

    .line 98
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object v4, v4, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    iget-object v5, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    if-ne p2, v3, :cond_6

    const/4 p2, 0x1

    goto :goto_5

    :cond_6
    const/4 p2, 0x0

    :goto_5
    iget v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    invoke-static {v4, v5, v1, p2, v8}, Lio/github/jaredmdobson/concentus/GainQuantization;->silk_gains_quant([B[ILio/github/jaredmdobson/concentus/BoxedValueByte;II)V

    .line 100
    iget-byte p2, v1, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    iput-byte p2, v0, Lio/github/jaredmdobson/concentus/SilkShapeState;->LastGainIndex:B

    .line 103
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte p2, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    if-ne p2, v3, :cond_8

    .line 104
    iget p2, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPredCodGain_Q7:I

    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->input_tilt_Q15:I

    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    add-int/2addr p2, v0

    const/16 v0, 0x80

    if-le p2, v0, :cond_7

    .line 105
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-byte v2, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    goto :goto_6

    .line 107
    :cond_7
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-byte v7, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    .line 112
    :cond_8
    :goto_6
    sget-object p2, Lio/github/jaredmdobson/concentus/SilkTables;->silk_Quantization_Offsets_Q10:[[S

    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v0, v0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    shr-int/2addr v0, v7

    aget-object p2, p2, v0

    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v0, v0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    aget-short p2, p2, v0

    const/16 v0, -0x32

    .line 113
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    .line 114
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v0

    add-int/lit16 v0, v0, 0x4cd

    const v1, -0xcccc

    iget p0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    .line 115
    invoke-static {v1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result p0

    add-int/2addr v0, p0

    const/16 p0, -0x199

    iget v1, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->input_quality_Q14:I

    .line 116
    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result p0

    add-int/2addr v0, p0

    const/16 p0, -0x332

    iget v1, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->coding_quality_Q14:I

    .line 117
    invoke-static {p0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result p0

    add-int/2addr v0, p0

    const p0, 0xcccd

    .line 118
    invoke-static {p0, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result p0

    add-int/2addr v0, p0

    iput v0, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Lambda_Q10:I

    .line 120
    iget p0, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Lambda_Q10:I

    if-lez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_7

    :cond_9
    const/4 p0, 0x0

    :goto_7
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 121
    iget p0, p1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Lambda_Q10:I

    const/16 p1, 0x800

    if-ge p0, p1, :cond_a

    const/4 v2, 0x1

    :cond_a
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return-void
.end method
