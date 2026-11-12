.class public final Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;
.super Ljava/lang/Object;
.source "NcmFunctionDiscovery.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNcmFunctionDiscovery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NcmFunctionDiscovery.kt\ncom/shilapi/xcertplay/transport/NcmFunctionDiscovery\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n295#2,2:67\n774#2:69\n865#2,2:70\n2423#2,14:72\n1563#2:86\n1634#2,3:87\n669#2,11:90\n1563#2:101\n1634#2,3:102\n1563#2:105\n1634#2,3:106\n669#2,11:109\n669#2,11:120\n*S KotlinDebug\n*F\n+ 1 NcmFunctionDiscovery.kt\ncom/shilapi/xcertplay/transport/NcmFunctionDiscovery\n*L\n35#1:67,2\n39#1:69\n39#1:70,2\n40#1:72,14\n44#1:86\n44#1:87,3\n45#1:90,11\n53#1:101\n53#1:102,3\n56#1:105\n56#1:106,3\n57#1:109,11\n60#1:120,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0018B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u001e\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00152\u0006\u0010\u0017\u001a\u00020\u0013H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;",
        "",
        "<init>",
        "()V",
        "CONTROL_CLASS",
        "",
        "CONTROL_SUBCLASS",
        "DATA_CLASS",
        "APPLE_ETHERNET_CLASS",
        "APPLE_ETHERNET_SUBCLASS",
        "APPLE_ETHERNET_PROTOCOL",
        "DATA_ALTERNATE_SETTING",
        "find",
        "Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;",
        "configuration",
        "Lcom/shilapi/xcertplay/transport/UsbConfigView;",
        "findCdcNcm",
        "interfaces",
        "",
        "Lcom/shilapi/xcertplay/transport/UsbInterfaceView;",
        "bulkEndpoints",
        "Lkotlin/Pair;",
        "Landroid/hardware/usb/UsbEndpoint;",
        "usbInterface",
        "NcmFunction",
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
.field public static final APPLE_ETHERNET_CLASS:I = 0xff

.field public static final APPLE_ETHERNET_PROTOCOL:I = 0x1

.field public static final APPLE_ETHERNET_SUBCLASS:I = 0xfd

.field public static final CONTROL_CLASS:I = 0x2

.field public static final CONTROL_SUBCLASS:I = 0xd

.field public static final DATA_ALTERNATE_SETTING:I = 0x1

.field public static final DATA_CLASS:I = 0xa

.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;->INSTANCE:Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final bulkEndpoints(Lcom/shilapi/xcertplay/transport/UsbInterfaceView;)Lkotlin/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/UsbInterfaceView;",
            ")",
            "Lkotlin/Pair<",
            "Landroid/hardware/usb/UsbEndpoint;",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getEndpointCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 106
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    .line 56
    invoke-virtual {p1, v3}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    .line 107
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 57
    check-cast v2, Ljava/lang/Iterable;

    .line 111
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v4, v0

    const/4 v3, 0x0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 112
    move-object v8, v5

    check-cast v8, Landroid/hardware/usb/UsbEndpoint;

    .line 58
    invoke-virtual {v8}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v9

    const/16 v10, 0x80

    if-ne v9, v10, :cond_1

    invoke-virtual {v8}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v8

    if-ne v8, v7, :cond_1

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v5

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    :goto_2
    move-object v4, v0

    .line 57
    :cond_4
    check-cast v4, Landroid/hardware/usb/UsbEndpoint;

    .line 122
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, v0

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 123
    move-object v5, v3

    check-cast v5, Landroid/hardware/usb/UsbEndpoint;

    .line 61
    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v5

    if-ne v5, v7, :cond_5

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v2, v3

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    if-nez v1, :cond_8

    :goto_4
    move-object v2, v0

    .line 60
    :cond_8
    check-cast v2, Landroid/hardware/usb/UsbEndpoint;

    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    .line 63
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v0
.end method

