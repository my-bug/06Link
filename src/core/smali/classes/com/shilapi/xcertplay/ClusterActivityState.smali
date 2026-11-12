.class public final Lcom/shilapi/xcertplay/ClusterActivityState;
.super Ljava/lang/Object;
.source "ClusterActivityState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/ClusterActivityState$Activity;,
        Lcom/shilapi/xcertplay/ClusterActivityState$Companion;,
        Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClusterActivityState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClusterActivityState.kt\ncom/shilapi/xcertplay/ClusterActivityState\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,49:1\n774#2:50\n865#2,2:51\n1999#2,14:53\n1761#2,3:68\n1#3:67\n*S KotlinDebug\n*F\n+ 1 ClusterActivityState.kt\ncom/shilapi/xcertplay/ClusterActivityState\n*L\n23#1:50\n23#1:51,2\n24#1:53,14\n25#1:68,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00172\u00020\u0001:\u0003\u0015\u0016\u0017B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J2\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000c\u001a\u00020\u000bH\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ClusterActivityState;",
        "",
        "<init>",
        "()V",
        "visible",
        "",
        "Lcom/shilapi/xcertplay/ClusterActivityState$Activity;",
        "",
        "event",
        "",
        "pkg",
        "",
        "name",
        "instance",
        "",
        "type",
        "time",
        "snapshot",
        "Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;",
        "themeOf",
        "Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;",
        "Snapshot",
        "Activity",
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
.field public static final Companion:Lcom/shilapi/xcertplay/ClusterActivityState$Companion;

.field public static final FULL_MAP:Ljava/lang/String; = "com.byd.automap.meter.MeterActivity"

.field public static final MINI_MAP:Ljava/lang/String; = "com.byd.automap.meter.MeterSmallScreenActivity"

.field public static final SCENARIO:Ljava/lang/String; = "com.byd.sr.cluster.ClusterActivity"

.field public static final SIMPLE:Ljava/lang/String; = "com.byd.cluster.SimpleClusterDynastyActivity"


# instance fields
.field private final visible:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shilapi/xcertplay/ClusterActivityState$Activity;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/ClusterActivityState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/ClusterActivityState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/ClusterActivityState;->Companion:Lcom/shilapi/xcertplay/ClusterActivityState$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/shilapi/xcertplay/ClusterActivityState;->visible:Ljava/util/Map;

    return-void
.end method

.method private final themeOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;
    .locals 2

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2d76d5e7

    if-eq v0, v1, :cond_4

    const v1, 0x6e941e4

    if-eq v0, v1, :cond_2

    const v1, 0x4c6ab234    # 6.1524176E7f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.byd.sr.cluster.ClusterActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;->SCENARIO:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    return-object p1

    .line 29
    :cond_2
    const-string v0, "com.byd.automap.meter.MeterActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 30
    :cond_3
    sget-object p1, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;->MAP:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    return-object p1

    .line 29
    :cond_4
    const-string v0, "com.byd.cluster.SimpleClusterDynastyActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_5
    sget-object p1, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;->SIMPLE:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    return-object p1
.end method


# virtual methods
.method public final event(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 1

    const/16 v0, 0x1a

    if-eq p4, v0, :cond_3

    const/16 v0, 0x1b

    if-eq p4, v0, :cond_3

    .line 14
    sget-object v0, Lcom/shilapi/xcertplay/ClusterActivityState;->Companion:Lcom/shilapi/xcertplay/ClusterActivityState$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/ClusterActivityState$Companion;->accepted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/ClusterActivityState$Activity;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p2, p3}, Lcom/shilapi/xcertplay/ClusterActivityState$Activity;-><init>(Ljava/lang/String;I)V

    const/4 p2, 0x1

    if-eq p4, p2, :cond_2

    const/16 p2, 0x17

    if-eq p4, p2, :cond_1

    :goto_0
    return-void

    .line 18
    :cond_1
    iget-object p2, p0, Lcom/shilapi/xcertplay/ClusterActivityState;->visible:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 17
    :cond_2
    iget-object p2, p0, Lcom/shilapi/xcertplay/ClusterActivityState;->visible:Ljava/util/Map;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/shilapi/xcertplay/ClusterActivityState;->visible:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final snapshot()Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;
    .locals 9

    .line 23
    iget-object v0, p0, Lcom/shilapi/xcertplay/ClusterActivityState;->visible:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 51
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/ClusterActivityState$Activity;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ClusterActivityState$Activity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/ClusterActivityState;->themeOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 51
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 23
    check-cast v1, Ljava/lang/Iterable;

    .line 53
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_1

    .line 55
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 57
    :cond_3
    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 59
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 60
    move-object v6, v5

    check-cast v6, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-gez v8, :cond_5

    move-object v1, v5

    move-wide v3, v6

    .line 65
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 24
    :goto_1
    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/ClusterActivityState$Activity;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ClusterActivityState$Activity;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/ClusterActivityState;->themeOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    move-result-object v2

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/shilapi/xcertplay/ClusterActivityState;->visible:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 68
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 69
    :cond_8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/ClusterActivityState$Activity;

    .line 25
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ClusterActivityState$Activity;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.byd.automap.meter.MeterSmallScreenActivity"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    .line 26
    :goto_2
    new-instance v1, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;

    if-eqz v2, :cond_a

    sget-object v5, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;->MAP:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    if-eq v2, v5, :cond_b

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    :cond_b
    :goto_3
    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ClusterActivityState$Snapshot;-><init>(Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;Z)V

    return-object v1
.end method
