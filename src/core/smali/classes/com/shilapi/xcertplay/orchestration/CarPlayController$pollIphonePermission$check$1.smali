.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;
.super Ljava/lang/Object;
.source "CarPlayController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayController;->pollIphonePermission(Landroid/hardware/usb/UsbDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayController.kt\ncom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3412:1\n1#2:3413\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1",
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

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iput p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->$generation:I

    iput-object p3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->$device:Landroid/hardware/usb/UsbDevice;

    iput-wide p4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->$deadlineNanos:J

    .line 2122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2124
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getClosed$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->$generation:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionPollGeneration:I
    invoke-static {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getPermissionPollGeneration$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2127
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->iphoneHost:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getIphoneHost$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->discover()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v0, v2

    :cond_1
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->$device:Landroid/hardware/usb/UsbDevice;

    .line 2128
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getUsbManager$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2129
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    new-instance v2, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult$Granted;

    invoke-direct {v2, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult$Granted;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast v2, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onIphonePermission(Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;)V
    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$onIphonePermission(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;)V

    return-void

    .line 2132
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->$deadlineNanos:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_4

    .line 2133
    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->usbPrompt:Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;
    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getUsbPrompt$cp()Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/UsbPromptStamp;->clear()V

    .line 2134
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->permissionGrant:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getPermissionGrant$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2135
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 2136
    new-instance v1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;

    .line 2137
    const-string v4, "iPhone USB permission was not granted; tap Reconnect iPhone to retry"

    const/4 v5, 0x2

    .line 2136
    invoke-direct {v1, v4, v3, v5, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Failed;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;

    .line 2135
    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$onStatus(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;)V

    goto :goto_1

    .line 2143
    :cond_4
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$pollIphonePermission$check$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getMainHandler$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method
