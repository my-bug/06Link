.class Lio/github/jaredmdobson/concentus/EncodeIndices;
.super Ljava/lang/Object;
.source "EncodeIndices.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_encode_indices(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;Lio/github/jaredmdobson/concentus/EntropyCoder;III)V
    .locals 10

    const/16 v0, 0x10

    .line 52
    new-array v1, v0, [S

    .line 53
    new-array v0, v0, [S

    if-eqz p3, :cond_0

    .line 57
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices_LBRR:[Lio/github/jaredmdobson/concentus/SideInfoIndices;

    aget-object p2, v2, p2

    goto :goto_0

    .line 59
    :cond_0
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    .line 69
    :goto_0
    iget-byte v2, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    iget-byte v4, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    add-int/2addr v2, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v2, :cond_1

    const/4 v6, 0x6

    if-ge v2, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 70
    :goto_1
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-eqz p3, :cond_3

    if-lt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v6, 0x1

    .line 71
    :goto_3
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v6, 0x8

    if-nez p3, :cond_5

    if-lt v2, v3, :cond_4

    goto :goto_4

    .line 75
    :cond_4
    sget-object p3, Lio/github/jaredmdobson/concentus/SilkTables;->silk_type_offset_no_VAD_iCDF:[S

    invoke-virtual {p1, v2, p3, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    goto :goto_5

    :cond_5
    :goto_4
    sub-int/2addr v2, v3

    .line 73
    sget-object p3, Lio/github/jaredmdobson/concentus/SilkTables;->silk_type_offset_VAD_iCDF:[S

    invoke-virtual {p1, v2, p3, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    :goto_5
    const/16 p3, 0x29

    const/4 v2, 0x3

    if-ne p4, v3, :cond_7

    .line 88
    iget-object v7, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    aget-byte v7, v7, v5

    if-ltz v7, :cond_6

    iget-object v7, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    aget-byte v7, v7, v5

    if-ge v7, p3, :cond_6

    const/4 v7, 0x1

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 89
    iget-object v7, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    aget-byte v7, v7, v5

    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_delta_gain_iCDF:[S

    invoke-virtual {p1, v7, v8, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    goto :goto_8

    .line 92
    :cond_7
    iget-object v7, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    aget-byte v7, v7, v5

    if-ltz v7, :cond_8

    iget-object v7, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    aget-byte v7, v7, v5

    const/16 v8, 0x40

    if-ge v7, v8, :cond_8

    const/4 v7, 0x1

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 93
    iget-object v7, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    aget-byte v7, v7, v5

    invoke-static {v7, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v7

    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_gain_iCDF:[[S

    iget-byte v9, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    aget-object v8, v8, v9

    invoke-virtual {p1, v7, v8, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    .line 94
    iget-object v7, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    aget-byte v7, v7, v5

    and-int/lit8 v7, v7, 0x7

    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_uniform8_iCDF:[S

    invoke-virtual {p1, v7, v8, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    :goto_8
    const/4 v7, 0x1

    .line 98
    :goto_9
    iget v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v7, v8, :cond_a

    .line 99
    iget-object v8, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    aget-byte v8, v8, v7

    if-ltz v8, :cond_9

    iget-object v8, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    aget-byte v8, v8, v7

    if-ge v8, p3, :cond_9

    const/4 v8, 0x1

    goto :goto_a

    :cond_9
    const/4 v8, 0x0

    :goto_a
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 100
    iget-object v8, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    aget-byte v8, v8, v7

    sget-object v9, Lio/github/jaredmdobson/concentus/SilkTables;->silk_delta_gain_iCDF:[S

    invoke-virtual {p1, v8, v9, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 110
    :cond_a
    iget-object p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    aget-byte p3, p3, v5

    iget-object v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget-object v7, v7, Lio/github/jaredmdobson/concentus/NLSFCodebook;->CB1_iCDF:[S

    iget-byte v8, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    shr-int/2addr v8, v4

    iget-object v9, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget-short v9, v9, Lio/github/jaredmdobson/concentus/NLSFCodebook;->nVectors:S

    mul-int v8, v8, v9

    invoke-virtual {p1, p3, v7, v8, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SII)V

    .line 111
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget-object v7, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    aget-byte v7, v7, v5

    invoke-static {v1, v0, p3, v7}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_unpack([S[SLio/github/jaredmdobson/concentus/NLSFCodebook;I)V

    .line 112
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget-short p3, p3, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    if-ne p3, v0, :cond_b

    const/4 p3, 0x1

    goto :goto_b

    :cond_b
    const/4 p3, 0x0

    :goto_b
    invoke-static {p3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 p3, 0x0

    .line 114
    :goto_c
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget-short v0, v0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    const/4 v7, 0x4

    if-ge p3, v0, :cond_e

    .line 115
    iget-object v0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    add-int/lit8 v8, p3, 0x1

    aget-byte v0, v0, v8

    if-lt v0, v7, :cond_c

    .line 116
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget-object v0, v0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->ec_iCDF:[S

    aget-short p3, v1, p3

    invoke-virtual {p1, v6, v0, p3, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SII)V

    .line 117
    iget-object p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    aget-byte p3, p3, v8

    sub-int/2addr p3, v7

    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_NLSF_EXT_iCDF:[S

    invoke-virtual {p1, p3, v0, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    goto :goto_d

    .line 118
    :cond_c
    iget-object v0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    aget-byte v0, v0, v8

    const/4 v9, -0x4

    if-gt v0, v9, :cond_d

    .line 119
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget-object v0, v0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->ec_iCDF:[S

    aget-short p3, v1, p3

    invoke-virtual {p1, v5, v0, p3, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SII)V

    .line 120
    iget-object p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    aget-byte p3, p3, v8

    neg-int p3, p3

    sub-int/2addr p3, v7

    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_NLSF_EXT_iCDF:[S

    invoke-virtual {p1, p3, v0, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    goto :goto_d

    .line 122
    :cond_d
    iget-object v0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    aget-byte v0, v0, v8

    add-int/2addr v0, v7

    iget-object v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget-object v7, v7, Lio/github/jaredmdobson/concentus/NLSFCodebook;->ec_iCDF:[S

    aget-short p3, v1, p3

    invoke-virtual {p1, v0, v7, p3, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SII)V

    :goto_d
    move p3, v8

    goto :goto_c

    .line 127
    :cond_e
    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ne p3, v7, :cond_10

    .line 128
    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    if-ltz p3, :cond_f

    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    const/4 v0, 0x5

    if-ge p3, v0, :cond_f

    const/4 p3, 0x1

    goto :goto_e

    :cond_f
    const/4 p3, 0x0

    :goto_e
    invoke-static {p3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 129
    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_NLSF_interpolation_factor_iCDF:[S

    invoke-virtual {p1, p3, v0, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    .line 132
    :cond_10
    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    if-ne p3, v3, :cond_25

    const/16 p3, 0xb

    if-ne p4, v3, :cond_14

    .line 142
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ec_prevSignalType:I

    if-ne v0, v3, :cond_14

    .line 144
    iget-short v0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    iget-short v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ec_prevLagIndex:S

    sub-int/2addr v0, v1

    const/4 v1, -0x8

    if-lt v0, v1, :cond_12

    if-le v0, p3, :cond_11

    goto :goto_f

    :cond_11
    add-int/lit8 v0, v0, 0x9

    const/4 v1, 0x0

    goto :goto_10

    :cond_12
    :goto_f
    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_10
    if-ltz v0, :cond_13

    const/16 v8, 0x15

    if-ge v0, v8, :cond_13

    const/4 v8, 0x1

    goto :goto_11

    :cond_13
    const/4 v8, 0x0

    .line 154
    :goto_11
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 155
    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_delta_iCDF:[S

    invoke-virtual {p1, v0, v8, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    goto :goto_12

    :cond_14
    const/4 v1, 0x1

    :goto_12
    if-eqz v1, :cond_17

    .line 161
    iget-short v0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v0

    .line 162
    iget-short v1, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    iget v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    invoke-static {v8, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v8

    invoke-static {v0, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v8

    sub-int/2addr v1, v8

    .line 163
    iget v8, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    div-int/2addr v8, v3

    if-ge v1, v8, :cond_15

    const/4 v8, 0x1

    goto :goto_13

    :cond_15
    const/4 v8, 0x0

    :goto_13
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v8, 0x20

    if-ge v0, v8, :cond_16

    const/4 v8, 0x1

    goto :goto_14

    :cond_16
    const/4 v8, 0x0

    .line 164
    :goto_14
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 165
    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_lag_iCDF:[S

    invoke-virtual {p1, v0, v8, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    .line 166
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_lag_low_bits_iCDF:[S

    invoke-virtual {p1, v1, v0, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    .line 168
    :cond_17
    iget-short v0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    iput-short v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ec_prevLagIndex:S

    .line 171
    iget-byte v0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    if-ltz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_15

    :cond_18
    const/4 v0, 0x0

    :goto_15
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 172
    iget-byte v0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    const/16 v1, 0x22

    if-ge v0, v1, :cond_19

    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    if-le v0, v6, :cond_19

    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-eq v0, v7, :cond_1c

    :cond_19
    iget-byte v0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    if-ge v0, p3, :cond_1a

    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    if-ne p3, v6, :cond_1a

    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-eq p3, v7, :cond_1c

    :cond_1a
    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    const/16 v0, 0xc

    if-ge p3, v0, :cond_1b

    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    if-le p3, v6, :cond_1b

    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-eq p3, v3, :cond_1c

    :cond_1b
    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    if-ge p3, v2, :cond_1d

    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    if-ne p3, v6, :cond_1d

    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ne p3, v3, :cond_1d

    :cond_1c
    const/4 p3, 0x1

    goto :goto_16

    :cond_1d
    const/4 p3, 0x0

    :goto_16
    invoke-static {p3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 173
    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->pitch_contour_iCDF:[S

    invoke-virtual {p1, p3, v0, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    .line 183
    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    if-ltz p3, :cond_1e

    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    if-ge p3, v2, :cond_1e

    const/4 p3, 0x1

    goto :goto_17

    :cond_1e
    const/4 p3, 0x0

    :goto_17
    invoke-static {p3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 184
    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LTP_per_index_iCDF:[S

    invoke-virtual {p1, p3, v0, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    const/4 p3, 0x0

    .line 187
    :goto_18
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge p3, v0, :cond_20

    .line 188
    iget-object v0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTPIndex:[B

    aget-byte v0, v0, p3

    if-ltz v0, :cond_1f

    iget-object v0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTPIndex:[B

    aget-byte v0, v0, p3

    iget-byte v1, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    shl-int v1, v6, v1

    if-ge v0, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_19

    :cond_1f
    const/4 v0, 0x0

    :goto_19
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 189
    iget-object v0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTPIndex:[B

    aget-byte v0, v0, p3

    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LTP_gain_iCDF_ptrs:[[S

    iget-byte v3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    aget-object v1, v1, v3

    invoke-virtual {p1, v0, v1, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_18

    :cond_20
    if-nez p4, :cond_22

    .line 200
    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTP_scaleIndex:B

    if-ltz p3, :cond_21

    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTP_scaleIndex:B

    if-ge p3, v2, :cond_21

    const/4 p3, 0x1

    goto :goto_1a

    :cond_21
    const/4 p3, 0x0

    :goto_1a
    invoke-static {p3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 201
    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTP_scaleIndex:B

    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LTPscale_iCDF:[S

    invoke-virtual {p1, p3, v0, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    :cond_22
    if-eqz p4, :cond_24

    .line 204
    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTP_scaleIndex:B

    if-nez p3, :cond_23

    goto :goto_1b

    :cond_23
    const/4 p3, 0x0

    goto :goto_1c

    :cond_24
    :goto_1b
    const/4 p3, 0x1

    :goto_1c
    invoke-static {p3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 207
    :cond_25
    iget-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    iput p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->ec_prevSignalType:I

    .line 216
    iget-byte p0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    if-ltz p0, :cond_26

    iget-byte p0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    if-ge p0, v7, :cond_26

    goto :goto_1d

    :cond_26
    const/4 v4, 0x0

    :goto_1d
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 217
    iget-byte p0, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    sget-object p2, Lio/github/jaredmdobson/concentus/SilkTables;->silk_uniform4_iCDF:[S

    invoke-virtual {p1, p0, p2, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    return-void
.end method
