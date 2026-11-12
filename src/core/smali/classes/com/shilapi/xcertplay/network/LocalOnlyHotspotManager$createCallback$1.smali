.class public final Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;
.super Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
.source "LocalOnlyHotspotManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->createCallback(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005R\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u0003H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1",
        "Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;",
        "onStarted",
        "",
        "reservation",
        "Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;",
        "Landroid/net/wifi/WifiManager;",
        "onFailed",
        "reason",
        "",
        "onStopped",
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
.field final synthetic $attempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

.field final synthetic this$0:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;->this$0:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;->$attempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    .line 340
    invoke-direct {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 6

    const-string v0, "LocalOnlyHotspot failed: "

    .line 362
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;->this$0:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;

    # getter for: Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$getStateLock$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;->this$0:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;->$attempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    monitor-enter v1

    .line 363
    :try_start_0
    # getter for: Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->startAttempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;
    invoke-static {v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$getStartAttempt$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    move-result-object v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->getFailure()Ljava/io/IOException;

    move-result-object v4

    if-nez v4, :cond_0

    .line 364
    new-instance v4, Ljava/io/IOException;

    .line 365
    # invokes: Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->failureReason(I)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$failureReason(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;I)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->setFailure(Ljava/io/IOException;)V

    .line 367
    # getter for: Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$getStateLock$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 369
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .locals 4

    const-string v0, "reservation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;->this$0:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;

    # getter for: Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$getStateLock$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;->this$0:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;->$attempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    monitor-enter v0

    .line 346
    :try_start_0
    # getter for: Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->closed:Z
    invoke-static {v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$getClosed$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 347
    # getter for: Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->startAttempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;
    invoke-static {v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$getStartAttempt$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 348
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->getStopped()Z

    move-result v3

    if-nez v3, :cond_1

    .line 349
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->getReservation()Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {v2, p1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->setReservation(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    .line 354
    # getter for: Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$getStateLock$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 344
    :goto_1
    monitor-exit v0

    if-eqz v1, :cond_2

    .line 358
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 344
    monitor-exit v0

    throw p1
.end method

.method public onStopped()V
    .locals 6

    .line 374
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;->this$0:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;

    # getter for: Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$getStateLock$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;->this$0:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;->$attempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    monitor-enter v0

    .line 375
    :try_start_0
    # getter for: Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->startAttempt:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;
    invoke-static {v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$getStartAttempt$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {v2, v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->setStopped(Z)V

    .line 376
    :cond_0
    # getter for: Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    invoke-static {v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$getReservation$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    move-result-object v3

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$StartAttempt;->getReservation()Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    move-result-object v2

    const/4 v5, 0x0

    if-ne v3, v2, :cond_1

    .line 377
    invoke-static {v1, v4}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$setStopped$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;Z)V

    .line 378
    # getter for: Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-static {v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$getMulticastLock$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    .line 379
    invoke-static {v1, v5}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$setMulticastLock$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;Landroid/net/wifi/WifiManager$MulticastLock;)V

    move-object v5, v2

    .line 381
    :cond_1
    # getter for: Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->stateLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$getStateLock$p(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 382
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit v0

    .line 383
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager$createCallback$1;->this$0:Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;

    # invokes: Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->releaseMulticastLock(Landroid/net/wifi/WifiManager$MulticastLock;)V
    invoke-static {v0, v5}, Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;->access$releaseMulticastLock(Lcom/shilapi/xcertplay/network/LocalOnlyHotspotManager;Landroid/net/wifi/WifiManager$MulticastLock;)V

    return-void

    :catchall_0
    move-exception v1

    .line 374
    monitor-exit v0

    throw v1
.end method
