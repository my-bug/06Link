.class public Lio/github/jaredmdobson/concentus/CodecHelpers;
.super Ljava/lang/Object;
.source "CodecHelpers.java"


# static fields
.field private static final MAX_DYNAMIC_FRAMESIZE:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetVersionString()Ljava/lang/String;
    .locals 1

    .line 646
    const-string v0, "concentus 1.0a-java-fixed"

    return-object v0
.end method

.method static compute_frame_size([SIILio/github/jaredmdobson/concentus/OpusFramesize;IIII[FZ)I
    .locals 1

    if-eqz p9, :cond_0

    .line 414
    sget-object p9, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_VARIABLE:Lio/github/jaredmdobson/concentus/OpusFramesize;

    if-ne p3, p9, :cond_0

    div-int/lit16 p9, p5, 0xc8

    if-lt p2, p9, :cond_0

    move p3, p4

    move p4, p5

    move p5, p6

    const/4 p6, 0x0

    move-object v0, p8

    move p8, p7

    move-object p7, v0

    .line 416
    invoke-static/range {p0 .. p8}, Lio/github/jaredmdobson/concentus/CodecHelpers;->optimize_framesize([SIIIIII[FI)I

    move-result p0

    .line 418
    :goto_0
    div-int/lit16 p5, p4, 0x190

    shl-int p1, p5, p0

    if-le p1, p2, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    move-object p6, p3

    move p4, p5

    .line 423
    invoke-static {p2, p6, p4}, Lio/github/jaredmdobson/concentus/CodecHelpers;->frame_size_select(ILio/github/jaredmdobson/concentus/OpusFramesize;I)I

    move-result p1

    :cond_1
    if-gez p1, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    return p1
.end method

.method static compute_stereo_width([SIIILio/github/jaredmdobson/concentus/StereoWidthState;)I
    .locals 16

    move-object/from16 v0, p4

    .line 443
    div-int v1, p3, p2

    const/16 v2, 0x32

    .line 444
    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v2

    const v3, 0xc7fe7

    div-int/2addr v3, v2

    const/16 v2, 0x7fff

    rsub-int v3, v3, 0x7fff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v9, p2, -0x3

    if-ge v5, v9, :cond_0

    mul-int/lit8 v9, v5, 0x2

    add-int v9, p1, v9

    .line 452
    aget-short v10, p0, v9

    add-int/lit8 v11, v9, 0x1

    .line 453
    aget-short v11, p0, v11

    .line 454
    invoke-static {v10, v10}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v12

    .line 455
    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v10

    invoke-static {v10, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v10

    .line 456
    invoke-static {v11, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v11

    invoke-static {v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v11

    add-int/lit8 v14, v9, 0x2

    .line 457
    aget-short v14, p0, v14

    add-int/lit8 v15, v9, 0x3

    .line 458
    aget-short v15, p0, v15

    .line 459
    invoke-static {v14, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v12, v2

    .line 460
    invoke-static {v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v10, v2

    .line 461
    invoke-static {v15, v15}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v11, v2

    add-int/lit8 v2, v9, 0x4

    .line 462
    aget-short v2, p0, v2

    add-int/lit8 v14, v9, 0x5

    .line 463
    aget-short v14, p0, v14

    .line 464
    invoke-static {v2, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v15

    invoke-static {v15, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v15

    add-int/2addr v12, v15

    .line 465
    invoke-static {v2, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v10, v2

    .line 466
    invoke-static {v14, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v11, v2

    add-int/lit8 v2, v9, 0x6

    .line 467
    aget-short v2, p0, v2

    add-int/lit8 v9, v9, 0x7

    .line 468
    aget-short v9, p0, v9

    .line 469
    invoke-static {v2, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v14

    invoke-static {v14, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v14

    add-int/2addr v12, v14

    .line 470
    invoke-static {v2, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v10, v2

    .line 471
    invoke-static {v9, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v11, v2

    const/16 v2, 0xa

    .line 473
    invoke-static {v12, v2}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v9

    add-int/2addr v6, v9

    .line 474
    invoke-static {v10, v2}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v9

    add-int/2addr v7, v9

    .line 475
    invoke-static {v11, v2}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v8, v2

    add-int/lit8 v5, v5, 0x4

    const/16 v2, 0x7fff

    goto/16 :goto_0

    .line 478
    :cond_0
    iget v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XX:I

    iget v5, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XX:I

    sub-int/2addr v6, v5

    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XX:I

    .line 479
    iget v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XY:I

    iget v5, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XY:I

    sub-int/2addr v7, v5

    invoke-static {v3, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XY:I

    .line 480
    iget v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->YY:I

    iget v5, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->YY:I

    sub-int/2addr v8, v5

    invoke-static {v3, v8}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->YY:I

    .line 481
    iget v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XX:I

    invoke-static {v4, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v2

    iput v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XX:I

    .line 482
    iget v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XY:I

    invoke-static {v4, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v2

    iput v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XY:I

    .line 483
    iget v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->YY:I

    invoke-static {v4, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v2

    iput v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->YY:I

    .line 484
    iget v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XX:I

    iget v3, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->YY:I

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v2

    const/16 v3, 0xd2

    if-le v2, v3, :cond_1

    .line 485
    iget v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XX:I

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result v2

    .line 486
    iget v3, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->YY:I

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result v3

    .line 487
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result v4

    .line 488
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result v5

    .line 490
    iget v6, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XY:I

    mul-int v7, v2, v3

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result v6

    iput v6, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XY:I

    .line 491
    iget v6, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->XY:I

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v6, v2}, Lio/github/jaredmdobson/concentus/Inlines;->frac_div32(II)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v2

    sub-int v3, v4, v5

    .line 493
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->ABS16(I)I

    move-result v3

    const/16 v6, 0x7fff

    mul-int/lit16 v3, v3, 0x7fff

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    .line 494
    invoke-static {v2, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    sub-int/2addr v4, v2

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->celt_sqrt(I)I

    move-result v2

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    .line 496
    iget v3, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->smoothed_width:I

    iget v4, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->smoothed_width:I

    sub-int/2addr v2, v4

    div-int/2addr v2, v1

    add-int/2addr v3, v2

    iput v3, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->smoothed_width:I

    .line 498
    iget v2, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->max_follower:I

    const/16 v3, 0x28f

    div-int/2addr v3, v1

    sub-int/2addr v2, v3

    iget v1, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->smoothed_width:I

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v1

    iput v1, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->max_follower:I

    .line 505
    :cond_1
    iget v0, v0, Lio/github/jaredmdobson/concentus/StereoWidthState;->max_follower:I

    mul-int/lit8 v0, v0, 0x14

    const/16 v6, 0x7fff

    invoke-static {v6, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v0

    return v0
.end method

.method static dc_reject([SII[SI[IIII)V
    .locals 11

    move/from16 v0, p7

    mul-int/lit8 p2, p2, 0x3

    .line 106
    div-int p2, p8, p2

    invoke-static {p2}, Lio/github/jaredmdobson/concentus/Inlines;->celt_ilog2(I)I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    move/from16 v3, p6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    mul-int v5, v0, v4

    add-int/2addr v5, v2

    add-int v6, v5, p1

    .line 110
    aget-short v6, p0, v6

    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(S)I

    move-result v6

    const/16 v7, 0xf

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v6

    mul-int/lit8 v8, v2, 0x2

    .line 112
    aget v9, p5, v8

    sub-int v10, v6, v9

    sub-int/2addr v6, v9

    .line 113
    invoke-static {v6, p2}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v6

    add-int/2addr v9, v6

    aput v9, p5, v8

    add-int/lit8 v8, v8, 0x1

    .line 115
    aget v6, p5, v8

    sub-int v9, v10, v6

    sub-int/2addr v10, v6

    .line 116
    invoke-static {v10, p2}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v10

    add-int/2addr v6, v10

    aput v6, p5, v8

    add-int/2addr v5, p4

    .line 117
    invoke-static {v9, v7}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v6

    const/16 v7, 0x7fff

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SATURATE(II)I

    move-result v6

    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v6

    aput-short v6, p3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static frame_size_select(ILio/github/jaredmdobson/concentus/OpusFramesize;I)I
    .locals 4

    .line 386
    div-int/lit16 v0, p2, 0x190

    const/4 v1, -0x1

    if-ge p0, v0, :cond_0

    return v1

    .line 389
    :cond_0
    sget-object v2, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_ARG:Lio/github/jaredmdobson/concentus/OpusFramesize;

    if-ne p1, v2, :cond_1

    move p1, p0

    goto :goto_0

    .line 391
    :cond_1
    sget-object v2, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_VARIABLE:Lio/github/jaredmdobson/concentus/OpusFramesize;

    if-ne p1, v2, :cond_2

    .line 392
    div-int/lit8 p1, p2, 0x32

    goto :goto_0

    .line 393
    :cond_2
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/OpusFramesizeHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusFramesize;)I

    move-result v2

    sget-object v3, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_2_5_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/OpusFramesizeHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusFramesize;)I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 394
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/OpusFramesizeHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusFramesize;)I

    move-result v2

    sget-object v3, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_60_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/OpusFramesizeHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusFramesize;)I

    move-result v3

    if-gt v2, v3, :cond_5

    mul-int/lit8 v2, p2, 0x3

    .line 395
    div-int/lit8 v2, v2, 0x32

    invoke-static {p1}, Lio/github/jaredmdobson/concentus/OpusFramesizeHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusFramesize;)I

    move-result p1

    sget-object v3, Lio/github/jaredmdobson/concentus/OpusFramesize;->OPUS_FRAMESIZE_2_5_MS:Lio/github/jaredmdobson/concentus/OpusFramesize;

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/OpusFramesizeHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusFramesize;)I

    move-result v3

    sub-int/2addr p1, v3

    shl-int p1, v0, p1

    invoke-static {v2, p1}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result p1

    :goto_0
    if-le p1, p0, :cond_3

    return v1

    :cond_3
    mul-int/lit16 p0, p1, 0x190

    if-eq p0, p2, :cond_4

    mul-int/lit16 p0, p1, 0xc8

    if-eq p0, p2, :cond_4

    mul-int/lit8 p0, p1, 0x64

    if-eq p0, p2, :cond_4

    mul-int/lit8 p0, p1, 0x32

    if-eq p0, p2, :cond_4

    mul-int/lit8 v0, p1, 0x19

    if-eq v0, p2, :cond_4

    mul-int/lit8 p2, p2, 0x3

    if-eq p0, p2, :cond_4

    return v1

    :cond_4
    return p1

    :cond_5
    return v1
.end method

.method static gain_fade([SIIIIII[II)V
    .locals 7

    const v0, 0xbb80

    .line 164
    div-int/2addr v0, p8

    .line 165
    div-int/2addr p4, v0

    const/16 p8, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p6, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p4, :cond_1

    mul-int v3, v2, v0

    .line 169
    aget v3, p7, v3

    invoke-static {v3, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v3

    .line 170
    invoke-static {v3, p3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v4

    rsub-int v3, v3, 0x7fff

    invoke-static {v4, v3, p2}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v3

    invoke-static {v3, p8}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v3

    add-int v4, p1, v2

    .line 172
    aget-short v5, p0, v4

    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p4, :cond_1

    mul-int v4, v3, v0

    .line 177
    aget v4, p7, v4

    invoke-static {v4, v4}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v4

    .line 178
    invoke-static {v4, p3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v5

    rsub-int v4, v4, 0x7fff

    invoke-static {v5, v4, p2}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v4

    invoke-static {v4, p8}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, p1

    .line 180
    aget-short v6, p0, v5

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v6

    int-to-short v6, v6

    aput-short v6, p0, v5

    add-int/2addr v5, v2

    .line 181
    aget-short v6, p0, v5

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move p2, p4

    :goto_2
    if-ge p2, p5, :cond_2

    mul-int p7, p2, p6

    add-int/2addr p7, p1

    add-int/2addr p7, v1

    .line 187
    aget-short p8, p0, p7

    invoke-static {p3, p8}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p8

    int-to-short p8, p8

    aput-short p8, p0, p7

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p6, :cond_1

    return-void
.end method

.method static gen_toc(Lio/github/jaredmdobson/concentus/OpusMode;ILio/github/jaredmdobson/concentus/OpusBandwidth;I)B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x190

    if-ge p1, v2, :cond_0

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    sget-object p1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    const/4 v2, 0x2

    if-ne p0, p1, :cond_1

    .line 54
    invoke-static {p2}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result p0

    sget-object p1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {p1}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result p1

    sub-int/2addr p0, p1

    shl-int/lit8 p0, p0, 0x5

    :goto_1
    int-to-short p0, p0

    sub-int/2addr v1, v2

    :goto_2
    shl-int/lit8 p1, v1, 0x3

    int-to-short p1, p1

    or-int/2addr p0, p1

    int-to-short p0, p0

    goto :goto_3

    .line 56
    :cond_1
    sget-object p1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne p0, p1, :cond_3

    .line 57
    invoke-static {p2}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result p0

    sget-object p1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {p1}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result p1

    sub-int/2addr p0, p1

    if-gez p0, :cond_2

    const/4 p0, 0x0

    :cond_2
    shl-int/lit8 p0, p0, 0x5

    int-to-short p0, p0

    or-int/lit16 p0, p0, 0x80

    int-to-short p0, p0

    goto :goto_2

    .line 66
    :cond_3
    invoke-static {p2}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result p0

    sget-object p1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {p1}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result p1

    sub-int/2addr p0, p1

    shl-int/lit8 p0, p0, 0x4

    int-to-short p0, p0

    or-int/lit8 p0, p0, 0x60

    goto :goto_1

    :goto_3
    if-ne p3, v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    shl-int/lit8 p1, v0, 0x2

    int-to-short p1, p1

    or-int/2addr p0, p1

    int-to-short p0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method static hp_cutoff([SII[SI[IIII)V
    .locals 14

    move/from16 v0, p2

    const v1, 0xd42d2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 78
    :goto_0
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v1, 0x9a7

    .line 79
    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v0

    move/from16 v1, p8

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v0

    if-lez v0, :cond_1

    const v1, 0x8000

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    .line 80
    :cond_1
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v1, 0x1d7

    .line 82
    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v1

    const/high16 v2, 0x10000000

    sub-int/2addr v2, v1

    neg-int v1, v2

    .line 87
    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    .line 88
    filled-new-array {v2, v1, v2}, [I

    move-result-object v6

    const/4 v1, 0x6

    .line 91
    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    .line 92
    invoke-static {v0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v0

    const/high16 v2, 0x800000

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v0

    .line 93
    invoke-static {v1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWW(II)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v7

    const/4 v9, 0x0

    move-object v4, p0

    move v5, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v8, p5

    move/from16 v12, p6

    move/from16 v13, p7

    .line 95
    invoke-static/range {v4 .. v13}, Lio/github/jaredmdobson/concentus/Filters;->silk_biquad_alt([SI[I[I[II[SIII)V

    const/4 v0, 0x2

    if-ne v13, v0, :cond_2

    add-int/lit8 v5, p1, 0x1

    const/4 v9, 0x2

    add-int/lit8 v11, p4, 0x1

    move-object v4, p0

    move-object/from16 v10, p3

    move-object/from16 v8, p5

    move/from16 v12, p6

    .line 97
    invoke-static/range {v4 .. v13}, Lio/github/jaredmdobson/concentus/Filters;->silk_biquad_alt([SI[I[I[II[SIII)V

    :cond_2
    return-void
.end method

.method static optimize_framesize([SIIIIII[FI)I
    .locals 20

    const/16 v0, 0x1c

    .line 319
    new-array v0, v0, [F

    const/16 v1, 0x1b

    .line 320
    new-array v1, v1, [F

    move/from16 v2, p4

    .line 328
    div-int/lit16 v6, v2, 0x190

    .line 329
    new-array v4, v6, [I

    const/4 v11, 0x0

    .line 330
    aget v2, p7, v11

    aput v2, v0, v11

    .line 331
    aget v2, p7, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v2, v12

    div-float v2, v12, v2

    aput v2, v1, v11

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz p8, :cond_1

    mul-int/lit8 v2, v6, 0x2

    sub-int v2, v2, p8

    if-ltz v2, :cond_0

    if-gt v2, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 336
    :goto_0
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    sub-int v3, p2, v2

    .line 338
    aget v5, p7, v14

    aput v5, v0, v14

    .line 339
    aget v5, p7, v14

    add-float/2addr v5, v12

    div-float v5, v12, v5

    aput v5, v1, v14

    .line 340
    aget v5, p7, v13

    aput v5, v0, v13

    .line 341
    aget v5, p7, v13

    add-float/2addr v5, v12

    div-float v5, v12, v5

    aput v5, v1, v13

    const/4 v5, 0x3

    move v15, v2

    const/16 v16, 0x3

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 347
    :goto_1
    div-int/2addr v3, v6

    const/16 v2, 0x18

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v3

    const/4 v5, 0x0

    const/16 v17, 0x0

    :goto_2
    if-ge v5, v3, :cond_4

    mul-int v7, v5, v6

    add-int/2addr v7, v15

    const/4 v8, 0x0

    const/4 v9, -0x2

    move v10, v5

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move/from16 v18, v3

    move/from16 v19, v10

    const/16 p4, 0x0

    const/16 v11, 0x18

    move/from16 v3, p1

    move/from16 v10, p3

    .line 356
    invoke-static/range {v2 .. v10}, Lio/github/jaredmdobson/concentus/Downmix;->downmix_int([SI[IIIIIII)V

    if-nez v19, :cond_2

    .line 358
    aget v17, v4, p4

    :cond_2
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    if-ge v2, v6, :cond_3

    .line 361
    aget v5, v4, v2

    sub-int v7, v5, v17

    int-to-float v7, v7

    mul-float v7, v7, v7

    add-float/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    move/from16 v17, v5

    goto :goto_3

    :cond_3
    add-int v5, v19, v16

    .line 365
    aput v3, v0, v5

    div-float v2, v12, v3

    .line 366
    aput v2, v1, v5

    add-int/lit8 v5, v19, 0x1

    move/from16 v3, v18

    const/16 v2, 0x18

    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    move/from16 v18, v3

    move/from16 v19, v5

    const/16 p4, 0x0

    const/16 v11, 0x18

    add-int v5, v19, v16

    add-int/lit8 v2, v5, -0x1

    .line 371
    aget v2, v0, v2

    aput v2, v0, v5

    if-eqz p8, :cond_5

    add-int/lit8 v3, v18, 0x2

    .line 373
    invoke-static {v11, v3}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v3

    goto :goto_4

    :cond_5
    move/from16 v3, v18

    :goto_4
    const/high16 v2, 0x3f000000    # 0.5f

    move/from16 v4, p6

    int-to-float v4, v4

    mul-float v4, v4, v2

    add-float/2addr v4, v12

    mul-int/lit8 v2, p3, 0x3c

    add-int/lit8 v2, v2, 0x28

    int-to-float v2, v2

    mul-float v4, v4, v2

    float-to-int v2, v4

    move/from16 v4, p5

    .line 375
    div-int/lit16 v4, v4, 0x190

    invoke-static {v0, v1, v3, v2, v4}, Lio/github/jaredmdobson/concentus/CodecHelpers;->transient_viterbi([F[FIII)I

    move-result v1

    shl-int v2, v14, v1

    .line 376
    aget v3, v0, v2

    aput v3, p7, p4

    if-eqz p8, :cond_6

    add-int/lit8 v3, v2, 0x1

    .line 378
    aget v3, v0, v3

    aput v3, p7, v14

    add-int/2addr v2, v13

    .line 379
    aget v0, v0, v2

    aput v0, p7, v13

    :cond_6
    return v1
.end method

.method public static opus_strerror(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    .line 623
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "invalid argument"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "buffer too small"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "error"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "corrupted stream"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "request not implemented"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "invalid state"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "memory allocation failed"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    if-gtz p0, :cond_1

    const/4 v1, -0x7

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p0, p0

    .line 636
    aget-object p0, v0, p0

    return-object p0

    .line 634
    :cond_1
    :goto_0
    const-string/jumbo p0, "unknown error"

    return-object p0
.end method

.method static smooth_fade([SI[SI[SIII[II)V
    .locals 10

    move/from16 v0, p7

    const v1, 0xbb80

    .line 512
    div-int v1, v1, p9

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    move/from16 v4, p6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    mul-int v6, v5, v1

    .line 515
    aget v6, p8, v6

    invoke-static {v6, v6}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v6

    mul-int v7, v5, v0

    add-int v8, p5, v7

    add-int/2addr v8, v3

    add-int v9, p3, v7

    add-int/2addr v9, v3

    .line 516
    aget-short v9, p2, v9

    invoke-static {v6, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v9

    rsub-int v6, v6, 0x7fff

    add-int/2addr v7, p1

    add-int/2addr v7, v3

    aget-short v7, p0, v7

    invoke-static {v9, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    const/16 v7, 0xf

    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v6

    int-to-short v6, v6

    aput-short v6, p4, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static stereo_fade([SIIIII[II)V
    .locals 6

    const v0, 0xbb80

    .line 134
    div-int/2addr v0, p7

    .line 135
    div-int/2addr p3, v0

    rsub-int p1, p1, 0x7fff

    rsub-int p2, p2, 0x7fff

    const/4 p7, 0x0

    :goto_0
    if-ge p7, p3, :cond_0

    mul-int v1, p7, v0

    .line 141
    aget v1, p6, v1

    invoke-static {v1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v1

    .line 142
    invoke-static {v1, p2}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    rsub-int v1, v1, 0x7fff

    invoke-static {v2, v1, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v1

    mul-int v2, p7, p5

    .line 144
    aget-short v3, p0, v2

    add-int/lit8 v4, v2, 0x1

    aget-short v5, p0, v4

    sub-int/2addr v3, v5

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v3

    .line 145
    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v1

    .line 146
    aget-short v3, p0, v2

    sub-int/2addr v3, v1

    int-to-short v3, v3

    aput-short v3, p0, v2

    .line 147
    aget-short v2, p0, v4

    add-int/2addr v2, v1

    int-to-short v1, v2

    aput-short v1, p0, v4

    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p7, p4, :cond_1

    mul-int p1, p7, p5

    .line 151
    aget-short p3, p0, p1

    add-int/lit8 p6, p1, 0x1

    aget-short v0, p0, p6

    sub-int/2addr p3, v0

    invoke-static {p3}, Lio/github/jaredmdobson/concentus/Inlines;->HALF32(I)I

    move-result p3

    invoke-static {p3}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result p3

    .line 152
    invoke-static {p2, p3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p3

    .line 153
    aget-short v0, p0, p1

    sub-int/2addr v0, p3

    int-to-short v0, v0

    aput-short v0, p0, p1

    .line 154
    aget-short p1, p0, p6

    add-int/2addr p1, p3

    int-to-short p1, p1

    aput-short p1, p0, p6

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static transient_boost([FI[FII)F
    .locals 4

    const/4 v0, 0x1

    shl-int p3, v0, p3

    add-int/2addr p3, v0

    .line 202
    invoke-static {p4, p3}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result p3

    const/4 p4, 0x0

    move v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int v3, p3, p1

    if-ge v0, v3, :cond_0

    .line 204
    aget v3, p0, v0

    add-float/2addr v1, v3

    .line 205
    aget v3, p2, v0

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-float v1, v1, v2

    mul-int p3, p3, p3

    int-to-float p0, p3

    div-float/2addr v1, p0

    const/high16 p0, 0x40000000    # 2.0f

    sub-float/2addr v1, p0

    const p0, 0x3d4ccccd    # 0.05f

    mul-float v1, v1, p0

    .line 212
    invoke-static {p4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(FF)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MIN16(FF)F

    move-result p0

    return p0
.end method

.method static transient_viterbi([F[FIII)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    const/16 v4, 0x18

    const/16 v5, 0x10

    .line 237
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayFloat(II)[[F

    move-result-object v6

    .line 238
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v4

    const/16 v7, 0x50

    const/high16 v8, 0x3f800000    # 1.0f

    if-ge v3, v7, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/16 v7, 0xa0

    if-le v3, v7, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    int-to-float v7, v3

    const/high16 v9, 0x42a00000    # 80.0f

    sub-float/2addr v7, v9

    div-float/2addr v7, v9

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_2

    .line 255
    aget-object v11, v4, v9

    const/4 v12, -0x1

    aput v12, v11, v10

    .line 256
    aget-object v11, v6, v9

    const v12, 0x501502f9    # 1.0E10f

    aput v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x4

    const/4 v12, 0x1

    if-ge v10, v11, :cond_3

    .line 259
    aget-object v11, v6, v9

    shl-int/2addr v12, v10

    mul-int v13, v3, v12

    add-int v13, p3, v13

    int-to-float v13, v13

    add-int/lit8 v14, v2, 0x1

    invoke-static {v0, v9, v1, v10, v14}, Lio/github/jaredmdobson/concentus/CodecHelpers;->transient_boost([FI[FII)F

    move-result v14

    mul-float v14, v14, v7

    add-float/2addr v14, v8

    mul-float v13, v13, v14

    aput v13, v11, v12

    .line 260
    aget-object v11, v4, v9

    aput v10, v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    :goto_3
    const/4 v13, 0x2

    if-ge v10, v2, :cond_9

    :goto_4
    if-ge v13, v5, :cond_4

    .line 267
    aget-object v14, v6, v10

    add-int/lit8 v15, v10, -0x1

    aget-object v15, v6, v15

    add-int/lit8 v16, v13, -0x1

    aget v15, v15, v16

    aput v15, v14, v13

    .line 268
    aget-object v14, v4, v10

    aput v16, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    :goto_5
    if-ge v13, v11, :cond_8

    .line 276
    aget-object v14, v4, v10

    shl-int v15, v12, v13

    aput v12, v14, v15

    add-int/lit8 v14, v10, -0x1

    .line 277
    aget-object v16, v6, v14

    aget v16, v16, v12

    const/4 v8, 0x1

    const/high16 v17, 0x3f800000    # 1.0f

    :cond_5
    :goto_6
    if-ge v8, v11, :cond_6

    .line 279
    aget-object v18, v6, v14

    add-int/lit8 v8, v8, 0x1

    shl-int v19, v12, v8

    add-int/lit8 v19, v19, -0x1

    aget v18, v18, v19

    cmpg-float v20, v18, v16

    if-gez v20, :cond_5

    .line 281
    aget-object v16, v4, v10

    aput v19, v16, v15

    move/from16 v16, v18

    goto :goto_6

    :cond_6
    mul-int v8, v3, v15

    add-int v8, p3, v8

    int-to-float v8, v8

    sub-int v14, v2, v10

    add-int/lit8 v9, v14, 0x1

    .line 285
    invoke-static {v0, v10, v1, v13, v9}, Lio/github/jaredmdobson/concentus/CodecHelpers;->transient_boost([FI[FII)F

    move-result v9

    mul-float v9, v9, v7

    add-float v9, v9, v17

    mul-float v8, v8, v9

    .line 286
    aget-object v9, v6, v10

    aput v16, v9, v15

    if-ge v14, v15, :cond_7

    int-to-float v14, v14

    mul-float v8, v8, v14

    int-to-float v14, v15

    div-float/2addr v8, v14

    add-float v16, v16, v8

    .line 289
    aput v16, v9, v15

    goto :goto_7

    :cond_7
    add-float v16, v16, v8

    .line 291
    aput v16, v9, v15

    :goto_7
    add-int/lit8 v13, v13, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    goto :goto_5

    :cond_8
    const/high16 v17, 0x3f800000    # 1.0f

    add-int/lit8 v10, v10, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v2, -0x1

    .line 297
    aget-object v1, v6, v0

    aget v1, v1, v12

    :goto_8
    if-ge v13, v5, :cond_b

    .line 300
    aget-object v2, v6, v0

    aget v2, v2, v13

    cmpg-float v3, v2, v1

    if-gez v3, :cond_a

    move v1, v2

    move v12, v13

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    if-ltz v0, :cond_c

    .line 309
    aget-object v1, v4, v0

    aget v12, v1, v12

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_c
    return v12
.end method
