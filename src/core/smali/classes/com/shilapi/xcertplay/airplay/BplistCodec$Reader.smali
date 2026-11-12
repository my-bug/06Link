.class final Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;
.super Ljava/lang/Object;
.source "BplistCodec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/BplistCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBplistCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BplistCodec.kt\ncom/shilapi/xcertplay/airplay/BplistCodec$Reader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,348:1\n1#2:349\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0018\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007H\u0002J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007H\u0002J\u000c\u0010\u0019\u001a\u00020\u0007*\u00020\u0015H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;",
        "",
        "bytes",
        "",
        "offsets",
        "",
        "refSize",
        "",
        "objectAreaEnd",
        "<init>",
        "([B[JII)V",
        "visiting",
        "",
        "decoded",
        "read",
        "index",
        "depth",
        "need",
        "",
        "position",
        "length",
        "",
        "long",
        "size",
        "readObject",
        "toIntReference",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bytes:[B

.field private decoded:I

.field private final objectAreaEnd:I

.field private final offsets:[J

.field private final refSize:I

.field private final visiting:[Z


# direct methods
.method public constructor <init>([B[JII)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offsets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->bytes:[B

    .line 132
    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->offsets:[J

    .line 133
    iput p3, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->refSize:I

    .line 134
    iput p4, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->objectAreaEnd:I

    .line 136
    array-length p1, p2

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->visiting:[Z

    return-void
.end method

.method private final long(II)J
    .locals 4

    int-to-long v0, p2

    .line 157
    invoke-direct {p0, p1, v0, v1}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->need(IJ)V

    .line 158
    sget-object v0, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->bytes:[B

    int-to-long v2, p1

    # invokes: Lcom/shilapi/xcertplay/airplay/BplistCodec;->readBigEndianLong([BJI)J
    invoke-static {v0, v1, v2, v3, p2}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->access$readBigEndianLong(Lcom/shilapi/xcertplay/airplay/BplistCodec;[BJI)J

    move-result-wide p1

    return-wide p1
.end method

.method private final need(IJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    int-to-long v0, p1

    add-long/2addr v0, p2

    .line 153
    iget p1, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->objectAreaEnd:I

    int-to-long p1, p1

    cmp-long p3, v0, p1

    if-gtz p3, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bplist: object overruns"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final readObject(II)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    .line 162
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget-object v2, v0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->offsets:[J

    aget-wide v3, v2, p1

    long-to-int v2, v3

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 163
    iget-object v2, v0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->bytes:[B

    iget v3, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    aget-byte v2, v2, v3

    and-int/lit16 v3, v2, 0xff

    const/4 v4, 0x4

    ushr-int/2addr v3, v4

    and-int/lit8 v5, v2, 0xf

    .line 166
    iget v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/16 v9, 0x8

    packed-switch v3, :pswitch_data_0

    .line 245
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x10

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bplist: unsupported object type 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :pswitch_1
    iget v2, v0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->refSize:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v5, v0, v1, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->readObject$readCount(ILcom/shilapi/xcertplay/airplay/BplistCodec$Reader;Lkotlin/jvm/internal/Ref$IntRef;I)I

    move-result v2

    .line 235
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    :goto_0
    if-ge v6, v2, :cond_0

    .line 237
    sget-object v4, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    iget-object v5, v0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->bytes:[B

    iget v8, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v8, v8

    int-to-long v10, v6

    iget v12, v0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->refSize:I

    int-to-long v13, v12

    mul-long v10, v10, v13

    add-long/2addr v8, v10

    # invokes: Lcom/shilapi/xcertplay/airplay/BplistCodec;->readBigEndianLong([BJI)J
    invoke-static {v4, v5, v8, v9, v12}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->access$readBigEndianLong(Lcom/shilapi/xcertplay/airplay/BplistCodec;[BJI)J

    move-result-wide v4

    .line 239
    sget-object v8, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    iget-object v9, v0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->bytes:[B

    iget v10, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v10, v10

    add-int v12, v2, v6

    int-to-long v12, v12

    iget v14, v0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->refSize:I

    move-object v15, v8

    const/16 p1, 0x1

    int-to-long v7, v14

    mul-long v12, v12, v7

    add-long/2addr v10, v12

    # invokes: Lcom/shilapi/xcertplay/airplay/BplistCodec;->readBigEndianLong([BJI)J
    invoke-static {v15, v9, v10, v11, v14}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->access$readBigEndianLong(Lcom/shilapi/xcertplay/airplay/BplistCodec;[BJI)J

    move-result-wide v7

    .line 240
    move-object v9, v3

    check-cast v9, Ljava/util/Map;

    invoke-direct {v0, v4, v5}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->toIntReference(J)I

    move-result v4

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->read(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-direct {v0, v7, v8}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->toIntReference(J)I

    move-result v7

    invoke-virtual {v0, v7, v5}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->read(II)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto :goto_0

    .line 243
    :cond_0
    check-cast v3, Ljava/io/Serializable;

    return-object v3

    :pswitch_2
    const/16 p1, 0x1

    .line 225
    iget v2, v0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->refSize:I

    invoke-static {v5, v0, v1, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->readObject$readCount(ILcom/shilapi/xcertplay/airplay/BplistCodec$Reader;Lkotlin/jvm/internal/Ref$IntRef;I)I

    move-result v2

    .line 226
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v6, v2, :cond_1

    .line 228
    sget-object v4, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    iget-object v5, v0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->bytes:[B

    iget v7, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v7, v7

    int-to-long v9, v6

    iget v11, v0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->refSize:I

    int-to-long v12, v11

    mul-long v9, v9, v12

    add-long/2addr v7, v9

    # invokes: Lcom/shilapi/xcertplay/airplay/BplistCodec;->readBigEndianLong([BJI)J
    invoke-static {v4, v5, v7, v8, v11}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->access$readBigEndianLong(Lcom/shilapi/xcertplay/airplay/BplistCodec;[BJI)J

    move-result-wide v4

    .line 229
    invoke-direct {v0, v4, v5}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->toIntReference(J)I

    move-result v4

    add-int/lit8 v7, p2, 0x1

    invoke-virtual {v0, v4, v7}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->read(II)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 231
    :cond_1
    check-cast v3, Ljava/io/Serializable;

    return-object v3

    :pswitch_3
    const/16 p1, 0x1

    .line 215
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->long(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    return-object v1

    .line 221
    :pswitch_4
    invoke-static {v5, v0, v1, v8}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->readObject$readCount(ILcom/shilapi/xcertplay/airplay/BplistCodec$Reader;Lkotlin/jvm/internal/Ref$IntRef;I)I

    move-result v2

    new-instance v3, Ljava/lang/String;

    .line 222
    iget-object v4, v0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->bytes:[B

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    mul-int/lit8 v2, v2, 0x2

    sget-object v5, Lkotlin/text/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Serializable;

    return-object v3

    :pswitch_5
    const/4 v2, 0x1

    .line 217
    invoke-static {v5, v0, v1, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->readObject$readCount(ILcom/shilapi/xcertplay/airplay/BplistCodec$Reader;Lkotlin/jvm/internal/Ref$IntRef;I)I

    move-result v2

    new-instance v3, Ljava/lang/String;

    .line 218
    iget-object v4, v0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->bytes:[B

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object v5, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Serializable;

    return-object v3

    :pswitch_6
    const/4 v2, 0x1

    .line 211
    invoke-static {v5, v0, v1, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->readObject$readCount(ILcom/shilapi/xcertplay/airplay/BplistCodec$Reader;Lkotlin/jvm/internal/Ref$IntRef;I)I

    move-result v2

    .line 212
    iget-object v3, v0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->bytes:[B

    iget v4, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v1, v2

    invoke-static {v3, v4, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    return-object v1

    .line 207
    :pswitch_7
    new-instance v2, Ljava/util/Date;

    .line 208
    sget-object v3, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v0, v1, v9}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->long(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    const-wide v5, 0x41cd27e440000000L    # 9.783072E8

    add-double/2addr v3, v5

    const/16 v1, 0x3e8

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 207
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    check-cast v2, Ljava/io/Serializable;

    return-object v2

    :pswitch_8
    and-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    shl-int v2, v3, v2

    if-eq v2, v4, :cond_3

    if-ne v2, v9, :cond_2

    .line 202
    sget-object v3, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->long(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_2

    .line 203
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bplist: unsupported real size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_3
    sget-object v3, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->long(II)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 203
    :goto_2
    check-cast v1, Ljava/io/Serializable;

    return-object v1

    :pswitch_9
    if-gt v5, v4, :cond_4

    .line 196
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x1

    shl-int/2addr v2, v5

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->long(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    return-object v1

    .line 195
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bplist: unsupported integer size"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_a
    if-eqz v5, :cond_7

    if-eq v5, v9, :cond_6

    const/16 v1, 0x9

    if-ne v5, v1, :cond_5

    const/4 v2, 0x1

    .line 190
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_3

    .line 191
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bplist: unsupported primitive 0x0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 191
    :goto_3
    check-cast v1, Ljava/io/Serializable;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static final readObject$readCount(ILcom/shilapi/xcertplay/airplay/BplistCodec$Reader;Lkotlin/jvm/internal/Ref$IntRef;I)I
    .locals 4

    int-to-long v0, p0

    const/16 v2, 0xf

    if-ne p0, v2, :cond_1

    .line 172
    iget p0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const-wide/16 v0, 0x1

    invoke-direct {p1, p0, v0, v1}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->need(IJ)V

    .line 173
    iget-object p0, p1, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->bytes:[B

    iget v0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xff

    .line 174
    iget v1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    and-int/2addr p0, v2

    shl-int p0, v3, p0

    ushr-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_0

    const/16 v0, 0x8

    if-gt p0, v0, :cond_0

    .line 177
    iget v0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v1, p0

    invoke-direct {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->need(IJ)V

    .line 178
    sget-object v0, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    iget-object v1, p1, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->bytes:[B

    iget v2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v2, v2

    # invokes: Lcom/shilapi/xcertplay/airplay/BplistCodec;->readBigEndianLong([BJI)J
    invoke-static {v0, v1, v2, v3, p0}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->access$readBigEndianLong(Lcom/shilapi/xcertplay/airplay/BplistCodec;[BJI)J

    move-result-wide v0

    .line 179
    iget v2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v2, p0

    iput v2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 176
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bplist: bad count marker"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_2

    const p0, 0x7fffffff

    .line 181
    div-int/2addr p0, p3

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_2

    .line 182
    iget p0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long p2, p3

    mul-long p2, p2, v0

    invoke-direct {p1, p0, p2, p3}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->need(IJ)V

    long-to-int p0, v0

    return p0

    .line 181
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bplist: bad count"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final toIntReference(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    return p2

    :cond_0
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final read(II)Ljava/lang/Object;
    .locals 4

    if-ltz p1, :cond_3

    .line 140
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->offsets:[J

    array-length v0, v0

    if-ge p1, v0, :cond_3

    const/16 v0, 0x20

    if-gt p2, v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->visiting:[Z

    aget-boolean v1, v0, p1

    if-nez v1, :cond_1

    .line 143
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->decoded:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->decoded:I

    const v3, 0x186a0

    if-gt v1, v3, :cond_0

    .line 144
    aput-boolean v2, v0, p1

    const/4 v0, 0x0

    .line 146
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->readObject(II)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->visiting:[Z

    aput-boolean v0, v1, p1

    return-object p2

    :catchall_0
    move-exception p2

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->visiting:[Z

    aput-boolean v0, v1, p1

    throw p2

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bplist: too many objects"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bplist: reference cycle"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bplist: nested too deeply"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bplist: bad object reference"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
