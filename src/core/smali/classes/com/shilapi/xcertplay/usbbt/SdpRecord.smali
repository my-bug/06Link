.class public final Lcom/shilapi/xcertplay/usbbt/SdpRecord;
.super Ljava/lang/Object;
.source "Sdp.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSdp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sdp.kt\ncom/shilapi/xcertplay/usbbt/SdpRecord\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,453:1\n1761#2,3:454\n1761#2,3:460\n488#3,3:457\n491#3,4:463\n77#4:467\n97#4,5:468\n*S KotlinDebug\n*F\n+ 1 Sdp.kt\ncom/shilapi/xcertplay/usbbt/SdpRecord\n*L\n52#1:454,3\n56#1:460,3\n56#1:457,3\n56#1:463,4\n57#1:467\n57#1:468,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0014\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/SdpRecord;",
        "",
        "handle",
        "",
        "attributes",
        "",
        "",
        "Lcom/shilapi/xcertplay/usbbt/DataElement;",
        "<init>",
        "(JLjava/util/Map;)V",
        "getHandle",
        "()J",
        "Ljava/util/SortedMap;",
        "getAttributes",
        "()Ljava/util/SortedMap;",
        "contains",
        "",
        "uuid",
        "Ljava/util/UUID;",
        "attributeList",
        "Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;",
        "ranges",
        "",
        "Lkotlin/ranges/IntRange;",
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
.field private final attributes:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/usbbt/DataElement;",
            ">;"
        }
    .end annotation
.end field

.field private final handle:J


# direct methods
.method public constructor <init>(JLjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/shilapi/xcertplay/usbbt/DataElement;",
            ">;)V"
        }
    .end annotation

    const-string v0, "attributes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shilapi/xcertplay/usbbt/SdpRecord;->handle:J

    .line 50
    new-instance v0, Ljava/util/TreeMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1, p2}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;-><init>(IJ)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    check-cast v0, Ljava/util/SortedMap;

    iput-object v0, p0, Lcom/shilapi/xcertplay/usbbt/SdpRecord;->attributes:Ljava/util/SortedMap;

    return-void
.end method


# virtual methods
.method public final attributeList(Ljava/util/List;)Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/ranges/IntRange;",
            ">;)",
            "Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;"
        }
    .end annotation

    const-string v0, "ranges"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/SdpRecord;->attributes:Ljava/util/SortedMap;

    check-cast v0, Ljava/util/Map;

    .line 457
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 458
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 459
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 56
    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    .line 460
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 461
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/ranges/IntRange;

    .line 56
    invoke-virtual {v5}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v6

    invoke-virtual {v5}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v6, v7, :cond_2

    if-gt v7, v5, :cond_2

    .line 463
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 466
    :cond_3
    check-cast v1, Ljava/util/Map;

    .line 467
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 468
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 469
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/DataElement;

    const/4 v3, 0x2

    .line 57
    new-array v4, v3, [Lcom/shilapi/xcertplay/usbbt/DataElement;

    new-instance v5, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v6, v2

    invoke-direct {v5, v3, v6, v7}, Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;-><init>(IJ)V

    const/4 v2, 0x0

    aput-object v5, v4, v2

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 470
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 472
    :cond_4
    check-cast p1, Ljava/util/List;

    .line 55
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final contains(Ljava/util/UUID;)Z
    .locals 3

    const-string/jumbo v0, "uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/SdpRecord;->attributes:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 454
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 455
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/DataElement;

    .line 52
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/DataElement;->uuids()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public final getAttributes()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/usbbt/DataElement;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/SdpRecord;->attributes:Ljava/util/SortedMap;

    return-object v0
.end method

.method public final getHandle()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/SdpRecord;->handle:J

    return-wide v0
.end method
