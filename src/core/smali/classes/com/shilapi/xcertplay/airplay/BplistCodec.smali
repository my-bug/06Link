.class public final Lcom/shilapi/xcertplay/airplay/BplistCodec;
.super Ljava/lang/Object;
.source "BplistCodec.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;,
        Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;,
        Lcom/shilapi/xcertplay/airplay/BplistCodec$Node;,
        Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBplistCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BplistCodec.kt\ncom/shilapi/xcertplay/airplay/BplistCodec\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,348:1\n1#2:349\n37#3:350\n36#3,3:351\n1069#4,2:354\n1563#5:356\n1634#5,3:357\n1563#5:360\n1634#5,3:361\n1563#5:364\n1634#5,3:365\n*S KotlinDebug\n*F\n+ 1 BplistCodec.kt\ncom/shilapi/xcertplay/airplay/BplistCodec\n*L\n121#1:350\n121#1:351,3\n253#1:354,2\n71#1:356\n71#1:357,3\n76#1:360\n76#1:361,3\n77#1:364\n77#1:365,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004%&\'(B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0007\u001a\u00020\u0005J\u0010\u0010\u0008\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0011H\u0002J\u0018\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0018\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0014H\u0002J\u0018\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0014H\u0002J(\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0014H\u0002J \u0010 \u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0014H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0014X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0014X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/BplistCodec;",
        "",
        "<init>",
        "()V",
        "magic",
        "",
        "decode",
        "bytes",
        "encode",
        "root",
        "encodeString",
        "value",
        "",
        "encodeInt",
        "number",
        "",
        "encodeUnsignedInt",
        "Ljava/math/BigInteger;",
        "marker",
        "type",
        "",
        "count",
        "refBytes",
        "refs",
        "",
        "refSize",
        "bigEndian",
        "size",
        "writeBigEndian",
        "",
        "target",
        "offset",
        "readBigEndianLong",
        "APPLE_EPOCH_SECONDS",
        "",
        "MAX_DEPTH",
        "MAX_DECODED_OBJECTS",
        "Reader",
        "Node",
        "Leaf",
        "Container",
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
.field private static final APPLE_EPOCH_SECONDS:D = 9.783072E8

.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

.field private static final MAX_DECODED_OBJECTS:I = 0x186a0

.field private static final MAX_DEPTH:I = 0x20

