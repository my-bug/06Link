.class public final Lcom/shilapi/xcertplay/hud/BydHudRouteState;
.super Ljava/lang/Object;
.source "BydHudRouteState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/hud/BydHudRouteState$Companion;,
        Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydHudRouteState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydHudRouteState.kt\ncom/shilapi/xcertplay/hud/BydHudRouteState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,208:1\n163#1,7:210\n163#1,7:217\n1#2:209\n*S KotlinDebug\n*F\n+ 1 BydHudRouteState.kt\ncom/shilapi/xcertplay/hud/BydHudRouteState\n*L\n107#1:210,7\n150#1:217,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u0000 32\u00020\u0001:\u000223B\u0017\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001bJ\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0006\u0010 \u001a\u00020\u000cJ\n\u0010!\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\nH\u0002J\u0010\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u001bH\u0002J\u0010\u0010&\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u001bH\u0002J1\u0010\'\u001a\u00020(2\u0006\u0010%\u001a\u00020\u001b2\u001e\u0010)\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020(0*H\u0082\u0008J\u0010\u0010+\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u001bH\u0002J\u0018\u0010,\u001a\u00020\t2\u0006\u0010%\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020\tH\u0002J\u0018\u0010.\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020\tH\u0002J\u0018\u0010/\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020\tH\u0002J \u00100\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020\t2\u0006\u00101\u001a\u00020\tH\u0002R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012\u00a8\u00064"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydHudRouteState;",
        "",
        "nanoTime",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;)V",
        "maneuvers",
        "",
        "",
        "Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;",
        "routeActive",
        "",
        "activeIndex",
        "distanceMeters",
        "currentRoad",
        "",
        "arrivalEpochSeconds",
        "Ljava/lang/Long;",
        "remainingSeconds",
        "remainingMeters",
        "emptyListSinceNs",
        "lastRouteUpdateNs",
        "accept",
        "Lcom/shilapi/xcertplay/hud/BydHudRouteChange;",
        "messageId",
        "payload",
        "",
        "current",
        "Lcom/shilapi/xcertplay/hud/BydHudGuidance;",
        "currentApple",
        "Lcom/shilapi/xcertplay/hud/BydAppleManeuver;",
        "clear",
        "activeManeuver",
        "roadFor",
        "maneuver",
        "parseRouteUpdate",
        "data",
        "parseManeuverUpdate",
        "forEachTlv",
        "",
        "block",
        "Lkotlin/Function3;",
        "validTlvs",
        "u16",
        "offset",
        "u32",
        "u64",
        "utf8",
        "length",
        "Maneuver",
        "Companion",
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
.field public static final Companion:Lcom/shilapi/xcertplay/hud/BydHudRouteState$Companion;

.field private static final EMPTY_LIST_HIDE_NS:J = 0xb2d05e00L

.field public static final ROUTE_GUIDANCE_MANEUVER_UPDATE:I = 0x5202

.field public static final ROUTE_GUIDANCE_UPDATE:I = 0x5201

.field private static final STALE_ROUTE_NS:J = 0x6fc23ac00L

.field private static final TLV_HEADER_BYTES:I = 0x4


# instance fields
.field private activeIndex:I

.field private arrivalEpochSeconds:Ljava/lang/Long;

.field private currentRoad:Ljava/lang/String;

.field private distanceMeters:I

.field private emptyListSinceNs:Ljava/lang/Long;

.field private lastRouteUpdateNs:Ljava/lang/Long;

.field private final maneuvers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;",
            ">;"
        }
    .end annotation
.end field

.field private final nanoTime:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private remainingMeters:Ljava/lang/Long;

.field private remainingSeconds:Ljava/lang/Long;

.field private routeActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/hud/BydHudRouteState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->Companion:Lcom/shilapi/xcertplay/hud/BydHudRouteState$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nanoTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->nanoTime:Lkotlin/jvm/functions/Function0;

    .line 33
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->maneuvers:Ljava/util/Map;

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->activeIndex:I

    .line 37
    const-string p1, ""

    iput-object p1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->currentRoad:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 30
    sget-object p1, Lcom/shilapi/xcertplay/hud/BydHudRouteState$1;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudRouteState$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final activeManeuver()Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;
    .locals 6

    .line 90
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->routeActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->activeIndex:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->lastRouteUpdateNs:Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 92
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->nanoTime:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide v2, 0x6fc23ac00L

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    return-object v1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->emptyListSinceNs:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 94
    iget-object v2, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->nanoTime:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide v4, 0xb2d05e00L

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    return-object v1

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->maneuvers:Ljava/util/Map;

    iget v1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->activeIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;

    return-object v0

    :cond_3
    :goto_0
    return-object v1
