.class Lio/github/jaredmdobson/concentus/SilkChannelDecoder;
.super Ljava/lang/Object;
.source "SilkChannelDecoder.java"


# instance fields
.field LBRR_flag:I

.field final LBRR_flags:[I

.field LPC_order:I

.field LastGainIndex:B

.field final VAD_flags:[I

.field ec_prevLagIndex:S

.field ec_prevSignalType:I

.field final exc_Q14:[I

.field first_frame_after_reset:I

.field frame_length:I

.field fs_API_hz:I

.field fs_kHz:I

.field final indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

.field lagPrev:I

.field lossCnt:I

.field ltp_mem_length:I

.field nFramesDecoded:I

.field nFramesPerPacket:I

.field nb_subfr:I

.field final outBuf:[S

.field pitch_contour_iCDF:[S

.field pitch_lag_low_bits_iCDF:[S

.field final prevNLSF_Q15:[S

.field prevSignalType:I

.field prev_gain_Q16:I

.field psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

.field final resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

.field final sCNG:Lio/github/jaredmdobson/concentus/CNGState;

.field final sLPC_Q14_buf:[I

.field final sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

.field subfr_length:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prev_gain_Q16:I

    const/16 v1, 0x140

    .line 40
    new-array v1, v1, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->exc_Q14:[I

    const/16 v1, 0x10

    .line 41
    new-array v2, v1, [I

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sLPC_Q14_buf:[I

    const/16 v2, 0x1e0

    .line 42
    new-array v2, v2, [S

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->outBuf:[S

    .line 44
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lagPrev:I

    .line 46
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LastGainIndex:B

    .line 48
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    .line 50
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_API_hz:I

    .line 52
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    .line 54
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    .line 56
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    .line 58
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    .line 60
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    .line 62
    new-array v1, v1, [S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevNLSF_Q15:[S

    .line 64
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->first_frame_after_reset:I

    .line 72
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesDecoded:I

    .line 73
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    .line 76
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ec_prevSignalType:I

    .line 77
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ec_prevLagIndex:S

    const/4 v1, 0x3

    .line 79
    new-array v2, v1, [I

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->VAD_flags:[I

    .line 80
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flag:I

    .line 81
    new-array v1, v1, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flags:[I

    .line 83
    new-instance v1, Lio/github/jaredmdobson/concentus/SilkResamplerState;

    invoke-direct {v1}, Lio/github/jaredmdobson/concentus/SilkResamplerState;-><init>()V

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    .line 89
    new-instance v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;

    invoke-direct {v1}, Lio/github/jaredmdobson/concentus/SideInfoIndices;-><init>()V

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    .line 92
    new-instance v1, Lio/github/jaredmdobson/concentus/CNGState;

    invoke-direct {v1}, Lio/github/jaredmdobson/concentus/CNGState;-><init>()V

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sCNG:Lio/github/jaredmdobson/concentus/CNGState;

    .line 95
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lossCnt:I

    .line 96
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevSignalType:I

    .line 98
    new-instance v0, Lio/github/jaredmdobson/concentus/PLCStruct;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/PLCStruct;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    return-void
.end method

.method private silk_CNG_Reset()V
    .locals 6

    .line 163
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x7fff

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 165
    :goto_0
    iget v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    if-ge v2, v4, :cond_0

    add-int/2addr v3, v0

    .line 167
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sCNG:Lio/github/jaredmdobson/concentus/CNGState;

    iget-object v4, v4, Lio/github/jaredmdobson/concentus/CNGState;->CNG_smth_NLSF_Q15:[S

    int-to-short v5, v3

    aput-short v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sCNG:Lio/github/jaredmdobson/concentus/CNGState;

    iput v1, v0, Lio/github/jaredmdobson/concentus/CNGState;->CNG_smth_Gain_Q16:I

    .line 170
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sCNG:Lio/github/jaredmdobson/concentus/CNGState;

    const v1, 0x307880

    iput v1, v0, Lio/github/jaredmdobson/concentus/CNGState;->rand_seed:I

    return-void
.end method

.method private silk_PLC_Reset()V
    .locals 3

    .line 178
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    iput v1, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->pitchL_Q8:I

    .line 179
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    iget-object v0, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->prevGain_Q16:[I

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    aput v2, v0, v1

    .line 180
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    iget-object v0, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->prevGain_Q16:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 181
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    const/16 v1, 0x14

    iput v1, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->subfr_length:I

    .line 182
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    const/4 v1, 0x2

    iput v1, v0, Lio/github/jaredmdobson/concentus/PLCStruct;->nb_subfr:I

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 4

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prev_gain_Q16:I

    .line 102
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->exc_Q14:[I

    const/16 v2, 0x140

    invoke-static {v1, v0, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 103
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sLPC_Q14_buf:[I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 104
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->outBuf:[S

    const/16 v3, 0x1e0

    invoke-static {v1, v0, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 105
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lagPrev:I

    .line 106
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LastGainIndex:B

    .line 107
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    .line 108
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_API_hz:I

    .line 109
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    .line 110
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    .line 111
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    .line 112
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    .line 113
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    .line 114
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevNLSF_Q15:[S

    invoke-static {v1, v0, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 115
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->first_frame_after_reset:I

    const/4 v1, 0x0

    .line 116
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->pitch_lag_low_bits_iCDF:[S

    .line 117
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->pitch_contour_iCDF:[S

    .line 118
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesDecoded:I

    .line 119
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    .line 120
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ec_prevSignalType:I

    .line 121
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ec_prevLagIndex:S

    .line 122
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->VAD_flags:[I

    const/4 v3, 0x3

    invoke-static {v2, v0, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 123
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flag:I

    .line 124
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flags:[I

    invoke-static {v2, v0, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 125
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    invoke-virtual {v2}, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Reset()V

    .line 126
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    .line 127
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    invoke-virtual {v1}, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Reset()V

    .line 128
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sCNG:Lio/github/jaredmdobson/concentus/CNGState;

    invoke-virtual {v1}, Lio/github/jaredmdobson/concentus/CNGState;->Reset()V

    .line 129
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lossCnt:I

    .line 130
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevSignalType:I

    .line 131
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sPLC:Lio/github/jaredmdobson/concentus/PLCStruct;

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/PLCStruct;->Reset()V

    return-void
.end method

.method silk_decode_frame(Lio/github/jaredmdobson/concentus/EntropyCoder;[SILio/github/jaredmdobson/concentus/BoxedValueInt;II)I
    .locals 8

    .line 271
    new-instance v0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/SilkDecoderControl;-><init>()V

    .line 274
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    const/4 v2, 0x0

    .line 275
    iput v2, v0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->LTP_scale_Q14:I

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/16 v4, 0x140

    if-gt v1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 278
    :goto_0
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v4, 0x2

    if-eqz p5, :cond_2

    if-ne p5, v4, :cond_1

    .line 280
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flags:[I

    iget v6, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesDecoded:I

    aget v5, v5, v6

    if-ne v5, v3, :cond_1

    goto :goto_1

    .line 337
    :cond_1
    invoke-static {p0, v0, p2, p3, v3}, Lio/github/jaredmdobson/concentus/PLC;->silk_PLC(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/SilkDecoderControl;[SII)V

    goto :goto_3

    :cond_2
    :goto_1
    add-int/lit8 v5, v1, 0xf

    and-int/lit8 v5, v5, -0x10

    .line 282
    new-array v5, v5, [S

    .line 290
    iget v6, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesDecoded:I

    invoke-static {p0, p1, v6, p5, p6}, Lio/github/jaredmdobson/concentus/DecodeIndices;->silk_decode_indices(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/EntropyCoder;III)V

    .line 299
    iget-object p5, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte p5, p5, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    iget-object v6, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v6, v6, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    iget v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    invoke-static {p1, v5, p5, v6, v7}, Lio/github/jaredmdobson/concentus/DecodePulses;->silk_decode_pulses(Lio/github/jaredmdobson/concentus/EntropyCoder;[SIII)V

    .line 309
    invoke-static {p0, v0, p6}, Lio/github/jaredmdobson/concentus/DecodeParameters;->silk_decode_parameters(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/SilkDecoderControl;I)V

    .line 318
    invoke-static {p0, v0, p2, p3, v5}, Lio/github/jaredmdobson/concentus/DecodeCore;->silk_decode_core(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/SilkDecoderControl;[SI[S)V

    .line 327
    invoke-static {p0, v0, p2, p3, v2}, Lio/github/jaredmdobson/concentus/PLC;->silk_PLC(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/SilkDecoderControl;[SII)V

    .line 329
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lossCnt:I

    .line 330
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte p1, p1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevSignalType:I

    if-ltz p1, :cond_3

    if-gt p1, v4, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 331
    :goto_2
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 334
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->first_frame_after_reset:I

    .line 347
    :goto_3
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    iget p5, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    if-lt p1, p5, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 348
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    iget p5, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    sub-int/2addr p1, p5

    .line 349
    iget-object p6, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->outBuf:[S

    invoke-static {p6, p5, v2, p1}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([SIII)V

    .line 350
    iget-object p5, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->outBuf:[S

    iget p6, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    invoke-static {p2, p3, p5, p1, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    invoke-static {p0, v0, p2, p3, v1}, Lio/github/jaredmdobson/concentus/CNG;->silk_CNG(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/SilkDecoderControl;[SII)V

    .line 368
    invoke-static {p0, p2, p3, v1}, Lio/github/jaredmdobson/concentus/PLC;->silk_PLC_glue_frames(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;[SII)V

    .line 371
    iget-object p1, v0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->pitchL:[I

    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    sub-int/2addr p2, v3

    aget p1, p1, p2

    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lagPrev:I

    .line 374
    iput v1, p4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return v2
.end method

.method silk_decoder_set_fs(II)I
    .locals 9

    const/16 v0, 0xc

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq p1, v4, :cond_1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 192
    :goto_1
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 193
    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v5, 0x5

    .line 196
    invoke-static {v5, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    iput v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->subfr_length:I

    .line 197
    iget v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    invoke-static {v7, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    .line 200
    iget v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    if-ne v7, p1, :cond_5

    iget v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_API_hz:I

    if-eq v7, p2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    goto :goto_5

    .line 202
    :cond_5
    :goto_4
    iget-object v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    const/16 v8, 0x3e8

    invoke-static {p1, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v8

    invoke-static {v7, v8, p2, v3}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_init(Lio/github/jaredmdobson/concentus/SilkResamplerState;III)I

    move-result v7

    .line 204
    iput p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_API_hz:I

    .line 207
    :goto_5
    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    if-ne p2, p1, :cond_6

    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    if-eq v5, p2, :cond_10

    :cond_6
    if-ne p1, v4, :cond_8

    .line 209
    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    if-ne p2, v6, :cond_7

    .line 210
    sget-object p2, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_contour_NB_iCDF:[S

    iput-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->pitch_contour_iCDF:[S

    goto :goto_6

    .line 212
    :cond_7
    sget-object p2, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_contour_10_ms_NB_iCDF:[S

    iput-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->pitch_contour_iCDF:[S

    goto :goto_6

    .line 214
    :cond_8
    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    if-ne p2, v6, :cond_9

    .line 215
    sget-object p2, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_contour_iCDF:[S

    iput-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->pitch_contour_iCDF:[S

    goto :goto_6

    .line 217
    :cond_9
    sget-object p2, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_contour_10_ms_iCDF:[S

    iput-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->pitch_contour_iCDF:[S

    .line 219
    :goto_6
    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    if-eq p2, p1, :cond_f

    const/16 p2, 0x14

    .line 220
    invoke-static {p2, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result p2

    iput p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ltp_mem_length:I

    const/16 p2, 0xa

    if-eq p1, v4, :cond_b

    if-ne p1, v0, :cond_a

    goto :goto_7

    .line 225
    :cond_a
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    .line 226
    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_NLSF_CB_WB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iput-object v6, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    goto :goto_8

    .line 222
    :cond_b
    :goto_7
    iput p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    .line 223
    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_NLSF_CB_NB_MB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iput-object v6, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    :goto_8
    if-ne p1, v1, :cond_c

    .line 229
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_uniform8_iCDF:[S

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->pitch_lag_low_bits_iCDF:[S

    goto :goto_9

    :cond_c
    if-ne p1, v0, :cond_d

    .line 231
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_uniform6_iCDF:[S

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->pitch_lag_low_bits_iCDF:[S

    goto :goto_9

    :cond_d
    if-ne p1, v4, :cond_e

    .line 233
    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_uniform4_iCDF:[S

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->pitch_lag_low_bits_iCDF:[S

    goto :goto_9

    .line 236
    :cond_e
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 238
    :goto_9
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->first_frame_after_reset:I

    const/16 v0, 0x64

    .line 239
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lagPrev:I

    .line 240
    iput-byte p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LastGainIndex:B

    .line 241
    iput v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevSignalType:I

    .line 242
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->outBuf:[S

    const/16 v0, 0x1e0

    invoke-static {p2, v3, v0}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 243
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sLPC_Q14_buf:[I

    invoke-static {p2, v3, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 246
    :cond_f
    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    .line 247
    iput v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    .line 251
    :cond_10
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    if-lez p1, :cond_11

    const/16 p2, 0x140

    if-gt p1, p2, :cond_11

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    :goto_a
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v7
.end method

.method silk_init_decoder()I
    .locals 1

    .line 141
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->Reset()V

    const/4 v0, 0x1

    .line 144
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->first_frame_after_reset:I

    const/high16 v0, 0x10000

    .line 145
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prev_gain_Q16:I

    .line 148
    invoke-direct {p0}, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->silk_CNG_Reset()V

    .line 151
    invoke-direct {p0}, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->silk_PLC_Reset()V

    const/4 v0, 0x0

    return v0
.end method
