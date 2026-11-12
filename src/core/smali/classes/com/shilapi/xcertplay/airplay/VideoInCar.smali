.class public final Lcom/shilapi/xcertplay/airplay/VideoInCar;
.super Ljava/lang/Object;
.source "VideoInCar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/VideoInCar$Item;,
        Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoInCar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoInCar.kt\ncom/shilapi/xcertplay/airplay/VideoInCar\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,186:1\n1869#2,2:187\n774#2:196\n865#2,2:197\n1267#2,4:199\n1563#2:203\n1634#2,3:204\n3555#3,6:189\n1#4:195\n*S KotlinDebug\n*F\n+ 1 VideoInCar.kt\ncom/shilapi/xcertplay/airplay/VideoInCar\n*L\n45#1:187,2\n172#1:196\n172#1:197,2\n172#1:199,4\n173#1:203\n173#1:204,3\n46#1:189,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00029:B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aJ$\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\u0011J\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0014\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001cJ#\u0010 \u001a\u0004\u0018\u00010\r2\u0014\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c\u00a2\u0006\u0002\u0010!J2\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c2\u0008\u0010#\u001a\u0004\u0018\u00010\u00012\u0008\u0010$\u001a\u0004\u0018\u00010\u00012\u0008\u0010%\u001a\u0004\u0018\u00010&J\u001e\u0010\'\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001J2\u0010(\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c2\u0008\u0010#\u001a\u0004\u0018\u00010\u00012\u0008\u0010)\u001a\u0004\u0018\u00010\u00012\u0008\u0010%\u001a\u0004\u0018\u00010&J&\u0010*\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c2\u0008\u0010$\u001a\u0004\u0018\u00010\u00012\u0006\u0010+\u001a\u00020\rJ&\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c2\u0006\u0010-\u001a\u00020\u00112\u0008\u0010$\u001a\u0004\u0018\u00010\u0001J\u001c\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c2\u0006\u0010/\u001a\u000200JP\u00101\u001a:\u0012\u0004\u0012\u00020\u0005\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c02j\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c`32\u0006\u00104\u001a\u0002002\u0006\u00105\u001a\u000200H\u0002J(\u00106\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c*\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001cH\u0002J\u001f\u0010/\u001a\u0004\u0018\u0001002\u000e\u00107\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u001cH\u0002\u00a2\u0006\u0002\u00108R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/VideoInCar;",
        "",
        "<init>",
        "()V",
        "FEATURE",
        "",
        "UI_URL",
        "SETTINGS_CHANNEL_UUID",
        "REMOTE_CONTROL_UUIDS",
        "",
        "getREMOTE_CONTROL_UUIDS",
        "()Ljava/util/Set;",
        "ERROR_NETWORK",
        "",
        "ERROR_DECODER",
        "ERROR_INCOMPATIBLE_ASSET",
        "allowed",
        "",
        "getAllowed",
        "()Z",
        "setAllowed",
        "(Z)V",
        "ADDITIONAL_FEATURE_BITS",
        "",
        "featuresEx",
        "legacyFeatures",
        "",
        "info",
        "",
        "parseItem",
        "Lcom/shilapi/xcertplay/airplay/VideoInCar$Item;",
        "message",
        "seekMillis",
        "(Ljava/util/Map;)Ljava/lang/Integer;",
        "playbackInfoResponse",
        "messageId",
        "itemUuid",
        "state",
        "Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;",
        "seekResponse",
        "propertyResponse",
        "key",
        "errorNotification",
        "code",
        "playbackStateNotification",
        "playing",
        "cmTime",
        "seconds",
        "",
        "range",
        "Ljava/util/LinkedHashMap;",
        "Lkotlin/collections/LinkedHashMap;",
        "start",
        "duration",
        "withoutNulls",
        "time",
        "(Ljava/util/Map;)Ljava/lang/Double;",
        "Item",
        "PlayerState",
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
.field private static final ADDITIONAL_FEATURE_BITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_DECODER:I = -0x326f

