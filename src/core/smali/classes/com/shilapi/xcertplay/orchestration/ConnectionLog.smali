.class public final Lcom/shilapi/xcertplay/orchestration/ConnectionLog;
.super Ljava/lang/Object;
.source "ConnectionLog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;,
        Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;,
        Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectionLog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionLog.kt\ncom/shilapi/xcertplay/orchestration/ConnectionLog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1#2:118\n1869#3,2:119\n1869#3,2:121\n*S KotlinDebug\n*F\n+ 1 ConnectionLog.kt\ncom/shilapi/xcertplay/orchestration/ConnectionLog\n*L\n95#1:119,2\n108#1:121,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003012B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0015\u001a\u00020\u000cJ\u0006\u0010\u0016\u001a\u00020\u000cJ\u001a\u0010\u0017\u001a\u00020\u000c2\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u001a\u0010\u0019\u001a\u00020\u000c2\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ4\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001e2\u0008\u0008\u0002\u0010 \u001a\u00020\u00052\u0008\u0008\u0002\u0010!\u001a\u00020\u000eJ4\u0010\"\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001e2\u0008\u0008\u0002\u0010 \u001a\u00020\u00052\u0008\u0008\u0002\u0010!\u001a\u00020\u000eJ4\u0010#\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001e2\u0008\u0008\u0002\u0010 \u001a\u00020\u00052\u0008\u0008\u0002\u0010!\u001a\u00020\u000eJ:\u0010$\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e2\u0008\u0008\u0002\u0010 \u001a\u00020\u00052\u0008\u0008\u0002\u0010!\u001a\u00020\u000eJ\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00080(J\u0006\u0010)\u001a\u00020\u001eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0017\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u001c0+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0017\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u001c0+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010-\u00a8\u00063"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/ConnectionLog;",
        "",
        "<init>",
        "()V",
        "CAPACITY",
        "",
        "entries",
        "Ljava/util/ArrayDeque;",
        "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;",
        "listeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lkotlin/Function1;",
        "",
        "attemptStartElapsed",
        "",
        "clock",
        "Lkotlin/Function0;",
        "getClock$shared_release",
        "()Lkotlin/jvm/functions/Function0;",
        "setClock$shared_release",
        "(Lkotlin/jvm/functions/Function0;)V",
        "beginAttempt",
        "clear",
        "addListener",
        "listener",
        "removeListener",
        "note",
        "layer",
        "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;",
        "name",
        "",
        "result",
        "size",
        "durationMs",
        "tx",
        "rx",
        "record",
        "dir",
        "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;",
        "snapshot",
        "",
        "reportSection",
        "WIRELESS_REQUIRED_LAYERS",
        "",
        "getWIRELESS_REQUIRED_LAYERS",
        "()Ljava/util/Set;",
        "WIRED_REQUIRED_LAYERS",
        "getWIRED_REQUIRED_LAYERS",
        "Layer",
        "Dir",
        "Entry",
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
.field private static final CAPACITY:I = 0x320

.field public static final INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionLog;

.field private static final WIRED_REQUIRED_LAYERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIRELESS_REQUIRED_LAYERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile attemptStartElapsed:J

.field private static volatile clock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final entries:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private static final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$oeBuAVXuKnq6rGP-WPuu3xM9TM0()J
    .locals 2

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->clock$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionLog;

    .line 40
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->entries:Ljava/util/ArrayDeque;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->clock:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x5

    .line 112
    new-array v0, v0, [Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->BT:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->IAP2:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->WIFI:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->AIRPLAY:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->VIDEO:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->WIRELESS_REQUIRED_LAYERS:Ljava/util/Set;

    .line 115
    new-array v0, v6, [Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->USB:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->MFI:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    aput-object v1, v0, v3

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->AIRPLAY:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    aput-object v1, v0, v4

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->VIDEO:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    aput-object v1, v0, v5

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->WIRED_REQUIRED_LAYERS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final clock$lambda$0()J
    .locals 2

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic note$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    .line 65
    const-string p3, "ok"

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    const-wide/16 p5, 0x0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->note(Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic record$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;
    .locals 8

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    and-int/lit8 p5, p8, 0x20

    if-eqz p5, :cond_1

    const-wide/16 v0, 0x0

    move-wide v6, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    goto :goto_1

    :cond_1
    move-wide v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 74
    :goto_1
    invoke-virtual/range {v0 .. v7}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->record(Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic rx$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    .line 71
    const-string p3, "ok"

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    const-wide/16 p5, 0x0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->rx(Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic tx$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    .line 68
    const-string p3, "ok"

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    const-wide/16 p5, 0x0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->tx(Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized beginAttempt()V
    .locals 10

    monitor-enter p0

    .line 52
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->attemptStartElapsed:J

    .line 53
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->entries:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 54
    sget-object v2, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->SYSTEM:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    const-string v3, "attempt-begin"

    const-string v4, "ok"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    :try_start_1
    invoke-static/range {v1 .. v9}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->note$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public final declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->entries:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const-wide/16 v0, 0x0

    .line 59
    sput-wide v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->attemptStartElapsed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getClock$shared_release()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->clock:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getWIRED_REQUIRED_LAYERS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;",
            ">;"
        }
    .end annotation

    .line 115
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->WIRED_REQUIRED_LAYERS:Ljava/util/Set;

    return-object v0
.end method

.method public final getWIRELESS_REQUIRED_LAYERS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;",
            ">;"
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->WIRELESS_REQUIRED_LAYERS:Ljava/util/Set;

    return-object v0
.end method

.method public final note(Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;
    .locals 9

    const-string v0, "layer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v3, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;->NOTE:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->record(Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized record(Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "layer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 83
    sget-wide v2, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->attemptStartElapsed:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    sput-wide v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->attemptStartElapsed:J

    move-wide v2, v0

    move-wide v8, v2

    goto :goto_0

    :cond_0
    sget-wide v2, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->attemptStartElapsed:J

    move-wide v8, v0

    .line 84
    :goto_0
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    sub-long v2, v8, v2

    .line 85
    invoke-static {v2, v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v2

    const/4 v0, 0x0

    move/from16 v6, p5

    .line 90
    invoke-static {v6, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v8

    move-wide/from16 v9, p6

    .line 91
    invoke-static {v9, v10, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 84
    invoke-direct/range {v1 .. v10}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;-><init>(JLcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 93
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->entries:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p2

    const/16 p3, 0x320

    if-lt p2, p3, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 94
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 95
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast p1, Ljava/lang/Iterable;

    .line 119
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    :try_start_2
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 96
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final removeListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized reportSection()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 102
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v1, "--- Connection log ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    sget-object v2, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->entries:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const-string v2, "(empty)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 108
    :cond_0
    check-cast v2, Ljava/lang/Iterable;

    .line 121
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    .line 108
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;->line()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 102
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final rx(Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;
    .locals 9

    const-string v0, "layer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v3, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;->RX:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->record(Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final setClock$shared_release(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sput-object p1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->clock:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final declared-synchronized snapshot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->entries:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final tx(Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;
    .locals 9

    const-string v0, "layer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v3, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;->TX:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->record(Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Dir;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    move-result-object p1

    return-object p1
.end method
