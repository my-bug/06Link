.class public Lio/github/jaredmdobson/concentus/OpusDecoder;
.super Ljava/lang/Object;
.source "OpusDecoder.java"


# static fields
.field private static final SILENCE:[B


# instance fields
.field Celt_Decoder:Lio/github/jaredmdobson/concentus/CeltDecoder;

.field final DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

.field Fs:I

.field SilkDecoder:Lio/github/jaredmdobson/concentus/SilkDecoder;

.field bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

.field channels:I

.field decode_gain:I

.field frame_size:I

.field last_packet_duration:I

.field mode:Lio/github/jaredmdobson/concentus/OpusMode;

.field prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

.field prev_redundancy:I

.field rangeFinal:I

.field stream_channels:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 179
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->SILENCE:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lio/github/jaredmdobson/concentus/DecControlState;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/DecControlState;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

    .line 73
    new-instance v0, Lio/github/jaredmdobson/concentus/SilkDecoder;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/SilkDecoder;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->SilkDecoder:Lio/github/jaredmdobson/concentus/SilkDecoder;

    .line 74
    new-instance v0, Lio/github/jaredmdobson/concentus/CeltDecoder;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/CeltDecoder;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Celt_Decoder:Lio/github/jaredmdobson/concentus/CeltDecoder;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/jaredmdobson/concentus/OpusException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lio/github/jaredmdobson/concentus/DecControlState;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/DecControlState;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

    .line 73
    new-instance v0, Lio/github/jaredmdobson/concentus/SilkDecoder;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/SilkDecoder;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->SilkDecoder:Lio/github/jaredmdobson/concentus/SilkDecoder;

    .line 74
    new-instance v0, Lio/github/jaredmdobson/concentus/CeltDecoder;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/CeltDecoder;-><init>()V

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Celt_Decoder:Lio/github/jaredmdobson/concentus/CeltDecoder;

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

    .line 164
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

    .line 167
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of channels must be 1 or 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lio/github/jaredmdobson/concentus/OpusDecoder;->opus_decoder_init(II)I

    move-result p1

    .line 171
    sget p2, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-eq p1, p2, :cond_5

    .line 172
    sget p2, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    if-ne p1, p2, :cond_4

    .line 173
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OPUS_BAD_ARG when creating decoder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_4
    new-instance p2, Lio/github/jaredmdobson/concentus/OpusException;

    const-string v0, "Error while initializing decoder"

    invoke-direct {p2, v0, p1}, Lio/github/jaredmdobson/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_5
    return-void
.end method


# virtual methods
.method public decode([BII[BIIZ)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/jaredmdobson/concentus/OpusException;
        }
    .end annotation

    const/16 v0, 0x1680

    .line 736
    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v0, v0, v1

    new-array v5, v0, [S

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v7, p6

    move/from16 v8, p7

    .line 737
    invoke-virtual/range {v1 .. v8}, Lio/github/jaredmdobson/concentus/OpusDecoder;->decode([BII[SIIZ)I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_0

    add-int/lit8 p3, p5, 0x1

    .line 740
    aget-short p6, v5, p2

    and-int/lit16 v1, p6, 0xff

    int-to-byte v1, v1

    aput-byte v1, p4, p5

    add-int/lit8 p5, p5, 0x2

    shr-int/lit8 p6, p6, 0x8

    and-int/lit16 p6, p6, 0xff

    int-to-byte p6, p6

    .line 741
    aput-byte p6, p4, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public decode([BII[SIIZ)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/jaredmdobson/concentus/OpusException;
        }
    .end annotation

    if-lez p6, :cond_2

    .line 695
    :try_start_0
    new-instance v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 696
    invoke-virtual/range {v1 .. v11}, Lio/github/jaredmdobson/concentus/OpusDecoder;->opus_decode_native([BII[SIIIILio/github/jaredmdobson/concentus/BoxedValueInt;I)I

    move-result p1

    if-gez p1, :cond_1

    .line 700
    sget p2, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    if-ne p1, p2, :cond_0

    .line 701
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OPUS_BAD_ARG while decoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 703
    :cond_0
    new-instance p2, Lio/github/jaredmdobson/concentus/OpusException;

    const-string p3, "An error occurred during decoding"

    invoke-direct {p2, p3, p1}, Lio/github/jaredmdobson/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 708
    new-instance p2, Lio/github/jaredmdobson/concentus/OpusException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Internal error during decoding: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/ArithmeticException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/github/jaredmdobson/concentus/OpusException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 691
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Frame size must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBandwidth()Lio/github/jaredmdobson/concentus/OpusBandwidth;
    .locals 1

    .line 752
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    return-object v0
.end method

.method public getFinalRange()I
    .locals 1

    .line 761
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->rangeFinal:I

    return v0
.end method

.method public getGain()I
    .locals 1

    .line 792
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->decode_gain:I

    return v0
.end method

.method public getLastPacketDuration()I
    .locals 1

    .line 814
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->last_packet_duration:I

    return v0
.end method

.method public getPitch()I
    .locals 2

    .line 779
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v0, v1, :cond_0

    .line 780
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Celt_Decoder:Lio/github/jaredmdobson/concentus/CeltDecoder;

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/CeltDecoder;->GetPitch()I

    move-result v0

    return v0

    .line 782
    :cond_0
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

    iget v0, v0, Lio/github/jaredmdobson/concentus/DecControlState;->prevPitchLag:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 770
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Fs:I

    return v0
.end method

.method opus_decode_frame([BII[SIII)I
    .locals 33

    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v1, p6

    .line 186
    new-instance v10, Lio/github/jaredmdobson/concentus/EntropyCoder;

    invoke-direct {v10}, Lio/github/jaredmdobson/concentus/EntropyCoder;-><init>()V

    .line 211
    iget-object v11, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->SilkDecoder:Lio/github/jaredmdobson/concentus/SilkDecoder;

    .line 212
    iget-object v12, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Celt_Decoder:Lio/github/jaredmdobson/concentus/CeltDecoder;

    .line 213
    iget v2, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Fs:I

    div-int/lit8 v13, v2, 0x32

    shr-int/lit8 v14, v13, 0x1

    shr-int/lit8 v15, v13, 0x2

    shr-int/lit8 v3, v13, 0x3

    if-ge v1, v3, :cond_0

    .line 219
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v1

    .line 222
    :cond_0
    div-int/lit8 v2, v2, 0x19

    const/4 v4, 0x3

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v1

    const/16 v21, 0x0

    const/4 v2, 0x1

    if-gt v9, v2, :cond_1

    .line 227
    iget v5, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->frame_size:I

    invoke-static {v1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v1

    move v5, v1

    move-object/from16 v1, v21

    goto :goto_0

    :cond_1
    move v5, v1

    move-object/from16 v1, p1

    :goto_0
    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 230
    iget v7, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->frame_size:I

    .line 231
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 232
    invoke-virtual {v10, v1, v8, v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_init([BII)V

    goto :goto_4

    .line 235
    :cond_2
    iget-object v2, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 237
    sget-object v7, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v2, v7, :cond_4

    move/from16 v1, p5

    .line 239
    :goto_1
    iget v2, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v2, v2, v5

    add-int v2, p5, v2

    if-ge v1, v2, :cond_3

    .line 240
    aput-short v6, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v9, v5

    goto :goto_3

    :cond_4
    if-le v5, v13, :cond_7

    move v1, v5

    move v8, v1

    move/from16 v5, p5

    .line 250
    :goto_2
    invoke-static {v8, v13}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v6

    const/4 v7, 0x0

    move v2, v1

    const/4 v1, 0x0

    move v3, v2

    const/4 v2, 0x0

    move v4, v3

    const/4 v3, 0x0

    move v9, v4

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/OpusDecoder;->opus_decode_frame([BII[SIII)I

    move-result v1

    if-gez v1, :cond_5

    return v1

    .line 255
    :cond_5
    iget v2, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v2, v2, v1

    add-int/2addr v5, v2

    sub-int/2addr v8, v1

    if-gtz v8, :cond_6

    :goto_3
    return v9

    :cond_6
    move v1, v9

    goto :goto_2

    :cond_7
    if-ge v5, v13, :cond_9

    if-le v5, v14, :cond_8

    move v7, v14

    goto :goto_4

    .line 263
    :cond_8
    sget-object v7, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v2, v7, :cond_9

    if-le v5, v15, :cond_9

    if-ge v5, v14, :cond_9

    move v7, v15

    goto :goto_4

    :cond_9
    move v7, v5

    .line 271
    :goto_4
    sget-object v4, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v2, v4, :cond_a

    if-lt v5, v14, :cond_a

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    if-eqz v1, :cond_e

    .line 275
    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v6, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v4, v6, :cond_e

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v6, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_AUTO:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v4, v6, :cond_e

    sget-object v4, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v2, v4, :cond_b

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v6, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v4, v6, :cond_b

    iget v4, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_redundancy:I

    if-eqz v4, :cond_c

    :cond_b
    sget-object v4, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v2, v4, :cond_e

    iget-object v4, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v6, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v4, v6, :cond_e

    .line 279
    :cond_c
    sget-object v4, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v2, v4, :cond_d

    .line 280
    iget v4, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v4, v4, v15

    const/16 v17, 0x0

    goto :goto_6

    .line 282
    :cond_d
    iget v4, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v4, v4, v15

    move/from16 v17, v4

    const/4 v4, 0x0

    :goto_6
    const/16 v18, 0x1

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 285
    :goto_7
    new-array v4, v4, [S

    if-eqz v18, :cond_f

    .line 286
    sget-object v6, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v2, v6, :cond_f

    .line 288
    invoke-static {v15, v7}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v6

    move/from16 v19, v7

    const/4 v7, 0x0

    move-object/from16 v20, v1

    const/4 v1, 0x0

    move-object/from16 v22, v2

    const/4 v2, 0x0

    move/from16 v23, v3

    const/4 v3, 0x0

    move/from16 v24, v5

    const/4 v5, 0x0

    move-object/from16 v16, v10

    move/from16 v9, v19

    move-object/from16 v10, v22

    const/16 p1, 0x0

    move/from16 v22, v8

    move-object/from16 v19, v11

    move/from16 v8, v24

    const/4 v11, 0x3

    invoke-virtual/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/OpusDecoder;->opus_decode_frame([BII[SIII)I

    move-object/from16 v24, v4

    goto :goto_8

    :cond_f
    move-object/from16 v20, v1

    move/from16 v23, v3

    move v9, v7

    move/from16 v22, v8

    move-object/from16 v16, v10

    move-object/from16 v19, v11

    const/16 p1, 0x0

    const/4 v11, 0x3

    move-object v10, v2

    move v8, v5

    move-object/from16 v24, v21

    :goto_8
    if-le v9, v8, :cond_10

    .line 293
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1

    .line 299
    :cond_10
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v10, v1, :cond_11

    if-nez v22, :cond_11

    invoke-static {v14, v9}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v1

    iget v2, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v6, v1, v2

    goto :goto_9

    :cond_11
    const/4 v6, 0x0

    .line 300
    :goto_9
    new-array v8, v6, [S

    .line 303
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v10, v1, :cond_1e

    if-eqz v22, :cond_12

    move-object/from16 v5, p4

    move/from16 v6, p5

    goto :goto_a

    :cond_12
    move-object v5, v8

    const/4 v6, 0x0

    .line 316
    :goto_a
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v2, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v1, v2, :cond_13

    .line 317
    invoke-static/range {v19 .. v19}, Lio/github/jaredmdobson/concentus/DecodeAPI;->silk_InitDecoder(Lio/github/jaredmdobson/concentus/SilkDecoder;)I

    .line 321
    :cond_13
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

    mul-int/lit16 v7, v9, 0x3e8

    iget v2, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Fs:I

    div-int/2addr v7, v2

    const/16 v2, 0xa

    invoke-static {v2, v7}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v2

    iput v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->payloadSize_ms:I

    if-eqz v20, :cond_18

    .line 324
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

    iget v2, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->stream_channels:I

    iput v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    .line 325
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    const/16 v2, 0x3e80

    if-ne v10, v1, :cond_17

    .line 326
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne v1, v3, :cond_14

    .line 327
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

    const/16 v2, 0x1f40

    iput v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->internalSampleRate:I

    goto :goto_b

    .line 328
    :cond_14
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne v1, v3, :cond_15

    .line 329
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

    const/16 v2, 0x2ee0

    iput v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->internalSampleRate:I

    goto :goto_b

    .line 330
    :cond_15
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    sget-object v3, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    if-ne v1, v3, :cond_16

    .line 331
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

    iput v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->internalSampleRate:I

    goto :goto_b

    .line 333
    :cond_16
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

    iput v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->internalSampleRate:I

    .line 334
    invoke-static/range {p1 .. p1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    goto :goto_b

    .line 338
    :cond_17
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

    iput v2, v1, Lio/github/jaredmdobson/concentus/DecControlState;->internalSampleRate:I

    :cond_18
    :goto_b
    if-nez v20, :cond_19

    const/4 v2, 0x1

    goto :goto_c

    :cond_19
    mul-int/lit8 v2, p7, 0x2

    :goto_c
    const/4 v14, 0x0

    :goto_d
    if-nez v14, :cond_1a

    const/4 v3, 0x1

    goto :goto_e

    :cond_1a
    const/4 v3, 0x0

    .line 347
    :goto_e
    new-instance v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v4, 0x0

    .line 348
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

    move-object v11, v0

    move-object/from16 v25, v8

    move-object/from16 v4, v16

    move-object/from16 v0, v19

    const/16 p1, 0x3

    const/4 v8, 0x0

    invoke-static/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/DecodeAPI;->silk_Decode(Lio/github/jaredmdobson/concentus/SilkDecoder;Lio/github/jaredmdobson/concentus/DecControlState;IILio/github/jaredmdobson/concentus/EntropyCoder;[SILio/github/jaredmdobson/concentus/BoxedValueInt;)I

    move-result v1

    move-object v0, v4

    .line 350
    iget v7, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-eqz v1, :cond_1c

    if-eqz v2, :cond_1b

    .line 356
    iget v1, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v7, v9, v1

    invoke-static {v5, v8, v6, v7}, Lio/github/jaredmdobson/concentus/Arrays;->MemSetWithOffset([SSII)V

    move v7, v9

    goto :goto_f

    .line 359
    :cond_1b
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v0

    .line 362
    :cond_1c
    :goto_f
    iget v1, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v1, v1, v7

    add-int/2addr v6, v1

    add-int/2addr v14, v7

    if-lt v14, v9, :cond_1d

    goto :goto_10

    :cond_1d
    move-object/from16 v16, v0

    move-object v0, v11

    move-object/from16 v8, v25

    const/16 p1, 0x0

    const/4 v11, 0x3

    goto :goto_d

    :cond_1e
    move-object v11, v0

    move-object/from16 v25, v8

    move-object/from16 v0, v16

    const/16 p1, 0x3

    const/4 v8, 0x0

    :goto_10
    const/16 v6, 0x11

    const/4 v1, 0x2

    if-nez p7, :cond_24

    .line 368
    sget-object v2, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v10, v2, :cond_24

    if-eqz v20, :cond_24

    .line 369
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v2

    add-int/2addr v2, v6

    iget-object v3, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v4, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v3, v4, :cond_1f

    const/4 v3, 0x1

    goto :goto_11

    :cond_1f
    const/4 v3, 0x0

    :goto_11
    mul-int/lit8 v3, v3, 0x14

    add-int/2addr v2, v3

    mul-int/lit8 v3, p3, 0x8

    if-gt v2, v3, :cond_24

    .line 371
    sget-object v2, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v10, v2, :cond_20

    const-wide/16 v2, 0xc

    .line 372
    invoke-virtual {v0, v2, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v2

    goto :goto_12

    :cond_20
    const/4 v2, 0x1

    :goto_12
    if-eqz v2, :cond_23

    const-wide/16 v3, 0x1

    .line 377
    invoke-virtual {v0, v3, v4}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v3

    .line 380
    sget-object v4, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v10, v4, :cond_21

    const-wide/16 v4, 0x100

    .line 381
    invoke-virtual {v0, v4, v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_uint(J)J

    move-result-wide v4

    long-to-int v5, v4

    add-int/2addr v5, v1

    goto :goto_13

    .line 382
    :cond_21
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    sub-int v5, p3, v4

    :goto_13
    sub-int v4, p3, v5

    mul-int/lit8 v7, v4, 0x8

    .line 386
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v14

    if-ge v7, v14, :cond_22

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 392
    :cond_22
    iget v7, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    sub-int/2addr v7, v5

    iput v7, v0, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v26, v4

    move v14, v5

    goto :goto_15

    :cond_23
    move/from16 v26, p3

    move/from16 v27, v2

    const/4 v14, 0x0

    goto :goto_14

    :cond_24
    move/from16 v26, p3

    const/4 v14, 0x0

    const/16 v27, 0x0

    :goto_14
    const/16 v28, 0x0

    .line 395
    :goto_15
    sget-object v2, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v10, v2, :cond_25

    const/16 v2, 0x11

    goto :goto_16

    :cond_25
    const/4 v2, 0x0

    .line 402
    :goto_16
    sget-object v3, Lio/github/jaredmdobson/concentus/OpusDecoder$1;->$SwitchMap$io$github$jaredmdobson$concentus$OpusBandwidth:[I

    iget-object v4, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    invoke-virtual {v4}, Lio/github/jaredmdobson/concentus/OpusBandwidth;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    if-eq v3, v1, :cond_28

    const/4 v1, 0x3

    if-eq v3, v1, :cond_28

    const/4 v1, 0x4

    if-eq v3, v1, :cond_26

    const/16 v6, 0x15

    goto :goto_17

    :cond_26
    const/16 v6, 0x13

    goto :goto_17

    :cond_27
    const/16 v6, 0xd

    .line 417
    :cond_28
    :goto_17
    invoke-virtual {v12, v6}, Lio/github/jaredmdobson/concentus/CeltDecoder;->SetEndBand(I)V

    .line 418
    iget v1, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->stream_channels:I

    invoke-virtual {v12, v1}, Lio/github/jaredmdobson/concentus/CeltDecoder;->SetChannels(I)V

    if-eqz v27, :cond_29

    const/4 v6, 0x0

    const/16 v29, 0x0

    goto :goto_18

    :cond_29
    move/from16 v6, v17

    move/from16 v29, v18

    .line 426
    :goto_18
    new-array v4, v6, [S

    if-eqz v29, :cond_2a

    .line 428
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v10, v1, :cond_2a

    .line 430
    invoke-static {v15, v9}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v1, 0x0

    move v3, v2

    const/4 v2, 0x0

    move v5, v3

    const/4 v3, 0x0

    move/from16 v16, v5

    const/4 v5, 0x0

    move-object/from16 v30, v11

    move-object v11, v0

    move-object/from16 v0, v30

    move/from16 v30, v16

    invoke-virtual/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/OpusDecoder;->opus_decode_frame([BII[SIII)I

    move-object/from16 v31, v4

    goto :goto_19

    :cond_2a
    move-object/from16 v30, v11

    move-object v11, v0

    move-object/from16 v0, v30

    move/from16 v30, v2

    move-object/from16 v31, v24

    :goto_19
    if-eqz v27, :cond_2b

    .line 434
    iget v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v6, v15, v1

    goto :goto_1a

    :cond_2b
    const/4 v6, 0x0

    .line 435
    :goto_1a
    new-array v4, v6, [S

    if-eqz v27, :cond_2c

    if-eqz v28, :cond_2c

    .line 439
    invoke-virtual {v12, v8}, Lio/github/jaredmdobson/concentus/CeltDecoder;->SetStartBand(I)V

    move v3, v14

    add-int v14, p2, v26

    const/16 v19, 0x0

    move-object/from16 v1, v20

    const/16 v20, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v4

    move v2, v13

    move/from16 v18, v15

    move-object v13, v1

    move v15, v3

    .line 440
    invoke-virtual/range {v12 .. v20}, Lio/github/jaredmdobson/concentus/CeltDecoder;->celt_decode_with_ec([BII[SIILio/github/jaredmdobson/concentus/EntropyCoder;I)I

    move-object/from16 v20, v13

    .line 442
    invoke-virtual {v12}, Lio/github/jaredmdobson/concentus/CeltDecoder;->GetFinalRange()I

    move-result v6

    move v13, v6

    goto :goto_1b

    :cond_2c
    move-object/from16 v16, v4

    move v2, v13

    move/from16 v18, v15

    move v15, v14

    const/4 v13, 0x0

    :goto_1b
    move/from16 v3, v30

    .line 446
    invoke-virtual {v12, v3}, Lio/github/jaredmdobson/concentus/CeltDecoder;->SetStartBand(I)V

    .line 448
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_SILK_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v10, v1, :cond_2f

    .line 449
    invoke-static {v2, v9}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v6

    .line 451
    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v10, v1, :cond_2d

    sget-object v2, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_AUTO:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v1, v2, :cond_2d

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v2, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v1, v2, :cond_2d

    iget v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_redundancy:I

    if-nez v1, :cond_2d

    .line 452
    invoke-virtual {v12}, Lio/github/jaredmdobson/concentus/CeltDecoder;->ResetState()V

    :cond_2d
    if-eqz p7, :cond_2e

    move-object/from16 v1, v21

    goto :goto_1c

    :cond_2e
    move-object/from16 v1, v20

    :goto_1c
    move/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v11

    move/from16 v8, v22

    move/from16 v3, v26

    move-object v11, v0

    move-object v0, v12

    const/4 v12, 0x0

    .line 455
    invoke-virtual/range {v0 .. v8}, Lio/github/jaredmdobson/concentus/CeltDecoder;->celt_decode_with_ec([BII[SIILio/github/jaredmdobson/concentus/EntropyCoder;I)I

    move-result v6

    move-object v14, v7

    move/from16 v32, v3

    move/from16 v26, v6

    move/from16 v22, v23

    goto :goto_1f

    :cond_2f
    move-object v14, v11

    move/from16 v8, v22

    move/from16 v3, v26

    move-object v11, v0

    move-object v0, v12

    const/4 v12, 0x0

    if-nez v8, :cond_30

    move/from16 v1, p5

    .line 459
    :goto_1d
    iget v2, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v7, v9, v2

    add-int v7, v7, p5

    if-ge v1, v7, :cond_30

    .line 460
    aput-short v12, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 465
    :cond_30
    iget-object v1, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v2, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_HYBRID:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v1, v2, :cond_32

    if-eqz v27, :cond_31

    if-eqz v28, :cond_31

    iget v1, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_redundancy:I

    if-nez v1, :cond_32

    .line 466
    :cond_31
    invoke-virtual {v0, v12}, Lio/github/jaredmdobson/concentus/CeltDecoder;->SetStartBand(I)V

    .line 467
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusDecoder;->SILENCE:[B

    move v4, v3

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    move/from16 v5, p5

    move/from16 v32, v4

    move/from16 v6, v23

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v8}, Lio/github/jaredmdobson/concentus/CeltDecoder;->celt_decode_with_ec([BII[SIILio/github/jaredmdobson/concentus/EntropyCoder;I)I

    move/from16 v22, v6

    goto :goto_1e

    :cond_32
    move/from16 v32, v3

    move/from16 v22, v23

    :goto_1e
    const/16 v26, 0x0

    .line 471
    :goto_1f
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v10, v1, :cond_33

    if-nez v8, :cond_33

    const/4 v6, 0x0

    .line 472
    :goto_20
    iget v1, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v7, v9, v1

    if-ge v6, v7, :cond_33

    add-int v1, p5, v6

    .line 473
    aget-short v2, p4, v1

    aget-short v3, v25, v6

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v2

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->SAT16(I)S

    move-result v2

    aput-short v2, p4, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 477
    :cond_33
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/CeltDecoder;->GetMode()Lio/github/jaredmdobson/concentus/CeltMode;

    move-result-object v1

    iget-object v1, v1, Lio/github/jaredmdobson/concentus/CeltMode;->window:[I

    if-eqz v27, :cond_34

    if-nez v28, :cond_34

    .line 481
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/CeltDecoder;->ResetState()V

    .line 482
    invoke-virtual {v0, v12}, Lio/github/jaredmdobson/concentus/CeltDecoder;->SetStartBand(I)V

    add-int v2, p2, v32

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v24, v1

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v6, v18

    move-object/from16 v1, v20

    .line 484
    invoke-virtual/range {v0 .. v8}, Lio/github/jaredmdobson/concentus/CeltDecoder;->celt_decode_with_ec([BII[SIILio/github/jaredmdobson/concentus/EntropyCoder;I)I

    .line 485
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/CeltDecoder;->GetFinalRange()I

    move-result v13

    .line 486
    iget v0, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    sub-int v7, v9, v22

    mul-int v1, v0, v7

    add-int v17, p5, v1

    mul-int v19, v0, v22

    mul-int v7, v7, v0

    add-int v21, p5, v7

    iget v1, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->Fs:I

    move-object/from16 v20, p4

    move/from16 v23, v0

    move/from16 v25, v1

    move-object/from16 v18, v16

    move-object/from16 v16, p4

    invoke-static/range {v16 .. v25}, Lio/github/jaredmdobson/concentus/CodecHelpers;->smooth_fade([SI[SI[SIII[II)V

    move-object/from16 v16, v18

    :goto_21
    move/from16 v0, v22

    move/from16 v3, v32

    goto :goto_22

    :cond_34
    move-object/from16 v24, v1

    move/from16 v6, v18

    goto :goto_21

    :goto_22
    if-eqz v27, :cond_37

    if-eqz v28, :cond_37

    const/4 v1, 0x0

    .line 490
    :goto_23
    iget v2, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    if-ge v1, v2, :cond_36

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v0, :cond_35

    .line 492
    iget v4, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v5, v4, v2

    add-int/2addr v5, v1

    add-int v5, v5, p5

    mul-int v4, v4, v2

    add-int/2addr v4, v1

    aget-short v4, v16, v4

    aput-short v4, p4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_36
    mul-int v17, v2, v0

    mul-int v1, v2, v0

    add-int v19, p5, v1

    mul-int v1, v2, v0

    add-int v21, p5, v1

    .line 495
    iget v1, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->Fs:I

    move-object/from16 v20, p4

    move-object/from16 v18, p4

    move/from16 v22, v0

    move/from16 v25, v1

    move/from16 v23, v2

    invoke-static/range {v16 .. v25}, Lio/github/jaredmdobson/concentus/CodecHelpers;->smooth_fade([SI[SI[SIII[II)V

    goto :goto_25

    :cond_37
    move/from16 v22, v0

    :goto_25
    if-eqz v29, :cond_3a

    if-lt v9, v6, :cond_39

    const/4 v6, 0x0

    .line 500
    :goto_26
    iget v0, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v1, v0, v22

    if-ge v6, v1, :cond_38

    .line 501
    aget-short v0, v31, v6

    aput-short v0, p4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_38
    mul-int v17, v0, v22

    mul-int v1, v0, v22

    add-int v19, p5, v1

    mul-int v1, v0, v22

    add-int v21, p5, v1

    .line 503
    iget v1, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->Fs:I

    move-object/from16 v20, p4

    move-object/from16 v18, p4

    move/from16 v23, v0

    move/from16 v25, v1

    move-object/from16 v16, v31

    invoke-static/range {v16 .. v25}, Lio/github/jaredmdobson/concentus/CodecHelpers;->smooth_fade([SI[SI[SIII[II)V

    goto :goto_27

    :cond_39
    move-object/from16 v16, v31

    .line 512
    iget v0, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    iget v1, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->Fs:I

    const/16 v17, 0x0

    move-object/from16 v20, p4

    move/from16 v21, p5

    move-object/from16 v18, p4

    move/from16 v19, p5

    move/from16 v23, v0

    move/from16 v25, v1

    invoke-static/range {v16 .. v25}, Lio/github/jaredmdobson/concentus/CodecHelpers;->smooth_fade([SI[SI[SIII[II)V

    .line 518
    :cond_3a
    :goto_27
    iget v0, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->decode_gain:I

    if-eqz v0, :cond_3b

    const/16 v1, 0x550b

    .line 520
    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->celt_exp2(I)I

    move-result v0

    move/from16 v1, p5

    .line 521
    :goto_28
    iget v2, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v7, v9, v2

    add-int v2, p5, v7

    if-ge v1, v2, :cond_3b

    .line 523
    aget-short v2, p4, v1

    invoke-static {v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_P16(SI)I

    move-result v2

    const/16 v4, 0x7fff

    .line 524
    invoke-static {v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SATURATE(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3b
    const/4 v4, 0x1

    if-gt v3, v4, :cond_3c

    .line 529
    iput v12, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->rangeFinal:I

    goto :goto_29

    .line 531
    :cond_3c
    iget-wide v0, v14, Lio/github/jaredmdobson/concentus/EntropyCoder;->rng:J

    long-to-int v1, v0

    xor-int v0, v1, v13

    iput v0, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->rangeFinal:I

    .line 534
    :goto_29
    iput-object v10, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eqz v27, :cond_3d

    if-nez v28, :cond_3d

    const/4 v2, 0x1

    goto :goto_2a

    :cond_3d
    const/4 v2, 0x0

    .line 535
    :goto_2a
    iput v2, v11, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_redundancy:I

    if-gez v26, :cond_3e

    return v26

    :cond_3e
    return v9
.end method

.method opus_decode_native([BII[SIIIILio/github/jaredmdobson/concentus/BoxedValueInt;I)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v12, p6

    move/from16 v13, p7

    const/4 v14, 0x0

    move-object/from16 v11, p9

    .line 546
    iput v14, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/16 v3, 0x30

    .line 551
    new-array v8, v3, [S

    if-ltz v13, :cond_15

    const/4 v15, 0x1

    if-le v13, v15, :cond_0

    goto/16 :goto_7

    :cond_0
    if-nez v13, :cond_1

    if-eqz p3, :cond_1

    if-nez v1, :cond_2

    .line 556
    :cond_1
    iget v3, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Fs:I

    div-int/lit16 v3, v3, 0x190

    rem-int v3, v12, v3

    if-eqz v3, :cond_2

    .line 557
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1

    :cond_2
    if-eqz p3, :cond_11

    if-nez v1, :cond_3

    goto/16 :goto_5

    :cond_3
    if-gez p3, :cond_4

    .line 573
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1

    .line 576
    :cond_4
    invoke-static/range {p1 .. p2}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->getEncoderMode([BI)Lio/github/jaredmdobson/concentus/OpusMode;

    move-result-object v3

    .line 577
    invoke-static/range {p1 .. p2}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->getBandwidth([BI)Lio/github/jaredmdobson/concentus/OpusBandwidth;

    move-result-object v4

    .line 578
    iget v5, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Fs:I

    invoke-static {v1, v2, v5}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->getNumSamplesPerFrame([BII)I

    move-result v6

    .line 579
    invoke-static/range {p1 .. p2}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->getNumEncodedChannels([BI)I

    move-result v5

    move v7, v5

    .line 581
    new-instance v5, Lio/github/jaredmdobson/concentus/BoxedValueByte;

    invoke-direct {v5, v14}, Lio/github/jaredmdobson/concentus/BoxedValueByte;-><init>(B)V

    .line 582
    new-instance v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v10, v14}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move v9, v6

    const/4 v6, 0x0

    .line 583
    move-object/from16 v16, v6

    check-cast v16, [[B

    move/from16 v16, v7

    const/4 v7, 0x0

    move/from16 v17, v9

    const/4 v9, 0x0

    move-object v15, v3

    move-object/from16 v19, v4

    move/from16 v21, v16

    move/from16 v20, v17

    move/from16 v3, p3

    move/from16 v4, p8

    invoke-static/range {v1 .. v11}, Lio/github/jaredmdobson/concentus/OpusPacketInfo;->opus_packet_parse_impl([BIIILio/github/jaredmdobson/concentus/BoxedValueByte;[[BI[SILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;)I

    move-result v9

    move-object v11, v8

    .line 585
    iget v1, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-gez v9, :cond_5

    return v9

    :cond_5
    add-int v16, p2, v1

    if-eqz v13, :cond_c

    .line 594
    new-instance v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v9, v14}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move/from16 v13, v20

    if-lt v12, v13, :cond_b

    .line 598
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-eq v15, v1, :cond_b

    iget-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    sget-object v2, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_CELT_ONLY:Lio/github/jaredmdobson/concentus/OpusMode;

    if-ne v1, v2, :cond_6

    goto :goto_2

    .line 602
    :cond_6
    iget v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->last_packet_duration:I

    sub-int v6, v12, v13

    if-eqz v6, :cond_9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, v1

    const/4 v1, 0x0

    move v3, v2

    const/4 v2, 0x0

    move v4, v3

    const/4 v3, 0x0

    move/from16 v5, p5

    move/from16 v10, p10

    move v14, v4

    const/16 v17, 0x0

    move-object/from16 v4, p4

    .line 604
    invoke-virtual/range {v0 .. v10}, Lio/github/jaredmdobson/concentus/OpusDecoder;->opus_decode_native([BII[SIIIILio/github/jaredmdobson/concentus/BoxedValueInt;I)I

    move-result v1

    if-gez v1, :cond_7

    .line 606
    iput v14, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->last_packet_duration:I

    return v1

    :cond_7
    if-ne v1, v6, :cond_8

    const/16 v18, 0x1

    goto :goto_0

    :cond_8
    const/16 v18, 0x0

    .line 609
    :goto_0
    invoke-static/range {v18 .. v18}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    goto :goto_1

    :cond_9
    const/16 v17, 0x0

    .line 612
    :goto_1
    iput-object v15, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    move-object/from16 v1, v19

    .line 613
    iput-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 614
    iput v13, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->frame_size:I

    move/from16 v7, v21

    .line 615
    iput v7, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->stream_channels:I

    .line 616
    aget-short v3, v11, v17

    iget v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v1, v1, v6

    add-int v5, p5, v1

    const/4 v7, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move v6, v13

    move/from16 v2, v16

    invoke-virtual/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/OpusDecoder;->opus_decode_frame([BII[SIII)I

    move-result v1

    if-gez v1, :cond_a

    return v1

    .line 621
    :cond_a
    iput v12, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->last_packet_duration:I

    return v12

    :cond_b
    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v10, p10

    move v6, v12

    .line 599
    invoke-virtual/range {v0 .. v10}, Lio/github/jaredmdobson/concentus/OpusDecoder;->opus_decode_native([BII[SIIIILio/github/jaredmdobson/concentus/BoxedValueInt;I)I

    move-result v1

    return v1

    :cond_c
    move/from16 v2, v16

    move-object/from16 v1, v19

    move/from16 v13, v20

    move/from16 v7, v21

    const/16 v17, 0x0

    mul-int v6, v9, v13

    if-le v6, v12, :cond_d

    .line 627
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v1

    .line 631
    :cond_d
    iput-object v15, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 632
    iput-object v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 633
    iput v13, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->frame_size:I

    .line 634
    iput v7, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->stream_channels:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_3
    if-ge v8, v9, :cond_10

    .line 639
    aget-short v3, v11, v8

    iget v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v1, v1, v10

    add-int v5, p5, v1

    sub-int v6, v12, v10

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/OpusDecoder;->opus_decode_frame([BII[SIII)I

    move-result v3

    if-gez v3, :cond_e

    return v3

    :cond_e
    if-ne v3, v13, :cond_f

    const/4 v1, 0x1

    goto :goto_4

    :cond_f
    const/4 v1, 0x0

    .line 643
    :goto_4
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 644
    aget-short v1, v11, v8

    add-int/2addr v2, v1

    add-int/2addr v10, v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 647
    :cond_10
    iput v10, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->last_packet_duration:I

    return v10

    :cond_11
    :goto_5
    const/16 v17, 0x0

    const/4 v8, 0x0

    .line 563
    :cond_12
    iget v1, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    mul-int v1, v1, v8

    add-int v5, p5, v1

    sub-int v6, v12, v8

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Lio/github/jaredmdobson/concentus/OpusDecoder;->opus_decode_frame([BII[SIII)I

    move-result v1

    if-gez v1, :cond_13

    return v1

    :cond_13
    add-int/2addr v8, v1

    if-lt v8, v12, :cond_12

    if-ne v8, v12, :cond_14

    const/4 v14, 0x1

    goto :goto_6

    :cond_14
    const/4 v14, 0x0

    .line 569
    :goto_6
    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 570
    iput v8, v0, Lio/github/jaredmdobson/concentus/OpusDecoder;->last_packet_duration:I

    return v8

    .line 553
    :cond_15
    :goto_7
    sget v1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1
.end method

.method opus_decoder_init(II)I
    .locals 4

    const v0, 0xbb80

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5dc0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e80

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2ee0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f40

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 114
    :cond_1
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1

    .line 116
    :cond_2
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/OpusDecoder;->reset()V

    .line 119
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->SilkDecoder:Lio/github/jaredmdobson/concentus/SilkDecoder;

    .line 120
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Celt_Decoder:Lio/github/jaredmdobson/concentus/CeltDecoder;

    .line 121
    iput p2, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    iput p2, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->stream_channels:I

    .line 123
    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Fs:I

    .line 124
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

    iput p1, v2, Lio/github/jaredmdobson/concentus/DecControlState;->API_sampleRate:I

    .line 125
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

    iget v3, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    iput v3, v2, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsAPI:I

    .line 128
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/DecodeAPI;->silk_InitDecoder(Lio/github/jaredmdobson/concentus/SilkDecoder;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return p1

    .line 134
    :cond_3
    invoke-virtual {v1, p1, p2}, Lio/github/jaredmdobson/concentus/CeltDecoder;->celt_decoder_init(II)I

    move-result p2

    .line 135
    sget v0, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    if-eq p2, v0, :cond_4

    .line 136
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return p1

    :cond_4
    const/4 p2, 0x0

    .line 139
    invoke-virtual {v1, p2}, Lio/github/jaredmdobson/concentus/CeltDecoder;->SetSignalling(I)V

    .line 141
    sget-object p2, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object p2, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 142
    div-int/lit16 p1, p1, 0x190

    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->frame_size:I

    .line 143
    sget p1, Lio/github/jaredmdobson/concentus/OpusError;->OPUS_OK:I

    return p1
.end method

.method partialReset()V
    .locals 2

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->stream_channels:I

    .line 95
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->bandwidth:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    .line 96
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 97
    sget-object v1, Lio/github/jaredmdobson/concentus/OpusMode;->MODE_UNKNOWN:Lio/github/jaredmdobson/concentus/OpusMode;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_mode:Lio/github/jaredmdobson/concentus/OpusMode;

    .line 98
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->frame_size:I

    .line 99
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->prev_redundancy:I

    .line 100
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->last_packet_duration:I

    .line 101
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->rangeFinal:I

    return-void
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    .line 81
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Fs:I

    .line 85
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->DecControl:Lio/github/jaredmdobson/concentus/DecControlState;

    invoke-virtual {v1}, Lio/github/jaredmdobson/concentus/DecControlState;->Reset()V

    .line 86
    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->decode_gain:I

    .line 87
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/OpusDecoder;->partialReset()V

    return-void
.end method

.method public resetState()V
    .locals 1

    .line 821
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/OpusDecoder;->partialReset()V

    .line 822
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Celt_Decoder:Lio/github/jaredmdobson/concentus/CeltDecoder;

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/CeltDecoder;->ResetState()V

    .line 823
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->SilkDecoder:Lio/github/jaredmdobson/concentus/SilkDecoder;

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/DecodeAPI;->silk_InitDecoder(Lio/github/jaredmdobson/concentus/SilkDecoder;)I

    .line 824
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->channels:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->stream_channels:I

    .line 825
    iget v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->Fs:I

    div-int/lit16 v0, v0, 0x190

    iput v0, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->frame_size:I

    return-void
.end method

.method public setGain(I)V
    .locals 1

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_0

    .line 805
    iput p1, p0, Lio/github/jaredmdobson/concentus/OpusDecoder;->decode_gain:I

    return-void

    .line 802
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Gain must be within the range of a signed int16"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