.field public static final ERROR_INCOMPATIBLE_ASSET:I = -0x327f

.field public static final ERROR_NETWORK:I = -0x4345

.field public static final FEATURE:Ljava/lang/String; = "videoPlayback"

.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

.field private static final REMOTE_CONTROL_UUIDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_CHANNEL_UUID:Ljava/lang/String; = "BB493F61-A6B8-4769-8D74-80C23A9F71C4"

.field public static final UI_URL:Ljava/lang/String; = "videoplayback:"

.field private static volatile allowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/shilapi/xcertplay/airplay/VideoInCar;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/VideoInCar;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    const/4 v0, 0x2

    .line 28
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "A6B27562-B43A-4F2D-B75F-82391E250194"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "E3DC3EA6-E6C3-4B30-847C-B7ACFEBEA654"

    aput-object v4, v1, v3

    .line 26
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/airplay/VideoInCar;->REMOTE_CONTROL_UUIDS:Ljava/util/Set;

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v1, v0, v2

    aput-object v4, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/airplay/VideoInCar;->ADDITIONAL_FEATURE_BITS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final range(DD)Ljava/util/LinkedHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 167
    new-array v0, v0, [Lkotlin/Pair;

    const-string/jumbo v1, "start"

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->cmTime(D)Ljava/util/Map;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "duration"

    invoke-virtual {p0, p3, p4}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->cmTime(D)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method private final seconds(Ljava/util/Map;)Ljava/lang/Double;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 181
    const-string/jumbo v0, "value"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 182
    const-string/jumbo v3, "timescale"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_1

    check-cast p1, Ljava/lang/Number;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 183
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2
.end method

.method private final withoutNulls(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->withoutNulls$strip(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method private static final withoutNulls$strip(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 172
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 197
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 197
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 196
    check-cast v0, Ljava/lang/Iterable;

    .line 172
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p0, Ljava/util/Map;

    .line 199
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 200
    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->withoutNulls$strip(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object p0

    .line 173
    :cond_3
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 204
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 173
    invoke-static {v1}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->withoutNulls$strip(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 205
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 206
    :cond_4
    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_5
    return-object p0
.end method


# virtual methods
.method public final cmTime(D)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 165
    new-array v0, v0, [Lkotlin/Pair;

    const/16 v1, 0x3e8

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "value"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-wide/16 p1, 0x3e8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "timescale"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-wide/16 p1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "flags"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "epoch"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public final errorNotification(Ljava/lang/Object;I)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 152
    new-array v0, v0, [Lkotlin/Pair;

    const-string/jumbo v1, "type"

    const-string v2, "error"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v4, v1, [Lkotlin/Pair;

    const-string v5, "domain"

    const-string v6, ""

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v4, v3

    int-to-long v5, p2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v3, "code"

    invoke-static {v3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v4, v3

    invoke-static {v4}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v0, v3

    const-string/jumbo p2, "uuid"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 153
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->withoutNulls(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final featuresEx(J)Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    .line 45
    sget-object p2, Lcom/shilapi/xcertplay/airplay/VideoInCar;->ADDITIONAL_FEATURE_BITS:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 187
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 45
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const-string/jumbo p2, "toByteArray(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->reversedArray([B)[B

    move-result-object p1

    .line 189
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getLastIndex([B)I

    move-result p2

    :goto_1
    const/4 v0, -0x1

    if-ge v0, p2, :cond_2

    .line 190
    aget-byte v0, p1, p2

    if-nez v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 191
    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->take([BI)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 194
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_2
    check-cast p1, Ljava/util/Collection;

    .line 46
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object p1

    .line 47
    invoke-static {}, Lj$/util/Base64;->getEncoder()Lj$/util/Base64$Encoder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lj$/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "encodeToString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getAllowed()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/shilapi/xcertplay/airplay/VideoInCar;->allowed:Z

    return v0
.end method

.method public final getREMOTE_CONTROL_UUIDS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/shilapi/xcertplay/airplay/VideoInCar;->REMOTE_CONTROL_UUIDS:Ljava/util/Set;

    return-object v0
.end method

.method public final info(JZ)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 55
    new-array v1, v0, [Lkotlin/Pair;

    const-string/jumbo v2, "videoPlaybackAllowed"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {v2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v2, 0x0

    .line 58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 55
    aput-object p3, v1, v2

    .line 56
    const-string p3, "featuresEx"

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->featuresEx(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x7

    .line 58
    new-array p1, p1, [Lkotlin/Pair;

    const-string/jumbo p3, "supportsOfflineHLS"

    invoke-static {p3, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p1, v2

    .line 59
    const-string/jumbo p3, "supportsAirPlayVideoWithSharePlay"

    invoke-static {p3, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p1, p2

    .line 60
    const-string/jumbo p3, "supportsInterstitials"

    invoke-static {p3, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v2, 0x2

    aput-object p3, p1, v2

    .line 61
    const-string/jumbo p3, "supportsIntegratedTimeline"

    invoke-static {p3, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p1, v0

    .line 62
    const-string/jumbo p3, "supportsAVMetrics"

    invoke-static {p3, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v0, 0x4

    aput-object p3, p1, v0

    .line 63
    const-string/jumbo p3, "supportsUIForAudioOnlyContent"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, p1, p3

    .line 64
    const-string/jumbo p2, "supportsFPSSecureStop"

    invoke-static {p2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x6

    aput-object p2, p1, p3

    .line 57
    invoke-static {p1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string p2, "playbackCapabilities"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v1, v2

    .line 54
    invoke-static {v1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public final parseItem(Ljava/util/Map;)Lcom/shilapi/xcertplay/airplay/VideoInCar$Item;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shilapi/xcertplay/airplay/VideoInCar$Item;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const-string v0, "item"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    .line 74
    :cond_1
    const-string v0, "Content-Location"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    return-object v1

    :cond_3
    const/16 v2, 0x3a

    const/4 v3, 0x2

    .line 75
    invoke-static {v0, v2, v1, v3, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "toLowerCase(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const-string v3, "http"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "https"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    .line 77
    :cond_4
    const-string v2, "Start-Position-Seconds"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/lang/Number;

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_4

    .line 78
    :cond_6
    const-string v2, "Start-Position"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_7

    check-cast v2, Ljava/util/Map;

    goto :goto_3

    :cond_7
    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_8

    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->seconds(Ljava/util/Map;)Ljava/lang/Double;

    move-result-object v1

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 79
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-long v3, v1

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0x7fffffff

    invoke-static/range {v3 .. v8}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v1

    long-to-int v2, v1

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 80
    :goto_5
    new-instance v1, Lcom/shilapi/xcertplay/airplay/VideoInCar$Item;

    const-string/jumbo v3, "uuid"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1, v0, v2}, Lcom/shilapi/xcertplay/airplay/VideoInCar$Item;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object v1
.end method

.method public final playbackInfoResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 101
    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->getPrepared()Z

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    if-eqz p3, :cond_1

    .line 102
    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->getDurationSeconds()D

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v3

    :goto_1
    const/4 v7, 0x4

    .line 104
    new-array v8, v7, [Lkotlin/Pair;

    new-array v9, v1, [Lkotlin/Pair;

    const-string/jumbo v10, "uuid"

    move-object/from16 v11, p2

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-static {v9}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v9

    const-string v10, "item"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v0

    if-eqz p3, :cond_2

    .line 105
    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->getPlaying()Z

    move-result v9

    if-ne v9, v1, :cond_2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_2
    move-wide v9, v3

    :goto_2
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "rate"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v1

    .line 106
    const-string v9, "readyToPlay"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 107
    const-string v9, "playbackLikelyToKeepUp"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v8, v11

    .line 103
    invoke-static {v8}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v8

    if-eqz p3, :cond_3

    if-eqz v2, :cond_3

    .line 110
    move-object v9, v8

    check-cast v9, Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->getPositionSeconds()D

    move-result-wide v12

    invoke-virtual {p0, v12, v13}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->cmTime(D)Ljava/util/Map;

    move-result-object v12

    const-string v13, "position"

    invoke-interface {v9, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v12, "duration"

    invoke-virtual {p0, v5, v6}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->cmTime(D)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->range(DD)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "seekableTimeRanges"

    invoke-interface {v9, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->getBufferedSeconds()D

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->range(DD)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "loadedTimeRanges"

    invoke-interface {v9, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_3
    move-object v3, v8

    check-cast v3, Ljava/util/Map;

    const-string v4, "droppedVideoFrames"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v4, "totalVideoFrames"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v4, "decodedFrameCount"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_6

    if-nez v2, :cond_4

    goto :goto_3

    .line 120
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->getPlaying()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "playing"

    goto :goto_4

    .line 121
    :cond_5
    const-string v2, "paused"

    goto :goto_4

    .line 119
    :cond_6
    :goto_3
    const-string v2, "loading"

    .line 121
    :goto_4
    const-string v4, "playbackState"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "interstitialInfo"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-array v2, v7, [Lkotlin/Pair;

    const-string v3, "info"

    invoke-static {v3, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "kind"

    const-string v3, "response"

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v1

    const-string/jumbo v0, "type"

    const-string v1, "playbackInfo"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v10

    const-string v0, "messageID"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v2, v11

    invoke-static {v2}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->withoutNulls(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final playbackStateNotification(ZLjava/lang/Object;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 157
    const-string v0, "name"

    const-string v1, "playbackState"

    const-string/jumbo v2, "type"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 158
    new-array p1, p1, [Lkotlin/Pair;

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v5

    const-string v1, "playing"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, v4

    new-array v0, v4, [Lkotlin/Pair;

    const-string/jumbo v1, "uuid"

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v0, v5

    invoke-static {v0}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p2

    const-string v0, "item"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {p1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->withoutNulls(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 160
    :cond_0
    new-array p1, v3, [Lkotlin/Pair;

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v5

    const-string p2, "paused"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {p1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public final propertyResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 135
    invoke-virtual {p3}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->getPrepared()Z

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 137
    :goto_0
    const-string v3, "hasEnabledAudio"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    goto :goto_1

    .line 138
    :cond_1
    const-string v3, "muted"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    goto :goto_1

    .line 139
    :cond_2
    const-string v3, "seekableTimeRanges"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    if-eqz v2, :cond_4

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->getDurationSeconds()D

    move-result-wide v2

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->range(DD)Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_1

    .line 140
    :cond_3
    const-string v3, "loadedTimeRanges"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;->getBufferedSeconds()D

    move-result-wide v2

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->range(DD)Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_1

    :cond_4
    move-object p3, v6

    :goto_1
    const/4 v2, 0x5

    .line 143
    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "key"

    invoke-static {v3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v2, v1

    const-string/jumbo p2, "value"

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v2, v0

    const-string p2, "kind"

    const-string p3, "response"

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v2, p3

    const-string/jumbo p2, "type"

    const-string p3, "property"

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v2, p3

    const-string p2, "messageID"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v2, p2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 144
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->withoutNulls(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final seekMillis(Ljava/util/Map;)Ljava/lang/Integer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v0, "time"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->seconds(Ljava/util/Map;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const/16 p1, 0x3e8

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v2, v0

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x7fffffff

    invoke-static/range {v2 .. v7}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public final seekResponse(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 128
    new-array v0, v0, [Lkotlin/Pair;

    const-string/jumbo v1, "type"

    const-string v2, "seek"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "kind"

    const-string v2, "response"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "messageID"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->withoutNulls(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final setAllowed(Z)V
    .locals 0

    .line 37
    sput-boolean p1, Lcom/shilapi/xcertplay/airplay/VideoInCar;->allowed:Z

    return-void
.end method
