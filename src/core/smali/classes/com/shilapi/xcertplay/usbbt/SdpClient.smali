.class public final Lcom/shilapi/xcertplay/usbbt/SdpClient;
.super Ljava/lang/Object;
.source "Sdp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005J\u001c\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u0005J\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/SdpClient;",
        "",
        "<init>",
        "()V",
        "searchAttributeRequest",
        "",
        "tid",
        "",
        "uuid",
        "Ljava/util/UUID;",
        "continuation",
        "parseSearchAttributeResponse",
        "Lkotlin/Pair;",
        "pdu",
        "rfcommChannel",
        "attributeLists",
        "([B)Ljava/lang/Integer;",
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


# static fields
.field public static final INSTANCE:Lcom/shilapi/xcertplay/usbbt/SdpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/SdpClient;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/SdpClient;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/SdpClient;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/SdpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic searchAttributeRequest$default(Lcom/shilapi/xcertplay/usbbt/SdpClient;ILjava/util/UUID;[BILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 375
    new-array p3, p3, [B

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/SdpClient;->searchAttributeRequest(ILjava/util/UUID;[B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final parseSearchAttributeResponse([B)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lkotlin/Pair<",
            "[B[B>;"
        }
    .end annotation

    const-string v0, "pdu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 389
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 390
    array-length v5, p1

    add-int/lit8 v6, v4, 0x5

    if-lt v5, v6, :cond_4

    if-ge v4, v0, :cond_1

    goto :goto_0

    .line 391
    :cond_1
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x7

    add-int/lit8 v4, v0, 0x8

    if-le v4, v6, :cond_2

    return-object v1

    .line 393
    :cond_2
    invoke-static {p1, v3, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    .line 394
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x10

    if-gt v2, v4, :cond_4

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v2, v0

    if-le v2, v6, :cond_3

    goto :goto_0

    .line 396
    :cond_3
    invoke-static {p1, v0, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method public final rfcommChannel([B)Ljava/lang/Integer;
    .locals 10

    const-string v0, "attributeLists"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 400
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/SdpClient;

    .line 401
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/Sdp;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/Sdp;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/shilapi/xcertplay/usbbt/Sdp;->decode([BI)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement;

    .line 402
    instance-of v1, p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;->getItems()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/DataElement;

    .line 403
    instance-of v3, v1, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    if-eqz v3, :cond_4

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;->getItems()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_4
    add-int/lit8 v4, v3, 0x1

    .line 405
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 406
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    if-eqz v6, :cond_6

    check-cast v5, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    goto :goto_5

    :cond_6
    move-object v5, v0

    :goto_5
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;->getValue()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_6

    :cond_7
    move-object v5, v0

    :goto_6
    if-nez v5, :cond_8

    goto/16 :goto_e

    .line 407
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_12

    .line 408
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    if-eqz v5, :cond_9

    check-cast v4, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    goto :goto_7

    :cond_9
    move-object v4, v0

    :goto_7
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;->getItems()Ljava/util/List;

    move-result-object v4

    goto :goto_8

    :cond_a
    move-object v4, v0

    :goto_8
    if-nez v4, :cond_b

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shilapi/xcertplay/usbbt/DataElement;

    .line 409
    instance-of v6, v5, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    if-eqz v6, :cond_d

    check-cast v5, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    goto :goto_a

    :cond_d
    move-object v5, v0

    :goto_a
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;->getItems()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_e

    goto :goto_9

    .line 410
    :cond_e
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    if-eqz v7, :cond_f

    check-cast v6, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    goto :goto_b

    :cond_f
    move-object v6, v0

    :goto_b
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    goto :goto_c

    :cond_10
    move-object v6, v0

    :goto_c
    sget-object v7, Lcom/shilapi/xcertplay/usbbt/Sdp;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/Sdp;

    const-wide/16 v8, 0x3

    invoke-virtual {v7, v8, v9}, Lcom/shilapi/xcertplay/usbbt/Sdp;->baseUuid(J)Ljava/util/UUID;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 p1, 0x1

    .line 411
    invoke-static {v5, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    if-eqz v1, :cond_11

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    goto :goto_d

    :cond_11
    move-object p1, v0

    :goto_d
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;->getValue()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_f

    :cond_12
    :goto_e
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_4

    :cond_13
    move-object p1, v0

    .line 400
    :goto_f
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_10

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 419
    :goto_10
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_11

    :cond_14
    move-object v0, p1

    :goto_11
    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final searchAttributeRequest(ILjava/util/UUID;[B)[B
    .locals 8

    const-string/jumbo v0, "uuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 377
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    sget-object v4, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->Companion:Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;

    invoke-virtual {v4, p2}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid$Companion;->of128(Ljava/util/UUID;)Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    move-result-object p2

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-direct {v1, v3}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;->encode()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 p2, 0xff

    .line 378
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 379
    new-instance p2, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    new-array v1, v2, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    new-instance v3, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    const-wide/32 v5, 0x10004

    const/4 v7, 0x4

    invoke-direct {v3, v7, v5, v6}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;-><init>(IJ)V

    aput-object v3, v1, v4

    invoke-direct {p2, v1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>([Lcom/shilapi/xcertplay/usbbt/DataElement;)V

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;->encode()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 380
    array-length p2, p3

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 381
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    ushr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    int-to-byte p1, p1

    .line 383
    array-length v0, p2

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    array-length v1, p2

    int-to-byte v1, v1

    const/4 v3, 0x5

    new-array v3, v3, [B

    const/4 v5, 0x6

    aput-byte v5, v3, v4

    aput-byte p3, v3, v2

    const/4 p3, 0x2

    aput-byte p1, v3, p3

    const/4 p1, 0x3

    aput-byte v0, v3, p1

    aput-byte v1, v3, v7

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 382
    invoke-static {v3, p2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1
.end method
