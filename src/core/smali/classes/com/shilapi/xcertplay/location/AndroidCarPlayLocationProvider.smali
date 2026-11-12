.class public final Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;
.super Ljava/lang/Object;
.source "AndroidCarPlayLocationProvider.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidCarPlayLocationProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCarPlayLocationProvider.kt\ncom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,184:1\n774#2:185\n865#2,2:186\n1#3:188\n1923#4,14:189\n*S KotlinDebug\n*F\n+ 1 AndroidCarPlayLocationProvider.kt\ncom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider\n*L\n37#1:185\n37#1:186,2\n153#1:189,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0007*\u0001#\u0018\u0000 (2\u00020\u0001:\u0001(B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0011\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0017\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\nJ\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR \u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000b0\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R \u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00040\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010!R\u0014\u0010$\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010&\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;",
        "Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;",
        "Landroid/content/Context;",
        "context",
        "",
        "preferredLocationAgeMillis",
        "<init>",
        "(Landroid/content/Context;J)V",
        "",
        "seedLastKnownLocations",
        "()V",
        "Landroid/location/Location;",
        "latestFix",
        "()Landroid/location/Location;",
        "",
        "start",
        "()Z",
        "stop",
        "",
        "latestNmea",
        "()Ljava/lang/String;",
        "J",
        "Landroid/location/LocationManager;",
        "locationManager",
        "Landroid/location/LocationManager;",
        "",
        "stateLock",
        "Ljava/lang/Object;",
        "",
        "preferredProviders",
        "Ljava/util/List;",
        "j$/util/concurrent/ConcurrentHashMap",
        "latestFixes",
        "Lj$/util/concurrent/ConcurrentHashMap;",
        "receivedElapsedMillis",
        "com/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$listener$1",
        "listener",
        "Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$listener$1;",
        "started",
        "Z",
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
.field public static final Companion:Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$Companion;

.field private static final DEFAULT_PREFERRED_LOCATION_AGE_MILLIS:J = 0x7530L

.field private static final MIN_DISTANCE_METERS:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "CarPlayLocation"

.field private static final UPDATE_INTERVAL_MILLIS:J = 0x3e8L


# instance fields
.field private final latestFixes:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$listener$1;

.field private final locationManager:Landroid/location/LocationManager;

.field private final preferredLocationAgeMillis:J

.field private final preferredProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final receivedElapsedMillis:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z

