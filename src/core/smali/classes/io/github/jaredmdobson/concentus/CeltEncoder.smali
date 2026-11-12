.class Lio/github/jaredmdobson/concentus/CeltEncoder;
.super Ljava/lang/Object;
.source "CeltEncoder.java"


# instance fields
.field analysis:Lio/github/jaredmdobson/concentus/AnalysisInfo;

.field bitrate:I

.field channels:I

.field clip:I

.field complexity:I

.field consec_transient:I

.field constrained_vbr:I

.field delayedIntra:I

.field disable_pf:I

.field end:I

.field energy_mask:[I

.field force_intra:I

.field hf_average:I

.field in_mem:[[I

.field intensity:I

.field lastCodedBands:I

.field lfe:I

.field loss_rate:I

.field lsb_depth:I

.field mode:Lio/github/jaredmdobson/concentus/CeltMode;

.field oldBandE:[[I

.field oldLogE:[[I

.field oldLogE2:[[I

.field overlap_max:I

.field final preemph_memD:[I

.field final preemph_memE:[I

.field prefilter_gain:I

.field prefilter_mem:[[I

.field prefilter_period:I

.field prefilter_tapset:I

.field rng:I

.field signalling:I

.field spec_avg:I

.field spread_decision:I

.field start:I

.field stereo_saving:I

.field stream_channels:I

.field tapset_decision:I

.field tonal_average:I

.field upsample:I

.field variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

.field vbr:I

.field vbr_count:I

.field vbr_drift:I

.field vbr_offset:I

.field vbr_reservoir:I


# direct methods
.method constructor <init>()V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->channels:I

    .line 45
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->stream_channels:I

    .line 47
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->force_intra:I

    .line 48
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->clip:I

    .line 49
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->disable_pf:I

    .line 50
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->complexity:I

    .line 51
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->upsample:I

    .line 52
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->start:I

    .line 53
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->end:I

    .line 55
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->bitrate:I

    .line 56
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr:I

    .line 57
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->signalling:I

    .line 60
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->constrained_vbr:I

    .line 61
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->loss_rate:I

    .line 62
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lsb_depth:I

    .line 63
    sget-object v2, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusFramesize;

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    .line 64
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    .line 67
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->rng:I

    .line 68
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->spread_decision:I

    .line 69
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->delayedIntra:I

    .line 70
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->tonal_average:I

    .line 71
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lastCodedBands:I

    .line 72
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->hf_average:I

    .line 73
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->tapset_decision:I

    .line 75
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_period:I

    .line 76
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_gain:I

    .line 77
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_tapset:I

    .line 78
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->consec_transient:I

    .line 79
    new-instance v2, Lio/github/jaredmdobson/concentus/AnalysisInfo;

    invoke-direct {v2}, Lio/github/jaredmdobson/concentus/AnalysisInfo;-><init>()V

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->analysis:Lio/github/jaredmdobson/concentus/AnalysisInfo;

    const/4 v2, 0x2

    .line 81
    new-array v3, v2, [I

    iput-object v3, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->preemph_memE:[I

    .line 82
    new-array v2, v2, [I

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->preemph_memD:[I

    .line 85
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_reservoir:I

    .line 86
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_drift:I

    .line 87
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_offset:I

    .line 88
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_count:I

    .line 89
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->overlap_max:I

    .line 90
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->stereo_saving:I

    .line 91
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->intensity:I

    .line 92
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->energy_mask:[I

    .line 93
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->spec_avg:I

    .line 106
    move-object v1, v0

    check-cast v1, [[I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->in_mem:[[I

    .line 107
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_mem:[[I

    .line 108
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    .line 109
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE:[[I

    .line 110
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE2:[[I

    return-void
.end method

.method private PartialReset()V
    .locals 3

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->rng:I

    .line 136
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->spread_decision:I

    .line 137
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->delayedIntra:I

    .line 138
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->tonal_average:I

    .line 139
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lastCodedBands:I

    .line 140
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->hf_average:I

    .line 141
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->tapset_decision:I

    .line 142
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_period:I

    .line 143
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_gain:I

    .line 144
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_tapset:I

    .line 145
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->consec_transient:I

    .line 146
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->analysis:Lio/github/jaredmdobson/concentus/AnalysisInfo;

    invoke-virtual {v1}, Lio/github/jaredmdobson/concentus/AnalysisInfo;->Reset()V

    .line 147
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->preemph_memE:[I

    aput v0, v1, v0

    const/4 v2, 0x1

    .line 148
    aput v0, v1, v2

    .line 149
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->preemph_memD:[I

    aput v0, v1, v0

    .line 150
    aput v0, v1, v2

    .line 151
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_reservoir:I

    .line 152
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_drift:I

    .line 153
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_offset:I

    .line 154
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_count:I

    .line 155
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->overlap_max:I

    .line 156
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->stereo_saving:I

    .line 157
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->intensity:I

    const/4 v1, 0x0

    .line 158
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->energy_mask:[I

    .line 159
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->spec_avg:I

    .line 160
    move-object v0, v1

    check-cast v0, [[I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->in_mem:[[I

    .line 161
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_mem:[[I

    .line 162
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    .line 163
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE:[[I

    .line 164
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE2:[[I

    return-void
.end method

.method private Reset()V
    .locals 2

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->channels:I

    .line 115
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->stream_channels:I

    .line 116
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->force_intra:I

    .line 117
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->clip:I

    .line 118
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->disable_pf:I

    .line 119
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->complexity:I

    .line 120
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->upsample:I

    .line 121
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->start:I

    .line 122
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->end:I

    .line 123
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->bitrate:I

    .line 124
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr:I

    .line 125
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->signalling:I

    .line 126
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->constrained_vbr:I

    .line 127
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->loss_rate:I

    .line 128
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lsb_depth:I

    .line 129
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusFramesize;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    .line 130
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    .line 131
    invoke-direct {p0}, Lio/github/jaredmdobson/concentus/CeltEncoder;->PartialReset()V

    return-void
.end method


# virtual methods
.method GetFinalRange()I
    .locals 1

    .line 1243
    iget v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->rng:I

    return v0
.end method

.method GetLSBDepth()I
    .locals 1

    .line 1220
    iget v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lsb_depth:I

    return v0
.end method

.method GetMode()Lio/github/jaredmdobson/concentus/CeltMode;
    .locals 1

    .line 1239
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    return-object v0
.end method

.method ResetState()V
    .locals 7

    .line 170
    invoke-direct {p0}, Lio/github/jaredmdobson/concentus/CeltEncoder;->PartialReset()V

    .line 173
    iget v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->channels:I

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v1, v1, Lio/github/jaredmdobson/concentus/CeltMode;->overlap:I

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v0

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->in_mem:[[I

    .line 174
    iget v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->channels:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v0

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_mem:[[I

    .line 175
    iget v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->channels:I

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v1, v1, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v0

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    .line 176
    iget v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->channels:I

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v1, v1, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v0

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE:[[I

    .line 177
    iget v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->channels:I

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v1, v1, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v0

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE2:[[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 179
    :goto_0
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v2, v2, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    const/16 v3, -0x7000

    if-ge v1, v2, :cond_0

    .line 180
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v2, v2, v0

    iget-object v4, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE2:[[I

    aget-object v4, v4, v0

    aput v3, v4, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->channels:I

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 183
    :goto_1
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v5, v5, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    if-ge v1, v5, :cond_1

    .line 184
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v5, v5, v4

    iget-object v6, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE2:[[I

    aget-object v6, v6, v4

    aput v3, v6, v1

    aput v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    :cond_1
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_offset:I

    .line 188
    iput v4, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->delayedIntra:I

    .line 189
    iput v2, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->spread_decision:I

    const/16 v1, 0x100

    .line 190
    iput v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->tonal_average:I

    .line 191
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->hf_average:I

    .line 192
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->tapset_decision:I

    return-void
.end method

.method SetAnalysis(Lio/github/jaredmdobson/concentus/AnalysisInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1235
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->analysis:Lio/github/jaredmdobson/concentus/AnalysisInfo;

    invoke-virtual {v0, p1}, Lio/github/jaredmdobson/concentus/AnalysisInfo;->Assign(Lio/github/jaredmdobson/concentus/AnalysisInfo;)V

    return-void

    .line 1233
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AnalysisInfo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetBitrate(I)V
    .locals 2

    const/16 v0, 0x1f4

    if-gt p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1199
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitrate out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const v0, 0x3f7a0

    .line 1201
    iget v1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->channels:I

    mul-int v1, v1, v0

    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result p1

    .line 1202
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->bitrate:I

    return-void
.end method

.method SetChannels(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 1209
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->stream_channels:I

    return-void

    .line 1207
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Channel count must be 1 or 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetComplexity(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 1157
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->complexity:I

    return-void

    .line 1155
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Complexity must be between 0 and 10 inclusive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetEndBand(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1168
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v0, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    if-gt p1, v0, :cond_0

    .line 1171
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->end:I

    return-void

    .line 1169
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "End band above max number of ebands (or less than 1)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetEnergyMask([I)V
    .locals 0

    .line 1251
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->energy_mask:[I

    return-void
.end method

.method SetExpertFrameDuration(Lio/github/jaredmdobson/concentus/OpusFramesize;)V
    .locals 0

    .line 1224
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    return-void
.end method

.method SetLFE(I)V
    .locals 0

    .line 1247
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    return-void
.end method

.method SetLSBDepth(I)V
    .locals 1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x18

    if-gt p1, v0, :cond_0

    .line 1216
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lsb_depth:I

    return-void

    .line 1214
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bit depth must be between 8 and 24"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetPacketLossPercent(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 1178
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->loss_rate:I

    return-void

    .line 1176
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Packet loss must be between 0 and 100"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetPrediction(I)V
    .locals 3

    if-ltz p1, :cond_2

    const/4 v0, 0x2

    if-gt p1, v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1185
    :goto_0
    iput v2, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->disable_pf:I

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 1186
    :cond_1
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->force_intra:I

    return-void

    .line 1183
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CELT prediction mode must be 0, 1, or 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetSignalling(I)V
    .locals 0

    .line 1228
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->signalling:I

    return-void
.end method

.method SetStartBand(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1161
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    iget v0, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    if-ge p1, v0, :cond_0

    .line 1164
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->start:I

    return-void

    .line 1162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Start band above max number of ebands (or negative)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetVBR(Z)V
    .locals 0

    .line 1194
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr:I

    return-void
.end method

.method SetVBRConstraint(Z)V
    .locals 0

    .line 1190
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->constrained_vbr:I

    return-void
.end method

.method celt_encode_with_ec([SII[BIILio/github/jaredmdobson/concentus/EntropyCoder;)I
    .locals 61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v11, p2

    move/from16 v2, p6

    .line 388
    iget v5, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->channels:I

    .line 389
    iget v15, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->stream_channels:I

    .line 433
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    .line 434
    iget v13, v12, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    .line 435
    iget v4, v12, Lio/github/jaredmdobson/concentus/CeltMode;->overlap:I

    .line 436
    iget-object v14, v12, Lio/github/jaredmdobson/concentus/CeltMode;->eBands:[S

    .line 437
    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->start:I

    .line 438
    iget v6, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->end:I

    const/4 v7, 0x2

    if-lt v2, v7, :cond_7a

    if-nez v1, :cond_0

    goto/16 :goto_5c

    .line 444
    :cond_0
    iget v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->upsample:I

    mul-int v8, v8, p3

    const/4 v10, 0x0

    .line 445
    :goto_0
    iget v9, v12, Lio/github/jaredmdobson/concentus/CeltMode;->maxLM:I

    if-gt v10, v9, :cond_2

    .line 446
    iget v9, v12, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    shl-int/2addr v9, v10

    if-ne v9, v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 450
    :cond_2
    :goto_1
    iget v9, v12, Lio/github/jaredmdobson/concentus/CeltMode;->maxLM:I

    if-le v10, v9, :cond_3

    .line 451
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1

    :cond_3
    const/4 v9, 0x1

    shl-int v16, v9, v10

    .line 454
    iget v7, v12, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    mul-int v22, v16, v7

    const/4 v7, 0x3

    if-nez p7, :cond_4

    const/4 v7, 0x1

    const/16 v27, 0x0

    goto :goto_2

    .line 460
    :cond_4
    invoke-virtual/range {p7 .. p7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v18

    add-int/lit8 v19, v18, 0x4

    shr-int/lit8 v19, v19, 0x3

    move/from16 v7, v18

    move/from16 v27, v19

    .line 464
    :goto_2
    iget v9, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->signalling:I

    if-nez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v9, 0x4fb

    .line 467
    invoke-static {v2, v9}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v2

    sub-int v9, v2, v27

    move/from16 v21, v3

    .line 470
    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr:I

    move/from16 v23, v3

    const/4 v3, -0x1

    move/from16 v33, v10

    const/16 p6, 0x4

    if-eqz v23, :cond_6

    const/16 v23, 0x8

    iget v10, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->bitrate:I

    if-eq v10, v3, :cond_7

    .line 471
    iget v10, v12, Lio/github/jaredmdobson/concentus/CeltMode;->Fs:I

    shr-int/lit8 v24, v10, 0x3

    .line 472
    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->bitrate:I

    mul-int v3, v3, v8

    shr-int/lit8 v8, v10, 0x4

    add-int/2addr v3, v8

    div-int v3, v3, v24

    shr-int/lit8 v8, v3, 0x6

    move/from16 v28, v3

    const/4 v3, 0x2

    goto :goto_6

    :cond_6
    const/16 v23, 0x8

    .line 477
    :cond_7
    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->bitrate:I

    mul-int v8, v8, v3

    const/4 v10, 0x1

    if-le v7, v10, :cond_8

    add-int/2addr v8, v7

    :cond_8
    const/4 v10, -0x1

    if-eq v3, v10, :cond_a

    .line 482
    iget v3, v12, Lio/github/jaredmdobson/concentus/CeltMode;->Fs:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v8, v3

    iget v3, v12, Lio/github/jaredmdobson/concentus/CeltMode;->Fs:I

    mul-int/lit8 v3, v3, 0x8

    div-int/2addr v8, v3

    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->signalling:I

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    sub-int/2addr v8, v3

    invoke-static {v2, v8}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v2

    goto :goto_5

    :cond_a
    const/4 v3, 0x2

    :goto_5
    move v8, v2

    const/16 v28, 0x0

    .line 487
    :goto_6
    iget v10, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->bitrate:I

    const/16 v29, 0x14

    const/4 v3, -0x1

    if-eq v10, v3, :cond_b

    mul-int/lit8 v3, v15, 0x28

    add-int/lit8 v3, v3, 0x14

    const/16 v24, 0x190

    shr-int v24, v24, v33

    add-int/lit8 v24, v24, -0x32

    mul-int v3, v3, v24

    sub-int/2addr v10, v3

    goto :goto_7

    :cond_b
    const v10, 0x7c830

    :goto_7
    if-nez p7, :cond_c

    .line 492
    new-instance v3, Lio/github/jaredmdobson/concentus/EntropyCoder;

    invoke-direct {v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;-><init>()V

    move/from16 v24, v4

    move/from16 v25, v8

    move-object/from16 v4, p4

    move/from16 v8, p5

    .line 493
    invoke-virtual {v3, v4, v8, v2}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_init([BII)V

    goto :goto_8

    :cond_c
    move/from16 v24, v4

    move/from16 v25, v8

    move-object/from16 v3, p7

    :goto_8
    const/16 v30, 0x6

    if-lez v28, :cond_e

    .line 501
    iget v4, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->constrained_vbr:I

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    if-ne v7, v4, :cond_d

    const/4 v4, 0x2

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    :goto_9
    add-int v8, v28, v28

    move/from16 v26, v2

    .line 509
    iget v2, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_reservoir:I

    sub-int/2addr v8, v2

    shr-int/lit8 v2, v8, 0x6

    invoke-static {v4, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v2

    invoke-static {v2, v9}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v2

    if-ge v2, v9, :cond_f

    add-int v4, v27, v2

    .line 515
    invoke-virtual {v3, v4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_shrink(I)V

    move v9, v2

    move v2, v4

    goto :goto_a

    :cond_e
    move/from16 v26, v2

    :cond_f
    move/from16 v2, v26

    :goto_a
    mul-int/lit8 v4, v2, 0x8

    .line 522
    iget v8, v12, Lio/github/jaredmdobson/concentus/CeltMode;->effEBands:I

    if-le v6, v8, :cond_10

    .line 523
    iget v8, v12, Lio/github/jaredmdobson/concentus/CeltMode;->effEBands:I

    move/from16 v26, v8

    goto :goto_b

    :cond_10
    move/from16 v26, v6

    :goto_b
    add-int v8, v22, v24

    .line 526
    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v31

    move/from16 p4, v4

    .line 528
    iget v4, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->overlap_max:I

    sub-int v32, v22, v24

    mul-int v32, v32, v15

    move/from16 v34, v5

    iget v5, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->upsample:I

    div-int v5, v32, v5

    invoke-static {v1, v11, v5}, Lio/github/jaredmdobson/concentus/Inlines;->celt_maxabs32([SII)S

    move-result v5

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v4

    .line 529
    iget v5, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->upsample:I

    div-int v32, v32, v5

    move/from16 v35, v5

    add-int v5, v11, v32

    mul-int v32, v15, v24

    move/from16 v36, v6

    div-int v6, v32, v35

    invoke-static {v1, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->celt_maxabs32([SII)S

    move-result v5

    iput v5, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->overlap_max:I

    .line 530
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x1

    goto :goto_c

    :cond_11
    const/4 v4, 0x0

    :goto_c
    const/4 v5, 0x1

    if-ne v7, v5, :cond_12

    const/16 v6, 0xf

    .line 533
    invoke-virtual {v3, v4, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    move/from16 v37, v4

    goto :goto_d

    :cond_12
    const/16 v37, 0x0

    :goto_d
    if-eqz v37, :cond_14

    if-lez v28, :cond_13

    add-int/lit8 v4, v27, 0x2

    .line 540
    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v2

    mul-int/lit8 v4, v2, 0x8

    .line 543
    invoke-virtual {v3, v2}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_shrink(I)V

    move/from16 v25, v2

    const/4 v9, 0x2

    goto :goto_e

    :cond_13
    move/from16 v4, p4

    :goto_e
    mul-int/lit8 v7, v2, 0x8

    .line 548
    iget v6, v3, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    invoke-virtual {v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v18

    sub-int v18, v7, v18

    add-int v6, v6, v18

    iput v6, v3, Lio/github/jaredmdobson/concentus/EntropyCoder;->nbits_total:I

    goto :goto_f

    :cond_14
    move/from16 v4, p4

    :goto_f
    move/from16 v18, v7

    .line 551
    new-instance v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/16 v32, 0x0

    .line 554
    :goto_10
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->preemph_memE:[I

    aget v5, v5, v32

    iput v5, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move v5, v2

    add-int v2, v11, v32

    move-object/from16 v38, v3

    .line 555
    aget-object v3, v31, v32

    const/16 v39, 0x0

    iget v7, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->upsample:I

    move/from16 v40, v8

    iget-object v8, v12, Lio/github/jaredmdobson/concentus/CeltMode;->preemph:[I

    move/from16 v41, v10

    const/4 v10, 0x0

    move/from16 v42, v5

    move-object/from16 v17, v12

    move/from16 v20, v15

    move/from16 v5, v22

    move/from16 v44, v25

    move/from16 v11, v33

    move/from16 v19, v36

    move/from16 v12, v40

    move/from16 v45, v41

    const/16 v35, 0x1

    const/16 v36, 0x4fb

    move v15, v9

    move/from16 v22, v13

    move v13, v4

    move-object v9, v6

    move/from16 v4, v24

    move/from16 v6, v34

    move-object/from16 v34, v14

    move-object/from16 v14, v38

    invoke-static/range {v1 .. v10}, Lio/github/jaredmdobson/concentus/CeltCommon;->celt_preemphasis([SI[IIIII[ILio/github/jaredmdobson/concentus/BoxedValueInt;I)V

    move v4, v5

    move v5, v6

    .line 557
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->preemph_memE:[I

    iget v2, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput v2, v1, v32

    add-int/lit8 v1, v32, 0x1

    if-lt v1, v5, :cond_79

    .line 564
    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    const/4 v2, 0x5

    if-eqz v1, :cond_15

    const/4 v1, 0x3

    if-gt v15, v1, :cond_16

    :cond_15
    mul-int/lit8 v1, v20, 0xc

    if-le v15, v1, :cond_18

    :cond_16
    if-nez v21, :cond_18

    if-nez v37, :cond_18

    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->disable_pf:I

    if-nez v1, :cond_18

    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->complexity:I

    if-lt v1, v2, :cond_18

    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->consec_transient:I

    if-eqz v1, :cond_17

    const/4 v1, 0x3

    if-eq v11, v1, :cond_17

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    sget-object v3, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_VARIABLE:Lio/github/jaredmdobson/concentus/OpusFramesize;

    if-eq v1, v3, :cond_18

    :cond_17
    const/4 v9, 0x1

    goto :goto_11

    :cond_18
    const/4 v9, 0x0

    :goto_11
    move v3, v5

    .line 567
    iget v5, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->tapset_decision:I

    .line 568
    new-instance v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 569
    new-instance v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v1, v7}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 570
    new-instance v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v8, v7}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v7, 0x5

    .line 571
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_mem:[[I

    move-object v7, v1

    move v10, v15

    move-object/from16 v1, v31

    const/4 v15, 0x5

    invoke-virtual/range {v0 .. v10}, Lio/github/jaredmdobson/concentus/CeltEncoder;->run_prefilter([[I[[IIIILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;II)I

    move-result v31

    move-object v2, v1

    move v9, v4

    move-object v1, v8

    move-object v8, v0

    move v0, v5

    move v5, v3

    .line 572
    iget v3, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 573
    iget v4, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 574
    iget v1, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 v6, 0x3333

    if-gt v4, v6, :cond_1a

    .line 576
    iget v7, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_gain:I

    if-le v7, v6, :cond_19

    goto :goto_12

    :cond_19
    move/from16 v23, v3

    move/from16 v24, v4

    goto :goto_13

    :cond_1a
    :goto_12
    iget-object v6, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->analysis:Lio/github/jaredmdobson/concentus/AnalysisInfo;

    iget v6, v6, Lio/github/jaredmdobson/concentus/AnalysisInfo;->valid:I

    if-eqz v6, :cond_1b

    iget-object v6, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->analysis:Lio/github/jaredmdobson/concentus/AnalysisInfo;

    iget v6, v6, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality:F

    float-to-double v6, v6

    const-wide v23, 0x3fd3333333333333L    # 0.3

    cmpl-double v25, v6, v23

    if-lez v25, :cond_19

    :cond_1b
    int-to-double v6, v3

    iget v15, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_period:I

    move/from16 v23, v3

    move/from16 v24, v4

    int-to-double v3, v15

    const-wide v40, 0x3ff428f5c28f5c29L    # 1.26

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v40

    cmpl-double v25, v6, v3

    if-gtz v25, :cond_1d

    const-wide p1, 0x3fe947ae147ae148L    # 0.79

    int-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, p1

    cmpg-double v15, v6, v3

    if-gez v15, :cond_1c

    goto :goto_14

    :cond_1c
    :goto_13
    const/16 v38, 0x0

    goto :goto_15

    :cond_1d
    :goto_14
    const/16 v38, 0x1

    :goto_15
    const/16 v15, 0x10

    if-nez v31, :cond_1f

    if-nez v21, :cond_1e

    add-int/lit8 v1, v18, 0x10

    if-gt v1, v13, :cond_1e

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 582
    invoke-virtual {v14, v7, v4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    goto :goto_16

    :cond_1e
    const/4 v4, 0x1

    :goto_16
    const/4 v3, 0x2

    const/4 v6, 0x1

    goto :goto_17

    :cond_1f
    const/4 v4, 0x1

    .line 588
    invoke-virtual {v14, v4, v4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    add-int/lit8 v3, v23, 0x1

    int-to-long v6, v3

    .line 590
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->EC_ILOG(J)I

    move-result v4

    add-int/lit8 v6, v4, -0x5

    move/from16 p1, v3

    move/from16 p2, v4

    int-to-long v3, v6

    move/from16 p3, v6

    const-wide/16 v6, 0x6

    .line 591
    invoke-virtual {v14, v3, v4, v6, v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_uint(JJ)V

    shl-int v3, v15, p3

    sub-int v3, p1, v3

    int-to-long v3, v3

    const/4 v6, 0x1

    add-int/lit8 v7, p2, -0x1

    .line 592
    invoke-virtual {v14, v3, v4, v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bits(JI)V

    int-to-long v3, v1

    const/4 v1, 0x3

    .line 594
    invoke-virtual {v14, v3, v4, v1}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bits(JI)V

    .line 595
    sget-object v1, Lio/github/jaredmdobson/concentus/CeltTables;->tapset_icdf:[S

    const/4 v3, 0x2

    invoke-virtual {v14, v0, v1, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    .line 601
    :goto_17
    iget v1, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->complexity:I

    if-lt v1, v6, :cond_20

    iget v1, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    if-nez v1, :cond_20

    .line 602
    new-instance v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 603
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v4, v7}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 604
    invoke-static {v2, v12, v5, v1, v4}, Lio/github/jaredmdobson/concentus/CeltCommon;->transient_analysis([[IIILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)I

    move-result v6

    .line 606
    iget v1, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 607
    iget v4, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move/from16 v18, v1

    move v12, v4

    goto :goto_18

    :cond_20
    const/4 v6, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    :goto_18
    if-lez v11, :cond_22

    .line 610
    invoke-virtual {v14}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v1

    const/16 v33, 0x3

    add-int/lit8 v1, v1, 0x3

    if-gt v1, v13, :cond_22

    move/from16 v40, v6

    if-eqz v6, :cond_21

    move/from16 v25, v16

    goto :goto_19

    :cond_21
    const/16 v25, 0x0

    :goto_19
    const/16 v41, 0x0

    goto :goto_1a

    :cond_22
    const/16 v25, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    :goto_1a
    const/16 v43, 0x2

    .line 619
    invoke-static {v5, v9}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v3

    move/from16 v1, v22

    .line 623
    invoke-static {v5, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v22

    .line 624
    invoke-static {v5, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v48

    if-eqz v25, :cond_23

    .line 626
    iget v4, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->complexity:I

    const/16 v6, 0x8

    if-lt v4, v6, :cond_24

    const/16 v47, 0x1

    goto :goto_1b

    :cond_23
    const/16 v6, 0x8

    :cond_24
    const/16 v47, 0x0

    .line 627
    :goto_1b
    invoke-static {v5, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v49

    const/16 v4, 0xa

    if-eqz v47, :cond_26

    move v7, v1

    const/4 v1, 0x0

    move/from16 v50, v7

    .line 630
    iget v7, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->upsample:I

    move/from16 v51, v0

    move v6, v11

    move-object/from16 v0, v17

    move/from16 v4, v20

    move/from16 v52, v23

    move/from16 v53, v24

    move/from16 v11, v50

    const/16 v15, 0xa

    invoke-static/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/CeltCommon;->compute_mdcts(Lio/github/jaredmdobson/concentus/CeltMode;I[[I[[IIIII)V

    move-object/from16 p1, v0

    move-object/from16 p2, v3

    move/from16 p5, v4

    move/from16 p6, v6

    move-object/from16 p3, v22

    move/from16 p4, v26

    .line 631
    invoke-static/range {p1 .. p6}, Lio/github/jaredmdobson/concentus/Bands;->compute_band_energies(Lio/github/jaredmdobson/concentus/CeltMode;[[I[[IIII)V

    move/from16 p2, p4

    move-object/from16 p4, p3

    move/from16 p6, p5

    move/from16 p3, v19

    move-object/from16 p5, v49

    .line 632
    invoke-static/range {p1 .. p6}, Lio/github/jaredmdobson/concentus/QuantizeBands;->amp2Log2(Lio/github/jaredmdobson/concentus/CeltMode;II[[I[[II)V

    move/from16 v17, p2

    move-object/from16 v23, p4

    move/from16 v4, p6

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v11, :cond_25

    const/16 v39, 0x0

    .line 634
    aget-object v7, v49, v39

    aget v20, v7, v1

    invoke-static {v6, v15}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v22

    add-int v20, v20, v22

    aput v20, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_25
    const/4 v1, 0x2

    if-ne v4, v1, :cond_27

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v11, :cond_27

    const/16 v35, 0x1

    .line 638
    aget-object v20, v49, v35

    aget v22, v20, v7

    invoke-static {v6, v15}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v24

    invoke-static/range {v24 .. v24}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v24

    add-int v22, v22, v24

    aput v22, v20, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_26
    move/from16 v51, v0

    move v6, v11

    move-object/from16 v0, v17

    move/from16 v4, v20

    move/from16 v52, v23

    move/from16 v53, v24

    move/from16 v17, v26

    const/16 v15, 0xa

    move v11, v1

    move-object/from16 v23, v22

    const/4 v1, 0x2

    .line 643
    :cond_27
    iget v7, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->upsample:I

    move/from16 v50, v10

    move/from16 v15, v19

    move/from16 v1, v25

    const/4 v10, 0x2

    invoke-static/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/CeltCommon;->compute_mdcts(Lio/github/jaredmdobson/concentus/CeltMode;I[[I[[IIIII)V

    move/from16 v19, v6

    move-object v6, v0

    if-ne v5, v10, :cond_28

    const/4 v0, 0x1

    if-ne v4, v0, :cond_28

    const/16 v26, 0x0

    goto :goto_1e

    :cond_28
    move/from16 v26, v12

    :goto_1e
    move-object/from16 p2, v3

    move/from16 p5, v4

    move-object/from16 p1, v6

    move/from16 p4, v17

    move/from16 p6, v19

    move-object/from16 p3, v23

    .line 647
    invoke-static/range {p1 .. p6}, Lio/github/jaredmdobson/concentus/Bands;->compute_band_energies(Lio/github/jaredmdobson/concentus/CeltMode;[[I[[IIII)V

    move-object/from16 v6, p1

    move-object/from16 v3, p2

    move-object/from16 v23, p3

    move/from16 v17, p4

    move/from16 v4, p5

    move/from16 v0, p6

    .line 649
    iget v7, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    if-eqz v7, :cond_29

    const/4 v7, 0x2

    :goto_1f
    if-ge v7, v15, :cond_29

    const/16 v39, 0x0

    .line 651
    aget-object v12, v23, v39

    aget v10, v12, v7

    move/from16 p7, v1

    aget v1, v12, v39

    move-object/from16 v19, v2

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(SI)I

    move-result v1

    invoke-static {v10, v1}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v1

    aput v1, v12, v7

    .line 652
    aget-object v1, v23, v39

    aget v2, v1, v7

    const/4 v10, 0x1

    invoke-static {v2, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v2

    aput v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p7

    move-object/from16 v2, v19

    const/4 v10, 0x2

    goto :goto_1f

    :cond_29
    move/from16 p7, v1

    move-object/from16 v19, v2

    move/from16 p6, v4

    move-object/from16 p1, v6

    move/from16 p3, v15

    move/from16 p2, v17

    move-object/from16 p4, v23

    move-object/from16 p5, v48

    .line 656
    invoke-static/range {p1 .. p6}, Lio/github/jaredmdobson/concentus/QuantizeBands;->amp2Log2(Lio/github/jaredmdobson/concentus/CeltMode;II[[I[[II)V

    move-object/from16 v6, p1

    move/from16 v17, p2

    move/from16 v10, p3

    move-object/from16 v23, p4

    move-object/from16 v1, p5

    move/from16 v4, p6

    mul-int v12, v4, v11

    .line 658
    new-array v15, v12, [I

    if-nez v21, :cond_35

    .line 661
    iget-object v2, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->energy_mask:[I

    if-eqz v2, :cond_35

    iget v2, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    if-nez v2, :cond_35

    .line 668
    iget v2, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->lastCodedBands:I

    const/4 v7, 0x2

    invoke-static {v7, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v2

    move-object/from16 p5, v1

    move-object/from16 v22, v3

    move/from16 v25, v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v24, 0x0

    :goto_20
    if-ge v7, v4, :cond_2c

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v2, :cond_2b

    move/from16 p2, v1

    .line 672
    iget-object v1, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->energy_mask:[I

    mul-int v48, v11, v7

    add-int v48, v48, v5

    aget v1, v1, v48

    move/from16 p3, v3

    const/16 v3, 0x100

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v1

    const/16 v3, -0x800

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v1

    if-lez v1, :cond_2a

    .line 675
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v1

    :cond_2a
    add-int/lit8 v3, v5, 0x1

    .line 677
    aget-short v48, v34, v3

    aget-short v56, v34, v5

    move/from16 p4, v3

    sub-int v3, v48, v56

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    add-int v3, p3, v3

    .line 678
    aget-short v48, v34, p4

    aget-short v56, v34, v5

    sub-int v48, v48, v56

    add-int v48, p2, v48

    mul-int/lit8 v5, v5, 0x2

    const/16 v35, 0x1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v5, v2

    .line 679
    invoke-static {v1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    add-int v24, v24, v1

    move/from16 v5, p4

    move/from16 v1, v48

    goto :goto_21

    :cond_2b
    move/from16 p2, v1

    move/from16 p3, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_2c
    if-lez v1, :cond_2d

    const/4 v5, 0x1

    goto :goto_22

    :cond_2d
    const/4 v5, 0x0

    .line 682
    :goto_22
    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 683
    invoke-static {v3, v1}, Lio/github/jaredmdobson/concentus/Inlines;->DIV32_16(II)I

    move-result v1

    add-int/lit16 v3, v1, 0xcd

    mul-int/lit8 v24, v24, 0x6

    add-int/lit8 v5, v2, -0x1

    mul-int v5, v5, v4

    add-int/lit8 v7, v2, 0x1

    mul-int v5, v5, v7

    mul-int v5, v5, v2

    .line 685
    div-int v24, v24, v5

    .line 687
    invoke-static/range {v24 .. v24}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v5

    const/16 v7, 0x20

    .line 688
    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result v5

    const/16 v7, -0x20

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v5

    const/4 v7, 0x0

    :goto_23
    add-int/lit8 v24, v7, 0x1

    move/from16 v48, v3

    .line 690
    aget-short v3, v34, v24

    aget-short v56, v34, v2

    move/from16 p2, v5

    const/16 v55, 0x2

    div-int/lit8 v5, v56, 0x2

    if-ge v3, v5, :cond_2e

    move/from16 v5, p2

    move/from16 v7, v24

    move/from16 v3, v48

    goto :goto_23

    :cond_2e
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_24
    if-ge v3, v2, :cond_31

    sub-int v24, v3, v7

    mul-int v24, v24, p2

    add-int v24, v48, v24

    move/from16 v56, v3

    const/4 v3, 0x2

    if-ne v4, v3, :cond_2f

    .line 697
    iget-object v3, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->energy_mask:[I

    move-object/from16 p3, v3

    aget v3, p3, v56

    add-int v57, v11, v56

    move-object/from16 v58, v6

    aget v6, p3, v57

    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v3

    goto :goto_25

    :cond_2f
    move-object/from16 v58, v6

    .line 699
    iget-object v3, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->energy_mask:[I

    aget v3, v3, v56

    :goto_25
    const/4 v6, 0x0

    .line 701
    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v3

    sub-int v3, v3, v24

    const/16 v6, 0x100

    if-le v3, v6, :cond_30

    add-int/lit16 v3, v3, -0x100

    .line 704
    aput v3, v15, v56

    add-int/lit8 v5, v5, 0x1

    :cond_30
    add-int/lit8 v3, v56, 0x1

    move-object/from16 v6, v58

    const/16 v55, 0x2

    goto :goto_24

    :cond_31
    move-object/from16 v58, v6

    const/4 v3, 0x3

    if-lt v5, v3, :cond_34

    add-int/lit16 v1, v1, 0x1cd

    if-lez v1, :cond_32

    const/4 v7, 0x0

    .line 717
    invoke-static {v15, v7, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    const/4 v1, 0x0

    goto :goto_27

    :cond_32
    const/4 v3, 0x0

    :goto_26
    const/4 v7, 0x0

    if-ge v3, v2, :cond_33

    .line 720
    aget v5, v15, v3

    const/16 v6, 0x100

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v5

    aput v5, v15, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_33
    move/from16 v7, p2

    goto :goto_27

    :cond_34
    move/from16 v7, p2

    move/from16 v1, v48

    :goto_27
    add-int/lit16 v1, v1, 0xcd

    mul-int/lit8 v2, v7, 0x40

    move/from16 v56, v1

    move/from16 v48, v2

    goto :goto_28

    :cond_35
    move-object/from16 p5, v1

    move-object/from16 v22, v3

    move/from16 v25, v5

    move-object/from16 v58, v6

    const/16 v48, 0x0

    const/16 v56, 0x0

    .line 731
    :goto_28
    iget v1, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    if-nez v1, :cond_39

    if-eqz p7, :cond_36

    const/16 v1, 0xa

    .line 734
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v2

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v1

    goto :goto_29

    :cond_36
    const/4 v1, 0x0

    :goto_29
    const/16 v2, -0x2800

    move/from16 v3, v21

    const/4 v5, 0x0

    :goto_2a
    if-ge v3, v10, :cond_38

    add-int/lit16 v2, v2, -0x400

    const/16 v39, 0x0

    .line 736
    aget-object v6, p5, v39

    aget v6, v6, v3

    sub-int/2addr v6, v1

    invoke-static {v2, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v2

    const/4 v7, 0x2

    if-ne v4, v7, :cond_37

    const/16 v35, 0x1

    .line 738
    aget-object v6, p5, v35

    aget v6, v6, v3

    sub-int/2addr v6, v1

    invoke-static {v2, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v2

    :cond_37
    add-int/2addr v5, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_38
    sub-int v6, v10, v21

    .line 742
    div-int/2addr v5, v6

    .line 743
    iget v1, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->spec_avg:I

    invoke-static {v5, v1}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v1

    const/16 v2, -0x600

    .line 744
    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v1

    const/16 v2, 0xc00

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v1

    .line 745
    iget v2, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->spec_avg:I

    const/16 v3, 0x28f

    invoke-static {v3, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v3

    int-to-short v3, v3

    add-int/2addr v2, v3

    iput v2, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->spec_avg:I

    move/from16 v57, v1

    goto :goto_2b

    :cond_39
    const/16 v57, 0x0

    :goto_2b
    if-nez v47, :cond_3a

    const/4 v7, 0x0

    .line 752
    aget-object v1, p5, v7

    aget-object v2, v49, v7

    invoke-static {v1, v7, v2, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x2

    if-ne v4, v3, :cond_3a

    const/16 v35, 0x1

    .line 754
    aget-object v1, p5, v35

    aget-object v2, v49, v35

    invoke-static {v1, v7, v2, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3a
    if-lez v0, :cond_3e

    .line 760
    invoke-virtual {v14}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v1

    const/16 v33, 0x3

    add-int/lit8 v1, v1, 0x3

    if-gt v1, v13, :cond_3e

    if-nez v40, :cond_3e

    iget v1, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->complexity:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3e

    iget v1, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    if-nez v1, :cond_3e

    .line 761
    iget-object v1, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    move-object/from16 p1, p5

    move-object/from16 p2, v1

    move/from16 p6, v4

    move/from16 p5, v10

    move/from16 p3, v11

    move/from16 p4, v21

    invoke-static/range {p1 .. p6}, Lio/github/jaredmdobson/concentus/CeltCommon;->patch_transient_decision([[I[[IIIII)I

    move-result v1

    move-object/from16 v24, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v21, p5

    if-eqz v1, :cond_3d

    .line 764
    iget v7, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->upsample:I

    move v6, v0

    move/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    move/from16 v5, v25

    move-object/from16 v0, v58

    const/16 v32, 0x5

    invoke-static/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/CeltCommon;->compute_mdcts(Lio/github/jaredmdobson/concentus/CeltMode;I[[I[[IIIII)V

    move-object/from16 p1, v0

    move-object/from16 p2, v3

    move/from16 p5, v4

    move/from16 p6, v6

    move/from16 p4, v17

    move-object/from16 p3, v23

    .line 765
    invoke-static/range {p1 .. p6}, Lio/github/jaredmdobson/concentus/Bands;->compute_band_energies(Lio/github/jaredmdobson/concentus/CeltMode;[[I[[IIII)V

    move/from16 p2, p4

    move-object/from16 p4, p3

    move/from16 p6, p5

    move/from16 p3, v21

    move-object/from16 p5, v24

    .line 766
    invoke-static/range {p1 .. p6}, Lio/github/jaredmdobson/concentus/QuantizeBands;->amp2Log2(Lio/github/jaredmdobson/concentus/CeltMode;II[[I[[II)V

    move/from16 v17, p2

    move/from16 v2, p3

    move-object/from16 v23, p4

    move-object/from16 v7, p5

    move/from16 v4, p6

    const/4 v0, 0x0

    :goto_2c
    if-ge v0, v10, :cond_3b

    const/16 v39, 0x0

    .line 769
    aget-object v16, v49, v39

    aget v18, v16, v0

    move/from16 v19, v0

    const/16 v0, 0xa

    invoke-static {v6, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v0

    add-int v18, v18, v0

    aput v18, v16, v19

    add-int/lit8 v0, v19, 0x1

    goto :goto_2c

    :cond_3b
    const/4 v0, 0x2

    if-ne v4, v0, :cond_3c

    const/4 v0, 0x0

    :goto_2d
    if-ge v0, v10, :cond_3c

    const/16 v35, 0x1

    .line 773
    aget-object v16, v49, v35

    aget v18, v16, v0

    move/from16 v19, v0

    const/16 v0, 0xa

    invoke-static {v6, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v20

    add-int v18, v18, v20

    aput v18, v16, v19

    add-int/lit8 v16, v19, 0x1

    move/from16 v0, v16

    goto :goto_2d

    :cond_3c
    const/16 v35, 0x1

    const/16 v18, 0xccd

    move/from16 v40, v1

    const/4 v0, 0x1

    const/16 v25, 0xccd

    goto :goto_2f

    :cond_3d
    move v6, v0

    move/from16 v1, v16

    move/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v7, v24

    goto :goto_2e

    :cond_3e
    move-object/from16 v7, p5

    move v6, v0

    move v2, v10

    move v10, v11

    move/from16 v1, v16

    move/from16 v11, v21

    move-object/from16 v3, v22

    :goto_2e
    move/from16 v5, v25

    move-object/from16 p1, v58

    const/16 v32, 0x5

    const/16 v35, 0x1

    move/from16 v25, v18

    move/from16 v0, v40

    move/from16 v40, p7

    :goto_2f
    if-lez v6, :cond_3f

    .line 780
    invoke-virtual {v14}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v16

    move/from16 p7, v1

    move-object/from16 p2, v3

    const/4 v1, 0x3

    add-int/lit8 v3, v16, 0x3

    if-gt v3, v13, :cond_40

    .line 781
    invoke-virtual {v14, v0, v1}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    goto :goto_30

    :cond_3f
    move/from16 p7, v1

    move-object/from16 p2, v3

    const/4 v1, 0x3

    .line 784
    :cond_40
    :goto_30
    invoke-static {v4, v9}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v21

    move/from16 p6, v4

    move/from16 p5, v17

    move-object/from16 p3, v21

    move-object/from16 p4, v23

    .line 790
    invoke-static/range {p1 .. p7}, Lio/github/jaredmdobson/concentus/Bands;->normalise_bands(Lio/github/jaredmdobson/concentus/CeltMode;[[I[[I[[IIII)V

    move-object/from16 v17, p1

    move-object/from16 v33, p4

    move/from16 v16, p5

    move/from16 v3, p7

    .line 792
    new-array v1, v10, [I

    move/from16 v18, v0

    mul-int/lit8 v0, v4, 0xf

    move-object/from16 v19, v1

    move/from16 v1, v44

    if-lt v1, v0, :cond_45

    if-nez v11, :cond_45

    .line 794
    iget v0, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->complexity:I

    move/from16 v44, v3

    const/4 v3, 0x2

    if-lt v0, v3, :cond_46

    iget v0, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    if-nez v0, :cond_46

    const/16 v0, 0x28

    if-ge v1, v0, :cond_41

    const/16 v0, 0xc

    :goto_31
    const/16 v55, 0x2

    goto :goto_32

    :cond_41
    const/16 v0, 0x3c

    if-ge v1, v0, :cond_42

    const/4 v0, 0x6

    goto :goto_31

    :cond_42
    const/16 v0, 0x64

    if-ge v1, v0, :cond_43

    const/4 v0, 0x4

    goto :goto_31

    :cond_43
    const/4 v0, 0x3

    goto :goto_31

    :goto_32
    mul-int/lit8 v20, v0, 0x2

    .line 806
    new-instance v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move-object/from16 v22, v17

    move/from16 v17, v16

    move-object/from16 v16, v22

    move-object/from16 v24, v0

    move/from16 v23, v6

    move/from16 v22, v9

    .line 807
    invoke-static/range {v16 .. v26}, Lio/github/jaredmdobson/concentus/CeltCommon;->tf_analysis(Lio/github/jaredmdobson/concentus/CeltMode;II[II[[IIILio/github/jaredmdobson/concentus/BoxedValueInt;II)I

    move-result v9

    move/from16 v0, v23

    move-object/from16 v23, v19

    move/from16 v19, v0

    move-object/from16 v6, v16

    move-object/from16 v0, v21

    move-object/from16 v3, v24

    move/from16 v24, v18

    .line 808
    iget v3, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move/from16 v3, v17

    :goto_33
    if-ge v3, v2, :cond_44

    add-int/lit8 v26, v17, -0x1

    .line 811
    aget v16, v23, v26

    aput v16, v23, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_44
    move v3, v9

    goto :goto_35

    :cond_45
    move/from16 v44, v3

    :cond_46
    move/from16 v24, v18

    move-object/from16 v23, v19

    move-object/from16 v0, v21

    const/16 v55, 0x2

    move/from16 v19, v6

    move-object/from16 v6, v17

    move/from16 v17, v16

    const/4 v9, 0x0

    :goto_34
    if-ge v9, v2, :cond_47

    .line 816
    aput v24, v23, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_34

    :cond_47
    const/4 v3, 0x0

    :goto_35
    move v9, v12

    move v12, v13

    .line 821
    invoke-static {v4, v10}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v13

    move-object/from16 v26, v0

    .line 822
    new-instance v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    move/from16 v39, v1

    iget v1, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->delayedIntra:I

    invoke-direct {v0, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move/from16 v21, v11

    .line 823
    iget-object v11, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    iget v1, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->force_intra:I

    move-object/from16 p2, v0

    iget v0, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->complexity:I

    move/from16 v18, v1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_48

    const/16 v20, 0x1

    goto :goto_36

    :cond_48
    const/16 v20, 0x0

    :goto_36
    iget v0, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->loss_rate:I

    const/16 v46, 0x4

    iget v1, v8, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    move-object/from16 p6, v15

    move v15, v4

    move-object/from16 v4, v23

    move-object/from16 v23, p6

    move/from16 v22, v1

    move/from16 p6, v3

    move v1, v10

    move/from16 v16, v19

    const/4 v3, 0x0

    move-object/from16 v19, p2

    move-object v10, v7

    move/from16 v7, v21

    move/from16 v21, v0

    move-object v0, v8

    move v8, v2

    move v2, v9

    move/from16 v9, v17

    move/from16 v17, v50

    invoke-static/range {v6 .. v22}, Lio/github/jaredmdobson/concentus/QuantizeBands;->quant_coarse_energy(Lio/github/jaredmdobson/concentus/CeltMode;III[[I[[II[[ILio/github/jaredmdobson/concentus/EntropyCoder;IIIILio/github/jaredmdobson/concentus/BoxedValueInt;III)V

    move/from16 v11, v17

    move/from16 v17, v9

    move v9, v12

    move-object/from16 v12, v19

    move/from16 v19, v16

    move-object/from16 v16, v10

    move v10, v11

    move-object/from16 v47, v13

    move v11, v15

    .line 827
    iget v12, v12, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iput v12, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->delayedIntra:I

    move-object/from16 p4, v4

    move/from16 p1, v7

    move/from16 p2, v8

    move-object/from16 p7, v14

    move/from16 p5, v19

    move/from16 p3, v24

    .line 829
    invoke-static/range {p1 .. p7}, Lio/github/jaredmdobson/concentus/CeltCommon;->tf_encode(III[IIILio/github/jaredmdobson/concentus/EntropyCoder;)V

    move/from16 v21, p1

    move/from16 v19, p2

    move/from16 v18, p3

    move-object/from16 v29, p4

    move/from16 v20, p5

    move-object/from16 v4, p7

    const/16 v50, 0x14

    .line 831
    invoke-virtual {v4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    if-gt v7, v9, :cond_4e

    .line 832
    iget v7, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    if-eqz v7, :cond_49

    .line 833
    iput v3, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->tapset_decision:I

    const/4 v7, 0x2

    .line 834
    iput v7, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->spread_decision:I

    move-object/from16 v7, v26

    const/4 v8, 0x2

    move/from16 v26, v9

    goto/16 :goto_3a

    :cond_49
    const/4 v7, 0x2

    if-nez v40, :cond_4c

    .line 835
    iget v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->complexity:I

    const/4 v12, 0x3

    if-lt v8, v12, :cond_4c

    mul-int/lit8 v15, v11, 0xa

    if-lt v10, v15, :cond_4c

    if-eqz v21, :cond_4a

    goto :goto_38

    .line 842
    :cond_4a
    new-instance v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    iget v10, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->tonal_average:I

    invoke-direct {v8, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move v15, v11

    .line 843
    new-instance v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    iget v10, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->tapset_decision:I

    invoke-direct {v11, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 844
    new-instance v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    iget v12, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->hf_average:I

    invoke-direct {v10, v12}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move v12, v9

    .line 845
    iget v9, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->spread_decision:I

    if-eqz v31, :cond_4b

    if-nez v40, :cond_4b

    move-object/from16 v7, v26

    move/from16 v26, v12

    const/4 v12, 0x1

    goto :goto_37

    :cond_4b
    move-object/from16 v7, v26

    move/from16 v26, v12

    const/4 v12, 0x0

    :goto_37
    move v14, v15

    move/from16 v13, v17

    move/from16 v15, v44

    invoke-static/range {v6 .. v15}, Lio/github/jaredmdobson/concentus/Bands;->spreading_decision(Lio/github/jaredmdobson/concentus/CeltMode;[[ILio/github/jaredmdobson/concentus/BoxedValueInt;ILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;IIII)I

    move-result v9

    move-object v12, v10

    move-object v10, v11

    move v11, v14

    iput v9, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->spread_decision:I

    .line 848
    iget v8, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iput v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->tonal_average:I

    .line 849
    iget v8, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iput v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->tapset_decision:I

    .line 850
    iget v8, v12, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iput v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->hf_average:I

    goto :goto_39

    :cond_4c
    :goto_38
    move-object/from16 v7, v26

    move/from16 v26, v9

    .line 836
    iget v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->complexity:I

    if-nez v8, :cond_4d

    .line 837
    iput v3, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->spread_decision:I

    :goto_39
    const/4 v8, 0x2

    goto :goto_3a

    :cond_4d
    const/4 v8, 0x2

    .line 839
    iput v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->spread_decision:I

    .line 855
    :goto_3a
    iget v9, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->spread_decision:I

    sget-object v10, Lio/github/jaredmdobson/concentus/CeltTables;->spread_icdf:[S

    const/4 v12, 0x5

    invoke-virtual {v4, v9, v10, v12}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    goto :goto_3b

    :cond_4e
    move-object/from16 v7, v26

    const/4 v8, 0x2

    const/4 v12, 0x5

    move/from16 v26, v9

    .line 858
    :goto_3b
    new-array v9, v1, [I

    .line 860
    new-instance v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v10, v3}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 861
    iget v13, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lsb_depth:I

    iget-object v14, v6, Lio/github/jaredmdobson/concentus/CeltMode;->logN:[S

    iget v15, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr:I

    iget v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->constrained_vbr:I

    iget v12, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    move-object v3, v7

    move/from16 v17, v8

    move/from16 v22, v12

    move-object/from16 v7, v49

    const/16 p3, 0x0

    const/16 v32, 0x5

    move v8, v1

    move-object v1, v6

    move-object v12, v9

    move-object/from16 v6, v16

    move/from16 v9, v21

    move-object/from16 v21, v10

    move/from16 v16, v15

    move/from16 v15, v18

    move/from16 v10, v19

    move/from16 v19, v20

    move-object/from16 v18, v34

    move/from16 v20, v39

    move/from16 v39, v5

    const/4 v5, 0x2

    invoke-static/range {v6 .. v23}, Lio/github/jaredmdobson/concentus/CeltCommon;->dynalloc_analysis([[I[[IIIII[II[SIII[SIILio/github/jaredmdobson/concentus/BoxedValueInt;I[I)I

    move-result v17

    move-object/from16 v24, v6

    move v7, v8

    move v6, v9

    move v8, v10

    move-object/from16 v31, v12

    move/from16 v44, v15

    move/from16 v9, v19

    move-object/from16 v10, v21

    .line 864
    iget v10, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 867
    iget v12, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    if-eqz v12, :cond_4f

    const/16 v35, 0x3

    .line 868
    div-int/lit8 v12, v20, 0x3

    const/16 v13, 0x8

    invoke-static {v13, v12}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v12

    aput v12, v31, p3

    goto :goto_3c

    :cond_4f
    const/16 v13, 0x8

    const/16 v35, 0x3

    .line 870
    :goto_3c
    new-array v12, v7, [I

    .line 871
    invoke-static {v1, v12, v9, v11}, Lio/github/jaredmdobson/concentus/CeltCommon;->init_caps(Lio/github/jaredmdobson/concentus/CeltMode;[III)V

    shl-int/lit8 v14, v26, 0x3

    .line 876
    invoke-virtual {v4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell_frac()I

    move-result v15

    move/from16 v18, v15

    const/16 v16, 0x6

    const/16 v26, 0x0

    move v15, v6

    :goto_3d
    if-ge v15, v8, :cond_54

    add-int/lit8 v19, v15, 0x1

    .line 882
    aget-short v20, v34, v19

    aget-short v21, v34, v15

    sub-int v20, v20, v21

    mul-int v20, v20, v11

    shl-int v13, v20, v9

    shl-int/lit8 v5, v13, 0x3

    move/from16 v22, v7

    const/16 v7, 0x30

    .line 885
    invoke-static {v7, v13}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v7

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v5

    move/from16 p1, v5

    move/from16 v7, v16

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_3e
    shl-int/lit8 v20, v7, 0x3

    move/from16 v21, v10

    add-int v10, v18, v20

    move-object/from16 v20, v12

    sub-int v12, v14, v26

    if-ge v10, v12, :cond_52

    .line 889
    aget v10, v20, v15

    if-ge v13, v10, :cond_52

    .line 891
    aget v10, v31, v15

    if-ge v5, v10, :cond_50

    const/4 v10, 0x1

    goto :goto_3f

    :cond_50
    const/4 v10, 0x0

    .line 892
    :goto_3f
    invoke-virtual {v4, v10, v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    .line 893
    invoke-virtual {v4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell_frac()I

    move-result v18

    if-nez v10, :cond_51

    goto :goto_40

    :cond_51
    add-int v13, v13, p1

    add-int v26, v26, p1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v12, v20

    move/from16 v10, v21

    const/4 v7, 0x1

    goto :goto_3e

    :cond_52
    :goto_40
    if-eqz v5, :cond_53

    add-int/lit8 v5, v16, -0x1

    const/4 v7, 0x2

    .line 903
    invoke-static {v7, v5}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v16

    goto :goto_41

    :cond_53
    const/4 v7, 0x2

    .line 905
    :goto_41
    aput v13, v31, v15

    move/from16 v15, v19

    move-object/from16 v12, v20

    move/from16 v10, v21

    move/from16 v7, v22

    const/4 v5, 0x2

    const/16 v13, 0x8

    goto :goto_3d

    :cond_54
    move/from16 v22, v7

    move/from16 v21, v10

    move-object/from16 v20, v12

    const/4 v7, 0x2

    if-ne v11, v7, :cond_56

    if-eqz v9, :cond_55

    .line 911
    invoke-static {v1, v3, v9}, Lio/github/jaredmdobson/concentus/CeltCommon;->stereo_analysis(Lio/github/jaredmdobson/concentus/CeltMode;[[II)I

    move-result v5

    goto :goto_42

    :cond_55
    const/4 v5, 0x0

    :goto_42
    move/from16 v7, v45

    .line 914
    div-int/lit16 v10, v7, 0x3e8

    sget-object v12, Lio/github/jaredmdobson/concentus/CeltTables;->intensity_thresholds:[I

    sget-object v13, Lio/github/jaredmdobson/concentus/CeltTables;->intensity_histeresis:[I

    const/16 v15, 0x15

    move-object/from16 p1, v1

    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->intensity:I

    invoke-static {v10, v12, v13, v15, v1}, Lio/github/jaredmdobson/concentus/Bands;->hysteresis_decision(I[I[III)I

    move-result v1

    iput v1, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->intensity:I

    .line 916
    invoke-static {v6, v1}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v1

    invoke-static {v8, v1}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v1

    iput v1, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->intensity:I

    goto :goto_43

    :cond_56
    move-object/from16 p1, v1

    move/from16 v7, v45

    const/4 v5, 0x0

    :goto_43
    add-int/lit8 v1, v18, 0x30

    sub-int v14, v14, v26

    if-gt v1, v14, :cond_58

    .line 921
    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    if-eqz v1, :cond_57

    move-object/from16 v46, v3

    move v3, v6

    move/from16 v45, v7

    move/from16 v34, v8

    move/from16 v19, v9

    move/from16 v1, v22

    move/from16 v14, v25

    const/4 v8, 0x5

    const/16 v54, 0x8

    move-object/from16 v6, p1

    move-object/from16 v25, v20

    goto :goto_44

    .line 924
    :cond_57
    new-instance v13, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->stereo_saving:I

    invoke-direct {v13, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 925
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->analysis:Lio/github/jaredmdobson/concentus/AnalysisInfo;

    iget v15, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->intensity:I

    move/from16 v45, v7

    move v10, v9

    move/from16 v1, v22

    move/from16 v14, v25

    move/from16 v16, v48

    const/16 v54, 0x8

    move-object v7, v3

    move v3, v6

    move v9, v8

    move-object/from16 v25, v20

    move-object/from16 v8, v24

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v16}, Lio/github/jaredmdobson/concentus/CeltCommon;->alloc_trim_analysis(Lio/github/jaredmdobson/concentus/CeltMode;[[I[[IIIILio/github/jaredmdobson/concentus/AnalysisInfo;Lio/github/jaredmdobson/concentus/BoxedValueInt;III)I

    move-result v8

    move-object/from16 v46, v7

    move/from16 v34, v9

    move/from16 v19, v10

    .line 928
    iget v7, v13, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iput v7, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->stereo_saving:I

    .line 930
    :goto_44
    sget-object v7, Lio/github/jaredmdobson/concentus/CeltTables;->trim_icdf:[S

    const/4 v9, 0x7

    invoke-virtual {v4, v8, v7, v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    .line 931
    invoke-virtual {v4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell_frac()I

    move-result v18

    move/from16 v32, v8

    goto :goto_45

    :cond_58
    move-object/from16 v46, v3

    move v3, v6

    move/from16 v45, v7

    move/from16 v34, v8

    move/from16 v19, v9

    move/from16 v1, v22

    move/from16 v14, v25

    const/16 v54, 0x8

    move-object/from16 v6, p1

    move-object/from16 v25, v20

    :goto_45
    move/from16 v48, v18

    if-lez v28, :cond_61

    .line 941
    iget v7, v6, Lio/github/jaredmdobson/concentus/CeltMode;->maxLM:I

    sub-int v49, v7, v19

    rsub-int/lit8 v7, v19, 0x3

    shr-int v7, v36, v7

    move/from16 v8, v42

    .line 945
    invoke-static {v8, v7}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v7

    mul-int/lit8 v15, v11, 0x28

    add-int/lit8 v15, v15, 0x14

    const/16 v35, 0x3

    shl-int/lit8 v8, v15, 0x3

    sub-int v8, v28, v8

    move/from16 v9, v19

    move/from16 v19, v17

    move/from16 v17, v14

    .line 948
    iget v14, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->constrained_vbr:I

    if-eqz v14, :cond_59

    .line 949
    iget v10, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_offset:I

    shr-int v10, v10, v49

    add-int/2addr v8, v10

    :cond_59
    move v10, v7

    .line 952
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->analysis:Lio/github/jaredmdobson/concentus/AnalysisInfo;

    move v15, v11

    iget v11, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lastCodedBands:I

    iget v13, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->intensity:I

    move v12, v15

    iget v15, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->stereo_saving:I

    move/from16 p4, v3

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    move-object/from16 v20, v3

    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    move/from16 v16, v3

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->energy_mask:[I

    if-eqz v3, :cond_5a

    const/16 v22, 0x1

    goto :goto_46

    :cond_5a
    const/16 v22, 0x0

    :goto_46
    move/from16 v3, v21

    move/from16 v21, v16

    move/from16 v16, v3

    move v3, v10

    move/from16 v18, v38

    move/from16 v10, v45

    move/from16 v23, v56

    move/from16 v24, v57

    invoke-static/range {v6 .. v24}, Lio/github/jaredmdobson/concentus/CeltCommon;->compute_vbr(Lio/github/jaredmdobson/concentus/CeltMode;Lio/github/jaredmdobson/concentus/AnalysisInfo;IIIIIIIIIIIILio/github/jaredmdobson/concentus/OpusFramesize;IIII)I

    move-result v7

    move v13, v10

    move v11, v12

    add-int v7, v7, v48

    add-int v48, v48, v26

    add-int/lit8 v48, v48, 0x3f

    shr-int/lit8 v8, v48, 0x6

    const/16 v55, 0x2

    add-int/lit8 v8, v8, 0x2

    sub-int v8, v8, v27

    add-int/lit8 v10, v7, 0x20

    shr-int/lit8 v10, v10, 0x6

    .line 968
    invoke-static {v8, v10}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v8

    add-int v8, v8, v27

    .line 969
    invoke-static {v3, v8}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v8

    sub-int v8, v8, v27

    sub-int v7, v7, v28

    shl-int/lit8 v10, v8, 0x6

    if-eqz v37, :cond_5b

    const/16 v10, 0x80

    const/4 v7, 0x2

    const/4 v8, 0x0

    goto :goto_47

    :cond_5b
    move/from16 v60, v8

    move v8, v7

    move/from16 v7, v60

    .line 987
    :goto_47
    iget v12, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_count:I

    const/16 v14, 0x3ca

    if-ge v12, v14, :cond_5c

    add-int/lit8 v14, v12, 0x1

    .line 988
    iput v14, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_count:I

    add-int/lit8 v12, v12, 0x15

    const/16 v14, 0x10

    .line 989
    invoke-static {v12, v14}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v12

    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->celt_rcp(I)I

    move-result v12

    goto :goto_48

    :cond_5c
    const/16 v14, 0x10

    const/16 v12, 0x21

    .line 994
    :goto_48
    iget v15, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->constrained_vbr:I

    if-eqz v15, :cond_5d

    .line 995
    iget v14, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_reservoir:I

    sub-int v10, v10, v28

    add-int/2addr v14, v10

    iput v14, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_reservoir:I

    :cond_5d
    if-eqz v15, :cond_5e

    .line 1001
    iget v10, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_drift:I

    const/16 v18, 0x1

    shl-int v14, v18, v49

    mul-int v8, v8, v14

    iget v14, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_offset:I

    sub-int/2addr v8, v14

    sub-int/2addr v8, v10

    invoke-static {v12, v8}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v8

    add-int/2addr v10, v8

    iput v10, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_drift:I

    neg-int v8, v10

    .line 1002
    iput v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_offset:I

    goto :goto_49

    :cond_5e
    const/16 v18, 0x1

    .line 1006
    :goto_49
    iget v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->constrained_vbr:I

    if-eqz v8, :cond_60

    iget v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_reservoir:I

    if-gez v8, :cond_60

    neg-int v8, v8

    .line 1008
    div-int/lit8 v8, v8, 0x40

    if-eqz v37, :cond_5f

    const/4 v8, 0x0

    :cond_5f
    add-int/2addr v7, v8

    const/4 v8, 0x0

    .line 1011
    iput v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr_reservoir:I

    :cond_60
    add-int v7, v7, v27

    .line 1014
    invoke-static {v3, v7}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v3

    .line 1017
    invoke-virtual {v4, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_shrink(I)V

    goto :goto_4a

    :cond_61
    move/from16 p4, v3

    move/from16 v9, v19

    move/from16 v8, v42

    move/from16 v13, v45

    const/16 v18, 0x1

    move v3, v8

    .line 1021
    :goto_4a
    new-array v7, v1, [I

    .line 1022
    new-array v8, v1, [I

    .line 1023
    new-array v12, v1, [I

    mul-int/lit8 v36, v3, 0x8

    shl-int/lit8 v10, v36, 0x3

    .line 1026
    invoke-virtual {v4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell_frac()I

    move-result v14

    sub-int/2addr v10, v14

    add-int/lit8 v10, v10, -0x1

    if-eqz v44, :cond_62

    const/4 v14, 0x2

    if-lt v9, v14, :cond_62

    add-int/lit8 v14, v9, 0x2

    const/16 v35, 0x3

    shl-int/lit8 v14, v14, 0x3

    if-lt v10, v14, :cond_62

    goto :goto_4b

    :cond_62
    const/16 v54, 0x0

    :goto_4b
    sub-int v14, v10, v54

    add-int/lit8 v10, v34, -0x1

    .line 1031
    iget-object v15, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->analysis:Lio/github/jaredmdobson/concentus/AnalysisInfo;

    iget-boolean v15, v15, Lio/github/jaredmdobson/concentus/AnalysisInfo;->enabled:Z

    if-eqz v15, :cond_67

    iget-object v15, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->analysis:Lio/github/jaredmdobson/concentus/AnalysisInfo;

    iget v15, v15, Lio/github/jaredmdobson/concentus/AnalysisInfo;->valid:I

    if-eqz v15, :cond_67

    mul-int/lit16 v15, v11, 0x7d00

    if-ge v13, v15, :cond_63

    const/16 v10, 0xd

    goto :goto_4c

    :cond_63
    const v10, 0xbb80

    mul-int v15, v11, v10

    if-ge v13, v15, :cond_64

    const/16 v10, 0x10

    goto :goto_4c

    :cond_64
    const v10, 0xea60

    mul-int v15, v11, v10

    if-ge v13, v15, :cond_65

    const/16 v10, 0x12

    goto :goto_4c

    :cond_65
    const v10, 0x13880

    mul-int v15, v11, v10

    if-ge v13, v15, :cond_66

    const/16 v10, 0x13

    goto :goto_4c

    :cond_66
    const/16 v10, 0x14

    .line 1044
    :goto_4c
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->analysis:Lio/github/jaredmdobson/concentus/AnalysisInfo;

    iget v13, v13, Lio/github/jaredmdobson/concentus/AnalysisInfo;->bandwidth:I

    invoke-static {v13, v10}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v10

    .line 1047
    :cond_67
    iget v13, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lfe:I

    if-eqz v13, :cond_68

    const/16 v24, 0x1

    goto :goto_4d

    :cond_68
    move/from16 v24, v10

    :goto_4d
    move-object/from16 v18, v12

    const/16 v35, 0x1

    .line 1051
    new-instance v12, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    iget v10, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->intensity:I

    invoke-direct {v12, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 1052
    new-instance v15, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v10, 0x0

    invoke-direct {v15, v10}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 1053
    new-instance v13, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v13, v5}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/16 v22, 0x1

    .line 1054
    iget v5, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lastCodedBands:I

    move-object/from16 v21, v4

    move/from16 v23, v5

    move-object/from16 v17, v7

    move-object/from16 v16, v8

    move/from16 v20, v9

    move/from16 v19, v11

    move-object/from16 v10, v25

    move-object/from16 v9, v31

    move/from16 v11, v32

    move/from16 v8, v34

    const/4 v4, 0x1

    move/from16 v7, p4

    invoke-static/range {v6 .. v24}, Lio/github/jaredmdobson/concentus/Rate;->compute_allocation(Lio/github/jaredmdobson/concentus/CeltMode;II[I[IILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;ILio/github/jaredmdobson/concentus/BoxedValueInt;[I[I[IIILio/github/jaredmdobson/concentus/EntropyCoder;III)I

    move-result v5

    move-object v9, v15

    move-object/from16 v24, v16

    move-object/from16 v15, v18

    move/from16 v11, v19

    move/from16 v19, v20

    move-object/from16 v14, v21

    .line 1057
    iget v10, v12, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iput v10, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->intensity:I

    .line 1058
    iget v9, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 1059
    iget v10, v13, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 1061
    iget v12, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lastCodedBands:I

    if-eqz v12, :cond_69

    add-int/lit8 v13, v12, 0x1

    sub-int/2addr v12, v4

    .line 1062
    invoke-static {v12, v5}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v12

    invoke-static {v13, v12}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v12

    iput v12, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lastCodedBands:I

    goto :goto_4e

    .line 1064
    :cond_69
    iput v5, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lastCodedBands:I

    :goto_4e
    move/from16 v31, v9

    .line 1067
    iget-object v9, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    move/from16 v27, v10

    move v13, v11

    move-object v12, v14

    move-object/from16 v11, v17

    move-object/from16 v10, v47

    invoke-static/range {v6 .. v13}, Lio/github/jaredmdobson/concentus/QuantizeBands;->quant_fine_energy(Lio/github/jaredmdobson/concentus/CeltMode;II[[I[[I[ILio/github/jaredmdobson/concentus/EntropyCoder;I)V

    move-object v9, v11

    move v11, v13

    .line 1070
    new-array v2, v2, [S

    .line 1071
    new-instance v12, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    iget v13, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->rng:I

    invoke-direct {v12, v13}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v13, 0x0

    .line 1072
    aget-object v20, v46, v13

    const/4 v13, 0x2

    if-ne v11, v13, :cond_6a

    aget-object v13, v46, v4

    goto :goto_4f

    :cond_6a
    const/4 v13, 0x0

    :goto_4f
    move-object/from16 v21, v13

    iget v13, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->spread_decision:I

    iget v4, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->intensity:I

    mul-int/lit8 v16, v3, 0x40

    sub-int v30, v16, v54

    const/16 v16, 0x1

    move-object/from16 v22, v2

    move/from16 v28, v4

    move/from16 v34, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v35, v12

    move/from16 v26, v13

    move-object/from16 v32, v14

    move-object/from16 v23, v33

    move/from16 v25, v40

    move/from16 v33, v19

    move/from16 v19, v8

    invoke-static/range {v16 .. v35}, Lio/github/jaredmdobson/concentus/Bands;->quant_all_bands(ILio/github/jaredmdobson/concentus/CeltMode;II[I[I[S[[I[IIIII[IIILio/github/jaredmdobson/concentus/EntropyCoder;IILio/github/jaredmdobson/concentus/BoxedValueInt;)V

    move-object/from16 v2, v35

    .line 1076
    iget v2, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iput v2, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->rng:I

    if-lez v54, :cond_6c

    .line 1079
    iget v2, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->consec_transient:I

    const/4 v5, 0x2

    if-ge v2, v5, :cond_6b

    const/4 v2, 0x1

    goto :goto_50

    :cond_6b
    const/4 v2, 0x0

    :goto_50
    int-to-long v4, v2

    const/4 v2, 0x1

    .line 1080
    invoke-virtual {v14, v4, v5, v2}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bits(JI)V

    :cond_6c
    move-object/from16 v17, v9

    .line 1083
    iget-object v9, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    invoke-virtual {v14}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v2

    sub-int v13, v36, v2

    move-object v12, v15

    move v15, v11

    move-object/from16 v11, v17

    invoke-static/range {v6 .. v15}, Lio/github/jaredmdobson/concentus/QuantizeBands;->quant_energy_finalise(Lio/github/jaredmdobson/concentus/CeltMode;II[[I[[I[I[IILio/github/jaredmdobson/concentus/EntropyCoder;I)V

    move/from16 v19, v8

    move v4, v15

    const/16 v2, -0x7000

    if-eqz v37, :cond_6e

    const/4 v9, 0x0

    :goto_51
    if-ge v9, v1, :cond_6d

    .line 1087
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    const/4 v8, 0x0

    aget-object v5, v5, v8

    aput v2, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    :cond_6d
    const/4 v5, 0x2

    if-ne v4, v5, :cond_6e

    const/4 v9, 0x0

    :goto_52
    if-ge v9, v1, :cond_6e

    .line 1091
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    const/16 v35, 0x1

    aget-object v5, v5, v35

    aput v2, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_52

    :cond_6e
    move/from16 v5, v52

    .line 1096
    iput v5, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_period:I

    move/from16 v5, v53

    .line 1097
    iput v5, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_gain:I

    move/from16 v5, v51

    .line 1098
    iput v5, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_tapset:I

    move/from16 v5, v39

    const/4 v8, 0x2

    if-ne v5, v8, :cond_6f

    const/4 v10, 0x1

    if-ne v4, v10, :cond_6f

    .line 1101
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    const/4 v8, 0x0

    aget-object v6, v4, v8

    aget-object v4, v4, v10

    invoke-static {v6, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_53

    :cond_6f
    const/4 v8, 0x0

    :goto_53
    if-nez v44, :cond_70

    .line 1105
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v4, v4, v8

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE2:[[I

    aget-object v6, v6, v8

    invoke-static {v4, v8, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1106
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    aget-object v4, v4, v8

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v6, v6, v8

    invoke-static {v4, v8, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v10, 0x2

    if-ne v5, v10, :cond_72

    .line 1108
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE:[[I

    const/16 v35, 0x1

    aget-object v4, v4, v35

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE2:[[I

    aget-object v6, v6, v35

    invoke-static {v4, v8, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1109
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    aget-object v4, v4, v35

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v6, v6, v35

    invoke-static {v4, v8, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_56

    :cond_70
    const/4 v9, 0x0

    :goto_54
    if-ge v9, v1, :cond_71

    .line 1113
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v4, v4, v8

    aget v6, v4, v9

    iget-object v10, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    aget-object v10, v10, v8

    aget v8, v10, v9

    invoke-static {v6, v8}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v6

    aput v6, v4, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto :goto_54

    :cond_71
    const/4 v6, 0x2

    if-ne v5, v6, :cond_72

    const/4 v9, 0x0

    :goto_55
    if-ge v9, v1, :cond_72

    .line 1117
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE:[[I

    const/16 v35, 0x1

    aget-object v4, v4, v35

    aget v6, v4, v9

    iget-object v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    aget-object v8, v8, v35

    aget v8, v8, v9

    invoke-static {v6, v8}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v6

    aput v6, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_55

    :cond_72
    :goto_56
    const/4 v9, 0x0

    :goto_57
    const/4 v4, 0x0

    :goto_58
    if-ge v4, v7, :cond_73

    .line 1126
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    aget-object v6, v6, v9

    const/16 v39, 0x0

    aput v39, v6, v4

    .line 1127
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v6, v6, v9

    iget-object v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE2:[[I

    aget-object v8, v8, v9

    aput v2, v8, v4

    aput v2, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    :cond_73
    move/from16 v6, v19

    :goto_59
    if-ge v6, v1, :cond_74

    .line 1130
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldBandE:[[I

    aget-object v4, v4, v9

    const/16 v39, 0x0

    aput v39, v4, v6

    .line 1131
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v4, v4, v9

    iget-object v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->oldLogE2:[[I

    aget-object v8, v8, v9

    aput v2, v8, v6

    aput v2, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    :cond_74
    add-int/lit8 v9, v9, 0x1

    if-lt v9, v5, :cond_78

    if-nez v44, :cond_76

    if-eqz v41, :cond_75

    goto :goto_5a

    :cond_75
    const/4 v11, 0x0

    .line 1138
    iput v11, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->consec_transient:I

    goto :goto_5b

    .line 1136
    :cond_76
    :goto_5a
    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->consec_transient:I

    const/16 v59, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->consec_transient:I

    .line 1140
    :goto_5b
    iget-wide v1, v14, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    long-to-int v2, v1

    iput v2, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->rng:I

    .line 1144
    invoke-virtual {v14}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_done()V

    .line 1146
    invoke-virtual {v14}, Lio/github/jaredmdobson/concentus/EntropyCoder;->get_error()I

    move-result v1

    if-eqz v1, :cond_77

    .line 1147
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v1

    :cond_77
    return v3

    :cond_78
    const/16 v59, 0x1

    goto :goto_57

    :cond_79
    move/from16 v32, v1

    move v10, v15

    move/from16 v15, v16

    move/from16 v7, v21

    move/from16 v1, v22

    const/16 v46, 0x4

    const/16 v59, 0x1

    move/from16 v22, v4

    move/from16 v4, v20

    move-object v6, v9

    move v9, v10

    move/from16 v33, v11

    move v8, v12

    move-object v3, v14

    move-object/from16 v12, v17

    move/from16 v36, v19

    move-object/from16 v14, v34

    move/from16 v2, v42

    move/from16 v25, v44

    move/from16 v10, v45

    const/16 p6, 0x4

    const/4 v7, 0x0

    const/16 v23, 0x8

    move/from16 v11, p2

    move v15, v4

    move/from16 v34, v5

    move v4, v13

    move v13, v1

    move-object/from16 v1, p1

    goto/16 :goto_10

    .line 441
    :cond_7a
    :goto_5c
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1
.end method

.method celt_encoder_init(II)I
    .locals 1

    .line 236
    sget-object v0, Lio/github/jaredmdobson/concentus/CeltMode;->mode48000_960_120:Lio/github/jaredmdobson/concentus/CeltMode;

    invoke-virtual {p0, v0, p2}, Lio/github/jaredmdobson/concentus/CeltEncoder;->opus_custom_encoder_init_arch(Lio/github/jaredmdobson/concentus/CeltMode;I)I

    move-result p2

    .line 237
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-eq p2, v0, :cond_0

    return p2

    .line 240
    :cond_0
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/CeltCommon;->resampling_factor(I)I

    move-result p1

    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->upsample:I

    .line 241
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    return p1
.end method

.method opus_custom_encoder_init_arch(Lio/github/jaredmdobson/concentus/CeltMode;I)I
    .locals 1

    if-ltz p2, :cond_2

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 202
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_ALLOC_FAIL:I

    return p1

    .line 205
    :cond_1
    invoke-direct {p0}, Lio/github/jaredmdobson/concentus/CeltEncoder;->Reset()V

    .line 207
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    .line 208
    iput p2, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->channels:I

    iput p2, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->stream_channels:I

    const/4 p2, 0x1

    .line 210
    iput p2, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->upsample:I

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->start:I

    .line 212
    iget p1, p1, Lio/github/jaredmdobson/concentus/CeltMode;->effEBands:I

    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->end:I

    .line 213
    iput p2, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->signalling:I

    .line 215
    iput p2, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->constrained_vbr:I

    .line 216
    iput p2, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->clip:I

    const/4 p1, -0x1

    .line 218
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->bitrate:I

    .line 219
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->vbr:I

    .line 220
    iput v0, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->force_intra:I

    const/4 p1, 0x5

    .line 221
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->complexity:I

    const/16 p1, 0x18

    .line 222
    iput p1, p0, Lio/github/jaredmdobson/concentus/CeltEncoder;->lsb_depth:I

    .line 229
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/CeltEncoder;->ResetState()V

    .line 231
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    return p1

    .line 198
    :cond_2
    :goto_0
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1
.end method

.method run_prefilter([[I[[IIIILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;II)I
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v5, p4

    move/from16 v9, p10

    .line 247
    new-array v10, v1, [[I

    .line 249
    new-instance v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v11, 0x0

    invoke-direct {v6, v11}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 256
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->mode:Lio/github/jaredmdobson/concentus/CeltMode;

    .line 257
    iget v14, v12, Lio/github/jaredmdobson/concentus/CeltMode;->overlap:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit16 v3, v5, 0x400

    .line 259
    new-array v3, v3, [I

    aput-object v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 264
    :goto_1
    aget-object v3, p2, v2

    aget-object v4, v10, v2

    const/16 v13, 0x400

    invoke-static {v3, v11, v4, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    aget-object v3, p1, v2

    aget-object v4, v10, v2

    invoke-static {v3, v14, v4, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v15, 0x1

    add-int/2addr v2, v15

    if-lt v2, v1, :cond_10

    const/16 v8, 0xf

    if-eqz p9, :cond_4

    add-int/lit16 v2, v5, 0x400

    shr-int/lit8 v3, v2, 0x1

    .line 269
    new-array v3, v3, [I

    .line 271
    invoke-static {v10, v3, v2, v1}, Lio/github/jaredmdobson/concentus/Pitch;->pitch_downsample([[I[III)V

    move-object v2, v3

    const/16 v3, 0x200

    move-object v7, v6

    const/16 v6, 0x3d3

    move-object v4, v2

    .line 274
    invoke-static/range {v2 .. v7}, Lio/github/jaredmdobson/concentus/Pitch;->pitch_search([II[IIILio/github/jaredmdobson/concentus/BoxedValueInt;)V

    .line 276
    iget v3, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    rsub-int v3, v3, 0x400

    iput v3, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move-object v6, v7

    .line 277
    iget v7, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_period:I

    const/16 v3, 0xf

    iget v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_gain:I

    const/16 v4, 0xf

    const/16 v3, 0x400

    const/16 v5, 0xf

    const/16 v4, 0xf

    move/from16 v5, p4

    const/16 v11, 0xf

    invoke-static/range {v2 .. v8}, Lio/github/jaredmdobson/concentus/Pitch;->remove_doubling([IIIILio/github/jaredmdobson/concentus/BoxedValueInt;II)I

    move-result v2

    move-object v7, v6

    .line 279
    iget v3, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 v4, 0x3fe

    if-le v3, v4, :cond_1

    .line 280
    iput v4, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    :cond_1
    const/16 v3, 0x599a

    .line 282
    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    .line 284
    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->loss_rate:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 285
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v2

    .line 287
    :cond_2
    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->loss_rate:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_3

    .line 288
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v2

    .line 290
    :cond_3
    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->loss_rate:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_5

    goto :goto_2

    :cond_4
    move-object v7, v6

    const/16 v11, 0xf

    .line 295
    iput v11, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    :goto_2
    const/4 v2, 0x0

    .line 302
    :cond_5
    iget v3, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v4, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_period:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    iget v4, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 v6, 0x199a

    if-le v3, v4, :cond_6

    const/16 v3, 0x3334

    goto :goto_3

    :cond_6
    const/16 v3, 0x199a

    :goto_3
    const/16 v4, 0x19

    if-ge v9, v4, :cond_7

    add-int/lit16 v3, v3, 0xccd

    :cond_7
    const/16 v4, 0x23

    if-ge v9, v4, :cond_8

    add-int/lit16 v3, v3, 0xccd

    .line 311
    :cond_8
    iget v4, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_gain:I

    const/16 v8, 0x3333

    if-le v4, v8, :cond_9

    add-int/lit16 v3, v3, -0xccd

    :cond_9
    const/16 v8, 0x4666

    if-le v4, v8, :cond_a

    add-int/lit16 v3, v3, -0xccd

    .line 319
    :cond_a
    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v3

    if-ge v2, v3, :cond_b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_4

    .line 328
    :cond_b
    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_gain:I

    sub-int v3, v2, v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->ABS32(I)I

    move-result v3

    const/16 v4, 0xccd

    if-ge v3, v4, :cond_c

    .line 329
    iget v2, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_gain:I

    :cond_c
    add-int/lit16 v2, v2, 0x600

    shr-int/lit8 v2, v2, 0xa

    .line 332
    div-int/lit8 v2, v2, 0x3

    sub-int/2addr v2, v15

    const/4 v3, 0x7

    .line 333
    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    mul-int/lit16 v3, v3, 0xc00

    move v4, v2

    const/4 v6, 0x1

    :goto_4
    const/4 v2, 0x0

    .line 341
    :goto_5
    iget v8, v12, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    sub-int v19, v8, v14

    .line 342
    iget v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_period:I

    invoke-static {v8, v11}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v8

    iput v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_period:I

    .line 343
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->in_mem:[[I

    aget-object v8, v8, v2

    aget-object v9, p1, v2

    const/4 v15, 0x0

    invoke-static {v8, v15, v9, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v19, :cond_d

    const/16 v8, 0x400

    .line 345
    aget-object v13, p1, v2

    aget-object v15, v10, v2

    iget v9, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_period:I

    iget v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_gain:I

    neg-int v11, v8

    neg-int v8, v8

    move/from16 p10, v2

    iget v2, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_tapset:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v16, 0x400

    move/from16 v18, v9

    move/from16 v23, v2

    move/from16 v22, v2

    move/from16 v21, v8

    move/from16 v17, v9

    move/from16 v20, v11

    const/16 v8, 0x400

    invoke-static/range {v13 .. v25}, Lio/github/jaredmdobson/concentus/CeltCommon;->comb_filter([II[IIIIIIIII[II)V

    goto :goto_6

    :cond_d
    move/from16 p10, v2

    const/16 v8, 0x400

    :goto_6
    move/from16 v25, v14

    move/from16 v2, v19

    .line 350
    aget-object v13, p1, p10

    add-int v14, v25, v2

    aget-object v15, v10, p10

    add-int/lit16 v9, v2, 0x400

    iget v11, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_period:I

    iget v8, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    sub-int v19, v5, v2

    iget v2, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_gain:I

    neg-int v2, v2

    move/from16 v20, v2

    neg-int v2, v3

    move/from16 v21, v2

    iget v2, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->prefilter_tapset:I

    move/from16 v22, v2

    iget-object v2, v12, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    move/from16 v23, p5

    move-object/from16 v24, v2

    move/from16 v18, v8

    move/from16 v16, v9

    move/from16 v17, v11

    invoke-static/range {v13 .. v25}, Lio/github/jaredmdobson/concentus/CeltCommon;->comb_filter([II[IIIIIIIII[II)V

    move/from16 v14, v25

    .line 353
    aget-object v2, p1, p10

    iget-object v8, v0, Lio/github/jaredmdobson/concentus/CeltEncoder;->in_mem:[[I

    aget-object v8, v8, p10

    const/4 v15, 0x0

    invoke-static {v2, v5, v8, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v8, 0x400

    if-le v5, v8, :cond_e

    .line 356
    aget-object v2, v10, p10

    aget-object v9, p2, p10

    invoke-static {v2, v5, v9, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 358
    :cond_e
    aget-object v2, p2, p10

    rsub-int v9, v5, 0x400

    invoke-static {v2, v5, v15, v9}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([IIII)V

    .line 359
    aget-object v2, v10, p10

    aget-object v11, p2, p10

    invoke-static {v2, v8, v11, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    add-int/lit8 v2, p10, 0x1

    if-lt v2, v1, :cond_f

    move-object/from16 v11, p7

    .line 363
    iput v3, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 364
    iget v1, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move-object/from16 v13, p6

    iput v1, v13, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move-object/from16 v9, p8

    .line 365
    iput v4, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return v6

    :cond_f
    move-object/from16 v13, p6

    move-object/from16 v11, p7

    move-object/from16 v9, p8

    const/16 v11, 0xf

    const/16 v13, 0x400

    goto/16 :goto_5

    :cond_10
    move-object/from16 v13, p6

    move-object/from16 v11, p7

    const/4 v15, 0x0

    const/4 v11, 0x0

    goto/16 :goto_1
.end method
