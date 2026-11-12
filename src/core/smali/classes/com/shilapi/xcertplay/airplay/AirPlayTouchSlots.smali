.class public final Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;
.super Ljava/lang/Object;
.source "AirPlayHid.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAirPlayHid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AirPlayHid.kt\ncom/shilapi/xcertplay/airplay/AirPlayTouchSlots\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,204:1\n1869#2,2:205\n295#2,2:207\n*S KotlinDebug\n*F\n+ 1 AirPlayHid.kt\ncom/shilapi/xcertplay/airplay/AirPlayTouchSlots\n*L\n44#1:205,2\n61#1:207,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0014\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fJ\u001c\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u000f2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fJ\u0015\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0013\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0018\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;",
        "",
        "slotCount",
        "",
        "<init>",
        "(I)V",
        "ids",
        "",
        "[Ljava/lang/Integer;",
        "states",
        "Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;",
        "[Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;",
        "report",
        "",
        "contacts",
        "",
        "Lcom/shilapi/xcertplay/airplay/AirPlayContact;",
        "update",
        "idInSlot",
        "slot",
        "(I)Ljava/lang/Integer;",
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
.field private final ids:[Ljava/lang/Integer;

.field private final slotCount:I

.field private final states:[Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->slotCount:I

    .line 35
    new-array v0, p1, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->ids:[Ljava/lang/Integer;

    .line 36
    new-array p1, p1, [Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->states:[Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    .line 34
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final idInSlot(I)Ljava/lang/Integer;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->ids:[Ljava/lang/Integer;

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public final report(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/airplay/AirPlayContact;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "contacts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayHid;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->update(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->touchReport(Ljava/util/List;)[B

    move-result-object p1

    return-object p1
.end method

.method public final update(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/airplay/AirPlayContact;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "contacts"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    check-cast v1, Ljava/lang/Iterable;

    .line 205
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/airplay/AirPlayContact;

    .line 44
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 45
    :cond_1
    iget v1, v0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->slotCount:I

    new-array v3, v1, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_3

    iget-object v6, v0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->ids:[Ljava/lang/Integer;

    aget-object v6, v6, v5

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    aput-boolean v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 46
    :cond_3
    iget v1, v0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->slotCount:I

    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x0

    if-ge v5, v1, :cond_8

    .line 47
    iget-object v7, v0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->ids:[Ljava/lang/Integer;

    aget-object v7, v7, v5

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 48
    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shilapi/xcertplay/airplay/AirPlayContact;

    .line 49
    iget-object v8, v0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->states:[Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;

    aget-object v9, v8, v5

    if-nez v7, :cond_6

    .line 52
    new-instance v10, Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;

    const-wide/16 v11, 0x0

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;->getX()D

    move-result-wide v13

    goto :goto_4

    :cond_4
    move-wide v13, v11

    :goto_4
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;->getY()D

    move-result-wide v11

    :cond_5
    const/4 v7, 0x0

    move-wide/from16 v16, v13

    move-wide v14, v11

    move-wide/from16 v12, v16

    const/4 v11, 0x0

    invoke-direct/range {v10 .. v15}, Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;-><init>(ZDD)V

    aput-object v10, v8, v5

    .line 53
    iget-object v7, v0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->ids:[Ljava/lang/Integer;

    aput-object v6, v7, v5

    goto :goto_5

    .line 55
    :cond_6
    new-instance v9, Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getDown()Z

    move-result v10

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getX()D

    move-result-wide v11

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getY()D

    move-result-wide v13

    invoke-direct/range {v9 .. v14}, Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;-><init>(ZDD)V

    aput-object v9, v8, v5

    .line 56
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getDown()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->ids:[Ljava/lang/Integer;

    aput-object v6, v7, v5

    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 59
    :cond_8
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v5, "next(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/shilapi/xcertplay/airplay/AirPlayContact;

    .line 60
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getDown()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 61
    iget v5, v0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->slotCount:I

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 207
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 61
    aget-boolean v9, v3, v8

    if-eqz v9, :cond_a

    iget-object v9, v0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->ids:[Ljava/lang/Integer;

    aget-object v8, v9, v8

    if-nez v8, :cond_a

    goto :goto_7

    :cond_b
    move-object v7, v6

    :goto_7
    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 62
    iget-object v7, v0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->ids:[Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 63
    iget-object v7, v0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->states:[Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;

    new-instance v8, Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getX()D

    move-result-wide v10

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getY()D

    move-result-wide v12

    const/4 v9, 0x1

    invoke-direct/range {v8 .. v13}, Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;-><init>(ZDD)V

    aput-object v8, v7, v5

    goto :goto_6

    .line 65
    :cond_c
    iget-object v1, v0, Lcom/shilapi/xcertplay/airplay/AirPlayTouchSlots;->states:[Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