.method private final findCdcNcm(Lcom/shilapi/xcertplay/transport/UsbConfigView;)Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;
    .locals 11

    .line 35
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;->interfaces(Lcom/shilapi/xcertplay/transport/UsbConfigView;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 67
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    .line 36
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getInterfaceClass()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getInterfaceSubclass()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 35
    :goto_0
    move-object v4, v1

    check-cast v4, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    if-nez v4, :cond_2

    return-object v2

    .line 38
    :cond_2
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;->interfaces(Lcom/shilapi/xcertplay/transport/UsbConfigView;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 70
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v3, 0xa

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    .line 39
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getInterfaceClass()I

    move-result v6

    if-ne v6, v3, :cond_3

    sget-object v3, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;->INSTANCE:Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;

    invoke-direct {v3, v5}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;->bulkEndpoints(Lcom/shilapi/xcertplay/transport/UsbInterfaceView;)Lkotlin/Pair;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 70
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 39
    check-cast v0, Ljava/lang/Iterable;

    .line 72
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_4

    .line 74
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    .line 76
    :cond_6
    move-object v6, v0

    check-cast v6, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    .line 40
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getAlternateSetting()I

    move-result v6

    if-ne v6, v5, :cond_7

    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    const/4 v6, 0x1

    .line 78
    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 79
    move-object v8, v7

    check-cast v8, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    .line 40
    invoke-virtual {v8}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getAlternateSetting()I

    move-result v8

    if-ne v8, v5, :cond_9

    const/4 v8, 0x0

    goto :goto_3

    :cond_9
    const/4 v8, 0x1

    :goto_3
    if-le v6, v8, :cond_a

    move-object v0, v7

    move v6, v8

    .line 84
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_8

    .line 40
    :goto_4
    check-cast v0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    if-nez v0, :cond_b

    return-object v2

    .line 42
    :cond_b
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;->bulkEndpoints(Lcom/shilapi/xcertplay/transport/UsbInterfaceView;)Lkotlin/Pair;

    move-result-object p1

    if-nez p1, :cond_c

    return-object v2

    .line 43
    :cond_c
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getEndpointCount()I

    move-result v6

    invoke-static {v1, v6}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 86
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 87
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    move-object v6, v3

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    .line 44
    invoke-virtual {v4, v6}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    .line 88
    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 89
    :cond_d
    check-cast v7, Ljava/util/List;

    .line 86
    check-cast v7, Ljava/lang/Iterable;

    .line 92
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v6, v2

    :cond_e
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 93
    move-object v8, v7

    check-cast v8, Landroid/hardware/usb/UsbEndpoint;

    .line 46
    invoke-virtual {v8}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v9

    const/16 v10, 0x80

    if-ne v9, v10, :cond_e

    .line 47
    invoke-virtual {v8}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_e

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    move-object v6, v7

    const/4 v1, 0x1

    goto :goto_6

    :cond_10
    if-nez v1, :cond_11

    goto :goto_7

    :cond_11
    move-object v2, v6

    .line 45
    :goto_7
    move-object v6, v2

    check-cast v6, Landroid/hardware/usb/UsbEndpoint;

    .line 49
    new-instance v3, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/hardware/usb/UsbEndpoint;

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;-><init>(Lcom/shilapi/xcertplay/transport/UsbInterfaceView;Lcom/shilapi/xcertplay/transport/UsbInterfaceView;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    return-object v3
.end method

.method private final interfaces(Lcom/shilapi/xcertplay/transport/UsbConfigView;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/UsbConfigView;",
            ")",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/transport/UsbInterfaceView;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/UsbConfigView;->getInterfaceCount()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 102
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 53
    invoke-virtual {p1, v2}, Lcom/shilapi/xcertplay/transport/UsbConfigView;->getInterface(I)Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    move-result-object v2

    .line 103
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method


# virtual methods
.method public final find(Lcom/shilapi/xcertplay/transport/UsbConfigView;)Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery;->findCdcNcm(Lcom/shilapi/xcertplay/transport/UsbConfigView;)Lcom/shilapi/xcertplay/transport/NcmFunctionDiscovery$NcmFunction;

    move-result-object p1

    return-object p1
.end method
