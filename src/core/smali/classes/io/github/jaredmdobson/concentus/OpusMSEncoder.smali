.class public Lio/github/jaredmdobson/concentus/OpusMSEncoder;
.super Ljava/lang/Object;
.source "OpusMSEncoder.java"


# static fields
.field private static final diff_table:[I


# instance fields
.field private final MS_FRAME_TMP:I

.field application:Lio/github/jaredmdobson/concentus/OpusApplication;

.field bitrate_bps:I

.field encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

.field final layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

.field lfe_stream:I

.field preemph_mem:[I

.field final subframe_mem:[F

.field surround:I

.field variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

.field window_mem:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    .line 139
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->diff_table:[I

    return-void

    :array_0
    .array-data 4
        0x200
        0x12c
        0xa5
        0x57
        0x2d
        0x17
        0xb
        0x6
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>(II)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lio/github/jaredmdobson/concentus/ChannelLayout;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/ChannelLayout;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->lfe_stream:I

    .line 47
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusApplication;->OPUS_APPLICATION_AUDIO:Lio/github/jaredmdobson/concentus/OpusApplication;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    .line 48
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusFramesize;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    .line 49
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->surround:I

    .line 50
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->bitrate_bps:I

    const/4 v1, 0x3

    .line 51
    new-array v1, v1, [F

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->subframe_mem:[F

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    .line 53
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->window_mem:[I

    .line 54
    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->preemph_mem:[I

    const/16 v1, 0xef8

    .line 572
    iput v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->MS_FRAME_TMP:I

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    if-gt p2, p1, :cond_1

    if-ltz p2, :cond_1

    .line 61
    new-array v1, p1, [Lio/github/jaredmdobson/concentus/OpusEncoder;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    :goto_0
    if-ge v0, p1, :cond_0

    .line 63
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    new-instance v2, Lio/github/jaredmdobson/concentus/OpusEncoder;

    invoke-direct {v2}, Lio/github/jaredmdobson/concentus/OpusEncoder;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    sub-int/2addr p1, p2

    add-int/2addr v0, p1

    mul-int/lit8 p1, v0, 0x78

    .line 67
    new-array p1, p1, [I

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->window_mem:[I

    .line 68
    new-array p1, v0, [I

    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->preemph_mem:[I

    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid channel count in MS encoder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static Create(IIII[SLio/github/jaredmdobson/concentus/OpusApplication;)Lio/github/jaredmdobson/concentus/OpusMSEncoder;
    .locals 9
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

    .line 429
    new-instance v1, Lio/github/jaredmdobson/concentus/OpusMSEncoder;

    invoke-direct {v1, p2, p3}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;-><init>(II)V

    const/4 v8, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 430
    invoke-virtual/range {v1 .. v8}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->opus_multistream_encoder_init(IIII[SLio/github/jaredmdobson/concentus/OpusApplication;I)I

    move-result p0

    .line 431
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-eq p0, p1, :cond_1

    .line 432
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    if-ne p0, p1, :cond_0

    .line 433
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OPUS_BAD_ARG when creating MS encoder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 435
    :cond_0
    new-instance p1, Lio/github/jaredmdobson/concentus/OpusException;

    const-string p2, "Could not create MS encoder"

    invoke-direct {p1, p2, p0}, Lio/github/jaredmdobson/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    return-object v1

    .line 427
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid channel / stream configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static CreateSurround(IIILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SLio/github/jaredmdobson/concentus/OpusApplication;)Lio/github/jaredmdobson/concentus/OpusMSEncoder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/jaredmdobson/concentus/OpusException;
        }
    .end annotation

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    .line 486
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusApplication;->OPUS_APPLICATION_UNIMPLEMENTED:Lio/github/jaredmdobson/concentus/OpusApplication;

    if-eq p6, v0, :cond_2

    .line 489
    new-instance v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 490
    new-instance v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v3, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 491
    invoke-static {p1, p2, v0, v3}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->GetStreamCount(IILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)V

    .line 493
    new-instance v4, Lio/github/jaredmdobson/concentus/OpusMSEncoder;

    iget v0, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v3, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-direct {v4, v0, v3}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;-><init>(II)V

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object v0, v4

    move-object v4, p3

    .line 494
    invoke-virtual/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->opus_multistream_surround_encoder_init(IIILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SLio/github/jaredmdobson/concentus/OpusApplication;)I

    move-result v1

    .line 495
    sget v2, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-eq v1, v2, :cond_1

    .line 496
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    if-ne v1, v0, :cond_0

    .line 497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad argument passed to CreateSurround"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    new-instance v0, Lio/github/jaredmdobson/concentus/OpusException;

    const-string v2, "Could not create multistream encoder"

    invoke-direct {v0, v2, v1}, Lio/github/jaredmdobson/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    return-object v0

    .line 487
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid channel count or application"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static GetStreamCount(IILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    if-ne p0, v1, :cond_0

    .line 443
    iput v1, p2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 444
    iput v0, p3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    .line 446
    iput v1, p2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 447
    iput v1, p3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void

    .line 449
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "More than 2 channels requires custom mappings"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-ne p1, v1, :cond_3

    const/16 v2, 0x8

    if-gt p0, v2, :cond_3

    if-lt p0, v1, :cond_3

    .line 452
    sget-object p1, Lio/github/jaredmdobson/concentus/VorbisLayout;->vorbis_mappings:[Lio/github/jaredmdobson/concentus/VorbisLayout;

    sub-int/2addr p0, v1

    aget-object p1, p1, p0

    iget p1, p1, Lio/github/jaredmdobson/concentus/VorbisLayout;->nb_streams:I

    iput p1, p2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 453
    sget-object p1, Lio/github/jaredmdobson/concentus/VorbisLayout;->vorbis_mappings:[Lio/github/jaredmdobson/concentus/VorbisLayout;

    aget-object p0, p1, p0

    iget p0, p0, Lio/github/jaredmdobson/concentus/VorbisLayout;->nb_coupled_streams:I

    iput p0, p3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void

    :cond_3
    const/16 v1, 0xff

    if-ne p1, v1, :cond_4

    .line 455
    iput p0, p2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 456
    iput v0, p3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void

    .line 458
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid mapping family"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static channel_pos(I[I)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-ne p0, v4, :cond_0

    .line 108
    aput v2, p1, v0

    .line 109
    aput v3, p1, v2

    .line 110
    aput v2, p1, v1

    .line 111
    aput v3, p1, v3

    return-void

    :cond_0
    const/4 v5, 0x5

    if-eq p0, v3, :cond_4

    if-eq p0, v5, :cond_4

    const/4 v6, 0x6

    if-ne p0, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x7

    if-ne p0, v7, :cond_2

    .line 120
    aput v2, p1, v0

    .line 121
    aput v1, p1, v2

    .line 122
    aput v3, p1, v1

    .line 123
    aput v2, p1, v3

    .line 124
    aput v3, p1, v4

    .line 125
    aput v1, p1, v5

    .line 126
    aput v0, p1, v6

    return-void

    :cond_2
    const/16 v8, 0x8

    if-ne p0, v8, :cond_3

    .line 128
    aput v2, p1, v0

    .line 129
    aput v1, p1, v2

    .line 130
    aput v3, p1, v1

    .line 131
    aput v2, p1, v3

    .line 132
    aput v3, p1, v4

    .line 133
    aput v2, p1, v5

    .line 134
    aput v3, p1, v6

    .line 135
    aput v0, p1, v7

    :cond_3
    return-void

    .line 113
    :cond_4
    :goto_0
    aput v2, p1, v0

    .line 114
    aput v1, p1, v2

    .line 115
    aput v3, p1, v1

    .line 116
    aput v2, p1, v3

    .line 117
    aput v3, p1, v4

    .line 118
    aput v0, p1, v5

    return-void
.end method

.method static logSum(II)I
    .locals 4

    if-le p0, p1, :cond_0

    .line 154
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v0

    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result p1

    invoke-static {v0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->SUB32(II)I

    move-result p1

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v0

    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result p0

    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->SUB32(II)I

    move-result p0

    move v3, p1

    move p1, p0

    move p0, v3

    :goto_0
    const/16 v0, 0x2000

    if-lt p1, v0, :cond_1

    return p0

    :cond_1
    const/16 v0, 0x9

    .line 162
    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v1

    .line 163
    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result p1

    .line 164
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->diff_table:[I

    aget v2, v0, v1

    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    invoke-static {v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v0

    invoke-static {p1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static opus_copy_channel_in_short([SII[SIIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p7, :cond_0

    mul-int v1, v0, p2

    add-int/2addr v1, p1

    mul-int v2, v0, p5

    add-int/2addr v2, p6

    add-int/2addr v2, p4

    .line 775
    aget-short v2, p3, v2

    aput-short v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static surround_analysis(Lio/github/jaredmdobson/concentus/CeltMode;[SI[I[I[IIIII)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p4

    move/from16 v15, p6

    move/from16 v1, p7

    move/from16 v13, p8

    const/16 v2, 0x8

    .line 179
    new-array v6, v2, [I

    fill-array-data v6, :array_0

    const/4 v2, 0x1

    const/16 v3, 0x15

    .line 183
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v4

    const/4 v5, 0x3

    .line 184
    invoke-static {v5, v3}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v17

    .line 189
    invoke-static/range {p9 .. p9}, Lio/github/jaredmdobson/concentus/CeltCommon;->resampling_factor(I)I

    move-result v16

    mul-int v8, v15, v16

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 192
    :goto_0
    iget v11, v0, Lio/github/jaredmdobson/concentus/CeltMode;->maxLM:I

    if-ge v10, v11, :cond_1

    .line 193
    iget v11, v0, Lio/github/jaredmdobson/concentus/CeltMode;->shortMdctSize:I

    shl-int/2addr v11, v10

    if-ne v11, v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int v11, v8, v1

    .line 198
    new-array v11, v11, [I

    .line 199
    new-array v12, v15, [S

    .line 200
    invoke-static {v2, v8}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v18

    .line 202
    invoke-static {v13, v6}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->channel_pos(I[I)V

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v5, :cond_3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_2

    .line 206
    aget-object v19, v17, v14

    const/16 v20, -0x7000

    aput v20, v19, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x3

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_4
    const/4 v5, 0x2

    if-ge v14, v13, :cond_b

    move-object/from16 v19, v6

    mul-int v6, v14, v1

    .line 211
    invoke-static {v7, v6, v11, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v20, 0x0

    const/4 v9, 0x0

    move/from16 v21, v10

    const/4 v10, 0x1

    move-object/from16 v22, v11

    move/from16 v5, v21

    const/16 v23, 0x2

    move-object/from16 v11, p1

    move/from16 v21, v8

    move-object v8, v12

    move/from16 v12, p2

    .line 212
    invoke-static/range {v8 .. v15}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->opus_copy_channel_in_short([SII[SIIII)V

    move/from16 v24, v14

    .line 213
    new-instance v15, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    aget v9, p5, v24

    invoke-direct {v15, v9}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 214
    iget-object v14, v0, Lio/github/jaredmdobson/concentus/CeltMode;->preemph:[I

    move/from16 v13, v16

    const/16 v16, 0x0

    const/4 v12, 0x1

    move v10, v1

    move/from16 v11, v21

    move-object/from16 v9, v22

    move/from16 v1, p6

    invoke-static/range {v8 .. v16}, Lio/github/jaredmdobson/concentus/CeltCommon;->celt_preemphasis([S[IIIII[ILio/github/jaredmdobson/concentus/BoxedValueInt;I)V

    move-object/from16 v22, v8

    .line 215
    iget v8, v15, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput v8, p5, v24

    .line 217
    iget-object v8, v0, Lio/github/jaredmdobson/concentus/CeltMode;->mdct:Lio/github/jaredmdobson/concentus/MDCTLookup;

    aget-object v11, v18, v20

    move v10, v13

    iget-object v13, v0, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    iget v12, v0, Lio/github/jaredmdobson/concentus/CeltMode;->maxLM:I

    sub-int v15, v12, v5

    const/16 v16, 0x1

    move v12, v10

    const/4 v10, 0x0

    move v14, v12

    const/4 v12, 0x0

    move/from16 p9, v6

    move v6, v14

    move/from16 v3, v21

    move/from16 v14, p7

    invoke-static/range {v8 .. v16}, Lio/github/jaredmdobson/concentus/MDCT;->clt_mdct_forward(Lio/github/jaredmdobson/concentus/MDCTLookup;[II[II[IIII)V

    move v10, v14

    if-eq v6, v2, :cond_5

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v1, :cond_4

    .line 230
    aget-object v11, v18, v20

    aget v12, v11, v8

    mul-int v12, v12, v6

    aput v12, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_4
    :goto_6
    if-ge v8, v3, :cond_5

    .line 233
    aget-object v11, v18, v20

    aput v20, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_5
    move v11, v3

    const/16 v3, 0x15

    move-object v2, v4

    const/4 v8, 0x1

    const/4 v4, 0x1

    move-object/from16 v1, v18

    const/4 v12, 0x2

    const/16 v13, 0x15

    const/4 v14, 0x3

    .line 237
    invoke-static/range {v0 .. v5}, Lio/github/jaredmdobson/concentus/Bands;->compute_band_energies(Lio/github/jaredmdobson/concentus/CeltMode;[[I[[IIII)V

    move-object/from16 v16, v1

    move-object v15, v2

    move/from16 v21, v5

    .line 238
    aget-object v3, v15, v20

    mul-int/lit8 v5, v24, 0x15

    move v0, v6

    const/4 v6, 0x1

    const/16 v1, 0x15

    const/16 v2, 0x15

    move-object/from16 v4, p3

    move/from16 v25, p9

    move/from16 v18, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lio/github/jaredmdobson/concentus/QuantizeBands;->amp2Log2(Lio/github/jaredmdobson/concentus/CeltMode;II[I[III)V

    const/4 v2, 0x1

    :goto_7
    if-ge v2, v13, :cond_6

    add-int v0, v5, v2

    .line 241
    aget v1, p3, v0

    add-int/lit8 v3, v0, -0x1

    aget v3, p3, v3

    add-int/lit16 v3, v3, -0x400

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v1

    aput v1, p3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6
    const/16 v0, 0x13

    :goto_8
    if-ltz v0, :cond_7

    add-int v1, v5, v0

    .line 244
    aget v2, p3, v1

    add-int/lit8 v3, v1, 0x1

    aget v3, p3, v3

    add-int/lit16 v3, v3, -0x800

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v2

    aput v2, p3, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 246
    :cond_7
    aget v0, v19, v24

    if-ne v0, v8, :cond_8

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v13, :cond_a

    .line 248
    aget-object v1, v17, v20

    aget v2, v1, v0

    add-int v3, v5, v0

    aget v3, p3, v3

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->logSum(II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_8
    if-ne v0, v14, :cond_9

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v13, :cond_a

    .line 252
    aget-object v1, v17, v12

    aget v2, v1, v0

    add-int v3, v5, v0

    aget v3, p3, v3

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->logSum(II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_9
    if-ne v0, v12, :cond_a

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v13, :cond_a

    .line 256
    aget-object v1, v17, v20

    aget v2, v1, v0

    add-int v3, v5, v0

    aget v4, p3, v3

    add-int/lit16 v4, v4, -0x200

    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->logSum(II)I

    move-result v2

    aput v2, v1, v0

    .line 257
    aget-object v1, v17, v12

    aget v2, v1, v0

    aget v3, p3, v3

    add-int/lit16 v3, v3, -0x200

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->logSum(II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_a
    move/from16 v0, v25

    .line 260
    invoke-static {v9, v11, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v24, 0x1

    move/from16 v1, v18

    move-object/from16 v18, v16

    move/from16 v16, v1

    move/from16 v13, p8

    move v14, v0

    move v1, v10

    move v8, v11

    move-object v4, v15

    move-object/from16 v6, v19

    move/from16 v10, v21

    move-object/from16 v12, v22

    const/4 v2, 0x1

    const/16 v3, 0x15

    move-object/from16 v0, p0

    move/from16 v15, p6

    move-object v11, v9

    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v19, v6

    const/4 v8, 0x1

    const/4 v12, 0x2

    const/16 v13, 0x15

    const/4 v14, 0x3

    const/16 v20, 0x0

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v13, :cond_c

    .line 263
    aget-object v0, v17, v8

    aget-object v1, v17, v20

    aget v1, v1, v9

    aget-object v2, v17, v12

    aget v2, v2, v9

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result v1

    aput v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_c
    move/from16 v0, p8

    add-int/lit8 v1, v0, -0x1

    const v2, 0x8000

    .line 265
    div-int/2addr v2, v1

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->celt_log2(I)I

    move-result v1

    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->HALF16(I)I

    move-result v1

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v14, :cond_e

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v13, :cond_d

    .line 268
    aget-object v3, v17, v9

    aget v4, v3, v2

    add-int/2addr v4, v1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_e
    const/4 v9, 0x0

    :goto_f
    if-ge v9, v0, :cond_11

    .line 274
    aget v1, v19, v9

    if-eqz v1, :cond_f

    add-int/lit8 v1, v1, -0x1

    .line 275
    aget-object v1, v17, v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v13, :cond_10

    mul-int/lit8 v3, v9, 0x15

    add-int/2addr v3, v2

    .line 277
    aget v4, p3, v3

    aget v5, v1, v2

    sub-int/2addr v4, v5

    aput v4, p3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v13, :cond_10

    mul-int/lit8 v2, v9, 0x15

    add-int/2addr v2, v1

    .line 281
    aput v20, p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_11
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static validate_encoder_layout(Lio/github/jaredmdobson/concentus/ChannelLayout;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    :goto_0
    iget v2, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v1, v2, :cond_3

    .line 91
    iget v2, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_coupled_streams:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 92
    invoke-static {p0, v1, v3}, Lio/github/jaredmdobson/concentus/OpusMultistream;->get_left_channel(Lio/github/jaredmdobson/concentus/ChannelLayout;II)I

    move-result v2

    if-ne v2, v3, :cond_0

    return v0

    .line 95
    :cond_0
    invoke-static {p0, v1, v3}, Lio/github/jaredmdobson/concentus/OpusMultistream;->get_right_channel(Lio/github/jaredmdobson/concentus/ChannelLayout;II)I

    move-result v2

    if-ne v2, v3, :cond_2

    return v0

    .line 98
    :cond_1
    invoke-static {p0, v1, v3}, Lio/github/jaredmdobson/concentus/OpusMultistream;->get_mono_channel(Lio/github/jaredmdobson/concentus/ChannelLayout;II)I

    move-result v2

    if-ne v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public encodeMultistream([SII[BII)I
    .locals 9

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 799
    invoke-virtual/range {v0 .. v8}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->opus_multistream_encode_native([SII[BIIII)I

    move-result p1

    return p1
.end method

.method public getApplication()Lio/github/jaredmdobson/concentus/OpusApplication;
    .locals 2

    .line 836
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getApplication()Lio/github/jaredmdobson/concentus/OpusApplication;

    move-result-object v0

    return-object v0
.end method

.method public getBandwidth()Lio/github/jaredmdobson/concentus/OpusBandwidth;
    .locals 2

    .line 896
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getBandwidth()Lio/github/jaredmdobson/concentus/OpusBandwidth;

    move-result-object v0

    return-object v0
.end method

.method public getBitrate()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 811
    :goto_0
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v3, v3, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v3, :cond_0

    .line 812
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    add-int/lit8 v4, v2, 0x1

    aget-object v2, v3, v2

    .line 813
    invoke-virtual {v2}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getBitrate()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getComplexity()I
    .locals 2

    .line 936
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getComplexity()I

    move-result v0

    return v0
.end method

.method public getExpertFrameDuration()Lio/github/jaredmdobson/concentus/OpusFramesize;
    .locals 1

    .line 1149
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    return-object v0
.end method

.method public getFinalRange()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1097
    :goto_0
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v3, v3, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v3, :cond_0

    .line 1098
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    add-int/lit8 v4, v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getFinalRange()I

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getForceChannels()I
    .locals 2

    .line 856
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getForceChannels()I

    move-result v0

    return v0
.end method

.method public getForceMode()Lio/github/jaredmdobson/concentus/OpusMode;
    .locals 2

    .line 956
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getForceMode()Lio/github/jaredmdobson/concentus/OpusMode;

    move-result-object v0

    return-object v0
.end method

.method public getLSBDepth()I
    .locals 2

    .line 1109
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getLSBDepth()I

    move-result v0

    return v0
.end method

.method public getLookahead()I
    .locals 2

    .line 1076
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getLookahead()I

    move-result v0

    return v0
.end method

.method public getMaxBandwidth()Lio/github/jaredmdobson/concentus/OpusBandwidth;
    .locals 2

    .line 876
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getMaxBandwidth()Lio/github/jaredmdobson/concentus/OpusBandwidth;

    move-result-object v0

    return-object v0
.end method

.method public getMultistreamEncoderState(I)Lio/github/jaredmdobson/concentus/OpusEncoder;
    .locals 1

    .line 1168
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v0, v0, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge p1, v0, :cond_0

    .line 1171
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object p1, v0, p1

    return-object p1

    .line 1169
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requested stream doesn\'t exist"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPacketLossPercent()I
    .locals 2

    .line 996
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getPacketLossPercent()I

    move-result v0

    return v0
.end method

.method public getPredictionDisabled()Z
    .locals 2

    .line 1129
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getPredictionDisabled()Z

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 2

    .line 1085
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getSampleRate()I

    move-result v0

    return v0
.end method

.method public getSignalType()Lio/github/jaredmdobson/concentus/OpusSignal;
    .locals 2

    .line 1056
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getSignalType()Lio/github/jaredmdobson/concentus/OpusSignal;

    move-result-object v0

    return-object v0
.end method

.method public getUseConstrainedVBR()Z
    .locals 2

    .line 1036
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getUseConstrainedVBR()Z

    move-result v0

    return v0
.end method

.method public getUseDTX()Z
    .locals 2

    .line 916
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getUseDTX()Z

    move-result v0

    return v0
.end method

.method public getUseInbandFEC()Z
    .locals 2

    .line 976
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getUseInbandFEC()Z

    move-result v0

    return v0
.end method

.method public getUseVBR()Z
    .locals 2

    .line 1016
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getUseVBR()Z

    move-result v0

    return v0
.end method

.method opus_multistream_encode_native([SII[BIIII)I
    .locals 35

    move-object/from16 v0, p0

    move/from16 v1, p6

    const/16 v2, 0xef8

    .line 590
    new-array v7, v2, [B

    .line 591
    new-instance v8, Lio/github/jaredmdobson/concentus/OpusRepacketizer;

    invoke-direct {v8}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;-><init>()V

    const/16 v3, 0x100

    .line 594
    new-array v3, v3, [I

    const/16 v4, 0x2a

    .line 595
    new-array v4, v4, [I

    .line 602
    iget v5, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->surround:I

    if-eqz v5, :cond_0

    .line 603
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->preemph_mem:[I

    .line 604
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->window_mem:[I

    move-object v14, v5

    move-object v13, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    move-object v13, v5

    move-object v14, v13

    .line 608
    :goto_0
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getSampleRate()I

    move-result v5

    .line 609
    iget-object v9, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getUseVBR()Z

    move-result v25

    .line 610
    iget-object v9, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lio/github/jaredmdobson/concentus/OpusEncoder;->GetCeltMode()Lio/github/jaredmdobson/concentus/CeltMode;

    move-result-object v9

    .line 616
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v10, v10, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    iget-object v11, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v11, v11, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_coupled_streams:I

    add-int v19, v10, v11

    .line 617
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getLookahead()I

    move-result v10

    .line 618
    div-int/lit16 v11, v5, 0x190

    sub-int v22, v10, v11

    .line 619
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    iget v11, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->bitrate_bps:I

    iget-object v12, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->subframe_mem:[F

    iget-object v15, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v15, v15, v6

    iget-object v15, v15, Lio/github/jaredmdobson/concentus/OpusEncoder;->analysis:Lio/github/jaredmdobson/concentus/TonalityAnalysisState;

    iget-boolean v15, v15, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->enabled:Z

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v20, v5

    move-object/from16 v18, v10

    move/from16 v21, v11

    move-object/from16 v23, v12

    move/from16 v24, v15

    move-object/from16 v15, p1

    invoke-static/range {v15 .. v24}, Lio/github/jaredmdobson/concentus/CodecHelpers;->compute_frame_size([SIILio/github/jaredmdobson/concentus/OpusFramesize;IIII[FZ)I

    move-result v5

    move/from16 v10, v20

    mul-int/lit16 v11, v5, 0x190

    if-ge v11, v10, :cond_1

    .line 625
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1

    :cond_1
    if-eq v11, v10, :cond_2

    mul-int/lit16 v11, v5, 0xc8

    if-eq v11, v10, :cond_2

    mul-int/lit8 v11, v5, 0x64

    if-eq v11, v10, :cond_2

    mul-int/lit8 v11, v5, 0x32

    if-eq v11, v10, :cond_2

    mul-int/lit8 v12, v5, 0x19

    if-eq v12, v10, :cond_2

    mul-int/lit8 v12, v10, 0x3

    if-eq v11, v12, :cond_2

    .line 632
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1

    .line 636
    :cond_2
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v11, v11, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    const/16 v19, 0x1

    add-int/lit8 v11, v11, -0x1

    if-ge v1, v11, :cond_3

    .line 638
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v1

    :cond_3
    mul-int/lit8 v15, v5, 0x2

    .line 640
    new-array v15, v15, [S

    .line 642
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v12, v12, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    move/from16 v33, v5

    const/16 v5, 0x15

    mul-int/lit8 v12, v12, 0x15

    new-array v12, v12, [I

    .line 643
    iget v2, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->surround:I

    if-eqz v2, :cond_4

    .line 644
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v2, v2, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    const/16 v17, 0x2

    const/16 v16, 0x78

    move/from16 v17, v2

    move/from16 v18, v10

    move v6, v11

    move-object/from16 v26, v15

    move/from16 v15, v33

    const/4 v2, 0x2

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-static/range {v9 .. v18}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->surround_analysis(Lio/github/jaredmdobson/concentus/CeltMode;[SI[I[I[IIIII)V

    move/from16 v9, v18

    goto :goto_1

    :cond_4
    move v9, v10

    move v6, v11

    move-object/from16 v26, v15

    move/from16 v15, v33

    const/4 v2, 0x2

    :goto_1
    move-object/from16 v18, v12

    .line 648
    invoke-virtual {v0, v3, v15}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->surround_rate_allocation([II)I

    move-result v10

    const/4 v11, -0x1

    if-nez v25, :cond_6

    .line 651
    iget v12, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->bitrate_bps:I

    const/16 v13, -0x3e8

    if-ne v12, v13, :cond_5

    mul-int/lit8 v10, v10, 0x3

    mul-int/lit8 v6, v9, 0x18

    .line 652
    div-int/2addr v6, v15

    div-int/2addr v10, v6

    invoke-static {v1, v10}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v1

    goto :goto_2

    :cond_5
    if-eq v12, v11, :cond_6

    mul-int/lit8 v12, v12, 0x3

    mul-int/lit8 v10, v9, 0x18

    .line 654
    div-int/2addr v10, v15

    div-int/2addr v12, v10

    invoke-static {v6, v12}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v6

    invoke-static {v1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v1

    :cond_6
    :goto_2
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 659
    :goto_3
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v12, v12, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v6, v12, :cond_c

    .line 660
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v12, v12, v10

    add-int/lit8 v10, v10, 0x1

    .line 662
    aget v13, v3, v6

    invoke-virtual {v12, v13}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setBitrate(I)V

    .line 663
    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->surround:I

    if-eqz v13, :cond_b

    .line 665
    iget v13, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->bitrate_bps:I

    mul-int/lit8 v14, v15, 0x32

    if-ge v14, v9, :cond_7

    .line 667
    div-int v14, v9, v15

    add-int/lit8 v14, v14, -0x32

    mul-int/lit8 v14, v14, 0x3c

    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v5, v5, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    mul-int v14, v14, v5

    sub-int/2addr v13, v14

    .line 669
    :cond_7
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v5, v5, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    mul-int/lit16 v5, v5, 0x2710

    if-le v13, v5, :cond_8

    .line 670
    sget-object v5, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-virtual {v12, v5}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setBandwidth(Lio/github/jaredmdobson/concentus/OpusBandwidth;)V

    goto :goto_4

    .line 671
    :cond_8
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v5, v5, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    mul-int/lit16 v5, v5, 0x1b58

    if-le v13, v5, :cond_9

    .line 672
    sget-object v5, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-virtual {v12, v5}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setBandwidth(Lio/github/jaredmdobson/concentus/OpusBandwidth;)V

    goto :goto_4

    .line 673
    :cond_9
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v5, v5, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    mul-int/lit16 v5, v5, 0x1388

    if-le v13, v5, :cond_a

    .line 674
    sget-object v5, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-virtual {v12, v5}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setBandwidth(Lio/github/jaredmdobson/concentus/OpusBandwidth;)V

    goto :goto_4

    .line 676
    :cond_a
    sget-object v5, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-virtual {v12, v5}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setBandwidth(Lio/github/jaredmdobson/concentus/OpusBandwidth;)V

    .line 678
    :goto_4
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v5, v5, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_coupled_streams:I

    if-ge v6, v5, :cond_b

    .line 680
    sget-object v5, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    invoke-virtual {v12, v5}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setForceMode(Lio/github/jaredmdobson/concentus/OpusMode;)V

    .line 681
    invoke-virtual {v12, v2}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setForceChannels(I)V

    :cond_b
    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0x15

    goto :goto_3

    :cond_c
    move/from16 v22, p5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v23, 0x0

    .line 689
    :goto_5
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v6, v6, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v3, v6, :cond_18

    .line 695
    invoke-virtual {v8}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->Reset()V

    .line 696
    iget-object v6, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v6, v6, v5

    .line 697
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v10, v10, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_coupled_streams:I

    if-ge v3, v10, :cond_e

    .line 700
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    invoke-static {v10, v3, v11}, Lio/github/jaredmdobson/concentus/OpusMultistream;->get_left_channel(Lio/github/jaredmdobson/concentus/ChannelLayout;II)I

    move-result v32

    .line 701
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    invoke-static {v10, v3, v11}, Lio/github/jaredmdobson/concentus/OpusMultistream;->get_right_channel(Lio/github/jaredmdobson/concentus/ChannelLayout;II)I

    move-result v10

    .line 702
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v12, v12, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    const/16 v27, 0x0

    const/16 v28, 0x2

    move-object/from16 v29, p1

    move/from16 v30, p2

    move/from16 v31, v12

    move/from16 v33, v15

    invoke-static/range {v26 .. v33}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->opus_copy_channel_in_short([SII[SIIII)V

    move/from16 v12, v32

    .line 704
    iget-object v13, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v13, v13, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    const/16 v27, 0x1

    move/from16 v32, v10

    move/from16 v31, v13

    invoke-static/range {v26 .. v33}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->opus_copy_channel_in_short([SII[SIIII)V

    add-int/lit8 v5, v5, 0x1

    .line 707
    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->surround:I

    if-eqz v10, :cond_d

    const/4 v10, 0x0

    :goto_6
    const/16 v13, 0x15

    if-ge v10, v13, :cond_d

    mul-int/lit8 v13, v12, 0x15

    add-int/2addr v13, v10

    .line 709
    aget v13, v18, v13

    aput v13, v4, v10

    add-int/lit8 v13, v10, 0x15

    mul-int/lit8 v14, v32, 0x15

    add-int/2addr v14, v10

    .line 710
    aget v14, v18, v14

    aput v14, v4, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_d
    move v14, v12

    move/from16 v15, v32

    const/16 v13, 0x15

    goto :goto_8

    :cond_e
    move/from16 v33, v15

    .line 717
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    invoke-static {v10, v3, v11}, Lio/github/jaredmdobson/concentus/OpusMultistream;->get_mono_channel(Lio/github/jaredmdobson/concentus/ChannelLayout;II)I

    move-result v32

    .line 718
    iget-object v10, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v10, v10, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v29, p1

    move/from16 v30, p2

    move/from16 v31, v10

    invoke-static/range {v26 .. v33}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->opus_copy_channel_in_short([SII[SIIII)V

    add-int/lit8 v5, v5, 0x1

    .line 721
    iget v10, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->surround:I

    if-eqz v10, :cond_f

    const/4 v10, 0x0

    const/16 v13, 0x15

    :goto_7
    if-ge v10, v13, :cond_10

    mul-int/lit8 v12, v32, 0x15

    add-int/2addr v12, v10

    .line 723
    aget v12, v18, v12

    aput v12, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_f
    const/16 v13, 0x15

    :cond_10
    move/from16 v14, v32

    const/4 v15, -0x1

    :goto_8
    move/from16 v24, v5

    .line 729
    iget v5, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->surround:I

    if-eqz v5, :cond_11

    .line 730
    invoke-virtual {v6, v4}, Lio/github/jaredmdobson/concentus/OpusEncoder;->SetEnergyMask([I)V

    :cond_11
    sub-int v27, v1, v23

    .line 736
    iget-object v5, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v5, v5, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    const/4 v10, 0x0

    invoke-static {v10, v5}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v5

    sub-int v5, v27, v5

    const/16 v12, 0xef8

    .line 737
    invoke-static {v5, v12}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v5

    .line 739
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v2, v2, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    add-int/lit8 v2, v2, -0x1

    if-eq v3, v2, :cond_13

    const/16 v2, 0xfd

    if-le v5, v2, :cond_12

    const/4 v2, 0x2

    goto :goto_9

    :cond_12
    const/4 v2, 0x1

    :goto_9
    sub-int/2addr v5, v2

    :cond_13
    if-nez v25, :cond_14

    .line 742
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v2, v2, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_14

    mul-int/lit8 v2, v9, 0x8

    .line 743
    div-int v2, v2, v33

    mul-int v2, v2, v5

    invoke-virtual {v6, v2}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setBitrate(I)V

    .line 745
    :cond_14
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v2, v2, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    move/from16 v16, v9

    move v9, v5

    const/4 v5, 0x0

    move-object/from16 v17, v8

    const/4 v8, 0x0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v10, p7

    move/from16 p6, v1

    move/from16 v34, v3

    move-object/from16 v21, v4

    move-object v3, v6

    move-object/from16 v1, v17

    move-object/from16 v4, v26

    move/from16 v6, v33

    const/16 v28, -0x1

    const/16 v29, 0x15

    const/16 v30, 0xef8

    move/from16 v17, p8

    move/from16 v26, v16

    move/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual/range {v3 .. v17}, Lio/github/jaredmdobson/concentus/OpusEncoder;->opus_encode_native([SII[BIII[SIIIIII)I

    move-result v3

    if-gez v3, :cond_15

    return v3

    .line 753
    :cond_15
    invoke-virtual {v1, v7, v2, v3}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->addPacket([BII)I

    .line 754
    invoke-virtual {v1}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->getNumFrames()I

    move-result v10

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v3, v3, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v5, v34

    if-eq v5, v3, :cond_16

    const/4 v14, 0x1

    goto :goto_a

    :cond_16
    const/4 v14, 0x0

    :goto_a
    if-nez v25, :cond_17

    iget-object v3, v0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v3, v3, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    add-int/lit8 v3, v3, -0x1

    if-ne v5, v3, :cond_17

    const/4 v15, 0x1

    goto :goto_b

    :cond_17
    const/4 v15, 0x0

    :goto_b
    const/4 v9, 0x0

    move-object/from16 v11, p4

    move-object v8, v1

    move/from16 v12, v22

    move/from16 v13, v27

    invoke-virtual/range {v8 .. v15}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->opus_repacketizer_out_range_impl(II[BIIII)I

    move-result v1

    add-int v22, v12, v1

    add-int v23, v23, v1

    add-int/lit8 v3, v5, 0x1

    move/from16 v1, p6

    move/from16 v5, v24

    move/from16 v9, v26

    move/from16 v15, v33

    const/4 v2, 0x2

    const/4 v11, -0x1

    move-object/from16 v26, v4

    move-object/from16 v4, v21

    goto/16 :goto_5

    :cond_18
    return v23
.end method

.method opus_multistream_encoder_init(IIII[SLio/github/jaredmdobson/concentus/OpusApplication;I)I
    .locals 4

    const/16 v0, 0xff

    if-gt p2, v0, :cond_c

    const/4 v0, 0x1

    if-lt p2, v0, :cond_c

    if-gt p4, p3, :cond_c

    if-lt p3, v0, :cond_c

    if-ltz p4, :cond_c

    rsub-int v1, p4, 0xff

    if-le p3, v1, :cond_0

    goto/16 :goto_4

    .line 304
    :cond_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iput p2, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    .line 305
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iput p3, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    .line 306
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iput p4, p3, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_coupled_streams:I

    .line 307
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->subframe_mem:[F

    const/4 p4, 0x2

    const/4 v1, 0x0

    aput v1, p3, p4

    aput v1, p3, v0

    const/4 v2, 0x0

    aput v1, p3, v2

    if-nez p7, :cond_1

    const/4 p3, -0x1

    .line 309
    iput p3, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->lfe_stream:I

    :cond_1
    const/16 p3, -0x3e8

    .line 311
    iput p3, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->bitrate_bps:I

    .line 312
    iput-object p6, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->application:Lio/github/jaredmdobson/concentus/OpusApplication;

    .line 313
    sget-object p3, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_ARG:Lio/github/jaredmdobson/concentus/OpusFramesize;

    iput-object p3, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    const/4 p3, 0x0

    .line 314
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    if-ge p3, v1, :cond_2

    .line 315
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->mapping:[S

    aget-short v3, p5, p3

    aput-short v3, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 317
    :cond_2
    iget-object p3, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    invoke-static {p3}, Lio/github/jaredmdobson/concentus/OpusMultistream;->validate_layout(Lio/github/jaredmdobson/concentus/ChannelLayout;)I

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    invoke-static {p3}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->validate_encoder_layout(Lio/github/jaredmdobson/concentus/ChannelLayout;)I

    move-result p3

    if-nez p3, :cond_3

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    const/4 p5, 0x0

    .line 323
    :goto_1
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_coupled_streams:I

    if-ge p3, v1, :cond_6

    .line 324
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, p5

    invoke-virtual {v1, p1, p4, p6}, Lio/github/jaredmdobson/concentus/OpusEncoder;->opus_init_encoder(IILio/github/jaredmdobson/concentus/OpusApplication;)I

    move-result v1

    .line 325
    sget v3, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-eq v1, v3, :cond_4

    return v1

    .line 328
    :cond_4
    iget v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->lfe_stream:I

    if-ne p3, v1, :cond_5

    .line 329
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, p5

    invoke-virtual {v1, v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setIsLFE(Z)V

    :cond_5
    add-int/lit8 p5, p5, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 333
    :cond_6
    :goto_2
    iget-object p4, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget p4, p4, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge p3, p4, :cond_9

    .line 334
    iget-object p4, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object p4, p4, p5

    invoke-virtual {p4, p1, v0, p6}, Lio/github/jaredmdobson/concentus/OpusEncoder;->opus_init_encoder(IILio/github/jaredmdobson/concentus/OpusApplication;)I

    move-result p4

    .line 335
    iget v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->lfe_stream:I

    if-ne p3, v1, :cond_7

    .line 336
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, p5

    invoke-virtual {v1, v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setIsLFE(Z)V

    .line 338
    :cond_7
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-eq p4, v1, :cond_8

    return p4

    :cond_8
    add-int/lit8 p5, p5, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_9
    if-eqz p7, :cond_a

    .line 344
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->preemph_mem:[I

    invoke-static {p1, v2, p2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 345
    iget-object p1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->window_mem:[I

    mul-int/lit8 p2, p2, 0x78

    invoke-static {p1, v2, p2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 347
    :cond_a
    iput p7, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->surround:I

    .line 348
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    return p1

    .line 318
    :cond_b
    :goto_3
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1

    .line 301
    :cond_c
    :goto_4
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1
.end method

.method opus_multistream_surround_encoder_init(IIILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SLio/github/jaredmdobson/concentus/OpusApplication;)I
    .locals 11

    move-object/from16 v4, p5

    const/4 v5, 0x0

    .line 360
    iput v5, p4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 361
    iput v5, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 v6, 0xff

    if-gt p2, v6, :cond_9

    const/4 v7, 0x1

    if-ge p2, v7, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v8, -0x1

    .line 365
    iput v8, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->lfe_stream:I

    const/4 v8, 0x2

    if-nez p3, :cond_3

    if-ne p2, v7, :cond_1

    .line 368
    iput v7, p4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 369
    iput v5, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 370
    aput-short v5, p6, v5

    goto :goto_2

    :cond_1
    if-ne p2, v8, :cond_2

    .line 372
    iput v7, p4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 373
    iput v7, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 374
    aput-short v5, p6, v5

    .line 375
    aput-short v7, p6, v7

    goto :goto_2

    .line 377
    :cond_2
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_UNIMPLEMENTED:I

    return v1

    :cond_3
    if-ne p3, v7, :cond_5

    const/16 v9, 0x8

    if-gt p2, v9, :cond_5

    if-lt p2, v7, :cond_5

    .line 381
    sget-object v6, Lio/github/jaredmdobson/concentus/VorbisLayout;->vorbis_mappings:[Lio/github/jaredmdobson/concentus/VorbisLayout;

    add-int/lit8 v9, p2, -0x1

    aget-object v6, v6, v9

    iget v6, v6, Lio/github/jaredmdobson/concentus/VorbisLayout;->nb_streams:I

    iput v6, p4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 382
    sget-object v6, Lio/github/jaredmdobson/concentus/VorbisLayout;->vorbis_mappings:[Lio/github/jaredmdobson/concentus/VorbisLayout;

    aget-object v6, v6, v9

    iget v6, v6, Lio/github/jaredmdobson/concentus/VorbisLayout;->nb_coupled_streams:I

    iput v6, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_4

    .line 384
    sget-object v10, Lio/github/jaredmdobson/concentus/VorbisLayout;->vorbis_mappings:[Lio/github/jaredmdobson/concentus/VorbisLayout;

    aget-object v10, v10, v9

    iget-object v10, v10, Lio/github/jaredmdobson/concentus/VorbisLayout;->mapping:[S

    aget-short v10, v10, v6

    aput-short v10, p6, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x6

    if-lt p2, v6, :cond_6

    .line 387
    iget v6, p4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    sub-int/2addr v6, v7

    iput v6, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->lfe_stream:I

    goto :goto_2

    :cond_5
    if-ne p3, v6, :cond_8

    .line 391
    iput p2, p4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 392
    iput v5, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, p2, :cond_6

    int-to-short v9, v6

    .line 394
    aput-short v9, p6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    goto :goto_1

    .line 399
    :cond_6
    :goto_2
    iget v3, p4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v4, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-le p2, v8, :cond_7

    if-ne p3, v7, :cond_7

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->opus_multistream_encoder_init(IIII[SLio/github/jaredmdobson/concentus/OpusApplication;I)I

    move-result v1

    return v1

    .line 397
    :cond_8
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_UNIMPLEMENTED:I

    return v0

    .line 363
    :cond_9
    :goto_4
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0
.end method

.method public resetState()V
    .locals 4

    .line 76
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->subframe_mem:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 77
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->surround:I

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->preemph_mem:[I

    iget-object v2, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v2, v2, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 79
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->window_mem:[I

    iget-object v2, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v2, v2, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    mul-int/lit8 v2, v2, 0x78

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v2, v2, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v1, v2, :cond_1

    .line 83
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    add-int/lit8 v3, v0, 0x1

    aget-object v0, v2, v0

    .line 84
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->resetState()V

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setApplication(Lio/github/jaredmdobson/concentus/OpusApplication;)V
    .locals 2

    const/4 v0, 0x0

    .line 845
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 846
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setApplication(Lio/github/jaredmdobson/concentus/OpusApplication;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBandwidth(Lio/github/jaredmdobson/concentus/OpusBandwidth;)V
    .locals 2

    const/4 v0, 0x0

    .line 905
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 906
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setBandwidth(Lio/github/jaredmdobson/concentus/OpusBandwidth;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBitrate(I)V
    .locals 1

    if-gez p1, :cond_1

    const/16 v0, -0x3e8

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 825
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid bitrate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 827
    :cond_1
    :goto_0
    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->bitrate_bps:I

    return-void
.end method

.method public setComplexity(I)V
    .locals 2

    const/4 v0, 0x0

    .line 945
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 946
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setComplexity(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExpertFrameDuration(Lio/github/jaredmdobson/concentus/OpusFramesize;)V
    .locals 0

    .line 1158
    iput-object p1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->variable_duration:Lio/github/jaredmdobson/concentus/OpusFramesize;

    return-void
.end method

.method public setForceChannels(I)V
    .locals 2

    const/4 v0, 0x0

    .line 865
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 866
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setForceChannels(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setForceMode(Lio/github/jaredmdobson/concentus/OpusMode;)V
    .locals 2

    const/4 v0, 0x0

    .line 965
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 966
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setForceMode(Lio/github/jaredmdobson/concentus/OpusMode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLSBDepth(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1118
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 1119
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setLSBDepth(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaxBandwidth(Lio/github/jaredmdobson/concentus/OpusBandwidth;)V
    .locals 2

    const/4 v0, 0x0

    .line 885
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 886
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setMaxBandwidth(Lio/github/jaredmdobson/concentus/OpusBandwidth;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPacketLossPercent(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1005
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 1006
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setPacketLossPercent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPredictionDisabled(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1138
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 1139
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setPredictionDisabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSignalType(Lio/github/jaredmdobson/concentus/OpusSignal;)V
    .locals 2

    const/4 v0, 0x0

    .line 1065
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 1066
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setSignalType(Lio/github/jaredmdobson/concentus/OpusSignal;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseConstrainedVBR(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1045
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 1046
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setUseConstrainedVBR(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseDTX(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 925
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 926
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setUseDTX(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseInbandFEC(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 985
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 986
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setUseInbandFEC(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseVBR(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1025
    :goto_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v1, v1, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 1026
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/github/jaredmdobson/concentus/OpusEncoder;->setUseVBR(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method surround_rate_allocation([II)I
    .locals 7

    .line 520
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->encoders:[Lio/github/jaredmdobson/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 521
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusEncoder;->getSampleRate()I

    move-result v0

    .line 523
    iget v2, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->bitrate_bps:I

    iget-object v3, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v3, v3, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    const v4, 0x9c40

    mul-int v3, v3, v4

    if-le v2, v3, :cond_0

    const/16 v2, 0x4e20

    goto :goto_0

    .line 526
    :cond_0
    iget v2, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->bitrate_bps:I

    iget-object v3, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v3, v3, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    div-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 528
    :goto_0
    div-int v3, v0, p2

    add-int/lit8 v3, v3, -0x32

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    add-int/lit16 v3, v3, 0xdac

    .line 539
    iget v4, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->bitrate_bps:I

    const/16 v5, -0x3e8

    if-ne v4, v5, :cond_1

    mul-int/lit8 v4, v0, 0x3c

    .line 540
    div-int/2addr v4, p2

    add-int/2addr v0, v4

    goto :goto_2

    :cond_1
    const/4 p2, -0x1

    if-ne v4, p2, :cond_2

    const v0, 0x493e0

    goto :goto_2

    .line 548
    :cond_2
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->lfe_stream:I

    if-eq v0, p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 549
    :goto_1
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v0, v0, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_coupled_streams:I

    .line 550
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v4, v4, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, p2

    shl-int/lit8 v5, v4, 0x8

    mul-int/lit16 v6, v0, 0x200

    add-int/2addr v5, v6

    mul-int/lit8 v6, p2, 0x20

    add-int/2addr v5, v6

    .line 554
    iget v6, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->bitrate_bps:I

    mul-int p2, p2, v3

    sub-int/2addr v6, p2

    add-int/2addr v0, v4

    mul-int v0, v0, v2

    sub-int/2addr v6, v0

    mul-int/lit16 v6, v6, 0x100

    div-int v0, v6, v5

    :goto_2
    const/4 p2, 0x0

    .line 557
    :goto_3
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v4, v4, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    if-ge v1, v4, :cond_6

    .line 558
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->layout:Lio/github/jaredmdobson/concentus/ChannelLayout;

    iget v4, v4, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_coupled_streams:I

    if-ge v1, v4, :cond_4

    mul-int/lit16 v4, v0, 0x200

    shr-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v2

    .line 559
    aput v4, p1, v1

    goto :goto_4

    .line 560
    :cond_4
    iget v4, p0, Lio/github/jaredmdobson/concentus/OpusMSEncoder;->lfe_stream:I

    if-eq v1, v4, :cond_5

    add-int v4, v2, v0

    .line 561
    aput v4, p1, v1

    goto :goto_4

    :cond_5
    mul-int/lit8 v4, v0, 0x20

    shr-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v3

    .line 563
    aput v4, p1, v1

    .line 565
    :goto_4
    aget v4, p1, v1

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v4

    aput v4, p1, v1

    add-int/2addr p2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return p2
.end method
