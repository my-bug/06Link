.class final Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;
.super Ljava/lang/Object;
.source "AndroidMediaSink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/media/RendererRestartGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;",
        "",
        "lastNs",
        "",
        "delayNs",
        "<init>",
        "(JJ)V",
        "getLastNs",
        "()J",
        "setLastNs",
        "(J)V",
        "getDelayNs",
        "setDelayNs",
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
.field private delayNs:J

.field private lastNs:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;->lastNs:J

    iput-wide p3, p0, Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;->delayNs:J

    return-void
.end method


# virtual methods
.method public final getDelayNs()J
    .locals 2

    .line 217
    iget-wide v0, p0, Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;->delayNs:J

    return-wide v0
.end method

.method public final getLastNs()J
    .locals 2

    .line 217
    iget-wide v0, p0, Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;->lastNs:J

    return-wide v0
.end method

.method public final setDelayNs(J)V
    .locals 0

    .line 217
    iput-wide p1, p0, Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;->delayNs:J

    return-void
.end method

.method public final setLastNs(J)V
    .locals 0

    .line 217
    iput-wide p1, p0, Lcom/shilapi/xcertplay/media/RendererRestartGate$Entry;->lastNs:J

    return-void
.end method
