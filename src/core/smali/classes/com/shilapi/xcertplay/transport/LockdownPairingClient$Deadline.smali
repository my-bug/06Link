.class final Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;
.super Ljava/lang/Object;
.source "LockdownPairingClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/LockdownPairingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Deadline"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0007\u001a\u00020\u0003R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;",
        "",
        "timeoutMillis",
        "",
        "<init>",
        "(J)V",
        "deadlineNanos",
        "remainingMillis",
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
.field private final deadlineNanos:J


# direct methods
.method public constructor <init>(J)V
    .locals 4

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;->deadlineNanos:J

    return-void
.end method


# virtual methods
.method public final remainingMillis()J
    .locals 5

    .line 239
    iget-wide v0, p0, Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;->deadlineNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/32 v2, 0xf423f

    add-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    .line 241
    div-long/2addr v0, v2

    return-wide v0

    .line 240
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;->INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut;

    throw v0
.end method
