.class public final Lcom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayHostActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayHostActivity.kt\ncom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,5970:1\n1761#2,3:5971\n*S KotlinDebug\n*F\n+ 1 CarPlayHostActivity.kt\ncom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1\n*L\n1920#1:5971,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1",
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

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    .line 1915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1917
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->setupProblem:Lcom/shilapi/xcertplay/orchestration/SetupProblem;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getSetupProblem$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->USB_PERMISSION_UNANSWERED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->wirelessEnabled:Z
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getWirelessEnabled$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->shuttingDown:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getShuttingDown$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1918
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    check-cast v0, Landroid/content/Context;

    const-class v1, Landroid/hardware/usb/UsbManager;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1919
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, p0

    check-cast v4, Lcom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1;

    if-eqz v0, :cond_4

    .line 1920
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_4

    check-cast v4, Ljava/lang/Iterable;

    .line 5971
    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5972
    :cond_2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    .line 1920
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v6

    const/16 v7, 0x5ac

    if-ne v6, v7, :cond_3

    invoke-virtual {v0, v5}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    .line 5973
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 1919
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1921
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v0, v2

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1919
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1922
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getMainHandler$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1923
    :cond_6
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    const-string v1, "USB permission given late in the open dialog; wired setup starts again by itself"

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->appendLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$appendLog(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    .line 1924
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    invoke-static {v0, v3}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$setWiredRetryStopped$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;Z)V

    .line 1925
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    invoke-static {v0, v3}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$setReconnectAttempts$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;I)V

    .line 1926
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    invoke-static {v0, v2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$setLastWiredProblem$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/orchestration/SetupProblem;)V

    .line 1927
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->clearProblem()V
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$clearProblem(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V

    .line 1928
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$lateUsbGrantCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    const-string v1, "Reconnecting: USB access was given late"

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->restartCarPlay(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$restartCarPlay(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method
