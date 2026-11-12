.class Lio/github/jaredmdobson/concentus/EncodeAPI;
.super Ljava/lang/Object;
.source "EncodeAPI.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_Encode(Lio/github/jaredmdobson/concentus/SilkEncoder;Lio/github/jaredmdobson/concentus/EncControlState;[SILio/github/jaredmdobson/concentus/EntropyCoder;Lio/github/jaredmdobson/concentus/BoxedValueInt;I)I
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 117
    sget v1, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    const/4 v11, 0x2

    .line 123
    new-array v12, v11, [I

    const/4 v13, 0x0

    .line 126
    iput v13, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 128
    iget v3, v2, Lio/github/jaredmdobson/concentus/EncControlState;->reducedDependency:I

    const/4 v14, 0x1

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v3, v3, v13

    iput v14, v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    .line 130
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v3, v3, v14

    iput v14, v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    .line 132
    :cond_0
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v3, v3, v13

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v14

    iput v13, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    iput v13, v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    .line 135
    invoke-virtual {v2}, Lio/github/jaredmdobson/concentus/EncControlState;->check_control_input()I

    move-result v3

    add-int/2addr v1, v3

    .line 136
    sget v3, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    if-eq v1, v3, :cond_1

    .line 137
    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v1

    .line 141
    :cond_1
    iput v13, v2, Lio/github/jaredmdobson/concentus/EncControlState;->switchReady:I

    .line 143
    iget v3, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nChannelsInternal:I

    const/4 v15, 0x3

    if-le v3, v4, :cond_2

    .line 145
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v3, v3, v14

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/SilkEncoder;->silk_init_encoder(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;)I

    move-result v3

    add-int/2addr v1, v3

    .line 147
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v3, v3, Lio/github/jaredmdobson/concentus/StereoEncodeState;->pred_prev_Q13:[S

    invoke-static {v3, v13, v11}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 148
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v3, v3, Lio/github/jaredmdobson/concentus/StereoEncodeState;->sSide:[S

    invoke-static {v3, v13, v11}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 149
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v3, v3, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_side_amp_Q0:[I

    aput v13, v3, v13

    .line 150
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v3, v3, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_side_amp_Q0:[I

    aput v14, v3, v14

    .line 151
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v3, v3, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_side_amp_Q0:[I

    aput v13, v3, v11

    .line 152
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v3, v3, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_side_amp_Q0:[I

    aput v14, v3, v15

    .line 153
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iput-short v13, v3, Lio/github/jaredmdobson/concentus/StereoEncodeState;->width_prev_Q14:S

    .line 154
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    const/16 v4, 0x4000

    iput-short v4, v3, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    .line 155
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nChannelsAPI:I

    if-ne v3, v11, :cond_2

    .line 156
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v3, v3, v14

    iget-object v3, v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v13

    iget-object v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    invoke-virtual {v3, v4}, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Assign(Lio/github/jaredmdobson/concentus/SilkResamplerState;)V

    .line 157
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v3, v3, v13

    iget-object v3, v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->In_HP_State:[I

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v14

    iget-object v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->In_HP_State:[I

    invoke-static {v3, v13, v4, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :cond_2
    iget v3, v2, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v13

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->PacketSize_ms:I

    if-ne v3, v4, :cond_4

    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nChannelsInternal:I

    iget v4, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v16, 0x1

    .line 163
    :goto_1
    iget v3, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsAPI:I

    iput v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nChannelsAPI:I

    .line 164
    iget v3, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    iput v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nChannelsInternal:I

    mul-int/lit8 v3, v8, 0x64

    .line 166
    iget v4, v2, Lio/github/jaredmdobson/concentus/EncControlState;->API_sampleRate:I

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v4

    if-le v4, v14, :cond_5

    shr-int/lit8 v5, v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x1

    :goto_2
    const/16 v6, 0xa

    if-eqz p6, :cond_a

    if-eq v4, v14, :cond_6

    .line 172
    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 173
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_ENC_INPUT_INVALID_NO_OF_SAMPLES:I

    return v0

    :cond_6
    const/4 v3, 0x0

    .line 176
    :goto_3
    iget v15, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-ge v3, v15, :cond_8

    .line 177
    iget-object v15, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v15, v15, v3

    invoke-static {v15}, Lio/github/jaredmdobson/concentus/SilkEncoder;->silk_init_encoder(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;)I

    move-result v15

    add-int/2addr v1, v15

    .line 178
    sget v15, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    if-ne v1, v15, :cond_7

    const/4 v15, 0x1

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    invoke-static {v15}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 180
    :cond_8
    iget v3, v2, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    .line 181
    iput v6, v2, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    .line 182
    iget v15, v2, Lio/github/jaredmdobson/concentus/EncControlState;->complexity:I

    .line 183
    iput v13, v2, Lio/github/jaredmdobson/concentus/EncControlState;->complexity:I

    const/4 v6, 0x0

    .line 184
    :goto_5
    iget v11, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-ge v6, v11, :cond_9

    .line 185
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v11, v11, v6

    iput v13, v11, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->controlled_since_last_payload:I

    .line 186
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v11, v11, v6

    iput v14, v11, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prefillFlag:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    move v11, v3

    goto :goto_6

    .line 190
    :cond_a
    iget v6, v2, Lio/github/jaredmdobson/concentus/EncControlState;->API_sampleRate:I

    mul-int v6, v6, v4

    if-ne v6, v3, :cond_49

    if-gez v8, :cond_b

    goto/16 :goto_35

    :cond_b
    mul-int/lit16 v3, v8, 0x3e8

    .line 195
    iget v6, v2, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    iget v11, v2, Lio/github/jaredmdobson/concentus/EncControlState;->API_sampleRate:I

    mul-int v6, v6, v11

    if-le v3, v6, :cond_c

    .line 196
    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 197
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_ENC_INPUT_INVALID_NO_OF_SAMPLES:I

    return v0

    :cond_c
    const/4 v11, 0x0

    const/4 v15, 0x0

    .line 201
    :goto_6
    iget v3, v2, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    iget v6, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    sub-int/2addr v6, v14

    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v3

    move/from16 v19, v1

    move v1, v5

    const/4 v5, 0x0

    .line 203
    :goto_7
    iget v6, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-ge v5, v6, :cond_11

    if-ne v5, v14, :cond_d

    .line 205
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v13

    iget v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    :goto_8
    const/16 v20, 0x0

    .line 206
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v13, v13, v5

    move/from16 v21, v4

    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->allowBandwidthSwitch:I

    move-object/from16 v35, v13

    move v13, v1

    move-object/from16 v1, v35

    invoke-virtual/range {v1 .. v6}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->silk_control_encoder(Lio/github/jaredmdobson/concentus/EncControlState;IIII)I

    move-result v1

    add-int v1, v19, v1

    .line 208
    sget v4, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    if-eq v1, v4, :cond_e

    .line 209
    invoke-static/range {v20 .. v20}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v1

    .line 213
    :cond_e
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v5

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    if-nez v4, :cond_f

    if-eqz v16, :cond_10

    :cond_f
    const/4 v4, 0x0

    .line 214
    :goto_9
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v20

    iget v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    if-ge v4, v6, :cond_10

    .line 215
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v5

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_flags:[I

    aput v20, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 219
    :cond_10
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v5

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v5

    iget v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useDTX:I

    iput v6, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inDTX:I

    add-int/lit8 v5, v5, 0x1

    move/from16 v19, v1

    move v1, v13

    move/from16 v4, v21

    const/4 v13, 0x0

    goto :goto_7

    :cond_11
    move v13, v1

    move/from16 v21, v4

    const/16 v20, 0x0

    .line 222
    iget v1, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-eq v1, v14, :cond_13

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v20

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v3, v3, v14

    iget v3, v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    if-ne v1, v3, :cond_12

    goto :goto_a

    :cond_12
    const/4 v1, 0x0

    goto :goto_b

    :cond_13
    :goto_a
    const/4 v1, 0x1

    :goto_b
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v1, 0xa

    mul-int/lit8 v26, v21, 0xa

    .line 225
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v3, v3, v20

    iget v3, v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int v3, v3, v26

    .line 226
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v20

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    mul-int v4, v4, v3

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v5, v5, v20

    iget v5, v5, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    const/16 v6, 0x3e8

    mul-int/lit16 v5, v5, 0x3e8

    int-to-short v5, v5

    .line 227
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v4

    .line 231
    new-array v4, v4, [S

    const/4 v5, 0x0

    const/16 v33, 0x0

    .line 235
    :goto_c
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v20

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v20

    iget v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    sub-int/2addr v1, v14

    .line 236
    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v1

    .line 237
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v20

    iget v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    mul-int v14, v14, v1

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v20

    iget v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    move/from16 p3, v1

    const/16 v1, 0x3e8

    mul-int/lit16 v6, v6, 0x3e8

    invoke-static {v14, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v1

    .line 240
    iget v6, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsAPI:I

    const/4 v14, 0x2

    if-ne v6, v14, :cond_17

    iget v6, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-ne v6, v14, :cond_17

    .line 241
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v20

    iget v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v1, :cond_14

    mul-int/lit8 v18, v14, 0x2

    add-int v18, v5, v18

    .line 243
    aget-short v18, v7, v18

    aput-short v18, v4, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 247
    :cond_14
    iget v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nPrevChannelsInternal:I

    move/from16 v32, v1

    const/4 v1, 0x1

    if-ne v14, v1, :cond_15

    if-nez v6, :cond_15

    .line 249
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v1

    iget-object v1, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v20

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    invoke-virtual {v1, v6}, Lio/github/jaredmdobson/concentus/SilkResamplerState;->Assign(Lio/github/jaredmdobson/concentus/SilkResamplerState;)V

    .line 252
    :cond_15
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v20

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v20

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v20

    iget v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    const/16 v25, 0x2

    add-int/lit8 v29, v14, 0x2

    const/16 v31, 0x0

    move-object/from16 v27, v1

    move-object/from16 v30, v4

    move-object/from16 v28, v6

    invoke-static/range {v27 .. v32}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)I

    move-result v1

    move/from16 v4, v32

    add-int v19, v19, v1

    .line 260
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v20

    iget v6, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    add-int v6, v6, p3

    iput v6, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    .line 262
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    const/4 v6, 0x1

    aget-object v1, v1, v6

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v6

    iget v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    sub-int/2addr v1, v14

    .line 263
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v6

    iget v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int v14, v14, v26

    invoke-static {v1, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v1

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v4, :cond_16

    mul-int/lit8 v16, v14, 0x2

    add-int v16, v5, v16

    add-int/lit8 v16, v16, 0x1

    .line 265
    aget-short v16, v7, v16

    aput-short v16, v30, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    .line 267
    :cond_16
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v6

    iget-object v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    const/16 v16, 0x1

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v16

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    move/from16 p3, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v16

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    const/16 v25, 0x2

    add-int/lit8 v29, v1, 0x2

    const/16 v31, 0x0

    move/from16 v32, v4

    move-object/from16 v28, v6

    move-object/from16 v27, v14

    invoke-static/range {v27 .. v32}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)I

    move-result v1

    add-int v19, v19, v1

    .line 275
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v16

    iget v6, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    add-int v6, v6, p3

    iput v6, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    move/from16 v34, v3

    goto/16 :goto_13

    :cond_17
    move-object/from16 v30, v4

    const/16 v16, 0x1

    move v4, v1

    .line 276
    iget v1, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsAPI:I

    const/4 v14, 0x2

    if-ne v1, v14, :cond_1b

    iget v1, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1b

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v4, :cond_18

    mul-int/lit8 v14, v1, 0x2

    add-int/2addr v14, v5

    .line 279
    aget-short v16, v7, v14

    add-int/2addr v14, v6

    aget-short v14, v7, v14

    add-int v14, v16, v14

    .line 280
    invoke-static {v14, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v14

    int-to-short v6, v14

    aput-short v6, v30, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x1

    goto :goto_f

    .line 283
    :cond_18
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v20

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v20

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v20

    iget v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    move-object/from16 v27, v1

    const/4 v1, 0x2

    add-int/lit8 v29, v14, 0x2

    const/16 v31, 0x0

    move/from16 v32, v4

    move-object/from16 v28, v6

    invoke-static/range {v27 .. v32}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)I

    move-result v4

    add-int v19, v19, v4

    .line 292
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nPrevChannelsInternal:I

    if-ne v4, v1, :cond_1a

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v20

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    if-nez v1, :cond_1a

    .line 293
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    const/16 v16, 0x1

    aget-object v1, v1, v16

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v16

    iget-object v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v16

    iget v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    const/16 v25, 0x2

    add-int/lit8 v29, v6, 0x2

    const/16 v31, 0x0

    move-object/from16 v27, v1

    move-object/from16 v28, v4

    invoke-static/range {v27 .. v32}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)I

    move-result v1

    move-object/from16 v4, v30

    move/from16 v6, v32

    add-int v19, v19, v1

    const/4 v1, 0x0

    .line 301
    :goto_10
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v20

    iget v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    if-ge v1, v14, :cond_19

    .line 302
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v20

    iget-object v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    move/from16 v18, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v20

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    add-int v1, v1, v18

    const/16 v25, 0x2

    add-int/lit8 v1, v1, 0x2

    move/from16 v21, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v20

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    move-object/from16 v22, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v20

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    add-int v1, v1, v18

    add-int/lit8 v1, v1, 0x2

    aget-short v1, v22, v1

    move/from16 v22, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    move-object/from16 v23, v1

    const/16 v16, 0x1

    aget-object v1, v23, v16

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    move-object/from16 v23, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v16

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    add-int v1, v1, v18

    add-int/lit8 v1, v1, 0x2

    aget-short v1, v23, v1

    add-int v1, v22, v1

    move/from16 v34, v3

    const/4 v3, 0x1

    .line 303
    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, v14, v21

    add-int/lit8 v1, v18, 0x1

    move/from16 v3, v34

    goto :goto_10

    :cond_19
    move/from16 v34, v3

    goto :goto_11

    :cond_1a
    move/from16 v34, v3

    move-object/from16 v4, v30

    move/from16 v6, v32

    .line 308
    :goto_11
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v20

    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    add-int v3, v3, p3

    iput v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    move-object/from16 v30, v4

    move/from16 v32, v6

    goto :goto_13

    :cond_1b
    move/from16 v34, v3

    move v6, v4

    move-object/from16 v4, v30

    .line 310
    iget v1, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsAPI:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1c

    iget v1, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-ne v1, v3, :cond_1c

    const/4 v1, 0x1

    goto :goto_12

    :cond_1c
    const/4 v1, 0x0

    :goto_12
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v1, 0x0

    .line 311
    invoke-static {v7, v5, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v3, v3, v1

    iget-object v3, v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->resampler_state:Lio/github/jaredmdobson/concentus/SilkResamplerState;

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v1

    iget-object v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    const/16 v20, 0x0

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v20

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    const/16 v25, 0x2

    add-int/lit8 v29, v1, 0x2

    const/16 v31, 0x0

    move-object/from16 v27, v3

    move-object/from16 v30, v4

    move/from16 v32, v6

    move-object/from16 v28, v14

    invoke-static/range {v27 .. v32}, Lio/github/jaredmdobson/concentus/Resampler;->silk_resampler(Lio/github/jaredmdobson/concentus/SilkResamplerState;[SI[SII)I

    move-result v1

    add-int v19, v19, v1

    .line 320
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v20

    iget v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    add-int v3, v3, p3

    iput v3, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    :goto_13
    move/from16 v1, v19

    .line 323
    iget v3, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsAPI:I

    mul-int v3, v3, v32

    add-int v27, v5, v3

    sub-int v8, v8, v32

    const/4 v3, 0x0

    .line 327
    iput v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->allowBandwidthSwitch:I

    .line 330
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v3

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v5, v5, v3

    iget v5, v5, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    if-lt v4, v5, :cond_45

    .line 332
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v3

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v5, v5, v3

    iget v3, v5, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    if-ne v4, v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_14

    :cond_1d
    const/4 v3, 0x0

    :goto_14
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 333
    iget v3, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1f

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v3, v3, v4

    iget v3, v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v5, v5, v4

    iget v4, v5, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    if-ne v3, v4, :cond_1e

    goto :goto_15

    :cond_1e
    const/4 v3, 0x0

    goto :goto_16

    :cond_1f
    :goto_15
    const/4 v3, 0x1

    :goto_16
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 336
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    const/16 v5, 0x8

    if-nez v3, :cond_2a

    if-nez p6, :cond_2a

    const/4 v14, 0x2

    .line 338
    new-array v3, v14, [S

    aput-short v4, v3, v4

    const/16 v16, 0x1

    aput-short v4, v3, v16

    .line 339
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v4

    iget v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    add-int/lit8 v14, v14, 0x1

    iget v6, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    mul-int v14, v14, v6

    const/16 v6, 0x100

    invoke-static {v6, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v14

    sub-int/2addr v6, v14

    int-to-short v6, v6

    aput-short v6, v3, v4

    .line 340
    invoke-virtual {v9, v4, v3, v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    const/4 v3, 0x0

    .line 344
    :goto_17
    iget v4, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-ge v3, v4, :cond_23

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 346
    :goto_18
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v3

    iget v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    if-ge v4, v14, :cond_20

    .line 347
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v3

    iget-object v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_flags:[I

    aget v14, v14, v4

    invoke-static {v14, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v14

    or-int/2addr v6, v14

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 350
    :cond_20
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v3

    if-lez v6, :cond_21

    const/4 v14, 0x1

    goto :goto_19

    :cond_21
    const/4 v14, 0x0

    :goto_19
    int-to-byte v14, v14

    iput-byte v14, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_flag:B

    if-eqz v6, :cond_22

    .line 351
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v3

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    const/4 v14, 0x1

    if-le v4, v14, :cond_22

    add-int/lit8 v6, v6, -0x1

    .line 352
    sget-object v4, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LBRR_flags_iCDF_ptr:[[S

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v3

    iget v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    const/16 v25, 0x2

    add-int/lit8 v14, v14, -0x2

    aget-object v4, v4, v14

    invoke-virtual {v9, v6, v4, v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_23
    const/4 v3, 0x0

    .line 357
    :goto_1a
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    const/16 v20, 0x0

    aget-object v4, v4, v20

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    if-ge v3, v4, :cond_28

    const/4 v4, 0x0

    .line 358
    :goto_1b
    iget v6, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-ge v4, v6, :cond_27

    .line 359
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v4

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_flags:[I

    aget v6, v6, v3

    if-eqz v6, :cond_26

    .line 362
    iget v6, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    const/4 v14, 0x2

    if-ne v6, v14, :cond_24

    if-nez v4, :cond_24

    .line 363
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/StereoEncodeState;->predIx:[[[B

    aget-object v6, v6, v3

    invoke-static {v9, v6}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_encode_pred(Lio/github/jaredmdobson/concentus/EntropyCoder;[[B)V

    .line 365
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    const/16 v16, 0x1

    aget-object v6, v6, v16

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_flags:[I

    aget v6, v6, v3

    if-nez v6, :cond_24

    .line 366
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_only_flags:[B

    aget-byte v6, v6, v3

    invoke-static {v9, v6}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_encode_mid_only(Lio/github/jaredmdobson/concentus/EntropyCoder;B)V

    :cond_24
    if-lez v3, :cond_25

    .line 371
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v4

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_flags:[I

    add-int/lit8 v14, v3, -0x1

    aget v6, v6, v14

    if-eqz v6, :cond_25

    const/4 v6, 0x2

    goto :goto_1c

    :cond_25
    const/4 v6, 0x0

    .line 377
    :goto_1c
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v4

    const/4 v5, 0x1

    invoke-static {v14, v9, v3, v5, v6}, Lio/github/jaredmdobson/concentus/EncodeIndices;->silk_encode_indices(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/EntropyCoder;III)V

    .line 378
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v5, v5, v4

    iget-object v5, v5, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices_LBRR:[Lio/github/jaredmdobson/concentus/SideInfoIndices;

    aget-object v5, v5, v3

    iget-byte v5, v5, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v4

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices_LBRR:[Lio/github/jaredmdobson/concentus/SideInfoIndices;

    aget-object v6, v6, v3

    iget-byte v6, v6, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v4

    iget-object v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pulses_LBRR:[[B

    aget-object v14, v14, v3

    move/from16 v29, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v4

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    invoke-static {v9, v5, v6, v14, v1}, Lio/github/jaredmdobson/concentus/EncodePulses;->silk_encode_pulses(Lio/github/jaredmdobson/concentus/EntropyCoder;II[BI)V

    goto :goto_1d

    :cond_26
    move/from16 v29, v1

    :goto_1d
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v29

    const/16 v5, 0x8

    goto :goto_1b

    :cond_27
    move/from16 v29, v1

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x8

    goto/16 :goto_1a

    :cond_28
    move/from16 v29, v1

    const/4 v1, 0x0

    .line 385
    :goto_1e
    iget v3, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-ge v1, v3, :cond_29

    .line 386
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v3, v3, v1

    iget-object v3, v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_flags:[I

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_29
    const/4 v4, 0x3

    .line 389
    invoke-virtual {v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v1

    iput v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nBitsUsedLBRR:I

    goto :goto_1f

    :cond_2a
    move/from16 v29, v1

    const/4 v4, 0x3

    .line 392
    :goto_1f
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    invoke-static {v1}, Lio/github/jaredmdobson/concentus/HPVariableCutoff;->silk_HP_variable_cutoff([Lio/github/jaredmdobson/concentus/SilkChannelEncoder;)V

    .line 395
    iget v1, v2, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    iget v3, v2, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v1

    const/16 v3, 0x3e8

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v1

    if-nez p6, :cond_2b

    .line 399
    iget v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nBitsUsedLBRR:I

    sub-int/2addr v1, v3

    .line 403
    :cond_2b
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    const/16 v20, 0x0

    aget-object v3, v3, v20

    iget v3, v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v1

    .line 406
    iget v3, v2, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    const/16 v5, 0x64

    const/16 v6, 0xa

    if-ne v3, v6, :cond_2c

    .line 407
    invoke-static {v1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v3

    goto :goto_20

    :cond_2c
    const/16 v3, 0x32

    .line 409
    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v3

    .line 413
    :goto_20
    iget v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nBitsExceeded:I

    const/16 v14, 0x3e8

    invoke-static {v6, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v6

    const/16 v14, 0x1f4

    invoke-static {v6, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v6

    sub-int/2addr v3, v6

    if-nez p6, :cond_2d

    .line 415
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    const/16 v20, 0x0

    aget-object v6, v6, v20

    iget v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    if-lez v6, :cond_2d

    .line 417
    invoke-virtual {v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v6

    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nBitsUsedLBRR:I

    sub-int/2addr v6, v4

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v20

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    mul-int v1, v1, v4

    sub-int/2addr v6, v1

    const/16 v1, 0x3e8

    .line 418
    invoke-static {v6, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v4

    invoke-static {v4, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_21

    :cond_2d
    const/16 v1, 0x3e8

    .line 422
    :goto_21
    iget v4, v2, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    const/16 v6, 0x1388

    invoke-static {v3, v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result v3

    .line 425
    iget v4, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    const/4 v14, 0x2

    if-ne v4, v14, :cond_31

    .line 426
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueByte;

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_only_flags:[B

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    const/16 v20, 0x0

    aget-object v14, v14, v20

    iget v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aget-byte v6, v6, v14

    invoke-direct {v4, v6}, Lio/github/jaredmdobson/concentus/BoxedValueByte;-><init>(B)V

    move-object/from16 v19, v12

    .line 427
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v20

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    const/16 v16, 0x1

    aget-object v14, v14, v16

    iget-object v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/StereoEncodeState;->predIx:[[[B

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v5, v5, v20

    iget v5, v5, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aget-object v1, v1, v5

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v5, v5, v20

    iget v5, v5, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    move-object/from16 v18, v1

    iget v1, v2, Lio/github/jaredmdobson/concentus/EncControlState;->toMono:I

    move/from16 v22, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v20

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    move/from16 v23, v1

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v20

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    move/from16 v21, v15

    move-object v15, v14

    const/4 v14, 0x2

    const/16 v24, 0x1

    const/16 v16, 0x2

    move/from16 v24, v1

    move/from16 v20, v3

    move v3, v13

    move-object/from16 v17, v18

    const/4 v1, 0x0

    move-object/from16 v18, v4

    move-object v13, v6

    move/from16 v4, v21

    const/4 v6, 0x1

    move/from16 v21, v5

    const/4 v5, 0x3

    invoke-static/range {v12 .. v24}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_LR_to_MS(Lio/github/jaredmdobson/concentus/StereoEncodeState;[SI[SI[[BLio/github/jaredmdobson/concentus/BoxedValueByte;[IIIIII)V

    move-object/from16 v12, v18

    .line 441
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v13, v13, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_only_flags:[B

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v14, v14, v1

    iget v14, v14, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    iget-byte v15, v12, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    aput-byte v15, v13, v14

    .line 443
    iget-byte v12, v12, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    if-nez v12, :cond_2f

    .line 445
    iget v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->prev_decode_only_middle:I

    if-ne v12, v6, :cond_2e

    .line 446
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v6

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

    invoke-virtual {v12}, Lio/github/jaredmdobson/concentus/SilkShapeState;->Reset()V

    .line 447
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v6

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sPrefilt:Lio/github/jaredmdobson/concentus/SilkPrefilterState;

    invoke-virtual {v12}, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->Reset()V

    .line 448
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v6

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    invoke-virtual {v12}, Lio/github/jaredmdobson/concentus/SilkNSQState;->Reset()V

    .line 449
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v6

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prev_NLSFq_Q15:[S

    const/16 v13, 0x10

    invoke-static {v12, v1, v13}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 450
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v6

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/SilkLPState;->In_LP_State:[I

    const/4 v14, 0x2

    invoke-static {v12, v1, v14}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 452
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v6

    const/16 v14, 0x64

    iput v14, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prevLag:I

    .line 453
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v6

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    iput v14, v12, Lio/github/jaredmdobson/concentus/SilkNSQState;->lagPrev:I

    .line 454
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v6

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sShape:Lio/github/jaredmdobson/concentus/SilkShapeState;

    const/16 v14, 0xa

    iput-byte v14, v12, Lio/github/jaredmdobson/concentus/SilkShapeState;->LastGainIndex:B

    .line 455
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v6

    iput-byte v1, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prevSignalType:B

    .line 456
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v6

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sNSQ:Lio/github/jaredmdobson/concentus/SilkNSQState;

    const/high16 v15, 0x10000

    iput v15, v12, Lio/github/jaredmdobson/concentus/SilkNSQState;->prev_gain_Q16:I

    .line 457
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v6

    iput v6, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    goto :goto_22

    :cond_2e
    const/16 v13, 0x10

    const/16 v14, 0xa

    .line 460
    :goto_22
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->silk_encode_do_VAD()V

    goto :goto_23

    :cond_2f
    const/16 v13, 0x10

    const/16 v14, 0xa

    .line 462
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v6

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->VAD_flags:[B

    iget-object v15, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v15, v15, v1

    iget v15, v15, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aput-byte v1, v12, v15

    :goto_23
    if-nez p6, :cond_30

    .line 466
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/StereoEncodeState;->predIx:[[[B

    iget-object v15, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v15, v15, v1

    iget v15, v15, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aget-object v12, v12, v15

    invoke-static {v9, v12}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_encode_pred(Lio/github/jaredmdobson/concentus/EntropyCoder;[[B)V

    .line 467
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v6

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->VAD_flags:[B

    iget-object v15, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v15, v15, v1

    iget v15, v15, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aget-byte v12, v12, v15

    if-nez v12, :cond_30

    .line 468
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_only_flags:[B

    iget-object v15, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v15, v15, v1

    iget v15, v15, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aget-byte v12, v12, v15

    invoke-static {v9, v12}, Lio/github/jaredmdobson/concentus/Stereo;->silk_stereo_encode_mid_only(Lio/github/jaredmdobson/concentus/EntropyCoder;B)V

    :cond_30
    const/4 v13, 0x2

    goto :goto_24

    :cond_31
    move/from16 v20, v3

    move-object/from16 v19, v12

    move v3, v13

    move v4, v15

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/16 v13, 0x10

    const/16 v14, 0xa

    .line 473
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/StereoEncodeState;->sMid:[S

    iget-object v15, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v15, v15, v1

    iget-object v15, v15, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    const/4 v13, 0x2

    invoke-static {v12, v1, v15, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v1

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v15, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v15, v15, v1

    iget v15, v15, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->frame_length:I

    iget-object v14, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v14, v14, Lio/github/jaredmdobson/concentus/StereoEncodeState;->sMid:[S

    invoke-static {v12, v15, v14, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    :goto_24
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v1

    invoke-virtual {v12}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->silk_encode_do_VAD()V

    const/4 v12, 0x0

    .line 480
    :goto_25
    iget v14, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-ge v12, v14, :cond_3c

    .line 484
    iget v14, v2, Lio/github/jaredmdobson/concentus/EncControlState;->maxBits:I

    move/from16 v15, v33

    if-ne v3, v13, :cond_32

    if-nez v15, :cond_32

    mul-int/lit8 v14, v14, 0x3

    .line 486
    div-int/lit8 v14, v14, 0x5

    goto :goto_26

    :cond_32
    if-ne v3, v5, :cond_34

    if-nez v15, :cond_33

    mul-int/lit8 v14, v14, 0x2

    .line 489
    div-int/lit8 v14, v14, 0x5

    goto :goto_26

    :cond_33
    if-ne v15, v6, :cond_34

    mul-int/lit8 v14, v14, 0x3

    .line 491
    div-int/lit8 v14, v14, 0x4

    :cond_34
    :goto_26
    const/16 v16, 0x0

    .line 495
    iget v1, v2, Lio/github/jaredmdobson/concentus/EncControlState;->useCBR:I

    if-eqz v1, :cond_35

    add-int/lit8 v1, v3, -0x1

    if-ne v15, v1, :cond_35

    const/4 v1, 0x1

    goto :goto_27

    :cond_35
    const/4 v1, 0x0

    .line 497
    :goto_27
    iget v5, v2, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-ne v5, v6, :cond_36

    move v6, v1

    move/from16 v5, v20

    goto :goto_28

    .line 500
    :cond_36
    aget v5, v19, v12

    if-nez v12, :cond_37

    .line 501
    aget v21, v19, v6

    if-lez v21, :cond_37

    .line 504
    iget v1, v2, Lio/github/jaredmdobson/concentus/EncControlState;->maxBits:I

    mul-int/lit8 v21, v3, 0x2

    div-int v1, v1, v21

    sub-int/2addr v14, v1

    const/4 v1, 0x1

    const/4 v6, 0x0

    goto :goto_29

    :cond_37
    move v6, v1

    :goto_28
    const/4 v1, 0x1

    :goto_29
    if-lez v5, :cond_3b

    .line 511
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    invoke-virtual {v1, v5}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->silk_control_SNR(I)I

    .line 514
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v16

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    sub-int/2addr v1, v12

    if-gtz v1, :cond_38

    move/from16 v21, v4

    const/4 v4, 0x0

    goto :goto_2a

    :cond_38
    if-lez v12, :cond_39

    .line 516
    iget v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->prev_decode_only_middle:I

    if-eqz v1, :cond_39

    move/from16 v21, v4

    const/4 v4, 0x1

    goto :goto_2a

    :cond_39
    move/from16 v21, v4

    const/4 v4, 0x2

    .line 524
    :goto_2a
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    move v5, v14

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x3

    const/16 v18, 0xa

    const/16 v28, 0x8

    move v14, v3

    move-object v3, v9

    move-object v9, v2

    move-object v2, v10

    move/from16 v10, v21

    invoke-virtual/range {v1 .. v6}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->silk_encode_frame(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/EntropyCoder;III)I

    move-result v1

    add-int v1, v29, v1

    .line 525
    sget v4, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    if-ne v1, v4, :cond_3a

    const/4 v4, 0x1

    goto :goto_2b

    :cond_3a
    const/4 v4, 0x0

    :goto_2b
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    move/from16 v29, v1

    goto :goto_2c

    :cond_3b
    move v14, v3

    move-object v3, v9

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x3

    const/16 v18, 0xa

    const/16 v28, 0x8

    move-object v9, v2

    move-object v2, v10

    move v10, v4

    .line 528
    :goto_2c
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iput v13, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->controlled_since_last_payload:I

    .line 529
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iput v13, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inputBufIx:I

    .line 530
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iget v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    add-int/lit8 v12, v12, 0x1

    move v4, v10

    move/from16 v33, v15

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v13, 0x2

    move-object v10, v2

    move-object v2, v9

    move-object v9, v3

    move v3, v14

    goto/16 :goto_25

    :cond_3c
    move v14, v3

    move-object v3, v9

    move/from16 v15, v33

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x3

    const/16 v18, 0xa

    const/16 v28, 0x8

    move-object v9, v2

    move-object v2, v10

    move v10, v4

    .line 533
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_only_flags:[B

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v13

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    add-int/lit8 v4, v4, -0x1

    aget-byte v1, v1, v4

    iput v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->prev_decode_only_middle:I

    .line 536
    iget v1, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-lez v1, :cond_43

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v13

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesEncoded:I

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v13

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    if-ne v1, v4, :cond_43

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 538
    :goto_2d
    iget v5, v9, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-ge v1, v5, :cond_3e

    const/4 v5, 0x0

    .line 539
    :goto_2e
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v1

    iget v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    if-ge v5, v6, :cond_3d

    const/4 v6, 0x1

    .line 540
    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    .line 541
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v12, v12, v1

    iget-object v12, v12, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->VAD_flags:[B

    aget-byte v12, v12, v5

    or-int/2addr v4, v12

    add-int/lit8 v5, v5, 0x1

    const/16 v16, 0x1

    goto :goto_2e

    :cond_3d
    const/4 v6, 0x1

    .line 543
    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    .line 544
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v5, v5, v1

    iget-byte v5, v5, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->LBRR_flag:B

    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    const/16 v16, 0x1

    goto :goto_2d

    :cond_3e
    if-nez p6, :cond_3f

    int-to-long v4, v4

    .line 548
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v13

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    const/4 v6, 0x1

    add-int/2addr v1, v6

    iget v12, v9, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    mul-int v1, v1, v12

    invoke-virtual {v3, v4, v5, v1}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_patch_initial_bits(JI)V

    goto :goto_2f

    :cond_3f
    const/4 v6, 0x1

    .line 552
    :goto_2f
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v13

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inDTX:I

    if-eqz v1, :cond_41

    iget v1, v9, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-eq v1, v6, :cond_40

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v1, v1, v6

    iget v1, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->inDTX:I

    if-eqz v1, :cond_41

    .line 553
    :cond_40
    iput v13, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 556
    :cond_41
    iget v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nBitsExceeded:I

    iget v4, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v1, v4

    iput v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nBitsExceeded:I

    .line 557
    iget v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nBitsExceeded:I

    iget v4, v9, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    iget v5, v9, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v4

    const/16 v5, 0x3e8

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nBitsExceeded:I

    .line 558
    iget v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nBitsExceeded:I

    const/16 v4, 0x2710

    invoke-static {v1, v13, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result v1

    iput v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nBitsExceeded:I

    const/16 v1, 0xc74

    .line 561
    iget v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->timeSinceSwitchAllowed_ms:I

    const/16 v5, 0xd

    invoke-static {v5, v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    .line 564
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v4, v4, v13

    iget v4, v4, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    if-ge v4, v1, :cond_42

    const/4 v6, 0x1

    .line 565
    iput v6, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->allowBandwidthSwitch:I

    .line 566
    iput v13, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->timeSinceSwitchAllowed_ms:I

    goto :goto_30

    :cond_42
    const/4 v6, 0x1

    .line 568
    iput v13, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->allowBandwidthSwitch:I

    .line 569
    iget v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->timeSinceSwitchAllowed_ms:I

    iget v4, v9, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    add-int/2addr v1, v4

    iput v1, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->timeSinceSwitchAllowed_ms:I

    goto :goto_30

    :cond_43
    const/4 v6, 0x1

    :goto_30
    if-nez v8, :cond_44

    move/from16 v1, v29

    goto :goto_31

    :cond_44
    add-int/lit8 v33, v15, 0x1

    move v15, v10

    move v13, v14

    move-object/from16 v12, v19

    move/from16 v5, v27

    move/from16 v19, v29

    move-object/from16 v4, v30

    const/16 v6, 0x3e8

    const/4 v14, 0x1

    const/16 v20, 0x0

    move-object v10, v2

    move-object v2, v9

    move-object v9, v3

    move/from16 v3, v34

    goto/16 :goto_c

    :cond_45
    move/from16 v29, v1

    move-object v9, v2

    move v10, v15

    const/4 v6, 0x1

    const/4 v13, 0x0

    .line 583
    :goto_31
    iget v2, v9, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    iput v2, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nPrevChannelsInternal:I

    .line 585
    iget v2, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->allowBandwidthSwitch:I

    iput v2, v9, Lio/github/jaredmdobson/concentus/EncControlState;->allowBandwidthSwitch:I

    .line 586
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v2, v2, v13

    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_46

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v2, v2, v13

    iget-object v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    if-nez v2, :cond_46

    goto :goto_32

    :cond_46
    const/4 v6, 0x0

    :goto_32
    iput v6, v9, Lio/github/jaredmdobson/concentus/EncControlState;->inWBmodeWithoutVariableLP:I

    .line 587
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v2, v2, v13

    iget v2, v2, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    const/16 v14, 0x3e8

    invoke-static {v2, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v2

    iput v2, v9, Lio/github/jaredmdobson/concentus/EncControlState;->internalSampleRate:I

    .line 588
    iget v2, v9, Lio/github/jaredmdobson/concentus/EncControlState;->toMono:I

    if-eqz v2, :cond_47

    const/4 v2, 0x0

    goto :goto_33

    :cond_47
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    iget-short v2, v2, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    :goto_33
    iput v2, v9, Lio/github/jaredmdobson/concentus/EncControlState;->stereoWidth_Q14:I

    if-eqz p6, :cond_48

    .line 591
    iput v11, v9, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    .line 592
    iput v10, v9, Lio/github/jaredmdobson/concentus/EncControlState;->complexity:I

    const/4 v2, 0x0

    .line 594
    :goto_34
    iget v3, v9, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    if-ge v2, v3, :cond_48

    .line 595
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v3, v3, v2

    iput v13, v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->controlled_since_last_payload:I

    .line 596
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v3, v3, v2

    iput v13, v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prefillFlag:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_48
    return v1

    .line 191
    :cond_49
    :goto_35
    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 192
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_ENC_INPUT_INVALID_NO_OF_SAMPLES:I

    return v0
.end method

.method static silk_InitEncoder(Lio/github/jaredmdobson/concentus/SilkEncoder;Lio/github/jaredmdobson/concentus/EncControlState;)I
    .locals 5

    .line 44
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    .line 47
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/SilkEncoder;->Reset()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 50
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v3, v3, v2

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/SilkEncoder;->silk_init_encoder(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;)I

    move-result v3

    add-int/2addr v0, v3

    .line 51
    sget v3, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_1
    iput v4, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nChannelsAPI:I

    .line 55
    iput v4, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nChannelsInternal:I

    .line 58
    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/EncodeAPI;->silk_QueryEncoder(Lio/github/jaredmdobson/concentus/SilkEncoder;Lio/github/jaredmdobson/concentus/EncControlState;)I

    move-result p0

    add-int/2addr v0, p0

    .line 59
    sget p0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    if-ne v0, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v0
.end method

.method static silk_QueryEncoder(Lio/github/jaredmdobson/concentus/SilkEncoder;Lio/github/jaredmdobson/concentus/EncControlState;)I
    .locals 4

    .line 71
    sget v0, Lio/github/jaredmdobson/concentus/SilkError;->SILK_NO_ERROR:I

    .line 72
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 74
    invoke-virtual {p1}, Lio/github/jaredmdobson/concentus/EncControlState;->Reset()V

    .line 76
    iget v3, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nChannelsAPI:I

    iput v3, p1, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsAPI:I

    .line 77
    iget p0, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nChannelsInternal:I

    iput p0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    .line 78
    iget p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->API_fs_Hz:I

    iput p0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->API_sampleRate:I

    .line 79
    iget p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->maxInternal_fs_Hz:I

    iput p0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    .line 80
    iget p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->minInternal_fs_Hz:I

    iput p0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->minInternalSampleRate:I

    .line 81
    iget p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->desiredInternal_fs_Hz:I

    iput p0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->desiredInternalSampleRate:I

    .line 82
    iget p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->PacketSize_ms:I

    iput p0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    .line 83
    iget p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->TargetRate_bps:I

    iput p0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    .line 84
    iget p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->PacketLoss_perc:I

    iput p0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->packetLossPercentage:I

    .line 85
    iget p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->Complexity:I

    iput p0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->complexity:I

    .line 86
    iget p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInBandFEC:I

    iput p0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->useInBandFEC:I

    .line 87
    iget p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useDTX:I

    iput p0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->useDTX:I

    .line 88
    iget p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useCBR:I

    iput p0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->useCBR:I

    .line 89
    iget p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    const/16 v3, 0x3e8

    invoke-static {p0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result p0

    iput p0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->internalSampleRate:I

    .line 90
    iget p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->allow_bandwidth_switch:I

    iput p0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->allowBandwidthSwitch:I

    .line 91
    iget p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    const/16 v3, 0x10

    if-ne p0, v3, :cond_0

    iget-object p0, v1, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sLP:Lio/github/jaredmdobson/concentus/SilkLPState;

    iget p0, p0, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput v2, p1, Lio/github/jaredmdobson/concentus/EncControlState;->inWBmodeWithoutVariableLP:I

    return v0
.end method
