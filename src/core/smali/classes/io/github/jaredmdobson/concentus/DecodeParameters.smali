.class Lio/github/jaredmdobson/concentus/DecodeParameters;
.super Ljava/lang/Object;
.source "DecodeParameters.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_decode_parameters(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/SilkDecoderControl;I)V
    .locals 9

    .line 43
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    new-array v0, v0, [S

    .line 44
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    new-array v1, v1, [S

    .line 48
    new-instance v2, Lio/github/jaredmdobson/concentus/BoxedValueByte;

    iget-byte v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LastGainIndex:B

    invoke-direct {v2, v3}, Lio/github/jaredmdobson/concentus/BoxedValueByte;-><init>(B)V

    .line 49
    iget-object v3, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->Gains_Q16:[I

    iget-object v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object v4, v4, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne p2, v7, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    invoke-static {v3, v4, v2, p2, v8}, Lio/github/jaredmdobson/concentus/GainQuantization;->silk_gains_dequant([I[BLio/github/jaredmdobson/concentus/BoxedValueByte;II)V

    .line 51
    iget-byte p2, v2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    iput-byte p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LastGainIndex:B

    .line 60
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object p2, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    invoke-static {v0, p2, v2}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_decode([S[BLio/github/jaredmdobson/concentus/NLSFCodebook;)V

    .line 63
    iget-object p2, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->PredCoef_Q12:[[S

    aget-object p2, p2, v5

    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    invoke-static {p2, v0, v2}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF2A([S[SI)V

    .line 67
    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->first_frame_after_reset:I

    const/4 v2, 0x4

    if-ne p2, v5, :cond_1

    .line 68
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-byte v2, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    .line 71
    :cond_1
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte p2, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    if-ge p2, v2, :cond_3

    const/4 p2, 0x0

    .line 74
    :goto_1
    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    if-ge p2, v2, :cond_2

    .line 75
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevNLSF_Q15:[S

    aget-short v2, v2, p2

    iget-object v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v3, v3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    aget-short v4, v0, p2

    iget-object v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevNLSF_Q15:[S

    aget-short v8, v8, p2

    sub-int/2addr v4, v8

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v3

    invoke-static {v3, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    add-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 80
    :cond_2
    iget-object p2, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->PredCoef_Q12:[[S

    aget-object p2, p2, v6

    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    invoke-static {p2, v1, v2}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF2A([S[SI)V

    goto :goto_2

    .line 83
    :cond_3
    iget-object p2, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->PredCoef_Q12:[[S

    aget-object p2, p2, v5

    iget-object v1, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->PredCoef_Q12:[[S

    aget-object v1, v1, v6

    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    invoke-static {p2, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    :goto_2
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevNLSF_Q15:[S

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    invoke-static {v0, v6, p2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lossCnt:I

    if-eqz p2, :cond_4

    .line 90
    iget-object p2, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->PredCoef_Q12:[[S

    aget-object p2, p2, v6

    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    const v1, 0xf852

    invoke-static {p2, v0, v1}, Lio/github/jaredmdobson/concentus/BWExpander;->silk_bwexpander([SII)V

    .line 91
    iget-object p2, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->PredCoef_Q12:[[S

    aget-object p2, p2, v5

    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    invoke-static {p2, v0, v1}, Lio/github/jaredmdobson/concentus/BWExpander;->silk_bwexpander([SII)V

    .line 94
    :cond_4
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte p2, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    const/4 v0, 0x5

    if-ne p2, v7, :cond_7

    .line 104
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-short p2, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v1, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    iget-object v2, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->pitchL:[I

    iget v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    iget v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    invoke-static {p2, v1, v2, v3, v4}, Lio/github/jaredmdobson/concentus/DecodePitch;->silk_decode_pitch(SB[III)V

    .line 107
    sget-object p2, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LTP_vq_ptrs_Q7:[[[B

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v1, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    aget-object p2, p2, v1

    const/4 v1, 0x0

    .line 110
    :goto_3
    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    if-ge v1, v2, :cond_6

    .line 111
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object v2, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTPIndex:[B

    aget-byte v2, v2, v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_5

    .line 113
    iget-object v4, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->LTPCoef_Q14:[S

    mul-int/lit8 v5, v1, 0x5

    add-int/2addr v5, v3

    aget-object v7, p2, v2

    aget-byte v7, v7, v3

    const/4 v8, 0x7

    invoke-static {v7, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 124
    :cond_6
    iget-object p0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte p0, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTP_scaleIndex:B

    .line 125
    sget-object p2, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LTPScales_table_Q14:[S

    aget-short p0, p2, p0

    iput p0, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->LTP_scale_Q14:I

    return-void

    .line 127
    :cond_7
    iget-object p2, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->pitchL:[I

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    invoke-static {p2, v6, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 128
    iget-object p2, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->LTPCoef_Q14:[S

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    mul-int/lit8 v1, v1, 0x5

    invoke-static {p2, v6, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 129
    iget-object p0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-byte v6, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    .line 130
    iput v6, p1, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->LTP_scale_Q14:I

    return-void
.end method
