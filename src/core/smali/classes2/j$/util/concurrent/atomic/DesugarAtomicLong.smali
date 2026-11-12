.class public Lj$/util/concurrent/atomic/DesugarAtomicLong;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static accumulateAndGet(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/function/LongBinaryOperator;)J
    .locals 4

    .line 141
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 142
    invoke-interface {p3, v0, v1, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    .line 143
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2
.end method
