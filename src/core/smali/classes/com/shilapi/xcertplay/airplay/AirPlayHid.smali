.class public final Lcom/shilapi/xcertplay/airplay/AirPlayHid;
.super Ljava/lang/Object;
.source "AirPlayHid.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAirPlayHid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AirPlayHid.kt\ncom/shilapi/xcertplay/airplay/AirPlayHid\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,204:1\n1#2:205\n1563#3:206\n1634#3,3:207\n*S KotlinDebug\n*F\n+ 1 AirPlayHid.kt\ncom/shilapi/xcertplay/airplay/AirPlayHid\n*L\n155#1:206\n155#1:207,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00012B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\rJ\u001c\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000c2\u0006\u0010\u0010\u001a\u00020\rJ\u001c\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000c2\u0006\u0010\u0010\u001a\u00020\rJ\u001c\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000c2\u0006\u0010\u0010\u001a\u00020\rJ\u0016\u0010\u0015\u001a\u00020\u00162\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018J\u000e\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u0005J6\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000c2\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u0018\u0010$\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\u0018\u0010%\u001a\u00020&2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\u0014\u0010#\u001a\u00020\u00162\n\u0010*\u001a\u00020&\"\u00020\u0005H\u0002J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0005H\u0002J \u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u00162\u0006\u00101\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AirPlayHid;",
        "",
        "<init>",
        "()V",
        "TOUCH_HID_UID",
        "",
        "KNOB_HID_UID",
        "MEDIA_HID_UID",
        "TELEPHONY_HID_UID",
        "TOUCH_CONTACTS",
        "BYTES_PER_FINGER",
        "touchHidDevice",
        "",
        "",
        "xMax",
        "yMax",
        "displayUuid",
        "knobHidDevice",
        "mediaHidDevice",
        "telephonyHidDevice",
        "TOUCH_SLOTS",
        "touchReport",
        "",
        "slots",
        "",
        "Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;",
        "knobReport",
        "state",
        "Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;",
        "mediaReport",
        "index",
        "telephonyReport",
        "hidDeviceEntry",
        "uid",
        "name",
        "descriptor",
        "multitouchDescriptor",
        "fingerCollection",
        "",
        "knobDescriptor",
        "mediaDescriptor",
        "telephonyDescriptor",
        "bytes",
        "clampAxis",
        "",
        "value",
        "writeU16Le",
        "",
        "target",
        "offset",
        "TouchSlot",
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
.field private static final BYTES_PER_FINGER:I = 0x6

.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayHid;

.field public static final KNOB_HID_UID:I = 0x2a2a2a2b

.field public static final MEDIA_HID_UID:I = 0x2a2a2a2c

.field public static final TELEPHONY_HID_UID:I = 0x2a2a2a2d

.field private static final TOUCH_CONTACTS:I = 0x2

.field public static final TOUCH_HID_UID:I = 0x2a2a2a2a

.field public static final TOUCH_SLOTS:I = 0x2

