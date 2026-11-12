.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1;
.super Ljava/lang/Object;
.source "CarPlayController.kt"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayController;->connectedBluetoothDevices(Landroid/bluetooth/BluetoothAdapter;ILjava/lang/Class;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1",
        "Landroid/bluetooth/BluetoothProfile$ServiceListener;",
        "onServiceConnected",
        "",
        "profileId",
        "",
        "proxy",
        "Landroid/bluetooth/BluetoothProfile;",
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
.field final synthetic $adapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic $devices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $profileClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/util/Set;Landroid/bluetooth/BluetoothAdapter;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;",
            "Landroid/bluetooth/BluetoothAdapter;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1;->$profileClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1;->$devices:Ljava/util/Set;

    iput-object p3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1;->$adapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    .line 2852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    const-string v0, "proxy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2855
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1;->$profileClass:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2856
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1;->$devices:Ljava/util/Set;

    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_0
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2861
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1;->$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2862
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2859
    :try_start_1
    const-string/jumbo v1, "xcertplay-usb"

    const-string v2, "Could not read connected Bluetooth devices"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2861
    :goto_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1;->$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2862
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    .line 2867
    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$connectedBluetoothDevices$listener$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
