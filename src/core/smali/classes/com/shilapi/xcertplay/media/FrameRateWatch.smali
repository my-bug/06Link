.class public final Lcom/shilapi/xcertplay/media/FrameRateWatch;
.super Ljava/lang/Object;
.source "AutoFrameRate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/FrameRateWatch$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoFrameRate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoFrameRate.kt\ncom/shilapi/xcertplay/media/FrameRateWatch\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1788#2,4:150\n*S KotlinDebug\n*F\n+ 1 AutoFrameRate.kt\ncom/shilapi/xcertplay/media/FrameRateWatch\n*L\n86#1:150,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/FrameRateWatch;",
        "",
        "<init>",
        "()V",
        "recent",
        "Lkotlin/collections/ArrayDeque;",
        "",
        "value",
        "concluded",
        "getConcluded",
        "()Z",
        "onWindow",
        "window",
        "Lcom/shilapi/xcertplay/media/VideoWindow;",
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
.field public static final BAD_NEEDED:I = 0x6

.field public static final Companion:Lcom/shilapi/xcertplay/media/FrameRateWatch$Companion;

.field public static final MIN_ACTIVE_RX_FPS:D = 20.0

.field public static final SHOWN_RATIO:D = 0.8

.field public static final WINDOWS_JUDGED:I = 0x8


# instance fields
.field private concluded:Z

.field private final recent:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/FrameRateWatch$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/FrameRateWatch$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/FrameRateWatch;->Companion:Lcom/shilapi/xcertplay/media/FrameRateWatch$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/media/FrameRateWatch;->recent:Lkotlin/collections/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final getConcluded()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/FrameRateWatch;->concluded:Z

    return v0
.end method

.method public final declared-synchronized onWindow(Lcom/shilapi/xcertplay/media/VideoWindow;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/FrameRateWatch;->concluded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/VideoWindow;->getRxFps()D

    move-result-wide v2

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_3

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/FrameRateWatch;->recent:Lkotlin/collections/ArrayDeque;

    sget-object v2, Lcom/shilapi/xcertplay/media/FrameRateWatch;->Companion:Lcom/shilapi/xcertplay/media/FrameRateWatch$Companion;

    invoke-virtual {v2, p1}, Lcom/shilapi/xcertplay/media/FrameRateWatch$Companion;->struggling(Lcom/shilapi/xcertplay/media/VideoWindow;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 85
    :goto_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/FrameRateWatch;->recent:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->size()I

    move-result p1

    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/shilapi/xcertplay/media/FrameRateWatch;->recent:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/FrameRateWatch;->recent:Lkotlin/collections/ArrayDeque;

    check-cast p1, Ljava/lang/Iterable;

    .line 150
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 152
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_1

    :cond_4
    :goto_2
    const/4 p1, 0x6

    if-lt v0, p1, :cond_5

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/media/FrameRateWatch;->concluded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return p1

    .line 90
    :cond_5
    monitor-exit p0

    return v1

    .line 83
    :cond_6
    :goto_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
