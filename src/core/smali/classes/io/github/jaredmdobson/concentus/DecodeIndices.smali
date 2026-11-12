.class Lio/github/jaredmdobson/concentus/DecodeIndices;
.super Ljava/lang/Object;
.source "DecodeIndices.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_decode_indices(Lio/github/jaredmdobson/concentus/SilkChannelDecoder;Lio/github/jaredmdobson/concentus/EntropyCoder;III)V
    .locals 8

    .line 46
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    new-array v0, v0, [S

    .line 47
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    new-array v1, v1, [S

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-nez p3, :cond_1

    .line 56
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->VAD_flags:[I

    aget p2, p3, p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    sget-object p2, Lio/github/jaredmdobson/concentus/SilkTables;->silk_type_offset_no_VAD_iCDF:[S

    invoke-virtual {p1, p2, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result p2

    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    sget-object p2, Lio/github/jaredmdobson/concentus/SilkTables;->silk_type_offset_VAD_iCDF:[S

    invoke-virtual {p1, p2, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result p2

    add-int/2addr p2, v2

    .line 61
    :goto_1
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    const/4 v4, 0x1

    invoke-static {p2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    .line 62
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    and-int/2addr p2, v4

    int-to-byte p2, p2

    iput-byte p2, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->quantOffsetType:B

    const/4 p2, 0x0

    if-ne p4, v2, :cond_2

    .line 74
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object p3, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    sget-object v5, Lio/github/jaredmdobson/concentus/SilkTables;->silk_delta_gain_iCDF:[S

    invoke-virtual {p1, v5, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, p3, p2

    goto :goto_2

    .line 77
    :cond_2
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object p3, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    sget-object v5, Lio/github/jaredmdobson/concentus/SilkTables;->silk_gain_iCDF:[[S

    iget-object v6, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v6, v6, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    aget-object v5, v5, v6

    invoke-virtual {p1, v5, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, p3, p2

    .line 78
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object p3, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    aget-byte v5, p3, p2

    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_uniform8_iCDF:[S

    invoke-virtual {p1, v6, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v6

    int-to-byte v6, v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, p2

    :goto_2
    const/4 p3, 0x1

    .line 82
    :goto_3
    iget v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    if-ge p3, v5, :cond_3

    .line 83
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object v5, v5, Lio/github/jaredmdobson/concentus/SideInfoIndices;->GainsIndices:[B

    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_delta_gain_iCDF:[S

    invoke-virtual {p1, v6, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 93
    :cond_3
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object p3, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    iget-object v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget-object v5, v5, Lio/github/jaredmdobson/concentus/NLSFCodebook;->CB1_iCDF:[S

    iget-object v6, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v6, v6, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    shr-int/2addr v6, v4

    iget-object v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget-short v7, v7, Lio/github/jaredmdobson/concentus/NLSFCodebook;->nVectors:S

    mul-int v6, v6, v7

    invoke-virtual {p1, v5, v6, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SII)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, p3, p2

    .line 94
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget-object v5, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object v5, v5, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    aget-byte v5, v5, p2

    invoke-static {v0, v1, p3, v5}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_unpack([S[SLio/github/jaredmdobson/concentus/NLSFCodebook;I)V

    .line 95
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget-short p3, p3, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->LPC_order:I

    if-ne p3, v1, :cond_4

    const/4 p3, 0x1

    goto :goto_4

    :cond_4
    const/4 p3, 0x0

    :goto_4
    invoke-static {p3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 p3, 0x0

    .line 96
    :goto_5
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget-short v1, v1, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    const/4 v5, 0x4

    if-ge p3, v1, :cond_7

    .line 97
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/NLSFCodebook;->ec_iCDF:[S

    aget-short v6, v0, p3

    invoke-virtual {p1, v1, v6, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SII)I

    move-result v1

    if-nez v1, :cond_5

    .line 99
    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_NLSF_EXT_iCDF:[S

    invoke-virtual {p1, v6, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v6

    sub-int/2addr v1, v6

    goto :goto_6

    :cond_5
    if-ne v1, v3, :cond_6

    .line 101
    sget-object v6, Lio/github/jaredmdobson/concentus/SilkTables;->silk_NLSF_EXT_iCDF:[S

    invoke-virtual {p1, v6, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v6

    add-int/2addr v1, v6

    .line 103
    :cond_6
    :goto_6
    iget-object v6, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object v6, v6, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    add-int/lit8 p3, p3, 0x1

    sub-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v6, p3

    goto :goto_5

    .line 107
    :cond_7
    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    if-ne p3, v5, :cond_8

    .line 108
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_NLSF_interpolation_factor_iCDF:[S

    invoke-virtual {p1, v0, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    goto :goto_7

    .line 110
    :cond_8
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-byte v5, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    .line 113
    :goto_7
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte p3, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    if-ne p3, v2, :cond_c

    if-ne p4, v2, :cond_9

    .line 123
    iget p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ec_prevSignalType:I

    if-ne p3, v2, :cond_9

    .line 125
    sget-object p3, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_delta_iCDF:[S

    invoke-virtual {p1, p3, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result p3

    int-to-short p3, p3

    if-lez p3, :cond_9

    add-int/lit8 p3, p3, -0x9

    .line 128
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-short v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ec_prevLagIndex:S

    add-int/2addr v1, p3

    int-to-short p3, v1

    iput-short p3, v0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    goto :goto_8

    .line 134
    :cond_9
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_pitch_lag_iCDF:[S

    invoke-virtual {p1, v0, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v0

    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->fs_kHz:I

    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    mul-int v0, v0, v1

    int-to-short v0, v0

    iput-short v0, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    .line 135
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-short v0, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->pitch_lag_low_bits_iCDF:[S

    invoke-virtual {p1, v1, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v1

    int-to-short v1, v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    .line 137
    :goto_8
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-short p3, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->lagIndex:S

    iput-short p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ec_prevLagIndex:S

    .line 140
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->pitch_contour_iCDF:[S

    invoke-virtual {p1, v0, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->contourIndex:B

    .line 150
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    sget-object v0, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LTP_per_index_iCDF:[S

    invoke-virtual {p1, v0, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    const/4 p3, 0x0

    .line 152
    :goto_9
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->nb_subfr:I

    if-ge p3, v0, :cond_a

    .line 153
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object v0, v0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTPIndex:[B

    sget-object v1, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LTP_gain_iCDF_ptrs:[[S

    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v2, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->PERIndex:B

    aget-object v1, v1, v2

    invoke-virtual {p1, v1, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_a
    if-nez p4, :cond_b

    .line 164
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    sget-object p3, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LTPscale_iCDF:[S

    invoke-virtual {p1, p3, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result p3

    int-to-byte p3, p3

    iput-byte p3, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTP_scaleIndex:B

    goto :goto_a

    .line 166
    :cond_b
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iput-byte p2, p3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->LTP_scaleIndex:B

    .line 169
    :cond_c
    :goto_a
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte p2, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    iput p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->ec_prevSignalType:I

    .line 178
    iget-object p0, p0, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    sget-object p2, Lio/github/jaredmdobson/concentus/SilkTables;->silk_uniform4_iCDF:[S

    invoke-virtual {p1, p2, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->Seed:B

    return-void
.end method
