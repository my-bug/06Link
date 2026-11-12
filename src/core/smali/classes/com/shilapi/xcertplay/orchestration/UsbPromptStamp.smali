.class public final Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;
.super Ljava/lang/Object;
.source "CarPlayController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayController.kt\ncom/shilapi/xcertplay/orchestration/UsbPromptStamp\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3412:1\n1#2:3413\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;",
        "",
        "<init>",
        "()V",
        "stamp",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "shownAtNanos",
        "",
        "getShownAtNanos",
        "()J",
        "mark",
        "nowNanos",
        "clear",
        "",
        "clearIf",
        "",
        "own",
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
.field private final stamp:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->stamp:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->stamp:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final clearIf(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->stamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, p1, p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getShownAtNanos()J
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->stamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final mark(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide/16 p1, 0x1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->stamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-wide p1
.end method
