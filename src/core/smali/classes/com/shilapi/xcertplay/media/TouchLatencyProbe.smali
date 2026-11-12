.class public final Lcom/shilapi/xcertplay/media/TouchLatencyProbe;
.super Ljava/lang/Object;
.source "TouchLatencyProbe.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/TouchLatencyProbe;",
        "",
        "<init>",
        "()V",
        "pendingTouchNs",
        "",
        "maxSendNs",
        "getMaxSendNs",
        "()J",
        "setMaxSendNs",
        "(J)V",
        "onTouchSent",
        "",
        "sentAtNs",
        "sendDurationNs",
        "onFrame",
        "nowNs",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/media/TouchLatencyProbe;

.field private static volatile maxSendNs:J

.field private static volatile pendingTouchNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->INSTANCE:Lcom/shilapi/xcertplay/media/TouchLatencyProbe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMaxSendNs()J
    .locals 2

    .line 6
    sget-wide v0, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->maxSendNs:J

    return-wide v0
.end method

.method public final onFrame(J)J
    .locals 5

    .line 15
    sget-wide v0, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->pendingTouchNs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    .line 17
    :cond_0
    sput-wide v2, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->pendingTouchNs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final onTouchSent(JJ)V
    .locals 5

    .line 9
    sget-wide v0, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->pendingTouchNs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    sput-wide p1, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->pendingTouchNs:J

    .line 10
    :cond_0
    sget-wide p1, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->maxSendNs:J

    cmp-long v0, p3, p1

    if-lez v0, :cond_1

    sput-wide p3, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->maxSendNs:J

    :cond_1
    return-void
.end method

.method public final setMaxSendNs(J)V
    .locals 0

    .line 6
    sput-wide p1, Lcom/shilapi/xcertplay/media/TouchLatencyProbe;->maxSendNs:J

    return-void
.end method
