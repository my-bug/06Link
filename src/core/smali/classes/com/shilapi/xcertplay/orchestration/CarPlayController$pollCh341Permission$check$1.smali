.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;
.super Ljava/lang/Object;
.source "CarPlayController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayController;->pollCh341Permission(Landroid/hardware/usb/UsbDevice;)V
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
        "com/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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
.field final synthetic $deadlineNanos:J

.field final synthetic $device:Landroid/hardware/usb/UsbDevice;

.field final synthetic $generation:I

.field final synthetic this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;ILandroid/hardware/usb/UsbDevice;J)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iput p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->$generation:I

    iput-object p3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->$device:Landroid/hardware/usb/UsbDevice;

    iput-wide p4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->$deadlineNanos:J

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 916
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getClosed$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->phase:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getPhase$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;->MFI:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Phase;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->$generation:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionPollGeneration:I
    invoke-static {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getPermissionPollGeneration$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getUsbManager$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->$device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    new-instance v1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Granted;

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->$device:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Granted;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast v1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onCh341Permission(Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;)V
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$onCh341Permission(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;)V

    return-void

    .line 921
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->$deadlineNanos:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 922
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getPermissionGrant$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 923
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 924
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "MFi USB permission was not granted; reconnect the CH341 to retry"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    .line 923
    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    return-void

    .line 931
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollCh341Permission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getMainHandler$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method