.field private final stateLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$vr5Rxy10-IkiCXFZ3-IlI-8I7gg(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;Lkotlin/Pair;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->latestFix$lambda$9(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;Lkotlin/Pair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wVCznF2Q8u1Jq8g6-_2OzaqOtr0(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;JJLjava/lang/String;)Lkotlin/Pair;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->latestFix$lambda$8(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;JJLjava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->Companion:Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p2, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->preferredLocationAgeMillis:J

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->attached(Ljava/lang/Object;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    const-class p2, Landroid/location/LocationManager;

    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 30
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->stateLock:Ljava/lang/Object;

    .line 31
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object p1

    .line 32
    const-string p2, "gps"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1f

    if-lt p2, p3, :cond_0

    .line 34
    const-string p2, "fused"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    const-string p2, "network"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 185
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 186
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_2
    check-cast p2, Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->preferredProviders:Ljava/util/List;

    .line 38
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->latestFixes:Lj$/util/concurrent/ConcurrentHashMap;

    .line 40
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->receivedElapsedMillis:Lj$/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance p1, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$listener$1;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$listener$1;-><init>(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->listener:Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$listener$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x7530

    .line 24
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;-><init>(Landroid/content/Context;J)V

    return-void
.end method

.method public static final synthetic access$getLatestFixes$p(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->latestFixes:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getPreferredProviders$p(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->preferredProviders:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getReceivedElapsedMillis$p(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->receivedElapsedMillis:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private final latestFix()Landroid/location/Location;
    .locals 10

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 146
    iget-object v0, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->preferredProviders:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v6

    .line 147
    new-instance v0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$$ExternalSyntheticLambda1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;JJ)V

    invoke-static {v6, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 152
    new-instance v2, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;)V

    invoke-static {v0, v2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 191
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    move-object v4, v2

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 195
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 196
    move-object v7, v6

    check-cast v7, Lkotlin/Pair;

    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    cmp-long v9, v4, v7

    if-lez v9, :cond_3

    move-object v2, v6

    move-wide v4, v7

    .line 201
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 153
    :goto_0
    check-cast v2, Lkotlin/Pair;

    if-eqz v2, :cond_4

    .line 154
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :try_start_0
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->fix(Ljava/lang/Object;Ljava/lang/String;JFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    :goto_1
    return-object v0

    :cond_4
    return-object v3
.end method

.method private static final latestFix$lambda$8(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;JJLjava/lang/String;)Lkotlin/Pair;
    .locals 14

    move-object/from16 v0, p5

    const-string v1, "provider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->latestFixes:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    invoke-static {v1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/location/Location;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    move-wide v5, v2

    .line 150
    sget-object v4, Lcom/shilapi/xcertplay/location/LocationAge;->INSTANCE:Lcom/shilapi/xcertplay/location/LocationAge;

    iget-object p0, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->receivedElapsedMillis:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    move-wide v10, p1

    move-wide/from16 v12, p3

    invoke-virtual/range {v4 .. v13}, Lcom/shilapi/xcertplay/location/LocationAge;->millis(JLjava/lang/Long;JJJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final latestFix$lambda$9(Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;Lkotlin/Pair;)Z
    .locals 3

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 152
    iget-wide p0, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->preferredLocationAgeMillis:J

    cmp-long v2, v0, p0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final seedLastKnownLocations()V
    .locals 8

    .line 88
    const-string v0, "CarPlayLocation"

    iget-object v1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->preferredProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    :try_start_0
    iget-object v3, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not read last known location from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v4, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->latestFixes:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v4, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->receivedElapsedMillis:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Seeded "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " location ageMs="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider$-CC;->$default$close(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;)V

    return-void
.end method

.method public latestNmea()Ljava/lang/String;
    .locals 14

    .line 119
    invoke-direct {p0}, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->latestFix()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 121
    :cond_0
    :try_start_0
    sget-object v2, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->INSTANCE:Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;

    .line 123
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 124
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 125
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-object v8, v3

    goto :goto_1

    :cond_2
    move-object v8, v1

    .line 126
    :goto_1
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v9, v3

    goto :goto_3

    :cond_4
    move-object v9, v1

    .line 127
    :goto_3
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_4

    :cond_5
    move-object v3, v1

    :goto_4
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v10, v3

    goto :goto_5

    :cond_6
    move-object v10, v1

    .line 128
    :goto_5
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_6

    :cond_7
    move-object v3, v1

    :goto_6
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v11, v3

    goto :goto_7

    :cond_8
    move-object v11, v1

    .line 129
    :goto_7
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 122
    new-instance v3, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;

    invoke-direct/range {v3 .. v12}, Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;-><init>(DDLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;)V

    .line 121
    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/transport/NmeaLocationEncoder;->encode(Lcom/shilapi/xcertplay/transport/CarPlayLocationFix;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {p0, v2, v3}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->providerIssue(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v2

    .line 133
    :goto_8
    const-string v2, "CarPlayLocation"

    const-string v3, "Could not encode Android location as NMEA"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public onRequested(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider$-CC;->$default$onRequested(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Ljava/util/Set;)V

    return-void
.end method

.method public start()Z
    .locals 13

    .line 58
    iget-object v1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_3

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->seedLastKnownLocations()V

    .line 64
    iget-object v0, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->preferredProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 66
    :try_start_1
    iget-object v6, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 70
    iget-object v0, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->listener:Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$listener$1;

    move-object v11, v0

    check-cast v11, Landroid/location/LocationListener;

    .line 71
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    .line 66
    invoke-virtual/range {v6 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const/4 v8, 0x1

    instance-of v6, v0, Ljava/lang/SecurityException;

    if-eqz v6, :cond_1

    const/4 v8, 0x2

    :cond_1
    invoke-static {p0, v7, v8}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->providerIssue(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    .line 75
    :goto_1
    :try_start_3
    const-string v6, "CarPlayLocation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not subscribe to Android location provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    if-lez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 78
    :goto_2
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->started:Z

    if-nez v2, :cond_4

    .line 80
    const-string v0, "CarPlayLocation"

    const-string v2, "No Android location provider could be started"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_4
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->started:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 58
    :goto_3
    monitor-exit v1

    :try_start_4
    invoke-static {p0, v2}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->providerStarted(Ljava/lang/Object;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    return v2

    :catchall_2
    move-exception v0

    monitor-exit v1

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public stop()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->started:Z

    const/4 v2, 0x0

    .line 107
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    monitor-exit v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider;->listener:Lcom/shilapi/xcertplay/location/AndroidCarPlayLocationProvider$listener$1;

    check-cast v1, Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->providerStopped(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_1
    return-void

    :catchall_1
    move-exception v1

    .line 105
    monitor-exit v0

    throw v1
.end method