.field private static final magic:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/BplistCodec;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/BplistCodec;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    .line 11
    const-string v0, "bplist00"

    sget-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/BplistCodec;->magic:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$readBigEndianLong(Lcom/shilapi/xcertplay/airplay/BplistCodec;[BJI)J
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->readBigEndianLong([BJI)J

    move-result-wide p0

    return-wide p0
.end method

.method private final bigEndian(JI)[B
    .locals 6

    .line 317
    new-array v1, p3, [B

    const/4 v2, 0x0

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    .line 318
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->writeBigEndian([BIJI)V

    return-object v1
.end method

.method private static final encode$add(Ljava/util/ArrayList;Ljava/lang/Object;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shilapi/xcertplay/airplay/BplistCodec$Node;",
            ">;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 48
    new-instance v1, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-direct {v1, v3}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;-><init>([B)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    instance-of v1, p1, Ljava/lang/Boolean;

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    new-instance v1, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v4, 0x9

    :cond_0
    new-array p1, v3, [B

    aput-byte v4, p1, v2

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;-><init>([B)V

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 51
    :cond_1
    instance-of v1, p1, Ljava/math/BigInteger;

    if-eqz v1, :cond_4

    .line 52
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_3

    .line 53
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x40

    if-gt v1, v2, :cond_2

    .line 54
    new-instance v1, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;

    sget-object v2, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    invoke-direct {v2, p1}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->encodeUnsignedInt(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;-><init>([B)V

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bplist: integer exceeds 64 bits"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bplist: negative integers are not supported"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_4
    instance-of v1, p1, Ljava/lang/Byte;

    const/16 v5, 0x23

    const-string v6, "null cannot be cast to non-null type kotlin.Number"

    if-nez v1, :cond_f

    instance-of v1, p1, Ljava/lang/Short;

    if-nez v1, :cond_f

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_f

    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_5

    goto/16 :goto_4

    .line 64
    :cond_5
    instance-of v1, p1, Ljava/lang/Float;

    if-nez v1, :cond_e

    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_6

    goto/16 :goto_3

    .line 68
    :cond_6
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;

    sget-object v2, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, p1}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->encodeString(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;-><init>([B)V

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 69
    :cond_7
    instance-of v1, p1, [B

    if-eqz v1, :cond_8

    new-instance v1, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;

    sget-object v2, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    check-cast p1, [B

    array-length v3, p1

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->marker(II)[B

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;-><init>([B)V

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 70
    :cond_8
    instance-of v1, p1, Ljava/util/List;

    const/16 v2, 0xa

    if-eqz v1, :cond_a

    .line 71
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 356
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 357
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 71
    invoke-static {p0, v4}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->encode$add(Ljava/util/ArrayList;Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 358
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    :cond_9
    check-cast v3, Ljava/util/List;

    .line 356
    check-cast v3, Ljava/util/Collection;

    .line 71
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v1

    .line 72
    new-instance v3, Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;

    sget-object v4, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v4, v2, p1}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->marker(II)[B

    move-result-object p1

    invoke-direct {v3, p1, v1}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;-><init>([B[I)V

    invoke-virtual {p0, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 74
    :cond_a
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_d

    .line 75
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 76
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 360
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 361
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 362
    check-cast v5, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->encode$add(Ljava/util/ArrayList;Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 362
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 363
    :cond_b
    check-cast v3, Ljava/util/List;

    .line 360
    check-cast v3, Ljava/util/Collection;

    .line 76
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    .line 364
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 365
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 366
    check-cast v2, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->encode$add(Ljava/util/ArrayList;Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 366
    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 367
    :cond_c
    check-cast v4, Ljava/util/List;

    .line 364
    check-cast v4, Ljava/util/Collection;

    .line 77
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v1

    .line 78
    new-instance v2, Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;

    sget-object v4, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    const/16 v5, 0xd

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v4, v5, p1}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->marker(II)[B

    move-result-object p1

    invoke-static {v3, v1}, Lkotlin/collections/ArraysKt;->plus([I[I)[I

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;-><init>([B[I)V

    invoke-virtual {p0, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 80
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bplist: unsupported value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_e
    :goto_3
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 66
    new-instance p1, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;

    new-array v1, v3, [B

    aput-byte v5, v1, v2

    sget-object v2, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    invoke-direct {v2, v5, v6, v4}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->bigEndian(JI)[B

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;-><init>([B)V

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 57
    :cond_f
    :goto_4
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-ltz p1, :cond_10

    .line 59
    new-instance p1, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;

    sget-object v1, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    invoke-direct {v1, v6, v7}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->encodeInt(J)[B

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;-><init>([B)V

    goto :goto_5

    .line 61
    :cond_10
    new-instance p1, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;

    new-array v1, v3, [B

    aput-byte v5, v1, v2

    sget-object v2, Lcom/shilapi/xcertplay/airplay/BplistCodec;->INSTANCE:Lcom/shilapi/xcertplay/airplay/BplistCodec;

    long-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    invoke-direct {v2, v5, v6, v4}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->bigEndian(JI)[B

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;-><init>([B)V

    .line 58
    :goto_5
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method private final encodeInt(J)[B
    .locals 7

    const-wide v0, 0xffffffffL

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x2

    cmp-long v6, p1, v0

    if-lez v6, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xffff

    cmp-long v6, p1, v0

    if-lez v6, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0xff

    cmp-long v6, p1, v0

    if-lez v6, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    if-eq v0, v5, :cond_4

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x3

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    :cond_5
    :goto_1
    or-int/lit8 v2, v5, 0x10

    int-to-byte v2, v2

    .line 274
    new-array v3, v4, [B

    aput-byte v2, v3, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->bigEndian(JI)[B

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final encodeString(Ljava/lang/String;)[B
    .locals 5

    .line 253
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 354
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, "getBytes(...)"

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0x7f

    if-gt v2, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->marker(II)[B

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x5

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->marker(II)[B

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final encodeUnsignedInt(Ljava/math/BigInteger;)[B
    .locals 7

    .line 279
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x4

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x8

    if-le v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le v0, v3, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le v0, v6, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    if-eq v0, v5, :cond_4

    if-eq v0, v2, :cond_5

    if-eq v0, v6, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x3

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    .line 290
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    or-int/lit8 v2, v5, 0x10

    int-to-byte v2, v2

    .line 291
    new-array v3, v4, [B

    aput-byte v2, v3, v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, p1

    sub-int/2addr v1, v0

    array-length v0, p1

    invoke-static {p1, v1, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final marker(II)[B
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/16 v3, 0xf

    if-ge p2, v3, :cond_0

    shl-int/2addr p1, v2

    or-int/2addr p1, p2

    int-to-byte p1, p1

    .line 295
    new-array p2, v1, [B

    aput-byte p1, p2, v0

    return-object p2

    :cond_0
    const v4, 0xffff

    const/4 v5, 0x2

    if-le p2, v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/16 v4, 0xff

    if-le p2, v4, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    :goto_0
    if-eq v4, v5, :cond_4

    if-eq v4, v2, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x2

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    :goto_1
    shl-int/2addr p1, v2

    or-int/2addr p1, v3

    int-to-byte p1, p1

    or-int/lit8 v2, v6, 0x10

    int-to-byte v2, v2

    .line 306
    new-array v3, v5, [B

    aput-byte p1, v3, v0

    aput-byte v2, v3, v1

    int-to-long p1, p2

    .line 307
    invoke-direct {p0, p1, p2, v4}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->bigEndian(JI)[B

    move-result-object p1

    .line 306
    invoke-static {v3, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final readBigEndianLong([BJI)J
    .locals 6

    long-to-int p3, p2

    const-wide/16 v0, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p4, :cond_0

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    add-int v2, p3, p2

    .line 334
    aget-byte v2, p1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private final refBytes([II)[B
    .locals 8

    .line 311
    array-length v0, p1

    mul-int v0, v0, p2

    new-array v2, v0, [B

    .line 312
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_0

    mul-int v3, v7, p2

    aget v1, p1, v7

    int-to-long v4, v1

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->writeBigEndian([BIJI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private final writeBigEndian([BIJI)V
    .locals 3

    add-int/lit8 p5, p5, -0x1

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p5, :cond_0

    add-int v0, p2, p5

    const-wide/16 v1, 0xff

    and-long/2addr v1, p3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 325
    aput-byte v1, p1, v0

    const/16 v0, 0x8

    ushr-long/2addr p3, v0

    add-int/lit8 p5, p5, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final decode([B)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "bytes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    array-length v2, v1

    const/16 v3, 0x28

    if-lt v2, v3, :cond_8

    .line 15
    sget-object v2, Lcom/shilapi/xcertplay/airplay/BplistCodec;->magic:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 21
    array-length v3, v1

    add-int/lit8 v5, v3, -0x20

    add-int/lit8 v6, v3, -0x1a

    .line 22
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v3, -0x19

    .line 23
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    if-gt v8, v6, :cond_6

    const/16 v9, 0x9

    if-ge v6, v9, :cond_6

    if-gt v8, v7, :cond_6

    if-ge v7, v9, :cond_6

    add-int/lit8 v8, v3, -0x18

    int-to-long v8, v8

    const/16 v10, 0x8

    .line 25
    invoke-direct {v0, v1, v8, v9, v10}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->readBigEndianLong([BJI)J

    move-result-wide v8

    add-int/lit8 v11, v3, -0x10

    int-to-long v11, v11

    .line 26
    invoke-direct {v0, v1, v11, v12, v10}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->readBigEndianLong([BJI)J

    move-result-wide v11

    sub-int/2addr v3, v10

    int-to-long v13, v3

    .line 27
    invoke-direct {v0, v1, v13, v14, v10}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->readBigEndianLong([BJI)J

    move-result-wide v13

    .line 29
    array-length v3, v2

    move v15, v5

    int-to-long v4, v3

    cmp-long v3, v13, v4

    if-ltz v3, :cond_5

    int-to-long v3, v15

    cmp-long v5, v13, v3

    if-gtz v5, :cond_5

    const-wide/16 v3, 0x1

    cmp-long v5, v3, v8

    if-gtz v5, :cond_4

    .line 30
    array-length v2, v2

    int-to-long v2, v2

    sub-long v2, v13, v2

    cmp-long v4, v8, v2

    if-gtz v4, :cond_4

    int-to-long v2, v6

    mul-long v4, v8, v2

    move-wide/from16 v16, v11

    int-to-long v10, v15

    sub-long/2addr v10, v13

    cmp-long v15, v4, v10

    if-gtz v15, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v10, v4, v16

    if-gtz v10, :cond_2

    cmp-long v4, v16, v8

    if-gez v4, :cond_2

    long-to-int v4, v8

    .line 34
    new-array v5, v4, [J

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_1

    int-to-long v9, v8

    mul-long v9, v9, v2

    add-long/2addr v9, v13

    .line 36
    invoke-direct {v0, v1, v9, v10, v6}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->readBigEndianLong([BJI)J

    move-result-wide v9

    .line 37
    sget-object v11, Lcom/shilapi/xcertplay/airplay/BplistCodec;->magic:[B

    array-length v11, v11

    move-wide/from16 v18, v13

    int-to-long v12, v11

    cmp-long v11, v9, v12

    if-ltz v11, :cond_0

    cmp-long v11, v9, v18

    if-gez v11, :cond_0

    .line 38
    aput-wide v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v13, v18

    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bplist: bad object offset"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-wide/from16 v18, v13

    .line 40
    new-instance v2, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;

    move-wide/from16 v3, v18

    long-to-int v4, v3

    invoke-direct {v2, v1, v5, v7, v4}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;-><init>([B[JII)V

    move-wide/from16 v3, v16

    long-to-int v1, v3

    const/4 v14, 0x0

    invoke-virtual {v2, v1, v14}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Reader;->read(II)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 32
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bplist: bad top object"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bplist: offset table overruns"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bplist: bad object count"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bplist: bad offset table"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bplist: bad trailer sizes"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bplist: bad magic"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bplist: too short"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final encode(Ljava/lang/Object;)[B
    .locals 18

    move-object/from16 v0, p0

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p1

    .line 85
    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->encode$add(Ljava/util/ArrayList;Ljava/lang/Object;)I

    move-result v6

    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/16 v5, 0xff

    const/4 v7, 0x2

    const v8, 0xffff

    if-le v2, v8, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 92
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v10, v7

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    sget-object v10, Lcom/shilapi/xcertplay/airplay/BplistCodec;->magic:[B

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    array-length v10, v10

    .line 95
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const-string v13, "iterator(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-string v15, "next(...)"

    if-eqz v14, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Lcom/shilapi/xcertplay/airplay/BplistCodec$Node;

    .line 97
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    instance-of v15, v14, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;

    if-eqz v15, :cond_2

    check-cast v14, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;

    invoke-virtual {v14}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Leaf;->getBody()[B

    move-result-object v14

    goto :goto_2

    .line 100
    :cond_2
    instance-of v15, v14, Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;

    if-eqz v15, :cond_3

    check-cast v14, Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;

    invoke-virtual {v14}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;->getHead()[B

    move-result-object v15

    invoke-virtual {v14}, Lcom/shilapi/xcertplay/airplay/BplistCodec$Container;->getRefs()[I

    move-result-object v14

    invoke-direct {v0, v14, v2}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->refBytes([II)[B

    move-result-object v14

    invoke-static {v15, v14}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v14

    .line 102
    :goto_2
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    array-length v14, v14

    add-int/2addr v10, v14

    goto :goto_1

    .line 98
    :cond_3
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :cond_4
    if-le v10, v8, :cond_5

    const/4 v3, 0x4

    goto :goto_3

    :cond_5
    if-le v10, v5, :cond_6

    const/4 v3, 0x2

    .line 112
    :cond_6
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    int-to-long v7, v5

    invoke-direct {v0, v7, v8, v3}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->bigEndian(JI)[B

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const/16 v4, 0x20

    .line 114
    new-array v4, v4, [B

    const/4 v5, 0x6

    int-to-byte v3, v3

    .line 115
    aput-byte v3, v4, v5

    const/4 v3, 0x7

    int-to-byte v2, v2

    .line 116
    aput-byte v2, v4, v3

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    const/16 v5, 0x8

    move-wide/from16 v16, v1

    move-object v1, v4

    move-wide/from16 v3, v16

    const/16 v2, 0x8

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->writeBigEndian([BIJI)V

    int-to-long v3, v6

    const/16 v2, 0x10

    move-object/from16 v0, p0

    .line 118
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->writeBigEndian([BIJI)V

    int-to-long v3, v10

    const/16 v2, 0x18

    .line 119
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/airplay/BplistCodec;->writeBigEndian([BIJI)V

    .line 120
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    check-cast v9, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 353
    new-array v0, v0, [[B

    invoke-interface {v9, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 121
    check-cast v0, [[B

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/BytesKt;->concatBytes([[B)[B

    move-result-object v0

    return-object v0
.end method
