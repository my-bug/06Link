.class public final Lcom/shilapi/xcertplay/media/FrameRateWatch$Companion;
.super Ljava/lang/Object;
.source "AutoFrameRate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/media/FrameRateWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/FrameRateWatch$Companion;",
        "",
        "<init>",
        "()V",
        "MIN_ACTIVE_RX_FPS",
        "",
        "SHOWN_RATIO",
        "WINDOWS_JUDGED",
        "",
        "BAD_NEEDED",
        "struggling",
        "",
        "window",
        "Lcom/shilapi/xcertplay/media/VideoWindow;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/FrameRateWatch$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final struggling(Lcom/shilapi/xcertplay/media/VideoWindow;)Z
    .locals 6

    const-string/jumbo v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/VideoWindow;->getRxFps()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/VideoWindow;->getShownFps()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/VideoWindow;->getRxFps()D

    move-result-wide v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v4

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/VideoWindow;->getRecoveries()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
