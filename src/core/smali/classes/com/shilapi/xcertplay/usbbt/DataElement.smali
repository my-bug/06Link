.class public abstract Lcom/shilapi/xcertplay/usbbt/DataElement;
.super Ljava/lang/Object;
.source "Sdp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/DataElement$Alternative;,
        Lcom/shilapi/xcertplay/usbbt/DataElement$Bool;,
        Lcom/shilapi/xcertplay/usbbt/DataElement$Nil;,
        Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;,
        Lcom/shilapi/xcertplay/usbbt/DataElement$Text;,
        Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;,
        Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSdp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sdp.kt\ncom/shilapi/xcertplay/usbbt/DataElement\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,453:1\n1#2:454\n1374#3:455\n1460#3,5:456\n1374#3:461\n1460#3,5:462\n*S KotlinDebug\n*F\n+ 1 Sdp.kt\ncom/shilapi/xcertplay/usbbt/DataElement\n*L\n41#1:455\n41#1:456,5\n42#1:461\n42#1:462,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0007\t\n\u000b\u000c\r\u000e\u000fB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0082\u0001\u0007\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/DataElement;",
        "",
        "<init>",
        "()V",
        "encode",
        "",
        "uuids",
        "",
        "Ljava/util/UUID;",
        "UInt",
        "Uuid",
        "Text",
        "Bool",
        "Sequence",
        "Alternative",
        "Nil",
        "Lcom/shilapi/xcertplay/usbbt/DataElement$Alternative;",
        "Lcom/shilapi/xcertplay/usbbt/DataElement$Bool;",
        "Lcom/shilapi/xcertplay/usbbt/DataElement$Nil;",
        "Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;",
        "Lcom/shilapi/xcertplay/usbbt/DataElement$Text;",
        "Lcom/shilapi/xcertplay/usbbt/DataElement$UInt;",
        "Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/DataElement;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode()[B
    .locals 2

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/Sdp;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/Sdp;

    invoke-virtual {v1, p0, v0}, Lcom/shilapi/xcertplay/usbbt/Sdp;->encodeTo$shared_release(Lcom/shilapi/xcertplay/usbbt/DataElement;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final uuids()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 40
    instance-of v0, p0, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/DataElement$Uuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    instance-of v0, p0, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/DataElement$Sequence;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 455
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 456
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 457
    check-cast v2, Lcom/shilapi/xcertplay/usbbt/DataElement;

    .line 41
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/DataElement;->uuids()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 458
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 460
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 42
    :cond_2
    instance-of v0, p0, Lcom/shilapi/xcertplay/usbbt/DataElement$Alternative;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/DataElement$Alternative;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/DataElement$Alternative;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 462
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 463
    check-cast v2, Lcom/shilapi/xcertplay/usbbt/DataElement;

    .line 42
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/DataElement;->uuids()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 464
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 466
    :cond_3
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 43
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
