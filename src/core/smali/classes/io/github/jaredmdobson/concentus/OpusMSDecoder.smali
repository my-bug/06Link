.class public Lio/github/jaredmdobson/concentus/OpusMSDecoder;
.super Ljava/lang/Object;
.source "OpusMSDecoder.java"


# instance fields
.field decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

.field layout:Lio/github/jaredmdobson/concentus/ChannelLayout;


# direct methods
.method private constructor <init>(II)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance p2, Lio/github/jaredmdobson/concentus/ChannelLayout;

    invoke-direct {p2}, Lio/github/jaredmdobson/concentus/ChannelLayout;-><init>()V

    iput-object p2, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    const/4 p2, 0x0

    .line 46
    iput-object p2, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

    .line 49
    new-array p2, p1, [Lio/github/jaredmdobson/concentus/OpusDecoder;

    iput-object p2, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 51
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

    new-instance v1, Lio/github/jaredmdobson/concentus/OpusDecoder;

    invoke-direct {v1}, Lio/github/jaredmdobson/concentus/OpusDecoder;-><init>()V

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static create(IIII[S)Lio/github/jaredmdobson/concentus/OpusMSDecoder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/jaredmdobson/concentus/OpusException;
        }
    .end annotation

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    if-gt p3, p2, :cond_2

    if-lt p2, v0, :cond_2

    if-ltz p3, :cond_2

    rsub-int v0, p3, 0xff

    if-gt p2, v0, :cond_2

    .line 130
    new-instance v1, Lio/github/jaredmdobson/concentus/OpusMSDecoder;

    invoke-direct {v1, p2, p3}, Lio/github/jaredmdobson/concentus/OpusMSDecoder;-><init>(II)V

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 131
    invoke-virtual/range {v1 .. v6}, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->opus_multistream_decoder_init(IIII[S)I

    move-result p0

    .line 132
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-eq p0, p1, :cond_1

    .line 133
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    if-ne p0, p1, :cond_0

    .line 134
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad argument while creating MS decoder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :cond_0
    new-instance p1, Lio/github/jaredmdobson/concentus/OpusException;

    const-string p2, "Could not create MS decoder"

    invoke-direct {p1, p2, p0}, Lio/github/jaredmdobson/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    return-object v1

    .line 128
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid channel / stream configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static opus_copy_channel_out_short([SIII[SIII)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    :goto_0
    if-ge v0, p7, :cond_1

    mul-int v1, v0, p2

    add-int/2addr v1, p3

    add-int/2addr v1, p1

    mul-int v2, v0, p6

    add-int/2addr v2, p5

    .line 284
    aget-short v2, p4, v2

    aput-short v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_1
    if-ge p4, p7, :cond_1

    mul-int p5, p4, p2

    add-int/2addr p5, p3

    add-int/2addr p5, p1

    .line 288
    aput-short v0, p0, p5

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static opus_multistream_packet_validate([BIIII)I
    .locals 15

    move/from16 v0, p3

    .line 145
    new-instance v5, Lio/github/jaredmdobson/concentus/BoxedValueByte;

    const/4 v12, 0x0

    invoke-direct {v5, v12}, Lio/github/jaredmdobson/concentus/BoxedValueByte;-><init>(B)V

    const/16 v1, 0x30

    .line 146
    new-array v8, v1, [S

    .line 148
    new-instance v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v11, v12}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 149
    new-instance v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v10, v12}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move/from16 v2, p1

    move/from16 v3, p2

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v13, v0, :cond_4

    if-gtz v3, :cond_0

    .line 154
    sget p0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return p0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    if-eq v13, v1, :cond_1

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x0

    .line 157
    move-object v1, v6

    check-cast v1, [[B

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->opus_packet_parse_impl([BIIILio/github/jaredmdobson/concentus/BoxedValueByte;[[BI[SILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)I

    move-result v4

    if-gez v4, :cond_2

    return v4

    .line 163
    :cond_2
    iget v4, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move/from16 v6, p4

    invoke-static {p0, v2, v4, v6}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->getNumSamples([BIII)I

    move-result v4

    if-eqz v13, :cond_3

    if-eq v14, v4, :cond_3

    .line 165
    sget p0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return p0

    .line 168
    :cond_3
    iget v7, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/2addr v2, v7

    .line 169
    iget v7, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    sub-int/2addr v3, v7

    add-int/lit8 v13, v13, 0x1

    move v14, v4

    goto :goto_0

    :cond_4
    return v14
.end method


# virtual methods
.method public GetMultistreamDecoderState(I)Lio/github/jaredmdobson/concentus/OpusDecoder;
    .locals 1

    .line 406
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public ResetState()V
    .locals 2

    const/4 v0, 0x0

    .line 394
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 395
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lio/github/jaredmdobson/concentus/OpusDecoder;->resetState()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decodeMultistream([BII[SIII)I
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 314
    invoke-virtual/range {v0 .. v8}, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->opus_multistream_decode_native([BII[SIIII)I

    move-result p1

    return p1
.end method

.method public getBandwidth()Lio/github/jaredmdobson/concentus/OpusBandwidth;
    .locals 2

    .line 324
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 327
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusDecoder;->getBandwidth()Lio/github/jaredmdobson/concentus/OpusBandwidth;

    move-result-object v0

    return-object v0

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decoder not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFinalRange()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 384
    :goto_0
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v2, v2, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v2, :cond_0

    .line 385
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lio/github/jaredmdobson/concentus/OpusDecoder;->getFinalRange()I

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getGain()I
    .locals 2

    .line 348
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 351
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusDecoder;->getGain()I

    move-result v0

    return v0

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decoder not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastPacketDuration()I
    .locals 2

    .line 371
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 374
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusDecoder;->getLastPacketDuration()I

    move-result v0

    return v0

    .line 372
    :cond_1
    :goto_0
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_STATE:I

    return v0
.end method

.method public getSampleRate()I
    .locals 2

    .line 336
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 339
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusDecoder;->getSampleRate()I

    move-result v0

    return v0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decoder not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method opus_multistream_decode_native([BII[SIIII)I
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 192
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->getSampleRate()I

    move-result v2

    .line 193
    div-int/lit8 v3, v2, 0x19

    mul-int/lit8 v3, v3, 0x3

    move/from16 v4, p6

    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    .line 194
    new-array v9, v4, [S

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    if-gez v1, :cond_1

    .line 201
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1

    :cond_1
    if-nez v16, :cond_2

    .line 203
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v6, v6, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v4

    if-ge v1, v6, :cond_2

    .line 204
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v1

    :cond_2
    if-nez v16, :cond_4

    .line 207
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v6, v6, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-static {v7, v8, v1, v6, v2}, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->opus_multistream_packet_validate([BIIII)I

    move-result v2

    if-gez v2, :cond_3

    return v2

    :cond_3
    if-le v2, v3, :cond_5

    .line 211
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v1

    :cond_4
    move-object/from16 v7, p1

    move/from16 v8, p2

    :cond_5
    move/from16 v24, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 214
    :goto_1
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v6, v6, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v2, v6, :cond_c

    .line 218
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

    add-int/lit8 v17, v3, 0x1

    aget-object v3, v6, v3

    if-nez v16, :cond_6

    if-gtz v1, :cond_6

    .line 221
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v1

    .line 223
    :cond_6
    new-instance v14, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v14, v5}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 224
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v6, v6, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    sub-int/2addr v6, v4

    if-eq v2, v6, :cond_7

    const/4 v13, 0x1

    goto :goto_2

    :cond_7
    const/4 v13, 0x0

    :goto_2
    const/4 v10, 0x0

    move/from16 v12, p7

    move/from16 v15, p8

    move-object v5, v3

    move-object v6, v7

    move v7, v8

    move/from16 v11, v24

    move v8, v1

    const/4 v1, 0x0

    invoke-virtual/range {v5 .. v15}, Lio/github/jaredmdobson/concentus/OpusDecoder;->opus_decode_native([BII[SIIIILio/github/jaredmdobson/concentus/BoxedValueInt;I)I

    move-result v3

    .line 227
    iget v5, v14, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int v13, v7, v5

    .line 228
    iget v5, v14, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    sub-int v14, v8, v5

    if-gtz v3, :cond_8

    return v3

    .line 233
    :cond_8
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v5, v5, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_coupled_streams:I

    const/4 v15, -0x1

    if-ge v2, v5, :cond_a

    const/4 v5, -0x1

    .line 237
    :goto_3
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    invoke-static {v6, v2, v5}, Lio/github/jaredmdobson/concentus/OpusMultistream;->get_left_channel(Lio/github/jaredmdobson/concentus/ChannelLayout;II)I

    move-result v8

    if-eq v8, v15, :cond_9

    .line 238
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v7, v5, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v12, v3

    invoke-static/range {v5 .. v12}, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->opus_copy_channel_out_short([SIII[SIII)V

    move v5, v8

    goto :goto_3

    :cond_9
    move v12, v3

    const/4 v3, -0x1

    .line 244
    :goto_4
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    invoke-static {v5, v2, v3}, Lio/github/jaredmdobson/concentus/OpusMultistream;->get_right_channel(Lio/github/jaredmdobson/concentus/ChannelLayout;II)I

    move-result v8

    if-eq v8, v15, :cond_b

    .line 245
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v7, v3, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v5 .. v12}, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->opus_copy_channel_out_short([SIII[SIII)V

    move v3, v8

    goto :goto_4

    :cond_a
    move v12, v3

    const/4 v3, -0x1

    .line 253
    :goto_5
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    invoke-static {v5, v2, v3}, Lio/github/jaredmdobson/concentus/OpusMultistream;->get_mono_channel(Lio/github/jaredmdobson/concentus/ChannelLayout;II)I

    move-result v8

    if-eq v8, v15, :cond_b

    .line 254
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v7, v3, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v5 .. v12}, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->opus_copy_channel_out_short([SIII[SIII)V

    move v3, v8

    goto :goto_5

    :cond_b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, p1

    move/from16 v24, v12

    move v8, v13

    move v1, v14

    move/from16 v3, v17

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 261
    :goto_6
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    if-ge v5, v1, :cond_e

    .line 262
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->mapping:[S

    aget-short v1, v1, v5

    const/16 v2, 0xff

    if-ne v1, v2, :cond_d

    .line 263
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, v1

    move/from16 v20, v5

    invoke-static/range {v17 .. v24}, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->opus_copy_channel_out_short([SIII[SIII)V

    goto :goto_7

    :cond_d
    move/from16 v20, v5

    :goto_7
    add-int/lit8 v5, v20, 0x1

    goto :goto_6

    :cond_e
    return v24
.end method

.method opus_multistream_decoder_init(IIII[S)I
    .locals 2

    const/16 v0, 0xff

    if-gt p2, v0, :cond_6

    const/4 v0, 0x1

    if-lt p2, v0, :cond_6

    if-gt p4, p3, :cond_6

    if-lt p3, v0, :cond_6

    if-ltz p4, :cond_6

    rsub-int v1, p4, 0xff

    if-gt p3, v1, :cond_6

    .line 70
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iput p2, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    .line 71
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iput p3, p2, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    .line 72
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iput p4, p2, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_coupled_streams:I

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 74
    :goto_0
    iget-object p4, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget p4, p4, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    if-ge p3, p4, :cond_0

    .line 75
    iget-object p4, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget-object p4, p4, Lio/github/jaredmdobson/concentus/ChannelLayout;->mapping:[S

    aget-short v1, p5, p3

    aput-short v1, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    invoke-static {p3}, Lio/github/jaredmdobson/concentus/OpusMultistream;->validate_layout(Lio/github/jaredmdobson/concentus/ChannelLayout;)I

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x0

    .line 81
    :goto_1
    iget-object p4, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget p4, p4, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_coupled_streams:I

    if-ge p2, p4, :cond_2

    .line 82
    iget-object p4, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

    aget-object p4, p4, p3

    const/4 p5, 0x2

    invoke-virtual {p4, p1, p5}, Lio/github/jaredmdobson/concentus/OpusDecoder;->opus_decoder_init(II)I

    move-result p4

    .line 83
    sget p5, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-eq p4, p5, :cond_1

    return p4

    :cond_1
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 88
    :cond_2
    :goto_2
    iget-object p4, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget p4, p4, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge p2, p4, :cond_4

    .line 89
    iget-object p4, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

    aget-object p4, p4, p3

    invoke-virtual {p4, p1, v0}, Lio/github/jaredmdobson/concentus/OpusDecoder;->opus_decoder_init(II)I

    move-result p4

    .line 90
    sget p5, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-eq p4, p5, :cond_3

    return p4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 95
    :cond_4
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    return p1

    .line 78
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid surround channel layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid channel or coupled stream count"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public setGain(I)V
    .locals 2

    const/4 v0, 0x0

    .line 360
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 361
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSDecoder;->decoders:[Lio/github/jaredmdobson/concentus/OpusDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusDecoder;->setGain(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
