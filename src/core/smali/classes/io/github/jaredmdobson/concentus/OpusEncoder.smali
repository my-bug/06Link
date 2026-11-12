.class public Lio/github/jaredmdobson/concentus/OpusEncoder;
.super Ljava/lang/Object;
.source "OpusEncoder.java"


# instance fields
.field final Celt_Encoder:Lio/github/jaredmdobson/concentus/CeltEncoder;

.field Fs:I

.field final SilkEncoder:Lio/github/jaredmdobson/concentus/SilkEncoder;

.field final analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

.field application:Lio/github/jaredmdobson/concentus/OpusApplication;

.field bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

.field bitrate_bps:I

.field channels:I

.field final delay_buffer:[S

.field delay_compensation:I

.field detected_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

.field encoder_buffer:I

.field energy_masking:[I

.field first:I

.field force_channels:I

.field final hp_mem:[I

.field hybrid_stereo_width_Q14:S

.field lfe:I

.field lsb_depth:I

.field max_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

.field mode:Lio/github/jaredmdobson/concentus/OpusMode;

.field prev_HB_gain:I

.field prev_channels:I

.field prev_framesize:I

.field prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

.field rangeFinal:I

.field signal_type:Lio/github/jaredmdobson/concentus/OpusSignal;

.field silk_bw_switch:I

.field final silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

.field stream_channels:I

.field use_vbr:I

.field user_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

.field user_bitrate_bps:I

.field user_forced_mode:Lio/github/jaredmdobson/concentus/OpusMode;

.field variable_HP_smth2_Q15:I

.field variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

.field vbr_constraint:I

.field voice_ratio:I

.field final width_mem:Lio/github/jaredmdobson/concentus/StereoWidthState;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lio/github/jaredmdobson/concentus/EncControlState;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/EncControlState;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    .line 67
    new-instance v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    const/4 v0, 0x4

    .line 74
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->hp_mem:[I

    .line 84
    new-instance v0, Lio/github/jaredmdobson/concentus/StereoWidthState;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/StereoWidthState;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->width_mem:Lio/github/jaredmdobson/concentus/StereoWidthState;

    const/16 v0, 0x3c0

    .line 85
    new-array v0, v0, [S

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_buffer:[S

    .line 92
    new-instance v0, Lio/github/jaredmdobson/concentus/SilkEncoder;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/SilkEncoder;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->SilkEncoder:Lio/github/jaredmdobson/concentus/SilkEncoder;

    .line 93
    new-instance v0, Lio/github/jaredmdobson/concentus/CeltEncoder;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/CeltEncoder;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Celt_Encoder:Lio/github/jaredmdobson/concentus/CeltEncoder;

    return-void
.end method

.method public constructor <init>(IILio/github/jaredmdobson/concentus/OpusApplication;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/jaredmdobson/concentus/OpusException;
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lio/github/jaredmdobson/concentus/EncControlState;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/EncControlState;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    .line 67
    new-instance v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    const/4 v0, 0x4

    .line 74
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->hp_mem:[I

    .line 84
    new-instance v0, Lio/github/jaredmdobson/concentus/StereoWidthState;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/StereoWidthState;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->width_mem:Lio/github/jaredmdobson/concentus/StereoWidthState;

    const/16 v0, 0x3c0

    .line 85
    new-array v0, v0, [S

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_buffer:[S

    .line 92
    new-instance v0, Lio/github/jaredmdobson/concentus/SilkEncoder;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/SilkEncoder;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->SilkEncoder:Lio/github/jaredmdobson/concentus/SilkEncoder;

    .line 93
    new-instance v0, Lio/github/jaredmdobson/concentus/CeltEncoder;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/CeltEncoder;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Celt_Encoder:Lio/github/jaredmdobson/concentus/CeltEncoder;

    const v0, 0xbb80

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5dc0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e80

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2ee0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f40

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sample rate is invalid (must be 8/12/16/24/48 Khz)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 203
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of channels must be 1 or 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lio/github/jaredmdobson/concentus/OpusEncoder;->opus_init_encoder(IILio/github/jaredmdobson/concentus/OpusApplication;)I

    move-result p1

    .line 207
    sget p2, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-eq p1, p2, :cond_5

    .line 208
    sget p2, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    if-ne p1, p2, :cond_4

    .line 209
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OPUS_BAD_ARG when creating encoder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_4
    new-instance p2, Lio/github/jaredmdobson/concentus/OpusException;

    const-string p3, "Error while initializing encoder"

    invoke-direct {p2, p3, p1}, Lio/github/jaredmdobson/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_5
    return-void
.end method


# virtual methods
.method GetCeltMode()Lio/github/jaredmdobson/concentus/CeltMode;
    .locals 1

    .line 1847
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Celt_Encoder:Lio/github/jaredmdobson/concentus/CeltEncoder;

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/CeltEncoder;->GetMode()Lio/github/jaredmdobson/concentus/CeltMode;

    move-result-object v0

    return-object v0
.end method

.method PartialReset()V
    .locals 3

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    .line 127
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->hybrid_stereo_width_Q14:S

    .line 128
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->variable_HP_smth2_Q15:I

    .line 129
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_HB_gain:I

    .line 130
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->hp_mem:[I

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 131
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 132
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 133
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_channels:I

    .line 134
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_framesize:I

    .line 135
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 136
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_bw_switch:I

    .line 137
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->first:I

    const/4 v1, 0x0

    .line 138
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->energy_masking:[I

    .line 139
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->width_mem:Lio/github/jaredmdobson/concentus/StereoWidthState;

    invoke-virtual {v1}, Lio/github/jaredmdobson/concentus/StereoWidthState;->Reset()V

    .line 140
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_buffer:[S

    const/16 v2, 0x3c0

    invoke-static {v1, v0, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 141
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->detected_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 142
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->rangeFinal:I

    return-void
.end method

.method SetEnergyMask([I)V
    .locals 1

    .line 1842
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->energy_masking:[I

    .line 1843
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Celt_Encoder:Lio/github/jaredmdobson/concentus/CeltEncoder;

    invoke-virtual {v0, p1}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetEnergyMask([I)V

    return-void
.end method

.method public encode([BII[BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/jaredmdobson/concentus/OpusException;
        }
    .end annotation

    .line 1357
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    mul-int v0, v0, p3

    new-array v2, v0, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1359
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 1361
    invoke-virtual/range {v1 .. v7}, Lio/github/jaredmdobson/concentus/OpusEncoder;->encode([SII[BII)I

    move-result p1

    return p1
.end method

.method public encode([SII[BII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/jaredmdobson/concentus/OpusException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    add-int v2, p5, p6

    .line 1301
    array-length v3, v0

    if-gt v2, v3, :cond_4

    .line 1306
    iget-object v2, v1, Lio/github/jaredmdobson/concentus/OpusEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    sget-object v3, Lio/github/jaredmdobson/concentus/OpusApplication;->OPUS_APPLICATION_RESTRICTED_LOWDELAY:Lio/github/jaredmdobson/concentus/OpusApplication;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_0

    .line 1309
    :cond_0
    iget v2, v1, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_compensation:I

    move v9, v2

    .line 1312
    :goto_0
    iget-object v5, v1, Lio/github/jaredmdobson/concentus/OpusEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    iget v6, v1, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    iget v7, v1, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    iget v8, v1, Lio/github/jaredmdobson/concentus/OpusEncoder;->bitrate_bps:I

    iget-object v2, v1, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    iget-object v10, v2, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->subframe_mem:[F

    iget-object v2, v1, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    iget-boolean v11, v2, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->enabled:Z

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-static/range {v2 .. v11}, Lio/github/jaredmdobson/concentus/CodecHelpers;->compute_frame_size([SIILio/github/jaredmdobson/concentus/OpusFramesize;IIII[FZ)I

    move-result v5

    add-int v3, p2, v5

    .line 1317
    array-length v4, v2

    if-gt v3, v4, :cond_3

    .line 1322
    :try_start_0
    iget v14, v1, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    const/4 v15, 0x0

    const/16 v8, 0x10

    const/4 v12, 0x0

    const/4 v13, -0x2

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v3, p2

    move/from16 v11, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move v4, v5

    move-object v5, v0

    invoke-virtual/range {v1 .. v15}, Lio/github/jaredmdobson/concentus/OpusEncoder;->opus_encode_native([SII[BIII[SIIIIII)I

    move-result v0

    if-gez v0, :cond_2

    .line 1327
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    if-ne v0, v1, :cond_1

    .line 1328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OPUS_BAD_ARG while encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1330
    :cond_1
    new-instance v1, Lio/github/jaredmdobson/concentus/OpusException;

    const-string v2, "An error occurred during encoding"

    invoke-direct {v1, v2, v0}, Lio/github/jaredmdobson/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v0

    .line 1335
    new-instance v1, Lio/github/jaredmdobson/concentus/OpusException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error during encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ArithmeticException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/github/jaredmdobson/concentus/OpusException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v4, v5

    .line 1318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Not enough samples provided in input signal: Expected "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " samples, found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    sub-int v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move/from16 v7, p6

    .line 1302
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Output buffer is too small: Stated size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes, actual size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    sub-int v0, v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getApplication()Lio/github/jaredmdobson/concentus/OpusApplication;
    .locals 1

    .line 1375
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    return-object v0
.end method

.method public getBandwidth()Lio/github/jaredmdobson/concentus/OpusBandwidth;
    .locals 1

    .line 1484
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    return-object v0
.end method

.method public getBitrate()I
    .locals 2

    .line 1399
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_framesize:I

    const/16 v1, 0x4fc

    invoke-virtual {p0, v0, v1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bitrate_to_bitrate(II)I

    move-result v0

    return v0
.end method

.method public getComplexity()I
    .locals 1

    .line 1535
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v0, v0, Lio/github/jaredmdobson/concentus/EncControlState;->complexity:I

    return v0
.end method

.method public getEnableAnalysis()Z
    .locals 1

    .line 1829
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    iget-boolean v0, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->enabled:Z

    return v0
.end method

.method public getExpertFrameDuration()Lio/github/jaredmdobson/concentus/OpusFramesize;
    .locals 1

    .line 1739
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    return-object v0
.end method

.method public getFinalRange()I
    .locals 1

    .line 1700
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->rangeFinal:I

    return v0
.end method

.method public getForceChannels()I
    .locals 1

    .line 1431
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->force_channels:I

    return v0
.end method

.method public getForceMode()Lio/github/jaredmdobson/concentus/OpusMode;
    .locals 1

    .line 1764
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_forced_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    return-object v0
.end method

.method public getIsLFE()Z
    .locals 1

    .line 1785
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->lfe:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLSBDepth()I
    .locals 1

    .line 1713
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->lsb_depth:I

    return v0
.end method

.method public getLookahead()I
    .locals 3

    .line 1674
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v0, v0, 0x190

    .line 1675
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    sget-object v2, Lio/github/jaredmdobson/concentus/OpusApplication;->OPUS_APPLICATION_RESTRICTED_LOWDELAY:Lio/github/jaredmdobson/concentus/OpusApplication;

    if-eq v1, v2, :cond_0

    .line 1676
    iget v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_compensation:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getMaxBandwidth()Lio/github/jaredmdobson/concentus/OpusBandwidth;
    .locals 1

    .line 1456
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->max_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    return-object v0
.end method

.method public getPacketLossPercent()I
    .locals 1

    .line 1584
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v0, v0, Lio/github/jaredmdobson/concentus/EncControlState;->packetLossPercentage:I

    return v0
.end method

.method public getPredictionDisabled()Z
    .locals 1

    .line 1807
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v0, v0, Lio/github/jaredmdobson/concentus/EncControlState;->reducedDependency:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 1691
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    return v0
.end method

.method public getSignalType()Lio/github/jaredmdobson/concentus/OpusSignal;
    .locals 1

    .line 1653
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->signal_type:Lio/github/jaredmdobson/concentus/OpusSignal;

    return-object v0
.end method

.method public getUseConstrainedVBR()Z
    .locals 1

    .line 1632
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->vbr_constraint:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUseDTX()Z
    .locals 1

    .line 1514
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v0, v0, Lio/github/jaredmdobson/concentus/EncControlState;->useDTX:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUseInbandFEC()Z
    .locals 1

    .line 1562
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v0, v0, Lio/github/jaredmdobson/concentus/EncControlState;->useInBandFEC:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUseVBR()Z
    .locals 1

    .line 1610
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method opus_encode_native([SII[BIII[SIIIIII)I
    .locals 53

    move-object/from16 v0, p0

    move/from16 v15, p2

    move/from16 v6, p3

    move/from16 v13, p6

    .line 338
    new-instance v14, Lio/github/jaredmdobson/concentus/EntropyCoder;

    invoke-direct {v14}, Lio/github/jaredmdobson/concentus/EntropyCoder;-><init>()V

    .line 365
    new-instance v12, Lio/github/jaredmdobson/concentus/AnalysisInfo;

    invoke-direct {v12}, Lio/github/jaredmdobson/concentus/AnalysisInfo;-><init>()V

    const/16 v1, 0x4fc

    .line 370
    invoke-static {v1, v13}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v1

    const/4 v2, 0x0

    .line 372
    iput v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->rangeFinal:I

    .line 373
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    sget-object v4, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusFramesize;

    const/4 v5, 0x3

    if-ne v3, v4, :cond_0

    mul-int/lit16 v3, v6, 0x190

    iget v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    if-eq v3, v4, :cond_0

    mul-int/lit16 v3, v6, 0xc8

    if-eq v3, v4, :cond_0

    mul-int/lit8 v3, v6, 0x64

    if-eq v3, v4, :cond_0

    mul-int/lit8 v3, v6, 0x32

    if-eq v3, v4, :cond_0

    mul-int/lit8 v7, v6, 0x19

    if-eq v7, v4, :cond_0

    mul-int/lit8 v4, v4, 0x3

    if-ne v3, v4, :cond_ba

    :cond_0
    mul-int/lit16 v3, v6, 0x190

    iget v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    if-lt v3, v4, :cond_ba

    if-gtz v1, :cond_1

    goto/16 :goto_59

    .line 380
    :cond_1
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->SilkEncoder:Lio/github/jaredmdobson/concentus/SilkEncoder;

    .line 381
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Celt_Encoder:Lio/github/jaredmdobson/concentus/CeltEncoder;

    .line 382
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    sget-object v8, Lio/github/jaredmdobson/concentus/OpusApplication;->OPUS_APPLICATION_RESTRICTED_LOWDELAY:Lio/github/jaredmdobson/concentus/OpusApplication;

    if-ne v7, v8, :cond_2

    const/16 v16, 0x0

    goto :goto_0

    .line 385
    :cond_2
    iget v7, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_compensation:I

    move/from16 v16, v7

    .line 388
    :goto_0
    iget v7, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->lsb_depth:I

    move/from16 v8, p7

    invoke-static {v8, v7}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v7

    .line 389
    invoke-virtual {v4}, Lio/github/jaredmdobson/concentus/CeltEncoder;->GetMode()Lio/github/jaredmdobson/concentus/CeltMode;

    move-result-object v8

    const/4 v9, -0x1

    .line 390
    iput v9, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->voice_ratio:I

    .line 392
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    iget-boolean v10, v10, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->enabled:Z

    const/16 v11, 0xe

    const/4 v13, 0x7

    if-eqz v10, :cond_b

    .line 393
    iput v2, v12, Lio/github/jaredmdobson/concentus/AnalysisInfo;->valid:I

    .line 394
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v10, v10, Lio/github/jaredmdobson/concentus/EncControlState;->complexity:I

    if-lt v10, v13, :cond_4

    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const v2, 0xbb80

    if-ne v10, v2, :cond_4

    .line 395
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    iget v2, v2, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_pos:I

    .line 396
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    iget v10, v10, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_subframe:I

    move/from16 v18, v1

    .line 397
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    if-eqz p8, :cond_3

    move-object/from16 v19, p8

    goto :goto_1

    :cond_3
    const/16 v19, 0x0

    :goto_1
    move/from16 v20, v10

    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    move/from16 v5, p10

    move/from16 v9, p13

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move v11, v7

    move-object/from16 v17, v14

    move/from16 v13, v18

    move-object/from16 v3, v19

    const/16 p7, 0x0

    const/16 p8, 0x3

    const/16 v14, 0xe

    const/16 v21, 0x7

    move/from16 v4, p9

    move/from16 v7, p11

    move/from16 v18, v2

    move-object v2, v8

    move/from16 v8, p12

    invoke-static/range {v1 .. v12}, Lio/github/jaredmdobson/concentus/Analysis;->run_analysis(Lio/github/jaredmdobson/concentus/TonalityAnalysisState;Lio/github/jaredmdobson/concentus/CeltMode;[SIIIIIIIILio/github/jaredmdobson/concentus/AnalysisInfo;)V

    move v7, v11

    move/from16 v9, v18

    goto :goto_2

    :cond_4
    move v13, v1

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object v2, v8

    move-object/from16 v17, v14

    const/16 p7, 0x0

    const/16 p8, 0x3

    const/16 v14, 0xe

    const/16 v21, 0x7

    const/4 v9, -0x1

    const/16 v20, -0x1

    .line 411
    :goto_2
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->detected_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 412
    iget v1, v12, Lio/github/jaredmdobson/concentus/AnalysisInfo;->valid:I

    if-eqz v1, :cond_a

    .line 414
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->signal_type:Lio/github/jaredmdobson/concentus/OpusSignal;

    sget-object v3, Lio/github/jaredmdobson/concentus/OpusSignal;->OPUS_SIGNAL_AUTO:Lio/github/jaredmdobson/concentus/OpusSignal;

    if-ne v1, v3, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    .line 415
    iget v3, v12, Lio/github/jaredmdobson/concentus/AnalysisInfo;->music_prob:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v1, v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    iput v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->voice_ratio:I

    .line 418
    :cond_5
    iget v1, v12, Lio/github/jaredmdobson/concentus/AnalysisInfo;->bandwidth:I

    const/16 v3, 0xc

    if-gt v1, v3, :cond_6

    .line 420
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->detected_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    goto :goto_3

    :cond_6
    if-gt v1, v14, :cond_7

    .line 422
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->detected_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    goto :goto_3

    :cond_7
    const/16 v3, 0x10

    if-gt v1, v3, :cond_8

    .line 424
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->detected_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    goto :goto_3

    :cond_8
    const/16 v3, 0x12

    if-gt v1, v3, :cond_9

    .line 426
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->detected_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    goto :goto_3

    .line 428
    :cond_9
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->detected_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    :cond_a
    :goto_3
    move/from16 v1, v20

    goto :goto_4

    :cond_b
    move v13, v1

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object v2, v8

    move-object/from16 v17, v14

    const/16 p7, 0x0

    const/16 p8, 0x3

    const/16 v14, 0xe

    const/16 v21, 0x7

    const/4 v1, -0x1

    const/4 v9, -0x1

    .line 433
    :goto_4
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_c

    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->force_channels:I

    if-eq v3, v5, :cond_c

    .line 434
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    iget-object v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->width_mem:Lio/github/jaredmdobson/concentus/StereoWidthState;

    move-object/from16 v10, p1

    invoke-static {v10, v15, v6, v3, v8}, Lio/github/jaredmdobson/concentus/CodecHelpers;->compute_stereo_width([SIIILio/github/jaredmdobson/concentus/StereoWidthState;)I

    move-result v3

    goto :goto_5

    :cond_c
    move-object/from16 v10, p1

    const/4 v3, 0x0

    .line 439
    :goto_5
    invoke-virtual {v0, v6, v13}, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bitrate_to_bitrate(II)I

    move-result v8

    iput v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bitrate_bps:I

    .line 441
    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v18, 0xe

    div-int v14, v11, v6

    const/16 p9, 0x1

    .line 442
    iget v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    const/16 v4, 0x8

    if-nez v5, :cond_d

    mul-int/lit8 v11, v11, 0x3

    .line 445
    div-int/2addr v11, v6

    mul-int/lit8 v8, v8, 0x3

    .line 447
    div-int/2addr v8, v4

    div-int/lit8 v5, v11, 0x2

    add-int/2addr v8, v5

    div-int/2addr v8, v11

    invoke-static {v8, v13}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v5

    mul-int v11, v11, v5

    mul-int/lit8 v11, v11, 0x8

    .line 448
    div-int/lit8 v11, v11, 0x3

    iput v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bitrate_bps:I

    goto :goto_6

    :cond_d
    move v5, v13

    :goto_6
    const/16 v11, 0x32

    const/4 v13, 0x3

    if-lt v5, v13, :cond_b0

    .line 451
    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bitrate_bps:I

    const/16 v20, 0x8

    mul-int/lit8 v4, v14, 0x18

    if-lt v13, v4, :cond_b0

    if-ge v14, v11, :cond_e

    mul-int v4, v5, v14

    const/16 p10, 0x32

    const/16 v11, 0x12c

    if-lt v4, v11, :cond_b0

    const/16 v4, 0x960

    if-ge v13, v4, :cond_f

    goto/16 :goto_55

    :cond_e
    const/16 p10, 0x32

    :cond_f
    mul-int v4, v14, v5

    mul-int/lit8 v11, v4, 0x8

    .line 485
    iget v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    mul-int/lit8 v8, v8, 0x28

    add-int/lit8 v8, v8, 0x14

    move/from16 v26, v4

    iget v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/2addr v4, v6

    add-int/lit8 v4, v4, -0x32

    mul-int v8, v8, v4

    sub-int/2addr v13, v8

    .line 487
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->signal_type:Lio/github/jaredmdobson/concentus/OpusSignal;

    sget-object v8, Lio/github/jaredmdobson/concentus/OpusSignal;->OPUS_SIGNAL_VOICE:Lio/github/jaredmdobson/concentus/OpusSignal;

    if-ne v4, v8, :cond_10

    const/16 v4, 0x7f

    goto :goto_7

    .line 489
    :cond_10
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->signal_type:Lio/github/jaredmdobson/concentus/OpusSignal;

    sget-object v8, Lio/github/jaredmdobson/concentus/OpusSignal;->OPUS_SIGNAL_MUSIC:Lio/github/jaredmdobson/concentus/OpusSignal;

    if-ne v4, v8, :cond_11

    const/4 v4, 0x0

    goto :goto_7

    .line 491
    :cond_11
    iget v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->voice_ratio:I

    if-ltz v4, :cond_12

    mul-int/lit16 v4, v4, 0x147

    shr-int/lit8 v4, v4, 0x8

    .line 494
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusApplication;->OPUS_APPLICATION_AUDIO:Lio/github/jaredmdobson/concentus/OpusApplication;

    if-ne v8, v10, :cond_14

    const/16 v8, 0x73

    .line 495
    invoke-static {v4, v8}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v4

    goto :goto_7

    .line 497
    :cond_12
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    sget-object v8, Lio/github/jaredmdobson/concentus/OpusApplication;->OPUS_APPLICATION_VOIP:Lio/github/jaredmdobson/concentus/OpusApplication;

    if-ne v4, v8, :cond_13

    const/16 v4, 0x73

    goto :goto_7

    :cond_13
    const/16 v4, 0x30

    .line 503
    :cond_14
    :goto_7
    iget v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->force_channels:I

    const/16 v10, -0x3e8

    if-eq v8, v10, :cond_15

    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    const/4 v15, 0x2

    if-ne v10, v15, :cond_16

    .line 504
    iput v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    goto :goto_a

    :cond_15
    const/4 v15, 0x2

    .line 505
    :cond_16
    iget v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    if-ne v8, v15, :cond_19

    .line 508
    iget v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    if-ne v8, v15, :cond_17

    const/16 v8, 0x7530

    const/16 v10, -0x3e8

    add-int/2addr v8, v10

    goto :goto_8

    :cond_17
    const/16 v8, 0x7530

    add-int/lit16 v8, v8, 0x3e8

    :goto_8
    if-le v13, v8, :cond_18

    const/4 v8, 0x2

    goto :goto_9

    :cond_18
    const/4 v8, 0x1

    .line 513
    :goto_9
    iput v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    goto :goto_a

    .line 515
    :cond_19
    iput v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    .line 517
    :goto_a
    iget v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bitrate_bps:I

    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    mul-int/lit8 v10, v10, 0x28

    add-int/lit8 v10, v10, 0x14

    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/2addr v13, v6

    add-int/lit8 v13, v13, -0x32

    mul-int v10, v10, v13

    sub-int/2addr v8, v10

    .line 520
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusApplication;->OPUS_APPLICATION_RESTRICTED_LOWDELAY:Lio/github/jaredmdobson/concentus/OpusApplication;

    if-ne v10, v13, :cond_1a

    .line 521
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    goto/16 :goto_d

    .line 522
    :cond_1a
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_forced_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_AUTO:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v10, v13, :cond_20

    rsub-int v10, v3, 0x7fff

    .line 527
    sget-object v13, Lio/github/jaredmdobson/concentus/OpusTables;->mode_thresholds:[[I

    aget-object v13, v13, p7

    aget v13, v13, p7

    invoke-static {v10, v13}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v13

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusTables;->mode_thresholds:[[I

    aget-object v15, v15, p9

    aget v15, v15, p7

    .line 528
    invoke-static {v3, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v15

    add-int/2addr v13, v15

    .line 529
    sget-object v15, Lio/github/jaredmdobson/concentus/OpusTables;->mode_thresholds:[[I

    aget-object v15, v15, p9

    aget v15, v15, p9

    invoke-static {v10, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v10

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusTables;->mode_thresholds:[[I

    aget-object v15, v15, p9

    aget v15, v15, p9

    .line 530
    invoke-static {v3, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v3

    add-int/2addr v10, v3

    mul-int v3, v4, v4

    sub-int/2addr v13, v10

    mul-int v3, v3, v13

    shr-int/lit8 v3, v3, 0xe

    add-int/2addr v10, v3

    .line 534
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusApplication;->OPUS_APPLICATION_VOIP:Lio/github/jaredmdobson/concentus/OpusApplication;

    if-ne v3, v13, :cond_1b

    add-int/lit16 v10, v10, 0x1f40

    .line 540
    :cond_1b
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v3, v13, :cond_1c

    add-int/lit16 v10, v10, -0xfa0

    goto :goto_b

    .line 542
    :cond_1c
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_AUTO:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v3, v13, :cond_1d

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v3, v13, :cond_1d

    add-int/lit16 v10, v10, 0xfa0

    :cond_1d
    :goto_b
    if-lt v8, v10, :cond_1e

    .line 546
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    goto :goto_c

    :cond_1e
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    :goto_c
    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 549
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v3, v3, Lio/github/jaredmdobson/concentus/EncControlState;->useInBandFEC:I

    if-eqz v3, :cond_1f

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v3, v3, Lio/github/jaredmdobson/concentus/EncControlState;->packetLossPercentage:I

    rsub-int v10, v4, 0x80

    shr-int/lit8 v10, v10, 0x4

    if-le v3, v10, :cond_1f

    .line 550
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 553
    :cond_1f
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v3, v3, Lio/github/jaredmdobson/concentus/EncControlState;->useDTX:I

    if-eqz v3, :cond_21

    const/16 v3, 0x64

    if-le v4, v3, :cond_21

    .line 554
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    goto :goto_d

    .line 557
    :cond_20
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_forced_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 561
    :cond_21
    :goto_d
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v3, v10, :cond_22

    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v25, 0x64

    div-int/lit8 v3, v3, 0x64

    if-ge v6, v3, :cond_22

    .line 562
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 564
    :cond_22
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->lfe:I

    if-eqz v3, :cond_23

    .line 565
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    :cond_23
    const/16 v13, 0x32

    if-le v14, v13, :cond_24

    const/16 v13, 0x2ee0

    goto :goto_e

    :cond_24
    const/16 v13, 0x1f40

    :goto_e
    mul-int v13, v13, v6

    .line 568
    iget v15, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    mul-int/lit8 v15, v15, 0x8

    div-int/2addr v13, v15

    if-ge v5, v13, :cond_25

    .line 569
    sget-object v13, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 572
    :cond_25
    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_26

    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_channels:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_26

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v13, v13, Lio/github/jaredmdobson/concentus/EncControlState;->toMono:I

    if-nez v13, :cond_26

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v13, v15, :cond_26

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v13, v15, :cond_26

    .line 575
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/4 v15, 0x1

    iput v15, v13, Lio/github/jaredmdobson/concentus/EncControlState;->toMono:I

    const/4 v15, 0x2

    .line 576
    iput v15, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    goto :goto_f

    .line 578
    :cond_26
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/4 v15, 0x0

    iput v15, v13, Lio/github/jaredmdobson/concentus/EncControlState;->toMono:I

    .line 581
    :goto_f
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_AUTO:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v13, v15, :cond_2c

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v13, v15, :cond_2c

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v13, v15, :cond_27

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v13, v15, :cond_28

    :cond_27
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v13, v15, :cond_2c

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v13, v15, :cond_2c

    .line 585
    :cond_28
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v13, v15, :cond_29

    const/4 v13, 0x1

    goto :goto_10

    :cond_29
    const/4 v13, 0x0

    :goto_10
    if-nez v13, :cond_2b

    .line 588
    iget v15, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v25, 0x64

    div-int/lit8 v15, v15, 0x64

    if-lt v6, v15, :cond_2a

    .line 589
    iget-object v15, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v15, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    move/from16 v25, v13

    const/4 v13, 0x1

    const/4 v15, 0x1

    goto :goto_12

    :cond_2a
    move/from16 v25, v13

    const/4 v13, 0x0

    goto :goto_11

    :cond_2b
    move/from16 v25, v13

    const/4 v13, 0x1

    :goto_11
    const/4 v15, 0x0

    goto :goto_12

    :cond_2c
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v25, 0x0

    .line 597
    :goto_12
    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_bw_switch:I

    if-eqz v10, :cond_2d

    const/4 v10, 0x0

    .line 600
    iput v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_bw_switch:I

    const/4 v10, 0x1

    const/4 v13, 0x1

    const/16 v27, 0x1

    goto :goto_13

    :cond_2d
    move/from16 v27, v13

    move/from16 v13, v25

    const/4 v10, 0x0

    :goto_13
    if-eqz v27, :cond_2e

    .line 606
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    move/from16 v25, v4

    div-int/lit16 v4, v3, 0xc8

    mul-int v4, v4, v5

    div-int/lit16 v3, v3, 0xc8

    add-int/2addr v3, v6

    div-int/2addr v4, v3

    const/16 v3, 0x101

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v3

    .line 608
    iget v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    if-eqz v4, :cond_2f

    .line 609
    iget v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bitrate_bps:I

    div-int/lit16 v4, v4, 0x640

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v3

    goto :goto_14

    :cond_2e
    move/from16 v25, v4

    const/4 v3, 0x0

    .line 613
    :cond_2f
    :goto_14
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    move/from16 v28, v3

    sget-object v3, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v4, v3, :cond_30

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v4, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v3, v4, :cond_30

    .line 614
    new-instance v3, Lio/github/jaredmdobson/concentus/EncControlState;

    invoke-direct {v3}, Lio/github/jaredmdobson/concentus/EncControlState;-><init>()V

    move-object/from16 v4, v23

    .line 615
    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/EncodeAPI;->silk_InitEncoder(Lio/github/jaredmdobson/concentus/SilkEncoder;Lio/github/jaredmdobson/concentus/EncControlState;)I

    const/4 v10, 0x1

    goto :goto_15

    :cond_30
    move-object/from16 v4, v23

    .line 620
    :goto_15
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    move/from16 v23, v10

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v3, v10, :cond_32

    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->first:I

    if-nez v3, :cond_32

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v3, v3, Lio/github/jaredmdobson/concentus/EncControlState;->allowBandwidthSwitch:I

    if-eqz v3, :cond_31

    goto :goto_16

    :cond_31
    move/from16 v31, v13

    move/from16 v29, v15

    goto/16 :goto_1d

    :cond_32
    :goto_16
    const/16 v3, 0x8

    .line 623
    new-array v10, v3, [I

    .line 624
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    move-object/from16 v29, v3

    .line 628
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    move-object/from16 v30, v10

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v3, v10, :cond_33

    .line 630
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v3, v3, Lio/github/jaredmdobson/concentus/EncControlState;->complexity:I

    add-int/lit8 v3, v3, 0x2d

    mul-int v3, v3, v8

    const/16 v10, 0x32

    div-int/2addr v3, v10

    .line 632
    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    if-nez v10, :cond_34

    add-int/lit16 v3, v3, -0x3e8

    goto :goto_17

    :cond_33
    move v3, v8

    .line 636
    :cond_34
    :goto_17
    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    move/from16 v31, v13

    const/4 v13, 0x2

    if-ne v10, v13, :cond_35

    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->force_channels:I

    const/4 v13, 0x1

    if-eq v10, v13, :cond_35

    .line 637
    sget-object v10, Lio/github/jaredmdobson/concentus/OpusTables;->stereo_voice_bandwidth_thresholds:[I

    .line 638
    sget-object v13, Lio/github/jaredmdobson/concentus/OpusTables;->stereo_music_bandwidth_thresholds:[I

    goto :goto_18

    .line 640
    :cond_35
    sget-object v10, Lio/github/jaredmdobson/concentus/OpusTables;->mono_voice_bandwidth_thresholds:[I

    .line 641
    sget-object v13, Lio/github/jaredmdobson/concentus/OpusTables;->mono_music_bandwidth_thresholds:[I

    :goto_18
    move-object/from16 v32, v10

    move-object/from16 v33, v13

    const/4 v10, 0x0

    :goto_19
    const/16 v13, 0x8

    if-ge v10, v13, :cond_36

    .line 645
    aget v13, v33, v10

    mul-int v34, v25, v25

    aget v35, v32, v10

    sub-int v35, v35, v13

    mul-int v34, v34, v35

    shr-int/lit8 v34, v34, 0xe

    add-int v13, v13, v34

    aput v13, v30, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    :cond_36
    move-object/from16 v10, v29

    .line 650
    :goto_1a
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v13

    sget-object v18, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static/range {v18 .. v18}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v18

    sub-int v13, v13, v18

    const/16 v19, 0x2

    mul-int/lit8 v13, v13, 0x2

    aget v13, v30, v13

    .line 651
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v18

    sget-object v25, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static/range {v25 .. v25}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v25

    sub-int v18, v18, v25

    mul-int/lit8 v18, v18, 0x2

    const/16 v25, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v18, v30, v18

    move/from16 v25, v13

    .line 652
    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->first:I

    if-nez v13, :cond_38

    .line 653
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v13}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v13

    move/from16 v29, v15

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v15

    if-lt v13, v15, :cond_37

    sub-int v13, v25, v18

    goto :goto_1b

    :cond_37
    add-int v13, v25, v18

    goto :goto_1b

    :cond_38
    move/from16 v29, v15

    move/from16 v13, v25

    :goto_1b
    if-lt v3, v13, :cond_39

    goto :goto_1c

    :cond_39
    const/4 v15, 0x1

    .line 663
    invoke-static {v10, v15}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->SUBTRACT(Lio/github/jaredmdobson/concentus/OpusBandwidth;I)Lio/github/jaredmdobson/concentus/OpusBandwidth;

    move-result-object v10

    .line 664
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v13

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v15}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v15

    if-gt v13, v15, :cond_af

    .line 665
    :goto_1c
    iput-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 668
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->first:I

    if-nez v3, :cond_3a

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v3, v10, :cond_3a

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v3, v3, Lio/github/jaredmdobson/concentus/EncControlState;->inWBmodeWithoutVariableLP:I

    if-nez v3, :cond_3a

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 670
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v10

    if-le v3, v10, :cond_3a

    .line 671
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 675
    :cond_3a
    :goto_1d
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v3

    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->max_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v10

    if-le v3, v10, :cond_3b

    .line 676
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->max_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 679
    :cond_3b
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_AUTO:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-eq v3, v10, :cond_3c

    .line 680
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 684
    :cond_3c
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v3, v10, :cond_3d

    const/16 v3, 0x3a98

    if-ge v11, v3, :cond_3d

    .line 685
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v3, v10}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->MIN(Lio/github/jaredmdobson/concentus/OpusBandwidth;Lio/github/jaredmdobson/concentus/OpusBandwidth;)Lio/github/jaredmdobson/concentus/OpusBandwidth;

    move-result-object v3

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 690
    :cond_3d
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v10, 0x5dc0

    if-gt v3, v10, :cond_3e

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v10

    if-le v3, v10, :cond_3e

    .line 691
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 693
    :cond_3e
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v10, 0x3e80

    if-gt v3, v10, :cond_3f

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v13}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v13

    if-le v3, v13, :cond_3f

    .line 694
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 696
    :cond_3f
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v13, 0x2ee0

    if-gt v3, v13, :cond_40

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v13}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v13

    if-le v3, v13, :cond_40

    .line 697
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 699
    :cond_40
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v13, 0x1f40

    if-gt v3, v13, :cond_41

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v13}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v13

    if-le v3, v13, :cond_41

    .line 700
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 703
    :cond_41
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->detected_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-eq v3, v13, :cond_46

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_AUTO:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne v3, v13, :cond_46

    .line 709
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    mul-int/lit16 v3, v3, 0x4650

    if-gt v8, v3, :cond_42

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v3, v13, :cond_42

    .line 710
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    goto :goto_1e

    .line 711
    :cond_42
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    mul-int/lit16 v3, v3, 0x5dc0

    if-gt v8, v3, :cond_43

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v3, v13, :cond_43

    .line 712
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    goto :goto_1e

    .line 713
    :cond_43
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    mul-int/lit16 v13, v3, 0x7530

    if-gt v8, v13, :cond_44

    .line 714
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    goto :goto_1e

    :cond_44
    const v13, 0xabe0

    mul-int v3, v3, v13

    if-gt v8, v3, :cond_45

    .line 716
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    goto :goto_1e

    .line 718
    :cond_45
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 721
    :goto_1e
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->detected_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v13, v3}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->MAX(Lio/github/jaredmdobson/concentus/OpusBandwidth;Lio/github/jaredmdobson/concentus/OpusBandwidth;)Lio/github/jaredmdobson/concentus/OpusBandwidth;

    move-result-object v3

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->detected_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 722
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v13, v3}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->MIN(Lio/github/jaredmdobson/concentus/OpusBandwidth;Lio/github/jaredmdobson/concentus/OpusBandwidth;)Lio/github/jaredmdobson/concentus/OpusBandwidth;

    move-result-object v3

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    :cond_46
    move-object/from16 v3, v24

    .line 724
    invoke-virtual {v3, v7}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetLSBDepth(I)V

    .line 727
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v13, v15, :cond_47

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne v13, v15, :cond_47

    .line 728
    sget-object v13, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 730
    :cond_47
    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->lfe:I

    if-eqz v13, :cond_48

    .line 731
    sget-object v13, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 735
    :cond_48
    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v15, 0x32

    div-int/2addr v13, v15

    if-le v6, v13, :cond_54

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v13, v15, :cond_49

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v13}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v13

    sget-object v15, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v15}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v15

    if-le v13, v15, :cond_54

    .line 745
    :cond_49
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    iget-boolean v2, v2, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->enabled:Z

    if-eqz v2, :cond_4a

    const/4 v13, -0x1

    if-eq v9, v13, :cond_4a

    .line 746
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    iput v9, v2, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_pos:I

    .line 747
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    iput v1, v2, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_subframe:I

    .line 750
    :cond_4a
    iget v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/lit8 v1, v1, 0x19

    if-le v6, v1, :cond_4b

    const/4 v15, 0x3

    goto :goto_1f

    :cond_4b
    const/4 v15, 0x2

    :goto_1f
    add-int/lit8 v1, p6, -0x3

    .line 751
    div-int/2addr v1, v15

    const/16 v2, 0x4fc

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v6

    mul-int v1, v15, v6

    .line 753
    new-array v4, v1, [B

    .line 755
    new-instance v1, Lio/github/jaredmdobson/concentus/OpusRepacketizer;

    invoke-direct {v1}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;-><init>()V

    .line 757
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_forced_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 758
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 759
    iget v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->force_channels:I

    .line 761
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_forced_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 762
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 763
    iget v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    iput v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->force_channels:I

    .line 764
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v8, v8, Lio/github/jaredmdobson/concentus/EncControlState;->toMono:I

    if-eqz v8, :cond_4c

    const/4 v13, 0x1

    .line 767
    iput v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->force_channels:I

    goto :goto_20

    :cond_4c
    const/4 v13, 0x1

    .line 769
    iget v9, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    iput v9, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_channels:I

    :goto_20
    const/4 v9, 0x0

    :goto_21
    if-ge v9, v15, :cond_50

    .line 773
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/4 v11, 0x0

    iput v11, v10, Lio/github/jaredmdobson/concentus/EncControlState;->toMono:I

    if-eqz v29, :cond_4d

    add-int/lit8 v10, v15, -0x1

    if-ne v9, v10, :cond_4d

    .line 776
    sget-object v10, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_forced_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 778
    :cond_4d
    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    iget v12, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    mul-int v10, v10, v12

    const/16 v14, 0x32

    div-int/2addr v10, v14

    mul-int v10, v10, v9

    add-int v10, p2, v10

    div-int/2addr v12, v14

    move/from16 v16, v5

    mul-int v5, v9, v6

    move/from16 v17, v9

    const/4 v9, 0x0

    move-object/from16 v18, v2

    move v2, v10

    const/4 v10, 0x0

    move/from16 v19, v8

    const/4 v8, 0x0

    move/from16 v11, p11

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v37, v3

    move v3, v12

    move/from16 p3, v15

    move/from16 v38, v16

    move-object/from16 v36, v18

    move/from16 v39, v19

    const/16 v18, 0x1

    move/from16 v12, p12

    move-object v15, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v14}, Lio/github/jaredmdobson/concentus/OpusEncoder;->opus_encode_native([SII[BIII[SIIIIII)I

    move-result v2

    if-gez v2, :cond_4e

    .line 783
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v1

    .line 785
    :cond_4e
    invoke-virtual {v15, v4, v5, v2}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->addPacket([BII)I

    move-result v1

    if-gez v1, :cond_4f

    .line 788
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v1

    :cond_4f
    add-int/lit8 v9, v17, 0x1

    move-object v1, v15

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move/from16 v5, v38

    move/from16 v8, v39

    const/4 v13, 0x1

    move/from16 v15, p3

    goto :goto_21

    :cond_50
    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move/from16 v38, v5

    move/from16 v39, v8

    move/from16 p3, v15

    const/16 v18, 0x1

    move-object v15, v1

    .line 791
    iget v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    if-eqz v1, :cond_51

    move/from16 v1, p6

    goto :goto_22

    .line 794
    :cond_51
    iget v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bitrate_bps:I

    const/4 v7, 0x3

    mul-int/lit8 v1, v1, 0x3

    const/16 v2, 0x4b0

    div-int v2, v2, p3

    div-int/2addr v1, v2

    move/from16 v4, p6

    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v1

    .line 796
    :goto_22
    iget v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    if-nez v2, :cond_52

    const/4 v2, 0x1

    goto :goto_23

    :cond_52
    const/4 v2, 0x0

    :goto_23
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 p8, p3

    move-object/from16 p9, p4

    move/from16 p10, p5

    move/from16 p11, v1

    move/from16 p13, v2

    move-object/from16 p6, v15

    const/16 p7, 0x0

    const/16 p12, 0x0

    invoke-virtual/range {p6 .. p13}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->opus_repacketizer_out_range_impl(II[BIIII)I

    move-result v1

    if-gez v1, :cond_53

    .line 798
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v1

    :cond_53
    move-object/from16 v2, v36

    .line 800
    iput-object v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_forced_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    move-object/from16 v2, v37

    .line 801
    iput-object v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    move/from16 v2, v38

    .line 802
    iput v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->force_channels:I

    .line 803
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    move/from16 v3, v39

    iput v3, v2, Lio/github/jaredmdobson/concentus/EncControlState;->toMono:I

    return v1

    :cond_54
    move-object/from16 v1, p4

    const/4 v7, 0x3

    const/4 v13, -0x1

    const/16 v18, 0x1

    .line 807
    iget-object v9, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 811
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    const/16 v41, 0x3

    sget-object v7, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v13, v7, :cond_55

    invoke-static {v9}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v7

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v13}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v13

    if-le v7, v13, :cond_55

    .line 812
    sget-object v7, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v7, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 814
    :cond_55
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v7, v13, :cond_56

    invoke-static {v9}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v7

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v13}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v13

    if-gt v7, v13, :cond_56

    .line 815
    sget-object v7, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v7, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    :cond_56
    sub-int v7, v5, v28

    .line 819
    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bitrate_bps:I

    mul-int v13, v13, v6

    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v20, 0x8

    mul-int/lit8 v10, v10, 0x8

    div-int/2addr v13, v10

    invoke-static {v7, v13}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v10, p5, 0x1

    add-int/lit8 v13, v5, -0x1

    move-object/from16 v6, v17

    .line 823
    invoke-virtual {v6, v1, v10, v13}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_init([BII)V

    add-int v17, v16, p3

    .line 825
    iget v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    move/from16 v25, v1

    mul-int v1, v17, v25

    new-array v1, v1, [S

    move-object/from16 v30, v6

    .line 826
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_buffer:[S

    move/from16 v32, v7

    iget v7, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->encoder_buffer:I

    sub-int v7, v7, v16

    mul-int v7, v7, v25

    move/from16 v33, v10

    mul-int v10, v16, v25

    move/from16 v34, v11

    const/4 v11, 0x0

    invoke-static {v6, v7, v1, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 828
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v7, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v6, v7, :cond_57

    const/16 v6, 0x3c

    .line 829
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v6

    const/16 v7, 0x8

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v6

    goto :goto_24

    :cond_57
    const/16 v7, 0x8

    .line 831
    iget-object v6, v4, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v6, v6, v11

    iget v6, v6, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->variable_HP_smth1_Q15:I

    .line 834
    :goto_24
    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->variable_HP_smth2_Q15:I

    sub-int/2addr v6, v10

    const/16 v11, 0x3d7

    invoke-static {v10, v6, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    iput v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->variable_HP_smth2_Q15:I

    .line 838
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_log2lin(I)I

    move-result v6

    .line 840
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusApplication;->OPUS_APPLICATION_VOIP:Lio/github/jaredmdobson/concentus/OpusApplication;

    if-ne v7, v10, :cond_58

    .line 841
    iget v7, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    mul-int v10, v16, v7

    iget-object v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->hp_mem:[I

    move-object/from16 p9, v1

    iget v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    move-object/from16 p6, p1

    move/from16 p7, p2

    move/from16 p12, p3

    move/from16 p14, v1

    move/from16 p8, v6

    move/from16 p13, v7

    move/from16 p10, v10

    move-object/from16 p11, v11

    invoke-static/range {p6 .. p14}, Lio/github/jaredmdobson/concentus/CodecHelpers;->hp_cutoff([SII[SI[IIII)V

    move/from16 v6, p3

    move-object/from16 v1, p9

    goto :goto_25

    .line 843
    :cond_58
    iget v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    mul-int v7, v16, v6

    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->hp_mem:[I

    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v25, 0x3

    move-object/from16 p6, p1

    move/from16 p7, p2

    move/from16 p12, p3

    move-object/from16 p9, v1

    move/from16 p13, v6

    move/from16 p10, v7

    move-object/from16 p11, v10

    move/from16 p14, v11

    const/16 p8, 0x3

    invoke-static/range {p6 .. p14}, Lio/github/jaredmdobson/concentus/CodecHelpers;->dc_reject([SII[SI[IIII)V

    move/from16 v6, p12

    .line 848
    :goto_25
    iget-object v7, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    const/16 p1, 0x11

    const/16 p2, 0x5

    if-eq v7, v10, :cond_7c

    .line 850
    iget v7, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    mul-int v7, v7, v6

    new-array v7, v7, [S

    mul-int/lit8 v10, v32, 0x8

    mul-int v10, v10, v14

    .line 854
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    move-object/from16 v35, v4

    sget-object v4, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v11, v4, :cond_5d

    .line 857
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    move/from16 v36, v11

    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    move/from16 v37, v13

    mul-int/lit8 v13, v6, 0x64

    if-ne v11, v13, :cond_59

    const/16 v11, 0x3e8

    goto :goto_26

    :cond_59
    const/4 v11, 0x0

    :goto_26
    add-int/lit16 v11, v11, 0x1388

    mul-int v11, v11, v36

    iput v11, v4, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    .line 858
    sget-object v4, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne v9, v4, :cond_5a

    .line 860
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v11, v4, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v13, v13, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    sub-int v13, v10, v13

    const/16 v19, 0x2

    mul-int/lit8 v13, v13, 0x2

    div-int/lit8 v13, v13, 0x3

    add-int/2addr v11, v13

    iput v11, v4, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    goto :goto_27

    .line 864
    :cond_5a
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v11, v4, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v13, v13, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    sub-int v13, v10, v13

    mul-int/lit8 v13, v13, 0x3

    div-int/lit8 v13, v13, 0x5

    add-int/2addr v11, v13

    iput v11, v4, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    .line 867
    :goto_27
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v4, v4, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    mul-int/lit8 v11, v10, 0x4

    div-int/lit8 v11, v11, 0x5

    if-le v4, v11, :cond_5b

    .line 868
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput v11, v4, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    .line 870
    :cond_5b
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->energy_masking:[I

    if-nez v4, :cond_5e

    .line 872
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v4, v4, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    sub-int/2addr v10, v4

    .line 873
    sget-object v4, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne v9, v4, :cond_5c

    const/16 v4, 0xbb8

    goto :goto_28

    :cond_5c
    const/16 v4, 0xe10

    :goto_28
    const/16 v11, 0x9

    .line 874
    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v11

    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    mul-int v13, v13, v4

    add-int/2addr v10, v13

    const/4 v4, 0x6

    invoke-static {v10, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v4

    div-int/2addr v11, v4

    const/16 v4, 0x6db6

    if-ge v11, v4, :cond_5e

    add-int/lit16 v11, v11, 0x1249

    goto :goto_29

    :cond_5d
    move/from16 v37, v13

    .line 879
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput v10, v4, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    :cond_5e
    const/16 v11, 0x7fff

    .line 883
    :goto_29
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->energy_masking:[I

    if-eqz v4, :cond_66

    iget v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    if-eqz v4, :cond_66

    iget v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->lfe:I

    if-nez v4, :cond_66

    .line 890
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne v4, v10, :cond_5f

    const/16 v4, 0xd

    const/16 v10, 0x1f40

    goto :goto_2a

    .line 893
    :cond_5f
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne v4, v10, :cond_60

    const/16 v4, 0xf

    const/16 v10, 0x2ee0

    goto :goto_2a

    :cond_60
    const/16 v4, 0x11

    const/16 v10, 0x3e80

    :goto_2a
    move/from16 p13, v11

    const/4 v13, 0x0

    const/16 v36, 0x0

    .line 897
    :goto_2b
    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    if-ge v13, v11, :cond_63

    const/4 v11, 0x0

    :goto_2c
    if-ge v11, v4, :cond_62

    move/from16 v38, v4

    .line 900
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->energy_masking:[I

    mul-int/lit8 v39, v13, 0x15

    add-int v39, v39, v11

    aget v4, v4, v39

    move/from16 v39, v11

    const/16 v11, 0x200

    invoke-static {v4, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(II)I

    move-result v4

    const/16 v11, -0x800

    invoke-static {v4, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v4

    if-lez v4, :cond_61

    .line 903
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v4

    :cond_61
    add-int v36, v36, v4

    add-int/lit8 v11, v39, 0x1

    move/from16 v4, v38

    goto :goto_2c

    :cond_62
    move/from16 v38, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_2b

    :cond_63
    move/from16 v38, v4

    .line 909
    div-int v36, v36, v38

    mul-int v4, v36, v11

    add-int/lit16 v4, v4, 0xcd

    .line 911
    invoke-static {v10, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v4

    const/16 v10, 0xa

    invoke-static {v4, v10}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v4

    .line 912
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v10, v10, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    mul-int/lit8 v10, v10, -0x2

    div-int/lit8 v10, v10, 0x3

    invoke-static {v4, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v4

    .line 914
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v11, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-eq v10, v11, :cond_65

    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v11, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne v10, v11, :cond_64

    goto :goto_2d

    .line 917
    :cond_64
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v11, v10, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    add-int/2addr v11, v4

    iput v11, v10, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    goto :goto_2e

    .line 915
    :cond_65
    :goto_2d
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v11, v10, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    mul-int/lit8 v13, v4, 0x3

    div-int/lit8 v13, v13, 0x5

    add-int/2addr v11, v13

    iput v11, v10, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    :goto_2e
    mul-int v4, v4, v6

    .line 919
    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v20, 0x8

    mul-int/lit8 v10, v10, 0x8

    div-int/2addr v4, v10

    add-int v4, v32, v4

    move/from16 v32, v4

    goto :goto_2f

    :cond_66
    move/from16 p13, v11

    .line 922
    :goto_2f
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    mul-int/lit16 v10, v6, 0x3e8

    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/2addr v10, v11

    iput v10, v4, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    .line 923
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    iput v10, v4, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsAPI:I

    .line 924
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    iput v10, v4, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    .line 925
    sget-object v4, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne v9, v4, :cond_67

    .line 926
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v13, 0x1f40

    iput v13, v4, Lio/github/jaredmdobson/concentus/EncControlState;->desiredInternalSampleRate:I

    :goto_30
    const/16 v10, 0x3e80

    goto :goto_33

    .line 927
    :cond_67
    sget-object v4, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne v9, v4, :cond_68

    .line 928
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v13, 0x2ee0

    iput v13, v4, Lio/github/jaredmdobson/concentus/EncControlState;->desiredInternalSampleRate:I

    goto :goto_30

    .line 930
    :cond_68
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v4, v10, :cond_6a

    sget-object v4, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne v9, v4, :cond_69

    goto :goto_31

    :cond_69
    const/4 v4, 0x0

    goto :goto_32

    :cond_6a
    :goto_31
    const/4 v4, 0x1

    :goto_32
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 931
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v10, 0x3e80

    iput v10, v4, Lio/github/jaredmdobson/concentus/EncControlState;->desiredInternalSampleRate:I

    .line 933
    :goto_33
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v11, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v4, v11, :cond_6b

    .line 935
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput v10, v4, Lio/github/jaredmdobson/concentus/EncControlState;->minInternalSampleRate:I

    goto :goto_34

    .line 937
    :cond_6b
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v13, 0x1f40

    iput v13, v4, Lio/github/jaredmdobson/concentus/EncControlState;->minInternalSampleRate:I

    .line 940
    :goto_34
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v11, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v4, v11, :cond_6e

    .line 942
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput v10, v4, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    const/16 v13, 0x32

    if-le v14, v13, :cond_6c

    mul-int/lit8 v4, v26, 0x10

    .line 944
    div-int/lit8 v11, v4, 0x3

    goto :goto_35

    :cond_6c
    move/from16 v11, v34

    :goto_35
    const/16 v4, 0x32c8

    if-ge v11, v4, :cond_6d

    .line 947
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v10, 0x2ee0

    iput v10, v4, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    .line 948
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v14, v4, Lio/github/jaredmdobson/concentus/EncControlState;->desiredInternalSampleRate:I

    invoke-static {v10, v14}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v14

    iput v14, v4, Lio/github/jaredmdobson/concentus/EncControlState;->desiredInternalSampleRate:I

    :cond_6d
    const/16 v4, 0x2580

    if-ge v11, v4, :cond_6f

    .line 951
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v10, 0x1f40

    iput v10, v4, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    .line 952
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v11, v4, Lio/github/jaredmdobson/concentus/EncControlState;->desiredInternalSampleRate:I

    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v11

    iput v11, v4, Lio/github/jaredmdobson/concentus/EncControlState;->desiredInternalSampleRate:I

    goto :goto_36

    :cond_6e
    const/16 v13, 0x32

    .line 955
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v10, 0x3e80

    iput v10, v4, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    .line 958
    :cond_6f
    :goto_36
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    if-nez v10, :cond_70

    const/4 v10, 0x1

    goto :goto_37

    :cond_70
    const/4 v10, 0x0

    :goto_37
    iput v10, v4, Lio/github/jaredmdobson/concentus/EncControlState;->useCBR:I

    const/16 v4, 0x4fb

    sub-int v10, v37, v28

    .line 961
    invoke-static {v4, v10}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v4

    .line 963
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    mul-int/lit8 v11, v4, 0x8

    iput v11, v10, Lio/github/jaredmdobson/concentus/EncControlState;->maxBits:I

    .line 965
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v11, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v10, v11, :cond_71

    .line 966
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v11, v10, Lio/github/jaredmdobson/concentus/EncControlState;->maxBits:I

    mul-int/lit8 v11, v11, 0x9

    div-int/lit8 v11, v11, 0xa

    iput v11, v10, Lio/github/jaredmdobson/concentus/EncControlState;->maxBits:I

    .line 968
    :cond_71
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v10, v10, Lio/github/jaredmdobson/concentus/EncControlState;->useCBR:I

    if-eqz v10, :cond_72

    .line 969
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v11, v10, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    mul-int v11, v11, v6

    iget v14, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v20, 0x8

    mul-int/lit8 v14, v14, 0x8

    div-int/2addr v11, v14

    mul-int/lit8 v11, v11, 0x8

    iput v11, v10, Lio/github/jaredmdobson/concentus/EncControlState;->maxBits:I

    .line 971
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v11, v10, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    add-int/lit16 v11, v11, -0x7d0

    const/4 v14, 0x1

    invoke-static {v14, v11}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v11

    iput v11, v10, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    :cond_72
    if-eqz v23, :cond_73

    .line 975
    new-instance v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 984
    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    iget v14, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->encoder_buffer:I

    const/16 v40, 0x32

    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_compensation:I

    sub-int/2addr v14, v13

    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v13, v13, 0x190

    sub-int/2addr v14, v13

    mul-int v44, v11, v14

    .line 985
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_buffer:[S

    iget v13, v2, Lio/github/jaredmdobson/concentus/CeltMode;->overlap:I

    iget v14, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v14, v14, 0x190

    iget v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    move/from16 v49, v6

    iget-object v6, v2, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    move-object/from16 v50, v6

    iget v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v45, 0x0

    const/16 v46, 0x7fff

    move/from16 v51, v6

    move-object/from16 v43, v11

    move/from16 v47, v13

    move/from16 v48, v14

    invoke-static/range {v43 .. v51}, Lio/github/jaredmdobson/concentus/CodecHelpers;->gain_fade([SIIIIII[II)V

    move/from16 v11, v44

    .line 987
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_buffer:[S

    const/4 v13, 0x0

    invoke-static {v6, v13, v11}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 988
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_buffer:[S

    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->encoder_buffer:I

    iget v14, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    mul-int v11, v11, v14

    invoke-static {v6, v13, v7, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 990
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->encoder_buffer:I

    const/4 v14, 0x0

    const/16 v23, 0x1

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p11, v10

    move/from16 p9, v11

    move-object/from16 p10, v14

    move-object/from16 p6, v35

    const/16 p12, 0x1

    invoke-static/range {p6 .. p12}, Lio/github/jaredmdobson/concentus/EncodeAPI;->silk_Encode(Lio/github/jaredmdobson/concentus/SilkEncoder;Lio/github/jaredmdobson/concentus/EncControlState;[SILio/github/jaredmdobson/concentus/EntropyCoder;Lio/github/jaredmdobson/concentus/BoxedValueInt;I)I

    move-object/from16 v6, p8

    goto :goto_38

    :cond_73
    move-object v6, v7

    const/4 v13, 0x0

    const/16 v40, 0x32

    .line 993
    :goto_38
    iget v7, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    mul-int v10, v16, v7

    mul-int v7, v7, p3

    invoke-static {v1, v10, v6, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 995
    new-instance v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v7, v4}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 996
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/4 v10, 0x0

    move/from16 p9, p3

    move-object/from16 p7, v4

    move-object/from16 p8, v6

    move-object/from16 p11, v7

    move-object/from16 p10, v30

    move-object/from16 p6, v35

    const/16 p12, 0x0

    invoke-static/range {p6 .. p12}, Lio/github/jaredmdobson/concentus/EncodeAPI;->silk_Encode(Lio/github/jaredmdobson/concentus/SilkEncoder;Lio/github/jaredmdobson/concentus/EncControlState;[SILio/github/jaredmdobson/concentus/EntropyCoder;Lio/github/jaredmdobson/concentus/BoxedValueInt;I)I

    move-result v4

    move/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v10, p11

    .line 997
    iget v10, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-eqz v4, :cond_74

    .line 1003
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v1

    :cond_74
    if-nez v10, :cond_75

    .line 1006
    iput v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->rangeFinal:I

    .line 1007
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    iget v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/2addr v2, v6

    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    invoke-static {v1, v2, v9, v3}, Lio/github/jaredmdobson/concentus/CodecHelpers;->gen_toc(Lio/github/jaredmdobson/concentus/OpusMode;ILio/github/jaredmdobson/concentus/OpusBandwidth;I)B

    move-result v1

    aput-byte v1, p4, p5

    const/16 v18, 0x1

    return v18

    .line 1012
    :cond_75
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v11, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v10, v11, :cond_78

    .line 1013
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v10, v10, Lio/github/jaredmdobson/concentus/EncControlState;->internalSampleRate:I

    const/16 v13, 0x1f40

    if-ne v10, v13, :cond_76

    .line 1014
    sget-object v9, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    goto :goto_3a

    .line 1015
    :cond_76
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v10, v10, Lio/github/jaredmdobson/concentus/EncControlState;->internalSampleRate:I

    const/16 v11, 0x2ee0

    if-ne v10, v11, :cond_77

    .line 1016
    sget-object v9, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    goto :goto_3a

    .line 1017
    :cond_77
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v10, v10, Lio/github/jaredmdobson/concentus/EncControlState;->internalSampleRate:I

    const/16 v11, 0x3e80

    if-ne v10, v11, :cond_7a

    .line 1018
    sget-object v9, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    goto :goto_3a

    :cond_78
    const/16 v11, 0x3e80

    .line 1021
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v10, v10, Lio/github/jaredmdobson/concentus/EncControlState;->internalSampleRate:I

    if-ne v10, v11, :cond_79

    const/4 v10, 0x1

    goto :goto_39

    :cond_79
    const/4 v10, 0x0

    :goto_39
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 1024
    :cond_7a
    :goto_3a
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v11, v10, Lio/github/jaredmdobson/concentus/EncControlState;->switchReady:I

    iput v11, v10, Lio/github/jaredmdobson/concentus/EncControlState;->opusCanSwitch:I

    .line 1025
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v10, v10, Lio/github/jaredmdobson/concentus/EncControlState;->opusCanSwitch:I

    const/4 v13, 0x1

    if-eqz v10, :cond_7b

    .line 1028
    iput v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_bw_switch:I

    move/from16 v52, p13

    move v10, v4

    move-object v14, v9

    move/from16 v11, v32

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto :goto_3b

    :cond_7b
    move/from16 v52, p13

    move v10, v4

    move-object v14, v9

    move/from16 v4, v27

    move/from16 v9, v31

    move/from16 v11, v32

    goto :goto_3b

    :cond_7c
    move/from16 v37, v13

    move-object/from16 v7, v30

    const/4 v13, 0x1

    const/16 v40, 0x32

    move-object v14, v9

    move/from16 v4, v27

    move/from16 v9, v31

    move/from16 v11, v32

    const/4 v10, 0x0

    const/16 v52, 0x7fff

    .line 1036
    :goto_3b
    sget-object v18, Lio/github/jaredmdobson/concentus/OpusEncoder$1;->$SwitchMap$io$github$jaredmdobson$concentus$OpusBandwidth:[I

    invoke-virtual {v14}, Lio/github/jaredmdobson/concentus/OpusBandwidth;->ordinal()I

    move-result v23

    move/from16 v24, v10

    aget v10, v18, v23

    if-eq v10, v13, :cond_7f

    const/4 v13, 0x2

    if-eq v10, v13, :cond_7e

    const/4 v13, 0x3

    if-eq v10, v13, :cond_7e

    const/4 v13, 0x4

    if-eq v10, v13, :cond_7d

    const/4 v13, 0x5

    const/16 v10, 0x15

    goto :goto_3c

    :cond_7d
    const/16 v10, 0x13

    goto :goto_3c

    :cond_7e
    const/16 v10, 0x11

    goto :goto_3c

    :cond_7f
    const/16 v10, 0xd

    .line 1051
    :goto_3c
    invoke-virtual {v3, v10}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetEndBand(I)V

    .line 1052
    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    invoke-virtual {v3, v10}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetChannels(I)V

    const/4 v10, -0x1

    .line 1054
    invoke-virtual {v3, v10}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetBitrate(I)V

    .line 1055
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v10, v13, :cond_89

    const/4 v10, 0x0

    .line 1057
    invoke-virtual {v3, v10}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetVBR(Z)V

    .line 1059
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v10, v10, Lio/github/jaredmdobson/concentus/EncControlState;->reducedDependency:I

    if-eqz v10, :cond_80

    const/4 v10, 0x0

    goto :goto_3d

    :cond_80
    const/4 v10, 0x2

    .line 1062
    :goto_3d
    invoke-virtual {v3, v10}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetPrediction(I)V

    .line 1064
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v10, v13, :cond_85

    .line 1067
    invoke-virtual {v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v10

    add-int/lit8 v10, v10, 0x7

    const/16 v41, 0x3

    shr-int/lit8 v10, v10, 0x3

    if-eqz v4, :cond_82

    .line 1069
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    move/from16 p2, v10

    sget-object v10, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v13, v10, :cond_81

    const/4 v10, 0x3

    goto :goto_3e

    :cond_81
    const/4 v10, 0x1

    :goto_3e
    add-int v10, p2, v10

    goto :goto_3f

    :cond_82
    move/from16 p2, v10

    .line 1071
    :goto_3f
    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    if-eqz v13, :cond_83

    add-int/2addr v10, v11

    .line 1072
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v11, v11, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    mul-int v11, v11, v6

    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v20, 0x8

    mul-int/lit8 v13, v13, 0x8

    div-int/2addr v11, v13

    sub-int/2addr v10, v11

    goto :goto_42

    :cond_83
    if-le v10, v11, :cond_84

    move v11, v10

    :cond_84
    move v10, v11

    goto :goto_42

    .line 1077
    :cond_85
    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    if-eqz v10, :cond_84

    .line 1079
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    iget-boolean v10, v10, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->enabled:Z

    if-eqz v10, :cond_86

    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    sget-object v11, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_VARIABLE:Lio/github/jaredmdobson/concentus/OpusFramesize;

    if-ne v10, v11, :cond_86

    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/lit8 v11, v10, 0x32

    if-eq v6, v11, :cond_86

    .line 1080
    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    mul-int/lit8 v11, v11, 0x3c

    add-int/lit8 v11, v11, 0x28

    div-int/2addr v10, v6

    add-int/lit8 v10, v10, -0x32

    mul-int v10, v10, v11

    .line 1081
    iget v11, v12, Lio/github/jaredmdobson/concentus/AnalysisInfo;->valid:I

    if-eqz v11, :cond_87

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    .line 1082
    iget v13, v12, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality:F

    mul-float v13, v13, v11

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v13, v11

    mul-float v10, v10, v13

    float-to-int v10, v10

    goto :goto_40

    :cond_86
    const/4 v10, 0x0

    :cond_87
    :goto_40
    const/4 v13, 0x1

    .line 1085
    invoke-virtual {v3, v13}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetVBR(Z)V

    .line 1086
    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->vbr_constraint:I

    if-eqz v11, :cond_88

    const/4 v11, 0x1

    goto :goto_41

    :cond_88
    const/4 v11, 0x0

    :goto_41
    invoke-virtual {v3, v11}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetVBRConstraint(Z)V

    .line 1087
    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bitrate_bps:I

    add-int/2addr v11, v10

    invoke-virtual {v3, v11}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetBitrate(I)V

    sub-int v13, v37, v28

    move v10, v13

    goto :goto_42

    :cond_89
    const/4 v10, 0x0

    .line 1097
    :goto_42
    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    mul-int v11, v11, v13

    div-int/lit16 v11, v11, 0x190

    new-array v11, v11, [S

    .line 1098
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v6, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v13, v6, :cond_8a

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v6, v13, :cond_8a

    sget-object v6, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_AUTO:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v13, v6, :cond_8a

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v13, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v6, v13, :cond_8a

    .line 1099
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_buffer:[S

    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->encoder_buffer:I

    sub-int v13, v13, v16

    move/from16 p2, v13

    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v15, v13, 0x190

    sub-int v15, p2, v15

    move/from16 v22, v13

    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    mul-int v15, v15, v13

    mul-int v13, v13, v22

    div-int/lit16 v13, v13, 0x190

    move/from16 v22, v5

    const/4 v5, 0x0

    invoke-static {v6, v15, v11, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_43

    :cond_8a
    move/from16 v22, v5

    .line 1102
    :goto_43
    iget v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    iget v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->encoder_buffer:I

    sub-int v13, v6, v17

    mul-int v13, v13, v5

    if-lez v13, :cond_8b

    .line 1103
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_buffer:[S

    mul-int v15, v5, p3

    sub-int v6, v6, p3

    sub-int v6, v6, v16

    mul-int v5, v5, v6

    const/4 v6, 0x0

    invoke-static {v13, v15, v6, v5}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([SIII)V

    .line 1104
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_buffer:[S

    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    iget v15, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->encoder_buffer:I

    sub-int v15, v15, p3

    sub-int v15, v15, v16

    mul-int v15, v15, v13

    mul-int v13, v13, v17

    invoke-static {v1, v6, v5, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_44

    :cond_8b
    const/4 v13, 0x0

    sub-int v17, v17, v6

    mul-int v15, v17, v5

    move/from16 v17, v5

    .line 1106
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_buffer:[S

    mul-int v6, v6, v17

    invoke-static {v1, v15, v5, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1111
    :goto_44
    iget v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_HB_gain:I

    const/16 v6, 0x7fff

    move/from16 v13, v52

    if-lt v5, v6, :cond_8c

    if-ge v13, v6, :cond_8d

    .line 1112
    :cond_8c
    iget v15, v2, Lio/github/jaredmdobson/concentus/CeltMode;->overlap:I

    iget v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    move-object/from16 p9, v1

    iget-object v1, v2, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    move-object/from16 p13, v1

    iget v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    const/16 v16, 0x0

    move/from16 p11, p3

    move-object/from16 p6, p9

    move/from16 p14, v1

    move/from16 p8, v5

    move/from16 p12, v6

    move/from16 p9, v13

    move/from16 p10, v15

    const/16 p7, 0x0

    invoke-static/range {p6 .. p14}, Lio/github/jaredmdobson/concentus/CodecHelpers;->gain_fade([SIIIIII[II)V

    move-object/from16 v1, p6

    .line 1116
    :cond_8d
    iput v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_HB_gain:I

    .line 1117
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v6, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    const/16 v13, 0x4000

    if-ne v5, v6, :cond_8f

    iget v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    const/4 v15, 0x1

    if-ne v5, v15, :cond_8e

    goto :goto_45

    :cond_8e
    const/4 v15, 0x2

    goto :goto_46

    .line 1118
    :cond_8f
    :goto_45
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    add-int/lit16 v8, v8, -0x7530

    const/4 v6, 0x0

    invoke-static {v6, v8}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v8

    const/4 v15, 0x2

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v13, v8}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v6

    iput v6, v5, Lio/github/jaredmdobson/concentus/EncControlState;->stereoWidth_Q14:I

    .line 1120
    :goto_46
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->energy_masking:[I

    if-nez v5, :cond_93

    iget v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    if-ne v5, v15, :cond_93

    .line 1122
    iget-short v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->hybrid_stereo_width_Q14:S

    if-lt v5, v13, :cond_90

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v5, v5, Lio/github/jaredmdobson/concentus/EncControlState;->stereoWidth_Q14:I

    if-ge v5, v13, :cond_93

    .line 1124
    :cond_90
    iget-short v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->hybrid_stereo_width_Q14:S

    .line 1125
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v6, v6, Lio/github/jaredmdobson/concentus/EncControlState;->stereoWidth_Q14:I

    if-ne v5, v13, :cond_91

    const/16 v5, 0x7fff

    const/4 v15, 0x1

    goto :goto_47

    :cond_91
    const/4 v15, 0x1

    .line 1126
    invoke-static {v5, v15}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v5

    :goto_47
    if-ne v6, v13, :cond_92

    const/16 v6, 0x7fff

    goto :goto_48

    .line 1127
    :cond_92
    invoke-static {v6, v15}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v6

    .line 1128
    :goto_48
    iget v8, v2, Lio/github/jaredmdobson/concentus/CeltMode;->overlap:I

    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    iget-object v2, v2, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    iget v15, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    move/from16 p10, p3

    move-object/from16 p6, v1

    move-object/from16 p12, v2

    move/from16 p7, v5

    move/from16 p8, v6

    move/from16 p9, v8

    move/from16 p11, v13

    move/from16 p13, v15

    invoke-static/range {p6 .. p13}, Lio/github/jaredmdobson/concentus/CodecHelpers;->stereo_fade([SIIIII[II)V

    .line 1130
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v2, v2, Lio/github/jaredmdobson/concentus/EncControlState;->stereoWidth_Q14:I

    int-to-short v2, v2

    iput-short v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->hybrid_stereo_width_Q14:S

    .line 1134
    :cond_93
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v5, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v2, v5, :cond_9a

    invoke-virtual {v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v2

    add-int/lit8 v2, v2, 0x11

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v6, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v5, v6, :cond_94

    const/4 v5, 0x1

    goto :goto_49

    :cond_94
    const/4 v5, 0x0

    :goto_49
    mul-int/lit8 v5, v5, 0x14

    add-int/2addr v2, v5

    mul-int/lit8 v13, v37, 0x8

    if-gt v2, v13, :cond_9a

    .line 1136
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v5, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v2, v5, :cond_96

    if-nez v4, :cond_95

    invoke-virtual {v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v2

    add-int/lit8 v2, v2, 0x25

    mul-int/lit8 v5, v10, 0x8

    if-gt v2, v5, :cond_96

    :cond_95
    const/16 v2, 0xc

    .line 1137
    invoke-virtual {v7, v4, v2}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    :cond_96
    if-eqz v4, :cond_99

    const/4 v15, 0x1

    .line 1141
    invoke-virtual {v7, v9, v15}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    .line 1142
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v5, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v2, v5, :cond_97

    sub-int v13, v37, v10

    goto :goto_4a

    .line 1145
    :cond_97
    invoke-virtual {v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    const/16 v41, 0x3

    shr-int/lit8 v2, v2, 0x3

    sub-int v13, v37, v2

    .line 1149
    :goto_4a
    iget v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bitrate_bps:I

    div-int/lit16 v2, v2, 0x640

    invoke-static {v13, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v2

    const/16 v5, 0x101

    const/4 v15, 0x2

    .line 1150
    invoke-static {v15, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v2

    invoke-static {v5, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v2

    .line 1151
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v6, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v5, v6, :cond_98

    add-int/lit8 v5, v2, -0x2

    int-to-long v5, v5

    move-object/from16 p9, v1

    move/from16 p2, v2

    const-wide/16 v1, 0x100

    .line 1152
    invoke-virtual {v7, v5, v6, v1, v2}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_uint(JJ)V

    goto :goto_4b

    :cond_98
    move-object/from16 p9, v1

    move/from16 p2, v2

    :goto_4b
    move/from16 v28, p2

    goto :goto_4c

    :cond_99
    move-object/from16 p9, v1

    :goto_4c
    move v2, v4

    goto :goto_4d

    :cond_9a
    move-object/from16 p9, v1

    const/4 v2, 0x0

    :goto_4d
    if-nez v2, :cond_9b

    const/4 v6, 0x0

    .line 1160
    iput v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_bw_switch:I

    const/16 v28, 0x0

    .line 1163
    :cond_9b
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v4, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v1, v4, :cond_9c

    const/16 v1, 0x11

    goto :goto_4e

    :cond_9c
    const/4 v1, 0x0

    .line 1167
    :goto_4e
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v5, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v4, v5, :cond_9d

    .line 1168
    invoke-virtual {v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    const/16 v41, 0x3

    shr-int/lit8 v10, v4, 0x3

    .line 1169
    invoke-virtual {v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_done()V

    move/from16 v24, v10

    goto :goto_4f

    :cond_9d
    sub-int v13, v37, v28

    .line 1172
    invoke-static {v13, v10}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v10

    .line 1173
    invoke-virtual {v7, v10}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_shrink(I)V

    .line 1176
    :goto_4f
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    iget-boolean v4, v4, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->enabled:Z

    if-eqz v4, :cond_9e

    if-nez v2, :cond_9f

    :cond_9e
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v5, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v4, v5, :cond_a0

    .line 1177
    :cond_9f
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    iget-boolean v4, v4, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->enabled:Z

    iput-boolean v4, v12, Lio/github/jaredmdobson/concentus/AnalysisInfo;->enabled:Z

    .line 1178
    invoke-virtual {v3, v12}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetAnalysis(Lio/github/jaredmdobson/concentus/AnalysisInfo;)V

    :cond_a0
    if-eqz v2, :cond_a2

    if-eqz v9, :cond_a2

    const/4 v6, 0x0

    .line 1183
    invoke-virtual {v3, v6}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetStartBand(I)V

    .line 1184
    invoke-virtual {v3, v6}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetVBR(Z)V

    .line 1185
    iget v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v4, v4, 0xc8

    add-int v5, v33, v10

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 p10, p4

    move-object/from16 p7, p9

    move-object/from16 p6, v3

    move/from16 p9, v4

    move/from16 p11, v5

    move-object/from16 p13, v6

    move/from16 p12, v28

    const/16 p8, 0x0

    invoke-virtual/range {p6 .. p13}, Lio/github/jaredmdobson/concentus/CeltEncoder;->celt_encode_with_ec([SII[BIILio/github/jaredmdobson/concentus/EntropyCoder;)I

    move-result v3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    if-gez v3, :cond_a1

    .line 1187
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v1

    .line 1189
    :cond_a1
    invoke-virtual {v4}, Lio/github/jaredmdobson/concentus/CeltEncoder;->GetFinalRange()I

    move-result v3

    .line 1190
    invoke-virtual {v4}, Lio/github/jaredmdobson/concentus/CeltEncoder;->ResetState()V

    goto :goto_50

    :cond_a2
    move-object/from16 v5, p9

    move-object v4, v3

    const/4 v3, 0x0

    .line 1193
    :goto_50
    invoke-virtual {v4, v1}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetStartBand(I)V

    .line 1195
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v6, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v1, v6, :cond_a4

    .line 1196
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v1, v6, :cond_a3

    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_AUTO:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v6, v1, :cond_a3

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v6, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v1, v6, :cond_a3

    const/4 v15, 0x2

    .line 1197
    new-array v1, v15, [B

    .line 1198
    invoke-virtual {v4}, Lio/github/jaredmdobson/concentus/CeltEncoder;->ResetState()V

    .line 1201
    iget v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v6, v6, 0x190

    const/4 v8, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 p10, v1

    move-object/from16 p6, v4

    move/from16 p9, v6

    move-object/from16 p7, v11

    move-object/from16 p13, v12

    const/16 p8, 0x0

    const/16 p11, 0x0

    const/16 p12, 0x2

    invoke-virtual/range {p6 .. p13}, Lio/github/jaredmdobson/concentus/CeltEncoder;->celt_encode_with_ec([SII[BIILio/github/jaredmdobson/concentus/EntropyCoder;)I

    const/4 v6, 0x0

    .line 1202
    invoke-virtual {v4, v6}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetPrediction(I)V

    .line 1205
    :cond_a3
    invoke-virtual {v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v1

    mul-int/lit8 v6, v10, 0x8

    if-gt v1, v6, :cond_a4

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 p9, p3

    move-object/from16 p10, v1

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p13, v7

    move/from16 p12, v10

    const/16 p8, 0x0

    const/16 p11, 0x0

    .line 1206
    invoke-virtual/range {p6 .. p13}, Lio/github/jaredmdobson/concentus/CeltEncoder;->celt_encode_with_ec([SII[BIILio/github/jaredmdobson/concentus/EntropyCoder;)I

    move-result v1

    move-object/from16 v7, p7

    move/from16 v6, p9

    move-object/from16 v5, p13

    if-gez v1, :cond_a5

    .line 1208
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v1

    :cond_a4
    move-object v6, v7

    move-object v7, v5

    move-object v5, v6

    move/from16 v6, p3

    move/from16 v1, v24

    :cond_a5
    if-eqz v2, :cond_a7

    if-nez v9, :cond_a7

    const/4 v15, 0x2

    .line 1216
    new-array v3, v15, [B

    .line 1218
    iget v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v9, v8, 0xc8

    .line 1219
    div-int/lit16 v8, v8, 0x190

    .line 1221
    invoke-virtual {v4}, Lio/github/jaredmdobson/concentus/CeltEncoder;->ResetState()V

    const/4 v11, 0x0

    .line 1222
    invoke-virtual {v4, v11}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetStartBand(I)V

    .line 1223
    invoke-virtual {v4, v11}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetPrediction(I)V

    .line 1226
    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    sub-int v12, v6, v9

    sub-int v13, v12, v8

    mul-int v11, v11, v13

    const/4 v13, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 p10, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v7

    move/from16 p9, v8

    move/from16 p8, v11

    move-object/from16 p13, v15

    const/16 p11, 0x0

    const/16 p12, 0x2

    invoke-virtual/range {p6 .. p13}, Lio/github/jaredmdobson/concentus/CeltEncoder;->celt_encode_with_ec([SII[BIILio/github/jaredmdobson/concentus/EntropyCoder;)I

    .line 1228
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    mul-int v3, v3, v12

    add-int v10, v33, v10

    const/4 v8, 0x0

    move-object/from16 p10, p4

    move/from16 p8, v3

    move-object/from16 p13, v8

    move/from16 p9, v9

    move/from16 p11, v10

    move/from16 p12, v28

    invoke-virtual/range {p6 .. p13}, Lio/github/jaredmdobson/concentus/CeltEncoder;->celt_encode_with_ec([SII[BIILio/github/jaredmdobson/concentus/EntropyCoder;)I

    move-result v3

    move-object/from16 v24, p6

    move-object/from16 v15, p10

    if-gez v3, :cond_a6

    .line 1230
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v1

    .line 1232
    :cond_a6
    invoke-virtual/range {v24 .. v24}, Lio/github/jaredmdobson/concentus/CeltEncoder;->GetFinalRange()I

    move-result v3

    goto :goto_51

    :cond_a7
    move-object/from16 v15, p4

    .line 1237
    :goto_51
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    iget v7, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/2addr v7, v6

    iget v8, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    invoke-static {v4, v7, v14, v8}, Lio/github/jaredmdobson/concentus/CodecHelpers;->gen_toc(Lio/github/jaredmdobson/concentus/OpusMode;ILio/github/jaredmdobson/concentus/OpusBandwidth;I)B

    move-result v4

    aput-byte v4, v15, p5

    .line 1239
    iget-wide v7, v5, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    long-to-int v4, v7

    xor-int/2addr v3, v4

    iput v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->rangeFinal:I

    if-eqz v29, :cond_a8

    .line 1242
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    goto :goto_52

    .line 1244
    :cond_a8
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 1246
    :goto_52
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    iput v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_channels:I

    .line 1247
    iput v6, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_framesize:I

    const/4 v3, 0x0

    .line 1249
    iput v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->first:I

    .line 1253
    invoke-virtual {v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v4

    const/16 v20, 0x8

    mul-int/lit8 v13, v37, 0x8

    if-le v4, v13, :cond_aa

    move/from16 v4, v22

    const/4 v13, 0x2

    if-ge v4, v13, :cond_a9

    .line 1255
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v1

    :cond_a9
    add-int/lit8 v1, p5, 0x1

    .line 1257
    aput-byte v3, v15, v1

    .line 1259
    iput v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->rangeFinal:I

    const/4 v5, 0x1

    goto :goto_54

    :cond_aa
    move/from16 v4, v22

    .line 1260
    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v5, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v3, v5, :cond_ab

    if-nez v2, :cond_ab

    move v5, v1

    const/4 v1, 0x2

    :goto_53
    if-le v5, v1, :cond_ac

    add-int v2, p5, v5

    .line 1267
    aget-byte v2, v15, v2

    if-nez v2, :cond_ac

    add-int/lit8 v5, v5, -0x1

    goto :goto_53

    :cond_ab
    move v5, v1

    :cond_ac
    :goto_54
    const/16 v18, 0x1

    add-int/lit8 v28, v28, 0x1

    add-int v5, v5, v28

    .line 1273
    iget v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    if-nez v1, :cond_ae

    move/from16 v1, p5

    .line 1274
    invoke-static {v15, v1, v5, v4}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->padPacket([BIII)I

    move-result v1

    sget v2, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-eq v1, v2, :cond_ad

    .line 1275
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v1

    :cond_ad
    move v13, v4

    goto/16 :goto_58

    :cond_ae
    return v5

    :cond_af
    move-object/from16 v15, p4

    move-object/from16 v35, v4

    move v13, v5

    move/from16 v34, v11

    const/16 v19, 0x2

    const/16 v20, 0x8

    const/16 v22, -0x1

    move/from16 v11, p5

    move/from16 v4, p6

    move/from16 v15, v29

    move/from16 v11, v34

    move-object/from16 v4, v35

    goto/16 :goto_1a

    :cond_b0
    :goto_55
    move-object/from16 v15, p4

    move/from16 v11, p5

    move v13, v5

    const/16 v40, 0x32

    .line 454
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 455
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne v2, v3, :cond_b1

    sget-object v2, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    goto :goto_56

    :cond_b1
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 456
    :goto_56
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v1, v3, :cond_b2

    .line 457
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    :cond_b2
    const/16 v3, 0x64

    if-le v14, v3, :cond_b3

    .line 460
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    :cond_b3
    const/16 v10, 0x32

    if-ge v14, v10, :cond_b4

    .line 463
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 465
    :cond_b4
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v1, v3, :cond_b5

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v4, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v4

    if-le v3, v4, :cond_b5

    .line 466
    sget-object v2, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    goto :goto_57

    .line 467
    :cond_b5
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v1, v3, :cond_b6

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v4, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v4

    if-ne v3, v4, :cond_b6

    .line 468
    sget-object v2, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    goto :goto_57

    .line 469
    :cond_b6
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v1, v3, :cond_b7

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v4, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v4

    if-gt v3, v4, :cond_b7

    .line 470
    sget-object v2, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 472
    :cond_b7
    :goto_57
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    invoke-static {v1, v14, v2, v3}, Lio/github/jaredmdobson/concentus/CodecHelpers;->gen_toc(Lio/github/jaredmdobson/concentus/OpusMode;ILio/github/jaredmdobson/concentus/OpusBandwidth;I)B

    move-result v1

    aput-byte v1, v15, v11

    .line 474
    iget v1, v0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    if-nez v1, :cond_b9

    const/4 v14, 0x1

    .line 475
    invoke-static {v15, v11, v14, v13}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->padPacket([BIII)I

    move-result v1

    .line 476
    sget v2, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-ne v1, v2, :cond_b8

    :goto_58
    return v13

    :cond_b8
    return v1

    :cond_b9
    const/4 v14, 0x1

    return v14

    .line 377
    :cond_ba
    :goto_59
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1
.end method

.method opus_init_encoder(IILio/github/jaredmdobson/concentus/OpusApplication;)I
    .locals 6

    const v0, 0xbb80

    const/16 v1, 0x1f40

    const/16 v2, 0x3e80

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5dc0

    if-eq p1, v0, :cond_0

    if-eq p1, v2, :cond_0

    const/16 v0, 0x2ee0

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 221
    :cond_1
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusApplication;->OPUS_APPLICATION_UNIMPLEMENTED:Lio/github/jaredmdobson/concentus/OpusApplication;

    if-ne p3, v3, :cond_3

    .line 223
    :cond_2
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1

    .line 226
    :cond_3
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->reset()V

    .line 228
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->SilkEncoder:Lio/github/jaredmdobson/concentus/SilkEncoder;

    .line 229
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Celt_Encoder:Lio/github/jaredmdobson/concentus/CeltEncoder;

    .line 231
    iput p2, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    iput p2, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    .line 233
    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    .line 235
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/EncodeAPI;->silk_InitEncoder(Lio/github/jaredmdobson/concentus/SilkEncoder;Lio/github/jaredmdobson/concentus/EncControlState;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 237
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return p1

    .line 241
    :cond_4
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput p2, v3, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsAPI:I

    .line 242
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput p2, v3, Lio/github/jaredmdobson/concentus/EncControlState;->nChannelsInternal:I

    .line 243
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v5, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    iput v5, v3, Lio/github/jaredmdobson/concentus/EncControlState;->API_sampleRate:I

    .line 244
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput v2, v3, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    .line 245
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput v1, v3, Lio/github/jaredmdobson/concentus/EncControlState;->minInternalSampleRate:I

    .line 246
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput v2, v1, Lio/github/jaredmdobson/concentus/EncControlState;->desiredInternalSampleRate:I

    .line 247
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v2, 0x14

    iput v2, v1, Lio/github/jaredmdobson/concentus/EncControlState;->payloadSize_ms:I

    .line 248
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v2, 0x61a8

    iput v2, v1, Lio/github/jaredmdobson/concentus/EncControlState;->bitRate:I

    .line 249
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/4 v2, 0x0

    iput v2, v1, Lio/github/jaredmdobson/concentus/EncControlState;->packetLossPercentage:I

    .line 250
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v3, 0x9

    iput v3, v1, Lio/github/jaredmdobson/concentus/EncControlState;->complexity:I

    .line 251
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput v2, v1, Lio/github/jaredmdobson/concentus/EncControlState;->useInBandFEC:I

    .line 252
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput v2, v1, Lio/github/jaredmdobson/concentus/EncControlState;->useDTX:I

    .line 253
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput v2, v1, Lio/github/jaredmdobson/concentus/EncControlState;->useCBR:I

    .line 254
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput v2, v1, Lio/github/jaredmdobson/concentus/EncControlState;->reducedDependency:I

    .line 258
    invoke-virtual {v4, p1, p2}, Lio/github/jaredmdobson/concentus/CeltEncoder;->celt_encoder_init(II)I

    move-result v1

    .line 259
    sget v3, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-eq v1, v3, :cond_5

    .line 260
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return p1

    .line 263
    :cond_5
    invoke-virtual {v4, v2}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetSignalling(I)V

    .line 264
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iget v1, v1, Lio/github/jaredmdobson/concentus/EncControlState;->complexity:I

    invoke-virtual {v4, v1}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetComplexity(I)V

    .line 266
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    .line 268
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->vbr_constraint:I

    const/16 v1, -0x3e8

    .line 269
    iput v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bitrate_bps:I

    mul-int p1, p1, p2

    add-int/lit16 p1, p1, 0xbb8

    .line 270
    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bitrate_bps:I

    .line 271
    iput-object p3, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    .line 272
    sget-object p1, Lio/github/jaredmdobson/concentus/OpusSignal;->OPUS_SIGNAL_AUTO:Lio/github/jaredmdobson/concentus/OpusSignal;

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->signal_type:Lio/github/jaredmdobson/concentus/OpusSignal;

    .line 273
    sget-object p1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_AUTO:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 274
    sget-object p1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->max_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 275
    iput v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->force_channels:I

    .line 276
    sget-object p1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_AUTO:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_forced_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    const/4 p1, -0x1

    .line 277
    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->voice_ratio:I

    .line 278
    iget p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/lit8 p1, p1, 0x64

    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->encoder_buffer:I

    const/16 p1, 0x18

    .line 279
    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->lsb_depth:I

    .line 280
    sget-object p1, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_ARG:Lio/github/jaredmdobson/concentus/OpusFramesize;

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    .line 284
    iget p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/lit16 p1, p1, 0xfa

    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_compensation:I

    const/16 p1, 0x4000

    .line 286
    iput-short p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->hybrid_stereo_width_Q14:S

    const/16 p1, 0x7fff

    .line 287
    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_HB_gain:I

    const/16 p1, 0x3c

    .line 288
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p1

    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->variable_HP_smth2_Q15:I

    .line 289
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->first:I

    .line 290
    sget-object p1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 291
    sget-object p1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 293
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Analysis;->tonality_analysis_init(Lio/github/jaredmdobson/concentus/TonalityAnalysisState;)V

    .line 295
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    return p1
.end method

.method reset()V
    .locals 2

    .line 99
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/EncControlState;->Reset()V

    .line 100
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusApplication;->OPUS_APPLICATION_UNIMPLEMENTED:Lio/github/jaredmdobson/concentus/OpusApplication;

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    .line 102
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->delay_compensation:I

    .line 103
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->force_channels:I

    .line 104
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusSignal;->OPUS_SIGNAL_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusSignal;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->signal_type:Lio/github/jaredmdobson/concentus/OpusSignal;

    .line 105
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 106
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->max_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 107
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_forced_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 108
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->voice_ratio:I

    .line 109
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    .line 110
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    .line 111
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->vbr_constraint:I

    .line 112
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusFramesize;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    .line 113
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bitrate_bps:I

    .line 114
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bitrate_bps:I

    .line 115
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->lsb_depth:I

    .line 116
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->encoder_buffer:I

    .line 117
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->lfe:I

    .line 118
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->Reset()V

    .line 119
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->PartialReset()V

    return-void
.end method

.method public resetState()V
    .locals 2

    .line 151
    new-instance v0, Lio/github/jaredmdobson/concentus/EncControlState;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/EncControlState;-><init>()V

    .line 152
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    invoke-virtual {v1}, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->Reset()V

    .line 153
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->PartialReset()V

    .line 155
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Celt_Encoder:Lio/github/jaredmdobson/concentus/CeltEncoder;

    invoke-virtual {v1}, Lio/github/jaredmdobson/concentus/CeltEncoder;->ResetState()V

    .line 156
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->SilkEncoder:Lio/github/jaredmdobson/concentus/SilkEncoder;

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/EncodeAPI;->silk_InitEncoder(Lio/github/jaredmdobson/concentus/SilkEncoder;Lio/github/jaredmdobson/concentus/EncControlState;)I

    .line 157
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->stream_channels:I

    const/16 v0, 0x4000

    .line 158
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->hybrid_stereo_width_Q14:S

    const/16 v0, 0x7fff

    .line 159
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->prev_HB_gain:I

    const/4 v0, 0x1

    .line 160
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->first:I

    .line 161
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 162
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    const/16 v0, 0x3c

    .line 163
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->variable_HP_smth2_Q15:I

    return-void
.end method

.method public setApplication(Lio/github/jaredmdobson/concentus/OpusApplication;)V
    .locals 1

    .line 1384
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->first:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1385
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Application cannot be changed after encoding has started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1387
    :cond_1
    :goto_0
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    return-void
.end method

.method public setBandwidth(Lio/github/jaredmdobson/concentus/OpusBandwidth;)V
    .locals 1

    .line 1493
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 1494
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne p1, v0, :cond_0

    .line 1495
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v0, 0x1f40

    iput v0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    return-void

    .line 1496
    :cond_0
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne p1, v0, :cond_1

    .line 1497
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v0, 0x2ee0

    iput v0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    return-void

    .line 1499
    :cond_1
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v0, 0x3e80

    iput v0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    return-void
.end method

.method public setBitrate(I)V
    .locals 3

    const/16 v0, -0x3e8

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-lez p1, :cond_1

    const/16 v0, 0x1f4

    if-gt p1, v0, :cond_0

    const/16 p1, 0x1f4

    goto :goto_0

    .line 1413
    :cond_0
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    const v1, 0x493e0

    mul-int v2, v0, v1

    if-le p1, v2, :cond_2

    mul-int p1, v0, v1

    goto :goto_0

    .line 1410
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitrate must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1418
    :cond_2
    :goto_0
    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bitrate_bps:I

    return-void
.end method

.method public setComplexity(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 1547
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput p1, v0, Lio/github/jaredmdobson/concentus/EncControlState;->complexity:I

    .line 1548
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Celt_Encoder:Lio/github/jaredmdobson/concentus/CeltEncoder;

    invoke-virtual {v0, p1}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetComplexity(I)V

    return-void

    .line 1545
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Complexity must be between 0 and 10"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnableAnalysis(Z)V
    .locals 1

    .line 1838
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    iput-boolean p1, v0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->enabled:Z

    return-void
.end method

.method public setExpertFrameDuration(Lio/github/jaredmdobson/concentus/OpusFramesize;)V
    .locals 1

    .line 1748
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    .line 1749
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Celt_Encoder:Lio/github/jaredmdobson/concentus/CeltEncoder;

    invoke-virtual {v0, p1}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetExpertFrameDuration(Lio/github/jaredmdobson/concentus/OpusFramesize;)V

    return-void
.end method

.method public setForceChannels(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1440
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, -0x3e8

    if-ne p1, v0, :cond_2

    .line 1444
    :cond_1
    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->force_channels:I

    return-void

    .line 1441
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Force channels must be <= num. of channels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setForceMode(Lio/github/jaredmdobson/concentus/OpusMode;)V
    .locals 0

    .line 1773
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_forced_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    return-void
.end method

.method public setIsLFE(Z)V
    .locals 1

    .line 1794
    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->lfe:I

    .line 1795
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Celt_Encoder:Lio/github/jaredmdobson/concentus/CeltEncoder;

    invoke-virtual {v0, p1}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetLFE(I)V

    return-void
.end method

.method public setLSBDepth(I)V
    .locals 1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x18

    if-gt p1, v0, :cond_0

    .line 1726
    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->lsb_depth:I

    return-void

    .line 1723
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "LSB depth must be between 8 and 24"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxBandwidth(Lio/github/jaredmdobson/concentus/OpusBandwidth;)V
    .locals 1

    .line 1465
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->max_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 1466
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne p1, v0, :cond_0

    .line 1467
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v0, 0x1f40

    iput v0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    return-void

    .line 1468
    :cond_0
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->max_bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne p1, v0, :cond_1

    .line 1469
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v0, 0x2ee0

    iput v0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    return-void

    .line 1471
    :cond_1
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    const/16 v0, 0x3e80

    iput v0, p1, Lio/github/jaredmdobson/concentus/EncControlState;->maxInternalSampleRate:I

    return-void
.end method

.method public setPacketLossPercent(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 1596
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput p1, v0, Lio/github/jaredmdobson/concentus/EncControlState;->packetLossPercentage:I

    .line 1597
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Celt_Encoder:Lio/github/jaredmdobson/concentus/CeltEncoder;

    invoke-virtual {v0, p1}, Lio/github/jaredmdobson/concentus/CeltEncoder;->SetPacketLossPercent(I)V

    return-void

    .line 1594
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Packet loss must be between 0 and 100"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPredictionDisabled(Z)V
    .locals 1

    .line 1816
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput p1, v0, Lio/github/jaredmdobson/concentus/EncControlState;->reducedDependency:I

    return-void
.end method

.method public setSignalType(Lio/github/jaredmdobson/concentus/OpusSignal;)V
    .locals 0

    .line 1662
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->signal_type:Lio/github/jaredmdobson/concentus/OpusSignal;

    return-void
.end method

.method public setUseConstrainedVBR(Z)V
    .locals 0

    .line 1641
    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->vbr_constraint:I

    return-void
.end method

.method public setUseDTX(Z)V
    .locals 1

    .line 1523
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput p1, v0, Lio/github/jaredmdobson/concentus/EncControlState;->useDTX:I

    return-void
.end method

.method public setUseInbandFEC(Z)V
    .locals 1

    .line 1571
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    iput p1, v0, Lio/github/jaredmdobson/concentus/EncControlState;->useInBandFEC:I

    return-void
.end method

.method public setUseVBR(Z)V
    .locals 1

    .line 1619
    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->use_vbr:I

    .line 1620
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->silk_mode:Lio/github/jaredmdobson/concentus/EncControlState;

    xor-int/lit8 p1, p1, 0x1

    iput p1, v0, Lio/github/jaredmdobson/concentus/EncControlState;->useCBR:I

    return-void
.end method

.method user_bitrate_to_bitrate(II)I
    .locals 2

    if-nez p1, :cond_0

    .line 300
    iget p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    div-int/lit16 p1, p1, 0x190

    .line 302
    :cond_0
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->user_bitrate_bps:I

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_1

    .line 303
    iget p2, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    mul-int/lit8 v0, p2, 0x3c

    div-int/2addr v0, p1

    iget p1, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->channels:I

    mul-int p2, p2, p1

    add-int/2addr v0, p2

    return v0

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    mul-int/lit8 p2, p2, 0x8

    .line 305
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusEncoder;->Fs:I

    mul-int p2, p2, v0

    div-int/2addr p2, p1

    return p2

    :cond_2
    return v0
.end method
