.class public Lio/github/jaredmdobson/concentus/OpusRepacketizer;
.super Ljava/lang/Object;
.source "OpusRepacketizer.java"


# instance fields
.field final frames:[[B

.field framesize:I

.field final len:[S

.field nb_frames:I

.field toc:B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->toc:B

    .line 45
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->nb_frames:I

    const/16 v1, 0x30

    .line 46
    new-array v2, v1, [[B

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->frames:[[B

    .line 47
    new-array v1, v1, [S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    .line 48
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->framesize:I

    .line 74
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->Reset()V

    return-void
.end method

.method public static padMultistreamPacket([BIIII)I
    .locals 13

    move/from16 v1, p3

    .line 448
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueByte;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lio/github/jaredmdobson/concentus/BoxedValueByte;-><init>(B)V

    const/16 v3, 0x30

    .line 449
    new-array v7, v3, [S

    .line 450
    new-instance v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v10, v2}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 451
    new-instance v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v9, v2}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v11, 0x1

    if-ge p2, v11, :cond_0

    .line 455
    sget p0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return p0

    :cond_0
    if-ne p2, v1, :cond_1

    .line 458
    sget p0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    return p0

    :cond_1
    if-le p2, v1, :cond_2

    .line 460
    sget p0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return p0

    :cond_2
    sub-int v12, v1, p2

    move v1, p1

    move v2, p2

    const/4 p1, 0x0

    :goto_0
    add-int/lit8 v0, p4, -0x1

    if-ge p1, v0, :cond_5

    if-gtz v2, :cond_3

    .line 466
    sget p0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return p0

    :cond_3
    const/4 v5, 0x0

    .line 468
    move-object v0, v5

    check-cast v0, [[B

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->opus_packet_parse_impl([BIIILio/github/jaredmdobson/concentus/BoxedValueByte;[[BI[SILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)I

    move-result v3

    if-gez v3, :cond_4

    return v3

    .line 473
    :cond_4
    iget v3, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/2addr v1, v3

    .line 474
    iget v3, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    sub-int/2addr v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    add-int p1, v2, v12

    .line 476
    invoke-static {p0, v1, v2, p1}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->padPacket([BIII)I

    move-result p0

    return p0
.end method

.method public static padPacket([BIII)I
    .locals 8

    .line 376
    new-instance v0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;-><init>()V

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 379
    sget p0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return p0

    :cond_0
    if-ne p2, p3, :cond_1

    .line 382
    sget p0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    return p0

    :cond_1
    if-le p2, p3, :cond_2

    .line 384
    sget p0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return p0

    .line 386
    :cond_2
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->Reset()V

    add-int v1, p1, p3

    sub-int/2addr v1, p2

    .line 388
    invoke-static {p0, p1, v1, p2}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([BIII)V

    .line 390
    invoke-virtual {v0, p0, v1, p2}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->addPacket([BII)I

    .line 391
    iget v2, v0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->nb_frames:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->opus_repacketizer_out_range_impl(II[BIIII)I

    move-result p0

    if-lez p0, :cond_3

    .line 393
    sget p0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    :cond_3
    return p0
.end method

.method public static unpadMultistreamPacket([BIII)I
    .locals 22

    move/from16 v0, p3

    .line 499
    new-instance v5, Lio/github/jaredmdobson/concentus/BoxedValueByte;

    const/4 v12, 0x0

    invoke-direct {v5, v12}, Lio/github/jaredmdobson/concentus/BoxedValueByte;-><init>(B)V

    const/16 v1, 0x30

    .line 500
    new-array v8, v1, [S

    .line 501
    new-instance v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v11, v12}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 502
    new-instance v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v10, v12}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 503
    new-instance v13, Lio/github/jaredmdobson/concentus/OpusRepacketizer;

    invoke-direct {v13}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;-><init>()V

    const/4 v14, 0x1

    move/from16 v1, p2

    if-ge v1, v14, :cond_0

    .line 508
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0

    :cond_0
    move/from16 v2, p1

    move/from16 v17, v2

    move/from16 v18, v1

    const/4 v15, 0x0

    const/16 v21, 0x0

    :goto_0
    if-ge v15, v0, :cond_6

    if-eq v15, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v19, v1, -0x1

    if-gtz v18, :cond_2

    .line 517
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    .line 519
    :cond_2
    invoke-virtual {v13}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->Reset()V

    const/4 v6, 0x0

    .line 520
    move-object v1, v6

    check-cast v1, [[B

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static/range {v1 .. v11}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->opus_packet_parse_impl([BIIILio/github/jaredmdobson/concentus/BoxedValueByte;[[BI[SILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)I

    move-result v6

    if-gez v6, :cond_3

    return v6

    .line 525
    :cond_3
    iget v1, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move-object/from16 v3, p0

    invoke-virtual {v13, v3, v2, v1, v4}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->opus_repacketizer_cat_impl([BIII)I

    move-result v1

    if-gez v1, :cond_4

    return v1

    :cond_4
    move v1, v15

    .line 529
    iget v15, v13, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->nb_frames:I

    const/16 v20, 0x0

    const/4 v6, 0x1

    const/4 v14, 0x0

    move-object/from16 v16, v3

    move/from16 v19, v4

    invoke-virtual/range {v13 .. v20}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->opus_repacketizer_out_range_impl(II[BIIII)I

    move-result v3

    if-gez v3, :cond_5

    return v3

    :cond_5
    add-int v21, v21, v3

    add-int v17, v17, v3

    .line 536
    iget v3, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int/2addr v2, v3

    .line 537
    iget v3, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    sub-int v18, v18, v3

    add-int/lit8 v15, v1, 0x1

    const/4 v14, 0x1

    goto :goto_0

    :cond_6
    return v21
.end method

.method public static unpadPacket([BII)I
    .locals 9

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 415
    sget p0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return p0

    .line 418
    :cond_0
    new-instance v1, Lio/github/jaredmdobson/concentus/OpusRepacketizer;

    invoke-direct {v1}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;-><init>()V

    .line 419
    invoke-virtual {v1}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->Reset()V

    .line 420
    invoke-virtual {v1, p0, p1, p2}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->addPacket([BII)I

    move-result v2

    if-gez v2, :cond_1

    return v2

    .line 424
    :cond_1
    iget v3, v1, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->nb_frames:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->opus_repacketizer_out_range_impl(II[BIIII)I

    move-result p0

    if-lez p0, :cond_2

    if-gt p0, v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 425
    :goto_0
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return p0
.end method


# virtual methods
.method public Reset()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->nb_frames:I

    return-void
.end method

.method public addPacket([BII)I
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->opus_repacketizer_cat_impl([BIII)I

    move-result p1

    return p1
.end method

.method public createPacket(II[BII)I
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 328
    invoke-virtual/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->opus_repacketizer_out_range_impl(II[BIIII)I

    move-result p1

    return p1
.end method

.method public createPacket([BII)I
    .locals 8

    .line 357
    iget v2, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->nb_frames:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->opus_repacketizer_out_range_impl(II[BIIII)I

    move-result p1

    return p1
.end method

.method public getNumFrames()I
    .locals 1

    .line 167
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->nb_frames:I

    return v0
.end method

.method opus_repacketizer_cat_impl([BIII)I
    .locals 13

    .line 78
    new-instance v4, Lio/github/jaredmdobson/concentus/BoxedValueByte;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lio/github/jaredmdobson/concentus/BoxedValueByte;-><init>(B)V

    .line 79
    new-instance v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v9, v0}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v11, 0x1

    move/from16 v2, p3

    if-ge v2, v11, :cond_0

    .line 83
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return p1

    .line 86
    :cond_0
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->nb_frames:I

    if-nez v0, :cond_1

    .line 87
    aget-byte v0, p1, p2

    iput-byte v0, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->toc:B

    const/16 v0, 0x1f40

    .line 88
    invoke-static {p1, p2, v0}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->getNumSamplesPerFrame([BII)I

    move-result v0

    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->framesize:I

    goto :goto_0

    .line 89
    :cond_1
    iget-byte v0, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->toc:B

    and-int/lit16 v0, v0, 0xfc

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xfc

    if-eq v0, v1, :cond_2

    .line 91
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return p1

    .line 93
    :cond_2
    :goto_0
    invoke-static/range {p1 .. p3}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->getNumFrames([BII)I

    move-result v12

    if-ge v12, v11, :cond_3

    .line 95
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return p1

    .line 99
    :cond_3
    iget v6, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->nb_frames:I

    add-int v0, v12, v6

    iget v1, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->framesize:I

    mul-int v0, v0, v1

    const/16 v1, 0x3c0

    if-le v0, v1, :cond_4

    .line 100
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return p1

    .line 103
    :cond_4
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->frames:[[B

    iget-object v7, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    move v8, v6

    move-object v10, v9

    move-object v0, p1

    move v1, p2

    move/from16 v3, p4

    invoke-static/range {v0 .. v10}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->opus_packet_parse_impl([BIIILio/github/jaredmdobson/concentus/BoxedValueByte;[[BI[SILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)I

    move-result p1

    if-ge p1, v11, :cond_5

    return p1

    .line 108
    :cond_5
    iget p1, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->nb_frames:I

    add-int/2addr p1, v12

    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->nb_frames:I

    .line 109
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    return p1
.end method

.method opus_repacketizer_out_range_impl(II[BIIII)I
    .locals 13

    move-object/from16 v1, p3

    move/from16 v2, p5

    if-ltz p1, :cond_1d

    if-ge p1, p2, :cond_1d

    .line 176
    iget v3, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->nb_frames:I

    if-le p2, v3, :cond_0

    goto/16 :goto_11

    :cond_0
    sub-int v0, p2, p1

    const/16 v3, 0xfc

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p6, :cond_2

    .line 183
    iget-object v6, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    add-int/lit8 v7, v0, -0x1

    aget-short v6, v6, v7

    if-lt v6, v3, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    add-int/2addr v6, v5

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x2

    if-ne v0, v5, :cond_4

    .line 191
    iget-object v8, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    aget-short v8, v8, v4

    add-int/2addr v8, v5

    add-int/2addr v6, v8

    if-le v6, v2, :cond_3

    .line 193
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return p1

    :cond_3
    add-int/lit8 v8, p4, 0x1

    .line 195
    iget-byte v9, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->toc:B

    and-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v1, p4

    goto :goto_3

    :cond_4
    if-ne v0, v7, :cond_9

    .line 197
    iget-object v8, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    aget-short v9, v8, v5

    aget-short v8, v8, v4

    if-ne v9, v8, :cond_6

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    add-int/2addr v6, v8

    if-le v6, v2, :cond_5

    .line 201
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return p1

    :cond_5
    add-int/lit8 v8, p4, 0x1

    .line 203
    iget-byte v9, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->toc:B

    and-int/2addr v9, v3

    or-int/2addr v9, v5

    int-to-byte v9, v9

    aput-byte v9, v1, p4

    goto :goto_3

    :cond_6
    add-int/2addr v9, v8

    add-int/2addr v9, v7

    if-lt v8, v3, :cond_7

    const/4 v10, 0x1

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    :goto_2
    add-int/2addr v9, v10

    add-int/2addr v6, v9

    if-le v6, v2, :cond_8

    .line 208
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return p1

    :cond_8
    add-int/lit8 v9, p4, 0x1

    .line 210
    iget-byte v10, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->toc:B

    and-int/2addr v10, v3

    or-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, v1, p4

    .line 211
    invoke-static {v8, v1, v9}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->encode_size(I[BI)I

    move-result v8

    add-int/2addr v8, v9

    goto :goto_3

    :cond_9
    move/from16 v8, p4

    :goto_3
    if-gt v0, v7, :cond_a

    if-eqz p7, :cond_18

    if-ge v6, v2, :cond_18

    :cond_a
    if-eqz p6, :cond_c

    .line 222
    iget-object v6, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    add-int/lit8 v8, v0, -0x1

    aget-short v6, v6, v8

    if-lt v6, v3, :cond_b

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    :goto_4
    add-int/2addr v6, v5

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    :goto_5
    const/4 v8, 0x1

    :goto_6
    if-ge v8, v0, :cond_e

    .line 228
    iget-object v9, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    aget-short v10, v9, v8

    aget-short v9, v9, v4

    if-eq v10, v9, :cond_d

    const/4 v8, 0x1

    goto :goto_7

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_e
    const/4 v8, 0x0

    :goto_7
    if-eqz v8, :cond_12

    add-int/2addr v6, v7

    const/4 v7, 0x0

    :goto_8
    add-int/lit8 v9, v0, -0x1

    if-ge v7, v9, :cond_10

    .line 236
    iget-object v9, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    aget-short v9, v9, v7

    if-lt v9, v3, :cond_f

    const/4 v10, 0x1

    goto :goto_9

    :cond_f
    const/4 v10, 0x0

    :goto_9
    add-int/2addr v10, v5

    add-int/2addr v10, v9

    add-int/2addr v6, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 238
    :cond_10
    iget-object v7, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    aget-short v7, v7, v9

    add-int/2addr v6, v7

    if-le v6, v2, :cond_11

    .line 241
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return p1

    :cond_11
    add-int/lit8 v7, p4, 0x1

    .line 243
    iget-byte v9, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->toc:B

    and-int/2addr v3, v9

    or-int/lit8 v3, v3, 0x3

    int-to-byte v3, v3

    aput-byte v3, v1, p4

    add-int/lit8 v3, p4, 0x2

    or-int/lit16 v9, v0, 0x80

    int-to-byte v9, v9

    .line 244
    aput-byte v9, v1, v7

    goto :goto_a

    .line 246
    :cond_12
    iget-object v9, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    aget-short v9, v9, v4

    mul-int v9, v9, v0

    add-int/2addr v9, v7

    add-int/2addr v6, v9

    if-le v6, v2, :cond_13

    .line 248
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return p1

    :cond_13
    add-int/lit8 v7, p4, 0x1

    .line 250
    iget-byte v9, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->toc:B

    and-int/2addr v3, v9

    or-int/lit8 v3, v3, 0x3

    int-to-byte v3, v3

    aput-byte v3, v1, p4

    add-int/lit8 v3, p4, 0x2

    int-to-byte v9, v0

    .line 251
    aput-byte v9, v1, v7

    :goto_a
    if-eqz p7, :cond_14

    sub-int v7, v2, v6

    goto :goto_b

    :cond_14
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_16

    add-int/lit8 v9, p4, 0x1

    .line 258
    aget-byte v10, v1, v9

    or-int/lit8 v10, v10, 0x40

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    add-int/lit8 v9, v7, -0x1

    .line 259
    div-int/lit16 v9, v9, 0xff

    const/4 v10, 0x0

    :goto_c
    if-ge v10, v9, :cond_15

    add-int/lit8 v11, v3, 0x1

    const/4 v12, -0x1

    .line 261
    aput-byte v12, v1, v3

    add-int/lit8 v10, v10, 0x1

    move v3, v11

    goto :goto_c

    :cond_15
    add-int/lit8 v10, v3, 0x1

    mul-int/lit16 v9, v9, 0xff

    sub-int v9, v7, v9

    sub-int/2addr v9, v5

    int-to-byte v5, v9

    .line 264
    aput-byte v5, v1, v3

    add-int/2addr v6, v7

    goto :goto_d

    :cond_16
    move v10, v3

    :goto_d
    if-eqz v8, :cond_17

    move v8, v10

    const/4 v3, 0x0

    :goto_e
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_18

    .line 270
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    aget-short v5, v5, v3

    invoke-static {v5, v1, v8}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->encode_size(I[BI)I

    move-result v5

    add-int/2addr v8, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_17
    move v8, v10

    :cond_18
    if-eqz p6, :cond_19

    .line 276
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    add-int/lit8 v5, v0, -0x1

    aget-short v3, v3, v5

    invoke-static {v3, v1, v8}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->encode_size(I[BI)I

    move-result v3

    add-int/2addr v8, v3

    :cond_19
    move v3, p1

    :goto_f
    add-int v5, v0, p1

    if-ge v3, v5, :cond_1b

    .line 283
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->frames:[[B

    aget-object v5, v5, v3

    if-ne v1, v5, :cond_1a

    .line 286
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    aget-short v5, v5, v3

    invoke-static {v1, v4, v8, v5}, Lio/github/jaredmdobson/concentus/Arrays;->MemMove([BIII)V

    goto :goto_10

    .line 288
    :cond_1a
    iget-object v7, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    aget-short v7, v7, v3

    invoke-static {v5, v4, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    :goto_10
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/OpusRepacketizer;->len:[S

    aget-short v5, v5, v3

    add-int/2addr v8, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1b
    if-eqz p7, :cond_1c

    add-int p1, p4, v2

    sub-int/2addr p1, v8

    .line 295
    invoke-static {v1, v4, v8, p1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSetWithOffset([BBII)V

    :cond_1c
    return v6

    .line 178
    :cond_1d
    :goto_11
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1
.end method
