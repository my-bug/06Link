.class public final Lcom/shilapi/xcertplay/CarPlayGestures;
.super Ljava/lang/Object;
.source "CarPlayGestures.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/CarPlayGestures$Action;,
        Lcom/shilapi/xcertplay/CarPlayGestures$Companion;,
        Lcom/shilapi/xcertplay/CarPlayGestures$Decision;,
        Lcom/shilapi/xcertplay/CarPlayGestures$Finger;,
        Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;,
        Lcom/shilapi/xcertplay/CarPlayGestures$Phase;,
        Lcom/shilapi/xcertplay/CarPlayGestures$State;,
        Lcom/shilapi/xcertplay/CarPlayGestures$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayGestures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayGestures.kt\ncom/shilapi/xcertplay/CarPlayGestures\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n193#1:214\n193#1:218\n193#1:234\n193#1:238\n193#1:258\n193#1:262\n193#1:266\n193#1:270\n1803#2,3:215\n1803#2,3:219\n295#2,2:222\n1740#2,3:225\n1208#2,2:228\n1236#2,4:230\n1803#2,3:235\n1803#2,3:239\n1617#2,9:242\n1869#2:251\n1870#2:253\n1626#2:254\n1740#2,3:255\n1803#2,3:259\n1803#2,3:263\n1803#2,3:267\n1803#2,3:271\n1803#2,3:274\n1#3:224\n1#3:252\n*S KotlinDebug\n*F\n+ 1 CarPlayGestures.kt\ncom/shilapi/xcertplay/CarPlayGestures\n*L\n96#1:214\n97#1:218\n140#1:234\n141#1:238\n155#1:258\n156#1:262\n183#1:266\n184#1:270\n96#1:215,3\n97#1:219,3\n130#1:222,2\n136#1:225,3\n138#1:228,2\n138#1:230,4\n140#1:235,3\n141#1:239,3\n153#1:242,9\n153#1:251\n153#1:253\n153#1:254\n154#1:255,3\n155#1:259,3\n156#1:263,3\n183#1:267,3\n184#1:271,3\n193#1:274,3\n153#1:252\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 32\u00020\u0001:\u0007-./0123B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0018\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u000cJ$\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000e0!2\u0006\u0010\"\u001a\u00020\u000cJ&\u0010#\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000e0!2\u0006\u0010\"\u001a\u00020\u000cH\u0002J\u0018\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000cH\u0002J\u001e\u0010&\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000e0!H\u0002J\u001e\u0010\'\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000e0!H\u0002J\u001e\u0010(\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000e0!H\u0002J+\u0010)\u001a\u00020\u00132\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000e0!2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00130+H\u0082\u0008J\u0016\u0010,\u001a\u00020\u00132\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000e0!H\u0002R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000e0\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarPlayGestures;",
        "",
        "metrics",
        "Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;",
        "<init>",
        "(Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;)V",
        "getMetrics",
        "()Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;",
        "setMetrics",
        "state",
        "Lcom/shilapi/xcertplay/CarPlayGestures$State;",
        "deadline",
        "",
        "edgeStart",
        "Lcom/shilapi/xcertplay/CarPlayGestures$Finger;",
        "starts",
        "",
        "",
        "startSpread",
        "",
        "startX",
        "startY",
        "threeTracking",
        "",
        "nextDeadline",
        "()Ljava/lang/Long;",
        "onTimer",
        "Lcom/shilapi/xcertplay/CarPlayGestures$Decision;",
        "now",
        "onTouch",
        "phase",
        "Lcom/shilapi/xcertplay/CarPlayGestures$Phase;",
        "fingers",
        "",
        "time",
        "decide",
        "firstFinger",
        "finger",
        "oneHeld",
        "twoTop",
        "three",
        "centroid",
        "axis",
        "Lkotlin/Function1;",
        "spread",
        "Metrics",
        "Finger",
        "Phase",
        "Action",
        "Decision",
        "State",
        "Companion",
        "common_release"
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
.field public static final Companion:Lcom/shilapi/xcertplay/CarPlayGestures$Companion;

