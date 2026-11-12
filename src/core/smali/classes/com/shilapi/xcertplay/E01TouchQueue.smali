.class public final Lcom/shilapi/xcertplay/E01TouchQueue;
.super Ljava/lang/Object;
.source "E01TouchQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/E01TouchQueue$Snapshot;
    }
.end annotation


# static fields
.field private static final queues:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shilapi/xcertplay/E01TouchDispatch;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/E01TouchQueue;->queues:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enqueue(Ljava/util/concurrent/ExecutorService;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/airplay/AirPlayContact;",
            ">;)Z"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/airplay/AirPlayContact;

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getId()I

    move-result v4

    aput v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/AirPlayContact;->getDown()Z

    move-result v2

    aput v2, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/E01TouchQueue;->queues:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/shilapi/xcertplay/E01TouchQueue;->queues:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/E01TouchDispatch;

    :goto_1
    if-nez v2, :cond_2

    new-instance v2, Lcom/shilapi/xcertplay/E01TouchDispatch;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/E01TouchDispatch;-><init>(Ljava/util/concurrent/Executor;)V

    sget-object v3, Lcom/shilapi/xcertplay/E01TouchQueue;->queues:Ljava/util/WeakHashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    new-instance p0, Lcom/shilapi/xcertplay/E01TouchQueue$Snapshot;

    invoke-direct {p0, p1, v0, p2}, Lcom/shilapi/xcertplay/E01TouchQueue$Snapshot;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/ArrayList;[I)V

    invoke-virtual {v2, p0}, Lcom/shilapi/xcertplay/E01TouchDispatch;->enqueue(Lcom/shilapi/xcertplay/E01TouchDispatch$Item;)Z

    move-result p0

    return p0

    .line 18
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static metrics(Ljava/util/concurrent/ExecutorService;)[J
    .locals 2

    .line 27
    sget-object v0, Lcom/shilapi/xcertplay/E01TouchQueue;->queues:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/E01TouchQueue;->queues:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/E01TouchDispatch;

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x4

    new-array p0, p0, [J

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/E01TouchDispatch;->metrics()[J

    move-result-object p0

    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
