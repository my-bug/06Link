.class public final Lcom/shilapi/xcertplay/media/VideoDecodeQueue;
.super Ljava/lang/Object;
.source "VideoDecodeQueue.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoDecodeQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoDecodeQueue.kt\ncom/shilapi/xcertplay/media/VideoDecodeQueue\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n808#2,11:78\n1#3:89\n*S KotlinDebug\n*F\n+ 1 VideoDecodeQueue.kt\ncom/shilapi/xcertplay/media/VideoDecodeQueue\n*L\n35#1:78,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\tJ\u0006\u0010\r\u001a\u00020\u000bJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/VideoDecodeQueue;",
        "",
        "maxFrames",
        "",
        "maxBytes",
        "<init>",
        "(II)V",
        "jobs",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "Lcom/shilapi/xcertplay/media/VideoJob;",
        "offer",
        "",
        "job",
        "discardFrames",
        "poll",
        "timeoutMillis",
        "",
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


# instance fields
.field private final jobs:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/shilapi/xcertplay/media/VideoJob;",
            ">;"
        }
    .end annotation
.end field

.field private final maxBytes:I

.field private final maxFrames:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->maxFrames:I

    .line 29
    iput p2, p0, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->maxBytes:I

    .line 31
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->jobs:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x3c

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/high16 p2, 0x800000

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized discardFrames()V
    .locals 3

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->jobs:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/media/VideoJob;

    .line 51
    instance-of v2, v1, Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    if-nez v2, :cond_1

    instance-of v1, v1, Lcom/shilapi/xcertplay/media/VideoJob$Resync;

    if-eqz v1, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 53
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final e01BacklogAfterCurrent()Lcom/shilapi/xcertplay/E01BacklogRecovery$Snapshot;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->jobs:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {p0, v0}, Lcom/shilapi/xcertplay/E01BacklogRecovery;->snapshot(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/shilapi/xcertplay/E01BacklogRecovery$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public final e01DiscardCurrentChain()V
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->jobs:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {p0, v0}, Lcom/shilapi/xcertplay/E01BacklogRecovery;->discardChain(Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final declared-synchronized offer(Lcom/shilapi/xcertplay/media/VideoJob;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    instance-of v0, p1, Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    if-eqz v0, :cond_5

    .line 35
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->jobs:Ljava/util/concurrent/LinkedBlockingQueue;

    check-cast v0, Ljava/lang/Iterable;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 87
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->maxFrames:I

    if-ge v0, v2, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->getNalus()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_1

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->getNalus()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget v0, p0, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->maxBytes:I

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-lez v0, :cond_4

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->discardFrames()V

    .line 38
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->jobs:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Lcom/shilapi/xcertplay/media/VideoJob$Resync;->INSTANCE:Lcom/shilapi/xcertplay/media/VideoJob$Resync;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 41
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/shilapi/xcertplay/media/VideoJob$Frame;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/VideoJob$Frame;->getNalus()[B

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->maxBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_5

    monitor-exit p0

    return-void

    .line 43
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->jobs:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final poll(J)Lcom/shilapi/xcertplay/media/VideoJob;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/VideoDecodeQueue;->jobs:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/media/VideoJob;

    return-object p1
.end method
