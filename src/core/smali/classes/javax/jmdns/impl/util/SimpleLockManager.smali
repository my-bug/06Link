.class public Ljavax/jmdns/impl/util/SimpleLockManager;
.super Ljava/lang/Object;
.source "SimpleLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/util/SimpleLockManager$LockFailedException;,
        Ljavax/jmdns/impl/util/SimpleLockManager$Locked;,
        Ljavax/jmdns/impl/util/SimpleLockManager$LockedImpl;
    }
.end annotation


# instance fields
.field private final _locks:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/util/SimpleLockManager$Locked;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/util/SimpleLockManager;->_locks:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$100(Ljavax/jmdns/impl/util/SimpleLockManager;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 24
    iget-object p0, p0, Ljavax/jmdns/impl/util/SimpleLockManager;->_locks:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public lock(Ljava/lang/String;)Ljavax/jmdns/impl/util/SimpleLockManager$Locked;
    .locals 3

    .line 39
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v1, v2, v0}, Ljavax/jmdns/impl/util/SimpleLockManager;->tryLock(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljavax/jmdns/impl/util/SimpleLockManager$Locked;

    move-result-object p1
    :try_end_0
    .catch Ljavax/jmdns/impl/util/SimpleLockManager$LockFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public tryLock(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljavax/jmdns/impl/util/SimpleLockManager$Locked;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljavax/jmdns/impl/util/SimpleLockManager$LockFailedException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljavax/jmdns/impl/util/SimpleLockManager$LockedImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljavax/jmdns/impl/util/SimpleLockManager$LockedImpl;-><init>(Ljavax/jmdns/impl/util/SimpleLockManager;Ljava/lang/String;Ljavax/jmdns/impl/util/SimpleLockManager$1;)V

    .line 62
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    .line 63
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 65
    :goto_0
    iget-object p4, p0, Ljavax/jmdns/impl/util/SimpleLockManager;->_locks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;

    if-nez p4, :cond_0

    return-object v0

    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    cmp-long p4, v3, p2

    if-gez p4, :cond_1

    const-wide/16 v3, 0xa

    .line 72
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 70
    :cond_1
    new-instance p1, Ljavax/jmdns/impl/util/SimpleLockManager$LockFailedException;

    invoke-direct {p1}, Ljavax/jmdns/impl/util/SimpleLockManager$LockFailedException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