.end method

.method private final forEachTlv([BLkotlin/jvm/functions/Function3;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 164
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u16([BI)I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    .line 166
    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u16([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v3, v0, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/lit8 v4, v1, -0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v2, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final parseManeuverUpdate([B)Lcom/shilapi/xcertplay/hud/BydHudRouteChange;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 217
    const-string v2, ""

    move-object v1, v0

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 218
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_4

    .line 219
    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u16([BI)I

    move-result v5

    add-int/lit8 v6, v2, 0x2

    .line 220
    invoke-direct {p0, p1, v6}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u16([BI)I

    move-result v6

    add-int/lit8 v7, v2, 0x4

    add-int/lit8 v8, v5, -0x4

    const/4 v9, 0x1

    if-ne v6, v9, :cond_0

    const/4 v10, 0x2

    if-lt v8, v10, :cond_0

    .line 152
    invoke-direct {p0, p1, v7}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u16([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v10, 0x3

    if-ne v6, v10, :cond_1

    if-lt v8, v9, :cond_1

    .line 153
    aget-byte v1, p1, v7

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v10, 0x4

    if-ne v6, v10, :cond_2

    .line 154
    invoke-direct {p0, p1, v7, v8}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->utf8([BII)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/16 v10, 0x8

    if-ne v6, v10, :cond_3

    if-lt v8, v9, :cond_3

    .line 155
    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    :cond_3
    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 158
    iget-object p1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->maneuvers:Ljava/util/Map;

    new-instance v2, Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v2, v1, v3, v4}, Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_5
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->current()Lcom/shilapi/xcertplay/hud/BydHudGuidance;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/shilapi/xcertplay/hud/BydHudRouteChange;->GUIDANCE:Lcom/shilapi/xcertplay/hud/BydHudRouteChange;

    return-object p1

    :cond_6
    sget-object p1, Lcom/shilapi/xcertplay/hud/BydHudRouteChange;->NONE:Lcom/shilapi/xcertplay/hud/BydHudRouteChange;

    return-object p1
.end method

.method private final parseRouteUpdate([B)Lcom/shilapi/xcertplay/hud/BydHudRouteChange;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 102
    iget-object v2, v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->nanoTime:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iput-object v2, v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->lastRouteUpdateNs:Ljava/lang/Long;

    const/4 v2, 0x0

    move-object v5, v2

    move-object v7, v5

    move-object v8, v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 211
    :goto_0
    array-length v9, v1

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v4, v9, :cond_c

    .line 212
    invoke-direct {v0, v1, v4}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u16([BI)I

    move-result v9

    add-int/lit8 v12, v4, 0x2

    .line 213
    invoke-direct {v0, v1, v12}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u16([BI)I

    move-result v12

    add-int/lit8 v13, v4, 0x4

    add-int/lit8 v14, v9, -0x4

    if-ne v12, v11, :cond_0

    if-lt v14, v11, :cond_0

    .line 109
    aget-byte v5, v1, v13

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_5

    :cond_0
    const/4 v15, 0x3

    if-ne v12, v15, :cond_1

    .line 110
    invoke-direct {v0, v1, v13, v14}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->utf8([BII)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->currentRoad:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1
    const/4 v15, 0x5

    const-wide/16 v16, 0x0

    const/16 v3, 0x8

    if-ne v12, v15, :cond_4

    if-lt v14, v3, :cond_4

    .line 111
    invoke-direct {v0, v1, v13}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u64([BI)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v10, v12, v16

    if-lez v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    iput-object v3, v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->arrivalEpochSeconds:Ljava/lang/Long;

    goto :goto_5

    :cond_4
    const/4 v15, 0x6

    if-ne v12, v15, :cond_7

    if-lt v14, v3, :cond_7

    .line 112
    invoke-direct {v0, v1, v13}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u64([BI)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v10, v12, v16

    if-ltz v10, :cond_5

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v11, :cond_6

    goto :goto_4

    :cond_6
    move-object v3, v2

    :goto_4
    iput-object v3, v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->remainingSeconds:Ljava/lang/Long;

    goto :goto_5

    :cond_7
    const/4 v3, 0x7

    const/4 v15, 0x4

    if-ne v12, v3, :cond_8

    if-lt v14, v15, :cond_8

    .line 113
    invoke-direct {v0, v1, v13}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u32([BI)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->remainingMeters:Ljava/lang/Long;

    goto :goto_5

    :cond_8
    const/16 v3, 0xa

    if-ne v12, v3, :cond_9

    if-lt v14, v15, :cond_9

    .line 115
    invoke-direct {v0, v1, v13}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u32([BI)J

    move-result-wide v10

    const-wide/32 v12, 0x7fffffff

    invoke-static {v10, v11, v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v10

    long-to-int v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_5

    :cond_9
    const/16 v3, 0xd

    if-ne v12, v3, :cond_b

    if-lt v14, v10, :cond_a

    .line 119
    invoke-direct {v0, v1, v13}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u16([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_a
    const/4 v6, 0x1

    :cond_b
    :goto_5
    add-int/2addr v4, v9

    goto/16 :goto_0

    :cond_c
    if-nez v5, :cond_d

    goto :goto_6

    .line 125
    :cond_d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_17

    :goto_6
    if-nez v5, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v10, :cond_f

    goto :goto_8

    :cond_f
    :goto_7
    if-eqz v6, :cond_11

    if-nez v7, :cond_11

    .line 132
    iget-object v1, v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->emptyListSinceNs:Ljava/lang/Long;

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->nanoTime:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->emptyListSinceNs:Ljava/lang/Long;

    .line 133
    :cond_10
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydHudRouteChange;->NONE:Lcom/shilapi/xcertplay/hud/BydHudRouteChange;

    return-object v1

    :cond_11
    if-eqz v7, :cond_12

    .line 135
    iput-object v2, v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->emptyListSinceNs:Ljava/lang/Long;

    :cond_12
    if-eqz v5, :cond_13

    .line 136
    iput-boolean v11, v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->routeActive:Z

    :cond_13
    if-eqz v7, :cond_14

    .line 138
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->activeIndex:I

    .line 139
    iput-boolean v11, v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->routeActive:Z

    :cond_14
    if-eqz v8, :cond_15

    .line 141
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    iput v1, v0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->distanceMeters:I

    .line 142
    :cond_15
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->current()Lcom/shilapi/xcertplay/hud/BydHudGuidance;

    move-result-object v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/shilapi/xcertplay/hud/BydHudRouteChange;->GUIDANCE:Lcom/shilapi/xcertplay/hud/BydHudRouteChange;

    return-object v1

    :cond_16
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydHudRouteChange;->NONE:Lcom/shilapi/xcertplay/hud/BydHudRouteChange;

    return-object v1

    .line 126
    :cond_17
    :goto_8
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->clear()Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/shilapi/xcertplay/hud/BydHudRouteChange;->CLEAR:Lcom/shilapi/xcertplay/hud/BydHudRouteChange;

    return-object v1

    :cond_18
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydHudRouteChange;->NONE:Lcom/shilapi/xcertplay/hud/BydHudRouteChange;

    return-object v1
.end method

.method private final roadFor(Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;)Ljava/lang/String;
    .locals 1

    .line 99
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;->getAfterRoad()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->currentRoad:Ljava/lang/String;

    :cond_0
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private final u16([BI)I
    .locals 1

    .line 183
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private final u32([BI)J
    .locals 7

    .line 186
    aget-byte v0, p1, p2

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x1

    .line 187
    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x2

    .line 188
    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p2, p2, 0x3

    .line 189
    aget-byte p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private final u64([BI)J
    .locals 3

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u32([BI)J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u32([BI)J

    move-result-wide p1

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private final utf8([BII)Ljava/lang/String;
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 196
    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    new-instance p3, Ljava/lang/String;

    sub-int/2addr v0, p2

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p3, p1, p2, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final validTlvs([B)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 173
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x4

    .line 174
    array-length v3, p1

    if-le v2, v3, :cond_0

    return v0

    .line 175
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->u16([BI)I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    .line 176
    array-length v3, p1

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    .line 179
    :cond_3
    array-length p1, p1

    if-ne v1, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method


# virtual methods
.method public final accept(I[B)Lcom/shilapi/xcertplay/hud/BydHudRouteChange;
    .locals 1

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->validTlvs([B)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/hud/BydHudRouteChange;->NONE:Lcom/shilapi/xcertplay/hud/BydHudRouteChange;

    return-object p1

    :cond_0
    const/16 v0, 0x5201

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5202

    if-eq p1, v0, :cond_1

    .line 49
    sget-object p1, Lcom/shilapi/xcertplay/hud/BydHudRouteChange;->NONE:Lcom/shilapi/xcertplay/hud/BydHudRouteChange;

    return-object p1

    .line 48
    :cond_1
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->parseManeuverUpdate([B)Lcom/shilapi/xcertplay/hud/BydHudRouteChange;

    move-result-object p1

    return-object p1

    .line 47
    :cond_2
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->parseRouteUpdate([B)Lcom/shilapi/xcertplay/hud/BydHudRouteChange;

    move-result-object p1

    return-object p1
.end method

.method public final clear()Z
    .locals 3

    .line 75
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->routeActive:Z

    const/4 v1, 0x0

    .line 76
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->routeActive:Z

    const/4 v2, -0x1

    .line 77
    iput v2, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->activeIndex:I

    .line 78
    iput v1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->distanceMeters:I

    .line 79
    const-string v1, ""

    iput-object v1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->currentRoad:Ljava/lang/String;

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->arrivalEpochSeconds:Ljava/lang/Long;

    .line 81
    iput-object v1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->remainingSeconds:Ljava/lang/Long;

    .line 82
    iput-object v1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->remainingMeters:Ljava/lang/Long;

    .line 83
    iput-object v1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->emptyListSinceNs:Ljava/lang/Long;

    .line 84
    iput-object v1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->lastRouteUpdateNs:Ljava/lang/Long;

    .line 85
    iget-object v1, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->maneuvers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return v0
.end method

.method public final current()Lcom/shilapi/xcertplay/hud/BydHudGuidance;
    .locals 10

    .line 54
    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->activeManeuver()Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydManeuverCodes;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydManeuverCodes;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;->getDrivingSide()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/shilapi/xcertplay/hud/BydManeuverCodes;->gaode(II)I

    move-result v7

    .line 56
    new-instance v4, Lcom/shilapi/xcertplay/hud/BydHudGuidance;

    .line 57
    iget v5, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->distanceMeters:I

    .line 58
    sget-object v1, Lcom/shilapi/xcertplay/hud/BydManeuverCodes;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydManeuverCodes;

    invoke-virtual {v1, v7}, Lcom/shilapi/xcertplay/hud/BydManeuverCodes;->hudArrow(I)I

    move-result v6

    .line 60
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->roadFor(Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;)Ljava/lang/String;

    move-result-object v8

    .line 61
    iget-object v9, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->arrivalEpochSeconds:Ljava/lang/Long;

    .line 56
    invoke-direct/range {v4 .. v9}, Lcom/shilapi/xcertplay/hud/BydHudGuidance;-><init>(IIILjava/lang/String;Ljava/lang/Long;)V

    return-object v4
.end method

.method public final currentApple()Lcom/shilapi/xcertplay/hud/BydAppleManeuver;
    .locals 9

    .line 67
    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->activeManeuver()Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    new-instance v1, Lcom/shilapi/xcertplay/hud/BydAppleManeuver;

    .line 69
    iget v2, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->distanceMeters:I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;->getType()I

    move-result v3

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;->getDrivingSide()I

    move-result v4

    .line 70
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->roadFor(Lcom/shilapi/xcertplay/hud/BydHudRouteState$Maneuver;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->remainingSeconds:Ljava/lang/Long;

    iget-object v7, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->remainingMeters:Ljava/lang/Long;

    iget-object v8, p0, Lcom/shilapi/xcertplay/hud/BydHudRouteState;->arrivalEpochSeconds:Ljava/lang/Long;

    .line 68
    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/hud/BydAppleManeuver;-><init>(IIILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v1
.end method
