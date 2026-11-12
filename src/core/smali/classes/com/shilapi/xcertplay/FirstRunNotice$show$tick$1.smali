.class public final Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;
.super Ljava/lang/Object;
.source "FirstRunNotice.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/FirstRunNotice;->show(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/shilapi/xcertplay/FirstRunNotice$show$tick$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "common_release"
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $button:Landroid/widget/Button;

.field final synthetic $dialog:Landroid/app/Dialog;

.field final synthetic $handler:Landroid/os/Handler;

.field final synthetic $palette:Lcom/shilapi/xcertplay/Glass$Palette;

.field final synthetic $startedAt:J


# direct methods
.method constructor <init>(Landroid/app/Dialog;JLandroid/os/Handler;Landroid/widget/Button;Landroid/app/Activity;Lcom/shilapi/xcertplay/Glass$Palette;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;->$dialog:Landroid/app/Dialog;

    iput-wide p2, p0, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;->$startedAt:J

    iput-object p4, p0, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;->$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;->$button:Landroid/widget/Button;

    iput-object p6, p0, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;->$activity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;->$palette:Lcom/shilapi/xcertplay/Glass$Palette;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 155
    iget-object v0, p0, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;->$startedAt:J

    sub-long/2addr v0, v2

    .line 157
    sget-object v2, Lcom/shilapi/xcertplay/FirstRunNotice;->INSTANCE:Lcom/shilapi/xcertplay/FirstRunNotice;

    iget-wide v3, p0, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;->$startedAt:J

    add-long v5, v3, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/shilapi/xcertplay/FirstRunNotice;->secondsLeft(JJ)I

    move-result v2

    .line 158
    iget-object v3, p0, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;->$button:Landroid/widget/Button;

    iget-object v4, p0, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;->$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;->$palette:Lcom/shilapi/xcertplay/Glass$Palette;

    # invokes: Lcom/shilapi/xcertplay/FirstRunNotice;->show$showState(Landroid/widget/Button;Landroid/app/Activity;Lcom/shilapi/xcertplay/Glass$Palette;I)V
    invoke-static {v3, v4, v5, v2}, Lcom/shilapi/xcertplay/FirstRunNotice;->access$show$showState(Landroid/widget/Button;Landroid/app/Activity;Lcom/shilapi/xcertplay/Glass$Palette;I)V

    if-lez v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/shilapi/xcertplay/FirstRunNotice$show$tick$1;->$handler:Landroid/os/Handler;

    move-object v3, p0

    check-cast v3, Ljava/lang/Runnable;

    const/16 v4, 0x3e8

    int-to-long v4, v4

    const-wide/16 v6, 0x0

    invoke-static {v0, v1, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    rem-long/2addr v0, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
