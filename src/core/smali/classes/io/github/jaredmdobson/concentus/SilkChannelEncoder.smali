.class Lio/github/jaredmdobson/concentus/SilkChannelEncoder;
.super Ljava/lang/Object;
.source "SilkChannelEncoder.java"


# instance fields
.field API_fs_Hz:I

.field Complexity:I

.field final In_HP_State:[I

.field LBRR_GainIncreases:I

.field LBRR_enabled:I

.field LBRR_flag:B

.field final LBRR_flags:[I

.field LBRRprevLastGainIndex:B

.field LTPCorr_Q15:I

.field LTPQuantLowComplexity:I

.field NLSF_MSVQ_Survivors:I

.field PacketLoss_perc:I

.field PacketSize_ms:I

.field SNR_dB_Q7:I

.field TargetRate_bps:I

.field final VAD_flags:[B

.field allow_bandwidth_switch:I

.field channelNb:I

.field controlled_since_last_payload:I

.field desiredInternal_fs_Hz:I

.field ec_prevLagIndex:S

.field ec_prevSignalType:I

.field first_frame_after_reset:I

.field frameCounter:I

.field frame_length:I

.field frames_since_onset:I

.field fs_kHz:I

.field inDTX:I

.field final indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

.field final indices_LBRR:[Lio/github/jaredmdobson/concentus/SideInfoIndices;

.field final inputBuf:[S

.field inputBufIx:I

.field final input_quality_bands_Q15:[I

.field input_tilt_Q15:I

.field la_pitch:I

.field la_shape:I

.field ltp_mem_length:I

.field maxInternal_fs_Hz:I

.field max_pitch_lag:I

.field minInternal_fs_Hz:I

.field mu_LTP_Q9:I

.field nChannelsAPI:I

.field nChannelsInternal:I

.field nFramesEncoded:I

.field nFramesPerPacket:I

.field nStatesDelayedDecision:I

.field nb_subfr:I

.field noSpeechCounter:I

.field pitchEstimationComplexity:I

.field pitchEstimationLPCOrder:I

.field pitchEstimationThreshold_Q16:I

.field pitch_LPC_win_length:I

.field pitch_contour_iCDF:[S

.field pitch_lag_low_bits_iCDF:[S

.field predictLPCOrder:I

.field prefillFlag:I

.field prevLag:I

.field prevSignalType:B

.field prev_API_fs_Hz:I

.field final prev_NLSFq_Q15:[S

.field psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

.field final pulses:[B

.field final pulses_LBRR:[[B

.field final resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

.field final sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

.field final sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

.field final sPrefilt:Lio/github/jaredmdobson/concentus/SilkPrefilterState;

.field final sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

.field final sVAD:Lio/github/jaredmdobson/concentus/SilkVADState;

.field shapeWinLength:I

.field shapingLPCOrder:I

.field speech_activity_Q8:I

.field subfr_length:I

.field sum_log_gain_Q7:I

.field useCBR:I

.field useDTX:I

.field useInBandFEC:I

.field useInterpolatedNLSFs:I

.field variable_HP_smth1_Q15:I

.field variable_HP_smth2_Q15:I

.field warping_Q16:I

.field final x_buf:[S


# direct methods
.method constructor <init>()V
    .locals 4

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->In_HP_State:[I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->variable_HP_smth1_Q15:I

    .line 43
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->variable_HP_smth2_Q15:I

    .line 45
    new-instance v1, Lio/github/jaredmdobson/concentus/SilkLPState;

    invoke-direct {v1}, Lio/github/jaredmdobson/concentus/SilkLPState;-><init>()V

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    .line 47
    new-instance v1, Lio/github/jaredmdobson/concentus/SilkVADState;

    invoke-direct {v1}, Lio/github/jaredmdobson/concentus/SilkVADState;-><init>()V

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sVAD:Lio/github/jaredmdobson/concentus/SilkVADState;

    .line 49
    new-instance v1, Lio/github/jaredmdobson/concentus/SilkNSQState;

    invoke-direct {v1}, Lio/github/jaredmdobson/concentus/SilkNSQState;-><init>()V

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    const/16 v1, 0x10

    .line 51
    new-array v1, v1, [S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prev_NLSFq_Q15:[S

    .line 53
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    .line 55
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->allow_bandwidth_switch:I

    .line 57
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRRprevLastGainIndex:B

    .line 58
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prevSignalType:B

    .line 59
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prevLag:I

    .line 60
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_LPC_win_length:I

    .line 61
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->max_pitch_lag:I

    .line 63
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    .line 65
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prev_API_fs_Hz:I

    .line 67
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->maxInternal_fs_Hz:I

    .line 69
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->minInternal_fs_Hz:I

    .line 71
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->desiredInternal_fs_Hz:I

    .line 73
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    .line 75
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    .line 77
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    .line 79
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    .line 81
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    .line 83
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_pitch:I

    .line 85
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_shape:I

    .line 87
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapeWinLength:I

    .line 89
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->TargetRate_bps:I

    .line 91
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->PacketSize_ms:I

    .line 93
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->PacketLoss_perc:I

    .line 95
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frameCounter:I

    .line 96
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->Complexity:I

    .line 98
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    .line 100
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInterpolatedNLSFs:I

    .line 102
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    .line 104
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    .line 106
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationComplexity:I

    .line 108
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    .line 110
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationThreshold_Q16:I

    .line 112
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPQuantLowComplexity:I

    .line 114
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->mu_LTP_Q9:I

    .line 116
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sum_log_gain_Q7:I

    .line 118
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->NLSF_MSVQ_Survivors:I

    .line 120
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    .line 122
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->controlled_since_last_payload:I

    .line 124
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    .line 126
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useCBR:I

    .line 128
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prefillFlag:I

    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_lag_low_bits_iCDF:[S

    .line 132
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_contour_iCDF:[S

    .line 134
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    const/4 v1, 0x4

    .line 136
    new-array v1, v1, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->input_quality_bands_Q15:[I

    .line 137
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->input_tilt_Q15:I

    .line 138
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->SNR_dB_Q7:I

    const/4 v1, 0x3

    .line 141
    new-array v2, v1, [B

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->VAD_flags:[B

    .line 142
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_flag:B

    .line 143
    new-array v2, v1, [I

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_flags:[I

    .line 145
    new-instance v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;

    invoke-direct {v2}, Lio/github/jaredmdobson/concentus/SideInfoIndices;-><init>()V

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    const/16 v2, 0x140

    .line 146
    new-array v3, v2, [B

    iput-object v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pulses:[B

    const/16 v3, 0x142

    .line 149
    new-array v3, v3, [S

    iput-object v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    .line 151
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    .line 152
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    .line 153
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    .line 156
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nChannelsAPI:I

    .line 157
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nChannelsInternal:I

    .line 158
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->channelNb:I

    .line 161
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frames_since_onset:I

    .line 164
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ec_prevSignalType:I

    .line 165
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ec_prevLagIndex:S

    .line 167
    new-instance v3, Lio/github/jaredmdobson/concentus/SilkResamplerState;

    invoke-direct {v3}, Lio/github/jaredmdobson/concentus/SilkResamplerState;-><init>()V

    iput-object v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    .line 170
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useDTX:I

    .line 172
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inDTX:I

    .line 174
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->noSpeechCounter:I

    .line 178
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInBandFEC:I

    .line 180
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_enabled:I

    .line 182
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_GainIncreases:I

    .line 184
    new-array v3, v1, [Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-object v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices_LBRR:[Lio/github/jaredmdobson/concentus/SideInfoIndices;

    .line 185
    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayByte(II)[[B

    move-result-object v2

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pulses_LBRR:[[B

    .line 188
    new-instance v2, Lio/github/jaredmdobson/concentus/SilkShapeState;

    invoke-direct {v2}, Lio/github/jaredmdobson/concentus/SilkShapeState;-><init>()V

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

    .line 191
    new-instance v2, Lio/github/jaredmdobson/concentus/SilkPrefilterState;

    invoke-direct {v2}, Lio/github/jaredmdobson/concentus/SilkPrefilterState;-><init>()V

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sPrefilt:Lio/github/jaredmdobson/concentus/SilkPrefilterState;

    const/16 v2, 0x2d0

    .line 194
    new-array v2, v2, [S

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->x_buf:[S

    .line 197
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPCorr_Q15:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 201
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices_LBRR:[Lio/github/jaredmdobson/concentus/SideInfoIndices;

    new-instance v3, Lio/github/jaredmdobson/concentus/SideInfoIndices;

    invoke-direct {v3}, Lio/github/jaredmdobson/concentus/SideInfoIndices;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private silk_setup_LBRR(I)I
    .locals 5

    .line 654
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    .line 657
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_enabled:I

    const/4 v2, 0x0

    .line 658
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_enabled:I

    .line 659
    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInBandFEC:I

    if-eqz v2, :cond_3

    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->PacketLoss_perc:I

    if-lez v2, :cond_3

    .line 660
    iget v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const/16 v3, 0x2ee0

    goto :goto_0

    :cond_0
    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    const/16 v3, 0x36b0

    goto :goto_0

    :cond_1
    const/16 v3, 0x3e80

    :goto_0
    const/16 v4, 0x19

    .line 668
    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7d

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v2

    const/16 v3, 0x28f

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    if-le p1, v2, :cond_3

    const/4 p1, 0x7

    if-nez v1, :cond_2

    .line 674
    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_GainIncreases:I

    goto :goto_1

    .line 676
    :cond_2
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->PacketLoss_perc:I

    const/16 v2, 0x6666

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v1

    sub-int/2addr p1, v1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result p1

    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_GainIncreases:I

    :goto_1
    const/4 p1, 0x1

    .line 678
    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_enabled:I

    :cond_3
    return v0
.end method

.method private silk_setup_complexity(I)I
    .locals 11

    const/16 v0, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 572
    :goto_0
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v3, 0x20

    const/4 v4, 0x3

    const/4 v5, 0x6

    const/16 v6, 0x8

    const/4 v7, 0x4

    const/16 v8, 0x10

    const/4 v9, 0x2

    if-ge p1, v9, :cond_1

    .line 574
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationComplexity:I

    const v0, 0xcccd

    .line 575
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationThreshold_Q16:I

    .line 576
    iput v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    .line 577
    iput v6, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    .line 578
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_shape:I

    .line 579
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    .line 580
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInterpolatedNLSFs:I

    .line 581
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPQuantLowComplexity:I

    .line 582
    iput v9, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->NLSF_MSVQ_Survivors:I

    .line 583
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    goto/16 :goto_1

    :cond_1
    if-ge p1, v7, :cond_2

    .line 585
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationComplexity:I

    const v4, 0xc28f

    .line 586
    iput v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationThreshold_Q16:I

    .line 587
    iput v6, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    .line 588
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    .line 589
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_shape:I

    .line 590
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    .line 591
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInterpolatedNLSFs:I

    .line 592
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPQuantLowComplexity:I

    .line 593
    iput v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->NLSF_MSVQ_Survivors:I

    .line 594
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    goto :goto_1

    :cond_2
    const/16 v10, 0xc

    if-ge p1, v5, :cond_3

    .line 596
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationComplexity:I

    const v4, 0xbd71

    .line 597
    iput v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationThreshold_Q16:I

    .line 598
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    .line 599
    iput v10, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    .line 600
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int/lit8 v4, v0, 0x5

    iput v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_shape:I

    .line 601
    iput v9, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    .line 602
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInterpolatedNLSFs:I

    .line 603
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPQuantLowComplexity:I

    .line 604
    iput v6, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->NLSF_MSVQ_Survivors:I

    mul-int/lit16 v0, v0, 0x3d7

    .line 605
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    goto :goto_1

    :cond_3
    if-ge p1, v6, :cond_4

    .line 607
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationComplexity:I

    const v0, 0xb852

    .line 608
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationThreshold_Q16:I

    .line 609
    iput v10, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    const/16 v0, 0xe

    .line 610
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    .line 611
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int/lit8 v5, v0, 0x5

    iput v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_shape:I

    .line 612
    iput v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    .line 613
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInterpolatedNLSFs:I

    .line 614
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPQuantLowComplexity:I

    .line 615
    iput v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->NLSF_MSVQ_Survivors:I

    mul-int/lit16 v0, v0, 0x3d7

    .line 616
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    goto :goto_1

    .line 618
    :cond_4
    iput v9, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationComplexity:I

    const v0, 0xb333

    .line 619
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationThreshold_Q16:I

    .line 620
    iput v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    .line 621
    iput v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    .line 622
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int/lit8 v4, v0, 0x5

    iput v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_shape:I

    .line 623
    iput v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    .line 624
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInterpolatedNLSFs:I

    .line 625
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPQuantLowComplexity:I

    .line 626
    iput v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->NLSF_MSVQ_Survivors:I

    mul-int/lit16 v0, v0, 0x3d7

    .line 627
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    .line 631
    :goto_1
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    iget v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    invoke-static {v0, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v0

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    .line 632
    iget v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int/lit8 v4, v4, 0x5

    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_shape:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapeWinLength:I

    .line 633
    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->Complexity:I

    if-gt v0, v8, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 635
    :goto_2
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 636
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    if-gt p1, v8, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 637
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    if-gt p1, v7, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 638
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_5
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 639
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_shape:I

    const/16 v0, 0x50

    if-gt p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    :goto_6
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 640
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapeWinLength:I

    const/16 v0, 0xf0

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_7

    :cond_a
    const/4 p1, 0x0

    :goto_7
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 641
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->NLSF_MSVQ_Survivors:I

    if-gt p1, v3, :cond_b

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v2
.end method

.method private silk_setup_fs(II)I
    .locals 13

    .line 451
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    .line 454
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->PacketSize_ms:I

    const/16 v2, 0xe

    const/16 v3, 0x18

    const/4 v4, 0x2

    const/16 v5, 0x14

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/16 v9, 0xa

    const/4 v10, 0x0

    if-eq p2, v1, :cond_5

    if-eq p2, v9, :cond_0

    if-eq p2, v5, :cond_0

    const/16 v1, 0x28

    if-eq p2, v1, :cond_0

    const/16 v1, 0x3c

    if-eq p2, v1, :cond_0

    .line 459
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_ENC_PACKET_SIZE_NOT_SUPPORTED:I

    :cond_0
    if-gt p2, v9, :cond_3

    .line 462
    iput v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    if-ne p2, v9, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 463
    :goto_0
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    .line 464
    invoke-static {p2, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v1

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    .line 465
    invoke-static {v2, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v1

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_LPC_win_length:I

    .line 466
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    if-ne v1, v7, :cond_2

    .line 467
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_contour_10_ms_NB_iCDF:[S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_contour_iCDF:[S

    goto :goto_1

    .line 469
    :cond_2
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_contour_10_ms_iCDF:[S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_contour_iCDF:[S

    goto :goto_1

    .line 472
    :cond_3
    invoke-static {p2, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v1

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    .line 473
    iput v6, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    .line 474
    invoke-static {v5, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v1

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    .line 475
    invoke-static {v3, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v1

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_LPC_win_length:I

    .line 476
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    if-ne v1, v7, :cond_4

    .line 477
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_contour_NB_iCDF:[S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_contour_iCDF:[S

    goto :goto_1

    .line 479
    :cond_4
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_contour_iCDF:[S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_contour_iCDF:[S

    .line 482
    :goto_1
    iput p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->PacketSize_ms:I

    .line 483
    iput v10, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->TargetRate_bps:I

    :cond_5
    const/16 p2, 0xc

    const/16 v1, 0x10

    if-eq p1, v7, :cond_7

    if-eq p1, p2, :cond_7

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v11, 0x1

    .line 488
    :goto_3
    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 489
    iget v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-eq v11, v4, :cond_9

    if-ne v11, v6, :cond_8

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v11, 0x1

    :goto_5
    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 490
    iget v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    if-eq v11, p1, :cond_12

    .line 492
    iget-object v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

    invoke-virtual {v11}, Lio/github/jaredmdobson/concentus/SilkShapeState;->Reset()V

    .line 493
    iget-object v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sPrefilt:Lio/github/jaredmdobson/concentus/SilkPrefilterState;

    invoke-virtual {v11}, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->Reset()V

    .line 494
    iget-object v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    invoke-virtual {v11}, Lio/github/jaredmdobson/concentus/SilkNSQState;->Reset()V

    .line 495
    iget-object v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prev_NLSFq_Q15:[S

    invoke-static {v11, v10, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 496
    iget-object v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iget-object v11, v11, Lio/github/jaredmdobson/concentus/SilkLPState;->In_LP_State:[I

    invoke-static {v11, v10, v4}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 497
    iput v10, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    .line 498
    iput v10, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    .line 499
    iput v10, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->TargetRate_bps:I

    const/16 v11, 0x64

    .line 503
    iput v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prevLag:I

    .line 504
    iput v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    .line 505
    iget-object v12, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sPrefilt:Lio/github/jaredmdobson/concentus/SilkPrefilterState;

    iput v11, v12, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->lagPrev:I

    .line 506
    iget-object v12, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

    iput-byte v9, v12, Lio/github/jaredmdobson/concentus/SilkShapeState;->LastGainIndex:B

    .line 507
    iget-object v12, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    iput v11, v12, Lio/github/jaredmdobson/concentus/SilkNSQState;->lagPrev:I

    .line 508
    iget-object v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    const/high16 v12, 0x10000

    iput v12, v11, Lio/github/jaredmdobson/concentus/SilkNSQState;->prev_gain_Q16:I

    .line 509
    iput-byte v10, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prevSignalType:B

    .line 511
    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    if-ne p1, v7, :cond_b

    .line 513
    iget v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ne v11, v6, :cond_a

    .line 514
    sget-object v11, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_contour_NB_iCDF:[S

    iput-object v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_contour_iCDF:[S

    goto :goto_6

    .line 516
    :cond_a
    sget-object v11, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_contour_10_ms_NB_iCDF:[S

    iput-object v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_contour_iCDF:[S

    goto :goto_6

    .line 518
    :cond_b
    iget v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ne v11, v6, :cond_c

    .line 519
    sget-object v11, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_contour_iCDF:[S

    iput-object v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_contour_iCDF:[S

    goto :goto_6

    .line 521
    :cond_c
    sget-object v11, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_contour_10_ms_iCDF:[S

    iput-object v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_contour_iCDF:[S

    .line 524
    :goto_6
    iget v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    if-eq v11, v7, :cond_e

    if-ne v11, p2, :cond_d

    goto :goto_7

    .line 528
    :cond_d
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    .line 529
    sget-object v7, Lio/github/jaredmdobson/concentus/SilkTables;->silk_NLSF_CB_WB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iput-object v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    goto :goto_8

    .line 525
    :cond_e
    :goto_7
    iput v9, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    .line 526
    sget-object v7, Lio/github/jaredmdobson/concentus/SilkTables;->silk_NLSF_CB_NB_MB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iput-object v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    :goto_8
    mul-int/lit8 v7, p1, 0x5

    .line 532
    iput v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    .line 533
    iget v11, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    invoke-static {v7, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v7

    iput v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    .line 534
    invoke-static {v5, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    iput v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    .line 535
    invoke-static {v4, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    iput v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_pitch:I

    const/16 v4, 0x12

    .line 536
    invoke-static {v4, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    iput v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->max_pitch_lag:I

    .line 538
    iget v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ne v4, v6, :cond_f

    .line 539
    invoke-static {v3, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result p1

    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_LPC_win_length:I

    goto :goto_9

    .line 541
    :cond_f
    invoke-static {v2, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result p1

    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_LPC_win_length:I

    .line 544
    :goto_9
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    if-ne p1, v1, :cond_10

    .line 545
    iput v9, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->mu_LTP_Q9:I

    .line 546
    sget-object p1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_uniform8_iCDF:[S

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_lag_low_bits_iCDF:[S

    goto :goto_a

    :cond_10
    if-ne p1, p2, :cond_11

    const/16 p1, 0xd

    .line 548
    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->mu_LTP_Q9:I

    .line 549
    sget-object p1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_uniform6_iCDF:[S

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_lag_low_bits_iCDF:[S

    goto :goto_a

    :cond_11
    const/16 p1, 0xf

    .line 551
    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->mu_LTP_Q9:I

    .line 552
    sget-object p1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_uniform4_iCDF:[S

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_lag_low_bits_iCDF:[S

    .line 557
    :cond_12
    :goto_a
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    mul-int p1, p1, p2

    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    if-ne p1, p2, :cond_13

    goto :goto_b

    :cond_13
    const/4 v8, 0x0

    :goto_b
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v0
.end method

.method private silk_setup_resamplers(I)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 402
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prev_API_fs_Hz:I

    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    if-eq v4, v5, :cond_2

    :cond_0
    const/4 v4, 0x1

    const/16 v5, 0x3e8

    if-nez v2, :cond_1

    .line 405
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v2, v3, v1, v4}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_init(Lio/github/jaredmdobson/concentus/SilkResamplerState;III)I

    move-result v3

    goto :goto_0

    .line 414
    :cond_1
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    mul-int/lit8 v2, v2, 0x5

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    .line 415
    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int v12, v2, v6

    .line 418
    new-instance v7, Lio/github/jaredmdobson/concentus/SilkResamplerState;

    invoke-direct {v7}, Lio/github/jaredmdobson/concentus/SilkResamplerState;-><init>()V

    .line 419
    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    invoke-static {v6, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v6

    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    invoke-static {v7, v6, v8, v3}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_init(Lio/github/jaredmdobson/concentus/SilkResamplerState;III)I

    move-result v3

    .line 422
    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    invoke-static {v6, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v6

    mul-int v2, v2, v6

    .line 425
    new-array v8, v2, [S

    .line 426
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->x_buf:[S

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)I

    move-result v6

    move-object/from16 v16, v8

    add-int/2addr v3, v6

    .line 429
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    invoke-static {v1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v1

    invoke-static {v6, v7, v1, v4}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler_init(Lio/github/jaredmdobson/concentus/SilkResamplerState;III)I

    move-result v1

    add-int/2addr v3, v1

    .line 432
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->x_buf:[S

    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v18, v2

    invoke-static/range {v13 .. v18}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)I

    move-result v1

    add-int/2addr v3, v1

    .line 436
    :cond_2
    :goto_0
    iget v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    iput v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prev_API_fs_Hz:I

    return v3
.end method


# virtual methods
.method Reset()V
    .locals 5

    .line 206
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->In_HP_State:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 207
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->variable_HP_smth1_Q15:I

    .line 208
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->variable_HP_smth2_Q15:I

    .line 209
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/SilkLPState;->Reset()V

    .line 210
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sVAD:Lio/github/jaredmdobson/concentus/SilkVADState;

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/SilkVADState;->Reset()V

    .line 211
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/SilkNSQState;->Reset()V

    .line 212
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prev_NLSFq_Q15:[S

    const/16 v1, 0x10

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 213
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    .line 214
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->allow_bandwidth_switch:I

    .line 215
    iput-byte v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRRprevLastGainIndex:B

    .line 216
    iput-byte v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prevSignalType:B

    .line 217
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prevLag:I

    .line 218
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_LPC_win_length:I

    .line 219
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->max_pitch_lag:I

    .line 220
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    .line 221
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prev_API_fs_Hz:I

    .line 222
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->maxInternal_fs_Hz:I

    .line 223
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->minInternal_fs_Hz:I

    .line 224
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->desiredInternal_fs_Hz:I

    .line 225
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    .line 226
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    .line 227
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    .line 228
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->subfr_length:I

    .line 229
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    .line 230
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_pitch:I

    .line 231
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_shape:I

    .line 232
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapeWinLength:I

    .line 233
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->TargetRate_bps:I

    .line 234
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->PacketSize_ms:I

    .line 235
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->PacketLoss_perc:I

    .line 236
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frameCounter:I

    .line 237
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->Complexity:I

    .line 238
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    .line 239
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInterpolatedNLSFs:I

    .line 240
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    .line 241
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    .line 242
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationComplexity:I

    .line 243
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationLPCOrder:I

    .line 244
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitchEstimationThreshold_Q16:I

    .line 245
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPQuantLowComplexity:I

    .line 246
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->mu_LTP_Q9:I

    .line 247
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sum_log_gain_Q7:I

    .line 248
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->NLSF_MSVQ_Survivors:I

    .line 249
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    .line 250
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->controlled_since_last_payload:I

    .line 251
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    .line 252
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useCBR:I

    .line 253
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prefillFlag:I

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_lag_low_bits_iCDF:[S

    .line 255
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_contour_iCDF:[S

    .line 256
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    .line 257
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->input_quality_bands_Q15:[I

    const/4 v1, 0x4

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 258
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->input_tilt_Q15:I

    .line 259
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->SNR_dB_Q7:I

    .line 260
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->VAD_flags:[B

    const/4 v1, 0x3

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([BBI)V

    .line 261
    iput-byte v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_flag:B

    .line 262
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_flags:[I

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 263
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Reset()V

    .line 264
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pulses:[B

    const/16 v3, 0x140

    invoke-static {v0, v2, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([BBI)V

    .line 265
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    const/16 v4, 0x142

    invoke-static {v0, v2, v4}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 266
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    .line 267
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    .line 268
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    .line 269
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nChannelsAPI:I

    .line 270
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nChannelsInternal:I

    .line 271
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->channelNb:I

    .line 272
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frames_since_onset:I

    .line 273
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ec_prevSignalType:I

    .line 274
    iput-short v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ec_prevLagIndex:S

    .line 275
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Reset()V

    .line 276
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useDTX:I

    .line 277
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inDTX:I

    .line 278
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->noSpeechCounter:I

    .line 279
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInBandFEC:I

    .line 280
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_enabled:I

    .line 281
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_GainIncreases:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 283
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices_LBRR:[Lio/github/jaredmdobson/concentus/SideInfoIndices;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Reset()V

    .line 284
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pulses_LBRR:[[B

    aget-object v4, v4, v0

    invoke-static {v4, v2, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([BBI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/SilkShapeState;->Reset()V

    .line 287
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sPrefilt:Lio/github/jaredmdobson/concentus/SilkPrefilterState;

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->Reset()V

    .line 288
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->x_buf:[S

    const/16 v1, 0x2d0

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 289
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LTPCorr_Q15:I

    return-void
.end method

.method silk_LBRR_encode(Lio/github/jaredmdobson/concentus/SilkEncoderControl;[II)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    .line 1187
    iget v0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    new-array v0, v0, [I

    .line 1188
    iget-object v2, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices_LBRR:[Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aget-object v2, v2, v3

    .line 1189
    new-instance v3, Lio/github/jaredmdobson/concentus/SilkNSQState;

    invoke-direct {v3}, Lio/github/jaredmdobson/concentus/SilkNSQState;-><init>()V

    .line 1198
    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_enabled:I

    if-eqz v4, :cond_5

    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    const/16 v5, 0x4d

    if-le v4, v5, :cond_5

    .line 1199
    iget-object v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_flags:[I

    iget v5, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 1202
    iget-object v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    invoke-virtual {v3, v4}, Lio/github/jaredmdobson/concentus/SilkNSQState;->Assign(Lio/github/jaredmdobson/concentus/SilkNSQState;)V

    .line 1203
    iget-object v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    invoke-virtual {v2, v4}, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Assign(Lio/github/jaredmdobson/concentus/SideInfoIndices;)V

    .line 1206
    iget-object v4, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    iget v5, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    const/4 v7, 0x0

    invoke-static {v4, v7, v0, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1208
    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    if-eqz v4, :cond_0

    iget-object v5, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_flags:[I

    sub-int/2addr v4, v6

    aget v4, v5, v4

    if-nez v4, :cond_1

    .line 1210
    :cond_0
    iget-object v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

    iget-byte v4, v4, Lio/github/jaredmdobson/concentus/SilkShapeState;->LastGainIndex:B

    iput-byte v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRRprevLastGainIndex:B

    .line 1213
    iget-object v4, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    iget-object v5, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    aget-byte v5, v5, v7

    iget v8, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_GainIncreases:I

    add-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v4, v7

    .line 1214
    iget-object v4, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    iget-object v5, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    aget-byte v5, v5, v7

    const/16 v8, 0x3f

    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v7

    .line 1219
    :cond_1
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueByte;

    iget-byte v5, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRRprevLastGainIndex:B

    invoke-direct {v4, v5}, Lio/github/jaredmdobson/concentus/BoxedValueByte;-><init>(B)V

    .line 1220
    iget-object v5, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    iget-object v8, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    const/4 v9, 0x2

    move/from16 v10, p3

    if-ne v10, v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    iget v10, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    invoke-static {v5, v8, v4, v9, v10}, Lio/github/jaredmdobson/concentus/GainQuantization;->silk_gains_dequant([I[BLio/github/jaredmdobson/concentus/BoxedValueByte;II)V

    .line 1222
    iget-byte v4, v4, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    iput-byte v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRRprevLastGainIndex:B

    .line 1231
    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    if-gt v4, v6, :cond_4

    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    if-lez v4, :cond_3

    goto :goto_1

    .line 1247
    :cond_3
    iget-object v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pulses_LBRR:[[B

    iget v5, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aget-object v4, v4, v5

    iget-object v5, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->PredCoef_Q12:[[S

    iget-object v6, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPCoef_Q14:[S

    const/4 v8, 0x0

    iget-object v7, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->AR2_Q13:[S

    const/4 v9, 0x0

    iget-object v8, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->HarmShapeGain_Q14:[I

    const/4 v10, 0x0

    iget-object v9, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Tilt_Q14:[I

    const/4 v11, 0x0

    iget-object v10, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    const/4 v12, 0x0

    iget-object v11, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    const/4 v13, 0x0

    iget-object v12, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->pitchL:[I

    const/4 v14, 0x0

    iget v13, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Lambda_Q10:I

    const/16 v16, 0x0

    iget v14, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTP_scale_Q14:I

    move-object/from16 v17, v0

    move-object v0, v3

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v14}, Lio/github/jaredmdobson/concentus/SilkNSQState;->silk_NSQ(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SideInfoIndices;[I[B[[S[S[S[I[I[I[I[III)V

    goto :goto_2

    :cond_4
    :goto_1
    move-object/from16 v17, v0

    move-object v0, v3

    .line 1232
    iget-object v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pulses_LBRR:[[B

    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aget-object v4, v3, v4

    iget-object v5, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->PredCoef_Q12:[[S

    iget-object v6, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPCoef_Q14:[S

    iget-object v7, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->AR2_Q13:[S

    iget-object v8, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->HarmShapeGain_Q14:[I

    iget-object v9, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Tilt_Q14:[I

    iget-object v10, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    iget-object v11, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    iget-object v12, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->pitchL:[I

    iget v13, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Lambda_Q10:I

    iget v14, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTP_scale_Q14:I

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v14}, Lio/github/jaredmdobson/concentus/SilkNSQState;->silk_NSQ_del_dec(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SideInfoIndices;[I[B[[S[S[S[I[I[I[I[III)V

    .line 1264
    :goto_2
    iget-object v0, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    iget v2, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    move-object/from16 v3, v17

    const/4 v12, 0x0

    invoke-static {v3, v12, v0, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    return-void
.end method

.method silk_control_SNR(I)I
    .locals 6

    .line 776
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    const/16 v1, 0x1388

    const v2, 0x13880

    .line 781
    invoke-static {p1, v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result p1

    .line 782
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->TargetRate_bps:I

    if-eq p1, v1, :cond_4

    .line 783
    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->TargetRate_bps:I

    .line 786
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 787
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_TargetRate_table_NB:[I

    goto :goto_0

    :cond_0
    const/16 v3, 0xc

    if-ne v1, v3, :cond_1

    .line 789
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_TargetRate_table_MB:[I

    goto :goto_0

    .line 791
    :cond_1
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_TargetRate_table_WB:[I

    .line 795
    :goto_0
    iget v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    add-int/lit16 p1, p1, -0x898

    :cond_2
    const/4 v3, 0x1

    :goto_1
    if-ge v3, v2, :cond_4

    .line 801
    aget v4, v1, v3

    if-gt p1, v4, :cond_3

    add-int/lit8 v2, v3, -0x1

    .line 802
    aget v4, v1, v2

    sub-int/2addr p1, v4

    const/4 v4, 0x6

    invoke-static {p1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p1

    aget v5, v1, v3

    aget v1, v1, v2

    sub-int/2addr v5, v1

    invoke-static {p1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result p1

    .line 804
    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_SNR_table_Q1:[S

    aget-short v1, v1, v2

    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    sget-object v4, Lio/github/jaredmdobson/concentus/SilkTables;->silk_SNR_table_Q1:[S

    aget-short v3, v4, v3

    sget-object v4, Lio/github/jaredmdobson/concentus/SilkTables;->silk_SNR_table_Q1:[S

    aget-short v2, v4, v2

    sub-int/2addr v3, v2

    invoke-static {p1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->SNR_dB_Q7:I

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method silk_control_audio_bandwidth(Lio/github/jaredmdobson/concentus/EncControlState;)I
    .locals 11

    .line 695
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    const/16 v1, 0x3e8

    .line 696
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v2

    if-nez v2, :cond_0

    .line 700
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->desiredInternal_fs_Hz:I

    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result p1

    .line 701
    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result p1

    return p1

    .line 702
    :cond_0
    iget v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    if-gt v2, v3, :cond_e

    iget v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->maxInternal_fs_Hz:I

    if-gt v2, v4, :cond_e

    iget v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->minInternal_fs_Hz:I

    if-ge v2, v4, :cond_1

    goto/16 :goto_1

    .line 710
    :cond_1
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkLPState;->transition_frame_no:I

    const/16 v3, 0x100

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2

    .line 712
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iput v4, v2, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    .line 715
    :cond_2
    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->allow_bandwidth_switch:I

    if-nez v2, :cond_3

    iget v2, p1, Lio/github/jaredmdobson/concentus/EncControlState;->opusCanSwitch:I

    if-eqz v2, :cond_d

    .line 717
    :cond_3
    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v2

    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->desiredInternal_fs_Hz:I

    const/16 v6, 0xc

    const/16 v7, 0x10

    const/16 v8, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-le v2, v5, :cond_8

    .line 719
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    if-nez v1, :cond_4

    .line 721
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iput v3, v1, Lio/github/jaredmdobson/concentus/SilkLPState;->transition_frame_no:I

    .line 724
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/SilkLPState;->In_LP_State:[I

    invoke-static {v1, v4, v9}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 727
    :cond_4
    iget v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->opusCanSwitch:I

    if-eqz v1, :cond_6

    .line 729
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iput v4, p1, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    .line 732
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    if-ne p1, v7, :cond_5

    return v6

    :cond_5
    return v8

    .line 733
    :cond_6
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkLPState;->transition_frame_no:I

    if-gtz v1, :cond_7

    .line 734
    iput v10, p1, Lio/github/jaredmdobson/concentus/EncControlState;->switchReady:I

    .line 736
    iget v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->maxBits:I

    iget v2, p1, Lio/github/jaredmdobson/concentus/EncControlState;->maxBits:I

    mul-int/lit8 v2, v2, 0x5

    iget v3, p1, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    add-int/lit8 v3, v3, 0x5

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->maxBits:I

    return v0

    .line 739
    :cond_7
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    const/4 v1, -0x2

    iput v1, p1, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    return v0

    .line 741
    :cond_8
    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v1

    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->desiredInternal_fs_Hz:I

    if-ge v1, v2, :cond_c

    .line 743
    iget v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->opusCanSwitch:I

    if-eqz v1, :cond_a

    .line 745
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    if-ne p1, v8, :cond_9

    goto :goto_0

    :cond_9
    const/16 v6, 0x10

    .line 748
    :goto_0
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iput v4, p1, Lio/github/jaredmdobson/concentus/SilkLPState;->transition_frame_no:I

    .line 751
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iget-object p1, p1, Lio/github/jaredmdobson/concentus/SilkLPState;->In_LP_State:[I

    invoke-static {p1, v4, v9}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 754
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iput v10, p1, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    return v6

    .line 755
    :cond_a
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    if-nez v1, :cond_b

    .line 756
    iput v10, p1, Lio/github/jaredmdobson/concentus/EncControlState;->switchReady:I

    .line 758
    iget v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->maxBits:I

    iget v2, p1, Lio/github/jaredmdobson/concentus/EncControlState;->maxBits:I

    mul-int/lit8 v2, v2, 0x5

    iget v3, p1, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    add-int/lit8 v3, v3, 0x5

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->maxBits:I

    return v0

    .line 761
    :cond_b
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iput v10, p1, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    return v0

    .line 763
    :cond_c
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iget p1, p1, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    if-gez p1, :cond_d

    .line 764
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iput v10, p1, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    :cond_d
    return v0

    .line 705
    :cond_e
    :goto_1
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->maxInternal_fs_Hz:I

    invoke-static {v3, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result p1

    .line 706
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->minInternal_fs_Hz:I

    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result p1

    .line 707
    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result p1

    return p1
.end method

.method silk_control_encoder(Lio/github/jaredmdobson/concentus/EncControlState;IIII)I
    .locals 2

    .line 309
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    .line 311
    iget v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->useDTX:I

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useDTX:I

    .line 312
    iget v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->useCBR:I

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useCBR:I

    .line 313
    iget v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->API_sampleRate:I

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    .line 314
    iget v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->maxInternal_fs_Hz:I

    .line 315
    iget v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->minInternalSampleRate:I

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->minInternal_fs_Hz:I

    .line 316
    iget v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->desiredInternalSampleRate:I

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->desiredInternal_fs_Hz:I

    .line 317
    iget v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->useInBandFEC:I

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInBandFEC:I

    .line 318
    iget v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsAPI:I

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nChannelsAPI:I

    .line 319
    iget v1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nChannelsInternal:I

    .line 320
    iput p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->allow_bandwidth_switch:I

    .line 321
    iput p4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->channelNb:I

    .line 323
    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->controlled_since_last_payload:I

    if-eqz p3, :cond_1

    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prefillFlag:I

    if-nez p3, :cond_1

    .line 324
    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    iget p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prev_API_fs_Hz:I

    if-eq p1, p2, :cond_0

    iget p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    if-lez p1, :cond_0

    .line 326
    invoke-direct {p0, p1}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->silk_setup_resamplers(I)I

    move-result p1

    return p1

    :cond_0
    return v0

    .line 339
    :cond_1
    invoke-virtual {p0, p1}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->silk_control_audio_bandwidth(Lio/github/jaredmdobson/concentus/EncControlState;)I

    move-result p3

    if-eqz p5, :cond_2

    goto :goto_0

    :cond_2
    move p5, p3

    .line 350
    :goto_0
    invoke-direct {p0, p5}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->silk_setup_resamplers(I)I

    .line 359
    iget p3, p1, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    invoke-direct {p0, p5, p3}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->silk_setup_fs(II)I

    .line 368
    iget p3, p1, Lio/github/jaredmdobson/concentus/EncControlState;->complexity:I

    invoke-direct {p0, p3}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->silk_setup_complexity(I)I

    .line 377
    iget p1, p1, Lio/github/jaredmdobson/concentus/EncControlState;->packetLossPercentage:I

    iput p1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->PacketLoss_perc:I

    .line 386
    invoke-direct {p0, p2}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->silk_setup_LBRR(I)I

    move-result p1

    const/4 p2, 0x1

    .line 388
    iput p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->controlled_since_last_payload:I

    return p1
.end method

.method silk_encode_do_VAD()V
    .locals 4

    .line 821
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/github/jaredmdobson/concentus/VoiceActivityDetection;->silk_VAD_GetSA_Q8(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;[SI)I

    .line 830
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    .line 831
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-byte v3, v0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    .line 832
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->noSpeechCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->noSpeechCounter:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 834
    iput v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inDTX:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x1e

    if-le v0, v2, :cond_1

    .line 836
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->noSpeechCounter:I

    .line 837
    iput v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inDTX:I

    .line 839
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->VAD_flags:[B

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aput-byte v3, v0, v1

    return-void

    .line 841
    :cond_2
    iput v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->noSpeechCounter:I

    .line 842
    iput v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inDTX:I

    .line 843
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-byte v1, v0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    .line 844
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->VAD_flags:[B

    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aput-byte v1, v0, v2

    return-void
.end method

.method silk_encode_frame(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/EntropyCoder;III)I
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    .line 862
    new-instance v1, Lio/github/jaredmdobson/concentus/SilkEncoderControl;

    invoke-direct {v1}, Lio/github/jaredmdobson/concentus/SilkEncoderControl;-><init>()V

    .line 865
    new-instance v7, Lio/github/jaredmdobson/concentus/EntropyCoder;

    invoke-direct {v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;-><init>()V

    .line 866
    new-instance v8, Lio/github/jaredmdobson/concentus/EntropyCoder;

    invoke-direct {v8}, Lio/github/jaredmdobson/concentus/EntropyCoder;-><init>()V

    .line 867
    new-instance v9, Lio/github/jaredmdobson/concentus/SilkNSQState;

    invoke-direct {v9}, Lio/github/jaredmdobson/concentus/SilkNSQState;-><init>()V

    .line 868
    new-instance v10, Lio/github/jaredmdobson/concentus/SilkNSQState;

    invoke-direct {v10}, Lio/github/jaredmdobson/concentus/SilkNSQState;-><init>()V

    .line 881
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frameCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frameCounter:I

    const/4 v11, 0x3

    and-int/2addr v3, v11

    int-to-byte v3, v3

    iput-byte v3, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    .line 891
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    .line 900
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    const/4 v12, 0x1

    invoke-virtual {v2, v3, v12, v5}, Lio/github/jaredmdobson/concentus/SilkLPState;->silk_LP_variable_cutoff([SII)V

    .line 909
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->x_buf:[S

    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v5, v4

    iget v13, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    invoke-static {v2, v12, v3, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 911
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prefillFlag:I

    const/4 v14, 0x0

    if-nez v2, :cond_14

    .line 917
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->la_pitch:I

    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    add-int/2addr v2, v3

    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    add-int/2addr v2, v3

    new-array v2, v2, [S

    .line 928
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->x_buf:[S

    invoke-static {v0, v1, v2, v5, v4}, Lio/github/jaredmdobson/concentus/FindPitchLags;->silk_find_pitch_lags(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SilkEncoderControl;[S[SI)V

    move v5, v4

    .line 937
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->x_buf:[S

    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/NoiseShapeAnalysis;->silk_noise_shape_analysis(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SilkEncoderControl;[SI[SI)V

    .line 946
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->x_buf:[S

    move v4, v5

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/FindPredCoefs;->silk_find_pred_coefs(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SilkEncoderControl;[S[SII)V

    move-object v2, v1

    move v1, v5

    move v5, v4

    .line 955
    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/ProcessGains;->silk_process_gains(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SilkEncoderControl;I)V

    .line 964
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    new-array v3, v3, [I

    .line 965
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->x_buf:[S

    invoke-static {v0, v2, v3, v4, v5}, Lio/github/jaredmdobson/concentus/Filters;->silk_prefilter(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SilkEncoderControl;[I[SI)V

    .line 974
    invoke-virtual {v0, v2, v3, v1}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->silk_LBRR_encode(Lio/github/jaredmdobson/concentus/SilkEncoderControl;[II)V

    .line 981
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object v4, v4, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    iget v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/GainQuantization;->silk_gains_ID([BI)I

    move-result v4

    .line 985
    invoke-virtual {v7, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->Assign(Lio/github/jaredmdobson/concentus/EntropyCoder;)V

    .line 986
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    invoke-virtual {v9, v5}, Lio/github/jaredmdobson/concentus/SilkNSQState;->Assign(Lio/github/jaredmdobson/concentus/SilkNSQState;)V

    .line 987
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v5, v5, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    .line 988
    iget-short v12, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ec_prevLagIndex:S

    .line 989
    iget v15, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ec_prevSignalType:I

    const/16 v1, 0x4fb

    move-object/from16 v17, v3

    .line 990
    new-array v3, v1, [B

    const/16 v18, -0x1

    const/16 v19, 0x100

    move-object/from16 v21, v3

    move-object/from16 v23, v8

    const/4 v1, -0x1

    const/4 v3, -0x1

    const/4 v8, 0x0

    const/16 v20, 0x100

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_0
    if-ne v4, v1, :cond_0

    move/from16 v45, v1

    move/from16 v16, v3

    move/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v33, v7

    move v14, v8

    move-object/from16 v35, v9

    move-object/from16 v43, v10

    move/from16 v37, v12

    move/from16 v40, v15

    move-object/from16 v3, v17

    move-object/from16 v44, v21

    move/from16 v1, v22

    move-object/from16 v42, v23

    :goto_1
    move/from16 v5, p3

    move-object v15, v2

    move/from16 v2, p4

    goto/16 :goto_4

    :cond_0
    if-ne v4, v3, :cond_1

    move/from16 v45, v1

    move/from16 v16, v3

    move/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v33, v7

    move v14, v8

    move-object/from16 v35, v9

    move-object/from16 v43, v10

    move/from16 v37, v12

    move/from16 v40, v15

    move-object/from16 v3, v17

    move-object/from16 v44, v21

    move-object/from16 v42, v23

    move/from16 v1, v24

    goto :goto_1

    :cond_1
    if-lez v8, :cond_2

    .line 999
    invoke-virtual {v6, v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->Assign(Lio/github/jaredmdobson/concentus/EntropyCoder;)V

    .line 1000
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    invoke-virtual {v11, v9}, Lio/github/jaredmdobson/concentus/SilkNSQState;->Assign(Lio/github/jaredmdobson/concentus/SilkNSQState;)V

    .line 1001
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-byte v5, v11, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    .line 1002
    iput-short v12, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ec_prevLagIndex:S

    .line 1003
    iput v15, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ec_prevSignalType:I

    .line 1013
    :cond_2
    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    const/4 v13, 0x1

    if-gt v11, v13, :cond_4

    iget v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->warping_Q16:I

    if-lez v11, :cond_3

    goto :goto_2

    .line 1030
    :cond_3
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    move/from16 v31, v4

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pulses:[B

    move/from16 v32, v5

    iget-object v5, v2, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->PredCoef_Q12:[[S

    iget-object v6, v2, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPCoef_Q14:[S

    move-object/from16 v33, v7

    iget-object v7, v2, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->AR2_Q13:[S

    move/from16 v34, v8

    iget-object v8, v2, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->HarmShapeGain_Q14:[I

    move-object/from16 v35, v9

    iget-object v9, v2, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Tilt_Q14:[I

    move-object/from16 v36, v10

    iget-object v10, v2, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    move-object v0, v11

    iget-object v11, v2, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    move/from16 v37, v12

    iget-object v12, v2, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->pitchL:[I

    move-object/from16 v38, v13

    iget v13, v2, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Lambda_Q10:I

    const/16 v39, 0x0

    iget v14, v2, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTP_scale_Q14:I

    move/from16 v45, v1

    move/from16 v16, v3

    move/from16 v40, v15

    move-object/from16 v3, v17

    move-object/from16 v44, v21

    move-object/from16 v42, v23

    move/from16 v46, v34

    move-object/from16 v43, v36

    move-object/from16 v1, p0

    move-object v15, v2

    move-object/from16 v2, v38

    invoke-virtual/range {v0 .. v14}, Lio/github/jaredmdobson/concentus/SilkNSQState;->silk_NSQ(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SideInfoIndices;[I[B[[S[S[S[I[I[I[I[III)V

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v45, v1

    move/from16 v16, v3

    move/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v33, v7

    move/from16 v46, v8

    move-object/from16 v35, v9

    move-object/from16 v43, v10

    move/from16 v37, v12

    move/from16 v40, v15

    move-object/from16 v3, v17

    move-object/from16 v44, v21

    move-object/from16 v42, v23

    move-object v15, v2

    .line 1014
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pulses:[B

    iget-object v5, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->PredCoef_Q12:[[S

    iget-object v6, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPCoef_Q14:[S

    iget-object v7, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->AR2_Q13:[S

    iget-object v8, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->HarmShapeGain_Q14:[I

    iget-object v9, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Tilt_Q14:[I

    iget-object v10, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    iget-object v11, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    iget-object v12, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->pitchL:[I

    iget v13, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Lambda_Q10:I

    iget v14, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTP_scale_Q14:I

    move-object/from16 v47, v1

    move-object v1, v0

    move-object/from16 v0, v47

    invoke-virtual/range {v0 .. v14}, Lio/github/jaredmdobson/concentus/SilkNSQState;->silk_NSQ_del_dec(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/SideInfoIndices;[I[B[[S[S[S[I[I[I[I[III)V

    :goto_3
    move-object v0, v1

    .line 1054
    iget v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    move-object/from16 v6, p2

    move/from16 v5, p3

    const/4 v2, 0x0

    invoke-static {v0, v6, v1, v2, v5}, Lio/github/jaredmdobson/concentus/EncodeIndices;->silk_encode_indices(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/EntropyCoder;III)V

    .line 1063
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v1, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v2, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pulses:[B

    iget v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    invoke-static {v6, v1, v2, v4, v7}, Lio/github/jaredmdobson/concentus/EncodePulses;->silk_encode_pulses(Lio/github/jaredmdobson/concentus/EntropyCoder;II[BI)V

    .line 1066
    invoke-virtual {v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v1

    if-nez p5, :cond_5

    move/from16 v14, v46

    move/from16 v2, p4

    if-nez v14, :cond_6

    if-gt v1, v2, :cond_6

    goto/16 :goto_d

    :cond_5
    move/from16 v2, p4

    move/from16 v14, v46

    :cond_6
    :goto_4
    const/4 v4, 0x6

    if-ne v14, v4, :cond_9

    if-eqz v25, :cond_15

    move/from16 v4, v31

    move/from16 v7, v45

    if-eq v4, v7, :cond_7

    if-le v1, v2, :cond_15

    :cond_7
    move-object/from16 v8, v42

    .line 1076
    invoke-virtual {v6, v8}, Lio/github/jaredmdobson/concentus/EntropyCoder;->Assign(Lio/github/jaredmdobson/concentus/EntropyCoder;)V

    .line 1077
    iget v1, v8, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    const/16 v9, 0x4fb

    if-gt v1, v9, :cond_8

    const/4 v12, 0x1

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    :goto_5
    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 1078
    iget v1, v8, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    move-object/from16 v10, v44

    const/4 v2, 0x0

    invoke-virtual {v6, v10, v2, v2, v1}, Lio/github/jaredmdobson/concentus/EntropyCoder;->write_buffer([BIII)V

    .line 1079
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    move-object/from16 v11, v43

    invoke-virtual {v1, v11}, Lio/github/jaredmdobson/concentus/SilkNSQState;->Assign(Lio/github/jaredmdobson/concentus/SilkNSQState;)V

    .line 1080
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

    move/from16 v12, v26

    iput-byte v12, v1, Lio/github/jaredmdobson/concentus/SilkShapeState;->LastGainIndex:B

    goto/16 :goto_d

    :cond_9
    move/from16 v12, v26

    move/from16 v4, v31

    move-object/from16 v8, v42

    move-object/from16 v11, v43

    move-object/from16 v10, v44

    move/from16 v7, v45

    const/16 v9, 0x4fb

    const/4 v13, 0x2

    if-le v1, v2, :cond_b

    if-nez v25, :cond_a

    if-lt v14, v13, :cond_a

    .line 1088
    iget v4, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Lambda_Q10:I

    iget v13, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Lambda_Q10:I

    const/4 v9, 0x1

    invoke-static {v4, v13, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_RSHIFT32(III)I

    move-result v4

    iput v4, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Lambda_Q10:I

    move/from16 v26, v12

    move/from16 v4, v27

    move/from16 v9, v28

    const/16 v13, 0x4fb

    const/16 v16, -0x1

    const/16 v29, 0x0

    goto :goto_6

    :cond_a
    const/4 v9, 0x1

    move/from16 v24, v1

    move/from16 v16, v4

    move/from16 v26, v12

    move/from16 v9, v20

    move/from16 v4, v27

    const/16 v13, 0x4fb

    const/16 v29, 0x1

    :goto_6
    const/16 v41, 0x1

    goto :goto_8

    :cond_b
    const/4 v9, 0x1

    add-int/lit8 v13, v2, -0x5

    if-ge v1, v13, :cond_15

    if-eq v4, v7, :cond_d

    .line 1104
    invoke-virtual {v8, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->Assign(Lio/github/jaredmdobson/concentus/EntropyCoder;)V

    .line 1105
    iget v7, v6, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    const/16 v13, 0x4fb

    if-gt v7, v13, :cond_c

    const/4 v12, 0x1

    goto :goto_7

    :cond_c
    const/4 v12, 0x0

    :goto_7
    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 1106
    invoke-virtual {v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->get_buffer()[B

    move-result-object v7

    iget v12, v6, Lio/github/jaredmdobson/concentus/EntropyCoder;->offs:I

    const/4 v9, 0x0

    const/16 v41, 0x1

    invoke-static {v7, v9, v10, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1107
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    invoke-virtual {v11, v7}, Lio/github/jaredmdobson/concentus/SilkNSQState;->Assign(Lio/github/jaredmdobson/concentus/SilkNSQState;)V

    .line 1108
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

    iget-byte v7, v7, Lio/github/jaredmdobson/concentus/SilkShapeState;->LastGainIndex:B

    move/from16 v22, v1

    move/from16 v26, v7

    move/from16 v9, v28

    const/16 v25, 0x1

    move v7, v4

    move/from16 v4, v20

    goto :goto_8

    :cond_d
    const/16 v13, 0x4fb

    const/16 v41, 0x1

    move/from16 v22, v1

    move/from16 v26, v12

    move/from16 v4, v20

    move/from16 v9, v28

    const/16 v25, 0x1

    :goto_8
    and-int v12, v25, v29

    if-nez v12, :cond_f

    sub-int v12, v1, v2

    const/4 v13, 0x7

    .line 1118
    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v12

    const/16 v30, 0x7

    iget v13, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    div-int/2addr v12, v13

    add-int/lit16 v12, v12, 0x800

    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_log2lin(I)I

    move-result v12

    const/high16 v13, 0x20000

    .line 1119
    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_32(II)I

    move-result v12

    if-le v1, v2, :cond_e

    const v1, 0x14ccd

    .line 1121
    invoke-static {v12, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_32(II)I

    move-result v12

    :cond_e
    move/from16 v1, v20

    .line 1124
    invoke-static {v12, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v1

    goto :goto_9

    :cond_f
    const/16 v30, 0x7

    sub-int v1, v9, v4

    sub-int v12, v2, v22

    .line 1127
    invoke-static {v1, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v12

    sub-int v13, v24, v22

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v12

    add-int/2addr v12, v4

    int-to-short v12, v12

    const/4 v13, 0x2

    .line 1129
    invoke-static {v4, v1, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_RSHIFT32(III)I

    move-result v2

    if-le v12, v2, :cond_10

    .line 1130
    invoke-static {v4, v1, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_RSHIFT32(III)I

    move-result v1

    :goto_9
    int-to-short v1, v1

    goto :goto_a

    .line 1131
    :cond_10
    invoke-static {v9, v1, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB_RSHIFT32(III)I

    move-result v2

    if-ge v12, v2, :cond_11

    .line 1132
    invoke-static {v9, v1, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB_RSHIFT32(III)I

    move-result v1

    goto :goto_9

    :cond_11
    move v1, v12

    :goto_a
    const/4 v2, 0x0

    .line 1136
    :goto_b
    iget v12, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v2, v12, :cond_12

    .line 1137
    iget-object v12, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    iget-object v13, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->GainsUnq_Q16:[I

    aget v13, v13, v2

    invoke-static {v13, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v13

    move/from16 v20, v1

    const/16 v1, 0x8

    invoke-static {v13, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v1

    aput v1, v12, v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v20

    goto :goto_b

    :cond_12
    move/from16 v20, v1

    .line 1141
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

    iget-byte v2, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->lastGainIndexPrev:B

    iput-byte v2, v1, Lio/github/jaredmdobson/concentus/SilkShapeState;->LastGainIndex:B

    .line 1142
    new-instance v1, Lio/github/jaredmdobson/concentus/BoxedValueByte;

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

    iget-byte v2, v2, Lio/github/jaredmdobson/concentus/SilkShapeState;->LastGainIndex:B

    invoke-direct {v1, v2}, Lio/github/jaredmdobson/concentus/BoxedValueByte;-><init>(B)V

    .line 1143
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object v2, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    iget-object v12, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    const/4 v13, 0x2

    if-ne v5, v13, :cond_13

    const/4 v13, 0x1

    goto :goto_c

    :cond_13
    const/4 v13, 0x0

    :goto_c
    move-object/from16 v17, v3

    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    invoke-static {v2, v12, v1, v13, v3}, Lio/github/jaredmdobson/concentus/GainQuantization;->silk_gains_quant([B[ILio/github/jaredmdobson/concentus/BoxedValueByte;II)V

    .line 1145
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

    iget-byte v1, v1, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    iput-byte v1, v2, Lio/github/jaredmdobson/concentus/SilkShapeState;->LastGainIndex:B

    .line 1148
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/GainQuantization;->silk_gains_ID([BI)I

    move-result v1

    add-int/lit8 v2, v14, 0x1

    move/from16 v27, v4

    move-object/from16 v23, v8

    move/from16 v28, v9

    move-object/from16 v21, v10

    move-object v10, v11

    move/from16 v3, v16

    move/from16 v5, v32

    move-object/from16 v9, v35

    move/from16 v12, v37

    const/4 v11, 0x3

    const/4 v14, 0x0

    move v4, v1

    move v8, v2

    move v1, v7

    move-object v2, v15

    move-object/from16 v7, v33

    move/from16 v15, v40

    goto/16 :goto_0

    :cond_14
    move-object v15, v1

    :cond_15
    :goto_d
    const/16 v30, 0x7

    const/16 v41, 0x1

    .line 1153
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->x_buf:[S

    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int/lit8 v4, v4, 0x5

    add-int/2addr v3, v4

    const/4 v9, 0x0

    invoke-static {v1, v2, v9, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([SIII)V

    .line 1156
    iget v1, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prefillFlag:I

    if-eqz v1, :cond_16

    move-object/from16 v1, p1

    .line 1158
    iput v9, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return v9

    :cond_16
    move-object/from16 v1, p1

    .line 1164
    iget-object v2, v15, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->pitchL:[I

    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    iput v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prevLag:I

    .line 1165
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v2, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    iput-byte v2, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prevSignalType:B

    .line 1174
    iput v9, v0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    .line 1176
    invoke-virtual {v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v2

    iput v2, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return v9
.end method
