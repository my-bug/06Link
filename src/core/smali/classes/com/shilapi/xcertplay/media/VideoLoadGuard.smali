.class public final Lcom/shilapi/xcertplay/media/VideoLoadGuard;
.super Ljava/lang/Object;
.source "AutoFrameRate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;,
        Lcom/shilapi/xcertplay/media/VideoLoadGuard$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoFrameRate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoFrameRate.kt\ncom/shilapi/xcertplay/media/VideoLoadGuard\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1#2:150\n1788#3,4:151\n*S KotlinDebug\n*F\n+ 1 AutoFrameRate.kt\ncom/shilapi/xcertplay/media/VideoLoadGuard\n*L\n130#1:151,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00142\u00020\u0001:\u0002\u0013\u0014B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/VideoLoadGuard;",
        "",
        "sixtyFps",
        "",
        "hevc",
        "<init>",
        "(ZZ)V",
        "recent",
        "Lkotlin/collections/ArrayDeque;",
        "Lcom/shilapi/xcertplay/media/VideoWindow;",
        "windows",
        "",
        "value",
        "concluded",
        "getConcluded",
        "()Z",
        "onWindow",
        "Lcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;",
        "window",
        "Adaptation",
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
.field public static final Companion:Lcom/shilapi/xcertplay/media/VideoLoadGuard$Companion;

.field public static final MIN_RX_FPS:D = 5.0

.field public static final RECOVERIES_IN_10S:I = 0x2

.field public static final SHOWN_RATIO:D = 0.6


# instance fields
.field private concluded:Z

.field private final hevc:Z

.field private final recent:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Lcom/shilapi/xcertplay/media/VideoWindow;",
            ">;"
        }
    .end annotation
.end field

.field private final sixtyFps:Z

.field private windows:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/VideoLoadGuard$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/VideoLoadGuard$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->Companion:Lcom/shilapi/xcertplay/media/VideoLoadGuard$Companion;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->sixtyFps:Z

    iput-boolean p2, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->hevc:Z

    .line 117
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->recent:Lkotlin/collections/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final getConcluded()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->concluded:Z

    return v0
.end method

.method public final declared-synchronized onWindow(Lcom/shilapi/xcertplay/media/VideoWindow;)Lcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;
    .locals 13

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->concluded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->sixtyFps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->hevc:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 125
    :cond_0
    iget v0, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->windows:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->windows:I

    if-eq v0, v2, :cond_9

    .line 126
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/VideoWindow;->getRxFps()D

    move-result-wide v3

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    goto/16 :goto_5

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->recent:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 128
    :goto_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->recent:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->size()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->recent:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->recent:Lkotlin/collections/ArrayDeque;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shilapi/xcertplay/media/VideoWindow;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/media/VideoWindow;->getRecoveries()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1

    .line 130
    :cond_3
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->recent:Lkotlin/collections/ArrayDeque;

    check-cast p1, Ljava/lang/Iterable;

    .line 151
    instance-of v5, p1, Ljava/util/Collection;

    if-eqz v5, :cond_4

    move-object v5, p1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    .line 153
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v5, 0x0

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shilapi/xcertplay/media/VideoWindow;

    .line 130
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/media/VideoWindow;->getRxFps()D

    move-result-wide v7

    const-wide/high16 v9, 0x4034000000000000L    # 20.0

    cmpl-double v11, v7, v9

    if-ltz v11, :cond_5

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/media/VideoWindow;->getShownFps()D

    move-result-wide v7

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/media/VideoWindow;->getRxFps()D

    move-result-wide v9

    const-wide v11, 0x3fe3333333333333L    # 0.6

    mul-double v9, v9, v11

    cmpg-double v6, v7, v9

    if-gez v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    if-gez v5, :cond_5

    .line 153
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_2

    :cond_6
    :goto_3
    if-lt v4, v0, :cond_7

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recoveries="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in 10s"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    if-lt v5, v0, :cond_8

    .line 133
    const-string/jumbo p1, "shown<60% of received in 2 windows"

    .line 136
    :goto_4
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->concluded:Z

    .line 137
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->recent:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/media/VideoWindow;

    .line 138
    new-instance v4, Lcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;

    iget-boolean v5, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->sixtyFps:Z

    iget-boolean v6, p0, Lcom/shilapi/xcertplay/media/VideoLoadGuard;->hevc:Z

    .line 139
    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s (rx=%.1ffps shown=%.1ffps)"

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/VideoWindow;->getRxFps()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/VideoWindow;->getShownFps()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    aput-object p1, v11, v3

    aput-object v9, v11, v2

    aput-object v1, v11, v0

    invoke-static {v11, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v7, v8, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-direct {v4, v5, v6, p1}, Lcom/shilapi/xcertplay/media/VideoLoadGuard$Adaptation;-><init>(ZZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 134
    :cond_8
    monitor-exit p0

    return-object v1

    .line 126
    :cond_9
    :goto_5
    monitor-exit p0

    return-object v1

    .line 124
    :cond_a
    :goto_6
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method
