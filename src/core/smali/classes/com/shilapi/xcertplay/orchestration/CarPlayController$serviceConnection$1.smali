.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1;
.super Ljava/lang/Object;
.source "CarPlayController.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayController;-><init>(Landroid/content/Context;Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1",
        "Landroid/content/ServiceConnection;",
        "onServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "binder",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "binder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    check-cast p2, Lcom/shilapi/xcertplay/network/CarPlayVpnService$LocalBinder;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$LocalBinder;->getService()Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$setVpnService$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    .line 398
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->vpnLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getVpnLatch$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$setVpnService$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V

    .line 403
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$serviceConnection$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    new-instance v1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v2, "CarPlay VPN service disconnected"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/lang/Throwable;

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->fail(Ljava/lang/Throwable;)V
    invoke-static {p1, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$fail(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/Throwable;)V

    return-void
.end method
