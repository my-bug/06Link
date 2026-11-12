.class public final Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;
.super Ljava/lang/Object;
.source "WifiP2pGroupManager.kt"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->createActionListener(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1",
        "Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;",
        "onSuccess",
        "",
        "onFailure",
        "reason",
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
.field final synthetic $attempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

.field final synthetic $request:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;

.field final synthetic this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->$attempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->$request:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 7

    const-string v0, "Wi-Fi P2P createGroup failed: "

    .line 371
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    # getter for: Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->access$getStateLock$p(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->$request:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->$attempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    iget-object v4, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    monitor-enter v1

    .line 372
    :try_start_0
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;->getCompleted()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getRequest()Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;

    move-result-object v3

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 373
    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;->setCompleted(Z)V

    .line 374
    new-instance v3, Lcom/shilapi/xcertplay/network/P2pCreateRejected;

    .line 375
    # invokes: Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->failureReason(I)Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->access$failureReason(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (code="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-direct {v3, p1, v0}, Lcom/shilapi/xcertplay/network/P2pCreateRejected;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;->setFailure(Lcom/shilapi/xcertplay/network/P2pCreateRejected;)V

    .line 376
    # getter for: Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->access$getStateLock$p(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 377
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit v1

    .line 378
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    # getter for: Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;
    invoke-static {v0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->access$getDiagnostic$p(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    # invokes: Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->failureReason(I)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->access$failureReason(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wi-Fi P2P create rejected code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 372
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    .line 371
    monitor-exit v1

    throw p1
.end method

.method public onSuccess()V
    .locals 7

    .line 354
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->$attempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    .line 355
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    # getter for: Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->access$getStateLock$p(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->$request:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->$attempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    iget-object v4, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    monitor-enter v1

    .line 356
    :try_start_0
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;->getCompleted()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v5, 0x1

    .line 357
    :try_start_1
    invoke-virtual {v0, v5}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;->setCompleted(Z)V

    .line 358
    invoke-virtual {v3, v5}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->setCreateSucceeded(Z)V

    .line 359
    # getter for: Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->startAttempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;
    invoke-static {v4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->access$getStartAttempt$p(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    move-result-object v6

    if-ne v6, v3, :cond_1

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getRequest()Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;

    move-result-object v6

    if-ne v6, v0, :cond_1

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->getStopped()Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->closed:Z
    invoke-static {v4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->access$getClosed$p(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    invoke-static {v4, v5}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->access$setCreated$p(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Z)V

    .line 361
    # getter for: Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->stateLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->access$getStateLock$p(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    .line 355
    :cond_1
    monitor-exit v1

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 366
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createActionListener$1;->this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->removeGroup$default(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 355
    monitor-exit v1

    throw v0
.end method
