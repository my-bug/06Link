.class public Lio/github/jaredmdobson/concentus/OpusPacketInfo;
.super Ljava/lang/Object;
.source "OpusPacketInfo.java"


# instance fields
.field public Frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public PayloadOffset:I

.field public TOCByte:B


# direct methods
.method private constructor <init>(BLjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Byte;",
            ">;I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-byte p1, p0, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->TOCByte:B

    .line 65
    iput-object p2, p0, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->Frames:Ljava/util/List;

    .line 66
    iput p3, p0, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->PayloadOffset:I

    return-void
.end method

.method static encode_size(I[BI)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xfc

    if-ge p0, v1, :cond_0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 274
    aput-byte p0, p1, p2

    return v0

    :cond_0
    and-int/lit8 v2, p0, 0x3

    add-int/2addr v2, v1

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 278
    aput-byte v1, p1, p2

    add-int/2addr p2, v0

    sub-int/2addr p0, v2

    const/4 v0, 0x2

    shr-int/2addr p0, v0

    int-to-byte p0, p0

    .line 279
    aput-byte p0, p1, p2

    return v0
.end method

.method public static getBandwidth([BI)Lio/github/jaredmdobson/concentus/OpusBandwidth;
    .locals 3

    .line 149
    aget-byte v0, p0, p1

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    .line 150
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v0

    aget-byte p0, p0, p1

    shr-int/lit8 p0, p0, 0x5

    and-int/lit8 p0, p0, 0x3

    add-int/2addr v0, p0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetBandwidth(I)Lio/github/jaredmdobson/concentus/OpusBandwidth;

    move-result-object p0

    .line 151
    sget-object p1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne p0, p1, :cond_0

    .line 152
    sget-object p0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    :cond_0
    return-object p0

    :cond_1
    and-int/lit8 v1, v0, 0x60

    const/16 v2, 0x60

    if-ne v1, v2, :cond_3

    and-int/lit8 p0, v0, 0x10

    if-eqz p0, :cond_2

    .line 155
    sget-object p0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    return-object p0

    :cond_2
    sget-object p0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    return-object p0

    .line 158
    :cond_3
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v0

    aget-byte p0, p0, p1

    shr-int/lit8 p0, p0, 0x5

    and-int/lit8 p0, p0, 0x3

    add-int/2addr v0, p0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetBandwidth(I)Lio/github/jaredmdobson/concentus/OpusBandwidth;

    move-result-object p0

    return-object p0
.end method

.method public static getEncoderMode([BI)Lio/github/jaredmdobson/concentus/OpusMode;
    .locals 0

    .line 262
    aget-byte p0, p0, p1

    and-int/lit16 p1, p0, 0x80

    if-eqz p1, :cond_0

    .line 263
    sget-object p0, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    return-object p0

    :cond_0
    const/16 p1, 0x60

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    .line 265
    sget-object p0, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    return-object p0

    .line 267
    :cond_1
    sget-object p0, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    return-object p0
.end method

.method public static getNumEncodedChannels([BI)I
    .locals 0

    .line 171
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getNumFrames([BII)I
    .locals 4

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 191
    sget p0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return p0

    .line 193
    :cond_0
    aget-byte v1, p0, p1

    const/4 v2, 0x3

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    if-ge p2, v3, :cond_3

    .line 199
    sget p0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return p0

    :cond_3
    add-int/2addr p1, v0

    .line 201
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method public static getNumSamples(Lio/github/jaredmdobson/concentus/OpusDecoder;[BII)I
    .locals 0

    .line 250
    iget p0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Fs:I

    invoke-static {p1, p2, p3, p0}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->getNumSamples([BIII)I

    move-result p0

    return p0
.end method

.method public static getNumSamples([BIII)I
    .locals 0

    .line 217
    invoke-static {p0, p1, p2}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->getNumFrames([BII)I

    move-result p2

    if-gez p2, :cond_0

    return p2

    .line 223
    :cond_0
    invoke-static {p0, p1, p3}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->getNumSamplesPerFrame([BII)I

    move-result p0

    mul-int p2, p2, p0

    mul-int/lit8 p0, p2, 0x19

    mul-int/lit8 p3, p3, 0x3

    if-le p0, p3, :cond_1

    .line 226
    sget p0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return p0

    :cond_1
    return p2
.end method

.method public static getNumSamplesPerFrame([BII)I
    .locals 2

    .line 119
    aget-byte p0, p0, p1

    and-int/lit16 p1, p0, 0x80

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    shr-int/2addr p0, v0

    and-int/2addr p0, v0

    shl-int p0, p2, p0

    .line 121
    div-int/lit16 p0, p0, 0x190

    return p0

    :cond_0
    and-int/lit8 p1, p0, 0x60

    const/16 v1, 0x60

    if-ne p1, v1, :cond_2

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    .line 123
    div-int/lit8 p2, p2, 0x32

    return p2

    :cond_1
    div-int/lit8 p2, p2, 0x64

    return p2

    :cond_2
    shr-int/2addr p0, v0

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_3

    mul-int/lit8 p2, p2, 0x3c

    .line 127
    div-int/lit16 p2, p2, 0x3e8

    return p2

    :cond_3
    shl-int p0, p2, p0

    .line 129
    div-int/lit8 p0, p0, 0x64

    return p0
.end method

.method static opus_packet_parse_impl([BIIILio/github/jaredmdobson/concentus/BoxedValueByte;[[BI[SILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    const/4 v5, 0x0

    .line 313
    iput-byte v5, v2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    .line 314
    iput v5, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 315
    iput v5, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-eqz p7, :cond_21

    if-gez p2, :cond_0

    goto/16 :goto_e

    :cond_0
    if-nez p2, :cond_1

    .line 321
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_1
    const v6, 0xbb80

    .line 324
    invoke-static {v0, v1, v6}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->getNumSamplesPerFrame([BII)I

    move-result v6

    add-int/lit8 v7, v1, 0x1

    .line 327
    aget-byte v8, v0, v1

    add-int/lit8 v9, p2, -0x1

    and-int/lit8 v10, v8, 0x3

    const/4 v11, 0x1

    if-eqz v10, :cond_17

    const/4 v12, 0x2

    if-eq v10, v11, :cond_14

    if-eq v10, v12, :cond_11

    if-ge v9, v11, :cond_2

    .line 365
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_2
    add-int/lit8 v10, v1, 0x2

    .line 368
    aget-byte v7, v0, v7

    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->SignedByteToUnsignedInt(B)I

    move-result v7

    and-int/lit8 v12, v7, 0x3f

    if-lez v12, :cond_10

    mul-int v6, v6, v12

    const/16 v13, 0x1680

    if-le v6, v13, :cond_3

    goto/16 :goto_7

    :cond_3
    add-int/lit8 v6, p2, -0x2

    and-int/lit8 v13, v7, 0x40

    if-eqz v13, :cond_7

    const/4 v13, 0x0

    :goto_0
    if-gtz v6, :cond_4

    .line 380
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_4
    add-int/lit8 v14, v10, 0x1

    .line 382
    aget-byte v10, v0, v10

    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->SignedByteToUnsignedInt(B)I

    move-result v10

    add-int/lit8 v6, v6, -0x1

    const/16 v15, 0xff

    if-ne v10, v15, :cond_5

    const/16 v16, 0xfe

    goto :goto_1

    :cond_5
    move/from16 v16, v10

    :goto_1
    sub-int v6, v6, v16

    add-int v13, v13, v16

    if-eq v10, v15, :cond_6

    move v10, v14

    goto :goto_2

    :cond_6
    move v10, v14

    goto :goto_0

    :cond_7
    const/4 v13, 0x0

    :goto_2
    if-gez v6, :cond_8

    .line 390
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_8
    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    const/4 v7, 0x1

    :goto_3
    if-nez v7, :cond_d

    move v9, v6

    const/4 v14, 0x0

    :goto_4
    add-int/lit8 v15, v12, -0x1

    if-ge v14, v15, :cond_c

    .line 398
    new-instance v15, Lio/github/jaredmdobson/concentus/BoxedValueShort;

    add-int v16, p8, v14

    const/16 v17, 0x1

    aget-short v11, p7, v16

    invoke-direct {v15, v11}, Lio/github/jaredmdobson/concentus/BoxedValueShort;-><init>(S)V

    .line 399
    invoke-static {v0, v10, v6, v15}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->parse_size([BIILio/github/jaredmdobson/concentus/BoxedValueShort;)I

    move-result v11

    .line 400
    iget-short v15, v15, Lio/github/jaredmdobson/concentus/BoxedValueShort;->Val:S

    aput-short v15, p7, v16

    sub-int/2addr v6, v11

    if-ltz v15, :cond_b

    if-le v15, v6, :cond_a

    goto :goto_5

    :cond_a
    add-int/2addr v10, v11

    add-int/2addr v11, v15

    sub-int/2addr v9, v11

    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x1

    goto :goto_4

    .line 403
    :cond_b
    :goto_5
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_c
    const/16 v17, 0x1

    if-gez v9, :cond_f

    .line 409
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_d
    const/16 v17, 0x1

    if-nez p3, :cond_f

    .line 413
    div-int v9, v6, v12

    mul-int v11, v9, v12

    if-eq v11, v6, :cond_e

    .line 415
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_e
    const/4 v11, 0x0

    :goto_6
    add-int/lit8 v14, v12, -0x1

    if-ge v11, v14, :cond_f

    add-int v14, p8, v11

    int-to-short v15, v9

    .line 418
    aput-short v15, p7, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_f
    move/from16 v18, v10

    move v10, v6

    move v6, v7

    move/from16 v7, v18

    goto :goto_a

    .line 371
    :cond_10
    :goto_7
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_11
    const/16 v17, 0x1

    .line 351
    new-instance v6, Lio/github/jaredmdobson/concentus/BoxedValueShort;

    aget-short v10, p7, p8

    invoke-direct {v6, v10}, Lio/github/jaredmdobson/concentus/BoxedValueShort;-><init>(S)V

    .line 352
    invoke-static {v0, v7, v9, v6}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->parse_size([BIILio/github/jaredmdobson/concentus/BoxedValueShort;)I

    move-result v10

    .line 353
    iget-short v6, v6, Lio/github/jaredmdobson/concentus/BoxedValueShort;->Val:S

    aput-short v6, p7, p8

    sub-int/2addr v9, v10

    if-ltz v6, :cond_13

    if-le v6, v9, :cond_12

    goto :goto_8

    :cond_12
    add-int/2addr v7, v10

    sub-int v6, v9, v6

    move v10, v9

    const/4 v13, 0x0

    move v9, v6

    const/4 v6, 0x0

    goto :goto_a

    .line 356
    :cond_13
    :goto_8
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_14
    const/16 v17, 0x1

    if-nez p3, :cond_16

    and-int/lit8 v6, v9, 0x1

    if-eqz v6, :cond_15

    .line 341
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    .line 343
    :cond_15
    div-int/lit8 v6, v9, 0x2

    int-to-short v10, v6

    .line 345
    aput-short v10, p7, p8

    move v10, v9

    const/4 v13, 0x0

    move v9, v6

    const/4 v6, 0x1

    goto :goto_a

    :cond_16
    move v10, v9

    const/4 v6, 0x1

    goto :goto_9

    :cond_17
    const/16 v17, 0x1

    move v10, v9

    const/4 v6, 0x0

    const/4 v12, 0x1

    :goto_9
    const/4 v13, 0x0

    :goto_a
    if-eqz p3, :cond_1c

    .line 426
    new-instance v11, Lio/github/jaredmdobson/concentus/BoxedValueShort;

    add-int v14, p8, v12

    add-int/lit8 v14, v14, -0x1

    aget-short v15, p7, v14

    invoke-direct {v11, v15}, Lio/github/jaredmdobson/concentus/BoxedValueShort;-><init>(S)V

    .line 427
    invoke-static {v0, v7, v10, v11}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->parse_size([BIILio/github/jaredmdobson/concentus/BoxedValueShort;)I

    move-result v15

    .line 428
    iget-short v11, v11, Lio/github/jaredmdobson/concentus/BoxedValueShort;->Val:S

    aput-short v11, p7, v14

    sub-int/2addr v10, v15

    if-ltz v11, :cond_1b

    if-le v11, v10, :cond_18

    goto :goto_c

    :cond_18
    add-int/2addr v7, v15

    if-eqz v6, :cond_1a

    mul-int v11, v11, v12

    if-le v11, v10, :cond_19

    .line 437
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_19
    const/4 v6, 0x0

    :goto_b
    add-int/lit8 v9, v12, -0x1

    if-ge v6, v9, :cond_1e

    add-int v9, p8, v6

    .line 440
    aget-short v10, p7, v14

    aput-short v10, p7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_1a
    add-int/2addr v15, v11

    if-le v15, v9, :cond_1e

    .line 443
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    .line 431
    :cond_1b
    :goto_c
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_1c
    const/16 v6, 0x4fb

    if-le v9, v6, :cond_1d

    .line 450
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_1d
    add-int v6, p8, v12

    add-int/lit8 v6, v6, -0x1

    int-to-short v9, v9

    .line 452
    aput-short v9, p7, v6

    :cond_1e
    sub-int v6, v7, v1

    .line 455
    iput v6, v3, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v12, :cond_20

    if-eqz p5, :cond_1f

    add-int v6, p6, v3

    .line 461
    array-length v9, v0

    sub-int/2addr v9, v7

    new-array v9, v9, [B

    aput-object v9, p5, v6

    .line 462
    array-length v6, v0

    sub-int/2addr v6, v7

    invoke-static {v0, v7, v9, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    add-int v6, p8, v3

    .line 464
    aget-short v6, p7, v6

    add-int/2addr v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_20
    sub-int/2addr v7, v1

    add-int/2addr v13, v7

    .line 467
    iput v13, v4, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 469
    iput-byte v8, v2, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    return v12

    .line 318
    :cond_21
    :goto_e
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0
.end method

.method public static parseOpusPacket([BII)Lio/github/jaredmdobson/concentus/OpusPacketInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/jaredmdobson/concentus/OpusException;
        }
    .end annotation

    .line 82
    invoke-static {p0, p1, p2}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->getNumFrames([BII)I

    move-result v0

    .line 84
    new-instance v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 85
    new-instance v5, Lio/github/jaredmdobson/concentus/BoxedValueByte;

    invoke-direct {v5, v12}, Lio/github/jaredmdobson/concentus/BoxedValueByte;-><init>(B)V

    .line 86
    new-array v6, v0, [[B

    .line 87
    new-array v8, v0, [S

    .line 88
    new-instance v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v11, v12}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 89
    invoke-static/range {v1 .. v11}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->opus_packet_parse_impl([BIIILio/github/jaredmdobson/concentus/BoxedValueByte;[[BI[SILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)I

    move-result p0

    if-ltz p0, :cond_2

    .line 96
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 99
    aget-object p2, v6, p1

    array-length p2, p2

    new-array v1, p2, [Ljava/lang/Byte;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_0

    .line 101
    aget-object v3, v6, p1

    aget-byte v3, v3, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    new-instance p1, Lio/github/jaredmdobson/concentus/OpusPacketInfo;

    iget-byte p2, v5, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    iget v0, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-direct {p1, p2, p0, v0}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;-><init>(BLjava/util/List;I)V

    return-object p1

    .line 91
    :cond_2
    new-instance p1, Lio/github/jaredmdobson/concentus/OpusException;

    const-string p2, "An error occurred while parsing the packet"

    invoke-direct {p1, p2, p0}, Lio/github/jaredmdobson/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static parse_size([BIILio/github/jaredmdobson/concentus/BoxedValueShort;)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 286
    iput-short v0, p3, Lio/github/jaredmdobson/concentus/BoxedValueShort;->Val:S

    return v0

    .line 288
    :cond_0
    aget-byte v2, p0, p1

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->SignedByteToUnsignedInt(B)I

    move-result v2

    const/16 v3, 0xfc

    if-ge v2, v3, :cond_1

    .line 289
    aget-byte p0, p0, p1

    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->SignedByteToUnsignedInt(B)I

    move-result p0

    int-to-short p0, p0

    iput-short p0, p3, Lio/github/jaredmdobson/concentus/BoxedValueShort;->Val:S

    return v1

    :cond_1
    const/4 v1, 0x2

    if-ge p2, v1, :cond_2

    .line 292
    iput-short v0, p3, Lio/github/jaredmdobson/concentus/BoxedValueShort;->Val:S

    return v0

    :cond_2
    add-int/lit8 p2, p1, 0x1

    .line 295
    aget-byte p2, p0, p2

    invoke-static {p2}, Lio/github/jaredmdobson/concentus/Inlines;->SignedByteToUnsignedInt(B)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    aget-byte p0, p0, p1

    invoke-static {p0}, Lio/github/jaredmdobson/concentus/Inlines;->SignedByteToUnsignedInt(B)I

    move-result p0

    add-int/2addr p2, p0

    int-to-short p0, p2

    iput-short p0, p3, Lio/github/jaredmdobson/concentus/BoxedValueShort;->Val:S

    return v1
.end method