.field public static final DIRECTION_RATIO:F = 1.15f

.field public static final EACH_FINGER_SHARE:F = 0.6f

.field public static final EDGE_DP:I = 0x18

.field public static final EDGE_HOLD_MILLIS:J = 0x5dcL

.field public static final HOLD_BACK_MILLIS:J = 0x64L

.field public static final PINCH_DP:I = 0x1e

.field public static final SWIPE_DP:I = 0x48

.field private static final THREE:I = 0x3

.field public static final TOP_ZONE_DIVISOR:F = 6.0f


# instance fields
.field private deadline:J

.field private edgeStart:Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

.field private metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

.field private startSpread:F

.field private startX:F

.field private startY:F

.field private starts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Finger;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

.field private threeTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/CarPlayGestures$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayGestures;->Companion:Lcom/shilapi/xcertplay/CarPlayGestures$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;)V
    .locals 1

    const-string v0, "metrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    .line 58
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->IDLE:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    .line 61
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->starts:Ljava/util/Map;

    return-void
.end method

.method private final centroid(Ljava/util/List;Lkotlin/jvm/functions/Function1;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Finger;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Finger;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 193
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 275
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    .line 193
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    return v1
.end method

.method private final decide(Lcom/shilapi/xcertplay/CarPlayGestures$Phase;Ljava/util/List;J)Lcom/shilapi/xcertplay/CarPlayGestures$Decision;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Phase;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Finger;",
            ">;J)",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Decision;"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$Phase;->DOWN:Lcom/shilapi/xcertplay/CarPlayGestures$Phase;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    if-nez p1, :cond_0

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->DROP:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v2, v1, v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/shilapi/xcertplay/CarPlayGestures;->firstFinger(Lcom/shilapi/xcertplay/CarPlayGestures$Finger;J)Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    move-result-object p1

    return-object p1

    .line 93
    :cond_1
    sget-object p3, Lcom/shilapi/xcertplay/CarPlayGestures$Phase;->POINTER_DOWN:Lcom/shilapi/xcertplay/CarPlayGestures$Phase;

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p1, p3, :cond_7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v3, 0x3

    if-lt p3, v3, :cond_7

    iget-object p3, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    sget-object v4, Lcom/shilapi/xcertplay/CarPlayGestures$State;->THREE:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    if-eq p3, v4, :cond_7

    iget-object p3, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    sget-object v4, Lcom/shilapi/xcertplay/CarPlayGestures$State;->SWALLOW:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    if-eq p3, v4, :cond_7

    .line 94
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->THREE:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    .line 95
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_2

    const/4 p4, 0x1

    :cond_2
    iput-boolean p4, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->threeTracking:Z

    .line 214
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    const/4 p4, 0x0

    goto :goto_1

    :cond_3
    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    .line 216
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    .line 96
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getX()F

    move-result v0

    add-float/2addr p4, v0

    goto :goto_0

    .line 214
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p4, p1

    .line 96
    :goto_1
    iput p4, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->startX:F

    .line 218
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    .line 220
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    .line 97
    invoke-virtual {p4}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getY()F

    move-result p4

    add-float/2addr p3, p4

    goto :goto_2

    .line 218
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p3, p1

    .line 97
    :goto_3
    iput p3, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->startY:F

    .line 98
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->RELEASE_CARPLAY:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string/jumbo p3, "three fingers"

    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1

    .line 100
    :cond_7
    sget-object p3, Lcom/shilapi/xcertplay/CarPlayGestures$Phase;->UP:Lcom/shilapi/xcertplay/CarPlayGestures$Phase;

    if-eq p1, p3, :cond_8

    sget-object p3, Lcom/shilapi/xcertplay/CarPlayGestures$Phase;->CANCEL:Lcom/shilapi/xcertplay/CarPlayGestures$Phase;

    if-ne p1, p3, :cond_9

    :cond_8
    const/4 p4, 0x1

    .line 101
    :cond_9
    iget-object p3, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    sget-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/CarPlayGestures$State;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 107
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayGestures;->twoTop(Lcom/shilapi/xcertplay/CarPlayGestures$Phase;Ljava/util/List;)Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    move-result-object p1

    return-object p1

    .line 105
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayGestures;->three(Lcom/shilapi/xcertplay/CarPlayGestures$Phase;Ljava/util/List;)Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    move-result-object p1

    return-object p1

    :pswitch_2
    if-eqz p4, :cond_a

    .line 104
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->IDLE:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    :cond_a
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->DROP:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v2, v1, v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :pswitch_3
    if-eqz p4, :cond_b

    .line 103
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->IDLE:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    :cond_b
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v2, v1, v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 102
    :pswitch_4
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->DROP:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v2, v1, v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 106
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayGestures;->oneHeld(Lcom/shilapi/xcertplay/CarPlayGestures$Phase;Ljava/util/List;)Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final firstFinger(Lcom/shilapi/xcertplay/CarPlayGestures$Finger;J)Lcom/shilapi/xcertplay/CarPlayGestures$Decision;
    .locals 2

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->threeTracking:Z

    .line 114
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;->getEdgePx()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 115
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$State;->EDGE_HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->edgeStart:Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;->getEdgeHoldMillis()J

    move-result-wide v0

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->deadline:J

    .line 116
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string/jumbo p3, "top edge"

    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;->getTopZonePx()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 119
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$State;->HOLD_BACK:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->edgeStart:Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;->getHoldBackMillis()J

    move-result-wide v0

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->deadline:J

    .line 120
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string/jumbo p3, "top zone"

    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1

    .line 122
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->PASS:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, p3, v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method private final oneHeld(Lcom/shilapi/xcertplay/CarPlayGestures$Phase;Ljava/util/List;)Lcom/shilapi/xcertplay/CarPlayGestures$Decision;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Phase;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Finger;",
            ">;)",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Decision;"
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayGestures$Phase;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 147
    :pswitch_0
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v1, v0, v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 146
    :pswitch_1
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v1, v0, v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 145
    :pswitch_2
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->IDLE:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->DROP:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v1, v0, v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 144
    :pswitch_3
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->IDLE:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH_AND_FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string/jumbo v0, "tap"

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1

    .line 136
    :pswitch_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_7

    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    .line 225
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    .line 136
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;->getTopZonePx()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    goto :goto_0

    .line 137
    :cond_1
    :goto_1
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$State;->TWO_TOP:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    const/16 v0, 0xa

    .line 228
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 229
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 230
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 231
    move-object v3, v2

    check-cast v3, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    .line 138
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 231
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 138
    :cond_2
    iput-object v1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->starts:Ljava/util/Map;

    .line 139
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/CarPlayGestures;->spread(Ljava/util/List;)F

    move-result v0

    iput v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->startSpread:F

    .line 234
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    goto :goto_4

    .line 236
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    .line 140
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getX()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_3

    .line 234
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 140
    :goto_4
    iput v2, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->startX:F

    .line 238
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_6

    .line 240
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    .line 141
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getY()F

    move-result v0

    add-float/2addr v1, v0

    goto :goto_5

    .line 238
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 141
    :goto_6
    iput v1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->startY:F

    .line 142
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string/jumbo v0, "two fingers at the top"

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1

    .line 143
    :cond_7
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->PASS:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH_AND_FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string v0, "second finger outside the top zone"

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1

    .line 129
    :pswitch_5
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->edgeStart:Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    if-eqz p1, :cond_b

    .line 130
    check-cast p2, Ljava/lang/Iterable;

    .line 222
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    .line 130
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getId()I

    move-result v4

    if-ne v3, v4, :cond_8

    goto :goto_7

    :cond_9
    move-object v2, v1

    :goto_7
    check-cast v2, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    if-eqz v2, :cond_b

    .line 131
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getX()F

    move-result p2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getX()F

    move-result v3

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v3, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;->getSlopPx()F

    move-result v3

    cmpl-float p2, p2, v3

    if-gtz p2, :cond_a

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getY()F

    move-result p2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;->getSlopPx()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_b

    :cond_a
    const/4 p1, 0x1

    goto :goto_8

    :cond_b
    const/4 p1, 0x0

    .line 132
    :goto_8
    iget-object p2, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    sget-object v2, Lcom/shilapi/xcertplay/CarPlayGestures$State;->EDGE_HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    if-ne p2, v2, :cond_c

    if-eqz p1, :cond_c

    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->PASS:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH_AND_FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string v0, "edge drag"

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1

    .line 133
    :cond_c
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v1, v0, v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final spread(Ljava/util/List;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Finger;",
            ">;)F"
        }
    .end annotation

    .line 196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 197
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getX()F

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    float-to-double v3, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getY()F

    move-result v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private final three(Lcom/shilapi/xcertplay/CarPlayGestures$Phase;Ljava/util/List;)Lcom/shilapi/xcertplay/CarPlayGestures$Decision;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Phase;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Finger;",
            ">;)",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Decision;"
        }
    .end annotation

    .line 177
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayGestures$Phase;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v3, 0x3

    if-eq p1, v3, :cond_7

    const/4 v4, 0x4

    if-eq p1, v4, :cond_7

    const/4 v4, 0x5

    if-eq p1, v4, :cond_8

    .line 182
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->threeTracking:Z

    if-eqz p1, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v3, :cond_0

    goto/16 :goto_4

    .line 266
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    .line 268
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    .line 183
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getX()F

    move-result v5

    add-float/2addr v4, v5

    goto :goto_0

    .line 266
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v4, p1

    .line 183
    :goto_1
    iget p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->startX:F

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 270
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move-object v4, p2

    check-cast v4, Ljava/lang/Iterable;

    .line 272
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    .line 184
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getY()F

    move-result v5

    add-float/2addr v3, v5

    goto :goto_2

    .line 270
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v3, p2

    .line 184
    :goto_3
    iget p2, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->startY:F

    sub-float/2addr v3, p2

    .line 185
    iget-object p2, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;->getThreeFingerSwipePx()F

    move-result p2

    cmpl-float p2, v3, p2

    if-ltz p2, :cond_5

    const p2, 0x3f933333    # 1.15f

    mul-float p1, p1, p2

    cmpl-float p1, v3, p1

    if-ltz p1, :cond_5

    .line 186
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->SWALLOW:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->threeTracking:Z

    .line 187
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->OPEN_MENU:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string/jumbo v0, "three-finger swipe"

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1

    .line 189
    :cond_5
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->DROP:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v1, v2, v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 182
    :cond_6
    :goto_4
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->DROP:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v1, v2, v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 178
    :cond_7
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->IDLE:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->threeTracking:Z

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->DROP:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v1, v2, v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 179
    :cond_8
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->threeTracking:Z

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->DROP:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v1, v2, v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method private final twoTop(Lcom/shilapi/xcertplay/CarPlayGestures$Phase;Ljava/util/List;)Lcom/shilapi/xcertplay/CarPlayGestures$Decision;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Phase;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Finger;",
            ">;)",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Decision;"
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayGestures$Phase;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string/jumbo v0, "two-finger tap"

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 170
    :pswitch_0
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->PASS:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH_AND_FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1

    .line 172
    :pswitch_1
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->IDLE:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->DROP:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v2, v1, v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 171
    :pswitch_2
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->IDLE:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH_AND_FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1

    .line 173
    :pswitch_3
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v2, v1, v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 153
    :pswitch_4
    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 251
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 250
    check-cast v4, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    .line 153
    iget-object v5, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->starts:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getY()F

    move-result v4

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_0

    .line 250
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    .line 255
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 256
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 154
    iget-object v4, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;->getSwipePx()F

    move-result v4

    const v5, 0x3f19999a    # 0.6f

    mul-float v4, v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    goto :goto_2

    :cond_4
    :goto_3
    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 258
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    const/4 v5, 0x0

    goto :goto_6

    .line 260
    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    .line 155
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getX()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_5

    .line 258
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 155
    :goto_6
    iget v3, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->startX:F

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 262
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_8

    .line 264
    :cond_8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;

    .line 156
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/CarPlayGestures$Finger;->getY()F

    move-result v5

    add-float/2addr v4, v5

    goto :goto_7

    .line 262
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v4, p1

    .line 156
    :goto_8
    iget p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->startY:F

    sub-float/2addr v4, p1

    const p1, 0x3f933333    # 1.15f

    if-eqz v0, :cond_a

    .line 158
    iget-object v5, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;->getSwipePx()F

    move-result v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_a

    mul-float v5, v3, p1

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_a

    .line 159
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->SWALLOW:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->OPEN_MENU:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string/jumbo v0, "two fingers swiped down from the top"

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1

    .line 161
    :cond_a
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/CarPlayGestures;->spread(Ljava/util/List;)F

    move-result p2

    iget v5, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->startSpread:F

    sub-float/2addr p2, v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v5, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;->getPinchPx()F

    move-result v5

    cmpl-float p2, p2, v5

    if-lez p2, :cond_b

    if-nez v0, :cond_b

    .line 162
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->PASS:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH_AND_FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string v0, "pinch at the top"

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1

    :cond_b
    float-to-double v5, v3

    float-to-double v7, v4

    .line 164
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    iget-object p2, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;->getSwipePx()F

    move-result p2

    float-to-double v7, p2

    cmpl-double p2, v5, v7

    if-ltz p2, :cond_c

    mul-float v3, v3, p1

    cmpg-float p1, v4, v3

    if-gez p1, :cond_c

    .line 165
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->PASS:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH_AND_FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string/jumbo v0, "two fingers moved another way"

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1

    .line 167
    :cond_c
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-direct {p1, p2, v2, v1, v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final getMetrics()Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    return-object v0
.end method

.method public final nextDeadline()Ljava/lang/Long;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->HOLD_BACK:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->EDGE_HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->deadline:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final onTimer(J)Lcom/shilapi/xcertplay/CarPlayGestures$Decision;
    .locals 4

    .line 72
    iget-wide v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->deadline:J

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gez v3, :cond_0

    return-object v2

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayGestures$State;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    return-object v2

    .line 75
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->SWALLOW:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->OPEN_MENU:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string/jumbo v0, "top-edge hold"

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1

    .line 74
    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->PASS:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;->getHoldBackMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no second finger within "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    return-object p1
.end method

.method public final onTouch(Lcom/shilapi/xcertplay/CarPlayGestures$Phase;Ljava/util/List;J)Lcom/shilapi/xcertplay/CarPlayGestures$Decision;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Phase;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Finger;",
            ">;J)",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Decision;"
        }
    .end annotation

    const-string v0, "phase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fingers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$State;->HOLD_BACK:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->deadline:J

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$Phase;->DOWN:Lcom/shilapi/xcertplay/CarPlayGestures$Phase;

    if-eq p1, v0, :cond_1

    .line 83
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$State;->PASS:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->state:Lcom/shilapi/xcertplay/CarPlayGestures$State;

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/CarPlayGestures;->decide(Lcom/shilapi/xcertplay/CarPlayGestures$Phase;Ljava/util/List;J)Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;->getAction()Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    move-result-object p2

    sget-object p3, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    if-ne p2, p3, :cond_0

    new-instance p1, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    sget-object p2, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH_AND_FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string p3, "held press was due"

    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayGestures$Decision;-><init>(Lcom/shilapi/xcertplay/CarPlayGestures$Action;Ljava/lang/String;)V

    :cond_0
    return-object p1

    .line 87
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/CarPlayGestures;->decide(Lcom/shilapi/xcertplay/CarPlayGestures$Phase;Ljava/util/List;J)Lcom/shilapi/xcertplay/CarPlayGestures$Decision;

    move-result-object p1

    return-object p1
.end method

.method public final setMetrics(Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayGestures;->metrics:Lcom/shilapi/xcertplay/CarPlayGestures$Metrics;

    return-void
.end method
