.class public final Lcom/shilapi/xcertplay/CarPlayHostActivity$firstFrameTick$1;
.super Ljava/lang/Object;
.source "CarPlayHostActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/CarPlayHostActivity;-><init>()V
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
        "com/shilapi/xcertplay/CarPlayHostActivity$firstFrameTick$1",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$firstFrameTick$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    .line 1763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1765
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$firstFrameTick$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->firstFrameWatch:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getFirstFrameWatch$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$firstFrameTick$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->shuttingDown:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getShuttingDown$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 1767
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$firstFrameTick$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->sink:Lcom/shilapi/xcertplay/media/AndroidMediaSink;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getSink$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->getMainPicture()Lcom/shilapi/xcertplay/media/FirstPictureCounters;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/FirstPictureCounters;->snapshot()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v0

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v3, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;

    const/16 v9, 0xf

    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;-><init>(JZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1768
    :goto_1
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getSubStep()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->FAILED:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    const-wide/16 v7, 0x3e8

    if-ne v0, v1, :cond_5

    .line 1770
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->getRendered()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1771
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$firstFrameTick$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;->getBytes()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "first picture came after the 30 s failure (bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "); failure cleared"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->appendLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$appendLog(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    .line 1772
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/ConnectionProgress;->picture(Lcom/shilapi/xcertplay/ConnectionProgress$Picture;)V

    .line 1773
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$firstFrameTick$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->stopFirstFrameWatch()V
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$stopFirstFrameWatch(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V

    return-void

    .line 1774
    :cond_4
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$firstFrameTick$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getMainHandler$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1777
    :cond_5
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$firstFrameTick$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->inFront:Z
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getInFront$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch;->tick(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Counters;JZ)Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;

    move-result-object v0

    .line 1778
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$firstFrameTick$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    invoke-static {v1, v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$setFirstFrameWatch$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;)V

    .line 1779
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$firstFrameTick$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->onFirstFrameWatch(Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;)V
    invoke-static {v1, v2, v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$onFirstFrameWatch(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;)V

    .line 1780
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$State;->getSubStep()Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->SHOWN:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$firstFrameTick$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getMainHandler$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_2
    return-void
.end method
