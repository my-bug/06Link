.class public final Lcom/shilapi/xcertplay/usbbt/SdpServer;
.super Ljava/lang/Object;
.source "Sdp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/SdpServer$ContinuationError;,
        Lcom/shilapi/xcertplay/usbbt/SdpServer$Pending;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSdp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sdp.kt\ncom/shilapi/xcertplay/usbbt/SdpServer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,453:1\n1563#2:454\n1634#2,3:455\n1563#2:458\n1634#2,3:459\n774#2:462\n865#2:463\n1740#2,3:464\n866#2:467\n1563#2:468\n1634#2,3:469\n1869#2,2:472\n295#2,2:474\n1563#2:476\n1634#2,3:477\n1#3:480\n*S KotlinDebug\n*F\n+ 1 Sdp.kt\ncom/shilapi/xcertplay/usbbt/SdpServer\n*L\n272#1:454\n272#1:455,3\n280#1:458\n280#1:459,3\n292#1:462\n292#1:463\n292#1:464,3\n292#1:467\n298#1:468\n298#1:469,3\n302#1:472,2\n312#1:474,2\n322#1:476\n322#1:477,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0002-.B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rJ*\u0010\u000e\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u0003\u0012\u0004\u0012\u00020\r0\u000f2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\rH\u0002J*\u0010\u0013\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0003\u0012\u0004\u0012\u00020\r0\u000f2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\rH\u0002J\u001c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0003H\u0002J\u0018\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\nH\u0002J \u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0002J \u0010\u001a\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0002J@\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0018\u0010 \u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010!\u001a\u00020\rH\u0002J \u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\nH\u0002J\u0018\u0010$\u001a\u00020\r2\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\rH\u0002J\u0018\u0010\'\u001a\u00020\r2\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\rH\u0002J\u0018\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\rH\u0002R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/SdpServer;",
        "",
        "records",
        "",
        "Lcom/shilapi/xcertplay/usbbt/SdpRecord;",
        "<init>",
        "(Ljava/util/List;)V",
        "pending",
        "Lcom/shilapi/xcertplay/usbbt/SdpServer$Pending;",
        "handle",
        "",
        "request",
        "peerMtu",
        "",
        "searchPattern",
        "Lkotlin/Pair;",
        "Ljava/util/UUID;",
        "params",
        "offset",
        "attributeRanges",
        "Lkotlin/ranges/IntRange;",
        "matching",
        "uuids",
        "serviceSearch",
        "tid",
        "serviceAttribute",
        "serviceSearchAttribute",
        "chunked",
        "pduId",
        "contOffset",
        "full",
        "maxBytes",
        "error",
        "code",
        "pdu",
        "id",
        "u16",
        "p",
        "i",
        "u16BigEndian",
        "writeU16",
        "",
        "out",
        "Ljava/io/ByteArrayOutputStream;",
        "v",
        "Pending",
        "ContinuationError",
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
.field private pending:Lcom/shilapi/xcertplay/usbbt/SdpServer$Pending;

