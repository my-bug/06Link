.class public final Lcom/shilapi/xcertplay/CarPlayHostActivity$startHotspotStateWatch$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "CarPlayHostActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/CarPlayHostActivity;->startHotspotStateWatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/shilapi/xcertplay/CarPlayHostActivity$startHotspotStateWatch$receiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$startHotspotStateWatch$receiver$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    .line 5049
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5052
    const-string/jumbo p1, "wifi_state"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 5053
    iget-object p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$startHotspotStateWatch$receiver$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "system hotspot state changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->appendLog(Ljava/lang/String;)V
    invoke-static {p2, v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$appendLog(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    .line 5054
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$startHotspotStateWatch$receiver$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->setupProblem:Lcom/shilapi/xcertplay/orchestration/SetupProblem;
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getSetupProblem$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    move-result-object p1

    sget-object p2, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->SYSTEM_HOTSPOT_LOCKED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    if-ne p1, p2, :cond_0

    .line 5055
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$startHotspotStateWatch$receiver$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getMainHandler$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$startHotspotStateWatch$receiver$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->hotspotOffResume:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getHotspotOffResume$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5056
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$startHotspotStateWatch$receiver$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getMainHandler$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$startHotspotStateWatch$receiver$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->hotspotOffResume:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getHotspotOffResume$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
