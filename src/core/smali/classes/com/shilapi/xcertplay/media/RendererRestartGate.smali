.class public final Lcom/shilapi/xcertplay/media/RendererRestartGate;
.super Ljava/lang/Object;
.source "AndroidMediaSink.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0011B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u0003J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t0\u0008j\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/RendererRestartGate;",
        "",
        "firstDelayNs",
        "",
        "maxDelayNs",
        "<init>",
        "(JJ)V",
        "entries",
        "Ljava/util/HashMap;",
        "Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;",
        "Lkotlin/collections/HashMap;",
        "allow",
        "",
        "key",
        "nowNs",
        "reset",
        "",
        "Entry",
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
.field private final entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final firstDelayNs:J

.field private final maxDelayNs:J


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/media/RendererRestartGate;-><init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-wide p1, p0, Lcom/shilapi/xcertplay/media/RendererRestartGate;->firstDelayNs:J

    .line 215
    iput-wide p3, p0, Lcom/shilapi/xcertplay/media/RendererRestartGate;->maxDelayNs:J

    .line 218
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/RendererRestartGate;->entries:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-wide/32 p1, 0x3b9aca00

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const-wide p3, 0x6fc23ac00L

    .line 213
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/media/RendererRestartGate;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized allow(Ljava/lang/Object;J)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/RendererRestartGate;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/RendererRestartGate;->entries:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    new-instance v2, Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;

    iget-wide v3, p0, Lcom/shilapi/xcertplay/media/RendererRestartGate;->firstDelayNs:J

    invoke-direct {v2, p2, p3, v3, v4}, Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;-><init>(JJ)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return v1

    .line 227
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;->getLastNs()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;->getDelayNs()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 228
    :cond_1
    :try_start_2
    invoke-virtual {v0, p2, p3}, Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;->setLastNs(J)V

    .line 229
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;->getDelayNs()J

    move-result-wide p1

    const/4 p3, 0x2

    int-to-long v2, p3

    mul-long p1, p1, v2

    iget-wide v2, p0, Lcom/shilapi/xcertplay/media/RendererRestartGate;->maxDelayNs:J

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;->setDelayNs(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized reset(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/RendererRestartGate;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
