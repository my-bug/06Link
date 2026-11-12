.class final Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;
.super Ljava/lang/Object;
.source "TlsDuplexChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Deadline"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\n\u001a\u00020\u0003R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;",
        "",
        "timeoutMillis",
        "",
        "<init>",
        "(J)V",
        "startNanos",
        "timeoutNanos",
        "remainingMillis",
        "()Ljava/lang/Long;",
        "requireRemainingMillis",
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
.field private final startNanos:J

.field private final timeoutNanos:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;->startNanos:J

    const-wide v0, 0x8637bd05af6L

    .line 341
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;->timeoutNanos:J

    return-void
.end method


# virtual methods
.method public final remainingMillis()Ljava/lang/Long;
    .locals 6

    .line 345
    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;->timeoutNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;->startNanos:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/32 v4, 0xf4240

    .line 347
    div-long/2addr v0, v4

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final requireRemainingMillis()J
    .locals 4

    .line 350
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Deadline;->remainingMillis()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 351
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;

    const-string v1, "TLS handshake timed out"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$TimedOut;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method
