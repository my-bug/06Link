.class Lio/github/jaredmdobson/concentus/EncControlState;
.super Ljava/lang/Object;
.source "EncControlState.java"


# instance fields
.field API_sampleRate:I

.field allowBandwidthSwitch:I

.field bitRate:I

.field complexity:I

.field desiredInternalSampleRate:I

.field inWBmodeWithoutVariableLP:I

.field internalSampleRate:I

.field maxBits:I

.field maxInternalSampleRate:I

.field minInternalSampleRate:I

.field nChannelsAPI:I

.field nChannelsInternal:I

.field opusCanSwitch:I

.field packetLossPercentage:I

.field payloadSize_ms:I

.field reducedDependency:I

.field stereoWidth_Q14:I

.field switchReady:I

.field toMono:I

.field useCBR:I

.field useDTX:I

.field useInBandFEC:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsAPI:I

    .line 43
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    .line 46
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->API_sampleRate:I

    .line 49
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    .line 52
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->minInternalSampleRate:I

    .line 55
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->desiredInternalSampleRate:I

    .line 58
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    .line 61
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    .line 64
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->packetLossPercentage:I

    .line 67
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->complexity:I

    .line 70
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->useInBandFEC:I

    .line 73
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->useDTX:I

    .line 76
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->useCBR:I

    .line 79
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->maxBits:I

    .line 82
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->toMono:I

    .line 85
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->opusCanSwitch:I

    .line 88
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->reducedDependency:I

    .line 91
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->internalSampleRate:I

    .line 94
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->allowBandwidthSwitch:I

    .line 97
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->inWBmodeWithoutVariableLP:I

    .line 100
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->stereoWidth_Q14:I

    .line 103
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->switchReady:I

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsAPI:I

    .line 107
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    .line 108
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->API_sampleRate:I

    .line 109
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    .line 110
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->minInternalSampleRate:I

    .line 111
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->desiredInternalSampleRate:I

    .line 112
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    .line 113
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    .line 114
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->packetLossPercentage:I

    .line 115
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->complexity:I

    .line 116
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->useInBandFEC:I

    .line 117
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->useDTX:I

    .line 118
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->useCBR:I

    .line 119
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->maxBits:I

    .line 120
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->toMono:I

    .line 121
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->opusCanSwitch:I

    .line 122
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->reducedDependency:I

    .line 123
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->internalSampleRate:I

    .line 124
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->allowBandwidthSwitch:I

    .line 125
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->inWBmodeWithoutVariableLP:I

    .line 126
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->stereoWidth_Q14:I

    .line 127
    iput v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->switchReady:I

    return-void
.end method

.method check_control_input()I
    .locals 7

    .line 135
    iget v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->API_sampleRate:I

    const/16 v1, 0x3e80

    const/16 v2, 0x2ee0

    const/4 v3, 0x0

    const/16 v4, 0x1f40

    if-eq v0, v4, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/16 v5, 0x5dc0

    if-eq v0, v5, :cond_0

    const/16 v5, 0x7d00

    if-eq v0, v5, :cond_0

    const v5, 0xac44

    if-eq v0, v5, :cond_0

    const v5, 0xbb80

    if-ne v0, v5, :cond_15

    :cond_0
    iget v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->desiredInternalSampleRate:I

    if-eq v0, v4, :cond_1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_15

    :cond_1
    iget v5, p0, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    if-eq v5, v4, :cond_2

    if-eq v5, v2, :cond_2

    if-ne v5, v1, :cond_15

    :cond_2
    iget v6, p0, Lio/github/jaredmdobson/concentus/EncControlState;->minInternalSampleRate:I

    if-eq v6, v4, :cond_3

    if-eq v6, v2, :cond_3

    if-ne v6, v1, :cond_15

    :cond_3
    if-gt v6, v0, :cond_15

    if-lt v5, v0, :cond_15

    if-le v6, v5, :cond_4

    goto/16 :goto_7

    .line 157
    :cond_4
    iget v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v2, 0x14

    if-eq v0, v2, :cond_5

    const/16 v2, 0x28

    if-eq v0, v2, :cond_5

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_5

    .line 161
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 162
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_ENC_PACKET_SIZE_NOT_SUPPORTED:I

    return v0

    .line 164
    :cond_5
    iget v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->packetLossPercentage:I

    if-ltz v0, :cond_14

    const/16 v2, 0x64

    if-le v0, v2, :cond_6

    goto :goto_6

    .line 168
    :cond_6
    iget v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->useDTX:I

    if-ltz v0, :cond_13

    const/4 v2, 0x1

    if-le v0, v2, :cond_7

    goto :goto_5

    .line 172
    :cond_7
    iget v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->useCBR:I

    if-ltz v0, :cond_12

    if-le v0, v2, :cond_8

    goto :goto_4

    .line 176
    :cond_8
    iget v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->useInBandFEC:I

    if-ltz v0, :cond_11

    if-le v0, v2, :cond_9

    goto :goto_3

    .line 180
    :cond_9
    iget v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsAPI:I

    if-lt v0, v2, :cond_10

    const/4 v4, 0x2

    if-le v0, v4, :cond_a

    goto :goto_2

    .line 184
    :cond_a
    iget v5, p0, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-lt v5, v2, :cond_f

    if-le v5, v4, :cond_b

    goto :goto_1

    :cond_b
    if-le v5, v0, :cond_c

    .line 189
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 190
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_ENC_INVALID_NUMBER_OF_CHANNELS_ERROR:I

    return v0

    .line 192
    :cond_c
    iget v0, p0, Lio/github/jaredmdobson/concentus/EncControlState;->complexity:I

    if-ltz v0, :cond_e

    if-le v0, v1, :cond_d

    goto :goto_0

    .line 197
    :cond_d
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    return v0

    .line 193
    :cond_e
    :goto_0
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 194
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_ENC_INVALID_COMPLEXITY_SETTING:I

    return v0

    .line 185
    :cond_f
    :goto_1
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 186
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_ENC_INVALID_NUMBER_OF_CHANNELS_ERROR:I

    return v0

    .line 181
    :cond_10
    :goto_2
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 182
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_ENC_INVALID_NUMBER_OF_CHANNELS_ERROR:I

    return v0

    .line 177
    :cond_11
    :goto_3
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 178
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_ENC_INVALID_INBAND_FEC_SETTING:I

    return v0

    .line 173
    :cond_12
    :goto_4
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 174
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_ENC_INVALID_CBR_SETTING:I

    return v0

    .line 169
    :cond_13
    :goto_5
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 170
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_ENC_INVALID_DTX_SETTING:I

    return v0

    .line 165
    :cond_14
    :goto_6
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 166
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_ENC_INVALID_LOSS_RATE:I

    return v0

    .line 154
    :cond_15
    :goto_7
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 155
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_ENC_FS_NOT_SUPPORTED:I

    return v0
.end method
