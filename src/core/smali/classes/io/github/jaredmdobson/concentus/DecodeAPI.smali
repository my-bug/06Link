.class Lio/github/jaredmdobson/concentus/DecodeAPI;
.super Ljava/lang/Object;
.source "DecodeAPI.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_Decode(Lio/github/jaredmdobson/concentus/SilkDecoder;Lio/github/jaredmdobson/concentus/DecControlState;IILio/github/jaredmdobson/concentus/EntropyCoder;[SILio/github/jaredmdobson/concentus/BoxedValueInt;)I
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p2

    move-object/from16 v3, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    .line 71
    sget v2, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    .line 73
    new-instance v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v12, 0x0

    invoke-direct {v6, v12}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v13, 0x2

    .line 75
    new-array v14, v13, [I

    .line 79
    new-array v15, v13, [I

    aput v12, v15, v12

    const/4 v4, 0x1

    aput v12, v15, v4

    .line 82
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->channel_state:[Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

    .line 86
    iput v12, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 88
    iget v8, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    if-eq v8, v4, :cond_1

    iget v8, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    if-ne v8, v13, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-eqz p3, :cond_2

    const/4 v8, 0x0

    .line 98
    :goto_2
    iget v13, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    if-ge v8, v13, :cond_2

    .line 99
    aget-object v13, v5, v8

    iput v12, v13, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesDecoded:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 105
    :cond_2
    iget v8, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    iget v13, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->nChannelsInternal:I

    if-le v8, v13, :cond_3

    .line 106
    aget-object v8, v5, v4

    invoke-virtual {v8}, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->silk_init_decoder()I

    move-result v8

    add-int/2addr v2, v8

    .line 109
    :cond_3
    iget v8, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    const/16 v13, 0x3e8

    if-ne v8, v4, :cond_4

    iget v8, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->nChannelsInternal:I

    const/4 v12, 0x2

    const/16 v24, 0x0

    if-ne v8, v12, :cond_5

    iget v8, v1, Lio/github/jaredmdobson/concentus/DecControlState;->internalSampleRate:I

    aget-object v12, v5, v24

    iget v12, v12, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    mul-int/lit16 v12, v12, 0x3e8

    if-ne v8, v12, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_4
    const/16 v24, 0x0

    :cond_5
    const/4 v12, 0x0

    .line 112
    :goto_3
    aget-object v8, v5, v24

    iget v8, v8, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesDecoded:I

    if-nez v8, :cond_d

    const/4 v8, 0x0

    .line 113
    :goto_4
    iget v13, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    if-ge v8, v13, :cond_c

    .line 115
    iget v13, v1, Lio/github/jaredmdobson/concentus/DecControlState;->payloadSize_ms:I

    if-nez v13, :cond_6

    .line 117
    aget-object v13, v5, v8

    iput v4, v13, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    .line 118
    aget-object v13, v5, v8

    const/4 v4, 0x2

    iput v4, v13, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    goto :goto_5

    :cond_6
    const/4 v4, 0x2

    .line 119
    iget v13, v1, Lio/github/jaredmdobson/concentus/DecControlState;->payloadSize_ms:I

    const/16 v4, 0xa

    if-ne v13, v4, :cond_7

    .line 120
    aget-object v4, v5, v8

    const/4 v13, 0x1

    iput v13, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    .line 121
    aget-object v4, v5, v8

    const/4 v13, 0x2

    iput v13, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    goto :goto_5

    .line 122
    :cond_7
    iget v4, v1, Lio/github/jaredmdobson/concentus/DecControlState;->payloadSize_ms:I

    const/16 v13, 0x14

    if-ne v4, v13, :cond_8

    .line 123
    aget-object v4, v5, v8

    const/4 v13, 0x1

    iput v13, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    .line 124
    aget-object v4, v5, v8

    const/4 v13, 0x4

    iput v13, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    goto :goto_5

    :cond_8
    const/4 v13, 0x4

    .line 125
    iget v4, v1, Lio/github/jaredmdobson/concentus/DecControlState;->payloadSize_ms:I

    const/16 v13, 0x28

    if-ne v4, v13, :cond_9

    .line 126
    aget-object v4, v5, v8

    const/4 v13, 0x2

    iput v13, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    .line 127
    aget-object v4, v5, v8

    const/4 v13, 0x4

    iput v13, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    goto :goto_5

    :cond_9
    const/4 v13, 0x4

    .line 128
    iget v4, v1, Lio/github/jaredmdobson/concentus/DecControlState;->payloadSize_ms:I

    const/16 v13, 0x3c

    if-ne v4, v13, :cond_b

    .line 129
    aget-object v4, v5, v8

    const/4 v13, 0x3

    iput v13, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    .line 130
    aget-object v4, v5, v8

    const/4 v13, 0x4

    iput v13, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    .line 135
    :goto_5
    iget v4, v1, Lio/github/jaredmdobson/concentus/DecControlState;->internalSampleRate:I

    const/16 v26, 0xa

    shr-int/lit8 v4, v4, 0xa

    const/16 v17, 0x1

    add-int/lit8 v4, v4, 0x1

    const/16 v13, 0x8

    if-eq v4, v13, :cond_a

    const/16 v13, 0xc

    if-eq v4, v13, :cond_a

    const/16 v13, 0x10

    if-eq v4, v13, :cond_a

    .line 137
    invoke-static/range {v24 .. v24}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 138
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_DEC_INVALID_SAMPLING_FREQUENCY:I

    return v0

    .line 140
    :cond_a
    aget-object v13, v5, v8

    move/from16 v18, v2

    iget v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->API_sampleRate:I

    invoke-virtual {v13, v4, v2}, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->silk_decoder_set_fs(II)I

    move-result v2

    add-int v2, v18, v2

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    goto/16 :goto_4

    .line 132
    :cond_b
    invoke-static/range {v24 .. v24}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 133
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_DEC_INVALID_FRAME_SIZE:I

    return v0

    :cond_c
    move/from16 v18, v2

    .line 144
    :cond_d
    iget v4, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsAPI:I

    const/4 v13, 0x2

    if-ne v4, v13, :cond_f

    iget v4, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    if-ne v4, v13, :cond_f

    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->nChannelsAPI:I

    const/4 v8, 0x1

    if-eq v4, v8, :cond_e

    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->nChannelsInternal:I

    if-ne v4, v8, :cond_f

    .line 145
    :cond_e
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoDecodeState;

    iget-object v4, v4, Lio/github/jaredmdobson/concentus/StereoDecodeState;->pred_prev_Q13:[S

    const/4 v8, 0x0

    const/16 v17, 0x1

    invoke-static {v4, v8, v13}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 146
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoDecodeState;

    iget-object v4, v4, Lio/github/jaredmdobson/concentus/StereoDecodeState;->sSide:[S

    invoke-static {v4, v8, v13}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 147
    aget-object v4, v5, v17

    iget-object v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    aget-object v13, v5, v8

    iget-object v8, v13, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    invoke-virtual {v4, v8}, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Assign(Lio/github/jaredmdobson/concentus/SilkResamplerState;)V

    .line 149
    :cond_f
    iget v4, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsAPI:I

    iput v4, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->nChannelsAPI:I

    .line 150
    iget v4, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    iput v4, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->nChannelsInternal:I

    .line 152
    iget v4, v1, Lio/github/jaredmdobson/concentus/DecControlState;->API_sampleRate:I

    const v8, 0xbb80

    if-gt v4, v8, :cond_3c

    iget v4, v1, Lio/github/jaredmdobson/concentus/DecControlState;->API_sampleRate:I

    const/16 v8, 0x1f40

    if-ge v4, v8, :cond_10

    goto/16 :goto_27

    :cond_10
    const/4 v13, 0x1

    if-eq v7, v13, :cond_1c

    const/16 v24, 0x0

    .line 157
    aget-object v4, v5, v24

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesDecoded:I

    if-nez v4, :cond_1c

    const/4 v4, 0x0

    .line 160
    :goto_6
    iget v8, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    if-ge v4, v8, :cond_12

    const/4 v8, 0x0

    .line 161
    :goto_7
    aget-object v13, v5, v4

    iget v13, v13, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    move/from16 v19, v4

    move-object/from16 v18, v5

    const-wide/16 v4, 0x1

    if-ge v8, v13, :cond_11

    .line 162
    aget-object v13, v18, v19

    iget-object v13, v13, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->VAD_flags:[I

    invoke-virtual {v3, v4, v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v4

    aput v4, v13, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v18

    move/from16 v4, v19

    goto :goto_7

    .line 164
    :cond_11
    aget-object v8, v18, v19

    invoke-virtual {v3, v4, v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v4

    iput v4, v8, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flag:I

    add-int/lit8 v4, v19, 0x1

    move-object/from16 v5, v18

    goto :goto_6

    :cond_12
    move-object/from16 v18, v5

    const/4 v4, 0x0

    .line 167
    :goto_8
    iget v5, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    if-ge v4, v5, :cond_15

    .line 168
    aget-object v5, v18, v4

    iget-object v5, v5, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flags:[I

    const/4 v8, 0x0

    const/4 v13, 0x3

    invoke-static {v5, v8, v13}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 169
    aget-object v5, v18, v4

    iget v5, v5, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flag:I

    if-eqz v5, :cond_14

    .line 170
    aget-object v5, v18, v4

    iget v5, v5, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    const/4 v13, 0x1

    if-ne v5, v13, :cond_13

    .line 171
    aget-object v5, v18, v4

    iget-object v5, v5, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flags:[I

    aput v13, v5, v8

    goto :goto_a

    .line 173
    :cond_13
    sget-object v5, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LBRR_flags_iCDF_ptr:[[S

    aget-object v8, v18, v4

    iget v8, v8, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    const/16 v23, 0x2

    add-int/lit8 v8, v8, -0x2

    aget-object v5, v5, v8

    const/16 v8, 0x8

    invoke-virtual {v3, v5, v8}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v5

    add-int/2addr v5, v13

    const/4 v8, 0x0

    :goto_9
    const/16 v17, 0x1

    .line 174
    aget-object v13, v18, v4

    iget v13, v13, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    if-ge v8, v13, :cond_14

    .line 175
    aget-object v13, v18, v4

    iget-object v13, v13, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flags:[I

    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v19

    and-int/lit8 v19, v19, 0x1

    aput v19, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_14
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_15
    if-nez v7, :cond_1b

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    const/16 v24, 0x0

    .line 183
    aget-object v8, v18, v24

    iget v8, v8, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    if-ge v4, v8, :cond_1a

    const/4 v8, 0x0

    .line 184
    :goto_c
    iget v13, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    if-ge v8, v13, :cond_19

    .line 185
    aget-object v13, v18, v8

    iget-object v13, v13, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flags:[I

    aget v13, v13, v4

    if-eqz v13, :cond_18

    const/16 v13, 0x140

    .line 186
    new-array v13, v13, [S

    move/from16 v19, v2

    .line 189
    iget v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    move/from16 v20, v8

    const/4 v8, 0x2

    if-ne v2, v8, :cond_16

    if-nez v20, :cond_16

    .line 190
    invoke-static {v3, v15}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_decode_pred(Lio/github/jaredmdobson/concentus/EntropyCoder;[I)V

    const/16 v17, 0x1

    .line 191
    aget-object v2, v18, v17

    iget-object v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flags:[I

    aget v2, v2, v4

    if-nez v2, :cond_16

    .line 192
    new-instance v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v2, v5}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 193
    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_decode_mid_only(Lio/github/jaredmdobson/concentus/EntropyCoder;Lio/github/jaredmdobson/concentus/BoxedValueInt;)V

    .line 194
    iget v5, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    :cond_16
    if-lez v4, :cond_17

    .line 198
    aget-object v2, v18, v20

    iget-object v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flags:[I

    add-int/lit8 v8, v4, -0x1

    aget v2, v2, v8

    if-eqz v2, :cond_17

    const/4 v2, 0x2

    goto :goto_d

    :cond_17
    const/4 v2, 0x0

    .line 203
    :goto_d
    aget-object v8, v18, v20

    move/from16 v21, v5

    const/4 v5, 0x1

    invoke-static {v8, v3, v4, v5, v2}, Lio/github/jaredmdobson/concentus/DecodeIndices;->silk_decode_indices(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/EntropyCoder;III)V

    .line 204
    aget-object v2, v18, v20

    iget-object v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v2, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    aget-object v5, v18, v20

    iget-object v5, v5, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v5, v5, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    aget-object v8, v18, v20

    iget v8, v8, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    invoke-static {v3, v13, v2, v5, v8}, Lio/github/jaredmdobson/concentus/DecodePulses;->silk_decode_pulses(Lio/github/jaredmdobson/concentus/EntropyCoder;[SIII)V

    move/from16 v5, v21

    goto :goto_e

    :cond_18
    move/from16 v19, v2

    move/from16 v20, v8

    :goto_e
    add-int/lit8 v8, v20, 0x1

    move/from16 v2, v19

    goto :goto_c

    :cond_19
    move/from16 v19, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_1a
    move/from16 v19, v2

    goto :goto_10

    :cond_1b
    move/from16 v19, v2

    goto :goto_f

    :cond_1c
    move/from16 v19, v2

    move-object/from16 v18, v5

    :goto_f
    const/4 v5, 0x0

    .line 213
    :goto_10
    iget v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    const/4 v13, 0x2

    if-ne v2, v13, :cond_22

    if-eqz v7, :cond_1e

    if-ne v7, v13, :cond_1d

    const/16 v24, 0x0

    .line 214
    aget-object v2, v18, v24

    iget-object v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flags:[I

    aget-object v4, v18, v24

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesDecoded:I

    aget v2, v2, v4

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v13, :cond_22

    .line 228
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoDecodeState;

    iget-object v4, v4, Lio/github/jaredmdobson/concentus/StereoDecodeState;->pred_prev_Q13:[S

    aget-short v4, v4, v2

    aput v4, v15, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v13, 0x2

    goto :goto_11

    .line 216
    :cond_1e
    :goto_12
    invoke-static {v3, v15}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_decode_pred(Lio/github/jaredmdobson/concentus/EntropyCoder;[I)V

    const/16 v17, 0x1

    if-nez v7, :cond_1f

    .line 218
    aget-object v2, v18, v17

    iget-object v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->VAD_flags:[I

    const/16 v24, 0x0

    aget-object v4, v18, v24

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesDecoded:I

    aget v2, v2, v4

    if-eqz v2, :cond_20

    goto :goto_13

    :cond_1f
    const/16 v24, 0x0

    :goto_13
    const/4 v13, 0x2

    if-ne v7, v13, :cond_21

    aget-object v2, v18, v17

    iget-object v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flags:[I

    aget-object v4, v18, v24

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesDecoded:I

    aget v2, v2, v4

    if-nez v2, :cond_21

    .line 220
    :cond_20
    new-instance v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v2, v5}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 221
    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_decode_mid_only(Lio/github/jaredmdobson/concentus/EntropyCoder;Lio/github/jaredmdobson/concentus/BoxedValueInt;)V

    .line 222
    iget v2, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move v13, v2

    goto :goto_14

    :cond_21
    const/4 v13, 0x0

    goto :goto_14

    :cond_22
    move v13, v5

    .line 234
    :goto_14
    iget v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_23

    if-nez v13, :cond_23

    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->prev_decode_only_middle:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_23

    .line 235
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->channel_state:[Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

    aget-object v2, v2, v8

    iget-object v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->outBuf:[S

    const/16 v4, 0x1e0

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 236
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->channel_state:[Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

    aget-object v2, v2, v8

    iget-object v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->sLPC_Q14_buf:[I

    const/16 v4, 0x10

    invoke-static {v2, v5, v4}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 237
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->channel_state:[Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

    aget-object v2, v2, v8

    const/16 v4, 0x64

    iput v4, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lagPrev:I

    .line 238
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->channel_state:[Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

    aget-object v2, v2, v8

    const/16 v4, 0xa

    iput-byte v4, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LastGainIndex:B

    .line 239
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->channel_state:[Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

    aget-object v2, v2, v8

    iput v5, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevSignalType:I

    .line 240
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->channel_state:[Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

    aget-object v2, v2, v8

    iput v8, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->first_frame_after_reset:I

    .line 246
    :cond_23
    iget v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->internalSampleRate:I

    iget v4, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    mul-int v2, v2, v4

    iget v4, v1, Lio/github/jaredmdobson/concentus/DecControlState;->API_sampleRate:I

    iget v5, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsAPI:I

    mul-int v4, v4, v5

    if-ge v2, v4, :cond_24

    const/16 v27, 0x1

    goto :goto_15

    :cond_24
    const/16 v27, 0x0

    :goto_15
    if-eqz v27, :cond_25

    const/16 v24, 0x0

    .line 251
    aput v10, v14, v24

    .line 252
    aget-object v2, v18, v24

    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v2, v10

    const/4 v8, 0x2

    add-int/2addr v2, v8

    const/16 v17, 0x1

    aput v2, v14, v17

    move-object v4, v9

    goto :goto_16

    :cond_25
    const/4 v8, 0x2

    const/16 v24, 0x0

    .line 254
    iget v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    aget-object v4, v18, v24

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v4, v8

    mul-int v2, v2, v4

    new-array v2, v2, [S

    .line 256
    aput v24, v14, v24

    .line 257
    aget-object v4, v18, v24

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v4, v8

    const/16 v17, 0x1

    aput v4, v14, v17

    move-object v4, v2

    :goto_16
    if-nez v7, :cond_27

    if-nez v13, :cond_26

    const/4 v2, 0x1

    goto :goto_17

    :cond_26
    const/4 v2, 0x0

    :goto_17
    const/4 v8, 0x1

    goto :goto_19

    .line 263
    :cond_27
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->prev_decode_only_middle:I

    if-eqz v2, :cond_2a

    iget v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    if-ne v2, v8, :cond_28

    if-ne v7, v8, :cond_28

    const/4 v8, 0x1

    aget-object v2, v18, v8

    iget-object v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flags:[I

    aget-object v5, v18, v8

    iget v5, v5, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesDecoded:I

    aget v2, v2, v5

    if-ne v2, v8, :cond_29

    goto :goto_18

    :cond_28
    const/4 v8, 0x1

    :cond_29
    const/4 v2, 0x0

    goto :goto_19

    :cond_2a
    const/4 v8, 0x1

    :goto_18
    const/4 v2, 0x1

    :goto_19
    move/from16 v16, v2

    move/from16 v28, v19

    const/4 v2, 0x0

    .line 269
    :goto_1a
    iget v5, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    if-ge v2, v5, :cond_31

    if-eqz v2, :cond_2c

    if-eqz v16, :cond_2b

    goto :goto_1b

    .line 289
    :cond_2b
    aget v5, v14, v2

    const/4 v8, 0x2

    add-int/2addr v5, v8

    iget v8, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move/from16 v19, v2

    const/4 v2, 0x0

    invoke-static {v4, v2, v5, v8}, Lio/github/jaredmdobson/concentus/Arrays;->MemSetWithOffset([SSII)V

    move/from16 v30, v12

    move-object/from16 v29, v18

    const/4 v12, 0x1

    goto :goto_1e

    :cond_2c
    :goto_1b
    move/from16 v19, v2

    const/4 v2, 0x0

    .line 274
    aget-object v5, v18, v2

    iget v2, v5, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesDecoded:I

    sub-int v2, v2, v19

    if-gtz v2, :cond_2d

    const/4 v8, 0x0

    goto :goto_1d

    :cond_2d
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2f

    .line 279
    aget-object v5, v18, v19

    iget-object v5, v5, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LBRR_flags:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v5, v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x2

    goto :goto_1c

    :cond_2e
    const/4 v2, 0x0

    :goto_1c
    move v8, v2

    goto :goto_1d

    :cond_2f
    if-lez v19, :cond_30

    .line 280
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->prev_decode_only_middle:I

    if-eqz v2, :cond_30

    const/4 v8, 0x1

    goto :goto_1d

    :cond_30
    const/4 v8, 0x2

    .line 287
    :goto_1d
    aget-object v2, v18, v19

    aget v5, v14, v19

    const/16 v23, 0x2

    add-int/lit8 v5, v5, 0x2

    move/from16 v30, v12

    move-object/from16 v29, v18

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v8}, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->silk_decode_frame(Lio/github/jaredmdobson/concentus/EntropyCoder;[SILio/github/jaredmdobson/concentus/BoxedValueInt;II)I

    move-result v2

    add-int v28, v28, v2

    .line 291
    :goto_1e
    aget-object v2, v29, v19

    iget v3, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesDecoded:I

    add-int/2addr v3, v12

    iput v3, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nFramesDecoded:I

    add-int/lit8 v2, v19, 0x1

    move-object/from16 v3, p4

    move-object/from16 v18, v29

    move/from16 v12, v30

    const/4 v8, 0x1

    goto :goto_1a

    :cond_31
    move/from16 v30, v12

    move-object/from16 v29, v18

    const/4 v12, 0x1

    .line 294
    iget v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsAPI:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_32

    iget v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    if-ne v2, v8, :cond_32

    move-object/from16 v20, v15

    .line 296
    iget-object v15, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoDecodeState;

    const/4 v8, 0x0

    aget v17, v14, v8

    aget v19, v14, v12

    aget-object v2, v29, v8

    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    iget v3, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move-object/from16 v18, v4

    move/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v16, v4

    invoke-static/range {v15 .. v22}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_MS_to_LR(Lio/github/jaredmdobson/concentus/StereoDecodeState;[SI[SI[III)V

    const/4 v5, 0x2

    goto :goto_1f

    :cond_32
    const/4 v8, 0x0

    .line 299
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoDecodeState;

    iget-object v2, v2, Lio/github/jaredmdobson/concentus/StereoDecodeState;->sMid:[S

    aget v3, v14, v8

    const/4 v5, 0x2

    invoke-static {v2, v8, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    aget v2, v14, v8

    iget v3, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/2addr v2, v3

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoDecodeState;

    iget-object v3, v3, Lio/github/jaredmdobson/concentus/StereoDecodeState;->sMid:[S

    invoke-static {v4, v2, v3, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    :goto_1f
    iget v2, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v3, v1, Lio/github/jaredmdobson/concentus/DecControlState;->API_sampleRate:I

    mul-int v2, v2, v3

    aget-object v3, v29, v8

    iget v3, v3, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    const/16 v8, 0x3e8

    invoke-static {v3, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v3

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v2

    iput v2, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 307
    iget v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsAPI:I

    if-ne v2, v5, :cond_33

    .line 308
    iget v2, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    new-array v2, v2, [S

    move-object/from16 v16, v2

    const/16 v17, 0x0

    goto :goto_20

    :cond_33
    move-object/from16 v16, v9

    move/from16 v17, v10

    :goto_20
    if-eqz v27, :cond_34

    .line 317
    iget v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    const/4 v8, 0x0

    aget-object v3, v29, v8

    iget v3, v3, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v3, v5

    mul-int v2, v2, v3

    new-array v4, v2, [S

    .line 318
    iget v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    aget-object v3, v29, v8

    iget v3, v3, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v3, v5

    mul-int v2, v2, v3

    invoke-static {v9, v10, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    aput v8, v14, v8

    .line 321
    aget-object v2, v29, v8

    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v2, v5

    aput v2, v14, v12

    :cond_34
    move-object/from16 v18, v4

    const/4 v2, 0x0

    .line 323
    :goto_21
    iget v3, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsAPI:I

    iget v4, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 326
    aget-object v3, v29, v2

    iget-object v15, v3, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    aget v3, v14, v2

    add-int/lit8 v19, v3, 0x1

    iget v3, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move/from16 v20, v3

    invoke-static/range {v15 .. v20}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)I

    move-result v3

    add-int v28, v28, v3

    .line 329
    iget v3, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsAPI:I

    const/4 v8, 0x2

    if-ne v3, v8, :cond_35

    add-int v3, v10, v2

    const/4 v4, 0x0

    .line 331
    :goto_22
    iget v5, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-ge v4, v5, :cond_35

    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v3

    add-int v8, v17, v4

    .line 332
    aget-short v8, v16, v8

    aput-short v8, v9, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 338
    :cond_36
    iget v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsAPI:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_38

    iget v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    if-ne v2, v12, :cond_38

    if-eqz v30, :cond_37

    .line 342
    aget-object v2, v29, v12

    iget-object v15, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    const/16 v24, 0x0

    aget v2, v14, v24

    add-int/lit8 v19, v2, 0x1

    iget v2, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move/from16 v20, v2

    invoke-static/range {v15 .. v20}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)I

    move-result v2

    add-int v28, v28, v2

    const/4 v8, 0x0

    .line 344
    :goto_23
    iget v2, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-ge v8, v2, :cond_38

    add-int/lit8 v2, v10, 0x1

    mul-int/lit8 v3, v8, 0x2

    add-int/2addr v2, v3

    add-int v3, v17, v8

    .line 345
    aget-short v3, v16, v3

    aput-short v3, v9, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    :cond_37
    const/4 v8, 0x0

    .line 348
    :goto_24
    iget v2, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-ge v8, v2, :cond_38

    add-int/lit8 v2, v10, 0x1

    mul-int/lit8 v3, v8, 0x2

    add-int/2addr v2, v3

    add-int/2addr v3, v10

    .line 349
    aget-short v3, v9, v3

    aput-short v3, v9, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    :cond_38
    const/4 v8, 0x0

    .line 355
    aget-object v2, v29, v8

    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->prevSignalType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_39

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v5, 0x4

    .line 356
    filled-new-array {v2, v5, v3}, [I

    move-result-object v2

    .line 357
    aget-object v3, v29, v8

    iget v3, v3, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->lagPrev:I

    aget-object v5, v29, v8

    iget v5, v5, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    const/16 v25, 0x8

    add-int/lit8 v5, v5, -0x8

    shr-int/lit8 v4, v5, 0x2

    aget v2, v2, v4

    mul-int v3, v3, v2

    iput v3, v1, Lio/github/jaredmdobson/concentus/DecControlState;->prevPitchLag:I

    goto :goto_25

    .line 359
    :cond_39
    iput v8, v1, Lio/github/jaredmdobson/concentus/DecControlState;->prevPitchLag:I

    :goto_25
    if-ne v7, v12, :cond_3b

    const/4 v12, 0x0

    .line 365
    :goto_26
    iget v1, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->nChannelsInternal:I

    if-ge v12, v1, :cond_3a

    .line 366
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->channel_state:[Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

    aget-object v1, v1, v12

    const/16 v4, 0xa

    iput-byte v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LastGainIndex:B

    add-int/lit8 v12, v12, 0x1

    goto :goto_26

    :cond_3a
    return v28

    .line 369
    :cond_3b
    iput v13, v0, Lio/github/jaredmdobson/concentus/SilkDecoder;->prev_decode_only_middle:I

    return v28

    .line 153
    :cond_3c
    :goto_27
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_DEC_INVALID_SAMPLING_FREQUENCY:I

    return v0
.end method

.method static silk_InitDecoder(Lio/github/jaredmdobson/concentus/SilkDecoder;)I
    .locals 5

    .line 43
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/SilkDecoder;->Reset()V

    .line 45
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    .line 46
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkDecoder;->channel_state:[Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 49
    aget-object v0, v1, v3

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->silk_init_decoder()I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkDecoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoDecodeState;

    invoke-virtual {v1}, Lio/github/jaredmdobson/concentus/StereoDecodeState;->Reset()V

    .line 55
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkDecoder;->prev_decode_only_middle:I

    return v0
.end method
