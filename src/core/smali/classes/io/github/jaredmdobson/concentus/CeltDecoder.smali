.class Lio/github/jaredmdobson/concentus/CeltDecoder;
.super Ljava/lang/Object;
.source "CeltDecoder.java"


# instance fields
.field backgroundLogE:[I

.field channels:I

.field decode_mem:[[I

.field downsample:I

.field end:I

.field error:I

.field last_pitch_index:I

.field loss_count:I

.field lpc:[[I

.field mode:Lio/github/jaredmdobson/concentus/CeltMode;

.field oldEBands:[I

.field oldLogE:[I

.field oldLogE2:[I

.field overlap:I

.field postfilter_gain:I

.field postfilter_gain_old:I

.field postfilter_period:I

.field postfilter_period_old:I

.field postfilter_tapset:I

.field postfilter_tapset_old:I

.field final preemph_memD:[I

.field rng:I

.field signalling:I

.field start:I

.field stream_channels:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->overlap:I

    .line 44
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->channels:I

    .line 45
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->stream_channels:I

    .line 47
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->downsample:I

    .line 48
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->start:I

    .line 49
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->end:I

    .line 50
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->signalling:I

    .line 53
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->rng:I

    .line 54
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->error:I

    .line 55
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->last_pitch_index:I

    .line 56
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->loss_count:I

    .line 57
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period:I

    .line 58
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period_old:I

    .line 59
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_gain:I

    .line 60
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_gain_old:I

    .line 61
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_tapset:I

    .line 62
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_tapset_old:I

    const/4 v1, 0x2

    .line 64
    new-array v1, v1, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->preemph_memD:[I

    .line 78
    move-object v1, v0

    check-cast v1, [[I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->decode_mem:[[I

    .line 79
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->lpc:[[I

    .line 80
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldEBands:[I

    .line 81
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldLogE:[I

    .line 82
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldLogE2:[I

    .line 83
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->backgroundLogE:[I

    return-void
.end method

.method private PartialReset()V
    .locals 3

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->rng:I

    .line 99
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->error:I

    .line 100
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->last_pitch_index:I

    .line 101
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->loss_count:I

    .line 102
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period:I

    .line 103
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period_old:I

    .line 104
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_gain:I

    .line 105
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_gain_old:I

    .line 106
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_tapset:I

    .line 107
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_tapset_old:I

    .line 108
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->preemph_memD:[I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    const/4 v0, 0x0

    .line 109
    move-object v1, v0

    check-cast v1, [[I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->decode_mem:[[I

    .line 110
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->lpc:[[I

    .line 111
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldEBands:[I

    .line 112
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldLogE:[I

    .line 113
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldLogE2:[I

    .line 114
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->backgroundLogE:[I

    return-void
.end method

.method private Reset()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->overlap:I

    .line 88
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->channels:I

    .line 89
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->stream_channels:I

    .line 90
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->downsample:I

    .line 91
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->start:I

    .line 92
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->end:I

    .line 93
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->signalling:I

    .line 94
    invoke-direct {p0}, Lio/github/jaredmdobson/concentus/CeltDecoder;->PartialReset()V

    return-void
.end method

.method private opus_custom_decoder_init(Lio/github/jaredmdobson/concentus/CeltMode;I)I
    .locals 1

    if-ltz p2, :cond_1

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-direct {p0}, Lio/github/jaredmdobson/concentus/CeltDecoder;->Reset()V

    .line 164
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    .line 165
    iget p1, p1, Lio/github/jaredmdobson/concentus/CeltMode;->overlap:I

    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->overlap:I

    .line 166
    iput p2, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->channels:I

    iput p2, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->stream_channels:I

    const/4 p1, 0x1

    .line 168
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->downsample:I

    const/4 p2, 0x0

    .line 169
    iput p2, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->start:I

    .line 170
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v0, v0, Lio/github/jaredmdobson/concentus/CeltMode;->effEBands:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->end:I

    .line 171
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->signalling:I

    .line 173
    iput p2, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->loss_count:I

    .line 181
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/CeltDecoder;->ResetState()V

    .line 183
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    return p1

    .line 155
    :cond_1
    :goto_0
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1
.end method


# virtual methods
.method GetAndClearError()I
    .locals 2

    .line 806
    iget v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->error:I

    const/4 v1, 0x0

    .line 807
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->error:I

    return v0
.end method

.method public GetFinalRange()I
    .locals 1

    .line 853
    iget v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->rng:I

    return v0
.end method

.method public GetLookahead()I
    .locals 2

    .line 817
    iget v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->overlap:I

    iget v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->downsample:I

    div-int/2addr v0, v1

    return v0
.end method

.method public GetMode()Lio/github/jaredmdobson/concentus/CeltMode;
    .locals 1

    .line 835
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    return-object v0
.end method

.method public GetPitch()I
    .locals 1

    .line 826
    iget v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period:I

    return v0
.end method

.method ResetState()V
    .locals 4

    .line 120
    invoke-direct {p0}, Lio/github/jaredmdobson/concentus/CeltDecoder;->PartialReset()V

    .line 123
    iget v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->channels:I

    new-array v1, v0, [[I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->decode_mem:[[I

    .line 124
    new-array v0, v0, [[I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->lpc:[[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 125
    :goto_0
    iget v2, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->channels:I

    if-ge v1, v2, :cond_0

    .line 126
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->decode_mem:[[I

    iget-object v3, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v3, v3, Lio/github/jaredmdobson/concentus/CeltMode;->overlap:I

    add-int/lit16 v3, v3, 0x800

    new-array v3, v3, [I

    aput-object v3, v2, v1

    .line 127
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->lpc:[[I

    const/16 v3, 0x18

    new-array v3, v3, [I

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v1, v1, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldEBands:[I

    .line 130
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v1, v1, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldLogE:[I

    .line 131
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v1, v1, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldLogE2:[I

    .line 132
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v1, v1, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->backgroundLogE:[I

    .line 134
    :goto_1
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v1, v1, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldLogE:[I

    iget-object v2, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldLogE2:[I

    const/16 v3, -0x7000

    aput v3, v2, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method SetChannels(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 802
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->stream_channels:I

    return-void

    .line 800
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Channel count must be 1 or 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetEndBand(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 792
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v0, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    if-gt p1, v0, :cond_0

    .line 795
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->end:I

    return-void

    .line 793
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "End band above max number of ebands (or less than 1)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public SetSignalling(I)V
    .locals 0

    .line 844
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->signalling:I

    return-void
.end method

.method SetStartBand(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 785
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v0, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    if-ge p1, v0, :cond_0

    .line 788
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->start:I

    return-void

    .line 786
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Start band above max number of ebands (or negative)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method celt_decode_lost(II)V
    .locals 37

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 189
    iget v8, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->channels:I

    const/4 v2, 0x2

    .line 190
    new-array v3, v2, [[I

    .line 191
    new-array v4, v2, [I

    .line 198
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    .line 199
    iget v6, v5, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    .line 200
    iget v15, v5, Lio/github/jaredmdobson/concentus/CeltMode;->overlap:I

    .line 201
    iget-object v7, v5, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 205
    :goto_0
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->decode_mem:[[I

    aget-object v12, v11, v10

    aput-object v12, v3, v10

    rsub-int v12, v1, 0x800

    .line 206
    aput v12, v4, v10

    const/4 v13, 0x1

    add-int/2addr v10, v13

    if-lt v10, v8, :cond_19

    .line 209
    iget v10, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->loss_count:I

    const/4 v14, 0x5

    const/16 v24, 0x2

    if-ge v10, v14, :cond_11

    iget v14, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->start:I

    if-eqz v14, :cond_0

    goto/16 :goto_10

    :cond_0
    if-nez v10, :cond_1

    .line 266
    invoke-static {v11, v8}, Lio/github/jaredmdobson/concentus/CeltCommon;->celt_plc_pitch_search([[II)I

    move-result v3

    iput v3, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->last_pitch_index:I

    const/16 v4, 0x7fff

    goto :goto_1

    .line 268
    :cond_1
    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->last_pitch_index:I

    const/16 v4, 0x6666

    .line 272
    :goto_1
    new-array v6, v15, [I

    const/16 v7, 0x400

    const/4 v10, 0x0

    .line 273
    new-array v9, v7, [I

    .line 274
    iget-object v11, v5, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    const/4 v5, 0x0

    .line 286
    :goto_2
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->decode_mem:[[I

    aget-object v16, v14, v5

    const/4 v14, 0x0

    :goto_3
    const/16 v2, 0xc

    if-ge v14, v7, :cond_2

    add-int/lit16 v10, v14, 0x400

    .line 288
    aget v10, v16, v10

    invoke-static {v10, v2}, Lio/github/jaredmdobson/concentus/Inlines;->ROUND16(II)I

    move-result v2

    aput v2, v9, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    goto :goto_3

    .line 291
    :cond_2
    iget v10, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->loss_count:I

    const/16 v14, 0x18

    if-nez v10, :cond_4

    const/16 v10, 0x19

    .line 292
    new-array v10, v10, [I

    const/16 v17, 0x1

    const/16 v13, 0x18

    const/16 v18, 0x18

    const/16 v14, 0x400

    move/from16 v35, v12

    move v12, v15

    move-object/from16 v15, v16

    const/16 p2, 0x0

    const/16 v2, 0x18

    .line 295
    invoke-static/range {v9 .. v14}, Lio/github/jaredmdobson/concentus/Autocorrelation;->_celt_autocorr([I[I[IIII)I

    move-object/from16 v36, v11

    .line 298
    aget v11, v10, p2

    const/16 v13, 0xd

    invoke-static {v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v13

    add-int/2addr v11, v13

    aput v11, v10, p2

    const/4 v13, 0x1

    :goto_4
    if-gt v13, v2, :cond_3

    .line 302
    aget v11, v10, v13

    mul-int/lit8 v14, v13, 0x2

    mul-int v14, v14, v13

    invoke-static {v14, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v14

    sub-int/2addr v11, v14

    aput v11, v10, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 304
    :cond_3
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->lpc:[[I

    aget-object v11, v11, v5

    invoke-static {v11, v10, v2}, Lio/github/jaredmdobson/concentus/CeltLPC;->celt_lpc([I[II)V

    goto :goto_5

    :cond_4
    move-object/from16 v36, v11

    move/from16 v35, v12

    move v12, v15

    move-object/from16 v15, v16

    const/16 p2, 0x0

    const/16 v2, 0x18

    :goto_5
    mul-int/lit8 v10, v3, 0x2

    .line 308
    invoke-static {v10, v7}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v10

    .line 312
    new-array v11, v2, [I

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v2, :cond_5

    rsub-int v14, v10, 0x7ff

    sub-int/2addr v14, v13

    .line 314
    aget v14, v15, v14

    const/16 v2, 0xc

    .line 315
    invoke-static {v14, v2}, Lio/github/jaredmdobson/concentus/Inlines;->ROUND16(II)I

    move-result v14

    aput v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    const/16 v2, 0x18

    goto :goto_6

    :cond_5
    rsub-int v2, v10, 0x400

    .line 319
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->lpc:[[I

    aget-object v27, v13, v5

    const/16 v28, 0x0

    const/16 v32, 0x18

    move-object/from16 v29, v9

    move/from16 v30, v2

    move/from16 v26, v2

    move-object/from16 v25, v9

    move/from16 v31, v10

    move-object/from16 v33, v11

    invoke-static/range {v25 .. v33}, Lio/github/jaredmdobson/concentus/Kernels;->celt_fir([II[II[IIII[I)V

    move-object/from16 v2, v25

    move/from16 v10, v26

    move/from16 v9, v31

    .line 329
    invoke-static {v2, v10, v9}, Lio/github/jaredmdobson/concentus/Inlines;->celt_maxabs16([III)I

    move-result v10

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->celt_zlog2(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, -0x14

    const/4 v11, 0x0

    invoke-static {v11, v10}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v10

    shr-int/lit8 v9, v9, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    :goto_7
    if-ge v11, v9, :cond_6

    rsub-int v7, v9, 0x400

    add-int/2addr v7, v11

    .line 333
    aget v7, v2, v7

    .line 334
    invoke-static {v7, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v7

    invoke-static {v7, v10}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v7

    add-int/2addr v13, v7

    mul-int/lit8 v7, v9, 0x2

    move-object/from16 v26, v2

    const/16 v2, 0x400

    rsub-int v7, v7, 0x400

    add-int/2addr v7, v11

    .line 335
    aget v7, v26, v7

    .line 336
    invoke-static {v7, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v7

    invoke-static {v7, v10}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v7

    add-int/2addr v14, v7

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v26

    const/16 v7, 0x400

    goto :goto_7

    :cond_6
    move-object/from16 v26, v2

    const/16 v2, 0x400

    .line 338
    invoke-static {v13, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result v7

    const/4 v9, 0x1

    .line 339
    invoke-static {v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v7

    invoke-static {v7, v14}, Lio/github/jaredmdobson/concentus/Inlines;->frac_div32(II)I

    move-result v7

    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result v7

    move/from16 v10, v35

    const/4 v11, 0x0

    .line 345
    invoke-static {v15, v1, v11, v10}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([IIII)V

    rsub-int v11, v3, 0x400

    add-int v13, v1, v12

    .line 355
    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v14

    move/from16 v27, v4

    move/from16 v28, v5

    move v4, v14

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v34, 0x1

    :goto_8
    if-ge v14, v13, :cond_8

    if-lt v2, v3, :cond_7

    sub-int/2addr v2, v3

    .line 360
    invoke-static {v4, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v4

    :cond_7
    add-int v16, v10, v14

    add-int v17, v11, v2

    .line 362
    aget v5, v26, v17

    .line 363
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v5

    move/from16 v17, v2

    const/16 v2, 0xc

    invoke-static {v5, v2}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v5

    aput v5, v15, v16

    rsub-int v5, v1, 0x400

    add-int/2addr v5, v11

    add-int v5, v5, v17

    .line 367
    aget v5, v15, v5

    invoke-static {v5, v2}, Lio/github/jaredmdobson/concentus/Inlines;->ROUND16(II)I

    move-result v5

    .line 370
    invoke-static {v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    const/16 v5, 0x8

    invoke-static {v2, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v9, v2

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v2, v17, 0x1

    goto :goto_8

    :cond_8
    const/16 v2, 0x18

    .line 374
    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v2, :cond_9

    rsub-int v7, v1, 0x7ff

    sub-int/2addr v7, v5

    .line 378
    aget v7, v15, v7

    const/16 v11, 0xc

    invoke-static {v7, v11}, Lio/github/jaredmdobson/concentus/Inlines;->ROUND16(II)I

    move-result v7

    aput v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 382
    :cond_9
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->lpc:[[I

    aget-object v18, v2, v28

    const/16 v22, 0x18

    move-object/from16 v19, v15

    move/from16 v20, v10

    move-object/from16 v23, v4

    move/from16 v17, v10

    move/from16 v21, v13

    move-object/from16 v16, v15

    invoke-static/range {v16 .. v23}, Lio/github/jaredmdobson/concentus/CeltLPC;->celt_iir([II[I[IIII[I)V

    move/from16 v35, v17

    move/from16 v2, v21

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_a
    if-ge v4, v2, :cond_a

    add-int v7, v35, v4

    .line 393
    aget v7, v15, v7

    const/16 v11, 0xc

    invoke-static {v7, v11}, Lio/github/jaredmdobson/concentus/Inlines;->ROUND16(II)I

    move-result v7

    .line 394
    invoke-static {v7, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v7

    const/16 v10, 0x8

    invoke-static {v7, v10}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_a
    const/4 v4, 0x2

    .line 397
    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v7

    if-gt v9, v7, :cond_c

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v2, :cond_b

    add-int v5, v35, v9

    const/4 v11, 0x0

    .line 399
    aput v11, v15, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_b
    const/4 v11, 0x0

    const/4 v7, 0x1

    goto :goto_e

    :cond_c
    const/4 v11, 0x0

    const/4 v7, 0x1

    if-ge v9, v5, :cond_e

    .line 402
    invoke-static {v9, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v9

    add-int/2addr v9, v7

    add-int/lit8 v5, v5, 0x1

    invoke-static {v9, v5}, Lio/github/jaredmdobson/concentus/Inlines;->frac_div32(II)I

    move-result v5

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result v5

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v12, :cond_d

    .line 404
    aget v10, v36, v9

    rsub-int v13, v5, 0x7fff

    .line 405
    invoke-static {v10, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v10

    const/16 v13, 0x7fff

    rsub-int v10, v10, 0x7fff

    add-int v13, v35, v9

    .line 406
    aget v14, v15, v13

    .line 407
    invoke-static {v10, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v10

    aput v10, v15, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_d
    move v9, v12

    :goto_d
    if-ge v9, v2, :cond_e

    add-int v10, v35, v9

    .line 410
    aget v13, v15, v10

    .line 411
    invoke-static {v5, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v13

    aput v13, v15, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 419
    :cond_e
    :goto_e
    iget v13, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period:I

    iget v2, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_gain:I

    neg-int v5, v2

    neg-int v2, v2

    iget v9, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_tapset:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v10, 0x0

    move-object/from16 v16, v15

    move v15, v12

    const/16 v12, 0x800

    move v14, v13

    move/from16 v19, v9

    move/from16 v17, v2

    move/from16 v18, v9

    move-object/from16 v11, v16

    const/4 v2, 0x0

    const/16 v34, 0x1

    move/from16 v16, v5

    move-object v9, v6

    invoke-static/range {v9 .. v21}, Lio/github/jaredmdobson/concentus/CeltCommon;->comb_filter([II[IIIIIIIII[II)V

    move-object/from16 v16, v11

    const/4 v5, 0x0

    .line 426
    :goto_f
    div-int/lit8 v6, v15, 0x2

    if-ge v5, v6, :cond_f

    add-int/lit16 v6, v5, 0x800

    .line 427
    aget v7, v36, v5

    add-int/lit8 v10, v15, -0x1

    sub-int/2addr v10, v5

    aget v10, v9, v10

    .line 428
    invoke-static {v7, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v7

    sub-int v10, v15, v5

    add-int/lit8 v10, v10, -0x1

    aget v10, v36, v10

    aget v11, v9, v5

    .line 429
    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v10

    add-int/2addr v7, v10

    aput v7, v16, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_f
    add-int/lit8 v5, v28, 0x1

    if-lt v5, v8, :cond_10

    goto/16 :goto_18

    :cond_10
    move-object v6, v9

    move-object/from16 v9, v26

    move/from16 v4, v27

    move/from16 v12, v35

    move-object/from16 v11, v36

    const/16 v7, 0x400

    const/4 v10, 0x0

    const/4 v13, 0x1

    const/16 v24, 0x2

    goto/16 :goto_2

    :cond_11
    :goto_10
    move/from16 v35, v12

    const/4 v2, 0x0

    const/16 v34, 0x1

    .line 217
    iget v9, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->end:I

    .line 218
    iget v10, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->start:I

    iget v11, v5, Lio/github/jaredmdobson/concentus/CeltMode;->effEBands:I

    invoke-static {v9, v11}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v11

    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v10

    .line 220
    invoke-static {v8, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v11

    .line 226
    iget v12, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->loss_count:I

    if-nez v12, :cond_12

    const/16 v12, 0x600

    goto :goto_11

    :cond_12
    const/16 v12, 0x200

    :goto_11
    const/4 v13, 0x0

    .line 229
    :goto_12
    iget v14, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->start:I

    :goto_13
    if-ge v14, v9, :cond_13

    .line 230
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldEBands:[I

    mul-int v17, v13, v6

    add-int v17, v17, v14

    move-object/from16 v18, v2

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->backgroundLogE:[I

    aget v2, v2, v17

    aget v19, v18, v17

    move-object/from16 v20, v3

    sub-int v3, v19, v12

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v2

    aput v2, v18, v17

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v20

    const/4 v2, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, v3

    add-int/lit8 v13, v13, 0x1

    if-lt v13, v8, :cond_18

    .line 233
    iget v2, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->rng:I

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v8, :cond_16

    .line 235
    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->start:I

    :goto_15
    if-ge v3, v10, :cond_15

    .line 239
    aget-short v6, v7, v3

    shl-int v12, v6, p2

    add-int/lit8 v3, v3, 0x1

    .line 240
    aget-short v13, v7, v3

    sub-int/2addr v13, v6

    shl-int v6, v13, p2

    const/4 v13, 0x0

    :goto_16
    if-ge v13, v6, :cond_14

    .line 242
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Bands;->celt_lcg_rand(I)I

    move-result v2

    .line 243
    aget-object v14, v11, v9

    add-int v17, v12, v13

    shr-int/lit8 v18, v2, 0x14

    aput v18, v14, v17

    add-int/lit8 v13, v13, 0x1

    goto :goto_16

    .line 246
    :cond_14
    aget-object v12, v11, v9

    const/4 v13, 0x0

    const/16 v14, 0x7fff

    invoke-static {v12, v13, v6, v14}, Lio/github/jaredmdobson/concentus/VQ;->renormalise_vector([IIII)V

    goto :goto_15

    :cond_15
    const/4 v13, 0x0

    const/16 v14, 0x7fff

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_16
    const/4 v13, 0x0

    .line 249
    iput v2, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->rng:I

    const/4 v9, 0x0

    .line 253
    :goto_17
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->decode_mem:[[I

    aget-object v2, v2, v9

    shr-int/lit8 v3, v15, 0x1

    add-int v12, v35, v3

    invoke-static {v2, v1, v13, v12}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([IIII)V

    add-int/lit8 v9, v9, 0x1

    move-object v1, v5

    if-lt v9, v8, :cond_17

    .line 256
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldEBands:[I

    iget v6, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->start:I

    iget v12, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->downsample:I

    const/4 v13, 0x0

    move v7, v10

    const/4 v10, 0x0

    move v9, v8

    move-object v2, v11

    move-object/from16 v3, v20

    move/from16 v11, p2

    invoke-static/range {v1 .. v13}, Lio/github/jaredmdobson/concentus/CeltCommon;->celt_synthesis(Lio/github/jaredmdobson/concentus/CeltMode;[[I[[I[I[IIIIIIIII)V

    .line 434
    :goto_18
    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->loss_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->loss_count:I

    return-void

    :cond_17
    move/from16 v1, p1

    goto :goto_17

    :cond_18
    move-object v1, v5

    move-object v5, v11

    move-object/from16 v3, v20

    const/4 v2, 0x0

    move-object v5, v1

    move/from16 v1, p1

    goto/16 :goto_12

    :cond_19
    move/from16 v1, p1

    goto/16 :goto_0
.end method

.method celt_decode_with_ec([BII[SIILio/github/jaredmdobson/concentus/EntropyCoder;I)I
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x2

    .line 450
    new-array v4, v3, [[I

    .line 451
    new-array v5, v3, [I

    .line 457
    iget v9, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->channels:I

    .line 476
    iget v11, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->stream_channels:I

    .line 482
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    .line 483
    iget v6, v10, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    .line 484
    iget v7, v10, Lio/github/jaredmdobson/concentus/CeltMode;->overlap:I

    .line 485
    iget-object v8, v10, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    .line 486
    iget v12, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->start:I

    .line 487
    iget v13, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->end:I

    .line 488
    iget v14, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->downsample:I

    mul-int v14, v14, p6

    .line 490
    iget-object v15, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldEBands:[I

    const/16 v32, 0x2

    .line 491
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldLogE:[I

    move-object/from16 p6, v3

    .line 492
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->oldLogE2:[I

    move-object/from16 v33, v3

    .line 493
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->backgroundLogE:[I

    move-object/from16 v34, v3

    move-object/from16 v36, v4

    const/4 v3, 0x0

    .line 496
    :goto_0
    iget v4, v10, Lio/github/jaredmdobson/concentus/CeltMode;->maxLM:I

    if-gt v3, v4, :cond_1

    .line 497
    iget v4, v10, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    shl-int/2addr v4, v3

    if-ne v4, v14, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 501
    :cond_1
    :goto_1
    iget v4, v10, Lio/github/jaredmdobson/concentus/CeltMode;->maxLM:I

    if-le v3, v4, :cond_2

    .line 502
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1

    :cond_2
    const/4 v4, 0x1

    shl-int v37, v4, v3

    if-ltz v2, :cond_2c

    const/16 v38, 0x1

    const/16 v4, 0x4fb

    if-gt v2, v4, :cond_2c

    if-nez p4, :cond_3

    goto/16 :goto_22

    .line 511
    :cond_3
    iget v4, v10, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    mul-int v4, v4, v37

    move/from16 v17, v3

    const/16 v16, 0x0

    .line 514
    :goto_2
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->decode_mem:[[I

    aget-object v3, v3, v16

    aput-object v3, v36, v16

    rsub-int v3, v4, 0x800

    .line 515
    aput v3, v5, v16

    move/from16 v29, v3

    add-int/lit8 v3, v16, 0x1

    if-lt v3, v9, :cond_2b

    .line 519
    iget v3, v10, Lio/github/jaredmdobson/concentus/CeltMode;->effEBands:I

    if-le v13, v3, :cond_4

    .line 520
    iget v3, v10, Lio/github/jaredmdobson/concentus/CeltMode;->effEBands:I

    goto :goto_3

    :cond_4
    move v3, v13

    :goto_3
    if-eqz v1, :cond_2a

    move/from16 v39, v3

    const/4 v3, 0x1

    if-gt v2, v3, :cond_5

    goto/16 :goto_21

    :cond_5
    if-nez p7, :cond_6

    .line 533
    new-instance v3, Lio/github/jaredmdobson/concentus/EntropyCoder;

    invoke-direct {v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;-><init>()V

    move-object/from16 v40, v5

    move/from16 v5, p2

    .line 534
    invoke-virtual {v3, v1, v5, v2}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_init([BII)V

    goto :goto_4

    :cond_6
    move-object/from16 v40, v5

    move-object/from16 v3, p7

    :goto_4
    const/4 v1, 0x1

    if-ne v11, v1, :cond_7

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v6, :cond_7

    .line 539
    aget v5, v15, v1

    add-int v16, v6, v1

    move/from16 v18, v1

    aget v1, v15, v16

    invoke-static {v5, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v1

    aput v1, v15, v18

    add-int/lit8 v1, v18, 0x1

    goto :goto_5

    :cond_7
    mul-int/lit8 v1, v2, 0x8

    .line 544
    invoke-virtual {v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v5

    if-lt v5, v1, :cond_8

    move v2, v7

    move-object/from16 v18, v8

    const/4 v7, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x1

    if-ne v5, v2, :cond_9

    move v2, v7

    move-object/from16 v18, v8

    const-wide/16 v7, 0xf

    .line 549
    invoke-virtual {v3, v7, v8}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v7

    goto :goto_6

    :cond_9
    move v2, v7

    move-object/from16 v18, v8

    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_a

    .line 557
    iget v5, v3, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    invoke-virtual {v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v8

    sub-int v8, v1, v8

    add-int/2addr v5, v8

    iput v5, v3, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    move v5, v1

    :cond_a
    if-nez v12, :cond_d

    add-int/lit8 v8, v5, 0x10

    if-gt v8, v1, :cond_d

    move/from16 p2, v7

    const-wide/16 v7, 0x1

    .line 564
    invoke-virtual {v3, v7, v8}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v5

    if-eqz v5, :cond_c

    const-wide/16 v7, 0x6

    .line 566
    invoke-virtual {v3, v7, v8}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_uint(J)J

    move-result-wide v7

    long-to-int v5, v7

    const/16 v7, 0x10

    shl-int/2addr v7, v5

    add-int/lit8 v5, v5, 0x4

    .line 567
    invoke-virtual {v3, v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bits(I)I

    move-result v5

    add-int/2addr v7, v5

    const/16 v38, 0x1

    add-int/lit8 v5, v7, -0x1

    const/4 v7, 0x3

    .line 568
    invoke-virtual {v3, v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bits(I)I

    move-result v8

    .line 569
    invoke-virtual {v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    if-gt v7, v1, :cond_b

    .line 570
    sget-object v7, Lio/github/jaredmdobson/concentus/CeltTables;->tapset_icdf:[S

    move/from16 p7, v2

    const/4 v2, 0x2

    invoke-virtual {v3, v7, v2}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v7

    goto :goto_7

    :cond_b
    move/from16 p7, v2

    const/4 v7, 0x0

    :goto_7
    add-int/lit8 v8, v8, 0x1

    mul-int/lit16 v2, v8, 0xc00

    goto :goto_8

    :cond_c
    move/from16 p7, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 574
    :goto_8
    invoke-virtual {v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v8

    move/from16 v41, v2

    move v2, v5

    move/from16 v42, v7

    move v5, v8

    goto :goto_9

    :cond_d
    move/from16 p7, v2

    move/from16 p2, v7

    const/4 v2, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    :goto_9
    const-wide/16 v7, 0x3

    if-lez v17, :cond_e

    move/from16 v43, v2

    add-int/lit8 v2, v5, 0x3

    if-gt v2, v1, :cond_f

    .line 578
    invoke-virtual {v3, v7, v8}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v2

    .line 579
    invoke-virtual {v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v5

    goto :goto_a

    :cond_e
    move/from16 v43, v2

    :cond_f
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_10

    move/from16 v30, v37

    goto :goto_b

    :cond_10
    const/16 v30, 0x0

    :goto_b
    const/16 v16, 0x3

    add-int/lit8 v5, v5, 0x3

    if-gt v5, v1, :cond_11

    .line 591
    invoke-virtual {v3, v7, v8}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v5

    move/from16 v44, v14

    move v14, v5

    goto :goto_c

    :cond_11
    move/from16 v44, v14

    const/4 v14, 0x0

    :goto_c
    move/from16 v16, v11

    move v11, v12

    move v12, v13

    move-object v13, v15

    move-object v15, v3

    .line 593
    invoke-static/range {v10 .. v17}, Lio/github/jaredmdobson/concentus/QuantizeBands;->unquant_coarse_energy(Lio/github/jaredmdobson/concentus/CeltMode;II[IILio/github/jaredmdobson/concentus/EntropyCoder;II)V

    move-object v8, v13

    move v13, v12

    move v12, v11

    move/from16 v11, v16

    .line 596
    new-array v3, v6, [I

    move v14, v2

    move/from16 v16, v17

    move-object/from16 v17, v15

    move-object v15, v3

    .line 597
    invoke-static/range {v12 .. v17}, Lio/github/jaredmdobson/concentus/CeltCommon;->tf_decode(III[IILio/github/jaredmdobson/concentus/EntropyCoder;)V

    move/from16 v14, v16

    move-object/from16 v15, v17

    .line 599
    invoke-virtual {v15}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    const/4 v7, 0x5

    if-gt v5, v1, :cond_12

    .line 602
    sget-object v5, Lio/github/jaredmdobson/concentus/CeltTables;->spread_icdf:[S

    invoke-virtual {v15, v5, v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v5

    goto :goto_d

    :cond_12
    const/4 v5, 0x2

    .line 605
    :goto_d
    new-array v7, v6, [I

    .line 607
    invoke-static {v10, v7, v14, v11}, Lio/github/jaredmdobson/concentus/CeltCommon;->init_caps(Lio/github/jaredmdobson/concentus/CeltMode;[III)V

    move/from16 v45, v2

    .line 609
    new-array v2, v6, [I

    shl-int/lit8 v17, v1, 0x3

    .line 613
    invoke-virtual {v15}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell_frac()I

    move-result v19

    const/16 v20, 0x6

    move-object/from16 v21, v2

    move-object/from16 v31, v3

    move/from16 v46, v5

    move v2, v12

    move/from16 v3, v17

    :goto_e
    if-ge v2, v13, :cond_16

    add-int/lit8 v22, v2, 0x1

    .line 618
    aget-short v23, v18, v22

    aget-short v24, v18, v2

    sub-int v23, v23, v24

    mul-int v23, v23, v11

    shl-int v5, v23, v14

    move/from16 v23, v2

    shl-int/lit8 v2, v5, 0x3

    move-object/from16 v25, v7

    const/16 v7, 0x30

    .line 621
    invoke-static {v7, v5}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v5

    invoke-static {v2, v5}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v2

    move/from16 v7, v20

    const/4 v5, 0x0

    :goto_f
    shl-int/lit8 v24, v7, 0x3

    move/from16 v26, v2

    add-int v2, v19, v24

    if-ge v2, v3, :cond_14

    .line 624
    aget v2, v25, v23

    if-ge v5, v2, :cond_14

    move/from16 v24, v3

    int-to-long v2, v7

    .line 626
    invoke-virtual {v15, v2, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v2

    .line 627
    invoke-virtual {v15}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell_frac()I

    move-result v19

    if-nez v2, :cond_13

    goto :goto_10

    :cond_13
    add-int v5, v5, v26

    sub-int v3, v24, v26

    move/from16 v2, v26

    const/4 v7, 0x1

    goto :goto_f

    :cond_14
    move/from16 v24, v3

    .line 635
    :goto_10
    aput v5, v21, v23

    if-lez v5, :cond_15

    add-int/lit8 v2, v20, -0x1

    const/4 v3, 0x2

    .line 638
    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v20

    :cond_15
    move/from16 v2, v22

    move/from16 v3, v24

    move-object/from16 v7, v25

    goto :goto_e

    :cond_16
    move-object/from16 v25, v7

    .line 642
    new-array v2, v6, [I

    const/16 v24, 0x30

    add-int/lit8 v5, v19, 0x30

    if-gt v5, v3, :cond_17

    .line 643
    sget-object v3, Lio/github/jaredmdobson/concentus/CeltTables;->trim_icdf:[S

    const/4 v5, 0x7

    .line 644
    invoke-virtual {v15, v3, v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v7

    goto :goto_11

    :cond_17
    const/4 v7, 0x5

    .line 646
    :goto_11
    invoke-virtual {v15}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell_frac()I

    move-result v3

    sub-int v17, v17, v3

    const/16 v38, 0x1

    add-int/lit8 v3, v17, -0x1

    if-eqz v45, :cond_18

    const/4 v5, 0x2

    if-lt v14, v5, :cond_18

    add-int/lit8 v5, v14, 0x2

    const/16 v16, 0x3

    shl-int/lit8 v5, v5, 0x3

    if-lt v3, v5, :cond_18

    const/16 v5, 0x8

    goto :goto_12

    :cond_18
    const/4 v5, 0x0

    :goto_12
    sub-int v18, v3, v5

    .line 650
    new-array v3, v6, [I

    move-object/from16 v16, v2

    .line 651
    new-array v2, v6, [I

    move-object/from16 v22, v2

    .line 653
    new-instance v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move-object/from16 p1, v2

    .line 654
    new-instance v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v2, v3}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move-object/from16 v17, v2

    .line 655
    new-instance v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v2, v3}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v2

    move/from16 v23, v11

    move v11, v12

    move v12, v13

    move/from16 v24, v14

    move-object/from16 v13, v21

    move-object/from16 v14, v25

    move-object/from16 v25, v15

    move-object/from16 v21, v16

    move-object/from16 v16, p1

    move v15, v7

    .line 656
    invoke-static/range {v10 .. v28}, Lio/github/jaredmdobson/concentus/Rate;->compute_allocation(Lio/github/jaredmdobson/concentus/CeltMode;II[I[IILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;ILio/github/jaredmdobson/concentus/BoxedValueInt;[I[I[IIILio/github/jaredmdobson/concentus/EntropyCoder;III)I

    move-result v2

    move/from16 p1, v2

    move v13, v12

    move-object/from16 v7, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v14, v21

    move-object/from16 v47, v22

    move/from16 v17, v24

    move-object/from16 v15, v25

    move v12, v11

    move/from16 v11, v23

    .line 659
    iget v7, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 660
    iget v2, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 661
    iget v3, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move/from16 v16, v11

    move v11, v12

    move v12, v13

    move-object v13, v8

    .line 663
    invoke-static/range {v10 .. v16}, Lio/github/jaredmdobson/concentus/QuantizeBands;->unquant_fine_energy(Lio/github/jaredmdobson/concentus/CeltMode;II[I[ILio/github/jaredmdobson/concentus/EntropyCoder;I)V

    move-object/from16 v48, v14

    move v13, v12

    move v12, v11

    move/from16 v11, v16

    move/from16 v23, v2

    const/4 v14, 0x0

    .line 667
    :goto_13
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->decode_mem:[[I

    aget-object v2, v2, v14

    div-int/lit8 v16, p7, 0x2

    move/from16 v27, v3

    add-int v3, v29, v16

    move/from16 v49, v5

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([IIII)V

    const/16 v38, 0x1

    add-int/lit8 v14, v14, 0x1

    if-lt v14, v9, :cond_29

    mul-int v2, v11, v6

    .line 671
    new-array v3, v2, [S

    .line 673
    invoke-static {v11, v4}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v50

    .line 678
    new-instance v14, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/16 v35, 0x0

    iget v5, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->rng:I

    invoke-direct {v14, v5}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 679
    aget-object v16, v50, v35

    const/4 v5, 0x2

    if-ne v11, v5, :cond_19

    aget-object v5, v50, v38

    goto :goto_14

    :cond_19
    const/4 v5, 0x0

    :goto_14
    const/16 v19, 0x0

    move-object/from16 v18, v19

    check-cast v18, [[I

    mul-int/lit8 v18, p3, 0x40

    sub-int v26, v18, v49

    move-object/from16 v25, v31

    move-object/from16 v31, v14

    move v14, v12

    const/4 v12, 0x0

    move-object/from16 v18, v3

    move/from16 v24, v7

    move-object/from16 v28, v15

    move/from16 v29, v17

    move/from16 v21, v30

    move/from16 v22, v46

    move/from16 v30, p1

    move-object/from16 v17, v5

    move v15, v13

    move-object v13, v10

    invoke-static/range {v12 .. v31}, Lio/github/jaredmdobson/concentus/Bands;->quant_all_bands(ILio/github/jaredmdobson/concentus/CeltMode;II[I[I[S[[I[IIIII[IIILio/github/jaredmdobson/concentus/EntropyCoder;IILio/github/jaredmdobson/concentus/BoxedValueInt;)V

    move v12, v14

    move v13, v15

    move-object/from16 v15, v28

    move/from16 v24, v29

    move-object/from16 v5, v31

    .line 682
    iget v5, v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iput v5, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->rng:I

    const/4 v5, 0x1

    if-lez v49, :cond_1a

    .line 685
    invoke-virtual {v15, v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bits(I)I

    move-result v7

    goto :goto_15

    :cond_1a
    const/4 v7, 0x0

    .line 689
    :goto_15
    invoke-virtual {v15}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v14

    sub-int v16, v1, v14

    move/from16 v18, v11

    move v11, v12

    move v12, v13

    move-object/from16 v17, v15

    move-object/from16 v15, v47

    move-object/from16 v14, v48

    move-object v13, v8

    .line 688
    invoke-static/range {v10 .. v18}, Lio/github/jaredmdobson/concentus/QuantizeBands;->unquant_energy_finalise(Lio/github/jaredmdobson/concentus/CeltMode;II[I[I[IILio/github/jaredmdobson/concentus/EntropyCoder;I)V

    move-object/from16 v15, v17

    move v13, v12

    move v12, v11

    move/from16 v11, v18

    if-eqz v7, :cond_1b

    .line 692
    iget v7, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->rng:I

    move-object/from16 v19, p6

    move/from16 v22, v7

    move-object/from16 v18, v8

    move v14, v11

    move/from16 v16, v12

    move/from16 v17, v13

    move-object/from16 v21, v20

    move/from16 v13, v24

    move-object/from16 v20, v33

    move-object/from16 v11, v50

    move-object v12, v3

    move-object v3, v15

    move v15, v4

    invoke-static/range {v10 .. v22}, Lio/github/jaredmdobson/concentus/Bands;->anti_collapse(Lio/github/jaredmdobson/concentus/CeltMode;[[I[SIIIII[I[I[I[II)V

    move-object v5, v11

    move v11, v14

    move/from16 v26, v15

    move/from16 v12, v16

    move/from16 v25, v17

    move/from16 v17, v13

    goto :goto_16

    :cond_1b
    move-object/from16 v19, p6

    move/from16 v26, v4

    move/from16 v25, v13

    move-object v3, v15

    move/from16 v17, v24

    move-object/from16 v5, v50

    :goto_16
    const/16 v38, 0x1

    const/16 v27, -0x7000

    if-eqz p2, :cond_1c

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_1c

    .line 698
    aput v27, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 702
    :cond_1c
    iget v15, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->downsample:I

    move/from16 p1, v12

    move v12, v9

    move/from16 v9, p1

    move/from16 v16, p2

    move/from16 v24, p7

    move/from16 p1, v1

    move-object/from16 v28, v3

    move v2, v6

    move-object v4, v10

    move/from16 v14, v17

    move-object/from16 p6, v19

    move-object/from16 v3, v33

    move-object/from16 v6, v36

    move/from16 v10, v39

    move-object/from16 v7, v40

    move/from16 v13, v45

    const/4 v1, 0x1

    invoke-static/range {v4 .. v16}, Lio/github/jaredmdobson/concentus/CeltCommon;->celt_synthesis(Lio/github/jaredmdobson/concentus/CeltMode;[[I[[I[I[IIIIIIIII)V

    move-object v10, v4

    move-object v4, v6

    move-object v5, v7

    move v6, v9

    move v9, v12

    move v7, v14

    const/16 v29, 0x0

    .line 707
    :goto_18
    iget v12, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period:I

    const/16 v13, 0xf

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v12

    iput v12, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period:I

    .line 708
    iget v12, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period_old:I

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v12

    iput v12, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period_old:I

    move/from16 v16, v12

    .line 709
    aget-object v12, v4, v29

    aget v13, v5, v29

    iget v14, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period:I

    iget v15, v10, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_gain_old:I

    move/from16 v19, v1

    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_gain:I

    move/from16 v20, v1

    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_tapset_old:I

    move/from16 v21, v1

    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_tapset:I

    move/from16 v22, v1

    iget-object v1, v10, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    move/from16 v17, v14

    move-object v14, v12

    move/from16 v18, v15

    move v15, v13

    move-object/from16 v23, v1

    invoke-static/range {v12 .. v24}, Lio/github/jaredmdobson/concentus/CeltCommon;->comb_filter([II[IIIIIIIII[II)V

    if-eqz v7, :cond_1d

    .line 713
    aget-object v12, v4, v29

    aget v1, v5, v29

    iget v13, v10, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    add-int/2addr v13, v1

    aget-object v14, v4, v29

    aget v1, v5, v29

    iget v15, v10, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    add-int/2addr v15, v1

    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period:I

    move/from16 v16, v1

    iget v1, v10, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    sub-int v18, v26, v1

    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_gain:I

    move/from16 v19, v1

    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_tapset:I

    move/from16 v21, v1

    iget-object v1, v10, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    move-object/from16 v23, v1

    move/from16 v20, v41

    move/from16 v22, v42

    move/from16 v17, v43

    invoke-static/range {v12 .. v24}, Lio/github/jaredmdobson/concentus/CeltCommon;->comb_filter([II[IIIIIIIII[II)V

    move/from16 v1, v17

    move/from16 v12, v20

    move/from16 v13, v22

    goto :goto_19

    :cond_1d
    move/from16 v12, v41

    move/from16 v13, v42

    move/from16 v1, v43

    :goto_19
    add-int/lit8 v14, v29, 0x1

    if-lt v14, v9, :cond_28

    .line 722
    iget v14, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period:I

    iput v14, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period_old:I

    .line 723
    iget v14, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_gain:I

    iput v14, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_gain_old:I

    .line 724
    iget v14, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_tapset:I

    iput v14, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_tapset_old:I

    .line 725
    iput v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period:I

    .line 726
    iput v12, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_gain:I

    .line 727
    iput v13, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_tapset:I

    if-eqz v7, :cond_1e

    .line 729
    iput v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_period_old:I

    .line 730
    iput v12, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_gain_old:I

    .line 731
    iput v13, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->postfilter_tapset_old:I

    :cond_1e
    const/4 v1, 0x1

    if-ne v11, v1, :cond_1f

    const/4 v1, 0x0

    .line 735
    invoke-static {v8, v1, v8, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1a

    :cond_1f
    const/4 v1, 0x0

    :goto_1a
    if-nez v45, :cond_21

    mul-int/lit8 v7, v2, 0x2

    move-object/from16 v15, p6

    .line 741
    invoke-static {v15, v1, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    invoke-static {v8, v1, v15, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->loss_count:I

    const/16 v11, 0xa

    if-ge v1, v11, :cond_20

    goto :goto_1b

    :cond_20
    const/16 v37, 0x400

    :goto_1b
    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v7, :cond_22

    .line 752
    aget v11, v34, v1

    add-int v11, v11, v37

    aget v12, v8, v1

    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v11

    aput v11, v34, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_21
    move-object/from16 v15, p6

    const/4 v1, 0x0

    :goto_1d
    mul-int/lit8 v7, v2, 0x2

    if-ge v1, v7, :cond_22

    .line 756
    aget v7, v15, v1

    aget v11, v8, v1

    invoke-static {v7, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v7

    aput v7, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_22
    const/4 v1, 0x0

    :goto_1e
    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v6, :cond_23

    mul-int v11, v1, v2

    add-int/2addr v11, v7

    const/16 v35, 0x0

    .line 762
    aput v35, v8, v11

    .line 763
    aput v27, v3, v11

    aput v27, v15, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_23
    move/from16 v13, v25

    :goto_20
    const/16 v35, 0x0

    if-ge v13, v2, :cond_24

    mul-int v7, v1, v2

    add-int/2addr v7, v13

    .line 766
    aput v35, v8, v7

    .line 767
    aput v27, v3, v7

    aput v27, v15, v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_20

    :cond_24
    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x2

    if-lt v1, v7, :cond_27

    move-object/from16 v14, v28

    .line 770
    iget-wide v1, v14, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    long-to-int v2, v1

    iput v2, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->rng:I

    .line 772
    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->downsample:I

    iget-object v11, v10, Lio/github/jaredmdobson/concentus/CeltMode;->preemph:[I

    iget-object v12, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->preemph_memD:[I

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v13, p8

    move v10, v1

    move/from16 v8, v26

    invoke-static/range {v4 .. v13}, Lio/github/jaredmdobson/concentus/CeltCommon;->deemphasis([[I[I[SIIII[I[II)V

    const/4 v4, 0x0

    .line 773
    iput v4, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->loss_count:I

    .line 775
    invoke-virtual {v14}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v1

    move/from16 v5, p1

    if-le v1, v5, :cond_25

    .line 776
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v1

    .line 778
    :cond_25
    invoke-virtual {v14}, Lio/github/jaredmdobson/concentus/EntropyCoder;->get_error()I

    move-result v1

    if-eqz v1, :cond_26

    const/4 v9, 0x1

    .line 779
    iput v9, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->error:I

    .line 781
    :cond_26
    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->downsample:I

    div-int v14, v44, v1

    return v14

    :cond_27
    const/16 v38, 0x1

    goto :goto_1e

    :cond_28
    const/16 v32, 0x2

    const/16 v38, 0x1

    move/from16 v43, v1

    move/from16 v41, v12

    move/from16 v42, v13

    move/from16 v29, v14

    const/4 v1, 0x1

    goto/16 :goto_18

    :cond_29
    move/from16 v2, v17

    move/from16 v17, v7

    move v7, v2

    move v5, v1

    move v2, v6

    move-object/from16 v16, v8

    move v6, v12

    move/from16 v25, v13

    move-object/from16 v28, v15

    move/from16 v21, v30

    const/16 v32, 0x2

    move v8, v4

    const/4 v4, 0x0

    move/from16 v1, v17

    move/from16 v17, v7

    move v7, v1

    move v1, v5

    move v4, v8

    move-object/from16 v8, v16

    move/from16 v3, v27

    move/from16 v5, v49

    move v6, v2

    goto/16 :goto_13

    :cond_2a
    :goto_21
    move v8, v4

    move-object/from16 v40, v5

    move/from16 v44, v14

    move/from16 v7, v17

    .line 524
    invoke-virtual {v0, v8, v7}, Lio/github/jaredmdobson/concentus/CeltDecoder;->celt_decode_lost(II)V

    .line 525
    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->downsample:I

    iget-object v11, v10, Lio/github/jaredmdobson/concentus/CeltMode;->preemph:[I

    iget-object v12, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->preemph_memD:[I

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v13, p8

    move v10, v1

    move-object/from16 v4, v36

    move-object/from16 v5, v40

    invoke-static/range {v4 .. v13}, Lio/github/jaredmdobson/concentus/CeltCommon;->deemphasis([[I[I[SIIII[I[II)V

    .line 527
    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltDecoder;->downsample:I

    div-int v14, v44, v1

    return v14

    :cond_2b
    move v1, v3

    move-object/from16 v40, v5

    move v2, v6

    move-object/from16 v18, v8

    move/from16 v5, p2

    move v8, v4

    move/from16 v16, v1

    move-object/from16 v8, v18

    move-object/from16 v5, v40

    move-object/from16 v1, p1

    move/from16 v2, p3

    goto/16 :goto_2

    .line 508
    :cond_2c
    :goto_22
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1
.end method

.method celt_decoder_init(II)I
    .locals 1

    .line 141
    sget-object v0, Lio/github/jaredmdobson/concentus/CeltMode;->mode48000_960_120:Lio/github/jaredmdobson/concentus/CeltMode;

    invoke-direct {p0, v0, p2}, Lio/github/jaredmdobson/concentus/CeltDecoder;->opus_custom_decoder_init(Lio/github/jaredmdobson/concentus/CeltMode;I)I

    move-result p2

    .line 142
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-eq p2, v0, :cond_0

    return p2

    .line 145
    :cond_0
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/CeltCommon;->resampling_factor(I)I

    move-result p1

    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltDecoder;->downsample:I

    if-nez p1, :cond_1

    .line 147
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1

    .line 149
    :cond_1
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    return p1
.end method