.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/usbbt/SdpRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$YigD8M3lkZAxOOAGLqfbyjrv4xs(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->chunked$lambda$8(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/usbbt/SdpRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "records"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/SdpServer;->records:Ljava/util/List;

    return-void
.end method

.method private final attributeRanges([BI)Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lkotlin/ranges/IntRange;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/Sdp;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/Sdp;

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode([BI)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shilapi/xcertplay/usbbt/DataElement;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 280
    instance-of v0, p2, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;->getItems()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7

    check-cast p2, Ljava/lang/Iterable;

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 459
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 460
    check-cast v2, Lcom/shilapi/xcertplay/usbbt/DataElement;

    .line 281
    instance-of v3, v2, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    goto :goto_2

    :cond_1
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 282
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;->getBytes()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 284
    new-instance v3, Lkotlin/ranges/IntRange;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;->getValue()J

    move-result-wide v4

    const/16 v6, 0x10

    ushr-long/2addr v4, v6

    long-to-int v5, v4

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;->getValue()J

    move-result-wide v6

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    long-to-int v2, v6

    invoke-direct {v3, v5, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    goto :goto_3

    .line 285
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string p2, "attribute id size"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_3
    new-instance v3, Lkotlin/ranges/IntRange;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;->getValue()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;->getValue()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-direct {v3, v5, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 460
    :goto_3
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 281
    :cond_4
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string p2, "attribute id"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw p1

    .line 461
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 288
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 288
    :cond_6
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string p2, "attribute list empty"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_7
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string p2, "attribute list"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private final chunked(II[BI[BII)[B
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 328
    array-length v4, v2

    if-le v4, v3, :cond_7

    .line 329
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    if-gt v4, v5, :cond_6

    .line 330
    array-length v5, v2

    add-int/lit8 v6, v3, 0x1

    add-int v7, v6, v4

    if-lt v5, v7, :cond_6

    const/4 v5, 0x0

    .line 331
    invoke-static {v2, v5, v3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v7

    const-string v3, ""

    move-object v8, v3

    check-cast v8, Ljava/lang/CharSequence;

    new-instance v13, Lcom/shilapi/xcertplay/usbbt/SdpServer$$ExternalSyntheticLambda0;

    invoke-direct {v13}, Lcom/shilapi/xcertplay/usbbt/SdpServer$$ExternalSyntheticLambda0;-><init>()V

    const/16 v14, 0x1e

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v15}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    if-eqz v4, :cond_4

    if-ne v4, v7, :cond_3

    .line 335
    iget-object v4, v0, Lcom/shilapi/xcertplay/usbbt/SdpServer;->pending:Lcom/shilapi/xcertplay/usbbt/SdpServer$Pending;

    if-eqz v4, :cond_2

    .line 336
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/usbbt/SdpServer$Pending;->getRequestKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    invoke-direct {v0, v2, v6}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->u16BigEndian([BI)I

    move-result v2

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/usbbt/SdpServer$Pending;->getFull()[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/SdpServer$ContinuationError;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/usbbt/SdpServer$ContinuationError;-><init>()V

    throw v1

    .line 336
    :cond_1
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/SdpServer$ContinuationError;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/usbbt/SdpServer$ContinuationError;-><init>()V

    throw v1

    .line 335
    :cond_2
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/SdpServer$ContinuationError;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/usbbt/SdpServer$ContinuationError;-><init>()V

    throw v1

    .line 339
    :cond_3
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/SdpServer$ContinuationError;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/usbbt/SdpServer$ContinuationError;-><init>()V

    throw v1

    .line 333
    :cond_4
    new-instance v2, Lcom/shilapi/xcertplay/usbbt/SdpServer$Pending;

    move-object/from16 v4, p5

    invoke-direct {v2, v3, v4}, Lcom/shilapi/xcertplay/usbbt/SdpServer$Pending;-><init>(Ljava/lang/String;[B)V

    iput-object v2, v0, Lcom/shilapi/xcertplay/usbbt/SdpServer;->pending:Lcom/shilapi/xcertplay/usbbt/SdpServer$Pending;

    const/4 v2, 0x0

    .line 341
    :goto_0
    iget-object v3, v0, Lcom/shilapi/xcertplay/usbbt/SdpServer;->pending:Lcom/shilapi/xcertplay/usbbt/SdpServer$Pending;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/SdpServer$Pending;->getFull()[B

    move-result-object v3

    add-int/lit8 v4, p7, -0xa

    move/from16 v6, p6

    .line 343
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    .line 344
    array-length v6, v3

    add-int/2addr v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 345
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sub-int v8, v4, v2

    .line 346
    invoke-direct {v0, v6, v8}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    .line 347
    invoke-virtual {v6, v3, v2, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 348
    array-length v2, v3

    if-ge v4, v2, :cond_5

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-direct {v0, v6, v4}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/shilapi/xcertplay/usbbt/SdpServer;->pending:Lcom/shilapi/xcertplay/usbbt/SdpServer$Pending;

    .line 349
    :goto_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string/jumbo v3, "toByteArray(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v3, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->pdu(II[B)[B

    move-result-object v1

    return-object v1

    .line 330
    :cond_6
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string v2, "continuation"

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :cond_7
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string v2, "no continuation state"

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final chunked$lambda$8(B)Ljava/lang/CharSequence;
    .locals 3

    .line 331
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final error(II)[B
    .locals 3

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    int-to-byte p2, p2

    const/4 v1, 0x2

    .line 352
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p2, v1, v0

    invoke-direct {p0, v0, p1, v1}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->pdu(II[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final matching(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/usbbt/SdpRecord;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/SdpServer;->records:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 463
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/SdpRecord;

    .line 292
    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    .line 464
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 465
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    .line 292
    invoke-virtual {v3, v5}, Lcom/shilapi/xcertplay/usbbt/SdpRecord;->contains(Ljava/util/UUID;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 463
    :cond_2
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :cond_3
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final pdu(II[B)[B
    .locals 5

    int-to-byte p1, p1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    int-to-byte p2, p2

    .line 355
    array-length v1, p3

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    array-length v2, p3

    int-to-byte v2, v2

    const/4 v3, 0x5

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte p1, v3, v4

    const/4 p1, 0x1

    aput-byte v0, v3, p1

    const/4 p1, 0x2

    aput-byte p2, v3, p1

    const/4 p1, 0x3

    aput-byte v1, v3, p1

    const/4 p1, 0x4

    aput-byte v2, v3, p1

    invoke-static {v3, p3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final searchPattern([BI)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/Sdp;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/Sdp;

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode([BI)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shilapi/xcertplay/usbbt/DataElement;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 272
    instance-of v0, p2, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    const-string v0, "pattern"

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;->getItems()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    check-cast p2, Ljava/lang/Iterable;

    .line 454
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 455
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 456
    check-cast v3, Lcom/shilapi/xcertplay/usbbt/DataElement;

    .line 272
    instance-of v4, v3, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    goto :goto_2

    :cond_1
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 456
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 272
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 274
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    const/16 v0, 0xc

    if-gt p2, v0, :cond_4

    .line 275
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 274
    :cond_4
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string p2, "pattern size"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :cond_5
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private final serviceAttribute(I[BI)[B
    .locals 13

    .line 308
    array-length v0, p2

    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, p2, v0}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->u16([BI)I

    move-result v0

    int-to-long v2, v0

    const/16 v0, 0x10

    shl-long/2addr v2, v0

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->u16([BI)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    const/4 v4, 0x4

    .line 310
    invoke-direct {p0, p2, v4}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->u16([BI)I

    move-result v11

    .line 311
    invoke-direct {p0, p2, v1}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->attributeRanges([BI)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 312
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/SdpServer;->records:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 474
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/shilapi/xcertplay/usbbt/SdpRecord;

    .line 312
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/usbbt/SdpRecord;->getHandle()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    check-cast v5, Lcom/shilapi/xcertplay/usbbt/SdpRecord;

    if-nez v5, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->error(II)[B

    move-result-object p1

    return-object p1

    .line 313
    :cond_2
    invoke-virtual {v5, v4}, Lcom/shilapi/xcertplay/usbbt/SdpRecord;->attributeList(Ljava/util/List;)Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;->encode()[B

    move-result-object v10

    const/4 v6, 0x5

    move-object v5, p0

    move v7, p1

    move-object v8, p2

    move/from16 v12, p3

    .line 314
    invoke-direct/range {v5 .. v12}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->chunked(II[BI[BII)[B

    move-result-object p1

    return-object p1

    .line 308
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string/jumbo p2, "short"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final serviceSearch(I[B)[B
    .locals 10

    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, p2, v0}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->searchPattern([BI)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 296
    array-length v3, p2

    add-int/lit8 v4, v1, 0x3

    if-lt v3, v4, :cond_3

    .line 297
    invoke-direct {p0, p2, v1}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->u16([BI)I

    move-result p2

    .line 298
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->matching(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, p2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 468
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 469
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 470
    check-cast v2, Lcom/shilapi/xcertplay/usbbt/SdpRecord;

    .line 298
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/SdpRecord;->getHandle()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 470
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 471
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 300
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 301
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    .line 302
    check-cast v1, Ljava/lang/Iterable;

    .line 472
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    :goto_1
    const/4 v2, -0x1

    if-ge v2, v3, :cond_1

    mul-int/lit8 v2, v3, 0x8

    ushr-long v6, v4, v2

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v2, v6

    .line 302
    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 303
    :cond_2
    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 304
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const-string/jumbo v0, "toByteArray(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, p1, p2}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->pdu(II[B)[B

    move-result-object p1

    return-object p1

    .line 296
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string/jumbo p2, "short"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final serviceSearchAttribute(I[BI)[B
    .locals 12

    const/4 v0, 0x0

    .line 318
    invoke-direct {p0, p2, v0}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->searchPattern([BI)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 319
    array-length v2, p2

    add-int/lit8 v3, v0, 0x2

    if-lt v2, v3, :cond_1

    .line 320
    invoke-direct {p0, p2, v0}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->u16([BI)I

    move-result v10

    .line 321
    invoke-direct {p0, p2, v3}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->attributeRanges([BI)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 322
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->matching(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 476
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 477
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 478
    check-cast v3, Lcom/shilapi/xcertplay/usbbt/SdpRecord;

    .line 322
    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/usbbt/SdpRecord;->attributeList(Ljava/util/List;)Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    move-result-object v3

    .line 478
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 322
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;->encode()[B

    move-result-object v9

    const/4 v5, 0x7

    move-object v4, p0

    move v6, p1

    move-object v7, p2

    move v11, p3

    .line 323
    invoke-direct/range {v4 .. v11}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->chunked(II[BI[BII)[B

    move-result-object p1

    return-object p1

    .line 319
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string/jumbo p2, "short"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final u16([BI)I
    .locals 0

    .line 357
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->u16BigEndian([BI)I

    move-result p1

    return p1
.end method

.method private final u16BigEndian([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x2

    .line 359
    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 360
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1

    .line 359
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;

    const-string/jumbo p2, "short"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final writeU16(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1

    ushr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 363
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public final handle([BI)[B
    .locals 8

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->error(II)[B

    move-result-object p1

    return-object p1

    .line 249
    :cond_0
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 250
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v4, 0x2

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    const/4 v5, 0x3

    .line 251
    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, p1, v2

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 252
    array-length v7, p1

    add-int/2addr v6, v3

    if-ge v7, v6, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->error(II)[B

    move-result-object p1

    return-object p1

    .line 253
    :cond_1
    invoke-static {p1, v3, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    if-eq v0, v4, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    .line 259
    :try_start_0
    invoke-direct {p0, v1, v5}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->error(II)[B

    move-result-object p1

    return-object p1

    .line 258
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->serviceSearchAttribute(I[BI)[B

    move-result-object p1

    return-object p1

    .line 257
    :cond_3
    invoke-direct {p0, v1, p1, p2}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->serviceAttribute(I[BI)[B

    move-result-object p1

    return-object p1

    .line 256
    :cond_4
    invoke-direct {p0, v1, p1}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->serviceSearch(I[B)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/shilapi/xcertplay/usbbt/Sdp$Malformed; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/shilapi/xcertplay/usbbt/SdpServer$ContinuationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 264
    :catch_0
    invoke-direct {p0, v1, v3}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->error(II)[B

    move-result-object p1

    goto :goto_0

    .line 262
    :catch_1
    invoke-direct {p0, v1, v5}, Lcom/shilapi/xcertplay/usbbt/SdpServer;->error(II)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method
