.class public final Lcom/shilapi/xcertplay/E01TouchDispatch;
.super Ljava/lang/Object;
.source "E01TouchDispatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/E01TouchDispatch$Item;,
        Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;
    }
.end annotation


# instance fields
.field private coalesced:J

.field private final executor:Ljava/util/concurrent/Executor;

.field private lastSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private lastShape:[I

.field private maxWaitNs:J

.field private final pending:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private scheduled:Z

.field private sent:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->pending:Ljava/util/ArrayDeque;

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->lastSession:Ljava/lang/ref/WeakReference;

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->lastShape:[I

    .line 26
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->executor:Ljava/util/concurrent/Executor;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "executor"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clear()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->scheduled:Z

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->lastShape:[I

    iget-object v0, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->lastSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method


# virtual methods
.method public declared-synchronized enqueue(Lcom/shilapi/xcertplay/E01TouchDispatch$Item;)Z
    .locals 10

    monitor-enter p0

    .line 28
    if-eqz p1, :cond_7

    .line 29
    :try_start_0
    invoke-interface {p1}, Lcom/shilapi/xcertplay/E01TouchDispatch$Item;->shape()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v1, v0

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_6

    .line 30
    array-length v1, v0

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x1

    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_2

    aget v5, v0, v4

    if-ne v5, v2, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    and-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 31
    :cond_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->lastSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/shilapi/xcertplay/E01TouchDispatch$Item;->session()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->lastShape:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 32
    :goto_3
    iget-object v4, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;

    .line 33
    new-instance v5, Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;

    invoke-direct {v5, p1, v0, v1}, Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;-><init>(Lcom/shilapi/xcertplay/E01TouchDispatch$Item;[IZ)V

    .line 35
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    iget-boolean v1, v4, Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;->movement:Z

    if-eqz v1, :cond_4

    iget-object v1, v4, Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;->item:Lcom/shilapi/xcertplay/E01TouchDispatch$Item;

    invoke-interface {v1}, Lcom/shilapi/xcertplay/E01TouchDispatch$Item;->session()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/shilapi/xcertplay/E01TouchDispatch$Item;->session()Ljava/lang/Object;

    move-result-object v6

    if-ne v1, v6, :cond_4

    iget-object v1, v4, Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;->shape:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    iget-object v1, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    iget-wide v6, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->coalesced:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->coalesced:J

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-interface {p1}, Lcom/shilapi/xcertplay/E01TouchDispatch$Item;->session()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->lastSession:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->lastShape:[I

    .line 39
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->scheduled:Z

    if-nez p1, :cond_5

    iput-boolean v2, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->scheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/E01TouchDispatch;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    .line 40
    :cond_5
    :goto_4
    monitor-exit p0

    return v2

    .line 29
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "id/down pairs"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :catchall_0
    move-exception p1

    goto :goto_5

    .line 28
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "item"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :goto_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized metrics()[J
    .locals 10

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->coalesced:J

    iget-wide v4, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->sent:J

    iget-wide v6, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->maxWaitNs:J

    const/4 v8, 0x4

    new-array v8, v8, [J

    const/4 v9, 0x0

    aput-wide v0, v8, v9

    const/4 v0, 0x1

    aput-wide v2, v8, v0

    const/4 v0, 0x2

    aput-wide v4, v8, v0

    const/4 v0, 0x3

    aput-wide v6, v8, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v8

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->scheduled:Z

    monitor-exit p0

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->maxWaitNs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;->enqueued:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->maxWaitNs:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 45
    const-wide/16 v2, 0x1

    :try_start_1
    iget-object v0, v0, Lcom/shilapi/xcertplay/E01TouchDispatch$Entry;->item:Lcom/shilapi/xcertplay/E01TouchDispatch$Item;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/E01TouchDispatch$Item;->send()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    monitor-enter p0

    :try_start_2
    iget-wide v4, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->sent:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->sent:J

    iget-object v0, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->scheduled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-direct {p0}, Lcom/shilapi/xcertplay/E01TouchDispatch;->clear()V

    :goto_0
    monitor-exit p0

    .line 47
    nop

    .line 48
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    monitor-enter p0

    :try_start_5
    iget-wide v4, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->sent:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->sent:J

    iget-object v2, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->scheduled:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :cond_2
    :try_start_6
    iget-object v1, p0, Lcom/shilapi/xcertplay/E01TouchDispatch;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_7
    invoke-direct {p0}, Lcom/shilapi/xcertplay/E01TouchDispatch;->clear()V

    :goto_1
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 47
    throw v0

    .line 46
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 44
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method
