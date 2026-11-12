.class public final Lcom/shilapi/xcertplay/media/FirstPictureCounters;
.super Ljava/lang/Object;
.source "AndroidMediaSink.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0010J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0007J\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u001e\u0010\r\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/FirstPictureCounters;",
        "",
        "<init>",
        "()V",
        "bytes",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "value",
        "",
        "decoded",
        "getDecoded",
        "()Z",
        "rendered",
        "getRendered",
        "hasSurface",
        "getHasSurface",
        "onBytes",
        "",
        "count",
        "",
        "onDecoded",
        "onRendered",
        "onSurface",
        "present",
        "snapshot",
        "Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;",
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
.field private final bytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile decoded:Z

.field private volatile hasSurface:Z

.field private volatile rendered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->bytes:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final getDecoded()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->decoded:Z

    return v0
.end method

.method public final getHasSurface()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->hasSurface:Z

    return v0
.end method

.method public final getRendered()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->rendered:Z

    return v0
.end method

.method public final onBytes(I)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->bytes:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public final onDecoded()V
    .locals 1

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->decoded:Z

    return-void
.end method

.method public final onRendered()V
    .locals 1

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->decoded:Z

    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->rendered:Z

    return-void
.end method

.method public final onSurface(Z)V
    .locals 0

    .line 286
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->hasSurface:Z

    return-void
.end method

.method public final snapshot()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;
    .locals 6

    .line 288
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->bytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->decoded:Z

    iget-boolean v4, p0, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->rendered:Z

    iget-boolean v5, p0, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->hasSurface:Z

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;-><init>(JZZZ)V

    return-object v0
.end method
