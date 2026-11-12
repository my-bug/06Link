.class public final Lcom/shilapi/xcertplay/media/AudioBufferProgress;
.super Ljava/lang/Object;
.source "AudioBufferProgress.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/AudioBufferProgress$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003J\u000e\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0003J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0003J.\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/AudioBufferProgress;",
        "",
        "frameBytes",
        "",
        "<init>",
        "(I)V",
        "writtenBytes",
        "",
        "playedFrames",
        "lastHead",
        "written",
        "",
        "bytes",
        "queuedBytes",
        "rawHead",
        "drained",
        "",
        "shouldRebuffer",
        "isMedia",
        "playing",
        "underrunSinceStart",
        "compressedQueueEmpty",
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
.field public static final Companion:Lcom/shilapi/xcertplay/media/AudioBufferProgress$Companion;


# instance fields
.field private final frameBytes:I

.field private lastHead:J

.field private playedFrames:J

.field private writtenBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/AudioBufferProgress$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/AudioBufferProgress$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->Companion:Lcom/shilapi/xcertplay/media/AudioBufferProgress$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->frameBytes:I

    return-void
.end method


# virtual methods
.method public final drained(I)Z
    .locals 4

    .line 19
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->queuedBytes(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final queuedBytes(I)J
    .locals 8

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 13
    iget-wide v4, p0, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->playedFrames:J

    iget-wide v6, p0, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->lastHead:J

    sub-long v6, v0, v6

    and-long/2addr v2, v6

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->playedFrames:J

    .line 14
    iput-wide v0, p0, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->lastHead:J

    .line 15
    iget-wide v0, p0, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->writtenBytes:J

    iget p1, p0, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->frameBytes:I

    int-to-long v2, p1

    mul-long v4, v4, v2

    sub-long/2addr v0, v4

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final shouldRebuffer(ZZZZI)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 23
    invoke-virtual {p0, p5}, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->queuedBytes(I)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-nez p5, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final written(I)V
    .locals 4

    .line 9
    iget-wide v0, p0, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->writtenBytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shilapi/xcertplay/media/AudioBufferProgress;->writtenBytes:J

    return-void
.end method