.field private static final knobDescriptor:[B

.field private static final mediaDescriptor:[B

.field private static final telephonyDescriptor:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/AirPlayHid;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayHid;

    const/16 v1, 0x46

    .line 174
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 167
    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->descriptor([I)[B

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->knobDescriptor:[B

    const/16 v1, 0x28

    .line 182
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 177
    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->descriptor([I)[B

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->mediaDescriptor:[B

    const/16 v1, 0x39

    .line 192
    new-array v1, v1, [I

    fill-array-data v1, :array_2

    .line 185
    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->descriptor([I)[B

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->telephonyDescriptor:[B

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x1
        0x9
        0x8
        0xa1
        0x1
        0x5
        0x9
        0x9
        0x1
        0x15
        0x0
        0x25
        0x1
        0x75
        0x1
        0x95
        0x1
        0x81
        0x2
        0x5
        0xc
        0xa
        0x23
        0x2
        0xa
        0x24
        0x2
        0x95
        0x2
        0x81
        0x2
        0x95
        0x5
        0x81
        0x1
        0x5
        0x1
        0x9
        0x1
        0xa1
        0x0
        0x9
        0x30
        0x9
        0x31
        0x15
        0x81
        0x25
        0x7f
        0x75
        0x8
        0x95
        0x2
        0x81
        0x2
        0xc0
        0x9
        0x38
        0x15
        0x81
        0x25
        0x7f
        0x75
        0x8
        0x95
        0x1
        0x81
        0x6
        0xc0
    .end array-data

    :array_1
    .array-data 4
        0x5
        0xc
        0x9
        0x1
        0xa1
        0x1
        0x15
        0x0
        0x25
        0x6
        0x5
        0xc
        0xa
        0x0
        0x0
        0xa
        0xb0
        0x0
        0xa
        0xb1
        0x0
        0xa
        0xcd
        0x0
        0xa
        0xb5
        0x0
        0xa
        0xb6
        0x0
        0xa
        0x9e
        0x2
        0x75
        0x8
        0x95
        0x1
        0x81
        0x0
        0xc0
    .end array-data

    :array_2
    .array-data 4
        0x5
        0xb
        0x9
        0x7
        0xa1
        0x1
        0x15
        0x0
        0x25
        0x11
        0x5
        0xb
        0x9
        0x0
        0x9
        0x20
        0x9
        0x21
        0x9
        0x26
        0x9
        0x2f
        0x9
        0xb0
        0x9
        0xb1
        0x9
        0xb2
        0x9
        0xb3
        0x9
        0xb4
        0x9
        0xb5
        0x9
        0xb6
        0x9
        0xb7
        0x9
        0xb8
        0x9
        0xb9
        0x9
        0xba
        0x9
        0xbb
        0x5
        0x7
        0x9
        0x2a
        0x75
        0x8
        0x95
        0x1
        0x81
        0x0
        0xc0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final clampAxis(I)B
    .locals 2

    const/16 v0, -0x7f

    const/16 v1, 0x7f

    .line 197
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method private final varargs descriptor([I)[B
    .locals 4

    .line 195
    array-length v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final fingerCollection(II)[I
    .locals 52

    move/from16 v0, p1

    move/from16 v1, p2

    and-int/lit16 v2, v0, 0xff

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v3, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    const/16 v50, 0x2

    const/16 v51, 0xc0

    move/from16 v46, v1

    const/4 v1, 0x5

    move/from16 v34, v2

    const/16 v2, 0xd

    move/from16 v45, v3

    const/16 v3, 0x9

    const/16 v4, 0x22

    const/16 v5, 0xa1

    const/4 v6, 0x2

    const/16 v7, 0x9

    const/16 v8, 0x38

    const/16 v9, 0x75

    const/16 v10, 0x8

    const/16 v11, 0x95

    const/4 v12, 0x1

    const/16 v13, 0x81

    const/4 v14, 0x2

    const/16 v15, 0x15

    const/16 v16, 0x0

    const/16 v17, 0x25

    const/16 v18, 0x1

    const/16 v19, 0x9

    const/16 v20, 0x33

    const/16 v21, 0x75

    const/16 v22, 0x1

    const/16 v23, 0x95

    const/16 v24, 0x1

    const/16 v25, 0x81

    const/16 v26, 0x2

    const/16 v27, 0x95

    const/16 v28, 0x7

    const/16 v29, 0x81

    const/16 v30, 0x3

    const/16 v31, 0x5

    const/16 v32, 0x1

    const/16 v33, 0x26

    const/16 v36, 0x9

    const/16 v37, 0x30

    const/16 v38, 0x75

    const/16 v39, 0x10

    const/16 v40, 0x95

    const/16 v41, 0x1

    const/16 v42, 0x81

    const/16 v43, 0x2

    const/16 v44, 0x26

    const/16 v47, 0x9

    const/16 v48, 0x31

    const/16 v49, 0x81

    move/from16 v35, v0

    .line 164
    filled-new-array/range {v1 .. v51}, [I

    move-result-object v0

    return-object v0
.end method

.method private final hidDeviceEntry(ILjava/lang/String;[BLjava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    .line 141
    new-array v0, v0, [Lkotlin/Pair;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "hidProductID"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v1, 0x2

    .line 142
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "hidVendorID"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-wide/16 v1, 0x0

    .line 143
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "hidCountryCode"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x10

    .line 144
    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "uuid"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 145
    const-string p1, "name"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    .line 146
    const-string p1, "displayUUID"

    invoke-static {p1, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    .line 147
    const-string p1, "hidDescriptor"

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    .line 140
    invoke-static {v0}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method private final multitouchDescriptor(II)[B
    .locals 3

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x6

    .line 152
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toList([I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 153
    sget-object v2, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlayHid;

    invoke-direct {v2, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->fingerCollection(II)[I

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->toList([I)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0xc0

    .line 154
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    check-cast v0, Ljava/lang/Iterable;

    .line 206
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 207
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 208
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-byte v0, v0

    .line 155
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 208
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 206
    check-cast p1, Ljava/util/Collection;

    .line 155
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object p1

    return-object p1

    :array_0
    .array-data 4
        0x5
        0xd
        0x9
        0x4
        0xa1
        0x1
    .end array-data
.end method

.method private final writeU16Le([BII)V
    .locals 1

    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    .line 200
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p3, p3, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    .line 201
    aput-byte p3, p1, p2

    return-void
.end method


# virtual methods
.method public final knobHidDevice(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "displayUuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "xcertplay Knob"

    sget-object v1, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->knobDescriptor:[B

    const v2, 0x2a2a2a2b

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->hidDeviceEntry(ILjava/lang/String;[BLjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final knobReport(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;)[B
    .locals 6

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->getSelect()Z

    move-result v0

    .line 122
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->getHome()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 123
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->getBack()Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 125
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->getX()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->clampAxis(I)B

    move-result v1

    .line 126
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->getY()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->clampAxis(I)B

    move-result v5

    .line 127
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;->getWheel()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->clampAxis(I)B

    move-result p1

    new-array v4, v4, [B

    aput-byte v0, v4, v3

    const/4 v0, 0x1

    aput-byte v1, v4, v0

    aput-byte v5, v4, v2

    const/4 v0, 0x3

    aput-byte p1, v4, v0

    return-object v4
.end method

.method public final mediaHidDevice(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "displayUuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "xcertplay Media"

    sget-object v1, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->mediaDescriptor:[B

    const v2, 0x2a2a2a2c

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->hidDeviceEntry(ILjava/lang/String;[BLjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final mediaReport(I)[B
    .locals 2

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 131
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    return-object v0
.end method

.method public final telephonyHidDevice(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "displayUuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "xcertplay Telephony"

    sget-object v1, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->telephonyDescriptor:[B

    const v2, 0x2a2a2a2d

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->hidDeviceEntry(ILjava/lang/String;[BLjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final telephonyReport(I)[B
    .locals 2

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 133
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    return-object v0
.end method

.method public final touchHidDevice(IILjava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "displayUuid"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "xcertplay Touchscreen"

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->multitouchDescriptor(II)[B

    move-result-object p1

    const p2, 0x2a2a2a2a

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->hidDeviceEntry(ILjava/lang/String;[BLjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final touchReport(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;",
            ">;)[B"
        }
    .end annotation

    const-string/jumbo v0, "slots"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc

    .line 106
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x6

    int-to-byte v3, v1

    .line 109
    aput-byte v3, v0, v2

    .line 110
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 111
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;->getTouching()Z

    move-result v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v2, 0x2

    .line 112
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;->getX()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v6, v5

    invoke-direct {p0, v0, v4, v6}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->writeU16Le([BII)V

    add-int/lit8 v2, v2, 0x4

    .line 113
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/AirPlayHid$TouchSlot;->getY()D

    move-result-wide v3

    invoke-static {v3, v4, v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-direct {p0, v0, v2, v4}, Lcom/shilapi/xcertplay/airplay/AirPlayHid;->writeU16Le([BII)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
